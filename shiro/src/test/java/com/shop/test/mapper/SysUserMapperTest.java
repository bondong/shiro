package com.shop.test.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.shop.common.entity.SysUser;
import com.shop.common.mapper.SysUserMapper;

import tk.mybatis.mapper.entity.Example;

public class SysUserMapperTest {

	private SysUserMapper sysUserMapper;

	@Before
	public void setUp() throws Exception {
		// 完成newUserMapper的初始化
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"spring*.xml");
		sysUserMapper = context.getBean("sysUserMapper", SysUserMapper.class);
	}

	@Test
	public void testSelectOne() {
		SysUser user = new SysUser();
		user.setId(1);
		SysUser selectOne = sysUserMapper.selectOne(user);
		System.out.println("test selectOne start>>>>>>>>>>>>>>>>>>>");
		System.out.println(selectOne);
		System.out.println("test selectOne end>>>>>>>>>>>>>>>>>>>>>");
	}

/*	@Test
	public void testSelect() {

		List<SysUser> lists = sysUserMapper.select(null);
		for (SysUser user : lists) {
			System.out.println(user);
		}

	}

	@Test
	public void testSelectCount() {
		System.out.println(sysUserMapper.selectCount(null));
	}

	@Test
	public void testSelectByPrimaryKey() {
		System.out.println(sysUserMapper.selectByPrimaryKey(1L));
	}

	@Test
	public void testInsert() {
	}

	@Test
	public void testInsertSelective() {
	}

	@Test
	public void testDelete() {
	}

	@Test
	public void testDeleteByPrimaryKey() {
	}

	@Test
	public void testUpdateByPrimaryKey() {
	}

	@Test
	public void testUpdateByPrimaryKeySelective() {
	}

	@Test
	public void testSelectCountByExample() {
		// 根据多个id查询用户信息
		List<Object> ids = new ArrayList<Object>();
		ids.add(1);
		ids.add(2);
		ids.add(3);
		Example example = new Example(SysUser.class);
		example.createCriteria().andIn("id", ids);
		List<SysUser> list = this.sysUserMapper.selectByExample(example);
		for (SysUser user : list) {
			System.out.println(user);
		}

	}

	@Test
	public void testDeleteByExample() {
		Example example = new Example(SysUser.class);
		example.createCriteria().andBetween("age", 80, 90);
		sysUserMapper.deleteByExample(example);
	}

	@Test
	public void testSelectByExample() {
	}

	@Test
	public void testUpdateByExampleSelective() {
	}

	@Test
	public void testUpdateByExample() {
	}
*/
}
