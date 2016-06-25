# Setup symlink to config file
& cmd /c mklink ..\_vimrc $((dir .vimrc).FullName)

Push-Location ./bundle
git submodule update --init --recursive
Pop-Location

