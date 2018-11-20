package com.itheima.dao;
import java.util.List;

import com.itheima.po.User;
import com.itheima.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import com.itheima.po.Customer;

public class CustomerDao {


	public Customer findCustomerByIdTest(Integer id) throws Exception {

		SqlSession sqlSession = MybatisUtils.getSession();

		Customer customer = sqlSession.selectOne("com.itheima.mapper.CustomerMapper.findCustomerById", id);

		System.out.println(customer);

		sqlSession.close();
		return customer;
	}

	public List<Customer> findallll() throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.findallll");

		for(Customer c:customers){
			System.out.println(c);
		}

		sqlSession.close();
		return customers;
	}

	public void addCustomer(Customer customer) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		sqlSession.insert("com.itheima.mapper.CustomerMapper.addCustomer", customer);
		sqlSession.commit();

		sqlSession.close();
	}
	public void addCus(Customer customer) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		sqlSession.insert("com.itheima.mapper.CustomerMapper.addCus", customer);
		sqlSession.commit();

		sqlSession.close();
	}

	public void deleteCustomer(Integer id) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		sqlSession.delete("com.itheima.mapper.CustomerMapper.deleteCustomer", id);
		sqlSession.commit();

		sqlSession.close();
	}

	public void updateCustomer(Customer customer) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		sqlSession.update("com.itheima.mapper.CustomerMapper.updateCustomer", customer);
		sqlSession.commit();

		sqlSession.close();
	}

	public List<Customer> findCustomerByNameAndJobs(Customer customer) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.findCustomerByNameAndJobs", customer);

		sqlSession.close();
		return customers;
	}

	public List<Customer> findall() throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.findall","成功");

		sqlSession.close();
		return customers;
	}
	public List<Customer> a() throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.a","科技");

		sqlSession.close();
		return customers;
	}
	public List<Customer> aa() throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.aa","历史");

		sqlSession.close();
		return customers;
	}
	public List<Customer> aaa() throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.aaa","小说");

		sqlSession.close();
		return customers;
	}

	public Integer del(Integer[] ids) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		Integer num = sqlSession.delete("com.itheima.mapper.CustomerMapper.del",ids);

		sqlSession.commit();
		sqlSession.close();
		return num;
	}


	public  List<Customer> de(String name) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.de",name);

		sqlSession.close();
		return customers;
	}
	public  List<Customer> zhuchi(User user) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();
		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.zhuchi",user);

		sqlSession.close();
		return customers;
	}
	public List<Customer> geren() throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		List<Customer> customers = sqlSession.selectList("com.itheima.mapper.CustomerMapper.geren");

		sqlSession.close();
		return customers;
	}
	public String uname(User user) throws Exception {
		SqlSession sqlSession = MybatisUtils.getSession();

		  String a= String.valueOf(sqlSession.selectList("com.itheima.mapper.CustomerMapper.uname", user));


		sqlSession.close();


		return a;
	}
}
