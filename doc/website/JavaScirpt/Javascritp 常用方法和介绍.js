

JS打开新窗口的2种方式

1.超链接<a href="http://www.jb51.net" title="脚本之家">Welcome</a>
等效于js代码
window.location.href="http://www.jb51.net";     //在同当前窗口中打开窗口
 
2.超链接<a href="http://www.jb51.net" title="脚本之家" target="_blank">Welcome</a>
等效于js代码
window.open("http://www.jb51.net");                 //在另外新建窗口中打开窗口