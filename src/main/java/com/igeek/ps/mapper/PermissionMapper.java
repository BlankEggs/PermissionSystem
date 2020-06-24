package com.igeek.ps.mapper;

import com.igeek.ps.pojo.Permission;

import java.util.List;

//权限mapper接口  alt + enter补全代码
public interface PermissionMapper {

    //条件 + 查询列表权限
    public List<Permission> findAll(String query);

    //查询单条记录权限
    public Permission findOne(Integer id);

    //修改权限
    public void update(Permission permission);

    //插入权限
    public void insert(Permission permission);

    //删除权限
    public void delete(Integer id);
}
