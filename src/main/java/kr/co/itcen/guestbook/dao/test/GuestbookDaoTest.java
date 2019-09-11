package kr.co.itcen.guestbook.dao.test;

import kr.co.itcen.guestbook.dao.GuestbookDao;
import kr.co.itcen.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		insertTest();
	}

	public static void insertTest() {
		GuestbookVo vo = new GuestbookVo();
		System.out.println(vo);
		new GuestbookDao().insert(vo);
	}

}
