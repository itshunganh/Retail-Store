package com.finalproject.model;
import javax.persistence.*;

@Entity
@Table(name = "transactions")

public class Transaction {
    @Id
    @Column (name = "trans_id")
    public String transId;
    @Column (name = "cus_id")
    public String cusId;
    @Column (name = "emp_id")
    public String empId;
    @Column (name = "inv_id")
    public String invId;
    @Column (name = "trans_receipt")
    public String transReceipt;

    public Transaction() {}

    public Transaction(String transId, String cusId, String empId, String invId, String transReceipt) {
        this.transId = transId;
        this.cusId = cusId;
        this.empId = empId;
        this.invId = invId;
        this.transReceipt = transReceipt;
    }

    public String getTransId()
    {
        return transId;
    }

    public void setTransId(String transId)
    {
        this.transId = transId;
    }

    public String getCusId()
    {
        return cusId;
    }

    public void setCusId(String cusId)
    {
        this.cusId = cusId;
    }

    public String getEmpId()
    {
        return empId;
    }

    public void setEmpId(String empId)
    {
        this.empId = empId;
    }

    public String getInvId()
    {
        return invId;
    }

    public void setInvId(String invId)
    {
        this.invId = invId;
    }

    public String getTransReceipt()
    {
        return transReceipt;
    }

    public void setTransReceipt(String transReceipt)
    {
        this.transReceipt = transReceipt;
    }

}

