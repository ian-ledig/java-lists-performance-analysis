import java.util.ArrayList;
import java.util.Random;

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
  /******************************************/
    @Override
    public void removeValue_first() {
        remove(0);
    }

    @Override
    public void changeValue_first() {
      Random rd = new Random();
      set(0,rd.nextInt(VAL_MAX - VAL_MIN));
    }
    @Override
    public int getValue_first() {
        return (int) get(0);
    }
    /******************************************/
    @Override
    public void removeValue_middle() {
      if(size()%2==0)
          remove(size() / 2);
      else remove(size()/2 +1);
    }

    @Override
    public void changeValue_middle() {
      Random rd = new Random();
          if(size()%2==0)
              set(size() / 2,rd.nextInt(VAL_MAX - VAL_MIN));
          else set(size()/2 +1,rd.nextInt(VAL_MAX - VAL_MIN));
    }
    @Override
    public int getValue_middle() {
      if(size()%2==0)
          return (int) get(size() / 2);
      else return (int) get((size() / 2) + 1);
    }
    /******************************************/
    @Override
    public void removeValue_last() {
            remove(size()-1);
    }

    @Override
    public void changeValue_last() {
      Random rd = new Random();
          set(size()-1,rd.nextInt(VAL_MAX - VAL_MIN));
      }
    
    @Override
    public int getValue_last() {
          return (int) get(size()-1);
    }
    /******************************************/
	@Override
	public void affiche() {
		for (int i = 0; i < size(); i++) {
			System.out.println(get(i));
		}
		
	}
}

