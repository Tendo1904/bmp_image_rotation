
#include "../include/bmp.h"

int main(int argc, char** argv){
    //const char* filename = "D:/Clabs/bmp-image-rotation/input3.bmp";
    //const char* output_name ="D:/Clabs/bmp-image-rotation/output.bmp";

    if(argc_checker(argc) == YOU_SEEM_COOL){
        return open_bmp(argv[1],argv[2]);
    } else {return argc_checker(argc);}
}