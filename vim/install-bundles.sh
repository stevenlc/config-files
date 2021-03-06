# Run this script once to install vim extensions managed with Pathogen
# This requires npm installed, as there are `npm install -g` commands here.

# If this is done on a Mac, it also requires cmake to install the youcompleteme package.
# Simply uncomment the line below to install cmake on mac
# brew install cmake

# If this is done on Ubuntu/Linux, uncomment the following lines:
# sudo apt-get install build-essential cmake
# sudo apt-get install python-dev python3-dev

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim-airline - Lean & mean status/tabline for vim that's light as air 
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# BufferGator - for efficient vim buffer traversal  
cd ~/.vim/bundle
git clone https://github.com/jeetsukumaran/vim-buffergator

# DelimitMate - for auto closing () and {}
cd ~/.vim/bundle
git clone https://github.com/vim-scripts/delimitMate.vim

# NerdTree - for file navigator view
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Ale - code linting in real-time. requires Vim 8+
cd ~/.vim/bundle
git clone https://github.com/w0rp/ale.git

# Ctrl-P - 
cd ~/.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim

# Syntastic - code linting
cd ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic

# JSHint - for code linting
npm install -g jshint

# ESLint - for code linting. better than JSHint but requires more setup
npm install -g eslint

# YouCompleteMe - syntax suggestions
cd ~/.vim/bundle
git clone https://github.com/valloric/youcompleteme
cd ~/.vim/bundle/YouCompleteMe
./install.py --tern-completer

# Tern-For-Vim - provides tern-based JS editing. requires youcompleteme
cd ~/.vim/bundle
git clone https://github.com/marijnh/tern_for_vim

# create the .tern-project file so that no Warnings show up when vim is started
touch ~/.tern-project
echo "{
    "libs" : ["ecma6", "browser"],
    "plugins": {
            "node" : {},
            "es_modules" : {}
        },
    "ecmaVersion": 6
}" > ~/.tern-project

# Distinguished - color scheme with dark bg terminal for vim
cd ~/.vim/bundle
git clone https://github.com/lokaltog/vim-distinguished

# Indent Guides - visually display indent levels in vim
cd ~/.vim/bundle
git clone https://github.com/valloric/vim-indent-guides

# Vim-Javascript - provides syntax highlighting and improved indentation for javascript
cd ~/.vim/bundle
git clone https://github.com/pangloss/vim-javascript

# Vim-Javascript-Syntax 
cd ~/.vim/bundle
git clone https://github.com/coyotevz/vim-javascript-syntax


