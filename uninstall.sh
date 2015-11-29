# restore .vimrc
rm ~/.vimrc
mv ~/.vimrc_backup ~/.vimrc

# uninstall pathogen and bundles
rm -rf ~/.vim/autoload ~/.vim/bundle

# uninstall silver search
brew uninstall the_silver_searcher

# uninstall powerline
sudo pip uninstall powerline-status


