install_package(){
    url=https://github.com/$1
    project=$(basename "$url" ".${url##*.}")

    if [ -d "$project" ]; then
        echo "Updating" $project"..."
        cd $project
        git pull -q origin master
        cd ..
        echo $project "updated.\n"
    else
        echo "Installing" $project"..."
        git clone -q $url
        echo $project "installed\n"
    fi
}

# copy .vimrc
mv ~/.vimrc ~/.vimrc_backup
cp ./.vimrc ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# go to bundle
cd ~/.vim/bundle

# install nerdtree
install_package scrooloose/nerdtree.git

# install ctrlp
install_package ctrlpvim/ctrlp.vim.git

# install silver search
brew install the_silver_searcher
install_package rking/ag.vim.git

# solarized theme
install_package altercation/vim-colors-solarized.git

# fugitive
install_package tpope/vim-fugitive.git

# nerdcommenter
install_package scrooloose/nerdcommenter.git

# install meslo font
install_package powerline/fonts.git
fonts/install.sh

# install pip
sudo easy_install pip
sudo pip install --upgrade pip

# install powerline
pip install --user powerline-status

brew install cmake
install_package Valloric/YouCompleteMe.git
cd YouCompleteMe
./install.py --clang-completer
