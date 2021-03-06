package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface YuyueMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Yuyue> selectAll(SelectExample example);

    // 按分页查询数据
    List<Yuyue> selectPage(SelectExample example);
    // 删除数据
    int delete(Yuyue pojo);
    // 查询一行数据
    Yuyue find(Yuyue pojo);
    // 插入数据
    int insert(Yuyue pojo);
    // 更新数据
    int update(Yuyue pojo);
}
