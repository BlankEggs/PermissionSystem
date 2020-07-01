package com.igeek.ps.controller;

import com.igeek.ps.pojo.AdminCustom;
import com.igeek.ps.pojo.TAdmin;
import com.igeek.ps.service.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private IService<TAdmin> service;

    //查看所有管理员
    @RequestMapping("/findAll.action")
    public String findAll(String query, Model model) {
        List<TAdmin> adminList = service.findAll(query);
        model.addAttribute("adminList",adminList);
        return "role/admin";
    }

    //显示管理员拥有的角色及其权限信息
    @RequestMapping("/findOne.action")
    @ResponseBody
    public TAdmin findOne(Integer id){
        AdminCustom admin = (AdminCustom)service.findOne(id);
        return admin;
    }

}
