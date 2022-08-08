About
==========

This is a powershell script that I use to setup a new machine. It needs to be run as an Administrator - so be carefull what is in the script.
It uses chocolatey (see https://docs.chocolatey.org/) to install applications and update them.

You might need to open powershell as an administrator and make sure to be able to execute the script, e.g:
``` Set-ExecutionPolicy Bypass -Scope  CurrentUser

and then execute:
``` .\install.ps1

