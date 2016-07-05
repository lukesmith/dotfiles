if (Get-Command "choco" -ErrorAction SilentlyContinue)
{
    choco upgrade chocolatey
}
else
{
    iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
}

cinst git powershell -y

$dotfiles_path = Join-Path -Path $env:UserProfile -Childpath dotfiles
if (!(Test-Path $dotfiles_path))
{
    git clone https://github.com/lukesmith/dotfiles.git $dotfiles_path
}

function install_dotfiles
{
    # find the symlinks and run them iteratively
    $symlinks = Get-ChildItem -Path . -Filter *.symlink -Recurse

    foreach ($symlink in $symlinks)
    {
        if (Test-Path $symlink -PathType container)
        {
            Write-Host "Symlinked directories not yet supported"
        }
        else
        {
            $dotname = "." + [System.IO.Path]::GetFileNameWithoutExtension($symlink.FullName)

            $target = Join-Path -Path $symlink.Directory -Childpath $symlink
            New-Item -ItemType SymbolicLink -Path $env:UserProfile -Name $dotname -Target $target -Force
        }
    }
}

install_dotfiles
