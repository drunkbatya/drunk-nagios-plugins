#!/bin/bash

PLUGIN_DIR="/usr/lib/nagios/plugins"

sudo ln -f -s $(pwd)/check_akado "$PLUGIN_DIR/"
sudo ln -f -s $(pwd)/check_regru_domain "$PLUGIN_DIR/"
