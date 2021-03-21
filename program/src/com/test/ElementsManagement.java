package com.test;

public interface ElementsManagement {
	static int VAL_MAX = 10000000;
	static int VAL_MIN = 0;
	
    void insertValue(int element, int position);

   /******************************************/
   void removeValue_first();

   void changeValue_first();

   int getValue_first();
  /******************************************/
  void removeValue_middle();

  void changeValue_middle();

  int getValue_middle();
/******************************************/
  void removeValue_last();

  void changeValue_last();

  int getValue_last();
/******************************************/
}
