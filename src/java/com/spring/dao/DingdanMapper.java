package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface DingdanMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Dingdan> selectAll(SelectExample example);

    // 按分页查询数据
    List<Dingdan> selectPage(SelectExample example);
    // 删除数据
    int delete(Dingdan pojo);
    // 查询一行数据
    Dingdan find(Dingdan pojo);
    // 插入数据
    int insert(Dingdan pojo);
    // 更新数据
    int update(Dingdan pojo);
}
