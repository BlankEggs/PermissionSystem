package com.igeek.ps.mapper;

import com.igeek.ps.pojo.Permission;
import com.igeek.ps.pojo.Role;

import java.util.List;

//角色mapper接口  alt + enter补全代码
public interface RoleMapper {

    //条件 + 查询列表角色
    public List<Role> findAll(String query);

    //插入橘色
    public void insert(Role role);

    //显示角色，并且显示角色拥有的权限信息
    public Role findOne(Integer id);

    //修改角色
    public void update(Role role);

    //删除角色
    public void delete(Integer id);
}
