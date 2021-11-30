ValidadorUNOPL 

Este proyecto consiste en hacer un validador de partidas de UNO empleando Lex y 
Bison. Como entrada vamos a tratar una partida de uno desde el principio o desde
una ronda en concreto (para diferenciar esto emplearemos un formato concreto que
está explicado más abajo).

A continuación se muestra un registro de las decisiones que hemos ido 
tomando a la hora de transcribir una partida de UNO en la vida real a un archivo 
".txt" con el fin de esclarecer cualquier posible duda:

    /////////    Modo de partida    /////////

        Hemos decidido implementar 2 tipos de partida (Partida por puntos y Partida
        rápida). Para identificar léxicamente que tipo de partida se está jugando, al 
        principio del documento aparecerá la cadena 
                "Partida: " 
        acompañada por el tipo de partida que corresponda, que será:
                "por puntos"        o       "rápida"

    