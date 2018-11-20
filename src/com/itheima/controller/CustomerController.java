package com.itheima.controller;

import com.itheima.po.Customer;
import com.itheima.dao.CustomerDao;

import com.itheima.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CustomerController {

    @RequestMapping(value = "/addCustomer")
    public String addCustomer(Customer customer) throws Exception {

        CustomerDao mybatisTest = new CustomerDao();
        mybatisTest.addCustomer(customer);
        return "guanli.jsp";
    }

    //shanchu
    @RequestMapping(value = "/deleteCustomer")
    public String deleteCustomer(Integer id) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        mybatisTest.deleteCustomer(id);
        return "index.jsp";
    }

    //uopdate
    @RequestMapping(value = "/updateCustomer")
    public String updateCustomer(Customer customer) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        mybatisTest.updateCustomer(customer);
        return "xg.jsp";

    }

    //id get Customer
    @RequestMapping(value = "/findCustomerById")
    public String FindCustomerByid(Model modle, Integer id) throws Exception {
        modle.addAttribute("b", id);
        return "xg.jsp";
    }

    //username get Customers


    @RequestMapping(value = "/findCustomerByNameAndJobs")
    public String findCustomerByNameAndJobs(Model model, Customer customer) throws Exception {


        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.findCustomerByNameAndJobs(customer);
        model.addAttribute("customers", customers);
        model.addAttribute("mga", "查询到目标书籍：");
        return "History.jsp";

    }

    @RequestMapping(value = "/findall")
    public String findall(Model model, Integer msg,User user, HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.findall();
        model.addAttribute("customers", customers);
        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        model.addAttribute("msga", "用户订单" );
        return "Success.jsp";

    }

    @RequestMapping(value = "/del")
    public String del(Integer[] ids) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        Integer num = mybatisTest.del(ids);
        return "redirect:findall?msg=" + num;

    }

    @RequestMapping(value = "/a")
    public String a(Model model, Integer msg,User user, HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.a();
        model.addAttribute("customers", customers);
        model.addAttribute("msga", "用户订单" );
        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        return "technology.jsp";

    }

    @RequestMapping(value = "/aa")
    public String aa(Model model, Integer msg,User user,HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.aa();
        model.addAttribute("customers", customers);
        model.addAttribute("msga", "用户订单" );
        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        return "History.jsp";

    }

    @RequestMapping(value = "/aaa")
    public String aaa(Model model, Integer msg,User user,HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.aaa();
        model.addAttribute("customers", customers);
        model.addAttribute("msga", "用户订单" );
        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        return "Novel.jsp";

    }

    @RequestMapping(value = "/ma")
    public String uname( Model model, User user, HttpServletRequest request, HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        String a=  mybatisTest.uname(user);
        if (a.equals("[]")) {



            return "login.jsp";

        } else {
            model.addAttribute("msg", "当前用户" + user.getUsername());
            session.setAttribute("text", "12");
            session.setAttribute("fa", user.getUsername());
            return "index.jsp";
        }



    }

    @RequestMapping(value = "/inedx")
    public String index(Model model, Integer msg,User user,HttpSession session) throws Exception {

        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        model.addAttribute("msga", "用户订单" );
        return "index.jsp";

    }
    @RequestMapping(value = "/logout")
    public String logput(User user, Model model,HttpSession session) {
        session.invalidate();
        return "index.jsp";
    }

    @RequestMapping(value = "/gmcg")
    public String gmcg(User user, Model model,HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.geren();
        model.addAttribute("customers", customers);
        model.addAttribute("msga", "用户订单" );
        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        return "gmcg.jsp";
    }
    @RequestMapping(value = "/gmcgg")
    public String gmcgg(User user, Model model,HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.geren();
        model.addAttribute("customers", customers);
        return "xga.jsp";
    }
    @RequestMapping(value = "/aaaa")
    public String aaaa(HttpSession session,Customer customer,Model model) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        mybatisTest.addCus(customer);
            model.addAttribute("msga","用户订单");

        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        return "cc.jsp";



    }
    @RequestMapping(value = "/findalll")
    public String findalll(Model model, Integer msg,User user, HttpSession session) throws Exception {
        if (user.getUsername().equals("admin") && user.getPassword().equals("admin")) {
            session.setAttribute("text", "12");
            session.setAttribute("fa",user.getUsername());
            return "guanli.jsp";

        } else {

            return "login.jsp";
        }
    }
    @RequestMapping(value = "/dell")
    public String dell(Integer[] ids) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        Integer num = mybatisTest.del(ids);
        return "guanli.jsp";

    }

    @RequestMapping(value = "/de")
    public String de(String name,Model model,HttpSession session) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        model.addAttribute("msga", "用户订单" );
        model.addAttribute("msg", "当前用户" + session.getAttribute("fa"));
        List<Customer> customers = mybatisTest.de(name);
        model.addAttribute("customers", customers);
        return "mc.jsp";

    }
    @RequestMapping(value = "/zhichi")
    public String zhichi(User user,Model model) throws Exception {
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.zhuchi(user);
        model.addAttribute("customers", customers);
        return "login.jsp";

    }
    @RequestMapping(value = "/fin")
    public String fin(Model model, Integer msg,User user, HttpSession session) throws Exception {

        session.setAttribute("text", "12");
        session.setAttribute("fa", user.getUsername());
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.findallll();
        model.addAttribute("customers", customers);
        model.addAttribute("shu","确定");
        return "guanli.jsp";

    }

    @RequestMapping(value = "/finn")
    public String finn(Model model, Integer msg,User user, HttpSession session) throws Exception {

        session.setAttribute("text", "12");
        session.setAttribute("fa", user.getUsername());
        CustomerDao mybatisTest = new CustomerDao();
        List<Customer> customers = mybatisTest.findallll();
        model.addAttribute("msga", "用户订单" );
        model.addAttribute("customers", customers);
        model.addAttribute("shuji","确定");
        return "guanli.jsp";

    }

}
