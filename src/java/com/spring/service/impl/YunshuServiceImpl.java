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

@Service("YunshuService")
public class YunshuServiceImpl implements YunshuService {

    @Resource
    private YunshuMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Yunshu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Yunshu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Yunshu> list = dao.selectPage(example);

        PageInfo<Yunshu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Yunshu yunshu = new Yunshu();
        yunshu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(yunshu);
    }

    @Override
    public Yunshu find(Object id) {
        Yunshu yunshu = new Yunshu();
        yunshu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(yunshu);
    }

    @Override
    public int insert(Yunshu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Yunshu pojo) {
        return dao.update(pojo);
    }
}
