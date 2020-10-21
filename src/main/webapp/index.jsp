<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- taglib directive
<%@ taglib prefix="s" uri="/struts-tags" %>

<%-- MVC-Architecture: "View"-page !!! --%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Basic Struts 2 Application - Welcome</title>
    </head>
    <body>
        <h1>Welcome To Struts 2!</h1>
        <%-- The Struts url tag <s:url ...> creates the URL with an action of hello. The hello action
             was mapped to the HelloWorldAction class and its execute method. When user clicks on URL
             it will cause the S2F to run the execute method of the HelloWorldAction class. After that
             method returns the String success (constant SUCCESS), the View page HelloWorld.jsp will be
             rendered. --%>
        <p><a href="<s:url action='hello' />">Hello World</a></p>
    </body>
</html>
