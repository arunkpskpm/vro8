import json
import yaml

def handler(context, inputs):
    jsonOut=json.dumps(inputs, separators=(',', ':'))
    print("Inputs were {0}".format(jsonOut))
    jsonObj = json.loads(inputs["jsonTxt"])
    yamlText = yaml.dump(jsonObj)
    outputs = {
      "status": "done"
    }
    print(yamlText)

    return yamlText
