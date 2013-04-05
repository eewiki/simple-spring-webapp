<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Greeting Request Page</title>
<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/sample.css"/>' />
</head>
<body>
    <h1>Greeting Page</h1>
    This is the greeting that was created by the controller (pulled from the model):
    <span style="color: red;">${greeting}</span>
    <hr />
    <a href='<c:url value="/index"/>'>Home</a>
</body>
</html>