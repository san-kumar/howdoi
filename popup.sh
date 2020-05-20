#!/bin/bash
# Run howdoi in a popup (useful if want to use it outside a terminal via a keybinding)

gnome-terminal -e 'bash -c "howdoi -i; echo Press any key to exit; read line"'