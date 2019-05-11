<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: FJ
  Date: 2019/5/11
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        pageContext.setAttribute("name","pageContext");
        request.setAttribute("name","request");
        session.setAttribute("name","session");
        application.setAttribute("name","application");
    %>

    ${pageScope.name}
    ${requestScope.name}
    ${sessionScope.name}
    ${applicationScope.name}

    <h1>----------------------</h1>
    ${pageContext.request.contextPath}

    ${empty name}
    <h1>----------------------</h1>
    <c:if test="${1>1}">123</c:if>

<c:forEach var="i" begin="0" end="5">
    ${i}${pageScope.i}<br/>
</c:forEach>
    <h1>----------------------</h1>

<%

    List<String> list = new ArrayList<>();
    list.add("a");
    list.add("b");
    list.add("c");
    request.setAttribute("list",list);
%>

<c:forEach items="${list}" var="l">
    ${l}<br/>
</c:forEach>

    <h1>----------------------</h1>

    <%
        Map<String,String> map = new HashMap<>();
        map.put("name","123");
        map.put("age","12");
        session.setAttribute("map",map);
    %>

    <c:forEach items="${map}" var="entry">
        ${entry.key},${entry.value}<br/>
    </c:forEach>


</body>
</html>
