echo 'Change the default shell to zsh: `chsh -s /bin/zsh` (or `sudo vim /etc/passwd`)'

dir="$HOME/dev-smmd"
mkdir -p $dir
cd $dir
git clone git@github.com:smmd/dotfiles.git
cd dotfiles
link ".gitconfig" "$HOME/.gitconfig"
link ".zshrc" "$HOME/.zshrc"
