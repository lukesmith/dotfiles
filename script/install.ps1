# cinst packages.config -y

# find the installers and run them iteratively
$install_scripts = Get-ChildItem -Path . -Filter install.ps1 -Recurse

foreach ($script in $install_scripts)
{
    if ($script.FullName -ne $MyInvocation.MyCommand.Definition)
    {
        .$script.FullName
    }
}