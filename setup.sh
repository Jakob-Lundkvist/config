sudo pacman -Syu
sudo pacman -S --needed - < packages.txt

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp config ~/.i3/config

cp .zshrc ~/.zshrc

cp .vimrc ~/.vimrc

mkdir ~/.config/nvim

cp init.vim ~/.config/nvim/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ssh-keygen
