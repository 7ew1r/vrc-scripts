Param([string]$avatar_name)

$prefix = "VRC-Avatar_"
$avatar_project_directory_name = $prefix + $avatar_name + "*"

$directories = Get-ChildItem | ? { $_.PSIsContainer } | ? {$_.Name -like $avatar_project_directory_name}

$header =  "| Repository | Unity | VRCSDK | Note |"
$divider = "|------------|-------|--------|------|"

Write-Host $header
Write-Host $divider

foreach($d in $directories){
	$repository = Split-Path -Leaf $d
    $unity = Get-Unity-Version($d)
    $vrcsdk = Get-VRCSDK-Version($d)
    Write-Host "|"$repository" | "$unity" | "$vrcsdk" | |"
}