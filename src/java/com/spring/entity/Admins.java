package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Admins implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String username;
    private String pwd;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
}
