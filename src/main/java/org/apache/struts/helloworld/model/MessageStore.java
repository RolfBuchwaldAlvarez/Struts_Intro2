package org.apache.struts.helloworld.model;

// MODEL class (MVC)

// A model class to store the message
/* The Struts 2 framework requires that objects exposed to the view (HelloWorld.jsp)
    follow the JavaBean-style conventions. */

public class MessageStore {
    private final String message;

    public MessageStore() {
        message = "Hello Struts User";
    }

    public String getMessage() {
        return message;
    }

    public String toString() {
        return message + " (from toString)";
    }
}
