package com.shop.common.service;

import java.util.List;

import com.shop.common.base.BaseService;
import com.shop.common.entity.UserInfo;

public interface UserInfoService extends BaseService<UserInfo, Integer> {
	
	/**
	 * 保存用户信息
	 * 
	 * @param user
	 * @return
	 */
	public String saveUserInfo(UserInfo userInfo);
	
	/**
	 * 获取用户分页信息
	 * 
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public List<UserInfo> listUserInfo(); 

}
