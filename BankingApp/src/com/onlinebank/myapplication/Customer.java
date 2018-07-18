package com.onlinebank.myapplication;

public class Customer {
private String name;
private String email;
private String password;
private String contact;
private String city;
private String address;
private String accounttype;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
private void setaccounttype()
{
	this.accounttype=accounttype;
}
public String getaccounttype()
{
	return accounttype;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public Customer(String name, String email, String password, String contact, String city, String address, String accounttype) {
	//super();
	this.name = name;
	this.email = email;
	this.password = password;
	this.contact = contact;
	this.city = city;
	this.address = address;
	this.accounttype=accounttype;
}
	

}
