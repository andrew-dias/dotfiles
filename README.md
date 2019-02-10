# DEPRECATED FEB 2019 - MIGRATED TO ANSIBLE
See https://github.com/andrew-dias/ansible-role-dev-machine

# dotfiles

This dotfiles repo is powered by [dotbot](https://git.io/dotbot).

## Installation

In my setup, these dotfiles are cloned and installed from [this](https://github.com/andrew-dias/dev-machine-playbook) Ansible playbook. The manual steps are described below.

1. Clone this repository

  ```shell
  git clone https://github.com/andrew-dias/dotfiles.git
  ```
2. Run the install script in the dotfiles directory

  ```shell
  install
  ```
3. Reboot

## Next Steps

At this point your terminal should be running ZSH, and the `zplug` plugins should be installed automatically the first time it runs.  If you have trouble, try running `zplug install` at the prompt.

You will still need to choose the Base 16 theme simply by typing something like `base16_flat` (my preferred theme right now).

NVIM plugins need to be manually installed by typing `:PlugInstall` in the command mode.

