sudo apt update

#install ohmyzsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#configure ohmyzsh with personal config
git clone https://github.com/git-init-priyanshu/zsh-config
mv zsh-config/.zshrc ./.zshrc
source .zshrc

#install neovim
wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo mv nvim-linux64 /usr/local/
sudo ln -s /usr/local/nvim-linux64/bin/nvim /usr/local/bin/nvim
