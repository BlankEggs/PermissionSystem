package com.igeek.ps.mapper;

import com.igeek.ps.vo.RolePermissionVO;

public interface RolePermissionMapper {

    //创建角色时赋予权限，等价于需要给这张关系表插入数据
    public void insert(RolePermissionVO vo);

    //删除角色或者删除权限，等价于需要给这张关系表删除数据
    public void delete(RolePermissionVO vo);

}
