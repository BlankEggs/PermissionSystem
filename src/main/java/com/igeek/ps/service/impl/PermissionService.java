package com.igeek.ps.service.impl;

import com.igeek.ps.mapper.PermissionMapper;
import com.igeek.ps.mapper.RolePermissionMapper;
import com.igeek.ps.pojo.Permission;
import com.igeek.ps.service.IService;
import com.igeek.ps.vo.RolePermissionVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;

@Service
public class PermissionService  implements IService<Permission> {

    @Autowired
    private PermissionMapper mapper;
    @Autowired
    private RolePermissionMapper rpMapper;

    @Override
    public List<Permission> findAll(String query) {
        if(query==null){
            query = "";
        }
        //由于使用的是tomcat8版本，已经自动对get方式做了乱码处理
        //query = new String(query.getBytes("ISO-8859-1"),"UTF-8");
        List<Permission> list  = mapper.findAll(query);
        return list;
    }

    @Override   //alt + enter 快捷提示
    public Permission findOne(Integer id) {
        Permission permission = mapper.findOne(id);
        return permission;
    }

    @Override
    public void update(Permission permission,Integer[] pids) {
        mapper.update(permission);
    }

    @Override
    public void insert(Permission permission,Integer[] pids) {
        mapper.insert(permission);
    }

    @Override
    public void delete(Integer[] ids) {
        for(Integer id : ids){
            //删除角色权限关系表
            rpMapper.delete(new RolePermissionVO(id,0));
            //删除权限表中数据
            mapper.delete(id);
        }
    }
}
