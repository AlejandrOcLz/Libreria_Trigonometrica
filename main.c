/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: Alejandro Ocampo López
 *
 * Created on 9 de abril de 2021, 10:25 AM
 */

#include <stdio.h>
#include <stdlib.h>

float seno(float);
float coseno(float);

/*
 * 
 */
int main(int argc, char** argv) {
    float x = 5.0;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 4.5;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 3.0;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 2.5;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 2.0;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 1.0;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 0.4;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 0.3;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));
    
    x = 0.2;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));

    x = 0.1;
    printf("El valo de sen(%f) es igual a %f\n",x,seno(x));
    printf("El valo de coseno(%f) es igual a %f\n",x,coseno(x));
    return (EXIT_SUCCESS);
}

