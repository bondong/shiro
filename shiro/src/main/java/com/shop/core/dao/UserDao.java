package com.shop.core.dao;

import com.shop.core.domain.User;

public interface UserDao {
    public abstract User findByUsername(String username);
}