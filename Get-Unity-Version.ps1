
Param([string]$project_path)

$version_txt_path = $project_path + "\ProjectSettings\ProjectVersion.txt"
If (Test-Path $version_txt_path) {
    $first_line = Get-Content $version_txt_path -totalcount 1
    $prefix_length = "m_EditorVersion: ".length
    Return $first_line.Substring($prefix_length, $first_line.length - $prefix_length)
} Else {
    Return $NULL
}
