package com.itheima.controller;

import com.itheima.dao.UserDao;
import com.itheima.po.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @RequestMapping(value = "/findAllUser")
    public String findAllUser(Model model,String username)throws Exception{
        UserDao userDao =new UserDao();
        List<User> users =  userDao.findAllUser();
        model.addAttribute("users",users);
        return "userlist.jsp";
    }

}
