package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface YonghuMapper {
    Yonghu login(Yonghu yonghu);

    Integer count(SelectExample map);
    // 查询全部数据
    List<Yonghu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Yonghu> selectPage(SelectExample example);
    // 删除数据
    int delete(Yonghu pojo);
    // 查询一行数据
    Yonghu find(Yonghu pojo);
    // 插入数据
    int insert(Yonghu pojo);
    // 更新数据
    int update(Yonghu pojo);
}
