package javadistribute.finalproject.nguyen_kim_shop.models;
// Generated Apr 28, 2011 10:43:13 AM by Hibernate Tools 3.2.1.GA



/**
 * Orderdetails generated by hbm2java
 */
public class Orderdetails  implements java.io.Serializable {


     private Integer orderDetailId;
     private Products products;
     private Orders orders;
     private Integer number;

    public Orderdetails() {
    }

    public Orderdetails(Products products, Orders orders, Integer number) {
       this.products = products;
       this.orders = orders;
       this.number = number;
    }
   
    public Integer getOrderDetailId() {
        return this.orderDetailId;
    }
    
    public void setOrderDetailId(Integer orderDetailId) {
        this.orderDetailId = orderDetailId;
    }
    public Products getProducts() {
        return this.products;
    }
    
    public void setProducts(Products products) {
        this.products = products;
    }
    public Orders getOrders() {
        return this.orders;
    }
    
    public void setOrders(Orders orders) {
        this.orders = orders;
    }
    public Integer getNumber() {
        return this.number;
    }
    
    public void setNumber(Integer number) {
        this.number = number;
    }




}

