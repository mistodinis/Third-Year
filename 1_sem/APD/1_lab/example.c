#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>



#define NUM_THREADS 3

long numberOfThreads(){
	return sysconf(_SC_NPROCESSORS_CONF);
}

void *f(void *arg) {
  	long id = *(long*) arg;
	
	for(int i = 1;i <= 100;i++){
  	printf("%d Hello World din thread-ul %ld!\n", i , id);
	}
  	pthread_exit(NULL);
}

int main(int argc, char *argv[]) {
	// long NUM_THREADS = numberOfThreads();
	pthread_t threads[NUM_THREADS];
  	int r;
  	long id;
  	void *status;
  	long arguments[NUM_THREADS];

  	for (id = 0; id < NUM_THREADS; id++) {
  		arguments[id] = id;
		r = pthread_create(&threads[id], NULL, f, &arguments[id]);

		if (r) {
	  		printf("Eroare la crearea thread-ului %ld\n", id);
	  		exit(-1);
		}
  	}

  	for (id = 0; id < NUM_THREADS; id++) {
		r = pthread_join(threads[id], &status);

		if (r) {
	  		printf("Eroare la asteptarea thread-ului %ld\n", id);
	  		exit(-1);
		}
  	}

  	pthread_exit(NULL);
}
