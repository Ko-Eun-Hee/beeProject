package com.fourmeeting.bee.beesuser.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.fourmeeting.bee.bees.model.vo.Bees;
import com.fourmeeting.bee.beesuser.model.dao.BeesUserDAO;
import com.fourmeeting.bee.beesuser.model.vo.BeesUser;
import com.fourmeeting.bee.beesuser.model.vo.BeesUserList;
import com.fourmeeting.bee.beesuser.model.vo.MyBeesUser;

@Service("BeesUserService")
public class BeesUserService {
	
	@Resource(name="BeesUserDAO")
	private BeesUserDAO userDAO;
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	public int userCount(int beesNo) {
		// TODO Auto-generated method stub
		
		int userCount = userDAO.userCount(sqlSession,beesNo);
		return userCount;
	}

	public BeesUser userSelectOne(int memberNo, int beesNo) {
		// TODO Auto-generated method stub
		
		BeesUser user = userDAO.userSelectOne(sqlSession,memberNo,beesNo);
		return user;
	}

	public int insertBeesUser(BeesUser user) {
		// TODO Auto-generated method stub
		
		int result = userDAO.insertBeesUser(sqlSession,user);
		return result;
	}

	public List<Integer> selectAllBeesNo(int memberNo) {
		// TODO Auto-generated method stub
		List<Integer> beesNo = userDAO.selectAllBeesNo(sqlSession, memberNo);
		return beesNo;
	}
	
	
	
	

	/*------------solm----------*/
public ArrayList<BeesUserList> selectBeesUser(String mainpage_option) {
		
		System.out.println("[BeesUser-Service] 호출");
		
		ArrayList<BeesUserList> list = userDAO.selectBeesUser(sqlSession, mainpage_option);
		
		return list;
		
	}


	public ArrayList<BeesUserList> selectBeesUserSearch(String keyword, String option) {
		System.out.println("[BeesUserSearch-Service] 호출");
		
		ArrayList<BeesUserList> list = userDAO.selectBeesUserSearch(sqlSession, keyword, option);
		return list;
		
	}


	public ArrayList<BeesUserList> selectBeesApplicant() {
		System.out.println("[beesApplicant-Service] 호출");
		ArrayList<BeesUserList> list = userDAO.selectBeesApplicant(sqlSession);
		return list;
		
	}


	public int updateBeesUserRefusal(String userName) {
		System.out.println("[BeesUserRefusal-Service] 호출");
		int result = userDAO.updateBeesUserRefusal(userName, sqlSession);
		return result;
		
	}


	public int updateBeesUserApproval(String userName) {
		int result  = userDAO.updateBeesUserApproval(userName, sqlSession);
		return result;
		
	}


	public BeesUser selectBeesUserClass(int memberNo) {
		BeesUser beesUser = userDAO.selectBeesUserClass(sqlSession, memberNo);
		return beesUser;
	}


	public ArrayList<BeesUserList> selectBeesUserWaiters() {
		ArrayList<BeesUserList> WaitersList = userDAO.selectBeesUserWaiters(sqlSession);
		return (ArrayList<BeesUserList>)WaitersList;
		
	}
	
	
	//사용자------------------------------------------------------------------------------
	//비즈가입확인(가입 신청중인 비즈)
	public ArrayList<MyBeesUser> beesJoinAsk(int memberNo) {

		ArrayList<MyBeesUser> list = userDAO.beesJoinAsk(memberNo, sqlSession);
		
		return list;
	}




	//비즈가입확인(가입신청내역)
	public ArrayList<MyBeesUser> beesJoinHistory(MyBeesUser mbu) {
		
		ArrayList<MyBeesUser> list = userDAO.beesJoinHistory(mbu, sqlSession);
		
		return list;
		
	}



	//비즈가입취소
	public int joinQnaCancel(int userNo) {
		
		int result = userDAO.joinQnaCancel(sqlSession,userNo);
		return result;
	}



	//가입내역 페이징
	public int totalbeesJoinHistory(int memberNo) {

		int totalPage = userDAO.totalbeesJoinHistory(sqlSession,memberNo);
		
		return totalPage;
	}
	
	
}
