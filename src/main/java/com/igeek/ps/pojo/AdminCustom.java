package com.igeek.ps.pojo;

import java.util.List;

/**
 * AdminCustom 是TAdmin的拓展类
 */
public class AdminCustom extends TAdmin {

    //一对多  角色
    private List<Role> roleList;

    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }

    public AdminCustom() {
    }

    public AdminCustom(Integer id , String name, String pwd ,List<Role> roleList) {
        this.setmId(id);
        this.setmName(name);
        this.setmPwd(pwd);
        this.roleList = roleList;
    }

    @Override
    public String toString() {
        return "AdminCustom{ id = "+this.getmId() + " name = "+this.getmName() +" roleList=" + roleList + '}';
    }
}
