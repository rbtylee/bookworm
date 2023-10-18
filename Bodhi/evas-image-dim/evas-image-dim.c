/* evas-image-dim: Print image dimensions using efl
 * 
 * Copyright 2021 ylee@bodhilinux.com
 * 
 * This work is free. You can redistribute it and/or modify it under the
 * terms of the Do What The Fuck You Want To Public License, Version 2,
 * as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
 * 
 * gcc -o evas-image-dim evas-image-dim.c `pkg-config --libs --cflags evas ecore ecore-evas`
 */

#include <stdio.h>
#include <string.h>
#include <Ecore.h>
#include <Ecore_Evas.h>

#define WIDTH  (100)
#define HEIGHT (100)

void
help(char *exe)
{
   printf("%s: Prints image dimensions determined by evas.\n\n", exe);
   printf("Usage:\n  %s imagepath\n", exe);  
}

int
main(int argc, char *argv[])
{
   int err, w, h;
   Ecore_Evas  *ee;
   Evas        *evas;
   Evas_Object *img;
   const char *img_path;
   
   if( argc == 2 )
      img_path = argv[1];
   else {
      help(argv[0]);
      return 1;
   }
   if (!strcmp(img_path, "-h")||!strcmp(img_path, "--help"))
     {
       help(argv[0]);
       return 1;
     }

   if (!ecore_evas_init()) return -1;
   ee = ecore_evas_new(NULL, 10, 10, WIDTH, HEIGHT, NULL);
   if (!ee) goto error;
     
   evas = ecore_evas_get(ee);
   img = evas_object_image_add(evas);
   evas_object_image_file_set(img, img_path, NULL);
   
   err = evas_object_image_load_error_get(img);
   if (err != EVAS_LOAD_ERROR_NONE)
     {
        fprintf(stderr, "Error: %s\n", evas_load_error_str(err));
        return 1;
     }
   evas_object_image_size_get(img, &w, &h);
   printf("%dx%d\n",w,h);

   ecore_evas_free(ee);
   ecore_evas_shutdown();
   return 0;

error:
   ecore_evas_shutdown();
   return -1;     
}
