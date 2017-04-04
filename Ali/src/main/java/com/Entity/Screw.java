package com.Entity;

public class Screw {
  
    private String sname;
    private int size;
    private int qty;

    public Screw(String sname, int size, int qty) {
        this.sname = sname;
        this.size = size;
        this.qty = qty;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    @Override
    public String toString() {
        return "Screw{" + "sname=" + sname + ", size=" + size + ", qty=" + qty + '}';
    }
    
}
