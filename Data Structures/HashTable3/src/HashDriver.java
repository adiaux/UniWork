
public class HashDriver {

	public static void main(String[] args) {
		HashTable h=new HashTable();
		h.put(12, 5);
		h.put(112,13);
		h.put(34, 5);
		System.out.println(h.contains(13));
		h.remove(12);
		h.print();

	}

}
