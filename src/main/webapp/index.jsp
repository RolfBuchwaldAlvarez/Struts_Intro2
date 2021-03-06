<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Since we use S2 tags, we need the Struts tag library declaration --%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- MVC-Architecture: "View"-page !!! --%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Basic Struts 2 Application - Welcome</title>
        <s:head/>
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

        <%-- We use the Struts 2 url tag to create a link to action registerInput. We then use that link as the
             value for the href attribute of the anchor tag. --%>
        <s:url action="registerInput" var="registerInputLink" />
        <p>
            <s:a href="%{registerInputLink}">Please register</s:a> for our prize drawing.
        </p>

        <h3>Registro español</h3>
        <s:url action="registerInput" var="registerInputLinkES">
            <s:param name="request_locale">es</s:param>
        </s:url>
        <p><s:a href="%{registerInputLinkES}">Por favor, regístrese</s:a> para nuestro sorteo</p>

        <hr />
        <s:text name="contact" /><br/>

        <!-- Using the configuration browser plugin and the debugging interceptor. These tools should only be used
             in development! Prior to creating the war file for deployment to production, devMode should be changed
             to "false" and the debugging links should be removed. Also the level of logging might then be adjusted
             to a higher level ("info" or "warn") to reduce the number of log messages. -->
        <h3>Debugging</h3>

        <p><a href="<s:url action="index" namespace="config-browser" />">Launch the configuration browser</a></p>
        <s:url action="index" var="indexLink">
            <s:param name="debug">browser</s:param>
        </s:url>
        <p><a href="${indexLink}">Reload this page with debugging</a></p>

        <s:debug/>
    </body>
</html>
