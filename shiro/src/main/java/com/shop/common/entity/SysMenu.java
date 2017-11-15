package com.shop.common.entity;

import java.util.Date;
import javax.persistence.*;

@Table(name = "sys_menu")
public class SysMenu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 菜单名
     */
    private String name;

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
     * 例如admin:delete样式
     */
    private String code;

    /**
     * 0：不可用；1：可用
     */
    private String status;

    /**
     * 第一次创建时间
     */
    @Column(name = "create_time")
    private Date createTime;

    /**
     * 修改时间
     */
    @Column(name = "update_time")
    private Date updateTime;

    /**
     * 界面映射图标
     */
    private String icon;

    /**
     * 连接地址
     */
    private String url;

    /**
     * 菜单栏显示排序
     */
    private Integer sorter;

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
     * 获取菜单名
     *
     * @return name - 菜单名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置菜单名
     *
     * @param name 菜单名
     */
    public void setName(String name) {
        this.name = name;
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
     * 获取第一次创建时间
     *
     * @return create_time - 第一次创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置第一次创建时间
     *
     * @param createTime 第一次创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取修改时间
     *
     * @return update_time - 修改时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置修改时间
     *
     * @param updateTime 修改时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取界面映射图标
     *
     * @return icon - 界面映射图标
     */
    public String getIcon() {
        return icon;
    }

    /**
     * 设置界面映射图标
     *
     * @param icon 界面映射图标
     */
    public void setIcon(String icon) {
        this.icon = icon;
    }

    /**
     * 获取连接地址
     *
     * @return url - 连接地址
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置连接地址
     *
     * @param url 连接地址
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 获取菜单栏显示排序
     *
     * @return sorter - 菜单栏显示排序
     */
    public Integer getSorter() {
        return sorter;
    }

    /**
     * 设置菜单栏显示排序
     *
     * @param sorter 菜单栏显示排序
     */
    public void setSorter(Integer sorter) {
        this.sorter = sorter;
    }
}