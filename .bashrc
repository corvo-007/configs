# git branch - add to PS1

# gives - (main)
git_branch_1() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# gives - main
git_branch_2() {
	git branch 2> /dev/null | grep '^*' | cut -d ' ' -f2
}

# gives - main
git_branch_3() {
	branch="$(git branch --show-current 2> /dev/null)"
	if [ -n "$branch" ]; then
		echo "($branch)"
	fi
}

# make and change directory
mcd() {
	mkdir -p "$1"
	cd "$1"
}

# extract based on extension
extract() {
	if [ -f $1 ]; then
		case "$1" in
			*.tar.bz2)	tar xvjf "$1";;
			*.tar.gz)	tar xvzf "$1";;
			*.tar.xz)	tar xvJf "$1";;
			*.tar)		tar xvf "$1";;
			*.zip)		unzip "$1";;
			*)		echo "'$1' cannot be extracted via extract()";;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}
