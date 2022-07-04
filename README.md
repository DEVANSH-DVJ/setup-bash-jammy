# setup-bionic-jammy

Bash scripts for setting up the environment in Ubuntu 22.04 Jammy Jellyfish

Order:

1. Primary Setup
   1. Make changes to Settings (`settings/`)
   2. Now change server in Softwares & Updates
   3. Run primary_setup.sh
   4. Customize Gedit preferences (`gedit/`)
   5. Continue to Step 2
2. Windows connection
   1. Run windows/windows_1.sh
   2. Run lid_close_bug.sh, this will automatically **Reboot**.
   3. After restarting, run windows/windows_2.sh
   4. Configure Rhythmbox
   5. Continue to Step 3
3. Basic Tools
   1. Run git.sh and configure ssh key.
