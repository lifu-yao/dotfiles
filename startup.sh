# Startup file to set up workspace

#######################
# INSTALL ZSH
#######################
brew install zsh

#######################
# INSTALL OH-MY-ZSH
#######################
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#######################
# INSTALL VIM
#######################
# if macOS
brew install vim
# if linux
sudo apt install vim

#######################
# INSTALL TMUX
#######################
# if macOS
brew install tmux
brew install reattach-to-user-namespace
# if linux
sudo install tmux
# Don't forget to comment 1st line in .tmux.conf if it's linux
# install tmux themepack
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

#######################
# Copy dotfiles to ~/ 
#######################
cp ./.vimrc ~/
cp ./.tmux.conf ~/
cp ./.zshrc ~/

#######################
# Source dotfiles
#######################
source ~/.vimrc
source ~/.tmux.conf
source ~/.zshrc
