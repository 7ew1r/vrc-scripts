Param([string]$project_path)

$version_txt_path = $project_path + "\Assets\VRCSDK\version.txt"
If (Test-Path $version_txt_path) {
    $first_line = Get-Content $version_txt_path -totalcount 1
    Return $first_line
} Else {
    Return $NULL
}
