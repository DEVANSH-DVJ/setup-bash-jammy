#!/bin/bash

## Faced in Dell Laptops with another Display set at fractional scaling. The display with fractional scaling gets blurry.
## To prevent this, following script is written.

sudo sed -i '/#WaylandEnable=false/c\WaylandEnable=false' /etc/gdm3/custom.conf;
sudo reboot;
