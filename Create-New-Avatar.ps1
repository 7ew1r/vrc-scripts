Write-Host "Create New Avatar"

$currentPath = Convert-Path .

$templatePath2 = Join-Path $currentPath "_Template_VRC-Avatar"
$templatePath3 = Join-Path $currentPath "_Template_VRC-Avatar-3.0"

### SDK2かSDK3の選択
Write-Host "使用する SDK は？ [3/2]（無回答は3)："
$selectSDK = Read-Host

if ($selectSDK  -eq "") {
    Write-Host "3.0を使用します"
    $templatePath = $templatePath3
} elseif ($selectSDK  -eq "2") {
    Write-Host "2.0を使用します"
    $templatePath = $templatePath2
} elseif ($selectSDK  -eq "3") {
    Write-Host "3.0を使用します"
    $templatePath = $templatePath3
} else {
    Write-Host "無効な値です"
    exit
}

if (!(Test-Path $templatePath)) {
    Write-Host ($templatePath + 'が存在しません')
    exit
}

$loopFlag = $TRUE
# Avatar 名を取得
while ($loopFlag -eq $TRUE) {
    Write-Host "アバター名を入力："
    $avatarName = Read-Host

    if ($avatarName -eq "") {
        Write-Host "アバター名が空です。"
        continue
    }

    $prefix = "VRC-Avatar_"
    $newFolderName = $prefix + $avatarName
    $newPath = Join-Path $currentPath $newFolderName

    if (Test-Path $newPath) {
        Write-Host ('「' + $newPath + '」は既に存在します。')
        continue
    }

    $loopFlag = $FALSE
}

Write-Host ('「' + $newPath + '」を作成します')
Read-Host "Enter で続行" 

# テンプレートをコピー
Write-Host "テンプレートからコピー中..."
Copy-Item $templatePath -destination $newPath -recurse
Write-Host "コピー完了"

# .git フォルダを削除
$dotgit = Join-Path $newPath ".git"
if (Test-Path $dotgit) {
    Write-Host ".git フォルダを削除..."
    # Get-ChildItem $dotgit -Recurse | Remove-Item -Force -Confirm:$false
    &cmd.exe /c rd /s /q $dotgit
}

# git の初期化
if (Test-Path $newPath) {
    Write-Host "git の初期化..."
    cd $newPath
    git init
    git lfs install
    git add .
    git commit -m ":tada: first commit"
    cd $currentPath
}

Write-Host "作成完了"
