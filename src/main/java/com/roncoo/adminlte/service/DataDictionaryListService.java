/*
 * Copyright 2015-2016 RonCoo(http://www.roncoo.com) Group.
 *  
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *  
 *      http://www.apache.org/licenses/LICENSE-2.0
 *  
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.roncoo.adminlte.service;

import java.util.List;

import com.roncoo.adminlte.bean.entity.RcDataDictionaryList;
import com.roncoo.adminlte.util.base.Page;

/**
 * 数据字典明细服务功能
 * 
 * @author LYQ
 */
public interface DataDictionaryListService {

	/**
	 * 分页查询
	 * 
	 * @param fieldCode
	 * @param pageCurrent
	 * @param pageSize
	 * @return
	 */
	Page<RcDataDictionaryList> listForPage(int pageCurrent, int pageSize, String fieldCode);

	/**
	 * 添加记录
	 * 
	 * @param dList
	 */
	int save(RcDataDictionaryList dList);

	/**
	 * 根据id删除
	 * 
	 * @param id
	 */
	int deleteById(Long id);

	/**
	 * 删除
	 * 
	 * @param dList
	 */
	int deleteByFieldCode(String fieldCode);

	/**
	 * 根据fieldCode查询
	 * 
	 * @param fieldCode
	 * @return
	 */
	List<RcDataDictionaryList> listByFieldCode(String fieldCode);

	/**
	 * 根据id查询
	 * 
	 * @param id
	 * @return
	 */
	RcDataDictionaryList queryById(Long id);

	/**
	 * 更新
	 * 
	 * @param dList
	 * @return
	 */
	int update(RcDataDictionaryList dList);
	
	/**
	 * 根据fieldCode更新
	 * 
	 * @param fieldCodePremise
	 * @param fieldCode
	 * @return
	 */
	int updateForFieldCode(String fieldCodePremise,String fieldCode);
}