import json
import re
import os

pattern = r"v?\d+\.\d+\.\d+"


def check(obj, version, parents=""):
    """
    This functions recursively parses all fields in the schema looking for
    version names that would not be the same as the one mentionned
    in the 'version' field
    """
    errors = []
    # if field is a string, we check for a potential version
    if isinstance(obj, str):
        tmp = re.search(pattern, obj)
        if tmp and tmp[0] != version:
            errors += [(parents, tmp[0])]
    # if field is a list, we check every item
    elif isinstance(obj, list):
        for idx, k in enumerate(obj):
            errors += check(k, version, parents=parents + f"[{str(idx)}]")
    # if field is a dict, we check every value
    elif isinstance(obj, dict):
        for k in obj:
            # not checking the fields
            if k != "fields":
                errors += check(
                    obj[k],
                    version,
                    parents=parents + "." + k if parents else k
                )
    return errors


to_check = []

if "schema.json" in os.listdir():
    to_check.append("schema.json")

elif "datapackage.json" in os.listdir():
    with open("datapackage.json", "r") as f:
        datapackage = json.load(f)
    for r in datapackage["resources"]:
        to_check.append(r["schema"])

else:
    raise Exception("No required file found")

for schema_path in to_check:
    with open(schema_path, "r") as f:
        schema = json.load(f)
    version = schema["version"]

    errors = check(schema, version)
    if errors:
        message = (
            f"Versions are mismatched within the schema '{schema['name']}', "
            f"expected version '{version}' but:"
        )
        for e in errors:
            message += f"\n- {e[0]} has version '{e[1]}'"
        raise Exception(message)
