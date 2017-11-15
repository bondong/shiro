package com.shop.common.entity;

import java.util.Date;
import javax.persistence.*;

@Table(name = "user_info")
public class UserInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String account;

    private String password;

    private Short sex;

    private String email;

    private String telephone;

    @Column(name = "regist_time")
    private Date registTime;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return account
     */
    public String getAccount() {
        return account;
    }

    /**
     * @param account
     */
    public void setAccount(String account) {
        this.account = account;
    }

    /**
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return sex
     */
    public Short getSex() {
        return sex;
    }

    /**
     * @param sex
     */
    public void setSex(Short sex) {
        this.sex = sex;
    }

    /**
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return telephone
     */
    public String getTelephone() {
        return telephone;
    }

    /**
     * @param telephone
     */
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    /**
     * @return regist_time
     */
    public Date getRegistTime() {
        return registTime;
    }

    /**
     * @param registTime
     */
    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
    }
}