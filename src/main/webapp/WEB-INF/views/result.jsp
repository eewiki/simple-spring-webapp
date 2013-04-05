<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form Result Page</title>
<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/sample.css"/>' />

</head>
<body>
    <h1>Results Page</h1>
    <p>This is the form response page. If you are seeing this then the form validated properly.</p>

    <p>
        Here is the status sent pulled from the model: <span style="color: red;">${status}</span>
    <p>
        <c:url var="form" value="/form" />
        Go back to the <a href="${form}">form</a> if you'd like to try it again.
    </p>
    <hr />
    <a href='<c:url value="/index"/>'>Home</a>
</body>
</html>