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

@Service("QuyuService")
public class QuyuServiceImpl implements QuyuService {

    @Resource
    private QuyuMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Quyu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Quyu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Quyu> list = dao.selectPage(example);

        PageInfo<Quyu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Quyu quyu = new Quyu();
        quyu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(quyu);
    }

    @Override
    public Quyu find(Object id) {
        Quyu quyu = new Quyu();
        quyu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(quyu);
    }

    @Override
    public int insert(Quyu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Quyu pojo) {
        return dao.update(pojo);
    }
}
