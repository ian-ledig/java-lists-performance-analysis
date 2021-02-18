package com.test.array;

import com.test.ElementsManagement;

import java.util.Vector;

public class VectorTest extends Vector implements ElementsManagement {
    @Override
    public void insertValue(int element, int position) {
        insertElementAt(element, position);
    }

    @Override
    public void removeValue(int position) {
        remove(position);
    }

    @Override
    public int getValue(int position) {
        return (int)get(position);
    }
}
