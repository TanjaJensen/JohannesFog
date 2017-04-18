package com.Entity;

public class Orderline {
    
    int product_id;
    int wood_qty;
    int screw_qty;
    int roof_qty;
    String roof_pitch;
    int bracket;

    public Orderline(int product_id, int wood_qty, int screw_qty, int roof_qty, String roof_pitch, int bracket) {
        this.product_id = product_id;
        this.wood_qty = wood_qty;
        this.screw_qty = screw_qty;
        this.roof_qty = roof_qty;
        this.roof_pitch = roof_pitch;
        this.bracket = bracket;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getWood_qty() {
        return wood_qty;
    }

    public void setWood_qty(int wood_qty) {
        this.wood_qty = wood_qty;
    }

    public int getScrew_qty() {
        return screw_qty;
    }

    public void setScrew_qty(int screw_qty) {
        this.screw_qty = screw_qty;
    }

    public int getRoof_qty() {
        return roof_qty;
    }

    public void setRoof_qty(int roof_qty) {
        this.roof_qty = roof_qty;
    }

    public String getRoof_pitch() {
        return roof_pitch;
    }

    public void setRoof_pitch(String roof_pitch) {
        this.roof_pitch = roof_pitch;
    }

    public int getBracket() {
        return bracket;
    }

    public void setBracket(int bracket) {
        this.bracket = bracket;
    }

    @Override
    public String toString() {
        return "Orderline{" + "product_id=" + product_id + ", wood_qty=" + wood_qty + ", screw_qty=" + screw_qty + ", roof_qty=" + roof_qty + ", roof_pitch=" + roof_pitch + ", bracket=" + bracket + '}';
    }
    
}
