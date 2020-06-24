package com.igeek.ps.service.impl;

import com.igeek.ps.mapper.PermissionMapper;
import com.igeek.ps.pojo.Permission;
import com.igeek.ps.service.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;

@Service
public class PermissionService  implements IService<Permission> {

    @Autowired
    private PermissionMapper mapper;

    @Override
    public List<Permission> findAll(String query) throws UnsupportedEncodingException {
        List<Permission> list = null;
        if(query!=null && !query.equals("")){
            //由于使用的是tomcat8版本，已经自动对get方式做了乱码处理
            //query = new String(query.getBytes("ISO-8859-1"),"UTF-8");
            list = mapper.findAll(query);
        }else{
            list = mapper.findAll("");
        }
        return list;
    }

    @Override   //alt + enter 快捷提示
    public Permission findOne(Integer id) {
        Permission permission = mapper.findOne(id);
        return permission;
    }

    @Override
    public void update(Permission permission) {
        mapper.update(permission);
    }

    @Override
    public void insert(Permission permission) {
        mapper.insert(permission);
    }

    @Override
    public void delete(Integer[] ids) {

    }
}
