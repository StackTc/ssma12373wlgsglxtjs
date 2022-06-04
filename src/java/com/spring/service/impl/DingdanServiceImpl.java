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

@Service("DingdanService")
public class DingdanServiceImpl implements DingdanService {

    @Resource
    private DingdanMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Dingdan> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Dingdan> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Dingdan> list = dao.selectPage(example);

        PageInfo<Dingdan> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Dingdan dingdan = new Dingdan();
        dingdan.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(dingdan);
    }

    @Override
    public Dingdan find(Object id) {
        Dingdan dingdan = new Dingdan();
        dingdan.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(dingdan);
    }

    @Override
    public int insert(Dingdan pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Dingdan pojo) {
        return dao.update(pojo);
    }
}
