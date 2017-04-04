package com.Entity;

public class Roof {
    
    private String rname;
    private int qty;

    public Roof(String rname, int qty) {
        this.rname = rname;
        this.qty = qty;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    @Override
    public String toString() {
        return "Roof{" + "rname=" + rname + ", qty=" + qty + '}';
    }
    
}
