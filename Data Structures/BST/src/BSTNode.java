public class BSTNode {
	int data;
	BSTNode left;
	BSTNode right;
	
	public BSTNode() {};
	public BSTNode(int d) {
		data = d;
	}
	public void Insert(int value) {
		if(value < data) {
			if (left == null)
				left = new BSTNode(value);
			else
				left.Insert(value);
		}
		else {
			if (right == null)
				right = new BSTNode(value);
			else
				right.Insert(value);
			}
	}
	public void Inorder() {
		if (left != null)
			left.Inorder();
		System.out.print(data + " ");
		if (right != null)
			right.Inorder();
	}
	public boolean printLevel(BSTNode root,int h)
	{
		if(root == null)
			return false;
		if(h == 1)
		{
			System.out.print(root.data + " "); //print value
			return true;
		}
		boolean left = printLevel(root.left , h-1); //recursion on left
		boolean right = printLevel(root.right , h-1); //recursion on right
		
		return left || right; //returning for while loop
	}
	public int height() 
	{ 
		if(left==null && right==null)
            return 0;
        else if(left!=null && right==null)
            return left.height()+1;
        else if(right!=null && left==null)
            return right.height()+1;
        else 
        {
            if(left.height()>right.height())
                return left.height()+1;
            else
                return right.height()+1;
        }
	}

}

