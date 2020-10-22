package org.apache.struts.helloworld.action;

// CONTROLLER Class (MVC)

// Imports the MessageStore class (MVC MODEL)
import org.apache.struts.helloworld.model.MessageStore;

/* S2 Action classes usually extend the ActionSupport class! Class ActionSupport provides default
   implementations for the most common actions (e.g. execute, input) and also implements several useful
   S2 interfaces. If Action class extends class ActionSupport, it can either override or inherit the
   default implementations. */
import com.opensymphony.xwork2.ActionSupport;


/* An Action class is needed to act as the Controller. It responds to a user action (in this example
   that action will be clicking an HTML hyperlink and sending a specific URL to the Servlet container).
   One or more of the Action class's methods are executed and a String result is returned. Based on the
   value of the result, a specific view page (here: HelloWorld.jsp) is rendered. */

public class HelloWorldAction extends ActionSupport{

    // Dependency Injection ?!? -> Spring: public final MessageStore messageStore;
    private MessageStore messageStore;

    private static int helloCount = 0;

    // Creates an object of class MessageStore and then returns the String constant SUCCESS
    // Overrides the execute-method of ActionSupport class
    public String execute() {
        helloCount++;
        messageStore = new MessageStore(); // No Type, since messageStore has already been created (see line 19)
        return SUCCESS;
    }

    public MessageStore getMessageStore() {
        return messageStore;
    }

    // Not static !! For S2 to call getHelloCount(), this method cannot be static!
    public int getHelloCount() {
        return helloCount;
    }
}

/* The Struts 2 framework will create an object of the HelloWorldAction class and call the execute
   method in response to a user’s action (clicking on a hyperlink that sends a specific URL to the Servlet
   container). In this example, the execute method creates an object of class MessageStore and then returns
   the String constant SUCCESS. In order to make the MessageStore object available to the view page, HelloWorld.jsp,
   the JavaBean-style of providing getter and setter methods is needed. */
