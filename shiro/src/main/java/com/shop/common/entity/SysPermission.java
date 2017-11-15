package com.shop.common.entity;

import javax.persistence.*;

@Table(name = "sys_permission")
public class SysPermission {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 功能名称
     */
    private String name;

    /**
     * 例如admin:delete样式
     */
    private String code;

    /**
     * 0：不可用；1：可用
     */
    private String status;

    /**
     * 说明
     */
    private String descr;

    /**
     * 1：第一级；2：第二级，以此类推
     */
    private Integer level;

    /**
     * 如果是第一级，父类ID为0；
     */
    @Column(name = "parent_id")
    private Integer parentId;

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
     * 获取功能名称
     *
     * @return name - 功能名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置功能名称
     *
     * @param name 功能名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取例如admin:delete样式
     *
     * @return code - 例如admin:delete样式
     */
    public String getCode() {
        return code;
    }

    /**
     * 设置例如admin:delete样式
     *
     * @param code 例如admin:delete样式
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * 获取0：不可用；1：可用
     *
     * @return status - 0：不可用；1：可用
     */
    public String getStatus() {
        return status;
    }

    /**
     * 设置0：不可用；1：可用
     *
     * @param status 0：不可用；1：可用
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * 获取说明
     *
     * @return descr - 说明
     */
    public String getDescr() {
        return descr;
    }

    /**
     * 设置说明
     *
     * @param descr 说明
     */
    public void setDescr(String descr) {
        this.descr = descr;
    }

    /**
     * 获取1：第一级；2：第二级，以此类推
     *
     * @return level - 1：第一级；2：第二级，以此类推
     */
    public Integer getLevel() {
        return level;
    }

    /**
     * 设置1：第一级；2：第二级，以此类推
     *
     * @param level 1：第一级；2：第二级，以此类推
     */
    public void setLevel(Integer level) {
        this.level = level;
    }

    /**
     * 获取如果是第一级，父类ID为0；
     *
     * @return parent_id - 如果是第一级，父类ID为0；
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * 设置如果是第一级，父类ID为0；
     *
     * @param parentId 如果是第一级，父类ID为0；
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }
}