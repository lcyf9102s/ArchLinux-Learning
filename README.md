# ArchLinux-Learning
Arch Linux learning notes ( Arch Wiki: https://archlinux.org/ )

1. okular pdf注解：F6 https://docs.kde.org/stable5/en/okular/okular/annotations.html
2. GitHub markdown：https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax
   markdown换行：末尾打两个空格
4. Update grub after installing custom kernel:
   ```
   $ sudo grub-mkconfig -o /boot/grub/grub.cfg
   ```
5. C++中矩阵要初始化。如定义一个矩阵：
   ```c++
   double data[row][column];
   ```
   不初始化会出现Bus error。初始化，给每个元素赋一个初始值：
   ```c++
   for(int i=0;i<=row-1;i++)
    {
      for(int j=0;j<=column-1;j++)
      {
        data[i][j]=0;
      }
    }
   ```
6. linux上编译Geant4（已在opensuse、wsl2上测试）:
   ```
   $ cmake -DCMAKE_INSTALL_PREFIX=/home/neko/g4 \                                                                                      ─╯
   -DGEANT4_USE_OPENGL_X11=ON \
   -DGEANT4_USE_RAYTRACER_X11=ON \
   -DGEANT4_INSTALL_DATA=ON \
   -DGEANT4_INSTALL_DATADIR=/home/neko/g4_src/datasets \
   -DGEANT4_USE_QT=ON \
   -DGEANT4_BUILD_MULTITHREADED=ON \
   /home/neko/g4_src/geant4-v11.2.1
   ```
7. Opensuse tumbleweed下nvidia导致休眠恢复失败：在`/etc/default/grub`中添加内核启动参数`nouveau.blacklist=1`
8. 高分屏再x11下显示字体图标过小（如surface pro 7）：kde下，在设置中将缩放改为200%，然后在~/.xprofile中
9. pacman更新时出现key相关的问题（如无法导入、corrupted）：删除/etc/pacman.d/gnupg,再pacman-key --init
   ```
   # rm -rf /etc/pacman.d/gnupg
   # pacman-key --init
   ```
10. git本地仓库push到远程：
   ```
   git config --global user.name "yourname"
   git config --global user.email example@example.com
   git add <filename>
   git commit  -m "***"
   git push origin main
   ```
   
   
