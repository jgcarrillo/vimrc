# Introducción a Vim y vimrc

## ¿Qué es vim? Un vistazo general

Se trata de una versión mejorada del editor de texto *Vi* presente en los sistemas UNIX. La principal característica de vim son sus distintos modos de uso (modo normal, insertar, etc), lo que permite ser más productivos cuando se domina su funcionamiento. Para más info [Wikipedia](https://es.wikipedia.org/wiki/Vim).

Vim permite la selección de texto mediante diferentes comandos pudiendo seleccionar el texto por columnas, situarse en párrafos concretos, borrar líneas, etc. Esto hace que prácticamente no dependamos del ratón, aunque su **dominio requiere de mucha práctica**.

## Modos en Vim

De una manera introductoria, disponemos de varios modos, los más usados son:

#### Modo normal

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

#### Modo insertar

El modo insertar es aquel donde podemos escribir código. Para volver al modo normal presionamos la tecla ```<esc>```

## Instalación

Por defecto Vim viene pre-instalado en sistemas UNIX (incluido MacOS), pero en Windows es necesario instalarlo desde su [web](https://www.vim.org/).

Importante durante la instalación **agregar Vim al PATH de Windows**. En caso de no realizar este paso, una vez instalado, acudir a la ruta de instalación del mismo, copiarla, y agregarlo manualmente. 

De esta manera Vim queda instalado en el equipo, se puede hacer uso del mismo mediante los comandos que veremos a continuación.

## Comandos

* Para ver la versión instalada de Vim, debemos escribir ```vim --version```
* Para acceder a vim es tan sencillo como escribir ```vim```
* Para acceder al tutorial de vim, escribimos ```vimtutor```
* Para abrir cualquier archivo con vim, acudimos a el mediante los comandos de consola y ejecutamos ```vim nombre-archivo.extension```

## Guardando archivos y saliendo de Vim

Una vez escrito el código mediante Vim (o cualquier labor que realicemos usando este editor) tenemos que salirnos del mismo y guardar, o no, los cambios realizados. Para ello tenemos que estar en el modo normal, presionando la tecla ```<esc>```y escribimos:

* :q! -> Para salirnos del archivo sin guardar los cambios.
* :wq -> Nos salimos del archivo guardando cambios.

Donde *"q"* equivale a quit, mientras que *"w"* corresponde con write. Guardar y salir. Fácil. En cualquier caso estos comandos no deben resultar extraños. Cuando instalamos Git, durante el proceso, nos pide elegir un editor de texto para escribir comentarios en los commits y demás labores que requieran de modificaciones en el código. Si lo dejamos por defecto instalará Vim.

## ¿Esto es todo?

Para nada! Vim requiere de mucha práctica y tiene una gran cantidad de comandos para mejorar el acceso al código. Sería imposible realizar un tutorial ameno y sencillo si nos centrámos en esos puntos. Recomiendo visitar la web oficial de Vim así como un [videojuego](http://vim-adventures.com/) creado para el propósito.

