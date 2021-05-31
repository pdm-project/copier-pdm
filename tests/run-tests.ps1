. tests/setup.ps1

pdm install
pdm run test

Pop-Location

Remove-Item -Recurse -Force $Dest
