é1
WD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\Logica\PersonaService.cs
	namespace 	
Logica
 
{		 
public

 

class

 
PersonaService

 
{ 
private 
readonly 
ProyectoContext %
_context& .
;. /
public 
PersonaService 
( 
ProyectoContext -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public "
GuardarPersonaResponse %
Guardar& -
(- .
Persona. 5
persona6 =
)= >
{ 	
try 
{ 
var 
personaBuscada "
=# $
_context% -
.- .
Personas. 6
.6 7
Find7 ;
(; <
persona< C
.C D
identificacionD R
)R S
;S T
if 
( 
personaBuscada !
!=! #
null# '
)' (
{( )
return 
new "
GuardarPersonaResponse 5
(5 6
$str6 c
)c d
;d e
} 
_context 
. 
Personas !
.! "
Add" %
(% &
persona& -
)- .
;. /
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new "
GuardarPersonaResponse 1
(1 2
persona2 9
)9 :
;: ;
} 
catch 
( 
	Exception 
e 
) 
{   
return!! 
new!! "
GuardarPersonaResponse!! 1
(!!1 2
$"!!2 4
$str!!4 L
{!!L M
e!!M N
.!!N O
Message!!O V
}!!V W
"!!W X
)!!X Y
;!!Y Z
}"" 
}## 	
public%% 
List%% 
<%% 
Persona%% 
>%% 
ConsultarTodos%% +
(%%+ ,
)%%, -
{&& 	
List'' 
<'' 
Persona'' 
>'' 
personas'' "
=''# $
_context''% -
.''- .
Personas''. 6
.''6 7
ToList''7 =
(''= >
)''> ?
;''? @
;''@ A
return(( 
personas(( 
;(( 
})) 	
public++ "
GuardarPersonaResponse++ %

Actualizar++& 0
(++0 1
Persona++1 8
personaNueva++9 E
)++E F
{,, 	
try-- 
{.. 
var// 
personaVieja//  
=//! "
_context//# +
.//+ ,
Personas//, 4
.//4 5
Find//5 9
(//9 :
personaNueva//: F
.//F G
identificacion//G U
)//U V
;//V W
if00 
(00 
personaVieja00  
!=00  "
null00" &
)00& '
{00' (
personaVieja11  
.11  !
nombre11! '
=11( )
personaNueva11* 6
.116 7
nombre117 =
;11= >
personaVieja22  
.22  !
correo22! '
=22( )
personaNueva22* 6
.226 7
correo227 =
;22= >
personaVieja33  
.33  !
telefono33! )
=33* +
personaNueva33, 8
.338 9
telefono339 A
;33A B
_context44 
.44 
Personas44 %
.44% &
Update44& ,
(44, -
personaVieja44- 9
)449 :
;44: ;
_context55 
.55 
SaveChanges55 (
(55( )
)55) *
;55* +
return66 
new66 "
GuardarPersonaResponse66 5
(665 6
personaVieja666 B
)66B C
;66C D
}77 
return88 
new88 "
GuardarPersonaResponse88 1
(881 2
$str882 N
)88N O
;88O P
}99 
catch:: 
(:: 
	Exception:: 
e:: 
):: 
{;; 
return<< 
new<< "
GuardarPersonaResponse<< 1
(<<1 2
e<<2 3
.<<3 4
Message<<4 ;
)<<; <
;<<< =
}== 
}>> 	
public@@ 
class@@ "
GuardarPersonaResponse@@ +
{AA 	
publicBB "
GuardarPersonaResponseBB )
(BB) *
PersonaBB* 1
personaBB2 9
)BB9 :
{CC 
ErrorDD 
=DD 
falseDD 
;DD 
PersonaEE 
=EE 
personaEE !
;EE! "
}FF 
publicHH "
GuardarPersonaResponseHH )
(HH) *
stringHH* 0
mensajeHH1 8
)HH8 9
{II 
ErrorJJ 
=JJ 
trueJJ 
;JJ 
MensajeKK 
=KK 
mensajeKK !
;KK! "
}LL 
publicNN "
GuardarPersonaResponseNN )
(NN) *
boolNN* .
errorNN/ 4
,NN4 5
stringNN6 <
mensajeNN= D
,NND E
PersonaNNF M
personaNNN U
)NNU V
{OO 
thisPP 
.PP 
ErrorPP 
=PP 
errorPP "
;PP" #
thisQQ 
.QQ 
MensajeQQ 
=QQ 
mensajeQQ &
;QQ& '
thisRR 
.RR 
PersonaRR 
=RR 
personaRR &
;RR& '
}SS 
publicUU 
boolUU 
ErrorUU 
{UU 
getUU  #
;UU# $
setUU% (
;UU( )
}UU* +
publicWW 
stringWW 
MensajeWW !
{WW" #
getWW$ '
;WW' (
setWW) ,
;WW, -
}WW. /
publicYY 
PersonaYY 
PersonaYY "
{YY# $
getYY% (
;YY( )
setYY* -
;YY- .
}YY/ 0
}ZZ 	
}[[ 
}\\ Ô'
XD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\Logica\PeticionService.cs
	namespace 	
Logica
 
{		 
public

 

class

 
PeticionService

  
{ 
private 
readonly 
ProyectoContext '
_context( 0
;0 1
public 
PeticionService 
( 
ProyectoContext .
context/ 6
)6 7
{ 	
_context 
= 
context 
; 
} 	
public #
GuardarPeticionResponse &
Guardar' .
(. /
Peticion/ 7
peticion8 @
)@ A
{ 	
try 
{ 
var 
peticionBuscada #
=$ %
_context& .
.. /

Peticiones/ 9
.9 :
Find: >
(> ?
peticion? G
.G H
codigoPeticionH V
)V W
;W X
if 
( 
peticionBuscada "
!=" $
null$ (
)( )
{) *
return 
new #
GuardarPeticionResponse 6
(6 7
$str7 _
)_ `
;` a
} 
_context 
. 

Peticiones #
.# $
Add$ '
(' (
peticion( 0
)0 1
;1 2
_context 
. 
SaveChanges $
($ %
)% &
;& '
return 
new #
GuardarPeticionResponse 2
(2 3
peticion3 ;
); <
;< =
} 
catch 
( 
	Exception 
e 
) 
{   
return!! 
new!! #
GuardarPeticionResponse!! 2
(!!2 3
$"!!3 5
$str!!5 M
{!!M N
e!!N O
.!!O P
Message!!P W
}!!W X
"!!X Y
)!!Y Z
;!!Z [
}"" 
}## 	
public%% 
List%% 
<%% 
Peticion%% 
>%% 
ConsultarTodos%% ,
(%%, -
)%%- .
{&& 	
List'' 
<'' 
Peticion'' 
>'' 

peticiones'' %
=''& '
_context''( 0
.''0 1

Peticiones''1 ;
.''; <
ToList''< B
(''B C
)''C D
;''D E
foreach(( 
((( 
var(( 
item(( 
in((  

peticiones((! +
)((+ ,
{((, -
item)) 
.))  
funcionarioEncargado)) )
=))* +
_context)), 4
.))4 5
Usuarios))5 =
.))= >
Find))> B
())B C
item))C G
.))G H!
referenciaFuncionario))H ]
)))] ^
;))^ _
item** 
.** 
solicitanteEST** #
=**$ %
_context**& .
.**. /
Usuarios**/ 7
.**7 8
Find**8 <
(**< =
item**= A
.**A B!
referenciaSolicitante**B W
)**W X
;**X Y
}++ 
return,, 

