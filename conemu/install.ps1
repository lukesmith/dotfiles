$target = (Join-Path -Path (split-path -parent $MyInvocation.MyCommand.Definition) -ChildPath ConEmu.xml)

New-Item -ItemType SymbolicLink -Path $env:AppData -Name ConEmu.xml -Target $target -Force