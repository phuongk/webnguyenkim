package javadistribute.finalproject.nguyen_kim_shop.models;
// Generated Apr 28, 2011 10:43:13 AM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Catelogies generated by hbm2java
 */
public class Catelogies  implements java.io.Serializable {


     private Integer catelogyId;
     private Catelogies catelogies;
     private String catelogyName;
     private String catelogyImage;
     private String catelogyDescription;
     private Set<Products> productses = new HashSet<Products>(0);
     private Set<Catelogies> catelogieses = new HashSet<Catelogies>(0);

    public Catelogies() {
    }

    public Catelogies(Catelogies catelogies, String catelogyName, String catelogyImage, String catelogyDescription, Set<Products> productses, Set<Catelogies> catelogieses) {
       this.catelogies = catelogies;
       this.catelogyName = catelogyName;
       this.catelogyImage = catelogyImage;
       this.catelogyDescription = catelogyDescription;
       this.productses = productses;
       this.catelogieses = catelogieses;
    }
   
    public Integer getCatelogyId() {
        return this.catelogyId;
    }
    
    public void setCatelogyId(Integer catelogyId) {
        this.catelogyId = catelogyId;
    }
    public Catelogies getCatelogies() {
        return this.catelogies;
    }
    
    public void setCatelogies(Catelogies catelogies) {
        this.catelogies = catelogies;
    }
    public String getCatelogyName() {
        return this.catelogyName;
    }
    
    public void setCatelogyName(String catelogyName) {
        this.catelogyName = catelogyName;
    }
    public String getCatelogyImage() {
        return this.catelogyImage;
    }
    
    public void setCatelogyImage(String catelogyImage) {
        this.catelogyImage = catelogyImage;
    }
    public String getCatelogyDescription() {
        return this.catelogyDescription;
    }
    
    public void setCatelogyDescription(String catelogyDescription) {
        this.catelogyDescription = catelogyDescription;
    }
    public Set<Products> getProductses() {
        return this.productses;
    }
    
    public void setProductses(Set<Products> productses) {
        this.productses = productses;
    }
    public Set<Catelogies> getCatelogieses() {
        return this.catelogieses;
    }
    
    public void setCatelogieses(Set<Catelogies> catelogieses) {
        this.catelogieses = catelogieses;
    }




}


