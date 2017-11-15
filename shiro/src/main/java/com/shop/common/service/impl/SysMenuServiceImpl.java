package com.shop.common.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.common.base.impl.BaseServiceImpl;
import com.shop.common.entity.SysMenu;
import com.shop.common.mapper.SysMenuMapper;
import com.shop.common.mapper.ins.InsSysMenuMapper;
import com.shop.common.service.SysMenuService;

@Service
public class SysMenuServiceImpl extends BaseServiceImpl<SysMenu, Integer> implements SysMenuService {

	
	private SysMenuMapper mapper;
	
	@Autowired
	private InsSysMenuMapper insMapper;

	@Autowired
	public void setMapper(SysMenuMapper mapper) {
		this.mapper = mapper;
		super.setMapper(mapper);
	}

	@Override
	public List<SysMenu> getMenuByUserId(Integer userId) {
		return insMapper.getMenuByUserId(userId);
	}
	

}
