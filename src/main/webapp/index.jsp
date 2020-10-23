<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Since we use S2 tags, we need the Struts tag library declaration --%>
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
        <p>
            <a href="<s:url action='hello' />">Hello World</a>
        </p>
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
        <p>
            <a href="${helloLink}">Hello Bruce Phillips</a>
        </p>

        <p>Get your own personal hello by filling out and submitting this form.</p>

        <%-- Struts 2 form-, textfield-, and submit-tags will be converted into HTML. S2 creates an HTML table
             inside the form to position the form elements. The S2 textfield tag creates an HTML input tag of type
             text with a name value that matches the name value of the textfield tag. S2 also creates a label HTML
             tag based on the label value of the textfield tag. --%>
        <%-- When user clicks on the submit button for this form-tag, "hello.action" will be executed. The form field
             values will be posted to the S2 Action class (HelloWorldAction). The Action class automatically receives
             those form field values provided it has a public set method that matches the form field name value. --%>
        <s:form action="hello">
            <s:textfield name="userName" label="Your name" />
            <s:submit value="Submit" />
        </s:form>
    </body>
</html>
