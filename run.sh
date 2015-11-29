# copy .vimrc
cp ~/.vimrc ~/.vimrc_backup
cp ./.vimrc ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install nerdtree
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

# install powerline
pip install --user powerline-status

# install ctrlp
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# install silver search
brew install the_silver_searcher
cd ~/.vim/bundle && git clone https://github.com/rking/ag.vim 


