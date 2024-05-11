rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b 14-ksu kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

cd frameworks/base
git reset --merge 2aecdd6
git reset --merge HEAD~1
cd ../../

export TZ=Asia/Jakarta
