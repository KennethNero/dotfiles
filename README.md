# Welcome
Hello owo and thank you for visiting the repo. This repo holds my .vim and .vimrc configuration files for my current vim editor settings. Each one of the dependencies has instructions for separate installation below. :+1:

This repository was last updated October 6th, 2018.

- [Getting Started](##Getting-Started)
- [Pathogen](##Pathogen)
- [Theme](##Background)
- [Addons](##Addons)
  - [NerdTree](###NerdTree)
  - [LightLine](###LightLine)
  - [Terminus](###Terminus)
- [Extra configurations](###Extras)

## Getting Started
### Cloning

To use this configuration. Preform the following steps:
```
cd
git clone https://github.com/cwh1727/dotfiles.git
mv -t ~/ dotfiles/.vim dotfiles/.vimrc
```
You will now be using this directory's files for your vim configuration

## Pathogen

Pathogen, a free online package manager, is used for all of the installed packages. 
Instructions on installation can be found at https://github.com/tpope/vim-pathogen 

After installation of pathogen, the following lines must be added to the top of your .vimrc file
```
execute pathogen#infect()
syntax on
filetype plugin indent on
```

## Theme
One of the best parts about vim is it's ability to use custom background and styling components for the editor. The current one I use is called jellybeans. 

Installation instructions:
```
cd ~/.vim/bundle
git clone https://github.com/nanotech/jellybeans.vim
```
After installation, add the following to your .vimrc
```
colorscheme jellybeans

let g:jellybeans_overrides = {
    \    'background': { 'guibg': '222222' },
\}
```
The let command above changes the background of the vim editor to work better with the theme

## Addons
Instructions for installation of all currently used files can be found in the sections below!

### NerdTree
No matter what language you program in, I would heavily suggest this package. It allows you to directly see, open, create, and delete files in your system without having to leave the editor.

Installation instructions:
```
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree
```
To display the side pannel, I use the following configuration, however feel free to change the key command to whatever works best for you.
```
map <C-n> :NERDTreeToggle<CR>
```

### LightLine
This adds a bottom bar to the screen that shows what mode of vim you are currently in, along with a bunch of other really useful information, such as the file name, what line you are on, etc.
Installation instructions:
```
cd ~/.vim/bundle
git clone https://github.com/itchyny/lightline.vim
```
The nice thing about lightline is that it allows for customizations as well. Even though I am not currently using one, To change the colors, checkout https://vimawesome.com/plugin/lightline-vim for instructions on how to install them. For added coloring, I added the following line to my .vimrc
```
set laststatus=2
set noshowmode
if !has('gui_running')
     set t_Co=256
endif
```
These all just ensure lightline is functioning and displaying properly.

### Terminus
This package allows for the cursor to change depending on the mode you are in for vim.

Installation instructions:
```
cd ~/.vim/bundle
git clone https://github.com/wincent/terminus
```

I also added the following to my .vimrc to select the cursor type I would like to use:
```
let g:TerminusInsertCursorShape=1
let g:TerminusReplaceCursorShape=2
```

### Extras
The following lines in my .vimrc are extra commands automatically installed for vim. 
They handle line numbering and also add lines for padding to show me when I am about
to go over 80 characters in length for a line.
```
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
let &colorcolumn="80,".join(range(120,9999),",")
set cursorline
set autoindent
highlight ColorColumn ctermbg=235
highlight CursorLine ctermbg=235

" Enable folding and set it to be used with spacebar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
```
