package com.codegnan.Exceptions;

//customized checked exception we use Exception , then we use throws keyword
//customized unchecked exception we  use Runtime Exception,we use throw keyword

class TooYoungException extends Exception{
	public TooYoungException(String message) {
		super(message);
	}
}

class TooOldException extends Exception{
	public TooOldException(String message) {
		super(message);
	}
}


public class CustomizedException {
	public void checkEligibility(int age) throws TooYoungException, TooOldException {
		if(age<18) {
			throw new TooYoungException("Marraige cannot be approved ... Your age is below 18 years");
		}
		else if(age>60) {
			throw new TooOldException("Young age is already crossed the marriage age.. Marraige cannot be possible ");
		}
		else {
			System.out.println("Marraige Approved! Details will be processed soon");
		}
	}
	public static void main(String[] args) {
		
		CustomizedException checker=new CustomizedException();
		try {
			checker.checkEligibility(67);
		} catch (TooYoungException | TooOldException e) {
			
			e.printStackTrace();
		}
	}

}
