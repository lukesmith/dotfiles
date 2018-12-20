$target = (Join-Path -Path (split-path -parent $MyInvocation.MyCommand.Definition) -ChildPath Settings.json)
$path = [io.path]::combine($env:AppData, 'Code', 'User')

New-Item -ItemType SymbolicLink -Path $path -Name settings.json -Target $target -Force