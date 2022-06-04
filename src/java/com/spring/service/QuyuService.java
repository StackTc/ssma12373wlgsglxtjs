package com.spring.service;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;

public interface QuyuService {
    // 查询总行数
    Integer count(SelectExample map);
    // 按分页查询数据
    List<Quyu> selectPage(SelectExample example, int page, int pageSize);
    // 搜索全部数据
    List<Quyu> selectAll(SelectExample example);
    // 按id删除一行数据
    int delete(Object id);
    // 查询一行数据
    Quyu find(Object id);
    // 插入一行数据
    int insert(Quyu pojo);
    // 更新一行数据
    int update(Quyu pojo);
}
