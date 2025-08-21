all:

install:
	install -m 755 -D pactropy $(HOME)/.local/bin/pactropy
	install -m 644 -D min.yml $(HOME)/.config/pactropy/essential.yml

.PHONY: all install
