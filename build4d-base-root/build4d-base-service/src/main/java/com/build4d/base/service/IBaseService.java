package com.build4d.base.service;

import com.build4d.base.dbaccess.dao.BaseMapper;
import com.build4d.base.dbaccess.dao.GeneralMapper;
import com.github.pagehelper.PageInfo;
import org.mybatis.spring.SqlSessionTemplate;

import java.util.List;
import java.util.Map;

/**
 * @Author: zhuangrb
 * @Date: 2018/4/5
 * @Description:
 * @Version 1.0.0
 */
public interface IBaseService<T> {

    void setGeneralMapper(GeneralMapper _generalMapper);

    void setSqlSessionTemplate(SqlSessionTemplate _sqlSessionTemplate);

    void setDefaultBaseMapper(BaseMapper<T> _defaultBaseMapper);

    int deleteByKey(int id);

    int deleteAll();

    int add(T record);

    int addSelective(T record);

    T getByPrimaryKey(int id);

    T getByPrimaryKey(String id);

    List<T> selectAll();

    List<T> searchByMap(Map<String,Object> searchItemMap);

    int updateByKeySelective(T record);

    int updateByKey(T record);

    int save(int id, T record);

    int save(String id, T record);

    int saveBySelective(int id, T record);

    int saveBySelective(String id, T record);

    int saveBySelective(int id, T record,IAddBefore<T> addBefore);

    int saveBySelective(String id, T record,IAddBefore<T> addBefore);

    PageInfo<T> getPage(int pageNum, int pageSize);

    PageInfo<T> getPage(int pageNum, int pageSize, Map<String,Object> searchItemMap);

    List<T> getALL();

    int getNextId();

    int getNextOrderNum();
}
