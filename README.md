vrc-scripts
===

VRC 用 Powershell スクリプト集

## Instalation

1. リポジトリを Clone 
2. PATH を通す

## Usage

### `Create-New-Avatar.ps1`

テンプレートディレクトリをコピーしてアバター用のプロジェクトを新規作成する

#### Prepare

事前に下記名称のテンプレートディレクトリを事前に用意する
`_Template_VRC-Avatar` (SDK2.0)
`_Template_VRC-Avatar-3.0` (SDK3.0)

```
Create-New-Avatar.ps1
```

### `Get-Unity-Version.ps1`

指定したディレクトリで使用されている Unity のバージョンを取得する

```
Get-Unity-Version.ps1 [project_dir]
```

### `Open-Unity-Project.ps1`

- 指定したディレクトリを Unity で開く
- バージョンは `Get-Unity-Version.ps1` から自動で判別する

```
Open-Unity-Project.ps1 [project_dir]
```

#### Prepare

Switch 文内の Unity.exe へのパスを環境に合わせて変更する

ex.

```
"2017.4.28f1" {
    $unity_exe_path = "D:\Unity\2017.4.28f1\Editor\Unity.exe"
}
```

### `Check-Version.ps1`

カレントディレクトの Unity プロジェクトと使用されている Unity のバージョンの一覧を表示

```
Check-Version.ps1
```