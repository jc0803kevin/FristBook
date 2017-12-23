#-----------------------------------------------------------#
#1.启动activeMQ
#	在activemq主目录键入如下命令： 
	bin/activemq start  
	
#-----------------------------------------------------------#
#查看启动情况
# 访问activeMQ管理界面，http://ip:8161/admin
# 通过端口查询，activeMQ默认配置下启动会启动8161和61616两个端口，其中8161是mq自带的管理后台的端口，
# 61616是mq服务默认端口：

netstat -ntlp | grep 8161 

netstat -an | grep 61616  

#-----------------------------------------------------------#
#activemq测试环境测试方法
#sendType ： 同步类型
#bookId : 支付明细中的记录ID
#logCode : 同步表中的logCode [同步表中的logCode与支付明细中的logCode一致]

http://192.168.1.113:8080/sdk/api/mq.jsp?sendType=jdpayNotify&bookId=1507634&logCode=A05231558125532039


http://192.168.1.113:8080/sdk/api/mq.jsp?sendType=wypayNotify&bookId=1507649&logCode=A05231558125532049