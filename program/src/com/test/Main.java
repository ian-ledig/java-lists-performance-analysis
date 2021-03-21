package com.test;

import com.test.array.ArrayListTest;
import com.test.array.LinkedListTest;
import com.test.array.VectorTest;

public class Main {

    public static void main(String[] args) {
        if(args.length < 3){
            System.out.println("Usage : java Main <0/1/2> <Action> size");
            System.exit(1);
           
        }
        /********************************************************************************/
        int size = Integer.parseInt(args[2]);
        
        if(size > 0){
        	ElementsManagement structure ;
        	
        	int choix_struct =Integer.parseInt(args[0]);
        	System.out.println(choix_struct);
        	
            if (choix_struct==0)
            {
            	
            	 structure = new ArrayListTest();
			}
            else if (choix_struct==1) {
            
            	 structure = new LinkedListTest();
			} 
            else {
            	
            	 structure = new VectorTest();
			}
            int choix_action =Integer.parseInt(args[1]);
        	System.out.println(choix_struct);
        	
            if (choix_action==0)
            {
            	insert(size, structure);
			}
            else if (choix_action==1) {
            	removeValue_first(size, structure);
			} 
            else if (choix_action==2) {
            	removeValue_middle(size, structure);
			} 
            else if (choix_action==3) {
            	removeValue_last(size, structure);
			} 
            else if (choix_action==4) {
            	changeValue_first(size, structure);
			} 
            else if (choix_action==5) {
            	changeValue_middle(size, structure);
			} 
            else if (choix_action==6) {
            	changeValue_last(size, structure);
			} 
            else if (choix_action==7) {
            	getValue_first(size, structure);
			} 
            else if (choix_action==8) {
            	getValue_middle(size, structure);
			} 
           
            else {
            	getValue_last(size, structure);
			}
            
        }
        else{
            System.out.println("Please select a larger value");
            System.exit(1);
        }
    }
    /********************************************************************************/  
    public static void insert(int size, ElementsManagement structure){
        for (int i = 0; i < size; i++) {
            structure.insertValue(i, i);}
        
    }

    public static void removeValue_first(int size, ElementsManagement structure){
        insert(size, structure);
        structure.removeValue_first();
        
    }
    public static void removeValue_middle(int size, ElementsManagement structure){
        insert(size, structure);
        structure.removeValue_middle();
      
    }
    public static void removeValue_last(int size, ElementsManagement structure){
        insert(size, structure);
        structure.removeValue_last();
    }
    
    /********************************************************************************/
    
    public static void changeValue_first(int size, ElementsManagement structure){
        insert(size, structure);
        structure.changeValue_first();
       
    }
    public static void changeValue_middle(int size, ElementsManagement structure){
        insert(size, structure);
        structure.changeValue_middle();
        
    }
    public static void changeValue_last(int size, ElementsManagement structure){
        insert(size, structure);
        structure.changeValue_last();
    }
    /********************************************************************************/
    
    public static void getValue_first(int size, ElementsManagement structure){
        insert(size, structure);
        structure.getValue_first();
        
    }
    public static void getValue_middle(int size, ElementsManagement structure){
        insert(size, structure);
        structure.getValue_middle();

    }
    public static void getValue_last(int size, ElementsManagement structure){
        insert(size, structure);
        structure.getValue_last();

    }
}