<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
<h3>欢迎你 ${user.username }</h3>
<shiro:hasRole name="888888">
	<h3>拥有权限</h3>
</shiro:hasRole>
<shiro:lacksRole name="100002">  
	用户[<shiro:principal/>]没有权限<br/>  
</shiro:lacksRole> 
</body>
</html>