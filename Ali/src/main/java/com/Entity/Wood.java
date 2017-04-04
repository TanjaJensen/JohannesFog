package com.Entity;

public class Wood {
  
    private String wname;
    private int width;
    private int length;
    private int qty;

    public Wood(String wname, int width, int length, int qty) {
        this.wname = wname;
        this.width = width;
        this.length = length;
        this.qty = qty;
    }

    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    @Override
    public String toString() {
        return "Wood{" + "wname=" + wname + ", width=" + width + ", length=" + length + ", qty=" + qty + '}';
    }
    
}
