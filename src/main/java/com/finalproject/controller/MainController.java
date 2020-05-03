package com.finalproject.controller;
import com.finalproject.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.util.Optional;
import java.util.UUID;

@Controller
public class MainController {

    @Autowired
    CusRepo cusRepo;
    @Autowired
    EmpRepo empRepo;
    @Autowired
    InvRepo invRepo;
    @Autowired
    TransRepo transRepo;

    //<----------------------- INDEX FOR THE MODELS ----------------------->

    @RequestMapping("/cus/cus")
    public ModelAndView cus(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("cus", cusRepo.findAll());
        return mv;
    }
    @RequestMapping("/emp/emp")
    public ModelAndView emp(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("emp", empRepo.findAll());
        return mv;
    }
    @RequestMapping("/inv/inv")
    public ModelAndView inv(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("inv", invRepo.findAll());
        return mv;
    }
    @RequestMapping("/trans/trans")
    public ModelAndView trans(){
        ModelAndView mv = new ModelAndView();
        mv.addObject("trans", transRepo.findAll());
        mv.addObject("cus", cusRepo.findAll());
        mv.addObject("emp", empRepo.findAll());
        mv.addObject("inv", invRepo.findAll());
        return mv;
    }

    //<----------------------- VIEW FOR THE MODELS ----------------------->

    @RequestMapping(value = "/cus/cusview/{cus_id}", method = RequestMethod.GET)
    public ModelAndView cusview(@PathVariable("cus_id") String cusId){
        ModelAndView mv = new ModelAndView("/cus/cusview");
        Optional<Customer> person = cusRepo.findById(cusId);
        Customer personToMap = person.get();
        mv.addObject("selectedCus", personToMap);
        return mv;
    }
    @RequestMapping(value = "/emp/empview/{emp_id}", method = RequestMethod.GET)
    public ModelAndView empview(@PathVariable("emp_id") String empId){
        ModelAndView mv = new ModelAndView("/emp/empview");
        Optional<Employee> person = empRepo.findById(empId);
        Employee personToMap = person.get();
        mv.addObject("selectedEmp", personToMap);
        return mv;
    }
    @RequestMapping(value = "/inv/invview/{inv_id}", method = RequestMethod.GET)
    public ModelAndView invview(@PathVariable("inv_id") String invId){
        ModelAndView mv = new ModelAndView("/inv/invview");
        Optional<Inventory> item = invRepo.findById(invId);
        Inventory itemToMap = item.get();
        mv.addObject("selectedInv", itemToMap);
        return mv;
    }
    @RequestMapping(value = "/trans/transview/{trans_id}", method = RequestMethod.GET)
    public ModelAndView transview(@PathVariable("trans_id") String transId){
        ModelAndView mv = new ModelAndView("/trans/transview");
        Optional<Transaction> item = transRepo.findById(transId);
        Transaction itemToMap = item.get();
        mv.addObject("selectedTrans", itemToMap);
        return mv;
    }

    //<----------------------- EDIT FOR THE MODELS ----------------------->

    @RequestMapping( value = "/cus/cusedit/{cus_id}", method = RequestMethod.GET)
    public ModelAndView cusedit(@PathVariable("cus_id") String cusId){
        ModelAndView mv = new ModelAndView("/cus/cusedit");
        Optional<Customer> person = cusRepo.findById(cusId);
        Customer personToMap = person.get();
        mv.addObject("selectedCus", personToMap);
        return mv;
    }
    @RequestMapping( value = "/emp/empedit/{emp_id}", method = RequestMethod.GET)
    public ModelAndView empedit(@PathVariable("emp_id") String empId){
        ModelAndView mv = new ModelAndView("/emp/empedit");
        Optional<Employee> person = empRepo.findById(empId);
        Employee personToMap = person.get();
        mv.addObject("selectedEmp", personToMap);
        return mv;
    }
    @RequestMapping( value = "/inv/invedit/{inv_id}", method = RequestMethod.GET)
    public ModelAndView invedit(@PathVariable("inv_id") String invId){
        ModelAndView mv = new ModelAndView("/inv/invedit");
        Optional<Inventory> item = invRepo.findById(invId);
        Inventory itemToMap = item.get();
        mv.addObject("selectedInv", itemToMap);
        return mv;
    }
    @RequestMapping( value = "/trans/transedit/{trans_id}", method = RequestMethod.GET)
    public ModelAndView transedit(@PathVariable("trans_id") String transId){
        ModelAndView mv = new ModelAndView("/trans/transedit");
        Optional<Transaction> item = transRepo.findById(transId);
        Transaction itemToMap = item.get();
        mv.addObject("selectedTrans", itemToMap);
        return mv;
    }

    //<----------------------- SAVE FOR THE MODELS ----------------------->

