#!/usr/bin/bash
#
# Small program to test some nicer formatting for project ATLAS
# ~ Nicholas O'Kelley (Nov. 27, 2021)

# link for learning about color codes
# https://www.tutorialspoint.com/how-to-output-colored-text-to-a-linux-terminal
#

header() {
  printf "\033[1;42m";
  printf '%*s\n'  "${COLUMNS:-$(tput cols)}" '' | tr ' ' ' ';
  printf '%-*s\n' "${COLUMNS:-$(tput cols)}" "  # $1" | tr ' ' ' ';
  printf '%*s'  "${COLUMNS:-$(tput cols)}" '' | tr ' ' ' ';
  printf "\033[0m";
  printf "\n\n";
}

prompt() {
  printf "\n";
  printf "\033[1;46m %s \033[0m" "$1";
  printf "\n";
}

breakLine() {
	printf "\n";
	printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -;
	printf "\n\n";
	sleep .5;
}

title "Welcome to the helpful install"

breakLine;

title "Another cool title"

breakLine;

notify "these were not as hot as they are now"

exit 0
