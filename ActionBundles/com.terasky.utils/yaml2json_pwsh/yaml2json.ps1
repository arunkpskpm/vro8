import-module powershell-yaml
$ErrorActionPreference = "Stop"
function Handler {
  Param($context, $inputs)
  $PsYaml = $inputs.yamlTxt
  # Convert JSON back to PowerShell Array
  $PsJson = (ConvertFrom-Yaml -Yaml $PsYaml -Ordered | ConvertTo-Json)

return $PsJson
}
