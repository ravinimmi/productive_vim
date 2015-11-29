# copy .vimrc
cp ~/.vimrc ~/.vimrc_backup
cp ./.vimrc ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install nerdtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

# install pip
sudo easy_install pip

# install powerline
pip install --user powerline-status

# install ctrlp
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# install silver search
brew install the_silver_searcher
cd ~/.vim/bundle && git clone https://github.com/rking/ag.vim 

# solarized theme
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

# fugitive
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

# install meslo font
cd ~
git clone https://github.com/powerline/fonts.git
open "fonts/Meslo/Meslo LG L Regular for Powerline.otf"


