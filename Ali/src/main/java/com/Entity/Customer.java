package com.Entity;

public class Customer {
    
    private int id;
    private String fname;
    private String lname;
    private String adress;
    private int cphone;
    private String mail;

    public Customer(int id, String fname, String lname, String adress, int cphone, String mail) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.adress = adress;
        this.cphone = cphone;
        this.mail = mail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public int getCphone() {
        return cphone;
    }

    public void setCphone(int cphone) {
        this.cphone = cphone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @Override
    public String toString() {
        return "Customer{" + "id=" + id + ", fname=" + fname + ", lname=" + lname + ", adress=" + adress + ", cphone=" + cphone + ", mail=" + mail + '}';
    }
    
    
}
