sudo apt update

#insatll nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
#insatll node@20.0.0
nvm install v20.0.0

#install ohmyzsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#configure ohmyzsh with personal config
git clone https://github.com/git-init-priyanshu/zsh-config
mv zsh-config/.zshrc ./
source .zshrc

#install neovim@0.10
wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo mv nvim-linux64 /usr/local/
sudo ln -s /usr/local/nvim-linux64/bin/nvim /usr/local/bin/nvim
#install nerd fonts ( JetbrainsMono )
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
sudo apt install unzip 
unzip JetBrainsMono.zip -d JetBrainsMono
mkdir -p ~/.local/share/fonts
sudo mv JetBrainsMono/*.ttf /usr/share/fonts/
sudo apt install gcc
sudo apt install ripgrep
#configure neovim with personal config
git clone https://github.com/git-init-priyanshu/Neovim-NvChad-config ~/.config/nvim
