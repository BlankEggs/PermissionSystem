package com.igeek.ps.service.impl;

import com.igeek.ps.mapper.AdminRoleMapper;
import com.igeek.ps.mapper.RoleMapper;
import com.igeek.ps.mapper.RolePermissionMapper;
import com.igeek.ps.pojo.Role;
import com.igeek.ps.service.IService;
import com.igeek.ps.vo.AdminRoleVO;
import com.igeek.ps.vo.RolePermissionVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;

//角色的业务逻辑层
@Service
public class RoleService implements IService<Role> {

    @Autowired
    private RoleMapper mapper;
    @Autowired
    private RolePermissionMapper rpMapper;
    @Autowired
    private AdminRoleMapper arMapper;

    @Override
    public List<Role> findAll(String query) throws UnsupportedEncodingException {
        if(query==null){
            query = "";
        }
        List<Role> list = mapper.findAll(query);
        return list;
    }

    @Override
    public void insert(Role role, Integer[] pids) {
        //给角色表中插入数据
        mapper.insert(role);
        //给角色赋予权限，给角色权限关系表插入数据
        for(Integer pid : pids){
            rpMapper.insert(new RolePermissionVO(pid,role.getId()));
        }
    }

    @Override
    public Role findOne(Integer id) {
        Role role = mapper.findOne(id);
        return role;
    }

    @Override
    public void update(Role role, Integer[] pids) {
        //修改角色信息
        mapper.update(role);
        //修改关系表中数据
        //解除角色拥有的权限 -删除关系表中数据
        rpMapper.delete(new RolePermissionVO(0, role.getId()));
        for (Integer pid : pids) {
            //给角色赋予新的权限 -插入关系表中数据
            rpMapper.insert(new RolePermissionVO(pid, role.getId()));
        }
    }


    @Override
    public void delete(Integer[] ids) {
        for(Integer rid : ids){
            //解除角色的权限
            rpMapper.delete(new RolePermissionVO(0,rid));
            //解除管理员的角色
            arMapper.delete(new AdminRoleVO(0, rid));
            //删除角色
            mapper.delete(rid);
        }
    }
}
