package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Yunshu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String yunshu;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getYunshu() {
        return yunshu;
    }

    public void setYunshu(String yunshu) {
        this.yunshu = yunshu;
    }
}
