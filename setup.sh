#!/usr/bin/zsh

sudo gem install tmuxinator
sudo wget https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh -O /usr/local/share/zsh/site-functions/_tmuxinator
rm -rf ~/.vim
rm -rf ~/.vimrc
ln -sf ~/tmux-vim-env/vim/vimrc.go.symlink ~/.vimrc
ln -sf ~/tmux-vim-env/vim ~/.vim
ln -sf tmux-vim-env/tmux/dev.tmux.conf.symlink ~/.dev.tmux.conf
ln -sf tmux-vim-env/tmux/tmux.conf.symlink ~/.tmux.conf
mkdir -p ~/tmux-vim-env/vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/plugins/Vundle.vim
mkdir ~/PycharmProjects
git clone https://github.com/vivekprm/flask-hello-world.git ~/PycharmProjects/flask-hello-world
git clone https://github.com/vivekprm/vim-go-tutorial ~/go/src/github.com/vivekprm/vim-go-tutorial
git clone https://github.com/vivekprm/ej2-react-samples.git ~/go/src/github.com/vivekprm/ej2-react-samples
on_project_start: ln -sf ~/tmux-vim-env/vim/vimrc.go.git
vim +PluginInstall
ln -sf ~/tmux-vim-env/vim/vimrc.js.symlink ~/.vimrc
vim +PluginInstall
ln -sf ~/tmux-vim-env/vim/vimrc.py.symlink ~/.vimrc
vim +PluginInstall
cd ~/tmux-vim-env/vim/bundle/coc.nvim && yarn install
cd ~/tmux-vim-env/vim/bundle/YouCompleteMe
# sudo apt install build-essential cmake vim-nox python3-dev
# sudo apt install mono-complete golang nodejs default-jdk npm
python3 install.py --all
echo "alias tx=tmuxinator" >> ~/.zshrc
echo "alias tx=tmuxinator" >> ~/.bashrc
echo "export XDG_CONFIG_HOME=~/tmux-vim-env/tmux/" >> ~/.zshrc
echo "export XDG_CONFIG_HOME=~/tmux-vim-env/tmux/" >> ~/.bashrc
source ~/.bashrc
source ~/.zshrc

