# vrc-scripts

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

### `Get-VRCSDK-Version.ps1`

指定したディレクトリで使用されている VRCSDK のバージョンを取得する

```
Get-VRCSDK-Version.ps1 [project_dir]
```

### `Open-Unity-Project.ps1`

- 指定したディレクトリを Unity で開く
- バージョンは `Get-Unity-Version.ps1` から自動で判別する

```
Open-Unity-Project.ps1 [project_dir]
```

#### Prepare

`const.example.ps1` を `const.ps1` にリネームし、バージョンと Unity の実行パスを追記する

### `Check-Version.ps1`

カレントディレクトの Unity プロジェクトと使用されている Unity のバージョンの一覧を表示

```
Check-Version.ps1
```