peticiones,, 
;,, 
}-- 	
public// 
class// #
GuardarPeticionResponse// ,
{00 	
public11 #
GuardarPeticionResponse11 *
(11* +
Peticion11+ 3
peticion114 <
)11< =
{22 
Error33 
=33 
false33 
;33 
Peticion44 
=44 
peticion44 #
;44# $
}55 
public77 #
GuardarPeticionResponse77 *
(77* +
string77+ 1
mensaje772 9
)779 :
{88 
Error99 
=99 
true99 
;99 
Mensaje:: 
=:: 
mensaje:: !
;::! "
};; 
public== #
GuardarPeticionResponse== *
(==* +
bool==+ /
error==0 5
,==5 6
string==7 =
mensaje==> E
,==E F
Peticion==F N
peticion==O W
)==W X
{>> 
this?? 
.?? 
Error?? 
=?? 
error?? "
;??" #
this@@ 
.@@ 
Mensaje@@ 
=@@ 
mensaje@@ &
;@@& '
thisAA 
.AA 
PeticionAA 
=AA 
peticionAA  (
;AA( )
}BB 
publicDD 
boolDD 
ErrorDD 
{DD 
getDD  #
;DD# $
setDD% (
;DD( )
}DD* +
publicEE 
stringEE 
MensajeEE !
{EE" #
getEE$ '
;EE' (
setEE) ,
;EE, -
}EE. /
publicFF 
PeticionFF 
PeticionFF $
{FF% &
getFF' *
;FF* +
setFF, /
;FF/ 0
}FF1 2
}GG 	
}HH 
}II ≥ª
XD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\Logica\ProyectoService.cs
	namespace		 	
Logica		
 
