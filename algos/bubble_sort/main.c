#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int main(){
	int array[] = {1, 3, 5, 2, 22, 123, 1, 23, 1234, 12, 4, 6, 10, 11, 13, 99, 12, 32, 54, 1000, 12343, 99999, 5256, 2562, 4625, 4672, 2125, 3623, 32132, 12, 4235, 2356, 236, 231, 236, 6745, 124, 1245, 213, 564, 235, 654, 753, 632, 62323, 2345, 6467, 432, 3221, 1215, 115, 120, 0124, 1245, 1561, 124, 532, 64, 12, 1245, 151, 125, 512, 53124, 564, 236, 5252, 536, 67, 377, 7878, 324, 77834, 4737, 322, 7723, 234, 6235, 782, 2124, 00};
	int swaps=0;
	size_t array_size=0;

	for (array_size;array[array_size]!=0;array_size++); // Calculating Array Size

	while (1){
		swaps=0;
		for (int i=0, j=1; j<array_size; i++ && j++){
			if (array[j]<array[i]){
				int tmp=array[i];
				array[i]=array[j];
				array[j]=tmp;
				swaps=1;
			}
		}
		if (!swaps) break;
	}
	printf("Sorted!: [%i, %i, %i, %i, %i, ...]\n", array[0], array[1], array[2], array[3], array[4]);
}
