package com.finalproject.model;
import javax.persistence.*;

@Entity
@Table(name = "inventory")
public class Inventory {
    @Id
    @Column (name = "inv_id")
    public String invId;
    @Column (name = "inv_desc")
    public String invDesc;
    @Column (name = "inv_price")
    public double invPrice;
    @Column(name = "inv_brand")
    public String invBrand;

    public Inventory() {}

    public Inventory(String invId, String invDesc, double invPrice, String invBrand) {
        this.invId = invId;
        this.invDesc = invDesc;
        this.invPrice = invPrice;
        this.invBrand = invBrand;
    }

    public String getInvId()
    {
        return invId;
    }

    public void setInvId(String invId)
    {
        this.invId = invId;
    }

    public String getInvDesc()
    {
        return invDesc;
    }

    public void setInvDesc(String invDesc)
    {
        this.invDesc = invDesc;
    }

    public double getInvPrice()
    {
        return invPrice;
    }

    public void setInvPrice(double invPrice)
    {
        this.invPrice = invPrice;
    }

    public String getInvBrand()
    {
        return invBrand;
    }

    public void setInvBrand(String invBrand)
    {
        this.invBrand = invBrand;
    }
}
