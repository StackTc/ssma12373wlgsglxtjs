package com.spring.service;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;

public interface ZhigongService {
    // 账号登录
    public Zhigong login(String username, String password);

    // 修改密码
    public boolean updatePassword(int id, String newPassword);

    // 查询总行数
    Integer count(SelectExample map);
    // 按分页查询数据
    List<Zhigong> selectPage(SelectExample example, int page, int pageSize);
    // 搜索全部数据
    List<Zhigong> selectAll(SelectExample example);
    // 按id删除一行数据
    int delete(Object id);
    // 查询一行数据
    Zhigong find(Object id);
    // 插入一行数据
    int insert(Zhigong pojo);
    // 更新一行数据
    int update(Zhigong pojo);
}
