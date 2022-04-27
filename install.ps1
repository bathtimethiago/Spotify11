[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Start-Sleep -s 3

$checkSpice = Get-Command spicetify -ErrorAction Silent
if ($null -eq $checkSpice) {
  Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.ps1" | Invoke-Expression
}

$spicePath = spicetify -c | Split-Path
$themePath = "$spicePath\Themes\Spotify11"
if (-not (Test-Path $themePath)) {
  New-Item -Path $themePath -ItemType Directory | Out-Null
} else {
  Remove-Item "$themePath\*" -Recurse -Force
}

$zipUri = "https://github.com/bathtimethiago/Spotify11/archive/refs/heads/master.zip"
$zipSavePath = "${HOME}\Spotify11-master.zip"
Invoke-WebRequest -Uri $zipUri -UseBasicParsing -OutFile $zipSavePath

Expand-Archive -Path $zipSavePath -DestinationPath ${HOME} -Force
Get-ChildItem "${HOME}\Spotify11-master\*" | ForEach-Object { Move-Item $_ ${HOME} }
Remove-Item "${HOME}\Spotify11-master"
Remove-Item "${HOME}\README.md"
Remove-Item "${HOME}\Install.ps1"

Remove-Item -Path $zipSavePath

spicetify config extensions spotify11.js
spicetify config current_theme Spotify11
spicetify config color_scheme dark
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1

$configFile = Get-Content "$spicePath\config-xpui.ini"
if (-not ($configFile -match "xpui.js_find_8008")) {
  $rep = @"
[Patch]
xpui.js_find_8008=,(\w+=)32,
xpui.js_repl_8008=,`${1}58,
"@
  if (-not ($configFile -match "\[Patch\]")) {
    $configFile += "`n[Patch]`n"
  }
  $configFile = $configFile -replace "\[Patch\]",$rep
  Set-Content "$spicePath\config-xpui.ini" $configFile
}

$backupVer = $configFile -match "^version"
$version = ConvertFrom-StringData $backupVer[0]
if ($version.version.Length -gt 0) {
  spicetify apply
} else {
  spicetify backup apply
}
