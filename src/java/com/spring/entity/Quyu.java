package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Quyu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String quyu;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQuyu() {
        return quyu;
    }

    public void setQuyu(String quyu) {
        this.quyu = quyu;
    }
}
