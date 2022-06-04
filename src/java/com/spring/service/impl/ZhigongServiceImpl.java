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

@Service("ZhigongService")
public class ZhigongServiceImpl implements ZhigongService {

    @Resource
    private ZhigongMapper dao;

    public Zhigong login(String username, String password) {
        Zhigong user = new Zhigong();
        user.setGonghao(username);
        user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Zhigong user = new Zhigong();
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
    public List<Zhigong> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Zhigong> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Zhigong> list = dao.selectPage(example);

        PageInfo<Zhigong> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Zhigong zhigong = new Zhigong();
        zhigong.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(zhigong);
    }

    @Override
    public Zhigong find(Object id) {
        Zhigong zhigong = new Zhigong();
        zhigong.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(zhigong);
    }

    @Override
    public int insert(Zhigong pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Zhigong pojo) {
        return dao.update(pojo);
    }
}
