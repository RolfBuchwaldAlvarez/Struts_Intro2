<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- taglib directive --%>
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
        <%-- Separated out the <s:url>-tag into its own code bloc --%>
        <%-- Notice the var attribute! Value of var is a reference that can be used later in the code
             to refer to the url created! --%>
        <s:url action="hello" var="helloLink">
            <%-- Nested Struts 2 param tag --%>
            <%-- This tag lets you specify a parameter name (e.g. userName) and a value for that
                 parameter (e.g. Bruce Phillips) --%>
            <s:param name="userName">Bruce Phillips</s:param>
        </s:url>

        <%-- The View page will substitute the hyperlink that is created using the url tag for the ${helloLink}
             reference. The query string parameter will be properly URL-endcoded (Bruce+Phillips) --%>
        <p><a href="${helloLink}">Hello Bruce Phillips</a></p>

        <p>Get your own personal hello by filling out and submitting this form.</p>

        <s:form action="hello">
            <s:textfield name="userName" label="Your name" />
            <s:submit value="Submit" />
        </s:form>
    </body>
</html>
