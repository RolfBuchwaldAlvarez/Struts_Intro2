<!DOCTYPE html>

<%-- VIEW (MVC)--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%-- Since we use S2 tags, we need the Struts tag library declaration --%>
<%-- taglib tells Servlet container that this page will be using Struts 2 tags preceded by an "s" --%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello World!</title>
    </head>
    <body>
        <%-- <s: ... /> = Struts 2 tag --%>
        <%-- <s:property> tag displays the value returned by calling the method
             getMessageStore of HelloWorldAction. That method returns a MessageStore object. By adding
             the .message onto the messageStore part of the value attribute we are telling the Struts 2
             framework to call the getMessage method of that MessageStore object. The getMessage-method
             of class MessageStore returns a String. It is that String that will be displayed by the
             <s:property> tag --%>
        <%-- Most common use of the property-tag is to "get" the value returned by calling a public get method
             (of the Action class) and then to include that value in the HTML returned to the browser. Useful
             S2 property-tag automatically converts the most common data types (int, double, boolean) to their
             String equivalents. --%>
        <%-- If the value returned by the get-method is an object, the property tag will cause S2 to call the
             object's toString-method. --%>
        <h1><s:text name="greeting" /></h1>
        <h2><s:property value="messageStore.message" /></h2>

        <%-- Even though getHelloCount() returns an integer type, S2 converted it to type String and placed it
             into the body of the p tag --%>
        <p>I've said hello <s:property value="helloCount" /> times!</p>

        <%-- Since getMessageStore of HelloWorldAction class returns a MessageStore object, S2 will call
             toString() of class MessageStore. The string returned by toString() will be displayed in the browser --%>
        <p><s:property value="messageStore" /></p>
    </body>
</html>
