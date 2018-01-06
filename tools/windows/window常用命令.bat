
rem 1.	查看被占用端口(8080)对应的PID

netstat -ano | findstr "8080"

rem 返回：
rem 协议    本地地址        外部地址          状态          PID
rem C:\Users\Administrator>netstat -ano | findstr "8080"
rem   TCP    0.0.0.0:8080            0.0.0.0:0              LISTENING       940

rem 2.	查看是哪个进程或者程序占用了61616端口

tasklist | findstr "8080"


rem 4.
rem 杀死进程：
rem 可以通过任务管理器 杀进程；
rem 也可用代码：
	taskkill /pid 1688 /F
rem 结果：
rem 成功: 已终止 PID 为 2888 的进程。