package P4a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Random;

public class Main {
    public static void main(String[] args) {
        Collection<Integer> collection;
        Random r = new Random();
        r.setSeed(System.currentTimeMillis());
        if (args.length < 4) {
            System.exit(1);
        }

	//On récupère les paramètres (TypeDeStructure/Taille/Opération/TailleOp) :
        String type = args[0];
        int size = Integer.parseInt(args[1]);
        String op = args[2];
        int nbrOperation = Integer.parseInt(args[3]);

	//Création de la structure choisie (ArrayList, LinkedList ou HashSet) :
        switch (args[0]) {
            default: {
                collection = new ArrayList<Integer>();
                break;
            }
            case "LinkedList": {
                collection = new LinkedList<Integer>();
                break;
            }
            case "Set": {
                collection = new HashSet<Integer>();
            }
        }

	//On remplie la structure de données aléatoires :
        for (int i = 0; i < size; ++i) {
            collection.add(r.nextInt());
        }

	//On effectue l'opération choisie (add, contains ou remove) :
        switch (op) {
            default: {
                for (int i = 0; i < nbrOperation; ++i) {
                    collection.add(r.nextInt());
                }
                break;
            }
            case "contains": {
                for (int i = 0; i < nbrOperation; ++i) {
                    collection.contains(r.nextInt());
                }
                break;
            }
            case "remove": {
                for (int i = 0; i < nbrOperation; ++i) {
                    collection.remove(r.nextInt());
                }
            }
        }
    }
}
