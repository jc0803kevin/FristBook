


layer.confirm('确定提交充值？', {
	btn: ['确定', '取消']//按钮
}, function () {
	Recharge.recharge(data);
}, function () {});
