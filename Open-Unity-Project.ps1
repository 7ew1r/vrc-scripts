Param([string]$project_path)

if (!(Test-Path $project_path)) {
    Write-Host "引数が空です"
    exit
}

if (!(Test-Path $project_path)) {
    Write-Host $project_path "は存在しません"
    exit
}

$unity_version = get-unity-version.ps1 $project_path

if(!(Test-Path "$($PSScriptRoot)\const.ps1")) {
    Write-Host  "const.ps1 が存在しません"
    exit
}

. "$($PSScriptRoot)\const.ps1"

$unity_exe_path = $UNITY_VERSION_EXE[$unity_version]

if (!$unity_exe_path) {
    Write-Host $unity_version "の Unity のパスが定義されていません"
    exit
}

if(!(Test-Path $unity_exe_path)) {
    Write-Host $unity_exe_path "は存在しません"
    exit
}

Start-Process -FilePath $unity_exe_path -ArgumentList "-projectPath $project_path"