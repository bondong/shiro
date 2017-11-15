package com.shop.common.service;

import java.util.List;

import com.shop.common.base.BaseService;
import com.shop.common.entity.SysMenu;

public interface SysMenuService extends BaseService<SysMenu, Integer> {

	List<SysMenu>getMenuByUserId(Integer userId);
	
}
