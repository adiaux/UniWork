
public class BSTDriver {
	public static void main(String[] args) {
		BST b =new BST();
		b.Insert(50);
		b.Insert(20);
		b.Insert(80);
		b.Insert(10);
		b.Inorder();
		System.out.println();
		b.rotate();
		b.Inorder();
		System.out.println();
		System.out.println(b.height());
	}
}

