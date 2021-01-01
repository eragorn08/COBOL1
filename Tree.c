// C program for different tree traversals 
#include <stdio.h> 
#include <stdlib.h> 

/* A binary tree node has data, pointer to left child 
and a pointer to right child */
struct node 
{ 
	char data; 
	struct node* left; 
	struct node* right; 
}; 

/* Helper function that allocates a new node with the 
given data and NULL left and right pointers. */
struct node* newNode(int data) 
{ 
	struct node* node = (struct node*) 
								malloc(sizeof(struct node)); 
	node->data = data; 
	node->left = NULL; 
	node->right = NULL; 

	return(node); 
} 

/* Given a binary tree, print its nodes according to the 
"bottom-up" postorder traversal. */
void printPostorder(struct node* node) 
{ 
	if (node == NULL) 
		return; 

	// first recur on left subtree // C program for different tree traversals 
#include <stdio.h> 
#include <stdlib.h> 

/* A binary tree node has data, pointer to left child 
and a pointer to right child */
struct node 
{ 
	char data; 
	struct node* left; 
	struct node* right; 
}; 

/* Helper function that allocates a new node with the 
given data and NULL left and right pointers. */
struct node* newNode(int data) 
{ 
	struct node* node = (struct node*) 
								malloc(sizeof(struct node)); 
	node->data = data; 
	node->left = NULL; 
	node->right = NULL; 

	return(node); 
} 

/* Given a binary tree, print its nodes according to the 
"bottom-up" postorder traversal. */
void printPostorder(struct node* node) 
{ 
	if (node == NULL) 
		return; 

	// first recur on left subtree 
	printPostorder(node->left); 

	// then recur on right subtree 
	printPostorder(node->right); 

	// now deal with the node 
	printf("%c ", node->data); 
} 

/* Given a binary tree, print its nodes in inorder*/
void printInorder(struct node* node) 
{ 
	if (node == NULL) 
		return; 

	/* first recur on left child */
	printInorder(node->left); 

	/* then print the data of node */
	printf("%c ", node->data); 

	/* now recur on right child */
	printInorder(node->right); 
} 

/* Given a binary tree, print its nodes in preorder*/
void printPreorder(struct node* node) 
{ 
	if (node == NULL) 
		return; 

	/* first print data of node */
	printf("%c ", node->data); 

	/* then recur on left sutree */
	printPreorder(node->left); 

	/* now recur on right subtree */
	printPreorder(node->right); 
}	 

/* Driver program to test above functions*/
int main() 
{ 
	struct node *root = newNode('A'); 
	root->left			 = newNode('B'); 
	root->right		 = newNode('E'); 
	root->left->left	 = newNode('C'); 
	root->left->right = newNode('\0');
	/*Node  L-SubTree  R-SubTree*/
	/*Print Root*/
	printf("\nRoot of the Tree: ",*root);

	printf("\nPreorder traversal of binary tree is \n"); 
	printPreorder(root); 

	printf("\nInorder traversal of binary tree is \n"); 
	printInorder(root); 

	printf("\nPostorder traversal of binary tree is \n"); 
	printPostorder(root); 

	getchar(); 
	return 0; 
} 

	printPostorder(node->left); 

	// then recur on right subtree 
	printPostorder(node->right); 

	// now deal with the node 
	printf("%c ", node->data); 
} 

/* Given a binary tree, print its nodes in inorder*/
void printInorder(struct node* node) 
{ 
	if (node == NULL) 
		return; 

	/* first recur on left child */
	printInorder(node->left); 

	/* then print the data of node */
	printf("%c ", node->data); 

	/* now recur on right child */
	printInorder(node->right); 
} 

/* Given a binary tree, print its nodes in preorder*/
void printPreorder(struct node* node) 
{ 
	if (node == NULL) 
		return; 

	/* first print data of node */
	printf("%c ", node->data); 

	/* then recur on left sutree */
	printPreorder(node->left); 

	/* now recur on right subtree */
	printPreorder(node->right); 
}	 

/* Driver program to test above functions*/
int main() 
{ 
	struct node *root = newNode('A'); 
	root->left			 = newNode('B'); 
	root->right		 = newNode('E'); 
	root->left->left	 = newNode('C'); 
	root->left->right = newNode('\0');
	/*Node  L-SubTree  R-SubTree*/
	/*Print Root*/
	printf("\nRoot of the Tree: ",*root);

	printf("\nPreorder traversal of binary tree is \n"); 
	printPreorder(root); 

	printf("\nInorder traversal of binary tree is \n"); 
	printInorder(root); 

	printf("\nPostorder traversal of binary tree is \n"); 
	printPostorder(root); 

	getchar(); 
	return 0; 
} 
