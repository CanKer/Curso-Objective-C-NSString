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
        //Iniciar NSString con alloc para alojamiento de memoria
        NSString * prueba = [[NSString alloc]initWithFormat:@"Mi primer String :D"];
        
        //Iniciar NSString con alloc y una variable
        NSString * vPrueba = [[NSString alloc]initWithString:prueba];
        
        //para ver la longitud en caracteres
        NSLog(@"%lu", (unsigned long)[prueba length]);
        
        //para imprimir el NSString como variable
        NSLog(@"%@", vPrueba);
        
        //para imprimir el NSString
        NSLog(@"%@", prueba);
        
        //Iniciar NSString sin alloc
        NSString * pprueba = @"hola";
        NSLog(@"%@", pprueba);
        
        //como el charAt() da el caracter en posición 10
        char c = [prueba characterAtIndex:10];
        NSLog(@"%c", c);
        
        //convierte toda la cadena en mayusculas
        NSString * pruebaMayusculas = [prueba uppercaseString];
        NSLog(@"%@", pruebaMayusculas);
        
        //convierte toda la cadena en minusculas
        NSString * pruebaMinusculas = [prueba lowercaseString];
        NSLog(@"%@", pruebaMinusculas);
        
        //muestra las primeras letras hasta el número indicado
        NSString * pruebaPrimerasLetras = [prueba substringToIndex:4];
        NSLog(@"%@", pruebaPrimerasLetras);
        
        //muestra las letras consecutivas al número indicado
        NSString * pruebaLetrasFinales = [prueba substringFromIndex:4];
        NSLog(@"%@", pruebaLetrasFinales);
        
        //te da datos de rango ej (no olvidar que es NSRange)
        //.length = caracteres de la palabra .location = la posición de caracteres desde el inicio hasta que empieza la palabra
        NSRange pruebaRango = [prueba rangeOfString: @"String"];
        NSLog(@"La longitud es: %lu y la locación es: %lu", (unsigned long)pruebaRango.length, (unsigned long)pruebaRango.location);
        
        //pondrá los caracteres que estén en el rango 5, 10
        NSString * pruebaRangoSel = [prueba substringWithRange:NSMakeRange(5, 10)];
        NSLog(@"%@", pruebaRangoSel);
        
        
    }
    return 0;
}
