package com.Entity;

public class Product {

    int id;
    String name;
    double measure;
    double price;

    public Product(int id, String name, double measure, double price) {
        this.id = id;
        this.name = name;
        this.measure = measure;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getMeasure() {
        return measure;
    }

    public void setMeasure(double measure) {
        this.measure = measure;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", measure=" + measure + ", price=" + price + '}';
    }
    
}
