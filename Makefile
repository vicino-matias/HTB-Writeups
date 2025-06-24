WRITEUP ?= example

all: pdf html

pdf:
	pandoc writeups/$(WRITEUP).md -o writeups/$(WRITEUP).pdf --highlight-style=tango --metadata title="$(WRITEUP) Writeup"

html:
	pandoc writeups/$(WRITEUP).md -o writeups/$(WRITEUP).html --highlight-style=tango --metadata title="$(WRITEUP) Writeup"

clean:
	rm -f writeups/*.pdf writeups/*.html
