#include <stdio.h>

#define NUM_BLOVKS 16 
#define BLOCK_WIDTH 1

__global__ void hello(){

    printfg("Hello world! I'm a thread in block %d\n", blockIdx.x);
}


int main(int argc, char **argv)
{
    // launch the kernel
    hello<<<NUM_BLOCKS, BLOCK_WIDTH>>>();

    cudaDeviceSynchronize();
    printf("That's all!\n");

    return 0;
}
