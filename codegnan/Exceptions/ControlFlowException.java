package com.codegnan.Exceptions;

public class ControlFlowException {

	public static void main(String[] args) {
		
		  try { System.out.println("statement 1"); System.out.println("statement 2");
		 System.out.println("statement 3"); } catch(Exception e) {
		  System.out.println("statement 4"); } System.out.println("statement 5");
		 
		 
		/*try {
			System.out.println(10 / 0);
			System.out.println("statement 2");
			System.out.println("statement 3");
		} catch (Exception e) { 
			System.out.println("statement 4");
		}
			System.out.println("statement 5");
					
			*/
			
		/*	try {
				
				System.out.println("statement 1");
				System.out.println(10 / 0);
				System.out.println("statement 3");
			} catch (Exception e) { 
				System.out.println("statement 4");
			}
				System.out.println("statement 5");
				
				*/
			/*		try {
					
					System.out.println("statement 1");
					System.out.println("statement 2");
					System.out.println(10 / 0);
				} catch (Exception e) { 
					System.out.println("statement 4");
				}
					System.out.println("statement 5");
					
					*/


	}

}
