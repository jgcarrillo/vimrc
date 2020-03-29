# Introducción a Vim y vimrc

## ¿Qué es vim? Un vistazo general

Se trata de una versión mejorada del editor de texto *Vi* presente en los sistemas UNIX. La principal característica de vim son sus distintos modos de uso (modo normal, insertar, etc), lo que permite ser más productivos cuando se domina su funcionamiento. Para más info [Wikipedia](https://es.wikipedia.org/wiki/Vim).

Vim permite la selección de texto mediante diferentes comandos pudiendo seleccionar el texto por columnas, situarse en párrafos concretos, borrar líneas, etc. Esto hace que prácticamente no dependamos del ratón, aunque su **dominio requiere de mucha práctica**

#### Modos en Vim

De una manera introductoria, disponemos de varios modos, los más usados son:

##### Modo normal

Es el modo en el que únicamente nos movemos por el código, las teclas fundamentales para ello son:

```
h -> Izquierda
j -> Abajo
k -> Arriba
l -> Derecha
```

Vim se inicia en este modo, pudiendo pasar al modo *insertar* pulsando la tecla ```i```

A partir de aquí la cosa se complica por lo que recomiendo informarse sobre el desplazamiento por el texto. Una web que lo explica estupendamente es esta [barbarianmeetscoding](https://www.barbarianmeetscoding.com/blog/2019/02/08/boost-your-coding-fu-with-vscode-and-vim).

De igual modo, una vez instalado Vim [Instalación](#Instalación) recomiendo ejecutar en la consola el comando ```vimtutor``` el cual abrirá un tutorial interactivo para conocer el editor en profundidad.

##### Modo insertar

El modo insertar es aquel donde podemos escribir código. Para volver al modo normal presionamos la tecla ```<esc>```

# Instalación

Por defecto Vim viene pre-instalado en sistemas UNIX, en Windows es necesario instalarlo desde su [web](https://www.vim.org/)

