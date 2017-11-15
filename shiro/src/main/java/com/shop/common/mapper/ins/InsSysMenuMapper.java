package com.shop.common.mapper.ins;

import java.util.List;

import com.shop.common.entity.SysMenu;

public interface InsSysMenuMapper{
	
	List<SysMenu>getMenuByUserId(Integer userId);
}