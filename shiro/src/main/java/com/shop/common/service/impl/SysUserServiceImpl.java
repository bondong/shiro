package com.shop.common.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.common.base.impl.BaseServiceImpl;
import com.shop.common.entity.SysUser;
import com.shop.common.mapper.SysUserMapper;
import com.shop.common.service.SysUserService;

@Service
public class SysUserServiceImpl extends BaseServiceImpl<SysUser, Integer> implements SysUserService {

	
	private SysUserMapper mapper;

	@Autowired
	public void setMapper(SysUserMapper mapper) {
		this.mapper = mapper;
		super.setMapper(mapper);
	}
	

}
