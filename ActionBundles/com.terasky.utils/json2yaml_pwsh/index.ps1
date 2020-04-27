import-module powershell-yaml
$ErrorActionPreference = "Stop"
function Handler {
  Param($context, $inputs)
  $PsJson = $inputs.jsonStr
  # Convert JSON back to PowerShell Array
  $PsArray = @($PsJson | ConvertFrom-Json)

  # Convert the Array to YAML
  $PsYaml = ConvertTo-Yaml -Data $PsArray
return $PsYaml
}
