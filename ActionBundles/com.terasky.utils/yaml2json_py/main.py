import json
import yaml

def handler(context, inputs):
    jsonOut=json.dumps(inputs, separators=(',', ':'))
    print("Inputs were {0}".format(jsonOut))
    yaml_object = yaml.safe_load(inputs["yamlTxt"])
    jsonText = json.dumps(yaml_object)
    outputs = {
      "status": "done"
    }
    print(jsonText)

    return jsonText
