# make sure credential is set to use windows local credential store
git config --global credential.helper wincred
# Setup symlink to config file
& cmd /c mklink ..\_vimrc $((dir .vimrc).FullName)

md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)

vim +PlugInstall +qall
