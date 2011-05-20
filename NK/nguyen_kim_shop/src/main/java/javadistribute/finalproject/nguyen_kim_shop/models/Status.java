package javadistribute.finalproject.nguyen_kim_shop.models;
// Generated Apr 29, 2011 10:07:06 AM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Status generated by hbm2java
 */
public class Status  implements java.io.Serializable {


     private Integer statusId;
     private String statusName;
     private Set<Orders> orderses = new HashSet<Orders>(0);
     private Set<Orders> orderses_1 = new HashSet<Orders>(0);
     private Set<Products> productses = new HashSet<Products>(0);
     private Set<Products> productses_1 = new HashSet<Products>(0);

    public Status() {
    }

    public Status(String statusName, Set<Orders> orderses, Set<Orders> orderses_1, Set<Products> productses, Set<Products> productses_1) {
       this.statusName = statusName;
       this.orderses = orderses;
       this.orderses_1 = orderses_1;
       this.productses = productses;
       this.productses_1 = productses_1;
    }
   
    public Integer getStatusId() {
        return this.statusId;
    }
    
    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }
    public String getStatusName() {
        return this.statusName;
    }
    
    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }
    public Set<Orders> getOrderses() {
        return this.orderses;
    }
    
    public void setOrderses(Set<Orders> orderses) {
        this.orderses = orderses;
    }
    public Set<Orders> getOrderses_1() {
        return this.orderses_1;
    }
    
    public void setOrderses_1(Set<Orders> orderses_1) {
        this.orderses_1 = orderses_1;
    }
    public Set<Products> getProductses() {
        return this.productses;
    }
    
    public void setProductses(Set<Products> productses) {
        this.productses = productses;
    }
    public Set<Products> getProductses_1() {
        return this.productses_1;
    }
    
    public void setProductses_1(Set<Products> productses_1) {
        this.productses_1 = productses_1;
    }




}

