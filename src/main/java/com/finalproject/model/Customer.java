package com.finalproject.model;
import javax.persistence.*;

@Entity
@Table(name = "customers")
public class Customer {
    @Id
    @Column (name = "cus_id")
    public String cusId;
    @Column (name = "cus_fname")
    public String cusFname;
    @Column (name = "cus_lname")
    public String cusLname;

    public Customer() {}

    public Customer(String cusId, String cusFname, String cusLname)
    {
        this.cusId = cusId;
        this.cusFname = cusFname;
        this.cusLname = cusLname;
    }

    public String getCusId()
    {
        return cusId;
    }

    public void setCusId(String cusId)
    {
        this.cusId = cusId;
    }

    public String getCusFname()
    {
        return cusFname;
    }

    public void setCusFname(String cusFname)
    {
        this.cusFname = cusFname;
    }

    public String getCusLname()
    {
        return cusLname;
    }

    public void setCusLname(String cusLname)
    {
        this.cusLname = cusLname;
    }
}
