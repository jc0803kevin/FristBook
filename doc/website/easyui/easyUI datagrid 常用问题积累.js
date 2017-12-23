

1.easyui 中 datagrid 排序问题
	当我们设置按照某列排序时，datagrid添加属性：sortName：排序的列，sortOder：'ASC'或'DESC',remoteSort：false,
其中remoteSort属性，默认为true，如果对本地数据排序必须设置为false
 
实现点击列表头可以排序还要再列的属性中添加 列的sortable属性
 
以下默认按照'gridName'升序排列
sortOrder: 'asc',
   sortName: 'gridName',
   remoteSort:false,
	columns:[[
                    
            {field:'villageName',title:'村居名称',width:100,align:'center',sortable:'true'},
            {field:'gridName',title:'网格名称',width:100,align:'center',sortable:'true'}]]