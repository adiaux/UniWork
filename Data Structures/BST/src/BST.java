public class BST {
	BSTNode root;
	public void Insert(int value) {
		if (root == null)
			root = new BSTNode(value);
		else
			root.Insert(value);
	}
	public void Inorder() {
		if (root == null)
			return;
		else
			root.Inorder();
	}
	
	public void rotate()
    {
        BSTNode temp = root.left;
        root.left = root.right;
        root.right = temp;
    }
	public int height() {
		if(root==null)
			return 0;
		else
			return root.height();
	}
}
