package com.finalproject.model;
import javax.persistence.*;

@Entity
@Table(name = "employees")
public class Employee {
    @Id
    @Column (name = "emp_id")
    public String empId;
    @Column (name = "emp_fname")
    public String empFname;
    @Column (name = "emp_lname")
    public String empLname;

    public Employee() {}

    public Employee(String empId, String empFname, String empLname)
    {
        this.empId = empId;
        this.empFname = empFname;
        this.empLname = empLname;
    }

    public String getEmpId()
    {
        return empId;
    }

    public void setEmpId(String empId)
    {
        this.empId = empId;
    }

    public String getEmpFname()
    {
        return empFname;
    }

    public void setEmpFname(String empFname)
    {
        this.empFname = empFname;
    }

    public String getEmpLname()
    {
        return empLname;
    }

    public void setEmpLname(String empLname)
    {
        this.empLname = empLname;
    }
}
