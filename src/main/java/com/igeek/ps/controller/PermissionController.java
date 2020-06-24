package com.igeek.ps.controller;

import com.igeek.ps.pojo.Permission;
import com.igeek.ps.service.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/permission")
public class PermissionController {

    @Autowired
    private IService<Permission> service;

    @RequestMapping("/findAll.action")
    public String findAll(String query, Model model) throws UnsupportedEncodingException {
        List<Permission> list = service.findAll(query);
        model.addAttribute("pList",list);
        return "role/permission";
    }

    @RequestMapping("/add.action")
    public String insert(Permission permission){
        service.insert(permission);
        return "redirect:findAll.action";
    }

    @RequestMapping("/findOne.action")
    @ResponseBody
    public Permission findOne(Integer id){
        Permission permission = service.findOne(id);
        return permission;
    }

    @RequestMapping("/update.action")
    public String update(Permission permission){
        service.update(permission);
        return "redirect:findAll.action";
    }

    @RequestMapping("/delete.action")
    public String delete(@RequestParam(value = "id") Integer[] ids){
        service.delete(ids);
        return "redirect:findAll.action";
    }

}
