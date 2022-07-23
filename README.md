# setup-bionic-jammy

Bash scripts for setting up the environment in Ubuntu 22.04 Jammy Jellyfish

Order:

1. Primary Setup
   1. Make changes to Settings (`settings/`)
   2. Now change server in Softwares & Updates
   3. Run `primary_setup.sh`
   4. Customize gedit preferences (`gedit/`)
   5. Continue to Step 2
2. Windows connection
   1. Run `windows/windows_1.sh`
   2. Run `lid_close_bug.sh`, this will automatically **Reboot**
   3. After restarting, run `windows/windows_2.sh`
   4. Configure Rhythmbox
   5. Continue to Step 3
3. Softwares & Tools (Essentials, Language Tools, Browsers)
   1. Run `git.sh` and configure ssh key
   2. Run `vim.sh`
   3. Run `common_tools.sh`
   4. Customize terminator preferences (`terminator/`)
   5. Run `lang_tools/*.sh`
   6. Run `browsers/*.sh`
   7. Once browsers are installed, sync the account and customize the settings
   8. **Reboot** and move to Step 4
4. Softwares & Tools (Accessibility, Editors, Optionals)
   1. Run `accessibility/gnome.sh`
   2. Configure gnome-tweaks (`accessibility/gnome/`)
   3. Run `accessibility/dconf.sh`
   4. Configure dconf-editor (`accessibility/dconf/`)
   5. Run `editors/*.sh`
   6. Once editors are installed, sync the account and settings
