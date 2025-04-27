# vrc-scripts

Powershell scripts for VRChat

## Instalation

1. Clone this repository.
2. Add this directory to the PATH.

## Usage

### `Check-Version.ps1`

Displays a list of Unity projects in the current directory and the Unity versions they are using.

```
Check-Version.ps1
```

### `Get-Unity-Version.ps1`

Retrieves the Unity version used in the specified directory.

```
Get-Unity-Version.ps1 [project_dir]
```

### `Get-VRCSDK-Version.ps1`

Retrieves the VRCSDK version used in the specified directory.

```
Get-VRCSDK-Version.ps1 [project_dir]
```

### `Git-Init-Unity.ps1`

Initializes a Git repository in the Unity project directory, creates a `.gitignore` and `.gitattributes` file, and installs Git LFS.

```
Git-Init-Unity.ps1
```
