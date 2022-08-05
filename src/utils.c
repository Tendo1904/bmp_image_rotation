//
// Created by User on 12/28/2021.
//

#include "../include/bmp.h"

struct bmp_header print_header(const char* file){
    FILE* point;
    struct bmp_header header;

    point = fopen(file,"rb");
    fread(&header, sizeof(struct bmp_header),1,point);
    printf("bfType %" PRIu16 "\n"
                             "bfileSize %" PRIu32 "\n"
                                                  "bfReserved %" PRIu32 "\n"
                                                                        "bOffBits %" PRIu32 "\n"
                                                                                            "biSize %" PRIu32 "\n"
                                                                                                              "biWidth %" PRIu32 "\n"
                                                                                                                                 "biHeight %" PRIu32 "\n"
                                                                                                                                                     "biPlanes %" PRIu16 "\n"
                                                                                                                                                                         "biBitCount %" PRIu16 "\n"
                                                                                                                                                                                               "biCompression %" PRIu32 "\n"
                                                                                                                                                                                                                        "biSizeImage %" PRIu32 "\n"
                                                                                                                                                                                                                                               "biXPelsPerMeter %" PRIu32 "\n"
                                                                                                                                                                                                                                                                          "biYPelsPerMeter %" PRIu32 "\n"
                                                                                                                                                                                                                                                                                                     "biClrUsed %" PRIu32 "\n"
                                                                                                                                                                                                                                                                                                                          "biClrImportant %" PRIu32 "\n",


            header.bfType,header.bfileSize,header.bfReserved,header.bOffBits,header.biSize,header.biWidth,header.biHeight,header.biPlanes,header.biBitCount,header.biCompression,header.biSizeImage,header.biXPelsPerMeter,header.biYPelsPerMeter,header.biClrUsed,header.biClrImportant);
    return header;
}

enum write_status argc_checker(const size_t argc){
    if(argc>3){return TOO_MUCH_INFORMATION;}
    if(argc<3){return ARCHIVES_ARE_INCOMPLETE;}
    return YOU_SEEM_COOL;
}