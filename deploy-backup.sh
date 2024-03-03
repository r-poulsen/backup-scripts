#!/bin/env bash

# Pull required repos from git first, with the side effect of failing if there are uncommitted
# local changes.
ansible-playbook git-pull.yaml \
    --inventory inventory/hosts.ini &&
    ansible-playbook \
        deploy-backup.yaml \
        --inventory inventory/hosts.ini \
        --vault-password-file ~/.vault \
        -e @~/git/vault/vault.yaml
