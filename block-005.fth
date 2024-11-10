\ block-005 - Words for screen handling

' LEX-SCREEN loaded?

LEX-C3 : LEX-SCREEN 5 LEX! ;
LEX-SCREEN

: cur-on  ( -- )       ." %e[?25h" ;
: cur-off ( -- )       ." %e[?25l" ;
: ->xy    ( y x-- )    ." %e[%d;%dH" ;
: ->yx    ( x y-- )    swap ->xy ;
: cls     ( -- )       ." %e[2J%e[1;1H" ;
: clr-eol ( -- )       ." %e[0K" ;
: color   ( bg fg-- )  ." %e[%d;%dm" ;
: fg      ( fg-- )     40 swap color ;
