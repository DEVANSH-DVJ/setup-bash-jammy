wget -qO - https://repositories.intel.com/gpu/intel-graphics.key | sudo gpg --dearmor --output /usr/share/keyrings/intel-graphics.gpg;
echo "deb [arch=amd64,i386 signed-by=/usr/share/keyrings/intel-graphics.gpg] https://repositories.intel.com/gpu/ubuntu jammy client" | sudo tee /etc/apt/sources.list.d/intel-gpu-jammy.list;
sudo apt update;

sudo apt -y install intel-opencl-icd intel-level-zero-gpu level-zero intel-media-va-driver-non-free libmfx1 libmfxgen1 libvpl2 libegl-mesa0 libegl1-mesa libegl1-mesa-dev libgbm1 libgl1-mesa-dev libgl1-mesa-dri libglapi-mesa libgles2-mesa-dev libglx-mesa0 libigdgmm12 libxatracker2 mesa-va-drivers mesa-vdpau-drivers mesa-vulkan-drivers va-driver-all vainfo hwinfo clinfo;
sudo apt -y install libigc-dev intel-igc-cm libigdfcl-dev libigfxcmrt-dev level-zero-dev

sudo apt -y install intel-gpu-tools;

# https://askubuntu.com/questions/387594/how-to-measure-gpu-usage

git clone https://github.com/intel/pti-gpu/
cd pti-gpu/tools/sysmon
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release .. && make
