<?xml version="1.0" encoding="UTF-8" ?>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Register</title>
        <s:head />
    </head>
    <body>
        <h3>Register for a prize by completing this form.</h3>

        <%-- To collect all the information from Person class --%>
        <%-- We need to tie each form field to a specific instance field of an object of type Person --%>
        <s:form action="register">
            <%-- personBean = Object of type Person --%>
            <%-- personBean object has to be specified in Action class that handles this form submission --%>
            <%-- .firstname, etc are references to the personBean object's attributes set()-methods and sets
                 the entered value to the instance field --%>
            <s:textfield key="personBean.firstName" />
            <s:textfield key="personBean.lastName" />
            <s:textfield key="personBean.email" />
            <%-- age attribute is of type integer. All form field input values are Strings. S2 automatically
                 converts the String value to int when calling setAge() of personBean --%>
            <s:textfield key="personBean.age" />
            <s:submit/>
        </s:form>
    </body>
</html>
