//
//  main.m
//  NSString
//
//  Created by Jorge Arturo César Martínez on 15/03/15.
//  Copyright (c) 2015 Jorge Arturo César Martínez. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString * prueba = [[NSString alloc]initWithFormat:@"Mi primer String :D"];
        NSString * vPrueba = [[NSString alloc]initWithString:prueba];
        
        NSLog(@"%lu", (unsigned long)[prueba length]);  //para ver la longitud en caracteres
        NSLog(@"%@", vPrueba); //para imprimir el NSString como variable
        NSLog(@"%@", prueba); //para imprimir el NSString
        
        NSString * pprueba = @"hola";
        
        NSLog(@"%@", pprueba);
        
        char c = [prueba characterAtIndex:10]; //como el charAt() da el caracter en posición 10
        NSLog(@"%c", c);
        
        NSString * pruebaMayusculas = [prueba uppercaseString]; //convierte toda la cadena en mayusculas
        NSLog(@"%@", pruebaMayusculas);
        
        NSString * pruebaMinusculas = [prueba lowercaseString]; //convierte toda la cadena en minusculas
        NSLog(@"%@", pruebaMinusculas);
        
        NSString * pruebaPrimerasLetras = [prueba substringToIndex:4]; //muestra las primeras letras hasta el número indicado
        NSLog(@"%@", pruebaPrimerasLetras);
        
        NSString * pruebaLetrasFinales = [prueba substringFromIndex:4]; //muestra las letras consecutivas al número indicado
        NSLog(@"%@", pruebaLetrasFinales);
        
    }
    return 0;
}
