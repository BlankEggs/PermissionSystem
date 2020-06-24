package com.igeek.ps.pojo;

import java.util.List;

//角色类
public class Role {

    private Integer id;  //角色ID
    private String name; //角色名称
    //一个角色可以拥有多个权限
    private List<Permission> pList;  //角色拥有的权限列表

    public Role() {
    }

    public Role(Integer id, String name, List<Permission> pList) {
        this.id = id;
        this.name = name;
        this.pList = pList;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Permission> getpList() {
        return pList;
    }

    public void setpList(List<Permission> pList) {
        this.pList = pList;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", pList=" + pList +
                '}';
    }
}
