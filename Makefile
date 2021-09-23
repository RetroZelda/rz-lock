DESTINATION_DIR = /usr/local/bin
SCRIPT_FILE = rz-lock
DESTINATION_FILE = $(DESTINATION_DIR)/$(SCRIPT_FILE)

.PHONY: install uninstall clean

install: uninstall
	@cp -f $(SCRIPT_FILE) $(DESTINATION_FILE)
	@hash -r

uninstall:
	@rm -f $(DESTINATION_FILE)
	@hash -r

config:
	@apt install imagemagick scrot i3lock -y

