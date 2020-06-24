package com.igeek.ps.vo;

//角色权限关系表
public class RolePermissionVO {

    private Integer pId;
    private Integer rId;

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public RolePermissionVO() {
    }

    public RolePermissionVO(Integer pId, Integer rId) {
        this.pId = pId;
        this.rId = rId;
    }

    @Override
    public String toString() {
        return "RolePermissionVO{" +
                "pId=" + pId +
                ", rId=" + rId +
                '}';
    }
}
