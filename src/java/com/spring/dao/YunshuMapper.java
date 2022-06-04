package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface YunshuMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Yunshu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Yunshu> selectPage(SelectExample example);
    // 删除数据
    int delete(Yunshu pojo);
    // 查询一行数据
    Yunshu find(Yunshu pojo);
    // 插入数据
    int insert(Yunshu pojo);
    // 更新数据
    int update(Yunshu pojo);
}
