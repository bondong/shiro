package com.shop.common.entity;

import javax.persistence.*;

@Table(name = "sys_role_permission")
public class SysRolePermission {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 角色id
     */
    @Column(name = "role_id")
    private Integer roleId;

    /**
     * 权限id
     */
    @Column(name = "perm_id")
    private Integer permId;

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
     * 获取角色id
     *
     * @return role_id - 角色id
     */
    public Integer getRoleId() {
        return roleId;
    }

    /**
     * 设置角色id
     *
     * @param roleId 角色id
     */
    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    /**
     * 获取权限id
     *
     * @return perm_id - 权限id
     */
    public Integer getPermId() {
        return permId;
    }

    /**
     * 设置权限id
     *
     * @param permId 权限id
     */
    public void setPermId(Integer permId) {
        this.permId = permId;
    }
}