package com.igeek.ps.controller;

import com.igeek.ps.pojo.Role;
import com.igeek.ps.service.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;

//角色控制类
@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private IService<Role> service;

    //条件 + 查看列表
    @RequestMapping("/findAll.action")
    public String findAll(String query, Model model) throws UnsupportedEncodingException {
        List<Role> list = service.findAll(query);
        model.addAttribute("rList",list);
        return "role/role";
    }

    //实现角色插入
    @RequestMapping("/add.action")
    public String add(Role role, @RequestParam("pid") Integer[] ids){
        service.insert(role,ids);
        return "redirect:findAll.action";
    }

    //实现显示角色及拥有的权限信息
    @RequestMapping("/findOne.action")
    @ResponseBody
    public Role findOne(Integer id){
        Role role = service.findOne(id);
        return role;
    }
}