    @RequestMapping(value = "/cus/cussave/{cus_id}", method = RequestMethod.POST)
    public ModelAndView cussave(@RequestParam("cus_id") String cusId, @RequestParam("cus_fname") String cusFname, @RequestParam("cus_lname") String cusLname){
        ModelAndView mv = new ModelAndView("redirect:/cus/cus");
        Customer personToSave ;
        if(!cusId.isEmpty())
        {
            Optional<Customer> users = cusRepo.findById(cusId);
            personToSave = users.get();
        }
        else
        {
            personToSave = new Customer();
            personToSave.setCusId(UUID.randomUUID().toString());
        }
        personToSave.setCusFname(cusFname);
        personToSave.setCusLname(cusLname);
        cusRepo.save(personToSave);
        mv.addObject("cus", cusRepo.findAll());
        return mv;
    }
    @RequestMapping(value = "/emp/empsave/{emp_id}", method = RequestMethod.POST)
    public ModelAndView empsave(@RequestParam("emp_id") String empId, @RequestParam("emp_fname") String empFname, @RequestParam("emp_lname") String empLname){
        ModelAndView mv = new ModelAndView("redirect:/emp/emp");
        Employee personToSave ;
        if(!empId.isEmpty())
        {
            Optional<Employee> users = empRepo.findById(empId);
            personToSave = users.get();
        }
        else
        {
            personToSave = new Employee();
            personToSave.setEmpId(UUID.randomUUID().toString());
        }
        personToSave.setEmpFname(empFname);
        personToSave.setEmpLname(empLname);
        empRepo.save(personToSave);
        mv.addObject("emp", empRepo.findAll());
        return mv;
    }
    @RequestMapping(value = "/inv/invsave/{inv_id}", method = RequestMethod.POST)
    public ModelAndView invsave(@RequestParam("inv_id") String invId, @RequestParam("inv_desc") String invDesc, @RequestParam("inv_price") double invPrice, @RequestParam("inv_brand") String invBrand){
        ModelAndView mv = new ModelAndView("redirect:/inv/inv");
        Inventory itemToSave ;
        if(!invId.isEmpty())
        {
            Optional<Inventory> users = invRepo.findById(invId);
            itemToSave = users.get();
        }
        else
        {
            itemToSave = new Inventory();
            itemToSave.setInvId(UUID.randomUUID().toString());
        }
        itemToSave.setInvDesc(invDesc);
        itemToSave.setInvPrice(invPrice);
        itemToSave.setInvBrand(invBrand);
        invRepo.save(itemToSave);
        mv.addObject("inv", invRepo.findAll());
        return mv;
    }
    @RequestMapping(value = "/trans/transsave/{trans_id}", method = RequestMethod.POST)
    public ModelAndView transsave(@RequestParam("trans_id") String transId, @RequestParam("cus_id") String cusId, @RequestParam("emp_id") String empId, @RequestParam("inv_id") String invId, @RequestParam("trans_receipt") String transReceipt){
        ModelAndView mv = new ModelAndView("redirect:/trans/trans");
        Transaction itemToSave;
        if(!transId.isEmpty())
        {
            Optional<Transaction> users = transRepo.findById(transId);
            itemToSave = users.get();
        }
        else
        {
            itemToSave = new Transaction();
            itemToSave.setTransId(UUID.randomUUID().toString());
        }
        itemToSave.setCusId(cusId);
        itemToSave.setEmpId(empId);
        itemToSave.setInvId(invId);
        itemToSave.setTransReceipt(transReceipt);
        transRepo.save(itemToSave);
        mv.addObject("trans", transRepo.findAll());
        return mv;
    }

    //<----------------------- DELETE FOR THE MODELS ----------------------->

    @RequestMapping( value = "/cus/cusdelete/{cus_id}", method = RequestMethod.GET)
    public ModelAndView cusdelete(@PathVariable("cus_id") String cusId){
        ModelAndView mv = new ModelAndView("redirect:/cus/cus");
        cusRepo.deleteById(cusId);
        return mv;
    }
    @RequestMapping( value = "/emp/empdelete/{emp_id}", method = RequestMethod.GET)
    public ModelAndView empdelete(@PathVariable("emp_id") String empId){
        ModelAndView mv = new ModelAndView("redirect:/emp/emp");
        empRepo.deleteById(empId);
        return mv;
    }
    @RequestMapping( value = "/inv/invdelete/{inv_id}", method = RequestMethod.GET)
    public ModelAndView invdelete(@PathVariable("inv_id") String invId){
        ModelAndView mv = new ModelAndView("redirect:/inv/inv");
        invRepo.deleteById(invId);
        return mv;
    }
    @RequestMapping( value = "/trans/transdelete/{trans_id}", method = RequestMethod.GET)
    public ModelAndView transdelete(@PathVariable("trans_id") String transId){
        ModelAndView mv = new ModelAndView("redirect:/trans/trans");
        transRepo.deleteById(transId);
        return mv;
    }
}

