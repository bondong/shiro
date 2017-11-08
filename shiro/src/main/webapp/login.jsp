<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
		<form id="_form" action="" method="post">
            <input type="text" name="account" class="username" placeholder="Account">
            <input type="password" name="password" class="password" placeholder="Password">
            <div style="text-align: left; margin-left: 10px;">
            <label><input type="checkbox" checked="checked"  id="rememberMe"style="width: 10px; height: 10px;">记住我</label>
            </div>
            <button type="button" id="login">登录</button>
        </form>

 		<script  src="js/common/jquery/jquery1.8.3.min.js"></script>
        <script  src="js/common/MD5.js"></script>
       <!--  <script  src="js/common/supersized.3.2.7.min.js"></script>
        <script  src="js/common/supersized-init.js"></script>
		<script  src="js/common/layer/layer.js"></script> -->
        <script >
        	console.log("${basePath}");
			jQuery(document).ready(function() {
				//登录操作
			    $('#login').click(function(){
			    	
			        var username = $('.username').val();
			        var password = $('.password').val();
			        var pswd = MD5(username +"#" + password),
			        	data = {pswd:pswd,email:username,rememberMe:$("#rememberMe").is(':checked')};
			        //var load = layer.load();
			        console.log(data);
			        $.ajax({
			        	url:"u/submitLogin.do",
			        	data:data,
			        	type:"post",
			        	dataType:"json",
			        	beforeSend:function(){
			        		alert("before send");
			        		//layer.msg('开始登录，请注意后台控制台。');
			        	},
			        	success:function(result){
				        	//layer.close(load);
				    		if(result && result.status != 200){
				    			
				    			//layer.msg(result.message,function(){});
				    			$('.password').val('');
				    			alert(1);
				    			return;
				    		}else{
				    			//layer.msg('登录成功！');
				    			alert(2);
				    			setTimeout(function(){
					    			window.location.href= result.back_url || "${basePath}/";
				    			},1000)
				    		}
			        	},
			        	error:function(e){
			        		alert(3);
			        		console.log(e,e.message);
			        		//layer.msg('请看后台Java控制台，是否报错，确定已经配置数据库和Redis',new Function());
			        	}
			        });
			    });
			});
        </script>

</body>
</html>