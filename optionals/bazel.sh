#!/bin/bash -i

# Download bazelisk
sudo wget -O /usr/bin/bazel https://github.com/bazelbuild/bazelisk/releases/download/v1.20.0/bazelisk-linux-amd64

# Change permissions
sudo chmod 775 /usr/bin/bazel
sudo chown $USER /usr/bin/bazel
sudo chgrp $USER /usr/bin/bazel
