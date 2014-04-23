#include <stdio.h>

int main(){

  int i = 1;
  while(i<=10){
    printf("In while loop %d\n", i);
    i++;
  }

  int j = 1;
  for(; j<=10; j++){
    printf("For loop %d\n", j);
  }

  int k = 1;
  do {
    printf("Do-while loop %d\n", k);
    k++;
  } while(k <= 10);

  return 0;
}
