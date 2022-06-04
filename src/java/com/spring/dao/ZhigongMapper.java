package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ZhigongMapper {
    Zhigong login(Zhigong zhigong);

    Integer count(SelectExample map);
    // 查询全部数据
    List<Zhigong> selectAll(SelectExample example);

    // 按分页查询数据
    List<Zhigong> selectPage(SelectExample example);
    // 删除数据
    int delete(Zhigong pojo);
    // 查询一行数据
    Zhigong find(Zhigong pojo);
    // 插入数据
    int insert(Zhigong pojo);
    // 更新数据
    int update(Zhigong pojo);
}
