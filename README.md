*WIP*

# Introducción a Vim y vimrc

## ¿Qué es vim? Un vistazo general

Se trata de una versión mejorada del editor de texto *Vi* presente en los sistemas UNIX. La principal característica de vim son sus distintos modos de uso (modo normal, insertar, etc), lo que permite ser más productivos cuando se domina su funcionamiento. Para más info [Wikipedia](https://es.wikipedia.org/wiki/Vim).

Vim permite la selección de texto mediante diferentes comandos pudiendo seleccionar el texto por columnas, situarse en párrafos concretos, borrar líneas, etc. Esto hace que prácticamente no dependamos del ratón, aunque su **dominio requiere de mucha práctica** debido a la gran cantidad de instrucciones que podemos darle.

## Modos en Vim

De una manera introductoria, disponemos de varios modos, los más usados son:

#### :ghost: Modo normal 

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

#### :ghost: Modo insertar

El modo insertar es aquel donde podemos escribir código, se accede a él pulsando la tecla ```ì``` Para volver al modo normal presionamos la tecla ```<esc>```.

## Instalación

Por defecto Vim viene pre-instalado en sistemas UNIX (incluido MacOS), pero en Windows es necesario instalarlo desde su [web](https://www.vim.org/).

Importante durante la instalación es **agregar Vim al PATH de Windows**. En caso de no realizar este paso, una vez instalado, acudir a la ruta de instalación del mismo, copiarla, y agregarlo manualmente. 

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

Donde *"q"* equivale a quit, mientras que *"w"* corresponde con write. Guardar y salir. Fácil. Estas instrucciones aparecerán reflejadas en la pantalla en la parte inferior izquierda. En cualquier caso estos comandos no deben resultar extraños. Cuando instalamos Git, durante el proceso, nos pide elegir un editor de texto para escribir comentarios en los commits y demás labores que requieran de modificaciones en el código. Si lo dejamos por defecto instalará Vim por lo que es muy probable que estos comandos ya sean conocidos.

## ¿Esto es todo?

Para nada! Vim requiere de mucha práctica y tiene una gran cantidad de comandos para mejorar el acceso a las diferentes partes del código y ser realmente productivos. Sería imposible realizar un tutorial ameno y sencillo si nos centrámos en esos puntos. Recomiendo visitar la web oficial de Vim así como un [videojuego](http://vim-adventures.com/) creado para tal propósito.

## Vimrc. Mejorando Vim

Vimrc no es más que un archivo de texto plano que Vim procesa cada vez que se carga. Este archivo contiene toda la configuración y shortcuts que hayamos personalizado a nuestro gusto y es aquí donde se abre el gran abanico de posibilidades que nos brinda este editor.

#### Apuntando a vimrc

Este tutorial está basado fundamentalmente en Windows ya que el sistemas Unix muchas de las cosas aquí explicadas difieren bastante. En general he encontrado poca información sobre Vim y Vimrc para sistemas Windows y es por ello que me animé a plasmarlo en estas líneas para ayudar a otros como yo.

El primer paso es indicarle a Vim que, cuando se inicie, lea el archivo *vimrc* que hayamos configurado. La forma más fácil de hacerlo es acudiendo a la consola y escribir ```vim --version```. Este comando nos dará bastante información, la que nos interesa está en la parte inferior pues saldrá algo parecido a esto:

```
archivo "vimrc" del sistema: "$VIM\vimrc"
archivo "vimrc" del usuario: "$HOME\_vimrc"
...
```

Vim entrará por orden en los directorios de ese listado hasta que encuentre el archivo vimrc. *$HOME* hace referencia a la ruta **C:/Users/nombre-usuario** mientras que *$VIM* es la ruta donde se instaló Vim. Deberemos de crear en ellos el archivo vimrc.

## Comandos más usados

Tras unas semanas de uso he notado como he mejorado en la velocidad de escritura. Aunque no he conseguido quitarme al 100% el ratón, sobre todo para acciones como copiar y pegar, si que he conseguido escribir código más deprisa. Los comandos que mas uso son:

#### Comandos de movimiento

```
w -> Moverse hacia adelante al principio de cada palabra
W -> Moverse hacia adelante al principio de cada palabra sin tener en cuenta caractéres
e -> Moverse hacia adelante al final de cada palabra
E -> Moverse hacia adelante al final de cada palabra sin tener en cuenta caractéres
b -> Moverse hacia atrás al principio de cada palabra
B -> Moverse hacia atrás al principio de cada palabra sin tener en cuenta caractéres

0 -> Ir al principio de una línea
$ -> Ir al final de una línea
gg -> Ir al principio del documento
G -> Ir al final del documento
zz -> Centrar el cursor
```

#### Comandos para insertar

```
i -> Insertar antes del cursor
I -> Insertar al principio de la línea
a -> Insertar después del cursor
A -> Insertar al final de la línea
o -> Insertar una línea debajo de la línea en la que nos encontramos
O -> Insertar una línea encima de la línea en la que nos encontramos
ea -> Insertar al final de la palabra sobre la que estemos posicionados

gd -> (Sobre una variable o cualquier cosa que hayamos definido previamente) El cursor de moverá en la línea donde definimos esa variable
gf -> (Sobre un arvhivo, por ejemplo la hoja de estilos linkeada) Nos llevará a ese archivo en una nueva ventana
```

#### Comandos para editar

```
r -> Reemplazar el carácter sobre el que nos encontramos
x -> Eliminar caracteres 
u -> Deshacer
Ctrl + r -> Rehacer
. -> Repetir el último comando
cw -> Sobre una palabra, elimina el texto a partir del cursor
ciw -> Sobre una palabra, la elimina y nos deja el cursor preparado para escribir
```

#### Modo visual

```
v -> Inicia el modo visual
Ctrl + V -> Inicia el modo visual en modo bloque
Esc -> Salir del modo visual
> -> Tabulación hacia la derecha
< -> Tabulación hacia la izquierda
```

#### Copiar y pegar

```
yy -> Copiar una línea
2yy -> Copiar dos líneas
p -> Pegar después del cursor
P -> Pegar antes del cursor
dd -> Eliminar una línea
d$ -> Elimina el contenido de toda una línea dejando la línea a partir de dónde tengamos el cursor
dw -> Elimina palabra a palabra
```

#### Comandos especiales

```
Número de línea + G -> Nos lleva hasta esa línea
/término de búsqueda -> Busca en el documento, con "n" nos iremos moviendo entre los resultados
% -> Si lo usamos sobre [{( nos llevará al cierre de los mismos
:/s/texto a cambiar/texto nuevo/gc -> Modo para reemplazar. la letra "c" del final sirve para pedir confirmación
```

![](gif-prueba.gif)
