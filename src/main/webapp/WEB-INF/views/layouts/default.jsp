<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fns" uri="/WEB-INF/tlds/fns.tld" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><sitemesh:write property='title'/></title>
    <%@include file="/WEB-INF/views/include/head.jsp" %>
    <sitemesh:write property='head'/>
</head>
<body>
<%@ include file="/WEB-INF/views/include/top.jsp" %>
<div id="main_fill" class="main">
    <sitemesh:write property='body'/>
</div>
<%@ include file="/WEB-INF/views/include/bottom.jsp" %>
</body>
</html>
