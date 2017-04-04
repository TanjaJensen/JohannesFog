package com.Entity;

public class Orders {
    
    private int ono;
    private int eid;
    private int cid;
    private String wname;
    private String sname;
    private String rname;

    public Orders(int ono, int eid, int cid, String wname, String sname, String rname) {
        this.ono = ono;
        this.eid = eid;
        this.cid = cid;
        this.wname = wname;
        this.sname = sname;
        this.rname = rname;
    }

    public Orders() {
        
    }

    public int getOno() {
        return ono;
    }

    public void setOno(int ono) {
        this.ono = ono;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    @Override
    public String toString() {
        return "Orders{" + "ono=" + ono + ", eid=" + eid + ", cid=" + cid + ", wname=" + wname + ", sname=" + sname + ", rname=" + rname + '}';
    }
    
}
