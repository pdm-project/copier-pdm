. tests/setup.ps1

pdm install -d
pdm run test

Pop-Location

Remove-Item -Recurse -Force $Dest
