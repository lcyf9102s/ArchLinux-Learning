# ArchLinux-Learning
Arch Linux learning notes ( Arch Wiki: https://archlinux.org/ )

1. okular pdf注解：F6 https://docs.kde.org/stable5/en/okular/okular/annotations.html
2. GitHub markdown：https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax
3. Update grub after installing custom kernel:
   ```
   $ sudo grub-mkconfig -o /boot/grub/grub.cfg
   ```
4. C++中矩阵要初始化。如定义一个矩阵：
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
5. Fedora上编译Geant4:
   ```
   $ cmake -DCMAKE_INSTALL_PREFIX=$HOME/geant4_install -DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_OPENGL=ON -DGEANT4_USE_QT=ON -DCMAKE_PREFIX_PATH=/lib64/qt5 -DGEANT4_INSTALL_DATADIR=$HOME/geant4_src/geant4_datasets /home/nekofedora/geant4_src/geant4-v11.1.2/
   ```
