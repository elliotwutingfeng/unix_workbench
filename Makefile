all:
	echo "# Project Title: The Guessing Game!" > README.md
	date +"- 'make' command was run on %F at %T%z" >> README.md
	echo "-" `wc -l guessinggame.sh | cut -d' ' -f1` "lines in guessinggame.sh" >> README.md 
