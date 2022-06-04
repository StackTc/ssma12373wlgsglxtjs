package com.spring.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import com.spring.util.SelectExample;
import java.util.*;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("YonghuService")
public class YonghuServiceImpl implements YonghuService {

    @Resource
    private YonghuMapper dao;

    public Yonghu login(String username, String password) {
        Yonghu user = new Yonghu();
        user.setYonghuming(username);
        user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Yonghu user = new Yonghu();
        user.setId(id);
        user.setMima(newPassword);
        int i = this.dao.update(user);
        return i == 1;
    }

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Yonghu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Yonghu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Yonghu> list = dao.selectPage(example);

        PageInfo<Yonghu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Yonghu yonghu = new Yonghu();
        yonghu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(yonghu);
    }

    @Override
    public Yonghu find(Object id) {
        Yonghu yonghu = new Yonghu();
        yonghu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(yonghu);
    }

    @Override
    public int insert(Yonghu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Yonghu pojo) {
        return dao.update(pojo);
    }
}
