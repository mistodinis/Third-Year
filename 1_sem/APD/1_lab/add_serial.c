#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

/*
    schelet pentru exercitiul 5
*/
#define NUM_THREADS 3

int* arr;
int array_size;

int min(int a , int b){

    if(a > b)
        return b;

    return a;
}

void *f(void *arg){
    long id = *(long *)arg;

    int start = id * (double)array_size / NUM_THREADS;
    int end = min((id + 1) * (double)array_size/NUM_THREADS , array_size);

    for(int k = start; k < end;k++){
        printf(" %ld || %d  test \n" , id , k );
    }

    pthread_exit(NULL);
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        perror("Specificati dimensiunea array-ului\n");
        exit(-1);
    }

    pthread_t threads[NUM_THREADS];
    long arguments[NUM_THREADS];
    int r;

    array_size = atoi(argv[1]);

    arr = malloc(array_size * sizeof(int));
    for (int i = 0; i < array_size; i++) {
        arr[i] = i;
    }

    // for (int i = 0; i < array_size; i++) {
    //     printf("%d", arr[i]);
    //     if (i != array_size - 1) {
    //         printf(" ");
    //     } else {
    //         printf("\n");
    //     }
    // }

    // TODO: aceasta operatie va fi paralelizata
    for(long thread = 0;thread < NUM_THREADS;thread++){
        arguments[thread] = thread;
        r = pthread_create(&threads[thread], NULL, f, &arguments[thread]);


        if(r){
            printf("Eroare la deschiderea threadului");
        }
  
    }
    
    pthread_exit(NULL);
    // for (id = 0; id < NUM_THREADS; id++) {
	// 	r = pthread_join(threads[id], &status);

	// 	if (r) {
	//   		printf("Eroare la asteptarea thread-ului %ld\n", id);
	//   		exit(-1);
	// 	}
  	// }
}
