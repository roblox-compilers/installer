cd %userprofile%\Downloads
git clone https://github.com/roblox-compilers/installer.git
ren installer rcc
move rcc "C:\Program Files (x86)"
setx /M path "%PATH%;C:\Program Files (x86)\rcc\deploy"