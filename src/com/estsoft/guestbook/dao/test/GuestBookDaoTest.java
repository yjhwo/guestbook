package com.estsoft.guestbook.dao.test;

import java.util.List;

import com.estsoft.db.MySQLWebDBConnection;
import com.estsoft.guestbook.dao.GuestBookDAO;
import com.estsoft.guestbook.vo.GuestBookVO;

public class GuestBookDaoTest {

	public static void main(String[] args) {
//		getInsertTest();
		//getListTest();
		getDeleteTest();
	}
	
	private static void getDeleteTest() {
		GuestBookDAO dao = new GuestBookDAO(new MySQLWebDBConnection());
		dao.delete(7, "1");
		
	}

	public static void getInsertTest() {

		GuestBookDAO dao = new GuestBookDAO(new MySQLWebDBConnection());
		GuestBookVO vo = new GuestBookVO(null, "둘리", null, "hiiii", "1234");
		dao.insert(vo);
	}
	
	public static void getListTest() {
		// 다른게 필요할 경우엔 다른 DBConnection을 구현하고 호출하는 곳에서만 바꿔 껴주면된다.↓
		GuestBookDAO dao = new GuestBookDAO(new MySQLWebDBConnection());
		List<GuestBookVO> list = dao.getList();
		
		for (GuestBookVO vo : list) {
			System.out.println(vo);
		}
	}

}
