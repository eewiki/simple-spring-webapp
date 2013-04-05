<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index Page</title>
    <!-- using c:url will properly reference urls that are local to your webapp -->
    <c:url var="samplecss" value="/resources/css/sample.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="${samplecss}"/>
</head>
<body>
    <h2 class="bigletters">Styled Index Page</h2>
    
    <c:url var="link" value="/default-greeting"/>
    A <a href="${link}">page</a> that is using its own custom controller to give you content.
    <br/>
    <c:url var="form" value="/form"/>
    An <a href="${form}">example</a> form that is validated.
    <hr/>
    
    <!-- A bunch of pretty text just to fill the page. -->
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis massa id urna congue bibendum ac eu dolor.
      Mauris venenatis augue sed nisl suscipit at ullamcorper libero rhoncus. Ut vulputate ligula ac tellus interdum
      ullamcorper. Integer nec nisl sed neque dictum pharetra. Morbi quam nisl, viverra ut pulvinar vitae, dictum vitae
      ante. Fusce sed orci ante, sed vestibulum neque. Quisque non gravida lectus. Cras interdum, metus at vehicula
      dapibus, lectus sapien dictum orci, at tincidunt arcu velit quis lacus. Nulla laoreet neque sed quam mollis
      elementum. Nunc venenatis eros eget sapien mollis fringilla.
    </p>
</body>
</html>