package com.Entity;

public class Employee {
    
    private int id;
    private String ename;
    private int ephone;

    public Employee(int id, String ename, int ephone) {
        this.id = id;
        this.ename = ename;
        this.ephone = ephone;
    }
    
    public Employee(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public int getEphone() {
        return ephone;
    }

    public void setEphone(int ephone) {
        this.ephone = ephone;
    }

    @Override
    public String toString() {
        return "Employee{" + "id=" + id + ", ename=" + ename + ", ephone=" + ephone + '}';
    }
    
}
