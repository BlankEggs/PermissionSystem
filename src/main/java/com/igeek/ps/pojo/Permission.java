package com.igeek.ps.pojo;

//权限表  alt+insert键生成构造器、getter和setter方法、toString()
public class Permission {

    private Integer id;  //权限ID
    private String name; //权限名称
    private String desc; //权限描述
    private String url;  //权限url

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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Permission() {
    }

    public Permission(Integer id, String name, String desc, String url) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.url = url;
    }

    @Override
    public String toString() {
        return "Permission{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
