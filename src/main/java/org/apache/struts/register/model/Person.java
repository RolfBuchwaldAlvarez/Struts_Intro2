package org.apache.struts.register.model;

public class Person {
    private String firstName;
    private String lastName;
    private String email;
    private int age;

    /* Since no constructor has been specified, Java will provide a default constructor that will set all instance
       fields to their null values! */

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    // Returns a String representing the state of the object.
    @Override
    public String toString() {
        return "First Name: " + getFirstName() + ", Last Name: " + getLastName() +
            ", Email: " + getEmail() + ", Age: " + getAge();
    }
}
