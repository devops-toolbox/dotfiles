#!/usr/bin/env bash

# Run lint
yamllint .
ansible-lint .
scc
