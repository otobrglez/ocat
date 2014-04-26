#include <stdio.h>

int main(){

  int i = 1;
	printf("While: ");
  while(i<=10){
    printf("%d ", i);
    i++;
  }
	printf("\n");

  int j = 1;
	printf("For: ");
  for(; j<=10; j++){
    printf("%d ", j);
  }
	printf("\n");

  int k = 1;
	printf("Do: ");
  do {
    printf("%d ", k);
    k++;
  } while(k <= 10);
	printf("\n");

  return 0;
}
