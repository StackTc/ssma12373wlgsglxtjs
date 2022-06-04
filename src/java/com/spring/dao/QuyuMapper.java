package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface QuyuMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Quyu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Quyu> selectPage(SelectExample example);
    // 删除数据
    int delete(Quyu pojo);
    // 查询一行数据
    Quyu find(Quyu pojo);
    // 插入数据
    int insert(Quyu pojo);
    // 更新数据
    int update(Quyu pojo);
}
