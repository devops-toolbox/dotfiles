Role Name
=========

dotfiles

[![Build Status](https://travis-ci.org/cmihai-ansible/dotfiles.svg?branch=master)](https://travis-ci.org/cmihai-ansible/dotfiles)

Ansible galaxy:
---------------

[https://galaxy.ansible.com/devopstoolbox.dotfiles](https://galaxy.ansible.com/devopstoolbox.dotfiles)

```bash
ansible-galaxy install devopstoolbox.dotfiles
```

Requirements
------------

- For RHEL, a Red Hat subscription or functional local repository.

Role Variables
--------------

```yaml
dotfiles_repo: "https://github.com/devopstoolbox.dotfiles.git"
dotfiles_repo_version: HEAD
dotfiles_path: ~/.dotfiles
spacemacs_version: "v0.200.13"

dotfiles_user: ansible

# Link dotfiles
dotfiles_files:
  - .tmux.conf.local
  - .tmux.conf
  - .zshrc

# Copy (and backup)
dotfiles_copy:
  - .zshrc.local
  - .gitconfig

# Sync (no backup)
dotfiles_sync:
  - .config
```

Dependencies
------------

- For Red Hat, subscription-manager.

Example Playbook
----------------

```yaml
---
- name: Install dotfiles on localhost
  hosts:
    - localhost
  connection: local

  tasks:
    - name: dotfiles is configured
      import_role:
        name: devopstoolbox.dotfiles
      vars:
        dotfiles_repo: "https://github.com/devopstoolbox.dotfiles.git"
        dotfiles_repo_version: HEAD
        dotfiles_path: ~/.dotfiles
        spacemacs_version: "v0.200.13"

        dotfiles_user: ansible

        # Link dotfiles
        dotfiles_files:
          - .tmux.conf.local
          - .tmux.conf
          - .zshrc

        # Copy (and backup)
        dotfiles_copy:
          - .zshrc.local
          - .gitconfig

        # Sync (no backup)
        dotfiles_sync:
          - .config
      tags: dotfiles
```

License
-------

MIT

Author Information
------------------

- [Mihai Criveti](https://www.linkedin.com/in/devopstoolbox.)
