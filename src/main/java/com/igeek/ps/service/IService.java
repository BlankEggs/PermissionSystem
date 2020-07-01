package com.igeek.ps.service;

import com.igeek.ps.pojo.Permission;

import java.io.UnsupportedEncodingException;
import java.util.List;

public interface IService<T> {

    //条件 + 查询列表
    public List<T> findAll(String query);

    //查询单条记录
    public T findOne(Integer id);

    //修改
    public void update(T t,Integer[] pids);

    //插入
    public void insert(T t,Integer[] pids);

    //删除
    public void delete(Integer[] ids);

}
