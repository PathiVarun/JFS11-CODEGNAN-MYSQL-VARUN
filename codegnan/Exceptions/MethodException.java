package com.codegnan.Exceptions;

public class MethodException {

	public static void main(String[] args) {
		try {
			System.out.println("statement 1");
			System.out.println(10 / 0);
			
		} /*catch (Exception e) {
			e.printStackTrace(); // printStackTrace Method
			System.out.println(e); // toString Method
			System.out.println(e.getMessage()); // getMessage Method
		}*/
		
		catch (Exception e) {
			System.out.println("statement 6");
		}
		
		finally {
			System.out.println("statement 7");
		}
	}

}
