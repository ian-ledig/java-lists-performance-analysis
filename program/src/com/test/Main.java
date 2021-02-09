package com.test;

import com.test.array.ArrayListTest;

public class Main {

    public static void main(String[] args) {
        ArrayListTest list = new ArrayListTest();

        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        list.add(5);
        list.add(6);

        System.out.println(list);

        list.insertValue(20, 2);

        System.out.println(list);
    }
}
