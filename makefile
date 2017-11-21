all: README.md

README.md:
	echo '# Title: The Unix Work Bench Course Project - Guessing Game Script\n' > README.md
	echo '* Make execution Time $(shell date "+DATE: %m/%d/%y%nTIME: %H:%M:%S")\n' >> README.md
	echo '* Number of Lines: $(shell wc -l < guessinggame.sh) \n' >> README.md
