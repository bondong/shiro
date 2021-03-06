package com.shop.common.base.impl;



import java.io.Serializable;
import java.util.List;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shop.common.base.BaseService;
import com.shop.common.base.CommonMapper;


public  class BaseServiceImpl<T, PK extends Serializable> implements BaseService<T, Integer>{

	
	private CommonMapper<T> mapper;
	
	public void setMapper(CommonMapper<T> mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public List<T> getAll(T record) {
		
		return mapper.select(record);
	}

	@Override
	public List<T> getAll() {
		return mapper.selectAll();
	}

	@Override
	public T get(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public T get(T record) {
		return mapper.selectOne(record);
	}

	@Override
	public int getCount(T record) {
		return mapper.selectCount(record);
	}

	@Override
	public int save(T record) throws RuntimeException {
		return mapper.insert(record);
	}

	@Override
	public int saveDefault(T record) throws RuntimeException {
		return mapper.insertSelective(record);
	}

	@Override
	public int update(T record) throws RuntimeException {
		return mapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateAll(T record) throws RuntimeException {
		return mapper.updateByPrimaryKey(record);
	}

	@Override
	public int delete(T record) throws RuntimeException {
		return mapper.delete(record);
	}

	@Override
	public int delete(Integer id) throws RuntimeException {
		
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<T> getByExample(Object example) {
		return mapper.selectByExample(example);
	}

	@Override
	public int getCountByExample(Object example) {
		
		return mapper.selectCountByExample(example);
	}

	@Override
	public int updateByExample(T record, Object example) throws RuntimeException {
		return mapper.updateByExampleSelective(record, example);
	}

	@Override
	public int deleteByExample(Object example) throws RuntimeException {
		return mapper.deleteByExample(example);
	}

	@Override
	public PageInfo<T> page(Integer pageNum, Integer pageSize) {
		 PageHelper.startPage(pageNum, pageSize);
		 List<T> lists = mapper.selectAll();
		 PageInfo<T> pageInfo = new PageInfo<T>(lists);
		return pageInfo;
	}

	@Override
	public PageInfo<T> page(Integer pageNum, Integer pageSize, T record) {
		PageHelper.startPage(pageSize, pageSize);
		List<T> lists = mapper.select(record);
		PageInfo<T> pageInfo = new PageInfo<T>(lists);
		return pageInfo;
	}

	@Override
	public PageInfo<T> pageExample(Integer pageNum, Integer pageSize, Object example) {
		PageHelper.startPage(pageNum, pageSize);
		List<T> lists = mapper.selectByExample(example);
		PageInfo<T> pageInfo = new PageInfo<T>(lists);
		return pageInfo;
	}


}
