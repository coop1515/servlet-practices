package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.vo.GuestBookVo;



public class GuestBookDaoTest {

	public static void main(String[] args) {
//		testInsert();
		testDelete();

		testFindAll();

	}
	private static void testDelete() {
		GuestBookVo vo = new GuestBookVo();
		vo.setNo(3L);
		vo.setPassword("1234");	
		new GuestBookDao().delete(vo);
		
		
	}
	private static void testInsert() {
		GuestBookVo vo = new GuestBookVo();
		vo.setName("김현석");
		vo.setPassword("1234");
		vo.setMessage("michol@gmail.com");
		new GuestBookDao().insert(vo);
		
	}

	private static void testFindAll() {
		List<GuestBookVo> list = new GuestBookDao().findAll();
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}
}
