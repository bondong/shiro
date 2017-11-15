package com.shop.common.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.common.base.impl.BaseServiceImpl;
import com.shop.common.entity.SysPermission;
import com.shop.common.mapper.SysPermissionMapper;
import com.shop.common.service.SysPermissionService;

@Service
public class SysPermissionServiceImpl extends BaseServiceImpl<SysPermission, Integer> implements SysPermissionService {

	
	private SysPermissionMapper mapper;

	@Autowired
	public void setMapper(SysPermissionMapper mapper) {
		this.mapper = mapper;
		super.setMapper(mapper);
	}
	

}
