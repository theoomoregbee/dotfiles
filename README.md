# dotfiles
Personal dotfiles

## Cloining / replicating
```sh
git clone --recursive https://github.com/theo4u/dotfiles.git
```

## Configuration / Automation
* **Setup Mac** importing, just simply run `setup-mac.sh`, which run through the following sequence 
	- check if brew is installed, install it
	- install packages from `Brewfile`
        - check if git was installed, if not do `brew install git`
	- Oh my Zsh installation
	- link dotfiles to home directory
	- install vim bundles `.vim/bundles`
	- run through mac default configurations (hide/show dock)
* **Syncing Files** keeping files updated for dotfiles and brew installed packages
	- `cd ~/dotfiles` commit the changes
	- for keeping track of installed brew packages, using a git hook to auto update and commit `Brewfile`(no need to think of this)
	- then `git push` to push the changes and the auto commit for `Brewfile` 
	- For vim plugin syncing which is my main focus check below

## VIM 
### Adding Plugins via Pathogen
```sh
cd ./.vim/bundle
git submodule add http://github.com/tpope/vim-fugitive.git
```
Using git hook to auto commit the submodule added using the `repo-name` like so `added ${repo_name} plugin`. So, anytime we decide to push we can push the new update 

### Managing Plugins 
#### Single Update
```sh
cd ~/.vim/bundle/${pluginName}
git pull origin master
``` 
#### All Update
```sh
git submodule foreach git pull origin master
```
#### Remove Update
```sh
cd ~/.vim/bundle
git submodule deinit <submodule-name>    
git rm <submodule-name>
```
Using git hook to auto commit the submodule after triggering `git submodule update` automatically too (keeping check of the current state of submodules) 
* removed using the `repo-name` like so `removed ${repo_name} plugin`. 
* any submodule changes  like so `Updated Plugins`. 
So, anytime we decide to push we can push the new update 

## Term/ITerm theme
* [Space Gray](theme/spacegray.itermcolors)

## VIM Cheat sheet
### VIM SESSION
* `:mks ~/sessions/name of project.vim` : The next time you’re ready to start working on that project, source that session file within vim `:source ~/sessions/rooster.vim` Or open it when you run vim in terminal using the **-S** flag: `vim -S ~/.vim/sessions/rooster.vim`
Boom. Everything will be exactly as you left it: the working directory, your windows, splits, and buffers, and any options you’ve :set. When the cycle repeats as you rearrange the furniture, just overwite the old session by using `:mks!`.

### VIM TABS
* gt (or :tabn) to go to next tab
* gT (or :tabp or :tabN) to go to previous tab
* #gt (or :tabn #) to go to #th tab
* :tabr to go to first tab
* :tabl to go to last tab
* :tabm to move the current tab to the last position
* :tabm # to move the current tab to the #th position

### Goto Definition using g
Place the cursor on any variable in your program.
* gd will take you to the local declaration.
* gD will take you to the global declaration.
* g* search for the word under the cursor (like *, but g* on 'rain' will find words like 'rainbow').
* g# same as g* but in backward direction.
* gg goes to the first line in the buffer (or provide a count before the command for a specific line).
* G goes to the last line (or provide a count before the command for a specific line).
* gf will go to the file under the cursor
* g] and other commands will jump to a tag definition (a tag can be a function or variable name, or more).
* gf - Edit existing file under cursor in same window
* C-Wf - Edit existing file under cursor in split window
* C-WC-F - Edit existing file under cursor in vertically split window
* C-Wgf - Edit existing file under cursor in new tabpage

### Surround
http://www.futurile.net/2016/03/19/vim-surround-plugin-tutorial/

