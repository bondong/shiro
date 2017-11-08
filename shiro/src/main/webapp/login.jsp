<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
			<div class="error"><span>+</span></div>
        </form>

 		<script  src="${basePath}/js/common/jquery/jquery1.8.3.min.js"></script>
        <script  src="${basePath}/js/common/MD5.js"></script>
        <script  src="${basePath}/js/common/supersized.3.2.7.min.js"></script>
        <script  src="${basePath}/js/common/supersized-init.js"></script>
		<script  src="${basePath}/js/common/layer/layer.js"></script>
        <script >
			jQuery(document).ready(function() {
				//登录操作
			    $('#login').click(function(){
			    	
			        var username = $('.username').val();
			        var password = $('.password').val();
			        var pswd = MD5(username +"#" + password),
			        	data = {pswd:pswd,email:username,rememberMe:$("#rememberMe").is(':checked')};
			        var load = layer.load();
			        
			        $.ajax({
			        	url:"${basePath}/u/submitLogin",
			        	data:data,
			        	type:"post",
			        	dataType:"json",
			        	beforeSend:function(){
			        		layer.msg('开始登录，请注意后台控制台。');
			        	},
			        	success:function(result){
				        	layer.close(load);
				    		if(result && result.status != 200){
				    			
				    			layer.msg(result.message,function(){});
				    			$('.password').val('');
				    			return;
				    		}else{
				    			layer.msg('登录成功！');
				    			setTimeout(function(){
					    			window.location.href= result.back_url || "${basePath}/";
				    			},1000)
				    		}
			        	},
			        	error:function(e){
			        		console.log(e,e.message);
			        		layer.msg('请看后台Java控制台，是否报错，确定已经配置数据库和Redis',new Function());
			        	}
			        });
			    });
			});
        </script>

</body>
</html>