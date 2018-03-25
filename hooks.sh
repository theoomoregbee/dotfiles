#####################
# hooks.sh can perform the following actions
#
####################
ACTION=$1
git_hooks="post-commit" # list of hooks with space within /hooks directory


make_executable () {
  echo "Making $1 executable"
  chmod +x .git/hooks/$1
}

# link and make executable
 for hook in $git_hooks; do 
	 echo "linking $hook hook to .git/hooks/$hook"
	 ln -s hooks/$hook .git/hooks/$hook
	 make_executable $hook
 done


