package com.igeek.ps.service.impl;

import com.igeek.ps.mapper.AdminCustomMapper;
import com.igeek.ps.mapper.AdminRoleMapper;
import com.igeek.ps.mapper.TAdminMapper;
import com.igeek.ps.pojo.TAdmin;
import com.igeek.ps.pojo.TAdminExample;
import com.igeek.ps.service.IService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService implements IService<TAdmin> {

    @Autowired
    private TAdminMapper adminMapper;
    @Autowired
    private AdminCustomMapper adminCustomMapper;
    @Autowired
    private AdminRoleMapper adminRoleMapper;

    @Override
    public List<TAdmin> findAll(String query)  {
        if(query==null){
            query="";
        }
        TAdminExample example = new TAdminExample();
        TAdminExample.Criteria c = example.createCriteria();
        c.andMNameLike("%"+query+"%");
        List<TAdmin> adminList = adminMapper.selectByExample(example);
        return adminList;
    }

    @Override
    public TAdmin findOne(Integer id) {
        TAdmin admin = adminCustomMapper.findOneById(id);
        return admin;
    }

    @Override
    public void update(TAdmin adminCustom, Integer[] pids) {

    }

    @Override
    public void insert(TAdmin adminCustom, Integer[] pids) {

    }

    @Override
    public void delete(Integer[] ids) {

    }
}
