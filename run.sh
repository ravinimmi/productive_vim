# copy .vimrc
mv ~/.vimrc ~/.vimrc_backup
cp ./.vimrc ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# go to bundle
cd ~/.vim/bundle

# install nerdtree
git clone https://github.com/scrooloose/nerdtree.git

# install ctrlp
git clone https://github.com/kien/ctrlp.vim.git ctrlp.vim

# install silver search
brew install the_silver_searcher
git clone https://github.com/rking/ag.vim 

# solarized theme
git clone git://github.com/altercation/vim-colors-solarized.git

# fugitive
git clone git://github.com/tpope/vim-fugitive.git

# install meslo font
git clone https://github.com/powerline/fonts.git
open "fonts/Meslo/Meslo LG L Regular for Powerline.otf"

# install pip
sudo easy_install pip

# install powerline
pip install --user powerline-status


