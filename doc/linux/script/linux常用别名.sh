#------------------------------------------------------------------#
# 1.查看已设置的命令别名
# 		alias
# 2.设置命令别名 
# 		alias  别名=别名命令
# 3.删除命令别名
#		unalias  别名
#           若已把别名添加到配置文件，则需要把配置文件中的对应项去掉
# 注意事项：
# 	1.单纯的是用上述命令添加别名的话，当我们的系统重启，或我们退出重新登录后，别名就不存在了。
#   2.若要想让自己设置的命令别名永久生效，则需要修改配置文件          			
#   3.每个用户的主目录下都会有这样的配置文件     .bashrc
#
#------------------------------------------------------------------#
####################################################################
#
# 			A.定义Tomcat启动命令别名
#
####################################################################
alias tomcat-admin-start="/wpay/production/tomcat-admin/bin/startup.sh && tail -f /wpay/production/tomcat-admin/logs/catalina.out"


alias tomcat-juheDev-start="/wpay/production/tomcat-juheDev/bin/startup.sh && tail -f /wpay/production/tomcat-juheDev/logs/catalina.out"


####################################################################
#
# 			B.定义Tomcat停止命令别名
#
####################################################################
alias tomcat-juheDev-stop="/wpay/production/tomcat-juheDev/bin/shutdown.sh"

alias tomcat-admin-stop="/wpay/production/tomcat-admin/bin/shutdown.sh"

