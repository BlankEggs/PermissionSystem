package com.igeek.ps.mapper;

import com.igeek.ps.pojo.Permission;
import com.igeek.ps.pojo.Role;

import java.util.List;

//角色mapper接口  alt + enter补全代码
public interface RoleMapper {

    //条件 + 查询列表权限
    public List<Role> findAll(String query);

    //插入权限
    public void insert(Role role);

}
