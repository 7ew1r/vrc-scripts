Param([string]$project_path)

if (!(Test-Path $project_path)) {
    Write-Host $project_path "は存在しません"
    exit
}

$unity_version = get-unity-version.ps1 $project_path

switch ($unity_version) {
    "2017.4.28f1" {
        $unity_exe_path = "C:\Program Files\Unity\Hub\Editor\2017.4.28f1\Editor\Unity.exe"
    }
    "2018.4.20f1" {
        $unity_exe_path = "C:\Program Files\Unity\Hub\Editor\2018.4.20f1\Editor\Unity.exe"
    }
    "2018.4.9f1" {
        $unity_exe_path = "C:\Program Files\Unity\Hub\Editor\2018.4.9f1\Editor\Unity.exe"
    }
    "2019.2.0f1" {
        $unity_exe_path = "C:\Program Files\Unity\Hub\Editor\2019.2.0f1\Editor\Unity.exe"
    }
    "2019.4.13f1" {
        $unity_exe_path = "D:\Unity\2019.4.13f1\Editor\Unity.exe"
    }
    default { exit }
}

Start-Process -FilePath $unity_exe_path -ArgumentList "-projectPath $project_path"