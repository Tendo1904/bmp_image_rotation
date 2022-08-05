//
// Created by User on 12/13/2021.
//

#ifndef BMP_IMAGE_ROTATION_BMP_H
#define BMP_IMAGE_ROTATION_BMP_H

#endif //BMP_IMAGE_ROTATION_BMP_H

#include "stdint.h"
#include "stdio.h"
#include "malloc.h"
#include "inttypes.h"


#pragma pack(push, 1) /* Помещает текущее значение выравнивания упаковки во внутренний стек компилятора */
/* структура заголовочного файла */
struct bmp_header{
    uint16_t bfType; /* Отметка для отличия формата от других (сигнатура формата) 4D42 */
    uint32_t bfileSize; /* Размер файла в байтах */
    uint32_t bfReserved; /* Зарезервировано и должен содержать ноль */
    uint32_t bOffBits; /* Положение пиксельных данных относительно начала данной структуры (в байтах) */
    uint32_t biSize; /* количество байтов, требуемых структурой */
    uint32_t biWidth; /* ширина изображения в пикселях */
    uint32_t biHeight; /* высота изображения в пикселях */
    uint16_t biPlanes; /* В BMP допустимо только значение 1 */
    uint16_t biBitCount; /* сколько битов используется для кодирования картинки */
    uint32_t biCompression; /*Тип сжатия для сжатого растрового изображения */
    uint32_t biSizeImage; /* размер изображения в байтах */
    uint32_t biXPelsPerMeter; /* Горизонтальное разрешение в пикселях на метр */
    uint32_t biYPelsPerMeter; /* Горизонтальное разрешение в пикселях на метр */
    uint32_t biClrUsed; /* Количество индексов цвета в таблице цветов, которые фактически используются изображением */
    uint32_t biClrImportant; /* Количество индексов цвета, необходимых для отображения изображения */
};
#pragma pack(pop)

/* структура пикселя*/
#pragma pack(push,1)
struct pixel{
    uint8_t b;
    uint8_t g;
    uint8_t r;
};
#pragma pack(pop)

/* структура изображения */
struct image{
    uint64_t width, height;
    struct pixel* data;
};

enum write_status {
    READ_ERROR = 5,
    ROTATION_ERROR,
    WRITE_ERROR = 3,
    TOO_MUCH_INFORMATION = 99,
    ARCHIVES_ARE_INCOMPLETE = -1,
    YOU_SEEM_COOL = 0,
};

//static image_t rick_roll(image_t source );
//static int write_bmp(const char* file, image_t image, bmp_header_t header);
enum write_status open_bmp(const char*, const char*);
//static image_t read_image(FILE* fp, uint64_t height, uint64_t width);
//static void we_ll_miss_u(image_t);
struct bmp_header print_header();
enum write_status argc_checker(const size_t argc);