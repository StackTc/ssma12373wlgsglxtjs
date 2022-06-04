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

@Service("HuowuService")
public class HuowuServiceImpl implements HuowuService {

    @Resource
    private HuowuMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Huowu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Huowu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Huowu> list = dao.selectPage(example);

        PageInfo<Huowu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Huowu huowu = new Huowu();
        huowu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(huowu);
    }

    @Override
    public Huowu find(Object id) {
        Huowu huowu = new Huowu();
        huowu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(huowu);
    }

    @Override
    public int insert(Huowu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Huowu pojo) {
        return dao.update(pojo);
    }
}
