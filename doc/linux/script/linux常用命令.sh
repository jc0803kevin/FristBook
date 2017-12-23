
1、先查看tomcat的进程号

ps -ef | grep tomcat*【tomcat-notify】

后面带*号，是为了查看多个tomcat，例如tomcat6，tomcat7。也可以指定Tomcat实例名称

2.查看程序端口占用情况
netstat   -anp   |   grep  portno

eg:	netstat –apn | grep 8082
返回如下：
[root@test-002 tomcat-notify]# netstat -anp | grep 8082
tcp        0      0 :::8082                     :::*                        LISTEN      30524/java


3.linux下实时查看tomcat运行日志
	【a】、先切换到：cd tomcat/logs

	【b】、tail -f catalina.out

	【c】、这样运行时就可以实时查看运行日志了
	
	或者 tail -f tomcat/logs/catalina.out
	
4.linux  clear命令  清空终端屏幕命令
	clear命令是用来清除终端屏幕的（clear the terminal screen）
	按Ctrl+L也可以达到同样的效果
	
	windows的DOS操作界面里面，清屏的命令是cls