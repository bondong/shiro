package com.shop.common.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.common.base.impl.BaseServiceImpl;
import com.shop.common.entity.SysRole;
import com.shop.common.mapper.SysRoleMapper;
import com.shop.common.service.SysRoleService;

@Service
public class SysRoleServiceImpl extends BaseServiceImpl<SysRole, Integer> implements SysRoleService {

	
	private SysRoleMapper mapper;

	@Autowired
	public void setMapper(SysRoleMapper mapper) {
		this.mapper = mapper;
		super.setMapper(mapper);
	}
	

}
