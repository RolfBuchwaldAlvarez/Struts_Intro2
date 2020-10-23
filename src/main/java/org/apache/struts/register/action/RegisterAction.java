package org.apache.struts.register.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts.register.model.Person;

public class Register extends ActionSupport {
    /* By using a Java model class to encapsulate the data provided by the form, separate attributes (with
       get/set methods) for each form field are unnecessary. */
    private static final long serialVersionUID = 1L;
    private Person personBean;

    // Specified in struts.xml to be called in response to the register action
    /* In a real application, within execute() we would call upon other classes (Service objects) to
       perform business processing of the form, such as storing user's input into a data repository. */
    @Override
    public String execute() throws Exception {
        //call Service class to store personBean's state in database

        return SUCCESS;
    }

    public Person getPersonBean() {
        return personBean;
    }

    public void setPersonBean(Person person) {
        this.personBean = person;
    }
}
