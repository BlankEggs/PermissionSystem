package com.igeek.ps.mapper;

import com.igeek.ps.vo.AdminRoleVO;

public interface AdminRoleMapper {

    //创建管理员时赋予角色，等价于需要给这张关系表插入数据
    public void insert(AdminRoleVO vo);

    //删除管理员或删除角色，等价于需要给这张关系表删除数据
    public void delete(AdminRoleVO vo);

}