{

 
public 

class 
ProyectoService  
{ 
private 
readonly 
ProyectoContext (
_context) 1
;1 2
public 
ProyectoService 
( 
ProyectoContext .
context/ 6
)6 7
{ 	
_context 
= 
context 
; 
} 	
public #
GuardarProyectoResponse &
Guardar' .
(. /
Proyecto/ 7
proyecto8 @
)@ A
{ 	
try 
{ 
var 

idBuscada1 
=  
_context! )
.) *
Usuarios* 2
.2 3
Find3 7
(7 8
proyecto8 @
.@ A+
referenciaInvestigadorPrincipalA `
)` a
;a b
var 

idBuscada2 
=  
_context! )
.) *
Usuarios* 2
.2 3
Find3 7
(7 8
proyecto8 @
.@ A,
 referenciaInvestigadorSecundarioA a
)a b
;b c
if 
( 

idBuscada1 
== !
null" &
)& '
{' (
return 
new #
GuardarProyectoResponse  7
(7 8
$str8 S
+T U
proyectoV ^
.^ _+
referenciaInvestigadorPrincipal_ ~
+	 Ä
$str
Å ç
)
ç é
;
é è
} 
if 
( 

idBuscada2 
== !
null" &
)& '
{' (
return   
new   #
GuardarProyectoResponse    7
(  7 8
$str  8 S
+  T U
proyecto  V ^
.  ^ _,
 referenciaInvestigadorSecundario  _ 
+
  Ä Å
$str
  Ç é
)
  é è
;
  è ê
}!! 
if"" 
("" 
proyecto"" 
."" +
referenciaInvestigadorPrincipal"" <
==""= ?
proyecto""@ H
.""H I,
 referenciaInvestigadorSecundario""I i
)""i j
{""k l
return## 
new## #
GuardarProyectoResponse## 6
(##6 7
$str##7 }
)##} ~
;##~ 
}$$ 
var&&  
proyectoYaRegistrado&& (
=&&) *
_context&&+ 3
.&&3 4
	Proyectos&&4 =
.&&= >
Where&&> C
(&&C D
p&&D E
=>&&F H
p&&I J
.&&J K+
referenciaInvestigadorPrincipal&&K j
==&&k m

idBuscada1&&n x
.&&x y
userName	&&y Å
||
&&Ç Ñ
p'' 
.'' +
referenciaInvestigadorPrincipal'' 1
==''2 4

idBuscada2''5 ?
.''? @
userName''@ H
||''I K
p''L M
.''M N,
 referenciaInvestigadorSecundario''N n
==''o q

idBuscada1''r |
.''| }
userName	''} Ö
||(( 
p(( 
.(( ,
 referenciaInvestigadorSecundario(( 5
==((6 8

idBuscada2((9 C
.((C D
userName((D L
)((L M
.((M N
FirstOrDefault((N \
(((\ ]
)((] ^
;((^ _
if** 
(**  
proyectoYaRegistrado** (
!=**) +
null**, 0
)**0 1
{**1 2
return++ 
new++ #
GuardarProyectoResponse++ 6
(++6 7
$str++7 }
+,, 

idBuscada1,, !
.,,! "
userName,," *
+,,+ ,
$str,,- 1
+,,2 3

idBuscada2,,3 =
.,,= >
userName,,> F
),,F G
;,,G H
}-- 
proyecto.. 
... !
investigadorPrincipal.. .
=../ 0
_context..1 9
...9 :
Usuarios..: B
...B C
Find..C G
(..G H
proyecto..H P
...P Q+
referenciaInvestigadorPrincipal..Q p
)..p q
;..q r
proyecto// 
.// "
investigadorSecundario// /
=//0 1
_context//2 :
.//: ;
Usuarios//; C
.//C D
Find//D H
(//H I
proyecto//I Q
.//Q R,
 referenciaInvestigadorSecundario//R r
)//r s
;//s t
_context00 
.00 
	Proyectos00 "
.00" #
Add00# &
(00& '
proyecto00' /
)00/ 0
;000 1
_context11 
.11 
SaveChanges11 $
(11$ %
)11% &
;11& '
return22 
new22 #
GuardarProyectoResponse22 2
(222 3
proyecto223 ;
)22; <
;22< =
}33 
catch44 
(44 
	Exception44 
e44 
)44 
{55 
return66 
new66 #
GuardarProyectoResponse66 2
(662 3
$"663 5
$str665 M
{66M N
e66N O
.66O P
Message66P W
}66W X
"66X Y
)66Y Z
;66Z [
}77 
}88 	
public:: 
List:: 
<:: 
Proyecto:: 
>:: 
ConsultarTodos:: ,
(::, -
)::- .
{;; 	
List<< 
<<< 
Proyecto<< 
><< 
	proyectos<< $
=<<% &
_context<<' /
.<</ 0
	Proyectos<<0 9
.<<9 :
ToList<<: @
(<<@ A
)<<A B
;<<B C
foreach== 
(== 
var== 
item== 
in==  
	proyectos==! *
)==* +
{>> 
try?? 
{?? 
item@@ 
.@@ !
investigadorPrincipal@@ .
=@@/ 0
_context@@1 9
.@@9 :
Usuarios@@: B
.@@B C
Find@@C G
(@@G H
item@@H L
.@@L M+
referenciaInvestigadorPrincipal@@M l
)@@l m
;@@m n
itemAA 
.AA !
investigadorPrincipalAA .
.AA. /
personaAA/ 6
=AA7 8
_contextAA9 A
.AAA B
PersonasAAB J
.AAJ K
FindAAK O
(AAO P
itemAAP T
.AAT U+
referenciaInvestigadorPrincipalAAU t
)AAt u
;AAu v
itemBB 
.BB "
investigadorSecundarioBB /
=BB0 1
_contextBB2 :
.BB: ;
UsuariosBB; C
.BBC D
FindBBD H
(BBH I
itemBBI M
.BBM N,
 referenciaInvestigadorSecundarioBBN n
)BBn o
;BBo p
itemCC 
.CC "
investigadorSecundarioCC /
.CC/ 0
personaCC0 7
=CC8 9
_contextCC: B
.CCB C
PersonasCCC K
.CCK L
FindCCL P
(CCP Q
itemCCQ U
.CCU V,
 referenciaInvestigadorSecundarioCCV v
)CCv w
;CCw x
itemDD 
.DD 
evaluadorProyecto1DD +
=DD, -
_contextDD. 6
.DD6 7
UsuariosDD7 ?
.DD? @
FindDD@ D
(DDD E
itemDDE I
.DDI J(
referenciaEvaluadorProyecto1DDJ f
)DDf g
;DDg h
itemEE 
.EE 
evaluadorProyecto1EE +
.EE+ ,
personaEE, 3
=EE4 5
_contextEE6 >
.EE> ?
PersonasEE? G
.EEG H
FindEEH L
(EEL M
itemEEM Q
.EEQ R(
referenciaEvaluadorProyecto1EER n
)EEn o
;EEo p
itemFF 
.FF 
evaluadorProyecto2FF +
=FF, -
_contextFF. 6
.FF6 7
UsuariosFF7 ?
.FF? @
FindFF@ D
(FFD E
itemFFE I
.FFI J(
referenciaEvaluadorProyecto2FFJ f
)FFf g
;FFg h
itemGG 
.GG 
evaluadorProyecto2GG +
.GG+ ,
personaGG, 3
=GG4 5
_contextGG6 >
.GG> ?
PersonasGG? G
.GGG H
FindGGH L
(GGL M
itemGGM Q
.GGQ R(
referenciaEvaluadorProyecto2GGR n
)GGn o
;GGo p
}HH 
catchHH 
(HH 
	ExceptionHH "
)HH" #
{HH# $
}HH$ %
}JJ 
returnKK 
	proyectosKK 
;KK 
}LL 	
publicNN #
GuardarProyectoResponseNN &
ConsultarOneNN' 3
(NN3 4
stringNN4 :
	referenceNN; D
)NND E
{NNE F
varOO 
proyectoOO 
=OO 
_contextOO #
.OO# $
	ProyectosOO$ -
.OO- .
WhereOO. 3
(OO3 4
pOO4 5
=>OO6 8
pOO9 :
.OO: ;+
referenciaInvestigadorPrincipalOO; Z
==OO[ ]
	referenceOO^ g
||OOh j
pPP 
.PP ,
 referenciaInvestigadorSecundarioPP .
==PP/ 1
	referencePP2 ;
)PP; <
.PP< =
FirstOrDefaultPP= K
(PPK L
)PPL M
;PPM N
proyectoRR 
.RR !
investigadorPrincipalRR *
=RR+ ,
_contextRR- 5
.RR5 6
UsuariosRR6 >
.RR> ?
FindRR? C
(RRC D
proyectoRRD L
.RRL M+
referenciaInvestigadorPrincipalRRM l
)RRl m
;RRm n
proyectoSS 
.SS !
investigadorPrincipalSS *
.SS* +
personaSS+ 2
=SS3 4
_contextSS5 =
.SS= >
PersonasSS> F
.SSF G
FindSSG K
(SSK L
proyectoSSL T
.SST U+
referenciaInvestigadorPrincipalSSU t
)SSt u
;SSu v
proyectoTT 
.TT "
investigadorSecundarioTT +
=TT, -
_contextTT. 6
.TT6 7
UsuariosTT7 ?
.TT? @
FindTT@ D
(TTD E
proyectoTTE M
.TTM N,
 referenciaInvestigadorSecundarioTTN n
)TTn o
;TTo p
proyectoUU 
.UU "
investigadorSecundarioUU +
.UU+ ,
personaUU, 3
=UU4 5
_contextUU6 >
.UU> ?
PersonasUU? G
.UUG H
FindUUH L
(UUL M
proyectoUUM U
.UUU V,
 referenciaInvestigadorSecundarioUUV v
)UUv w
;UUw x
ifVV 
(VV 
proyectoVV 
.VV (
referenciaEvaluadorProyecto1VV 5
!=VV5 7
nullVV8 <
)VV< =
{VV= >
proyectoWW 
.WW 
evaluadorProyecto1WW +
=WW, -
_contextWW. 6
.WW6 7
UsuariosWW7 ?
.WW? @
FindWW@ D
(WWD E
proyectoWWE M
.WWM N(
referenciaEvaluadorProyecto1WWN j
)WWj k
;WWk l
proyectoXX 
.XX 
evaluadorProyecto1XX +
.XX+ ,
personaXX, 3
=XX4 5
_contextXX6 >
.XX> ?
PersonasXX? G
.XXG H
FindXXH L
(XXL M
proyectoXXM U
.XXU V(
referenciaEvaluadorProyecto1XXV r
)XXr s
;XXs t
}YY 
ifZZ 
(ZZ 
proyectoZZ 
.ZZ (
referenciaEvaluadorProyecto2ZZ 5
!=ZZ5 7
nullZZ8 <
)ZZ< =
{ZZ= >
proyecto[[ 
.[[ 
evaluadorProyecto2[[ +
=[[, -
_context[[. 6
.[[6 7
Usuarios[[7 ?
.[[? @
Find[[@ D
([[D E
proyecto[[E M
.[[M N(
referenciaEvaluadorProyecto2[[N j
)[[j k
;[[k l
proyecto\\ 
.\\ 
evaluadorProyecto2\\ +
.\\+ ,
persona\\, 3
=\\4 5
_context\\6 >
.\\> ?
Personas\\? G
.\\G H
Find\\H L
(\\L M
proyecto\\M U
.\\U V(
referenciaEvaluadorProyecto2\\V r
)\\r s
;\\s t
}]] 
if^^ 
(^^ 
proyecto^^ 
==^^ 
null^^ 
)^^ 
{^^  
return__ 
new__ #
GuardarProyectoResponse__ 2
(__2 3
$str__3 K
)__K L
;__L M
}`` 
returnaa 
newaa #
GuardarProyectoResponseaa .
(aa. /
proyectoaa/ 7
)aa7 8
;aa8 9
}bb 	
publicdd #
GuardarProyectoResponsedd &
ConsultarOneXCodigodd' :
(dd: ;
intdd; >
	referencedd? H
)ddH I
{ddI J
varff 
proyectoff 
=ff 
_contextff '
.ff' (
	Proyectosff( 1
.ff1 2
Findff2 6
(ff6 7
	referenceff7 @
)ff@ A
;ffA B
ifgg 
(gg 
proyectogg 
==gg 
nullgg  $
)gg$ %
{gg% &
returnhh 
newhh #
GuardarProyectoResponsehh 6
(hh6 7
$strhh7 U
)hhU V
;hhV W
}ii 
tryjj 
{jj 
proyectokk 
.kk !
investigadorPrincipalkk 2
=kk3 4
_contextkk5 =
.kk= >
Usuarioskk> F
.kkF G
FindkkG K
(kkK L
proyectokkL T
.kkT U+
referenciaInvestigadorPrincipalkkU t
)kkt u
;kku v
proyectoll 
.ll !
investigadorPrincipalll 2
.ll2 3
personall3 :
=ll; <
_contextll= E
.llE F
PersonasllF N
.llN O
FindllO S
(llS T
proyectollT \
.ll\ ]+
referenciaInvestigadorPrincipalll] |
)ll| }
;ll} ~
proyectomm 
.mm "
investigadorSecundariomm 3
=mm4 5
_contextmm6 >
.mm> ?
Usuariosmm? G
.mmG H
FindmmH L
(mmL M
proyectommM U
.mmU V,
 referenciaInvestigadorSecundariommV v
)mmv w
;mmw x
proyectonn 
.nn "
investigadorSecundarionn 3
.nn3 4
personann4 ;
=nn< =
_contextnn> F
.nnF G
PersonasnnG O
.nnO P
FindnnP T
(nnT U
proyectonnU ]
.nn] ^,
 referenciaInvestigadorSecundarionn^ ~
)nn~ 
;	nn Ä
proyectopp 
.pp 
evaluadorProyecto1pp /
=pp0 1
_contextpp2 :
.pp: ;
Usuariospp; C
.ppC D
FindppD H
(ppH I
proyectoppI Q
.ppQ R(
referenciaEvaluadorProyecto1ppR n
)ppn o
;ppo p
proyectoqq 
.qq 
evaluadorProyecto1qq /
.qq/ 0
personaqq0 7
=qq8 9
_contextqq: B
.qqB C
PersonasqqC K
.qqK L
FindqqL P
(qqP Q
proyectoqqQ Y
.qqY Z(
referenciaEvaluadorProyecto1qqZ v
)qqv w
;qqw x
proyectorr 
.rr 
evaluadorProyecto2rr /
=rr0 1
_contextrr2 :
.rr: ;
Usuariosrr; C
.rrC D
FindrrD H
(rrH I
proyectorrI Q
.rrQ R(
referenciaEvaluadorProyecto2rrR n
)rrn o
;rro p
proyectoss 
.ss 
evaluadorProyecto2ss /
.ss/ 0
personass0 7
=ss8 9
_contextss: B
.ssB C
PersonasssC K
.ssK L
FindssL P
(ssP Q
proyectossQ Y
.ssY Z(
referenciaEvaluadorProyecto2ssZ v
)ssv w
;ssw x
}tt 
catchtt 
(tt 
	Exceptiontt !
)tt! "
{tt" #
}tt# $
returnvv 
newvv #
GuardarProyectoResponsevv 2
(vv2 3
proyectovv3 ;
)vv; <
;vv< =
}yy 	
public{{	 #
GuardarProyectoResponse{{ '

Actualizar{{( 2
({{2 3
Proyecto{{3 ;
proyectoNuevo{{< I
){{I J
{|| 	
try}} 
{~~ 
var 
proyectoViejo !
=" #
_context$ ,
., -
	Proyectos- 6
.6 7
Find7 ;
(; <
proyectoNuevo< I
.I J
codigoProyectoJ X
)X Y
;Y Z
if
ÄÄ 
(
ÄÄ 
proyectoViejo
ÄÄ !
!=
ÄÄ! #
null
ÄÄ# '
)
ÄÄ' (
{
ÄÄ( )
proyectoViejo
ÅÅ !
.
ÅÅ! "
codigoProyecto
ÅÅ" 0
=
ÅÅ1 2
proyectoNuevo
ÅÅ3 @
.
ÅÅ@ A
codigoProyecto
ÅÅA O
;
ÅÅO P
proyectoViejo
ÇÇ !
.
ÇÇ! "
tituloProyecto
ÇÇ" 0
=
ÇÇ1 2
proyectoNuevo
ÇÇ3 @
.
ÇÇ@ A
tituloProyecto
ÇÇA O
;
ÇÇO P
proyectoViejo
ÉÉ !
.
ÉÉ! "-
referenciaInvestigadorPrincipal
ÉÉ" A
=
ÉÉB C
proyectoNuevo
ÉÉD Q
.
ÉÉQ R-
referenciaInvestigadorPrincipal
ÉÉR q
;
ÉÉq r
proyectoViejo
ÑÑ !
.
ÑÑ! ".
 referenciaInvestigadorSecundario
ÑÑ" B
=
ÑÑC D
proyectoNuevo
ÑÑE R
.
ÑÑR S.
 referenciaInvestigadorSecundario
ÑÑS s
;
ÑÑs t
proyectoViejo
ÖÖ !
.
ÖÖ! "
areaProyecto
ÖÖ" .
=
ÖÖ/ 0
proyectoNuevo
ÖÖ1 >
.
ÖÖ> ?
areaProyecto
ÖÖ? K
;
ÖÖK L
proyectoViejo
ÜÜ !
.
ÜÜ! ""
lineaDeInvestigacion
ÜÜ" 6
=
ÜÜ7 8
proyectoNuevo
ÜÜ9 F
.
ÜÜF G"
lineaDeInvestigacion
ÜÜG [
;
ÜÜ[ \
proyectoViejo
áá !
.
áá! "
tipoProyecto
áá" .
=
áá/ 0
proyectoNuevo
áá1 >
.
áá> ?
tipoProyecto
áá? K
;
ááK L
proyectoViejo
àà !
.
àà! "
fechaPresentacion
àà" 3
=
àà4 5
proyectoNuevo
àà6 C
.
ààC D
fechaPresentacion
ààD U
;
ààU V
proyectoViejo
ââ !
.
ââ! "
linkProyecto
ââ" .
=
ââ/ 0
proyectoNuevo
ââ1 >
.
ââ> ?
linkProyecto
ââ? K
;
ââK L
proyectoViejo
ää !
.
ää! "
estadoProyecto
ää" 0
=
ää1 2
proyectoNuevo
ää3 @
.
ää@ A
estadoProyecto
ääA O
;
ääO P
proyectoViejo
ãã !
.
ãã! "!
comentariosProyecto
ãã" 5
=
ãã6 7
proyectoNuevo
ãã8 E
.
ããE F!
comentariosProyecto
ããF Y
;
ããY Z
proyectoViejo
åå !
.
åå! "*
referenciaEvaluadorProyecto1
åå" >
=
åå? @
proyectoNuevo
ååA N
.
ååN O*
referenciaEvaluadorProyecto1
ååO k
;
ååk l
proyectoViejo
çç !
.
çç! "*
referenciaEvaluadorProyecto2
çç" >
=
çç? @
proyectoNuevo
ççA N
.
ççN O*
referenciaEvaluadorProyecto2
ççO k
;
ççk l
try
éé 
{
éé 
proyectoViejo
èè %
.
èè% &#
investigadorPrincipal
èè& ;
=
èè< =
_context
èè> F
.
èèF G
Usuarios
èèG O
.
èèO P
Find
èèP T
(
èèT U
proyectoViejo
èèU b
.
èèb c.
referenciaInvestigadorPrincipalèèc Ç
)èèÇ É
;èèÉ Ñ
proyectoViejo
êê %
.
êê% &$
investigadorSecundario
êê& <
=
êê= >
_context
êê? G
.
êêG H
Usuarios
êêH P
.
êêP Q
Find
êêQ U
(
êêU V
proyectoViejo
êêV c
.
êêc d/
 referenciaInvestigadorSecundarioêêd Ñ
)êêÑ Ö
;êêÖ Ü
proyectoViejo
ëë %
.
ëë% & 
evaluadorProyecto1
ëë& 8
=
ëë9 :
_context
ëë; C
.
ëëC D
Usuarios
ëëD L
.
ëëL M
Find
ëëM Q
(
ëëQ R
proyectoViejo
ëëR _
.
ëë_ `*
referenciaEvaluadorProyecto1
ëë` |
)
ëë| }
;
ëë} ~
proyectoViejo
íí %
.
íí% & 
evaluadorProyecto2
íí& 8
=
íí9 :
_context
íí; C
.
ííC D
Usuarios
ííD L
.
ííL M
Find
ííM Q
(
ííQ R
proyectoViejo
ííR _
.
íí_ `*
referenciaEvaluadorProyecto2
íí` |
)
íí| }
;
íí} ~
}
ìì 
catch
ìì 
(
ìì 
	Exception
ìì %
)
ìì% &
{
ìì& '
}
ìì' (
_context
ïï 
.
ïï 
	Proyectos
ïï &
.
ïï& '
Update
ïï' -
(
ïï- .
proyectoViejo
ïï. ;
)
ïï; <
;
ïï< =
_context
ññ 
.
ññ 
SaveChanges
ññ (
(
ññ( )
)
ññ) *
;
ññ* +
return
óó 
new
óó %
GuardarProyectoResponse
óó 6
(
óó6 7
proyectoViejo
óó7 D
)
óóD E
;
óóE F
}
òò 
return
ôô 
new
ôô %
GuardarProyectoResponse
ôô 2
(
ôô2 3
$str
ôô3 P
)
ôôP Q
;
ôôQ R
}
öö 
catch
õõ 
(
õõ 
	Exception
õõ 
e
õõ 
)
õõ 
{
úú 
return
ùù 
new
ùù %
GuardarProyectoResponse
ùù 2
(
ùù2 3
e
ùù3 4
.
ùù4 5
Message
ùù5 <
)
ùù< =
;
ùù= >
}
ûû 
}
üü 	
public
°° 
class
°° %
GuardarProyectoResponse
°° ,
{
¢¢ 	
public
££ %
GuardarProyectoResponse
££ *
(
££* +
Proyecto
££+ 3
proyecto
££4 <
)
££< =
{
§§ 
Error
•• 
=
•• 
false
•• 
;
•• 
Proyecto
¶¶ 
=
¶¶ 
proyecto
¶¶ #
;
¶¶# $
}
ßß 
public
©© %
GuardarProyectoResponse
©© *
(
©©* +
string
©©+ 1
mensaje
©©2 9
)
©©9 :
{
™™ 
Error
´´ 
=
´´ 
true
´´ 
;
´´ 
Mensaje
¨¨ 
=
¨¨ 
mensaje
¨¨ !
;
¨¨! "
}
≠≠ 
public
ØØ %
GuardarProyectoResponse
ØØ *
(
ØØ* +
bool
∞∞ 
error
∞∞ 
,
∞∞ 
string
±± 
mensaje
±± 
,
±± 
Proyecto
≤≤ 
proyecto
≤≤ !
)
≥≥ 
{
¥¥ 
this
µµ 
.
µµ 
Error
µµ 
=
µµ 
error
µµ "
;
µµ" #
this
∂∂ 
.
∂∂ 
Mensaje
∂∂ 
=
∂∂ 
mensaje
∂∂ &
;
∂∂& '
this
∑∑ 
.
∑∑ 
Proyecto
∑∑ 
=
∑∑ 
proyecto
∑∑  (
;
∑∑( )
}
∏∏ 
public
∫∫ 
bool
∫∫ 
Error
∫∫ 
{
∫∫ 
get
∫∫  #
;
∫∫# $
set
∫∫% (
;
∫∫( )
}
∫∫* +
public
ºº 
string
ºº 
Mensaje
ºº !
{
ºº" #
get
ºº$ '
;
ºº' (
set
ºº) ,
;
ºº, -
}
ºº. /
public
ææ 
Proyecto
ææ 
Proyecto
ææ $
{
ææ% &
get
ææ' *
;
ææ* +
set
ææ, /
;
ææ/ 0
}
ææ1 2
}
øø 	
}
¿¿ 
}¡¡ πP
WD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\Logica\UsuarioService.cs
	namespace 	
Logica
 
{		 
public

 

class

 
UsuarioService

 
{ 
private 
readonly 
ProyectoContext $
_context% -
;- .
public 
UsuarioService 
( 
ProyectoContext -
context. 5
)5 6
{ 	
_context 
= 
context 
; 
} 	
public "
GuardarUsuarioResponse %
Guardar& -
(- .
Usuario. 5
usuario6 =
,= >
string? E
validatePassF R
)R S
{ 	
try 
{ 
if 
( 
usuario 
. 
password $
!=% '
validatePass( 4
)4 5
{5 6
return 
new "
GuardarUsuarioResponse 5
(5 6
$str6 [
)[ \
;\ ]
} 
var 
usuarioBuscado "
=# $
_context% -
.- .
Usuarios. 6
.6 7
Find7 ;
(; <
usuario< C
.C D
userNameD L
)L M
;M N
if 
( 
usuarioBuscado !
!=! #
null# '
)' (
{( )
return 
new "
GuardarUsuarioResponse 5
(5 6
$str6 d
)d e
;e f
} 
_context 
. 
Usuarios !
.! "
Add" %
(% &
usuario& -
)- .
;. /
_context 
. 
SaveChanges $
($ %
)% &
;& '
return   
new   "
GuardarUsuarioResponse   1
(  1 2
usuario  2 9
)  9 :
;  : ;
}!! 
catch"" 
("" 
	Exception"" 
e"" 
)"" 
{## 
return$$ 
new$$ "
GuardarUsuarioResponse$$ 1
($$1 2
$"$$2 4
$str$$4 L
{$$L M
e$$M N
.$$N O
Message$$O V
}$$V W
"$$W X
)$$X Y
;$$Y Z
}%% 
}&& 	
public(( 
List(( 
<(( 
Usuario(( 
>(( 
ConsultarTodos(( +
(((+ ,
)((, -
{)) 	
List** 
<** 
Usuario** 
>** 
usuarios** "
=**# $
_context**% -
.**- .
Usuarios**. 6
.**6 7
ToList**7 =
(**= >
)**> ?
;**? @
foreach++ 
(++ 
var++ 
item++ 
in++ 
usuarios++  (
)++( )
{++) *
item,, 
.,, 
persona,, 
=,, 
_context,, '
.,,' (
Personas,,( 0
.,,0 1
Find,,1 5
(,,5 6
item,,6 :
.,,: ;
userName,,; C
),,C D
;,,D E
}-- 
return.. 
usuarios.. 
;.. 
}// 	
public11 
List11 
<11 
Usuario11 
>11 
ConsultarAdmins11 ,
(11, -
)11- .
{22 	
List33 
<33 
Usuario33 
>33 
usuarios33 "
=33# $
_context33% -
.33- .
Usuarios33. 6
.336 7
Where337 <
(33< =
p33= >
=>33? A
p33B C
.33C D
userType33D L
==33L N
$str33N ]
)33] ^
.33^ _
ToList33_ e
(33e f
)33f g
;33g h
foreach44 
(44 
var44 
item44 
in44 
usuarios44  (
)44( )
{44) *
item55 
.55 
persona55 
=55 
_context55 '
.55' (
Personas55( 0
.550 1
Find551 5
(555 6
item556 :
.55: ;
userName55; C
)55C D
;55D E
}66 
return77 
usuarios77 
;77 
}88 	
public:: "
GuardarUsuarioResponse:: %

Actualizar::& 0
(::0 1
Usuario::1 8
usuarioNuevo::9 E
)::E F
{;; 	
try<< 
{== 
var>> 
usuarioViejo>>  
=>>! "
_context>># +
.>>+ ,
Usuarios>>, 4
.>>4 5
Find>>5 9
(>>9 :
usuarioNuevo>>: F
.>>F G
userName>>G O
)>>O P
;>>P Q
if?? 
(?? 
usuarioViejo??  
!=??  "
null??" &
)??& '
{??' (
usuarioViejo@@  
.@@  !
userType@@! )
=@@* +
usuarioNuevo@@, 8
.@@8 9
userType@@9 A
;@@A B
usuarioViejoAA  
.AA  !
personaAA! (
=AA) *
_contextAA+ 3
.AA3 4
PersonasAA4 <
.AA< =
FindAA= A
(AAA B
usuarioViejoAAB N
.AAN O
userNameAAO W
)AAW X
;AAX Y
_contextBB 
.BB 
UsuariosBB %
.BB% &
UpdateBB& ,
(BB, -
usuarioViejoBB- 9
)BB9 :
;BB: ;
_contextCC 
.CC 
SaveChangesCC (
(CC( )
)CC) *
;CC* +
returnDD 
newDD "
GuardarUsuarioResponseDD 5
(DD5 6
usuarioNuevoDD6 B
)DDB C
;DDC D
}EE 
returnFF 
newFF "
GuardarUsuarioResponseFF 1
(FF1 2
$strFF2 N
)FFN O
;FFO P
}GG 
catchHH 
(HH 
	ExceptionHH 
eHH 
)HH 
{II 
returnJJ 
newJJ "
GuardarUsuarioResponseJJ 1
(JJ1 2
eJJ2 3
.JJ3 4
MessageJJ4 ;
)JJ; <
;JJ< =
}KK 
}LL 	
publicNN 
UsuarioNN 
ValidarLoginNN #
(NN# $
stringNN$ *
userNameNN+ 3
,NN3 4
stringNN5 ;
passwordNN< D
)NND E
{OO 	
varPP 
usuarioPP 
=PP 
_contextPP "
.PP" #
UsuariosPP# +
.PP+ ,
FindPP, 0
(PP0 1
userNamePP1 9
)PP9 :
;PP: ;
ifQQ 
(QQ 
usuarioQQ 
!=QQ 
nullQQ 
)QQ 
{QQ  
ifRR 
(RR 
usuarioRR 
.RR 
passwordRR #
.RR# $
EqualsRR$ *
(RR* +
passwordRR+ 3
)RR3 4
)RR4 5
{RR5 6
usuarioSS 
.SS 
personaSS #
=SS$ %
_contextSS& .
.SS. /
PersonasSS/ 7
.SS7 8
FindSS8 <
(SS< =
usuarioSS= D
.SSD E
userNameSSE M
)SSM N
;SSN O
returnTT 
usuarioTT "
;TT" #
}UU 
}VV 
returnWW 
nullWW 
;WW 
}XX 	
publicZZ "
GuardarUsuarioResponseZZ %
ConsultarOneZZ& 2
(ZZ2 3
stringZZ3 9
userNameZZ: B
)ZZB C
{ZZC D
var[[ 
usuario[[ 
=[[ 
_context[[ "
.[[" #
Usuarios[[# +
.[[+ ,
Find[[, 0
([[0 1
userName[[1 9
)[[9 :
;[[: ;
usuario\\ 
.\\ 
persona\\ 
=\\ 
_context\\ &
.\\& '
Personas\\' /
.\\/ 0
Find\\0 4
(\\4 5
userName\\5 =
)\\= >
;\\> ?
if]] 
(]] 
usuario]] 
==]] 
null]] 
)]] 
{]] 
return^^ 
new^^ "
GuardarUsuarioResponse^^ 1
(^^1 2
$str^^2 I
)^^I J
;^^J K
}__ 
return`` 
new`` "
GuardarUsuarioResponse`` -
(``- .
usuario``. 5
)``5 6
;``6 7
}aa 	
publicdd 
classdd "
GuardarUsuarioResponsedd +
{ee 	
publicff "
GuardarUsuarioResponseff )
(ff) *
Usuarioff* 1
usuarioff2 9
)ff9 :
{gg 
Errorhh 
=hh 
falsehh 
;hh 
Usuarioii 
=ii 
usuarioii !
;ii! "
}jj 
publicll "
GuardarUsuarioResponsell )
(ll) *
stringll* 0
mensajell1 8
)ll8 9
{mm 
Errornn 
=nn 
truenn 
;nn 
Mensajeoo 
=oo 
mensajeoo !
;oo! "
}pp 
publicrr "
GuardarUsuarioResponserr )
(rr) *
boolrr* .
errorrr/ 4
,rr4 5
stringrr5 ;
mensajerr< C
,rrC D
UsuariorrD K
usuariorrL S
)rrS T
{ss 
thistt 
.tt 
Errortt 
=tt 
errortt "
;tt" #
thisuu 
.uu 
Mensajeuu 
=uu 
mensajeuu &
;uu& '
thisvv 
.vv 
Usuariovv 
=vv 
usuariovv &
;vv& '
}ww 
publicyy 
boolyy 
Erroryy 
{yy 
getyy  #
;yy# $
setyy% (
;yy( )
}yy* +
public{{ 
string{{ 
Mensaje{{ !
{{{" #
get{{$ '
;{{' (
set{{) ,
;{{, -
}{{. /
public}} 
Usuario}} 
Usuario}} "
{}}# $
get}}% (
;}}( )
set}}* -
;}}- .
}}}/ 0
}~~ 	
} 
}ÄÄ 