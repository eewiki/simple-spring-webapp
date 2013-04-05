<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Example Form with Validation</title>
<link rel="stylesheet" type="text/css" media="screen" href='<c:url value="/resources/css/sample.css"/>' />
</head>
<body>
    <h1>Form Page</h1>
    <p>Here we demonstrate the process of filling out a form and submitting it to web application to be processed.</p>

    <h2>Please provide some example user information</h2>
    <form:form commandName="user">
        <table>
            <tr>
                <td>First Name:</td>
                <td><form:input path="firstName" /></td>
                <td><form:errors cssClass="error" path="firstName" /></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><form:input path="lastName" /></td>
                <td><form:errors cssClass="error" path="lastName" /></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save Changes" /></td>
            </tr>
        </table>
    </form:form>
    <hr />
    <a href='<c:url value="/index"/>'>Home</a>

</body>
</html>