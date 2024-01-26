# Tipos de Kernel

## Kernel monolítico

En este tipo de kernel, todos los servicios del sistema operativo están integrados en un único módulo. Este tipo de kernel es mas grande y complejo de darle mantenimiento.

## Kernel modular

En este tipo de kernel, todos los servicios del sistema operativo están divididos en módulos independientes. Este kernel es más flexible y fácil de mantener, pero puede llegar a ser menos eficiente debido a las llamadas que tiene que hacer el sistema para acceder a los servicios

## Microkernel

En este tipo de kernel, únicamente se implementan los servicios que son esenciales para el sistema operativo. Esta característica hace que sea mas pequeño y eficiente pero menos completo y flexible

## Híbrido

En este tipo de kernel hace una combinación de un kernel monolítico y un kernel modular, es decir que los servicios esenciales pueden estar en un solo modulo y los demás servicios en otros módulos independientes 

# Mode User vs Kernel Mode

## User Mode

Este es el modo en que se ejecutan las aplicaciones de usuario; Las aplicaciones tiene acceso limitado a los recursos del sistema operativo.

## Kernel Mode

Este es el modo que se ejecuta el kernel del sistema operativo. 

# Interruptions vs traps

## Interruptions

Son eventos externos que interrumpen la ejecución de una aplicación. Pueden ser generados por eventos del usuario, hardware o una solicitud de una aplicación de sistema.

## Traps

Son eventos internos que son generados por una aplicación de usuario.