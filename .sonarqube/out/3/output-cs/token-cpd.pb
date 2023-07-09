˜$
tD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\ClientApp\src\app\services\jwtService.cs
public

 
class

 

JwtService

 
{ 
private 
readonly 

AppSetting 
_appSettings  ,
;, -
public 


JwtService 
( 
IOptions 
< 

AppSetting )
>) *
appSettings+ 6
)6 7
=>8 :
_appSettings; G
=H I
appSettingsJ U
.U V
ValueV [
;[ \
public 

LoginViewModel 
GenerateToken '
(' (
Usuario( /
	userLogIn0 9
)9 :
{ 
if 

( 
	userLogIn 
== 
null 
) 
return %
null& *
;* +
var 
userResponse 
= 
new 
LoginViewModel -
(- .
). /
{0 1
userName 
= 
	userLogIn  
.  !
userName! )
,) *
userType 
= 
	userLogIn  
.  !
userType! )
,) *
persona 
= 
	userLogIn 
.  
persona  '
} 	
;	 

var 
tokenHandler 
= 
new #
JwtSecurityTokenHandler 6
(6 7
)7 8
;8 9
var 
key 
= 
Encoding 
. 
ASCII  
.  !
GetBytes! )
() *
_appSettings* 6
.6 7
Secret7 =
)= >
;> ?
var 
tokenDescriptor 
= 
new !#
SecurityTokenDescriptor" 9
{ 	
Subject 
= 
new 
ClaimsIdentity (
(( )
new) ,
Claim- 2
[2 3
]3 4
{   
new!! 
Claim!! 
(!! 

ClaimTypes!! (
.!!( )
NameIdentifier!!) 7
,!!7 8
	userLogIn!!9 B
.!!B C
userName!!C K
.!!K L
ToString!!L T
(!!T U
)!!U V
)!!V W
,!!W X
new"" 
Claim"" 
("" 

ClaimTypes"" (
.""( )
Name"") -
,""- .
	userLogIn""/ 8
.""8 9
persona""9 @
.""@ A
nombre""A G
.""G H
ToString""H P
(""P Q
)""Q R
)""R S
,""S T
new## 
Claim## 
(## 

ClaimTypes## (
.##( )
Email##) .
,##. /
	userLogIn##0 9
.##9 :
persona##: A
.##A B
correo##B H
.##H I
ToString##I Q
(##Q R
)##R S
)##S T
,##T U
new$$ 
Claim$$ 
($$ 

ClaimTypes$$ (
.$$( )
MobilePhone$$) 4
,$$4 5
	userLogIn$$6 ?
.$$? @
persona$$@ G
.$$G H
telefono$$H P
.$$P Q
ToString$$Q Y
($$Y Z
)$$Z [
)$$[ \
,$$\ ]
new%% 
Claim%% 
(%% 

ClaimTypes%% (
.%%( )
Role%%) -
,%%- .
	userLogIn%%/ 8
.%%8 9
userType%%9 A
.%%A B
ToString%%B J
(%%J K
)%%K L
)%%L M
,%%M N
}&& 
)&& 
,&& 
Expires'' 
='' 
DateTime'' 
.'' 
UtcNow'' %
.''% &
AddDays''& -
(''- .
$num''. /
)''/ 0
,''0 1
SigningCredentials(( 
=((  
new((! $
SigningCredentials((% 7
(((7 8
new((8 ; 
SymmetricSecurityKey((< P
(((P Q
key((Q T
)((T U
,((U V
SecurityAlgorithms((W i
.((i j
HmacSha256Signature((j }
)((} ~
})) 	
;))	 

var** 
token** 
=** 
tokenHandler**  
.**  !
CreateToken**! ,
(**, -
tokenDescriptor**- <
)**< =
;**= >
userResponse++ 
.++ 
token++ 
=++ 
tokenHandler++ )
.++) *

WriteToken++* 4
(++4 5
token++5 :
)++: ;
;++; <
return,, 
userResponse,, 
;,, 
}-- 
}.. ◊
`D:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Config\AppSetting.cs
public 
class 

AppSetting 
{ 
public 
string 
Secret 
{ 
get "
;" #
set$ '
;' (
}) *
} ∂
jD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Controllers\LoginController.cs
	namespace 	
ProyectoPWEB
 
. 
Controllers "
{ 
[ 
	Authorize 
] 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
LoginController  
:! "
ControllerBase# 1
{ 
ProyectoContext 
_context  
;  !
UsuarioService 
usuarioService %
;% &

JwtService 

jwtService 
; 
public 
LoginController 
( 
ProyectoContext .
context/ 6
,6 7
IOptions8 @
<@ A

AppSettingA K
>K L
appSettingsM X
)X Y
{ 	
_context 
= 
context 
; 
var 
admin 
= 
_context  
.  !
Usuarios! )
.) *
Find* .
(. /
$str/ 6
)6 7
;7 8
if 
( 
admin 
== 
null 
) 
{ 
_context 
. 
Usuarios !
.! "
Add" %
(% &
new& )
Usuario* 1
(1 2
)2 3
{ 
userName 
= 
$str &
,& '
password 
= 
$str &
,& '
userType   
=   
$str   .
,  . /
}!! 
)"" 
;"" 
var## 
registrosGuardados## &
=##' (
_context##) 1
.##1 2
SaveChanges##2 =
(##= >
)##> ?
;##? @
}$$ 
usuarioService%% 
=%% 
new%%  
UsuarioService%%! /
(%%/ 0
context%%0 7
)%%7 8
;%%8 9

jwtService&& 
=&& 
new&& 

JwtService&& '
(&&' (
appSettings&&( 3
)&&3 4
;&&4 5
}'' 	
[)) 	
AllowAnonymous))	 
])) 
[** 	
HttpPost**	 
]** 
public++ 
IActionResult++ 
Login++ "
(++" #
[++# $
FromBody++$ ,
]++, -
LoginInputModel++- <
model++= B
)++B C
{,, 	
var-- 
usuario-- 
=-- 
usuarioService-- (
.--( )
ValidarLogin--) 5
(--5 6
model--6 ;
.--; <
userName--< D
,--D E
model--F K
.--K L
password--L T
)--T U
;--U V
if.. 
(.. 
usuario.. 
==.. 
null.. 
)..  
{..! "

ModelState// 
.// 
AddModelError// (
(//( )
$str//) <
,//< =
$str//> `
)//` a
;//a b
var00 
problemDetails00 "
=00# $
new00% ($
ValidationProblemDetails00) A
(00A B

ModelState00B L
)00L M
{00M N
Status11 
=11 
StatusCodes11 (
.11( )
Status400BadRequest11) <
}22 
;22 
return33 

BadRequest33 !
(33! "
problemDetails33" 0
)330 1
;331 2
}44 
var55 
response55 
=55 

jwtService55 %
.55% &
GenerateToken55& 3
(553 4
usuario554 ;
)55; <
;55< =
return66 
Ok66 
(66 
response66 
)66 
;66  
}77 	
}88 
}99 ø0
lD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Controllers\PersonaController.cs
	namespace 	
ProyectoPWEB
 
. 
Controllers "
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PersonaController "
:# $
ControllerBase% 3
{ 
private 
IConfiguration 
_configuration -
;- .
private 
readonly 
PersonaService '
personaService( 6
;6 7
public 
PersonaController  
(  !
ProyectoContext! 0
context1 8
)8 9
{ 	
personaService 
= 
new  
PersonaService! /
(/ 0
context0 7
)7 8
;8 9
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
Persona #
># $
Guardar% ,
(, -
PersonaInputModel- >
personaInput? K
)K L
{ 	
var   
persona   
=   
MapearPersona   '
(  ' (
personaInput  ( 4
)  4 5
;  5 6
var!! 
	respuesta!! 
=!! 
personaService!! *
.!!* +
Guardar!!+ 2
(!!2 3
persona!!3 :
)!!: ;
;!!; <
if"" 
("" 
	respuesta"" 
."" 
Error"" 
)""  
{## 

ModelState$$ 
.$$ 
AddModelError$$ (
($$( )
$str$$) :
,$$: ;
	respuesta$$< E
.$$E F
Mensaje$$F M
)$$M N
;$$N O
var%% 
problemDetails%% "
=%%# $
new&& $
ValidationProblemDetails&& 0
(&&0 1

ModelState&&1 ;
)&&; <
{'' 
Status'' 
='' 
StatusCodes'' *
.''* +
Status400BadRequest''+ >
}''? @
;''@ A
return(( 

BadRequest(( !
(((! "
problemDetails((" 0
)((0 1
;((1 2
})) 
return** 
Ok** 
(** 
persona** 
)** 
;** 
}++ 	
private-- 
Persona-- 
MapearPersona-- %
(--% &
PersonaInputModel--& 7
personaInput--8 D
)--D E
{.. 	
var// 
persona// 
=// 
new00 
Persona00 
{00 
identificacion11 "
=11# $
personaInput11% 1
.111 2
identificacion112 @
,11@ A
tipoIdentificacion22 &
=22' (
personaInput22) 5
.225 6
tipoIdentificacion226 H
,22H I
nombre33 
=33 
personaInput33 )
.33) *
nombre33* 0
,330 1
correo44 
=44 
personaInput44 )
.44) *
correo44* 0
,440 1
telefono55 
=55 
personaInput55 +
.55+ ,
telefono55, 4
,554 5
}66 
;66 
return77 
persona77 
;77 
}88 	
private:: 
Persona:: 
MapearPersonaUpdate:: +
(::+ ,
PersonaUpdateModel::, >
personaUpdate::? L
)::L M
{;; 	
var<< 
persona<< 
=<< 
new== 
Persona== 
{== 
identificacion>> "
=>># $
personaUpdate>>% 2
.>>2 3
identificacion>>3 A
,>>A B
tipoIdentificacion?? &
=??' (
personaUpdate??) 6
.??6 7
tipoIdentificacion??7 I
,??I J
nombre@@ 
=@@ 
personaUpdate@@ *
.@@* +
nombre@@+ 1
,@@1 2
correoAA 
=AA 
personaUpdateAA *
.AA* +
correoAA+ 1
,AA1 2
telefonoBB 
=BB 
personaUpdateBB ,
.BB, -
telefonoBB- 5
,BB5 6
}CC 
;CC 
returnDD 
personaDD 
;DD 
}EE 	
[GG 	
HttpGetGG	 
]GG 
publicHH 
IEnumerableHH 
<HH 
PersonaViewModelHH +
>HH+ ,
GetsHH- 1
(HH1 2
)HH2 3
{II 	
varJJ 
personasJJ 
=JJ 
personaServiceKK 
.KK 
ConsultarTodosKK -
(KK- .
)KK. /
.KK/ 0
SelectKK0 6
(KK6 7
pKK7 8
=>KK9 ;
newKK< ?
PersonaViewModelKK@ P
(KKP Q
pKKQ R
)KKR S
)KKS T
;KKT U
returnLL 
personasLL 
;LL 
}MM 	
[OO 	
HttpPutOO	 
]OO 
publicPP 
ActionResultPP 
<PP 
stringPP "
>PP" #
PutPP$ '
(PP' (
PersonaUpdateModelPP( :
personaUpdatePP; H
)PPH I
{QQ 	
PersonaRR 
personaRR 
=RR 
MapearPersonaUpdateRR 1
(RR1 2
personaUpdateRR2 ?
)RR? @
;RR@ A
varSS 
responseSS 
=SS 
personaServiceSS )
.SS) *

ActualizarSS* 4
(SS4 5
personaSS5 <
)SS< =
;SS= >
ifTT 
(TT 
responseTT 
.TT 
ErrorTT 
)TT 
{UU 
returnVV 

BadRequestVV "
(VV" #
responseVV# +
.VV+ ,
MensajeVV, 3
)VV3 4
;VV4 5
}WW 
returnXX 
OkXX 
(XX 
responseXX 
.XX 
PersonaXX &
)XX& '
;XX' (
}YY 	
}ZZ 
}[[ ü
mD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Controllers\PeticionController.cs
	namespace 	
ProyectoPWEB
 
. 
Controllers "
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PeticionController #
:$ %
ControllerBase& 4
{ 
private 
IConfiguration 
_configuration -
;- .
private 
readonly 
PeticionService (
peticionService) 8
;8 9
public 
PeticionController !
(! "
ProyectoContext" 1
context2 9
): ;
{ 	
peticionService 
= 
new !
PeticionService" 1
(1 2
context2 9
)9 :
;: ;
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
Peticion $
>$ %
Guardar& -
(- .
PeticionInputModel. @
peticionInputA N
)N O
{ 	
var 
peticion 
= 
MapearPeticion )
() *
peticionInput* 7
)7 8
;8 9
var   
	respuesta   
=   
peticionService   +
.  + ,
Guardar  , 3
(  3 4
peticion  4 <
)  < =
;  = >
if!! 
(!! 
	respuesta!! 
.!! 
Error!! 
)!!  
{"" 
return## 

BadRequest## !
(##! "
	respuesta##" +
.##+ ,
Mensaje##, 3
)##3 4
;##4 5
}$$ 
return%% 
Ok%% 
(%% 
peticion%% 
)%% 
;%%  
}&& 	
private(( 
Peticion(( 
MapearPeticion(( '
(((' (
PeticionInputModel((( :
peticionInput((; H
)((H I
{)) 	
var** 
peticion** 
=** 
new** 
Peticion** '
{**' (
codigoPeticion++ 
=++  
peticionInput++! .
.++. /
codigoPeticion++/ =
,++= >!
referenciaSolicitante,, %
=,,& '
peticionInput,,( 5
.,,5 6!
referenciaSolicitante,,6 K
,,,K L!
referenciaFuncionario-- %
=--& '
peticionInput--( 5
.--5 6!
referenciaFuncionario--6 K
,--K L
fechaPeticion.. 
=.. 
peticionInput..  -
...- .
fechaPeticion... ;
,..; <
contexto// 
=// 
peticionInput// (
.//( )
contexto//) 1
}00 
;00 
return22 
peticion22 
;22 
}33 	
[55 	
HttpGet55	 
]55 
public66 
IEnumerable66 
<66 
PeticionViewModel66 ,
>66, -
Gets66. 2
(662 3
)663 4
{77 	
var88 

peticiones88 
=88 
peticionService88 ,
.88, -
ConsultarTodos88- ;
(88; <
)88< =
.88= >
Select88> D
(88D E
p88E F
=>88G I
new88J M
PeticionViewModel88N _
(88_ `
p88` a
)88a b
)88b c
;88c d
return99 

peticiones99 
;99 
}:: 	
}<< 
}== ™à
mD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Controllers\ProyectoController.cs
	namespace 	
ProyectoPWEB
 
. 
Controllers "
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
ProyectoController #
:$ %
ControllerBase& 4
{ 
private 
IConfiguration 
_configuration -
;- .
private 
readonly 
ProyectoService (
proyectoService) 8
;8 9
public 
ProyectoController !
(! "
ProyectoContext" 1
context2 9
)9 :
{ 	
proyectoService 
= 
new !
ProyectoService" 1
(1 2
context2 9
)9 :
;: ;
} 	
[ 	
HttpPost	 
] 
public 
ActionResult 
< 
Proyecto $
>$ %
Guardar& -
(- .
ProyectoInputModel. @
proyectoInputA N
)N O
{   	
var!! 
proyecto!! 
=!! 
MapearProyecto!! )
(!!) *
proyectoInput!!* 7
)!!7 8
;!!8 9
var"" 
	respuesta"" 
="" 
proyectoService"" +
.""+ ,
Guardar"", 3
(""3 4
proyecto""4 <
)""< =
;""= >
if## 
(## 
	respuesta## 
.## 
Error## 
)##  
{$$ 

ModelState%% 
.%% 
AddModelError%% (
(%%( )
$str%%) ;
,%%; <
	respuesta%%= F
.%%F G
Mensaje%%G N
)%%N O
;%%O P
var&& 
problemDetails&& "
=&&# $
new'' $
ValidationProblemDetails'' 0
(''0 1

ModelState''1 ;
)''; <
{(( 
Status(( 
=(( 
StatusCodes(( *
.((* +
Status400BadRequest((+ >
}((? @
;((@ A
return)) 

BadRequest)) !
())! "
problemDetails))" 0
)))0 1
;))1 2
}** 
return++ 
Ok++ 
(++ 
proyecto++ 
)++ 
;++  
},, 	
private.. 
Proyecto.. 
MapearProyecto.. '
(..' (
ProyectoInputModel..( :
proyectoInput..; H
)..H I
{// 	
var00 
proyecto00 
=00 
new11 
Proyecto11 
{11 
tituloProyecto22 "
=22# $
proyectoInput22% 2
.222 3
tituloProyecto223 A
,22A B+
referenciaInvestigadorPrincipal33 3
=334 5
proyectoInput336 C
.33C D+
referenciaInvestigadorPrincipal33D c
,33c d,
 referenciaInvestigadorSecundario44 4
=445 6
proyectoInput447 D
.44D E,
 referenciaInvestigadorSecundario44E e
,44e f 
grupoDeInvestigacion55 (
=55) *
proyectoInput55+ 8
.558 9 
grupoDeInvestigacion559 M
,55M N
areaProyecto66  
=66! "
proyectoInput66# 0
.660 1
areaProyecto661 =
,66= > 
lineaDeInvestigacion77 (
=77) *
proyectoInput77+ 8
.778 9 
lineaDeInvestigacion779 M
,77M N
tipoProyecto88  
=88! "
proyectoInput88# 0
.880 1
tipoProyecto881 =
,88= >
fechaPresentacion99 %
=99& '
proyectoInput99( 5
.995 6
fechaPresentacion996 G
,99G H
linkProyecto::  
=::! "
proyectoInput::# 0
.::0 1
linkProyecto::1 =
,::= >
estadoProyecto;; "
=;;# $
proyectoInput;;% 2
.;;2 3
estadoProyecto;;3 A
,;;A B
comentariosProyecto<< '
=<<( )
proyectoInput<<* 7
.<<7 8
comentariosProyecto<<8 K
,<<K L(
referenciaEvaluadorProyecto1== 0
===1 2
proyectoInput==3 @
.==@ A(
referenciaEvaluadorProyecto1==A ]
,==] ^(
referenciaEvaluadorProyecto2>> 0
=>>1 2
proyectoInput>>3 @
.>>@ A(
referenciaEvaluadorProyecto2>>A ]
}?? 
;?? 
return@@ 
proyecto@@ 
;@@ 
}AA 	
[CC 	
HttpGetCC	 
]CC 
publicDD 
IEnumerableDD 
<DD 
ProyectoViewModelDD ,
>DD, -
GetsDD. 2
(DD2 3
)DD3 4
{EE 	
varFF 
	proyectosFF 
=FF 
proyectoServiceFF +
.FF+ ,
ConsultarTodosFF, :
(FF: ;
)FF; <
;FF< =
ifGG 
(GG 
	proyectosGG 
!=GG 
nullGG !
)GG! "
{HH 
returnII 
MapearProyectoViewII )
(II) *
	proyectosII* 3
)II3 4
;II4 5
}JJ 
returnKK 
newKK 
ListKK 
<KK 
ProyectoViewModelKK -
>KK- .
(KK. /
)KK/ 0
;KK0 1
}LL 	
[OO 	
HttpGetOO	 
(OO 
$strOO 
)OO 
]OO  
publicPP 
ActionResultPP 
<PP 
ProyectoViewModelPP -
>PP- .
GetPP/ 2
(PP2 3
stringPP3 9
	referencePP: C
)PPC D
{QQ 	
varRR 
responseRR 
=RR 
proyectoServiceRR +
.RR+ ,
ConsultarOneRR, 8
(RR8 9
	referenceRR9 B
)RRB C
;RRC D
ifSS 
(SS 
!SS 
responseSS 
.SS 
ErrorSS 
)SS  
{SS  !
varTT 
proyectoTT 
=TT 
newTT "
ProyectoViewModelTT# 4
(TT4 5
responseTT5 =
.TT= >
ProyectoTT> F
)TTF G
;TTG H
returnUU 
OkUU 
(UU 
proyectoUU "
)UU" #
;UU# $
}VV 

ModelStateWW 
.WW 
AddModelErrorWW $
(WW$ %
$strWW% 6
,WW6 7
responseWW8 @
.WW@ A
MensajeWWA H
)WWH I
;WWI J
varXX 
problemDetailsXX 
=XX  
newXX! $$
ValidationProblemDetailsXX% =
(XX= >

ModelStateXX> H
)XXH I
{YY 
StatusYY 
=YY 
StatusCodesYY *
.YY* +
Status400BadRequestYY+ >
}YY? @
;YY@ A
returnZZ 

BadRequestZZ 
(ZZ 
responseZZ &
.ZZ& '
MensajeZZ' .
)ZZ. /
;ZZ/ 0
}[[ 	
[]] 	
HttpGet]]	 
(]] 
$str]] 
+]] 
$str]] "
)]]" #
]]]# $
public^^ 
ActionResult^^ 
<^^ 
ProyectoViewModel^^ -
>^^- .
	GetByCode^^/ 8
(^^8 9
int^^9 <
	reference^^= F
)^^F G
{__ 	
var`` 
response`` 
=`` 
proyectoService`` +
.``+ ,
ConsultarOneXCodigo``, ?
(``? @
	reference``@ I
)``I J
;``J K
ifaa 
(aa 
!aa 
responseaa 
.aa 
Erroraa 
)aa  
{aa  !
varbb 
proyectobb 
=bb 
newbb "
ProyectoViewModelbb# 4
(bb4 5
responsebb5 =
.bb= >
Proyectobb> F
)bbF G
;bbG H
returncc 
Okcc 
(cc 
proyectocc "
)cc" #
;cc# $
}dd 

ModelStateee 
.ee 
AddModelErroree $
(ee$ %
$stree% 6
,ee6 7
responseee8 @
.ee@ A
MensajeeeA H
)eeH I
;eeI J
varff 
problemDetailsff 
=ff  
newff! $$
ValidationProblemDetailsff% =
(ff= >

ModelStateff> H
)ffH I
{gg 
Statusgg 
=gg 
StatusCodesgg *
.gg* +
Status400BadRequestgg+ >
}gg? @
;gg@ A
returnhh 

BadRequesthh 
(hh 
responsehh &
.hh& '
Mensajehh' .
)hh. /
;hh/ 0
}ii 	
[kk 	
HttpPutkk	 
]kk 
publicll 
ActionResultll 
<ll 
stringll "
>ll" #
Putll$ '
(ll' (
ProyectoUpdateModelll( ;
proyectoUpdatell< J
)llJ K
{mm 	
Proyectonn 
proyectonn 
=nn  
MapearProyectoUpdatenn  4
(nn4 5
proyectoUpdatenn5 C
)nnC D
;nnD E
varoo 
responseoo 
=oo 
proyectoServiceoo *
.oo* +

Actualizaroo+ 5
(oo5 6
proyectooo6 >
)oo> ?
;oo? @
ifpp 
(pp 
responsepp 
.pp 
Errorpp 
)pp 
{qq 

ModelStaterr 
.rr 
AddModelErrorrr (
(rr( )
$strrr) :
,rr: ;
responserr< D
.rrD E
MensajerrE L
)rrL M
;rrM N
varss 
problemDetailsss "
=ss# $
newss% ($
ValidationProblemDetailsss) A
(ssA B

ModelStatessB L
)ssL M
{tt 
Statustt 
=tt 
StatusCodestt *
.tt* +
Status400BadRequesttt+ >
}tt? @
;tt@ A
returnuu 

BadRequestuu 
(uu 
responseuu &
.uu& '
Mensajeuu' .
)uu. /
;uu/ 0
}vv 
returnww 
Okww 
(ww 
responseww 
.ww 
Proyectoww '
)ww' (
;ww( )
}xx 	
privatezz 
Proyectozz  
MapearProyectoUpdatezz -
(zz- .
ProyectoUpdateModelzz. A
proyectoInputzzB O
)zzO P
{{{ 	
var|| 
proyecto|| 
=|| 
new}} 
Proyecto}} 
{}} 
codigoProyecto~~ "
=~~# $
proyectoInput~~% 2
.~~2 3
codigoProyecto~~3 A
,~~A B
tituloProyecto "
=# $
proyectoInput% 2
.2 3
tituloProyecto3 A
,A B-
referenciaInvestigadorPrincipal
ÄÄ 3
=
ÄÄ4 5
proyectoInput
ÄÄ6 C
.
ÄÄC D-
referenciaInvestigadorPrincipal
ÄÄD c
,
ÄÄc d.
 referenciaInvestigadorSecundario
ÅÅ 4
=
ÅÅ5 6
proyectoInput
ÅÅ7 D
.
ÅÅD E.
 referenciaInvestigadorSecundario
ÅÅE e
,
ÅÅe f"
grupoDeInvestigacion
ÇÇ (
=
ÇÇ) *
proyectoInput
ÇÇ+ 8
.
ÇÇ8 9"
grupoDeInvestigacion
ÇÇ9 M
,
ÇÇM N
areaProyecto
ÉÉ  
=
ÉÉ! "
proyectoInput
ÉÉ# 0
.
ÉÉ0 1
areaProyecto
ÉÉ1 =
,
ÉÉ= >"
lineaDeInvestigacion
ÑÑ (
=
ÑÑ) *
proyectoInput
ÑÑ+ 8
.
ÑÑ8 9"
lineaDeInvestigacion
ÑÑ9 M
,
ÑÑM N
tipoProyecto
ÖÖ  
=
ÖÖ! "
proyectoInput
ÖÖ# 0
.
ÖÖ0 1
tipoProyecto
ÖÖ1 =
,
ÖÖ= >
fechaPresentacion
ÜÜ %
=
ÜÜ& '
proyectoInput
ÜÜ( 5
.
ÜÜ5 6
fechaPresentacion
ÜÜ6 G
,
ÜÜG H
linkProyecto
áá  
=
áá! "
proyectoInput
áá# 0
.
áá0 1
linkProyecto
áá1 =
,
áá= >
estadoProyecto
àà "
=
àà# $
proyectoInput
àà% 2
.
àà2 3
estadoProyecto
àà3 A
,
ààA B!
comentariosProyecto
ââ '
=
ââ( )
proyectoInput
ââ* 7
.
ââ7 8!
comentariosProyecto
ââ8 K
,
ââK L*
referenciaEvaluadorProyecto1
ää 0
=
ää1 2
proyectoInput
ää3 @
.
ää@ A*
referenciaEvaluadorProyecto1
ääA ]
,
ää] ^*
referenciaEvaluadorProyecto2
ãã 0
=
ãã1 2
proyectoInput
ãã3 @
.
ãã@ A*
referenciaEvaluadorProyecto2
ããA ]
}
åå 
;
åå 
return
çç 
proyecto
çç 
;
çç 
}
éé 	
private
êê 
IEnumerable
êê 
<
êê 
ProyectoViewModel
êê -
>
êê- . 
MapearProyectoView
êê/ A
(
êêA B
List
êêB F
<
êêF G
Proyecto
êêG O
>
êêO P
	proyectos
êêQ Z
)
êêZ [
{
ëë 	
List
íí 
<
íí 
ProyectoViewModel
íí "
>
íí" #"
proyectosConsultados
íí$ 8
=
íí9 :
new
ìì 
List
ìì 
<
ìì 
ProyectoViewModel
ìì *
>
ìì* +
(
ìì+ ,
)
ìì, -
;
ìì- .
foreach
îî 
(
îî 
var
îî 
item
îî 
in
îî  
	proyectos
îî! *
)
îî* +
{
ïï 
ProyectoViewModel
ññ !
proyecto
ññ" *
=
ññ+ ,
new
ññ- 0
ProyectoViewModel
ññ1 B
(
ññB C
)
ññC D
;
ññD E
proyecto
óó 
.
óó 
codigoProyecto
óó '
=
óó( )
item
óó* .
.
óó. /
codigoProyecto
óó/ =
;
óó= >
proyecto
òò 
.
òò -
referenciaInvestigadorPrincipal
òò 8
=
òò9 :
item
òò; ?
.
òò? @-
referenciaInvestigadorPrincipal
òò@ _
;
òò_ `
proyecto
ôô 
.
ôô #
investigadorPrincipal
ôô .
=
ôô/ 0
item
ôô1 5
.
ôô5 6#
investigadorPrincipal
ôô6 K
;
ôôK L
proyecto
öö 
.
öö .
 referenciaInvestigadorSecundario
öö 9
=
öö: ;
item
öö< @
.
öö@ A.
 referenciaInvestigadorSecundario
ööA a
;
ööa b
proyecto
õõ 
.
õõ $
investigadorSecundario
õõ /
=
õõ0 1
item
õõ2 6
.
õõ6 7$
investigadorSecundario
õõ7 M
;
õõM N
proyecto
úú 
.
úú 
tituloProyecto
úú '
=
úú( )
item
úú* .
.
úú. /
tituloProyecto
úú/ =
;
úú= >
proyecto
ùù 
.
ùù "
grupoDeInvestigacion
ùù -
=
ùù. /
item
ùù0 4
.
ùù4 5"
grupoDeInvestigacion
ùù5 I
;
ùùI J
proyecto
ûû 
.
ûû 
areaProyecto
ûû %
=
ûû& '
item
ûû( ,
.
ûû, -
areaProyecto
ûû- 9
;
ûû9 :
proyecto
üü 
.
üü "
lineaDeInvestigacion
üü -
=
üü. /
item
üü0 4
.
üü4 5"
lineaDeInvestigacion
üü5 I
;
üüI J
proyecto
†† 
.
†† 
tipoProyecto
†† %
=
††& '
item
††( ,
.
††, -
tipoProyecto
††- 9
;
††9 :
proyecto
°° 
.
°° 
fechaPresentacion
°° *
=
°°+ ,
item
°°- 1
.
°°1 2
fechaPresentacion
°°2 C
;
°°C D
proyecto
¢¢ 
.
¢¢ 
linkProyecto
¢¢ %
=
¢¢& '
item
¢¢( ,
.
¢¢, -
linkProyecto
¢¢- 9
;
¢¢9 :
proyecto
££ 
.
££ 
estadoProyecto
££ '
=
££( )
item
££* .
.
££. /
estadoProyecto
££/ =
;
££= >
proyecto
§§ 
.
§§ !
comentariosProyecto
§§ ,
=
§§- .
item
§§/ 3
.
§§3 4!
comentariosProyecto
§§4 G
;
§§G H
proyecto
•• 
.
•• *
referenciaEvaluadorProyecto1
•• 5
=
••6 7
item
••8 <
.
••< =*
referenciaEvaluadorProyecto1
••= Y
;
••Y Z
proyecto
¶¶ 
.
¶¶  
evaluadorProyecto1
¶¶ +
=
¶¶, -
item
¶¶. 2
.
¶¶2 3 
evaluadorProyecto1
¶¶3 E
;
¶¶E F
proyecto
ßß 
.
ßß *
referenciaEvaluadorProyecto2
ßß 5
=
ßß6 7
item
ßß8 <
.
ßß< =*
referenciaEvaluadorProyecto2
ßß= Y
;
ßßY Z
proyecto
®® 
.
®®  
evaluadorProyecto2
®® +
=
®®, -
item
®®. 2
.
®®2 3 
evaluadorProyecto2
®®3 E
;
®®E F"
proyectosConsultados
©© $
.
©©$ %
Add
©©% (
(
©©) *
proyecto
©©* 2
)
©©2 3
;
©©3 4
}
™™ 
return
´´ "
proyectosConsultados
´´ '
;
´´' (
}
¨¨ 	
}
≠≠ 
}ÆÆ ≤D
lD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Controllers\UsuarioController.cs
	namespace 	
ProyectoPWEB
 
. 
Controllers "
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
UsuarioController "
:# $
ControllerBase% 3
{ 
private 
IConfiguration 
_configuration -
;- .
private 
readonly 
UsuarioService '
usuarioService( 6
;6 7
public 
UsuarioController  
(  !
ProyectoContext! 0
context1 8
)8 9
{ 	
usuarioService 
= 
new  
UsuarioService! /
(/ 0
context0 7
)7 8
;8 9
} 	
[ 	
HttpPost	 
] 
public   
ActionResult   
<   
Usuario   #
>  # $
Guardar  % ,
(  , -
UsuarioInputModel  - >
usuarioInput  ? K
)  K L
{!! 	
var"" 
usuario"" 
="" 
MapearUsuario"" '
(""' (
usuarioInput""( 4
)""4 5
;""5 6
var## 
	respuesta## 
=## 
usuarioService## *
.##* +
Guardar##+ 2
(##2 3
usuario##3 :
,##: ;
usuarioInput##< H
.##H I
validatePass##I U
)##U V
;##V W
if$$ 
($$ 
	respuesta$$ 
.$$ 
Error$$ 
)$$  
{%% 

ModelState&& 
.&& 
AddModelError&& (
(&&( )
$str&&) :
,&&: ;
	respuesta&&< E
.&&E F
Mensaje&&F M
)&&M N
;&&N O
var'' 
problemDetails'' "
=''# $
new(( $
ValidationProblemDetails(( 0
(((0 1

ModelState((1 ;
)((; <
{)) 
Status)) 
=)) 
StatusCodes)) *
.))* +
Status400BadRequest))+ >
}))? @
;))@ A
return** 

BadRequest** !
(**! "
problemDetails**" 0
)**0 1
;**1 2
}++ 
return,, 
Ok,, 
(,, 
usuario,, 
),, 
;,, 
}-- 	
private// 
Usuario// 
MapearUsuario// %
(//% &
UsuarioInputModel//& 7
usuarioInput//8 D
)//D E
{00 	
var11 
usuario11 
=11 
new22 
Usuario22 
{22 
userName33 
=33 
usuarioInput33 +
.33+ ,
userName33, 4
,334 5
userType44 
=44 
usuarioInput44 +
.44+ ,
userType44, 4
,444 5
password55 
=55 
usuarioInput55 +
.55+ ,
password55, 4
,554 5
persona66 
=66 
usuarioInput66 *
.66* +
persona66+ 2
,662 3
}77 
;77 
return88 
usuario88 
;88 
}99 	
private;; 
Usuario;; 
MapearUsuarioUpdate;; +
(;;+ ,
UsuarioUpdateModel;;, >
usuarioUpdate;;? L
);;L M
{<< 	
var== 
usuario== 
=== 
new>> 
Usuario>> 
{>> 
userName?? 
=?? 
usuarioUpdate?? ,
.??, -
userName??- 5
,??5 6
userType@@ 
=@@ 
usuarioUpdate@@ ,
.@@, -
userType@@- 5
,@@5 6
personaAA 
=AA 
usuarioUpdateAA +
.AA+ ,
personaAA, 3
,AA3 4
}BB 
;BB 
returnCC 
usuarioCC 
;CC 
}DD 	
[FF 	
HttpGetFF	 
]FF 
publicGG 
IEnumerableGG 
<GG 
UsuarioViewModelGG +
>GG+ ,
GetsGG- 1
(GG1 2
)GG2 3
{HH 	
varII 
usuariosII 
=II 
usuarioServiceII )
.II) *
ConsultarTodosII* 8
(II8 9
)II9 :
.II: ;
SelectII; A
(IIA B
pIIB C
=>IID F
newIIG J
UsuarioViewModelIIK [
(II[ \
pII\ ]
)II] ^
)II^ _
;II_ `
returnJJ 
usuariosJJ 
;JJ 
}KK 	
[LL 	
HttpGetLL	 
(LL 
$strLL 
)LL 
]LL 
publicMM 
IEnumerableMM 
<MM 
UsuarioViewModelMM +
>MM+ ,
	GetAdminsMM- 6
(MM6 7
)MM7 8
{NN 	
varOO 
usuariosOO 
=OO 
usuarioServiceOO )
.OO) *
ConsultarAdminsOO* 9
(OO9 :
)OO: ;
.OO; <
SelectOO< B
(OOB C
pOOC D
=>OOE G
newOOH K
UsuarioViewModelOOL \
(OO\ ]
pOO] ^
)OO^ _
)OO_ `
;OO` a
returnPP 
usuariosPP 
;PP 
}QQ 	
[SS 	
HttpGetSS	 
(SS 
$strSS 
)SS 
]SS 
publicTT 
ActionResultTT 
<TT 
UsuarioViewModelTT ,
>TT, -
GetTT. 1
(TT1 2
stringTT2 8
userNameTT9 A
)TTA B
{UU 	
varVV 
responseVV 
=VV 
usuarioServiceVV *
.VV* +
ConsultarOneVV+ 7
(VV7 8
userNameVV8 @
)VV@ A
;VVA B
ifWW 
(WW 
!WW 
responseWW 
.WW 
ErrorWW 
)WW  
{WW  !
varXX 
usuarioXX 
=XX 
newXX !
UsuarioViewModelXX" 2
(XX2 3
responseXX3 ;
.XX; <
UsuarioXX< C
)XXC D
;XXD E
returnYY 
OkYY 
(YY 
usuarioYY !
)YY! "
;YY" #
}ZZ 

ModelState[[ 
.[[ 
AddModelError[[ $
([[$ %
$str[[% 5
,[[5 6
response[[7 ?
.[[? @
Mensaje[[@ G
)[[G H
;[[H I
var\\ 
problemDetails\\ 
=\\  
new\\! $$
ValidationProblemDetails\\% =
(\\= >

ModelState\\> H
)\\H I
{]] 
Status]] 
=]] 
StatusCodes]] *
.]]* +
Status400BadRequest]]+ >
}]]? @
;]]@ A
return^^ 

BadRequest^^ 
(^^ 
response^^ &
.^^& '
Mensaje^^' .
)^^. /
;^^/ 0
}__ 	
[bb 	
HttpPutbb	 
]bb 
publiccc 
ActionResultcc 
<cc 
stringcc "
>cc" #
Putcc$ '
(cc' (
UsuarioUpdateModelcc( :
usuarioUpdatecc; H
)ccH I
{dd 	
Usuarioee 
usuarioee 
=ee 
MapearUsuarioUpdateee 1
(ee1 2
usuarioUpdateee2 ?
)ee? @
;ee@ A
varff 
responseff 
=ff 
usuarioServiceff )
.ff) *

Actualizarff* 4
(ff4 5
usuarioff5 <
)ff< =
;ff= >
ifgg 
(gg 
responsegg 
.gg 
Errorgg 
)gg 
{hh 

ModelStateii 
.ii 
AddModelErrorii (
(ii( )
$strii) <
,ii< =
responseii> F
.iiF G
MensajeiiG N
)iiN O
;iiO P
varjj 
problemDetailsjj "
=jj# $
newjj% ($
ValidationProblemDetailsjj) A
(jjA B

ModelStatejjB L
)jjL M
{kk 
Statuskk 
=kk 
StatusCodeskk *
.kk* +
Status400BadRequestkk+ >
}kk? @
;kk@ A
returnll 

BadRequestll "
(ll" #
responsell# +
.ll+ ,
Mensajell, 3
)ll3 4
;ll4 5
}mm 
returnnn 
Oknn 
(nn 
responsenn 
.nn 
Usuarionn &
)nn& '
;nn' (
}oo 	
}pp 
}qq ¶
`D:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Models\LoginModel.cs
	namespace 	
ProyectoPWEB
 
. 
Models 
{ 
public 

class 
LoginInputModel  
{  !
public 
string 
userName 
{  
get  #
;# $
set$ '
;' (
}( )
public 
string 
password 
{  
get  #
;# $
set$ '
;' (
}( )
public		 
LoginInputModel		 
(		 
string		 %
userName		& .
,		. /
string		0 6
password		7 ?
)		? @
{		@ A
this

 
.

 
userName

 
=

 
userName

 $
;

$ %
this 
. 
password 
= 
password $
;$ %
} 	
} 
public 

class 
LoginViewModel 
{  
public 
string 
userName 
{  
get  #
;# $
set$ '
;' (
}( )
public 
string 
userType 
{  
get  #
;# $
set$ '
;' (
}( )
public 
string 
token 
{ 
get  
;  !
set! $
;$ %
}% &
public 
Persona 
persona 
{ 
get "
;" #
set# &
;& '
}' (
public 
LoginViewModel 
( 
Usuario %
usuario& -
)- .
{ 	
userName 
= 
usuario 
. 
userName '
;' (
userType 
= 
usuario 
. 
userType '
;' (
persona 
= 
usuario 
. 
persona %
;% &
} 	
public 
LoginViewModel 
( 
) 
{  
} 	
} 
}   Ê
bD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Models\PersonaModel.cs
	namespace 	
ProyectoPWEB
 
. 
Models 
{		 
public

 

class

 
PersonaInputModel

 "
{ 
[ 	
Required	 
, 
	MinLength 
( 
$num 
) 
]  
public 
string 
identificacion $
{% &
get& )
;) *
set+ .
;. /
}/ 0
[ 	
Required	 
, 
	MinLength 
( 
$num 
) 
]  
public 
string 
tipoIdentificacion (
{) *
get* -
;- .
set/ 2
;2 3
}3 4
[ 	
Required	 
, 
	MinLength 
( 
$num 
) 
]  
public 
string 
nombre 
{ 
get  
;  !
set" %
;% &
}& '
[ 	
Required	 
, 
	MinLength 
( 
$num 
) 
]  
public 
string 
correo 
{ 
get  
;  !
set" %
;% &
}& '
[ 	
Required	 
, 
	MinLength 
( 
$num 
) 
]  
public 
string 
telefono 
{ 
get "
;" #
set$ '
;' (
}( )
} 
public 

class 
PersonaViewModel !
:! "
PersonaInputModel" 3
{3 4
public 
PersonaViewModel 
(  
Persona  '
persona( /
)/ 0
{ 	
identificacion 
= 
persona $
.$ %
identificacion% 3
;3 4
tipoIdentificacion 
=  
persona! (
.( )
tipoIdentificacion) ;
;; <
nombre 
= 
persona 
. 
nombre #
;# $
correo 
= 
persona 
. 
correo #
;# $
telefono 
= 
persona 
. 
telefono '
;' (
}   	
public"" 
PersonaViewModel"" 
(""  
)""  !
{""! "
}## 	
}$$ 
public&& 

class&& 
PersonaUpdateModel&& #
:&&# $
PersonaInputModel&&% 6
{&&6 7
}'' 
}(( ≈
cD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Models\PeticionModel.cs
	namespace 	
ProyectoPWEB
 
. 
Models 
{ 
public		 

class		 
PeticionInputModel		 #
{

 
public 
int 
codigoPeticion !
{" #
get# &
;& '
set' *
;* +
}+ ,
public 
string !
referenciaSolicitante +
{, -
get- 0
;0 1
set1 4
;4 5
}5 6
public 
string !
referenciaFuncionario +
{+ ,
get, /
;/ 0
set0 3
;3 4
}4 5
public 
String 
contexto 
{  
get  #
;# $
set$ '
;' (
}( )
public 
DateTime 
fechaPeticion %
{& '
get' *
;* +
set+ .
;. /
}/ 0
} 
public 
class 
PeticionViewModel &
:& '
PeticionInputModel' 9
{ 
public 
Usuario 
solicitanteEST %
{& '
get' *
;* +
set+ .
;. /
}/ 0
public 
Usuario  
funcionarioEncargado +
{, -
get- 0
;0 1
set1 4
;4 5
}5 6
public 
PeticionViewModel  
(  !
Peticion! )
peticion* 2
)2 3
{ 	
codigoPeticion 
= 
peticion %
.% &
codigoPeticion& 4
;4 5
solicitanteEST 
= 
peticion %
.% &
solicitanteEST& 4
;4 5 
funcionarioEncargado  
=! "
peticion# +
.+ , 
funcionarioEncargado, @
;@ A
fechaPeticion 
= 
peticion $
.$ %
fechaPeticion% 2
;2 3
contexto 
= 
peticion 
.  
contexto  (
;( )
} 	
} 
} î?
cD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Models\ProyectoModel.cs
	namespace 	
ProyectoPWEB
 
. 
Models 
{		 
public

 

class

 
ProyectoInputModel

 #
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! F
)F G
,G H
	MinLengthI R
(R S
$numS T
)T U
]U V
public 
string 
tituloProyecto $
{% &
get& )
;) *
set+ .
;. /
}/ 0
[ 	
Required	 
( 
ErrorMessage 
=  
$str! \
)\ ]
]] ^
public 
string +
referenciaInvestigadorPrincipal 5
{6 7
get7 :
;: ;
set; >
;> ?
}? @
[ 	
Required	 
( 
ErrorMessage 
=  
$str! ]
)] ^
]^ _
public 
string ,
 referenciaInvestigadorSecundario 6
{7 8
get8 ;
;; <
set< ?
;? @
}@ A
[ 	
Required	 
( 
ErrorMessage 
=  
$str! I
)I J
,J K
	MinLengthL U
(U V
$numV W
)W X
]X Y
public 
string  
grupoDeInvestigacion *
{+ ,
get, /
;/ 0
set1 4
;4 5
}5 6
[ 	
Required	 
( 
ErrorMessage 
=  
$str! D
)D E
]E F
public 
string 
areaProyecto "
{# $
get$ '
;' (
set) ,
;, -
}- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! I
)I J
,J K
	MaxLength 
( 
$num 
, 
ErrorMessage "
=# $
$str% a
)b c
,c d
	MinLength 
( 
$num 
, 
ErrorMessage !
=" #
$str$ ^
)^ _
]_ `
public 
string  
lineaDeInvestigacion *
{+ ,
get, /
;/ 0
set1 4
;4 5
}5 6
[ 	
Required	 
( 
ErrorMessage 
=  
$str! C
)C D
]D E
public 
string 
tipoProyecto "
{# $
get$ '
;' (
set) ,
;, -
}- .
public 
DateTime 
fechaPresentacion )
{* +
get+ .
;. /
set0 3
;3 4
}4 5
[ 	
Required	 
( 
ErrorMessage 
=  
$str! D
)D E
]E F
public 
string 
linkProyecto "
{# $
get$ '
;' (
set) ,
;, -
}- .
public 
string 
estadoProyecto $
{% &
get& )
;) *
set+ .
;. /
}/ 0
public   
string   
comentariosProyecto   )
{  * +
get  + .
;  . /
set  0 3
;  3 4
}  4 5
public!! 
string!! (
referenciaEvaluadorProyecto1!! 2
{!!3 4
get!!4 7
;!!7 8
set!!8 ;
;!!; <
}!!< =
public"" 
string"" (
referenciaEvaluadorProyecto2"" 2
{""3 4
get""4 7
;""7 8
set""8 ;
;""; <
}""< =
}## 
public%% 
class%% 
ProyectoViewModel%% &
:%%' (
ProyectoInputModel%%) ;
{&& 
public'' 
int'' 
codigoProyecto'' !
{''" #
get''# &
;''& '
set''( +
;''+ ,
}'', -
public(( 
Usuario(( "
investigadorSecundario(( -
{((. /
get((/ 2
;((2 3
set((3 6
;((6 7
}((7 8
public)) 
Usuario)) !
investigadorPrincipal)) ,
{))- .
get)). 1
;))1 2
set))2 5
;))5 6
}))6 7
public** 
Usuario** 
evaluadorProyecto1** )
{*** +
get**+ .
;**. /
set**/ 2
;**2 3
}**3 4
public++ 
Usuario++ 
evaluadorProyecto2++ )
{++* +
get+++ .
;++. /
set++/ 2
;++2 3
}++3 4
public-- 
ProyectoViewModel--  
(--  !
Proyecto--! )
proyecto--* 2
)--2 3
{.. 	
codigoProyecto// 
=// 
proyecto// %
.//% &
codigoProyecto//& 4
;//4 5
tituloProyecto00 
=00 
proyecto00 %
.00% &
tituloProyecto00& 4
;004 5,
 referenciaInvestigadorSecundario11 ,
=11- .
proyecto11/ 7
.117 8,
 referenciaInvestigadorSecundario118 X
;11X Y"
investigadorSecundario22 "
=22# $
proyecto22% -
.22- ."
investigadorSecundario22. D
;22D E+
referenciaInvestigadorPrincipal33 +
=33, -
proyecto33. 6
.336 7+
referenciaInvestigadorPrincipal337 V
;33V W!
investigadorPrincipal44 !
=44" #
proyecto44$ ,
.44, -!
investigadorPrincipal44- B
;44B C 
grupoDeInvestigacion55  
=55! "
proyecto55# +
.55+ , 
grupoDeInvestigacion55, @
;55@ A
areaProyecto66 
=66 
proyecto66 #
.66# $
areaProyecto66$ 0
;660 1 
lineaDeInvestigacion77  
=77! "
proyecto77# +
.77+ , 
lineaDeInvestigacion77, @
;77@ A
tipoProyecto88 
=88 
proyecto88 #
.88# $
tipoProyecto88$ 0
;880 1
fechaPresentacion99 
=99 
proyecto99  (
.99( )
fechaPresentacion99) :
;99: ;
linkProyecto:: 
=:: 
proyecto:: #
.::# $
linkProyecto::$ 0
;::0 1
estadoProyecto;; 
=;; 
proyecto;; %
.;;% &
estadoProyecto;;& 4
;;;4 5
comentariosProyecto<< 
=<<  !
proyecto<<" *
.<<* +
comentariosProyecto<<+ >
;<<> ?(
referenciaEvaluadorProyecto1== (
===) *
proyecto==+ 3
.==3 4(
referenciaEvaluadorProyecto1==4 P
;==P Q
evaluadorProyecto1>> 
=>>  
proyecto>>! )
.>>) *
evaluadorProyecto1>>* <
;>>< =(
referenciaEvaluadorProyecto2?? (
=??) *
proyecto??+ 3
.??3 4(
referenciaEvaluadorProyecto2??4 P
;??P Q
evaluadorProyecto2@@ 
=@@  
proyecto@@! )
.@@) *
evaluadorProyecto2@@* <
;@@< =
}AA 	
publicCC 
ProyectoViewModelCC  
(CC  !
)CC! "
{DD 	
}EE 	
}FF 
publicHH 

classHH 
ProyectoUpdateModelHH $
:HH$ %
ProyectoInputModelHH& 8
{II 
publicKK 
intKK 
codigoProyectoKK !
{KK" #
getKK# &
;KK& '
setKK( +
;KK+ ,
}KK, -
}LL 
}NN ‹
bD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Models\UsuarioModel.cs
	namespace 	
ProyectoPWEB
 
. 
Models 
{		 
public

 

class

 
UsuarioInputModel

 "
{

" #
public 
string 
userName 
{  
get  #
;# $
set$ '
;' (
}( )
public 
string 
userType 
{ 
get "
;" #
set$ '
;' (
}( )
public 
string 
password 
{ 
get "
;" #
set$ '
;' (
}( )
public 
string 
validatePass "
{" #
get# &
;& '
set( +
;+ ,
}, -
public 
Persona 
persona 
{  
get  #
;# $
set$ '
;' (
}( )
} 
public 

class 
UsuarioViewModel !
{! "
public 
string 
userName 
{  
get  #
;# $
set$ '
;' (
}( )
public 
string 
userType 
{  
get  #
;# $
set$ '
;' (
}( )
public 
Persona 
persona 
{ 
get "
;" #
set# &
;& '
}' (
public 
UsuarioViewModel 
(  
Usuario  '
usuario( /
)/ 0
{ 	
userName 
= 
usuario 
. 
userName '
;' (
userType 
= 
usuario 
. 
userType '
;' (
persona 
= 
usuario 
. 
persona %
;% &
} 	
public 
UsuarioViewModel 
(  
)  !
{! "
}   	
}!! 
public## 

class## 
UsuarioUpdateModel## #
:### $
UsuarioInputModel##% 6
{##6 7
}$$ 
}%% ™
aD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Pages\Error.cshtml.cs
	namespace

 	
proyectoPWEB


 
.

 
Pages

 
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} ∞

VD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Program.cs
	namespace

 	
proyectoPWEB


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ù<
VD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\ProyectoPWEB\Startup.cs
	namespace 	
proyectoPWEB
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
var!! 
appSettingsSection!! "
=!!# $
Configuration!!% 2
.!!2 3

GetSection!!3 =
(!!= >
$str!!> J
)!!J K
;!!K L
services"" 
."" 
	Configure"" 
<"" 

AppSetting"" )
>"") *
(""* +
appSettingsSection""+ =
)""= >
;""> ?
var&& 
appSettings&& 
=&& 
appSettingsSection&& 0
.&&0 1
Get&&1 4
<&&4 5

AppSetting&&5 ?
>&&? @
(&&@ A
)&&A B
;&&B C
var'' 
key'' 
='' 
Encoding'' 
.'' 
ASCII'' $
.''$ %
GetBytes''% -
(''- .
appSettings''. 9
.''9 :
Secret'': @
)''@ A
;''A B
services(( 
.(( 
AddAuthentication(( &
(((& '
x((' (
=>(() +
{)) 
x** 
.** %
DefaultAuthenticateScheme** +
=**, -
JwtBearerDefaults**. ?
.**? @ 
AuthenticationScheme**@ T
;**T U
x++ 
.++ "
DefaultChallengeScheme++ (
=++) *
JwtBearerDefaults+++ <
.++< = 
AuthenticationScheme++= Q
;++Q R
},, 
),, 
.-- 
AddJwtBearer-- 
(-- 
x-- 
=>-- 
{.. 
x// 
.//  
RequireHttpsMetadata// &
=//' (
false//) .
;//. /
x00 
.00 
	SaveToken00 
=00 
true00 "
;00" #
x11 
.11 %
TokenValidationParameters11 +
=11, -
new11. 1%
TokenValidationParameters112 K
{22 $
ValidateIssuerSigningKey33 ,
=33- .
true33/ 3
,333 4
IssuerSigningKey44 $
=44% &
new44' * 
SymmetricSecurityKey44+ ?
(44? @
key44@ C
)44C D
,44D E
ValidateIssuer55 "
=55# $
false55% *
,55* +
ValidateAudience66 $
=66% &
false66' ,
}77 
;77 
}88 
)88 
;88 
var<< 
connectionString<<  
=<<! "
Configuration<<# 0
.<<0 1
GetConnectionString<<1 D
(<<D E
$str<<E X
)<<X Y
;<<Y Z
services== 
.== 
AddDbContext== !
<==! "
ProyectoContext==" 1
>==1 2
(==2 3
p==3 4
=>==5 7
p==7 8
.==8 9
UseSqlServer==9 E
(==E F
connectionString==F V
)==V W
)==W X
;==X Y
services>> 
.>> #
AddControllersWithViews>> ,
(>>, -
)>>- .
;>>. /
servicesAA 
.AA 
AddSpaStaticFilesAA &
(AA& '
configurationAA' 4
=>AA5 7
{BB 
configurationCC !
.CC! "
RootPathCC" *
=CC+ ,
$strCC- =
;CC= >
}DD 
)DD 
;DD 
servicesGG 
.GG 
AddSwaggerGenGG "
(GG" #
)GG# $
;GG$ %
}HH 	
publicKK 
voidKK 
	ConfigureKK 
(KK 
IApplicationBuilderKK 1
appKK2 5
,KK5 6
IWebHostEnvironmentKK7 J
envKKK N
)KKN O
{LL 	
ifMM 
(MM 
envMM 
.MM 
IsDevelopmentMM !
(MM! "
)MM" #
)MM# $
{NN 
appOO 
.OO %
UseDeveloperExceptionPageOO -
(OO- .
)OO. /
;OO/ 0
}PP 
elseQQ 
{RR 
appSS 
.SS 
UseExceptionHandlerSS '
(SS' (
$strSS( 0
)SS0 1
;SS1 2
appVV 
.VV 
UseHstsVV 
(VV 
)VV 
;VV 
}WW 
appYY 
.YY 
UseHttpsRedirectionYY #
(YY# $
)YY$ %
;YY% &
appZZ 
.ZZ 
UseStaticFilesZZ 
(ZZ 
)ZZ  
;ZZ  !
if[[ 
([[ 
![[ 
env[[ 
.[[ 
IsDevelopment[[ "
([[" #
)[[# $
)[[$ %
{\\ 
app]] 
.]] 
UseSpaStaticFiles]] %
(]]% &
)]]& '
;]]' (
}^^ 
app`` 
.`` 

UseSwagger`` 
(`` 
)`` 
;`` 
appaa 
.aa 
UseSwaggerUIaa 
(aa 
caa 
=>aa !
{bb 
ccc 
.cc 
SwaggerEndpointcc %
(cc% &
$strcc& @
,cc@ A
$strccB M
)ccM N
;ccN O
}dd 
)dd 
;dd 
appff 
.ff 

UseRoutingff 
(ff 
)ff 
;ff 
appii 
.ii 
UseCorsii 
(ii 
xii 
=>ii 
xii 
.ii 
AllowAnyOriginii -
(ii- .
)ii. /
.ii/ 0
AllowAnyMethodii0 >
(ii> ?
)ii? @
.ii@ A
AllowAnyHeaderiiA O
(iiO P
)iiP Q
)iiQ R
;iiR S
appjj 
.jj 
UseAuthenticationjj !
(jj! "
)jj" #
;jj# $
appkk 
.kk 
UseAuthorizationkk  
(kk  !
)kk! "
;kk" #
appoo 
.oo 
UseEndpointsoo 
(oo 
	endpointsoo &
=>oo' )
{pp 
	endpointsqq 
.qq 
MapControllerRouteqq 0
(qq0 1
nameqq1 5
:qq5 6
$strqq7 @
,qq@ A
patternrr 
:rr  
$strrr! D
)rrD E
;rrE F
}ss 
)ss 
;ss 
appuu 
.vv 
UseSpavv 
(vv 
spavv 
=>vv 
{ww 
spazz 
.zz 
Optionszz 
.zz  

SourcePathzz  *
=zz+ ,
$strzz- 8
;zz8 9
if|| 
(|| 
env|| 
.|| 
IsDevelopment|| )
(||) *
)||* +
)||+ ,
{}} 
spa~~ 
.~~ 
UseAngularCliServer~~ /
(~~/ 0
	npmScript~~0 9
:~~9 :
$str~~; B
)~~B C
;~~C D
} 
}
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ 