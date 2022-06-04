package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface HuowuMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Huowu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Huowu> selectPage(SelectExample example);
    // 删除数据
    int delete(Huowu pojo);
    // 查询一行数据
    Huowu find(Huowu pojo);
    // 插入数据
    int insert(Huowu pojo);
    // 更新数据
    int update(Huowu pojo);
}
