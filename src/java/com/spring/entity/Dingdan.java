package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Dingdan implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer yuyueid;
    private String bianhao;
    private String huowu;
    private Double jine;
    private String quyu;
    private String mudidi;
    private String fahuodi;
    private String fahuorendianhua;
    private String fahuoren;
    private String shouhuorendianhua;
    private String shouhuoren;
    private String tianjiaren;
    private String yunshu;
    private String beizhu;
    private String caozuoren;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getYuyueid() {
        return yuyueid;
    }

    public void setYuyueid(Integer yuyueid) {
        this.yuyueid = yuyueid;
    }

    public String getBianhao() {
        return bianhao;
    }

    public void setBianhao(String bianhao) {
        this.bianhao = bianhao;
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

    public String getQuyu() {
        return quyu;
    }

    public void setQuyu(String quyu) {
        this.quyu = quyu;
    }

    public String getMudidi() {
        return mudidi;
    }

    public void setMudidi(String mudidi) {
        this.mudidi = mudidi;
    }

    public String getFahuodi() {
        return fahuodi;
    }

    public void setFahuodi(String fahuodi) {
        this.fahuodi = fahuodi;
    }

    public String getFahuorendianhua() {
        return fahuorendianhua;
    }

    public void setFahuorendianhua(String fahuorendianhua) {
        this.fahuorendianhua = fahuorendianhua;
    }

    public String getFahuoren() {
        return fahuoren;
    }

    public void setFahuoren(String fahuoren) {
        this.fahuoren = fahuoren;
    }

    public String getShouhuorendianhua() {
        return shouhuorendianhua;
    }

    public void setShouhuorendianhua(String shouhuorendianhua) {
        this.shouhuorendianhua = shouhuorendianhua;
    }

    public String getShouhuoren() {
        return shouhuoren;
    }

    public void setShouhuoren(String shouhuoren) {
        this.shouhuoren = shouhuoren;
    }

    public String getTianjiaren() {
        return tianjiaren;
    }

    public void setTianjiaren(String tianjiaren) {
        this.tianjiaren = tianjiaren;
    }

    public String getYunshu() {
        return yunshu;
    }

    public void setYunshu(String yunshu) {
        this.yunshu = yunshu;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public String getCaozuoren() {
        return caozuoren;
    }

    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren;
    }
}
