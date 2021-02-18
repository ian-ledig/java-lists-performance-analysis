package com.test;

import com.test.array.ArrayListTest;
import com.test.array.LinkedListTest;
import com.test.array.VectorTest;

public class Main {

    public static void main(String[] args) {
        if(args.length < 3){
            System.out.println("Usage : java Main <0/1/2> <insert/remove/get size");
            System.exit(1);
        }

        int size = Integer.parseInt(args[2]);

        if(size > 0){
            ElementsManagement structure = switch (Integer.parseInt(args[0])) {
                case 0 -> new ArrayListTest();
                case 1 -> new LinkedListTest();
                default -> new VectorTest();
            };

            switch (args[1]) {
                case "insert" -> insert(size, structure);
                case "remove" -> remove(size, structure);
                case "get" -> get(size, structure);
            }
        }
        else{
            System.out.println("Please select a larger value");
            System.exit(1);
        }
    }

    public static void insert(int size, ElementsManagement structure){
        for (int i = 0; i < size; i++)
            structure.insertValue(i, i);
    }

    public static void remove(int size, ElementsManagement structure){
        insert(size, structure);
        structure.removeValue(0);
    }

    public static void get(int size, ElementsManagement structure){
        insert(size, structure);
        structure.getValue(0);
    }
}
