package com.shop.common.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.common.base.impl.BaseServiceImpl;
import com.shop.common.entity.UserInfo;
import com.shop.common.mapper.UserInfoMapper;
import com.shop.common.service.UserInfoService;

@Service
public class UserInfoServiceImpl extends BaseServiceImpl<UserInfo, Integer>
implements UserInfoService  {

	private UserInfoMapper userInfoMapper;

	@Autowired
	public void setUserInfoMapper(UserInfoMapper userInfoMapper) {
		this.userInfoMapper = userInfoMapper;
		super.setMapper(userInfoMapper);
	}

	@Override
	public String saveUserInfo(UserInfo userInfo) {
		try {
			userInfoMapper.insert(userInfo);
			return "保存成功";
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return "保存失败";
		}
	}

	@Override
	public List<UserInfo> listUserInfo() {
		return userInfoMapper.selectAll();
	}
	
}
