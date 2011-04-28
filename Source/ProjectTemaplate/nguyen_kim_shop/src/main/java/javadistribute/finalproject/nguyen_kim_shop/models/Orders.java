package javadistribute.finalproject.nguyen_kim_shop.models;
// Generated Apr 28, 2011 10:43:13 AM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Orders generated by hbm2java
 */
public class Orders  implements java.io.Serializable {


     private Integer orderId;
     private Customers customers;
     private Status status;
     private Date orderDate;
     private Set<Orderdetails> orderdetailses = new HashSet<Orderdetails>(0);

    public Orders() {
    }

    public Orders(Customers customers, Status status, Date orderDate, Set<Orderdetails> orderdetailses) {
       this.customers = customers;
       this.status = status;
       this.orderDate = orderDate;
       this.orderdetailses = orderdetailses;
    }
   
    public Integer getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }
    public Customers getCustomers() {
        return this.customers;
    }
    
    public void setCustomers(Customers customers) {
        this.customers = customers;
    }
    public Status getStatus() {
        return this.status;
    }
    
    public void setStatus(Status status) {
        this.status = status;
    }
    public Date getOrderDate() {
        return this.orderDate;
    }
    
    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }
    public Set<Orderdetails> getOrderdetailses() {
        return this.orderdetailses;
    }
    
    public void setOrderdetailses(Set<Orderdetails> orderdetailses) {
        this.orderdetailses = orderdetailses;
    }




}


