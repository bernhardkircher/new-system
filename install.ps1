$appsToInstall = 'chocolateygui', 'bitwarden', 'microsoft-windows-terminal', 'sysinternals', 'vlc', 'powertoys', 'paint.net', '7zip.install', 'dotnetcore-sdk', 'git.install', `
			'tortoisegit', 'notepadplusplus.install', 'visualstudiocode', 'postman', 'googlechrome', 'firefox', 'jetbrainstoolbox', `
			'jetbrains-rider', 'datagrip', 'sql-server-management-studio', 'wsl2', 'wsl-ubuntu-2204', 'drawio'


$testchoco = powershell choco -v
# !$? means: last operation was not succesfull
if(!$?){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
}

foreach($app in $appsToInstall) {
	Write-Host "Installing Application " $app
	choco install $app -y
}

# to install windows features:
# Dism /online /Get-Features
# choco list --source windowsFeatures
# choco install [Feature Name] /y /source windowsfeatures
