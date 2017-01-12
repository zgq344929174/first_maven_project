<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.List,com.luo.domain.User"
	pageEncoding="UTF-8"%>
<html>
<link rel="stylesheet" type="text/css" href="/js/themes/default/easyui.css">
<script type="text/javascript" src= "/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/datagrid-detailview.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function(){
	var users=${users};
	 $('#tt').datagrid({
		title:'用户列表',
		width:500,
		height:250,
		remoteSort:false,
		nowrap:false,
		fitColumns:true,
		selectOnCheck:true,
		rownumbers:true,
		data:users,
		columns:[[
			{field:'userId',title:'userId',width:80,checkbox:true} ,     
			//{field:'userId',title:'userId',width:80},
			{field:'userName',title:'userName',width:100,sortable:true},
			{field:'userPassword',title:'userPassword',width:80,align:'right',sortable:true}
		]]
		//view: detailview 
		 /* detailFormatter: function(rowIndex, rowData){
			return '<table><tr>' +
					'<td rowspan=2 style="border:0"><img src="images/' + rowData.itemid + '.png" style="height:50px;"></td>' +
					'<td style="border:0">' +
					'<p>Attribute: ' + rowData.attr1 + '</p>' +
					'<p>Status: ' + rowData.status + '</p>' +
					'</td>' +
					'</tr></table>';
		} */
		});
	
});

</script>
<body>
	<h2>Hello World!</h2>
	<div></div>
	<table id="tt"></table>
</body>


<!-- <script type="text/javascript">
	var users= ${users};
	$("p").html(users);
	var data = "";
	for(var i in users){//遍历json数组时，这么写i为索引，0,1
		//$("p").html(users[i].userName + " " + users[i].userPassword);
		  // alert(users[i].userName + " " + users[i].userPassword);
		data = data+"<p>"+users[i].userName + " " + users[i].userPassword+"</p>";
	}
	//$("div").append(data);
	
</script> -->
</html>