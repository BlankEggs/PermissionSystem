package com.igeek.ps.vo;

//管理员角色关系表
public class AdminRoleVO {

    private Integer aId;
    private Integer rId;

    public AdminRoleVO() {
    }

    public AdminRoleVO(Integer aId, Integer rId) {
        this.aId = aId;
        this.rId = rId;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    @Override
    public String toString() {
        return "AdminRoleVO{" +
                "aId=" + aId +
                ", rId=" + rId +
                '}';
    }
}
