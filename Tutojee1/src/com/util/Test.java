package com.util;

public class Test {

	public static void main(String[] args) {
		UserManager um=new UserManager();
		User u = um.findUserById(7);
		System.out.println(u.toString());

	}

}
