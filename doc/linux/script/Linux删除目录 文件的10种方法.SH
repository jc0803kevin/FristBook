Linux删除目录下的文件的10种方法

删除当前目录下的所有文件

1.rm -f *

#最经典的方法，删除当前目录下的所有类型的文件

2.find . -type f -delete或find . -type f -exec rm -f {} \;

#用find命令查找普通文件并删除or用find命令的处理动作将其删除

3.find . -type f | xargs rm -f

#用于参数列表过长;要删除的文件太多

4.rm-f `find . -type f`

#删除全部普通文件

5.for delete in `ls -l`;do rm -f * ;done

#用for循环语句删除当前目录下的所有类型的文件

删除指定目录下的文件

1.rm -f 指定目录*

#最经典的方法，删除指定目录下的所有类型的文件

2.find 指定目录 -type f -delete或find 指定目录 -type f -exec rm -f {} \;

#用find命令查找指定目录下的所有普通文件并删除or用find命令的处理动作将其删除

3.find 指定目录 -type f | xargs rm -f

#用于参数列表过长;要删除的文件太多

4.rm-f `find 指定目录 -type f`

#删除指定目录下的全部普通文件

5.for delete in `ls –l 指定目录路径`;do rm -f * ;done

#用for循环语句删除指定目录下的所有类型的文件

本文永久更新链接地址：http://www.linuxidc.com/Linux/2017-06/144634.htm