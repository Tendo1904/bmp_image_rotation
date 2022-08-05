//
// Created by User on 1/25/2022.
//

#include "../include/bmp.h"
#include "../include/image.h"

static int write_bmp(const char* file, struct image image, struct bmp_header header){
    FILE* fp = fopen(file,"wb");
    uint32_t temp = header.biWidth;
    header.biWidth=header.biHeight;
    header.biHeight = temp;
    if(fwrite(&header,sizeof (struct bmp_header),1,fp)!= 1){return WRITE_ERROR;}
    uint32_t garbage = 3;
    for(size_t i = 0; i < image.height; i++) {
        if(fwrite(&(image.data[i * image.width]), sizeof(struct pixel), image.width, fp)== image.width &&
           fwrite(&garbage, 1, image.width % 4, fp)){
        } else {return WRITE_ERROR;}
    }
    fclose(fp);
    return YOU_SEEM_COOL;

}

static struct bmp_header get_header(const char* file){
    FILE *fp = fopen(file, "rb");
    struct bmp_header header;
    fread(&header, sizeof(struct bmp_header), 1, fp);
    fclose(fp);
    return header;
}

static struct image read_bmp(const char* file, struct bmp_header header) {
    FILE *fp = fopen(file, "rb");
    printf("%"PRIu32 "\n", header.biWidth);
    if (
            (header.bfType == 0x4D42) && (header.biSize == 40) &&
            (header.biCompression == 0) && (header.biBitCount == 24) &&
            (header.biPlanes == 1)) {
        fseek(fp, header.bOffBits, SEEK_SET);
        struct image picture = read_image(fp, header.biHeight, header.biWidth);
        fclose(fp);
        return picture;
    } else {
        fseek(fp, header.bOffBits, SEEK_SET);
        struct image picture = read_image(fp, header.biHeight, header.biWidth);
        picture.height = 0;
        picture.width = 0;
        fclose(fp);
        return picture;
    }
}

enum write_status open_bmp(const char* filename, const char* output_name){
    /*
    FILE* fp = fopen(filename,"rb");
    bmp_header_t header;
    if(fread(&header, sizeof(bmp_header_t),1,fp)!=1){return READ_ERROR;}
    printf("%"PRIu32 "\n",header.biWidth);
    if ((header.bfType != 0x4D42) || (header.biSize != 40) ||
        (header.biCompression != 0) || (header.biBitCount != 24) ||
        (header.biPlanes != 1)){
        fclose(fp);
        return READ_ERROR;
    } else {
        fseek(fp, header.bOffBits, SEEK_SET);*/
    struct bmp_header header = get_header(filename);
    struct image picture = read_bmp(filename, header);
    if (picture.height == 0 || picture.width == 0){we_ll_miss_u(picture);return READ_ERROR;}
    //rewind(fp);
    //if(fread(&header, sizeof(bmp_header_t),1,fp)!=1){return READ_ERROR;}
    printf("%"PRIu32 "\n",header.biWidth);
    //image_t output = rick_roll(picture,set_rotated_pixel);
    struct image output = transform(picture,rick_roll);
    struct pixel temp = get_pixel(output,1,1);
    printf("%"PRIu8 "\n",temp.b);
    if(write_bmp(output_name, output, header) == WRITE_ERROR){we_ll_miss_u(picture); we_ll_miss_u(output); return WRITE_ERROR;}
    we_ll_miss_u(picture);
    we_ll_miss_u(output);
    //fclose(fp);
    return YOU_SEEM_COOL;
    //}

}