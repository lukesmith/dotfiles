$vundlePath = "$env:UserProfile\.vim\bundle\Vundle.vim"
if (!(Test-Path $vundlePath))
{
    git clone https://github.com/VundleVim/Vundle.vim.git $vundlePath
}
