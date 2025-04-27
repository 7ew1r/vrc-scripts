class UnityProject {
    [System.IO.DirectoryInfo]$DirectoryInfo
    [string]$UnityVersion

    [bool]IsOutDated() {
        return ($this.UnityVersion -ne "2022.3.22f1")
    }
    [void]Show() {
       Write-Host -NoNewLine ($this.DirectoryInfo.Name)
       Write-Host -NoNewLine ("`t`t")
       if ($this.IsOutDated()) {
        Write-Host -ForegroundColor Red ('[' + $this.UnityVersion + ']') 
       } else {
        Write-Host('[' + $this.UnityVersion + ']') 
       }
       
    }
}

$UnityProjects = @()

$itemList = Get-ChildItem .
foreach($item in $itemList)
{
    if(!$item.PSIsContainer){
        continue
    }

    $unity_version = Get-Unity-Version $item
    if ($NULL -eq $unity_version) {
        continue
    }

    $unityProject = New-Object UnityProject
    $unityProject.DirectoryInfo = $item
    $unityProject.UnityVersion = $unity_version
    $UnityProjects += $unityProject
}

foreach($project in $UnityProjects)
{
    $project.Show()
}
