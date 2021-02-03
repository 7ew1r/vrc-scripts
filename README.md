vrc-scripts
===

VRC 用 Powershell スクリプト集

- `Create-New-Avatar.ps1`
    - テンプレートファイルをコピーしてアバター用のプロジェクトを新規作成
    - テンプレートファイルを事前に用意する必要あり。
        - `_Template_VRC-Avatar`
        - `_Template_VRC-Avatar-3.0`
- `Get-Unity-Version.ps1`
    - 指定したディレクトリで使用されている Unity のバージョンを取得する
    - ex. `Get-Unity-Version.ps1 [project_dir]`
- `Open-Unity-Project.ps1`
    - 指定したディレクトリを Unity で開く。
    - バージョンは `Get-Unity-Version.ps1` から自動で判断する。
    - ex. `Open-Unity-Project.ps1 [project_dir]`