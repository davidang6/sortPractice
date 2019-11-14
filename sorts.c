#include <stdio.h>
#include <stdlib.h>
#include "SLL.h"

int* partition(int* arr, int low, int high){
	int i=low-1, j, k;
	int pivot = arr[high];
	int temp;

	for (j=0; j<high; j++){
		if (arr[j] < pivot){
			i++;
			temp = arr[i];
			arr[i] = arr[j];
			arr[j] = temp;
		}
	}
	temp = arr[i+1];
	arr[i+1] = arr[high];
	arr[high] = temp;
	return arr;
}

struct List merge(struct List *list1, struct List *list2){
	struct Node *ptr1 = list1->head;
	struct Node *ptr2 = list2->head;
	struct List rtnList = SLL_new();

	while(ptr1 != NULL || ptr2 != NULL){
		if (ptr1 == NULL){
			SLL_append(&rtnList, ptr2->item);
			ptr2 = ptr2->next;
			continue;
		}
		if (ptr2 == NULL){
			SLL_append(&rtnList, ptr1->item);
			ptr1 = ptr1->next;
			continue;
		}
		if (ptr1->item <= ptr2->item){
			SLL_append(&rtnList, ptr1->item);
			ptr1 = ptr1->next;
		} else {
			SLL_append(&rtnList, ptr2->item);
			ptr2 = ptr2->next;
		}
	}
	return rtnList;
}


int main(){
	int arr[] = {10, 80, 30, 90, 40, 50, 70};

	int* newArr = partition(arr, 0, 6);
	int i=0;

	for (i;i<7;i++){
		printf("%i\n", newArr[i]);
	}
	/*
	int i;

	struct List list1 = SLL_new();
	struct List list2 = SLL_new();

	for (i = 0; i < 5; ++i) {
		SLL_append(&list1, i);
		SLL_append(&list2, i+1);
	}

	struct List mergedList = merge(&list1, &list2);

	while (!SLL_empty(&list1)) {
		printf("%d -> ", SLL_pop(&list1));
	}
	printf("\n");
	while (!SLL_empty(&list2)) {
		printf("%d -> ", SLL_pop(&list2));
	}
	printf("\n");
	while (!SLL_empty(&mergedList)) {
		printf("%d -> ", SLL_pop(&mergedList));
	}
	printf("\n");
	*/


	return 0;
}