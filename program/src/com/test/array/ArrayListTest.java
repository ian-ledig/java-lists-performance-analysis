package com.test.array;

import com.test.ElementsManagement;

import java.util.ArrayList;


public class ArrayListTest extends ArrayList implements ElementsManagement {

    @Override
    public void insertValue(int element, int position) {
        if(size() > 0){
            add(get(size() - 1));
            for(int i = size() - 1; i > position; i--){
                set(i, get(i - 1));
            }
            set(position, element);
        }
        else
            add(element);
    }

    @Override
    public void removeValue(int position) {
        remove(position);
    }

    @Override
    public int getValue(int position) {
        return (int) get(position);
    }
}
