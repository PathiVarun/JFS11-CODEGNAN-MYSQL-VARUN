package com.codegnan.Exceptions;

public class Main {

	public static void main(String[] args) {
		System.out.println("statement 1");
		System.out.println("statement 2");

		// System.out.println(10 / 0); //Exception raises (Abnormal termination)
		// To convert Abnormal termination to Normal termination so we need to use
		// try-catch block

		// while using try we can use catch or finally

		try {
			System.out.println(10 / 0);
		} catch (Exception e) { // In catch block we can also write Exception instead of ArithmeticException.
			System.out.println("statement 3");
			System.out.println("statement 4");
			System.out.println("statement 5");

		}
		/*catch(ArithmeticException e) {
			e.printStackTrace();
			System.out.println("statement 6");
		}*/
	}

}
