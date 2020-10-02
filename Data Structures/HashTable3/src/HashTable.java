import java.util.*;
public class HashTable {
	int size=100;
	HashNode [] harr= new HashNode[size];
	int Hash(int key) {
		return key%size;
	}
	
	void put(int k,int v) {
		HashNode hn= new HashNode(k,v);
		int index=Hash(k);
		if (harr[index]==null){
			harr[index]=hn;
		}
		else {
			for(int i=index;i<harr.length;i++) {
				if(harr[i]==null) {
					harr[i]=hn;
					break;
					}
				}
			}
		}
	
	
	public void print() {
		for(int i =0;i<harr.length;i++) {
			if(harr[i]!=null)
				System.out.println(harr[i].key+":"+harr[i].value);
		}
	}
	
	int get(int k) {
		HashNode hn = harr[Hash(k)];
		if(hn==null)
			return Integer.MAX_VALUE;
		else
			return hn.value;
	}
	
	boolean contains(int k) {
		if(harr[Hash(k)]==null)return false;
		else
			return true;
	}
	
	void remove(int k) {
		HashNode hn=harr[Hash(k)];
		hn=null;
		harr[Hash(k)]=hn;
	}
	
	
	}
	

