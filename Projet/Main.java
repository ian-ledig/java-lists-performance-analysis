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
        	
        	//int choix_struct =Integer.parseInt(args[0]);
        	String choix_struct=args[0];
        	
        	
            if (choix_struct.equals("arraylist"))
            {
            	
            	 structure = new ArrayListTest();
			}
            else if (choix_struct.equals("linkedlist")) {
            
            	 structure = new LinkedListTest();
			} 
            
            else {
            	
            	 structure = new VectorTest();
			}
        
            String choix_action=args[1];
        	
            if (choix_action.equals("insert"))
            {
            	insert(size, structure);
			}
            else if (choix_action.equals("removeValue_first")) {
            	removeValue_first(size, structure);
			} 
            else if (choix_action.equals("removeValue_middle")) {
            	removeValue_middle(size, structure);
			} 
            else if (choix_action.equals("removeValue_last")) {
            	removeValue_last(size, structure);
			} 
            else if (choix_action.equals("changeValue_first")) {
            	changeValue_first(size, structure);
			} 
            else if (choix_action.equals("changeValue_middle")) {
            	changeValue_middle(size, structure);
			} 
            else if (choix_action.equals("changeValue_last")) {
            	changeValue_last(size, structure);
			} 
            else if (choix_action.equals("getValue_first")) {
            	getValue_first(size, structure);
			} 
            else if (choix_action.equals("getValue_middle")) {
            	getValue_middle(size, structure);
			} 
            else if (choix_action.equals("getValue_last")) {
            	getValue_last(size, structure);
			} 
            else {
            	System.out.println("error");
			}
            
        }
        else{
            System.out.println("Please select a larger value");
            System.exit(1);
        }
        
    }
    /********************************************************************************/  
    public static void insert(int size, ElementsManagement structure){
        for (int i = 0; i < size; i++) 
            structure.insertValue(i, i);
        	
        
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