package com.regnant;

public class arrays 
{
    public static void main(String[] args) 
    {
		int a[]= {12,23,34,56,67,78};
		for(int i=0; i<a.length; i++)
		{
			System.out.println("the value of array a["+i+"]="+a[i]);
		}
		System.out.println("the values of array in back order is:");
       	for (int i=a.length-1; i>=0; i--)
       	{
       		System.out.println(a[i]);
       	}
       
    }
}
