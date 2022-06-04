package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Huowu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String huowu;
    private Double jine;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHuowu() {
        return huowu;
    }

    public void setHuowu(String huowu) {
        this.huowu = huowu;
    }

    public Double getJine() {
        return jine;
    }

    public void setJine(Double jine) {
        this.jine = jine;
    }
}
