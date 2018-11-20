package com.itheima.dao;

import com.itheima.po.User;
import com.itheima.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.List;


public class UserDao {


	public List<User> findAllUser() throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<User> user = sqlSession.selectList("com.itheima.mapper.UserMapper.findAllUser");
		sqlSession.close();
		return user;
	}


}
