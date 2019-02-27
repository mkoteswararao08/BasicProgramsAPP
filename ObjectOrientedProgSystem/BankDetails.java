package com.regnant;

public class BankDetails 
{
   public static void main(String [] args)
   {
	   Salesman a= new Salesman();
	   a.expr=3;
	   a.communication();
	   a.productKnowledge();
	   
	   Customer b= new Customer();
	   b.accno=237456987;
	   b.limit=30000;
	   b.balance=20000;
	   System.out.println("customer bank account number:"+b.accno);
	   System.out.println("customer name:"+b.name);
	   b.withdraw();
	   b.deposit();
	   
	   Employee c=new Employee();
	   c.emplexpr=5;
	   c.empname="uma";
	   System.out.println("Employee name is:"+c.empname);
	   System.out.println("Employee experience:"+c.emplexpr+" years");
	   c.qualifications();
	   c.bankDetails();
	   
	   Lockers d= new Lockers();
	   d.cost=10000;
	   d.lockerSafety();
   }
}
