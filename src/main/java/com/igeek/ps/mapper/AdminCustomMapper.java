package com.igeek.ps.mapper;

import com.igeek.ps.pojo.AdminCustom;

public interface AdminCustomMapper {

    //通过id查询管理员的信息（管理员的信息、该管理员拥有的角色信息、以及角色对应的权限信息）
    public AdminCustom findOneById(Integer id);

}
