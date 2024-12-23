# setup-bionic-jammy

Bash scripts for setting up the environment in Ubuntu 22.04 Jammy Jellyfish

Order:

1. Primary Setup
   1. Make changes to Settings (`settings/`)
   2. Now change server in Softwares & Updates
   3. Run `primary_setup.sh`
   4. Customize gedit preferences (`editor/gedit/`)
   5. Customize terminal preferences (`editor/terminal.txt`)
   6. Customize terminator preferences (`editor/terminator.txt`)
   7. Continue to Step 2
2. Windows connection
   1. [HP] Run `hp/windows_1.sh`
   2. [HP] Run `hp/lid_close_bug.sh`, this will automatically **Reboot**
   3. [HP] After restarting, run `hp/windows_2.sh`
   4. [HP] Configure Rhythmbox
   5. [Dell] Run `dell/windows_1_dell.sh`
   6. [Dell] Run `dell/blurry_display.sh`, this will automatically **Reboot**
   7. [Dell] After restarting, run `dell/windows_2.sh`
   8. Continue to Step 3
3. Softwares & Tools (Essentials, Language Tools, Browsers)
   1. Run `browsers/chrome.sh` and login to GitHub
   2. Run `git.sh` and configure ssh key
   3. Run `vim.sh`
   4. Run `browsers/*.sh` [in order `brave`, `opera`]
   5. Once browsers are installed, sync the account and customize the settings
   6. Run `lang_tools/*.sh` [in order `cpp`, `build`, `java`, `js`, `conda`, `pyenv`, `tex`]
   7. **Reboot** and move to Step 4
4. Softwares & Tools (Accessibility, Editors, Drivers)
   1. Run `accessibility/*.sh` [in order `gnome`, `dconf`]
   2. Configure gnome-tweaks (`accessibility/gnome/`)
   3. Configure dconf-editor (`accessibility/dconf/`)
   4. Run `editors/vscode.sh` [Optional: `editors/sublime.sh`, `editors/atom.sh`]
   5. Once editors are installed, sync the account and settings
   6. [HP] Run `nvidia.sh`
   7. [Dell] Run `intel.sh`
   8. **Reboot** and move to Step 5
5. Optionals
   1. [HP] Configure GPU driver settings
   2. Run `optionals/*.sh`
