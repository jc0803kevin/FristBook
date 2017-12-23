/*******************************************************************************
 * @create by 2017-12-23
 * @author kevin
 * @version 1.0
 * @description JS 计算方法
 * 
 */

var Calculate = (function() {

	var handleButton = function() {

		$('#Btn').bind('click', function() {

		});
	}

	return {

		init : function() {
			handleButton();
		},
		/******************************************************
		 * 解决方案的原理是，将浮点数乘以（扩大）10的n次方倍，把浮点数变为整数后再进行相应的运算，最后将得到的结果除以（缩小）10的n次方倍。 
		 * 	Math.pow(x, y);表示求x的y次方
		 * 
		 * 加
		 * ****************************************************/
		floatAdd : function(arg1, arg2) {
			var r1, r2, m;
			try {
				r1 = arg1.toString().split(".")[1].length
			} catch (e) {
				r1 = 0
			}
			try {
				r2 = arg2.toString().split(".")[1].length
			} catch (e) {
				r2 = 0
			}
			m = Math.pow(10, Math.max(r1, r2));
			return (arg1 * m + arg2 * m) / m;
		},
		/******************************************************
		 * 减
		 * 
		 * ****************************************************/
		floatSub : function(arg1, arg2) {
			var r1, r2, m, n;
			try {
				r1 = arg1.toString().split(".")[1].length
			} catch (e) {
				r1 = 0
			}
			try {
				r2 = arg2.toString().split(".")[1].length
			} catch (e) {
				r2 = 0
			}
			m = Math.pow(10, Math.max(r1, r2));
			// 动态控制精度长度
			n = (r1 >= r2) ? r1 : r2;
			return ((arg1 * m - arg2 * m) / m).toFixed(n);
		},
		/******************************************************
		 * 
		 * 乘
		 * ****************************************************/
		floatMul : function(arg1, arg2) {
			var m = 0, s1 = arg1.toString(), s2 = arg2.toString();
			try {
				m += s1.split(".")[1].length
			} catch (e) {
			}
			try {
				m += s2.split(".")[1].length
			} catch (e) {
			}
			return Number(s1.replace(".", "")) * Number(s2.replace(".", ""))
					/ Math.pow(10, m);
		},
		/******************************************************
		 * 
		 * 除
		 * 
		 * ****************************************************/
		floatDiv : function(arg1, arg2) {
			var t1 = 0, t2 = 0, r1, r2;
			try {
				t1 = arg1.toString().split(".")[1].length
			} catch (e) {
			
			}
			try {
				t2 = arg2.toString().split(".")[1].length
			} catch (e) {
			}

			r1 = Number(arg1.toString().replace(".", ""));

			r2 = Number(arg2.toString().replace(".", ""));
			return (r1 / r2) * Math.pow(10, t2 - t1);
		}
	}

})();

jQuery(function() {
	Calculate.init();
});
