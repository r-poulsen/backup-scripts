# Simple Makefile. Not used when using the Ansible playbook.
# Deploys example configuration files.

PREFIX ?= /opt/backup
ETC_DIR = $(PREFIX)/etc
VAR_DIR = $(PREFIX)/var
BIN_DIR = $(PREFIX)/bin

install:
    install -d $(ETC_DIR)
    install -d $(VAR_DIR)
    install -d $(BIN_DIR)
    install -m 640 patterns.lst $(ETC_DIR)
    install -m 640 backup.conf $(ETC_DIR)
    install -m 755 borg-backup $(BIN_DIR)
    install -m 755 borg-mount $(BIN_DIR)