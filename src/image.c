//
// Created by User on 12/13/2021.
//

#include "../include/bmp.h"
#include "../include/image.h"

struct image create_image(uint64_t height, uint64_t width){
    struct image image;
    image.data = (struct pixel*)malloc(height*width*sizeof(struct pixel));
    image.width = width;
    image.height = height;
    return image;
}

struct image read_image(FILE* fp, uint64_t height, uint64_t width){

    struct image picture = create_image(height,width);

    for (size_t i = 0; i < height; i++) {
        if(fread(&(picture.data[i * width]), sizeof(struct pixel), width, fp)==width &&
            fseek(fp, (int64_t) width % 4, SEEK_CUR)==0){
        } else {picture.width = 0; picture.height = 0;}
    }
    return picture;
}




struct pixel get_pixel(struct image source,uint64_t height, uint64_t width){
    return source.data[height*source.width + width];
}

struct pixel get_rotated_pixel(struct image source,uint64_t height, uint64_t width){
    return get_pixel(source,source.height-width-1,height);
    //return (source.data[(source.height - 1 - width) * source.width + height]);
}

static void set_pixel(struct image image,struct pixel pix,uint64_t height, uint64_t width){
    image.data[height*image.width+width] = pix;
}


void rick_roll(struct image source, struct image* output) {
    //*output = create_image(source.width,source.height);
    output->width = source.height;
    output->height = source.width;
    for (size_t i = 0; i < source.width; i++) {
        for (size_t j = 0; j < source.height; j++) {
            //output->data[i * source.height + j] = get_rotated_pixel(source,i,j);
            set_pixel(*output,get_rotated_pixel(source,i,j),i,j);
        }
    }
}


struct image transform(struct image in, void (*func)(struct image, struct image*)){
    struct image plug = create_image(in.height,in.width);
    func(in, &plug);
    return plug;
}


void we_ll_miss_u(struct image picture){
    picture.width = 0;
    picture.height = 0;
    free(picture.data);
}


