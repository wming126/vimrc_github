# Ubuntu 安装字体方法  

1. 在/usr/share/fonts/下新建文件夹 如：winFonts目录，准备的字体都放在这个目录里
```
sudo mkdir -p /usr/share/fonts/winFonts
```
2. 然后将字体文件拷贝到此文件夹下
```
sudo cp /home/username(用户名)/fonts/Yahei.ttf /usr/share/fonts/winFonts/

```
3. 然后，改变权限：
```
sudo chmod 644 /usr/share/fonts/winFonts/Yahei.ttf 
```
(改成755也没问题的，但起码要444,修改字体文件的权限为644，即当前用户读写，当前组用户只读，其他用户只读）

4. 开始安装：
```
cd /usr/share/fonts/winFonts/
sudo mkfontscale （创建字体的fonts.scale文件，它用来控制字体旋转缩放）
sudo mkfontdir （创建字体的fonts.dir文件，它用来控制字体粗斜体产生）
sudo fc-cache -fv （建立字体缓存信息，也就是让系统认识认识字体）
```
