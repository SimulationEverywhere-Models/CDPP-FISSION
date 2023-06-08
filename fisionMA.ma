[top]
components : reaction

[Reaction]
type : cell
width : 20
height : 20
delay : transport
defaultDelayTime  : 100
border : nowrapped 
neighbors : life(-1,-1) life(-1,0) life(-1,1) 
neighbors : life(0,-1)  life(0,0)  life(0,1)
neighbors : life(1,-1)  life(1,0)  life(1,1)
initialvalue : 0
initialrowvalue :  0      00000000000000000000
initialrowvalue :  1      00000000000000000000
initialrowvalue :  2      00000000000000000000
initialrowvalue :  3      00000000000000000000 
initialrowvalue :  4      00000000000000000000 
initialrowvalue :  5      00000000000000000090 
initialrowvalue :  6      00000090000000090000 
initialrowvalue :  7      00000000000900000090 
initialrowvalue :  8      90000900000000000000 
initialrowvalue :  9      00000000000090000000 
initialrowvalue :  10     00000000000000000000
initialrowvalue :  11     00000000000000000000
initialrowvalue :  12     20000000090000900000 
initialrowvalue :  13     00000000000000000000
initialrowvalue :  14     00000000000000000000 
initialrowvalue :  15     00000000000090000000 
initialrowvalue :  16     00000000000000000900 
initialrowvalue :  17     00000000090000009000
initialrowvalue :  18     00000000000000000000 
initialrowvalue :  19     00000000000000000000 

localtransition : reaction-rule

[reaction-rule]

rule : 5 100 { (0,0) = 9 and (-1,-1) = 1 }
rule : 5 100 { (0,0) = 9 and (1,-1) = 3 }


rule : 9 100 { (0,0) = 9 and (0,-1) = 0 }

 
rule : 5 100 { (0,0) = 9 and (0,-1) = 2 }

rule : 4 100 { (0,0) = 5 and statecount(3) = 1 and statecount(2) = 1 and statecount(1) = 1 }
rule : 5 100 { (0,0) = 5 } 
rule : 4 100 { (0,0) = 4 } 

rule : 2 100 { (0,0) = 0 and (0,-1) = 5 }
rule : 3 100 { (0,0) = 0 and (1,-1) = 5 }
rule : 1 100 { (0,0) = 0 and (-1,-1) = 5}

rule : 1 100 { (0,0) = 0 and (-1,-1) = 1 }
rule : 2 100 { (0,0) = 0 and (0,-1) = 2 }
rule : 3 100 { (0,0) = 0 and (1,-1) = 3 }


rule : 0 100 { t }


