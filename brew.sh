#####################
# brew.sh can perform the following actions
# check if brew is installed then install if not : BREW_INSTALL
# make brewfile from the list of installed packages MAKE_BREWFILE
# 
#
####################
ACTION=$1

## Basic functions 
# message is passed as parameter
commit_brew_file () {
git add ~/dotfiles/Brewfile
git commit -m "$1"
echo "committed brew file: $1"
}


make_brewfile_fn () {
brew bundle dump --force
# our Brewfile should be created in home dir, we move and symlink
echo "Moving generated Brewfile to dotfiles from ~/"
rsync --remove-source-files ~/Brewfile ~/dotfiles/
# commit our brewfile based on  the message specified here
echo "commit Brewfile for new changes"
commit_brew_file "Updated list with installed brew packages"
echo "Make Brefile done."
}


case ACTION in 
	BREW_INSTALL)
	;;
	MAKE_BREWFILE)
	make_brewfile_fn
	;;
	*)
	echo "No action specified, skippign brew.sh"
	;;
esac

