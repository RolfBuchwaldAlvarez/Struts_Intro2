# Struts2 Logic Structure - Hello World Example

## How the Code Works
1. Your browser sends to the web server a request for the URL http://localhost:8080/helloworld/hello.action. 
    The container receives from the web server a request for the resource hello.action. According to the settings 
    loaded from the web.xml, the container finds that all requests are being routed to 
    org.apache.struts2.dispatcher.filter.StrutsPrepareAndExecuteFilter, including the *.action requests. The 
    StrutsPrepareAndExecuteFilter is the entry point into the framework.

1. The framework looks for an action mapping named “hello”, and it finds that this mapping corresponds to the class 
    HelloWorldAction. The framework instantiates the Action and calls the Action’s execute method.

1. The execute method creates the MessageStore object and returns SUCCESS (="success"). The framework checks the 
    action mapping to see what page to load if SUCCESS is returned. The framework tells the container to render as 
    the response to the request, the resource HelloWorld.jsp.

1. As the page HelloWorld.jsp is being processed, the <s:property value="messageStore.message" /> tag calls the 
    getter getMessageStore of the HelloWorld Action and then calls the getMessage of the MessageStore object returned 
    by getMessageStore. The tag merges the value of the message attribute into the response.

1. A pure HTML response is sent back to the browser.

## What to Remember
The framework uses Actions to process HTML forms and other requests. The Action class returns a result-name such as SUCCESS, ERROR or INPUT. Based on the mappings loaded from the struts.xml, a given result-name may select a page (as in this example), another action, or some other web resource (image, PDF).

When a server page is rendered, most often it will include dynamic data provided by the Action. To make it easy to display dynamic data, the framework provides a set of tags that can be used along with HTML markup to create a server page.
