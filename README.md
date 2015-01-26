# Congratulations, you found my dotfiles repo!
I'm only putting these up here in case my system explodes, or in case I get another urge to go on a dotfile hackfest that goes totally awry and needs some source control rescue. Why the README then? Well, github strongly recommended having one!

## Pre-Requisites
* ZSH (I use 4.3.15, YMMV)
* VCPrompt
* RVM
* Git
* reattach-to-user-namespace ( brew install reattach-to-user-namespace )
* VIM compiled with Ruby Support: http://stackoverflow.com/questions/3794895/installing-vim-with-ruby-support-ruby or MacVim

(If you're only installing the VIM files you can ignore all but the last pre-req)

## Installin'
Simply clone the repo, CD into it. Run

>ruby install.rb

You will be prompted to choose between all/zsh/vim files. It will symlink the files from their current location to your home folder. It won't back up anything you already have existing.. so, yeah, careful!

If you want to install the vim plugins as well, make sure you're using system ruby (in an attempt at automating command-T's native extension compilation, this helps!) then!

>cd _vim
>ruby update_bundle.rb

should work just fine.

### ZSH
you can install the latest zsh with

>brew install zsh

then add /usr/local/bin/zsh to your /etc/shells file (probably using sudo) then run

>chsh -s /usr/local/bin/zsh

basically this prompt shows hostname:directory(branch+*?) (where the +*? denote the state of the working directory in git). tmux configuration with tabs and simple vim-like bindings. autocd and colors and all that. nothing too fancy

### VIM
Pretty minimalist.

#### Plugins
Plugins are managed my Vundle.  The most up-to-date list can be found in linked/config/plugins.vim

#### Bindings In Normal Mode
* Common NerdTree Bindings
  * nt - open/close nerdtree
  * nf - find current file in nerdtree
* Ggrep movements
  * gn  : next in cabinet
  * gp  : previous in cabinet
  * gq  : close cabinet
* Standard tcomment bindings
  * gc or gcc to comment, depending on Mode

Leader Stuff
* Leader: comma (,) or backslash (\) (I don't pick sides)
* Leader + t : file finder
* Leader + w : clear whitespace
* Leader + space : clear highlight (same as :noh)

Custom Stuff
* g'  : replace word under cursor
* g/  : hotkey for Ggrep
* g.  : hotkey for Grep word under cursor
* ggy : copy selected into mac clipboard
* ggp : paste clipboard into current buffer

* Custom Tab Navigation/Creation
  * gtn  : create (n)ew tab
  * gtc  : (c)lose current tab
  * gto  : (o)nly keep current tab open, close all others
  * cntrl + k  : next tab
  * cntrl + j  : previous tab

#### ColorScheme Stuff
* ClearBackground  : clears vim background, revealing terminal color instead
* SolarizedLight   : sets colorscheme to Solarized Light
* SolarizedDark    : MY Solarized Dark Scheme

## A few notes on VCPrompt
> curl -sL https://raw.github.com/djl/vcprompt/v1.0.1/bin/vcprompt > /usr/local/bin/vcprompt && sudo chmod +x /usr/local/bin/vcprompt
