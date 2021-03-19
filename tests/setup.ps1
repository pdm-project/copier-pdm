$Dest = "tests/tmp"
$ErrorActionPreference = "Stop"
function New-TemporaryDirectory {
	$parent = [System.IO.Path]::GetTempPath()
	[string] $name = [System.Guid]::NewGuid()
	Join-Path $parent "copier-pdm-$($name)"
}

if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }

Write-Output "///////////////////////////////////////////"
Write-Output "             TAGGING TEMPLATE COPY"
Write-Output "///////////////////////////////////////////"
Write-Output ""
$Template = (New-TemporaryDirectory)
Copy-Item -Force -Recurse . $Template

Push-Location $Template
git add -A .
git commit -m "test"
git tag 99.99.99
Pop-Location

Write-Output "Template is located at ${template}"
Write-Output ""
Write-Output "///////////////////////////////////////////"
Write-Output "             GENERATING PROJECT"
Write-Output "///////////////////////////////////////////"
Write-Output ""

copier -f $Template $Dest `
	-d project_name="copier-pdm-testing" `
	-d project_description='Testing this great template' `
	-d author_fullname="Tester" `
	-d author_username="tester" `
	-d author_email="tester@example.org"

Push-Location $Dest
git init .
git add -A .
git commit -m "test"
