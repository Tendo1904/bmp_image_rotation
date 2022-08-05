//
// Created by User on 1/26/2022.
//

#ifndef BMP_IMAGE_ROTATION_IMAGE_H
#define BMP_IMAGE_ROTATION_IMAGE_H

#endif //BMP_IMAGE_ROTATION_IMAGE_H
struct image create_image(uint64_t height, uint64_t width);
struct image read_image(FILE* fp, uint64_t height, uint64_t width);
struct pixel get_pixel(struct image source,uint64_t height, uint64_t width);
struct pixel get_rotated_pixel(struct image source,uint64_t height, uint64_t width);
//typedef pixel_t (set_pixel)(image_t source,uint64_t height, uint64_t width);
void rick_roll(struct image source, struct image* output);
struct image transform(struct image in, void (*func)(struct image, struct image*));
void we_ll_miss_u(struct image picture);