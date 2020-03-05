Repo with custom config files.

EASY INSTALL(requires manjaro i3 file layout)

run setup.sh


OTHER
pacman -S - < packages.txt
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

and copy all config files to their desired locations. 
