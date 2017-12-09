(function($) {
	window.hello = $.fn.hello = {
		getUsers:function(){
			//表头对象
			$('#dg').datagrid({  
				url: basePath + "user/getUsers?" + new Date().getTime(),
				queryParams:{},
			    title:'用户信息', 
			    columns:[[
					{field:'userId', title: "用户ID", width: 180, halign:"center", align:"center", "sortable": false},
					{field:'realname', title: "用户名称", width: 180, halign:"center", align:"center", "sortable": false},
					{field:'createTime', title: "创建日期", width: 180, halign:"center", align:"center", "sortable": false ,formatter: function (val, rec) {
							return util.formatDate(val, "yyyy-MM-dd HH:mm:ss");
					}}
			    ]],
			    iconCls:'icon-search',  
			    pagination:true  
			});  		
		}
	}
})(jQuery);

$(document).ready(function($){
	hello.getUsers();
});