��
dD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\Datos\Migrations\20211125230457_M1.cs
	namespace 	
Datos
 
. 

Migrations 
{ 
public 

partial 
class 
M1 
: 
	Migration '
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{		 	
migrationBuilder

 
.

 
CreateTable

 (
(

( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
identificacion "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
type: >
:> ?
$str@ O
,O P
nullableQ Y
:Y Z
false[ `
)` a
,a b
tipoIdentificacion &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
type> B
:B C
$strD S
,S T
nullableU ]
:] ^
true_ c
)c d
,d e
nombre 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
nullableI Q
:Q R
trueS W
)W X
,X Y
correo 
= 
table "
." #
Column# )
<) *
string* 0
>0 1
(1 2
type2 6
:6 7
$str8 G
,G H
nullableI Q
:Q R
trueS W
)W X
,X Y
telefono 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
trueU Y
)Y Z
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
identificacion; I
)I J
;J K
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
userName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
falseU Z
)Z [
,[ \
userType 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
trueU Y
)Y Z
,Z [
password 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
type4 8
:8 9
$str: I
,I J
nullableK S
:S T
trueU Y
)Y Z
,Z [!
personaidentificacion   )
=  * +
table  , 1
.  1 2
Column  2 8
<  8 9
string  9 ?
>  ? @
(  @ A
type  A E
:  E F
$str  G V
,  V W
nullable  X `
:  ` a
true  b f
)  f g
}!! 
,!! 
constraints"" 
:"" 
table"" "
=>""# %
{## 
table$$ 
.$$ 

PrimaryKey$$ $
($$$ %
$str$$% 2
,$$2 3
x$$4 5
=>$$6 8
x$$9 :
.$$: ;
userName$$; C
)$$C D
;$$D E
table%% 
.%% 

ForeignKey%% $
(%%$ %
name&& 
:&& 
$str&& J
,&&J K
column'' 
:'' 
x''  !
=>''" $
x''% &
.''& '!
personaidentificacion''' <
,''< =
principalTable(( &
:((& '
$str((( 2
,((2 3
principalColumn)) '
:))' (
$str))) 9
,))9 :
onDelete**  
:**  !
ReferentialAction**" 3
.**3 4
Restrict**4 <
)**< =
;**= >
}++ 
)++ 
;++ 
migrationBuilder-- 
.-- 
CreateTable-- (
(--( )
name.. 
:.. 
$str.. "
,.." #
columns// 
:// 
table// 
=>// !
new//" %
{00 
codigoPeticion11 "
=11# $
table11% *
.11* +
Column11+ 1
<111 2
int112 5
>115 6
(116 7
type117 ;
:11; <
$str11= B
,11B C
nullable11D L
:11L M
false11N S
)11S T
.22 

Annotation22 #
(22# $
$str22$ 8
,228 9
$str22: @
)22@ A
,22A B!
referenciaSolicitante33 )
=33* +
table33, 1
.331 2
Column332 8
<338 9
string339 ?
>33? @
(33@ A
type33A E
:33E F
$str33G V
,33V W
nullable33X `
:33` a
true33b f
)33f g
,33g h"
solicitanteESTuserName44 *
=44+ ,
table44- 2
.442 3
Column443 9
<449 :
string44: @
>44@ A
(44A B
type44B F
:44F G
$str44H W
,44W X
nullable44Y a
:44a b
true44c g
)44g h
,44h i!
referenciaFuncionario55 )
=55* +
table55, 1
.551 2
Column552 8
<558 9
string559 ?
>55? @
(55@ A
type55A E
:55E F
$str55G V
,55V W
nullable55X `
:55` a
true55b f
)55f g
,55g h(
funcionarioEncargadouserName66 0
=661 2
table663 8
.668 9
Column669 ?
<66? @
string66@ F
>66F G
(66G H
type66H L
:66L M
$str66N ]
,66] ^
nullable66_ g
:66g h
true66i m
)66m n
,66n o
contexto77 
=77 
table77 $
.77$ %
Column77% +
<77+ ,
string77, 2
>772 3
(773 4
type774 8
:778 9
$str77: I
,77I J
nullable77K S
:77S T
true77U Y
)77Y Z
,77Z [
fechaPeticion88 !
=88" #
table88$ )
.88) *
Column88* 0
<880 1
DateTime881 9
>889 :
(88: ;
type88; ?
:88? @
$str88A L
,88L M
nullable88N V
:88V W
false88X ]
)88] ^
}99 
,99 
constraints:: 
::: 
table:: "
=>::# %
{;; 
table<< 
.<< 

PrimaryKey<< $
(<<$ %
$str<<% 4
,<<4 5
x<<6 7
=><<8 :
x<<; <
.<<< =
codigoPeticion<<= K
)<<K L
;<<L M
table== 
.== 

ForeignKey== $
(==$ %
name>> 
:>> 
$str>> S
,>>S T
column?? 
:?? 
x??  !
=>??" $
x??% &
.??& '(
funcionarioEncargadouserName??' C
,??C D
principalTable@@ &
:@@& '
$str@@( 2
,@@2 3
principalColumnAA '
:AA' (
$strAA) 3
,AA3 4
onDeleteBB  
:BB  !
ReferentialActionBB" 3
.BB3 4
RestrictBB4 <
)BB< =
;BB= >
tableCC 
.CC 

ForeignKeyCC $
(CC$ %
nameDD 
:DD 
$strDD M
,DDM N
columnEE 
:EE 
xEE  !
=>EE" $
xEE% &
.EE& '"
solicitanteESTuserNameEE' =
,EE= >
principalTableFF &
:FF& '
$strFF( 2
,FF2 3
principalColumnGG '
:GG' (
$strGG) 3
,GG3 4
onDeleteHH  
:HH  !
ReferentialActionHH" 3
.HH3 4
RestrictHH4 <
)HH< =
;HH= >
}II 
)II 
;II 
migrationBuilderKK 
.KK 
CreateTableKK (
(KK( )
nameLL 
:LL 
$strLL !
,LL! "
columnsMM 
:MM 
tableMM 
=>MM !
newMM" %
{NN 
codigoProyectoOO "
=OO# $
tableOO% *
.OO* +
ColumnOO+ 1
<OO1 2
intOO2 5
>OO5 6
(OO6 7
typeOO7 ;
:OO; <
$strOO= B
,OOB C
nullableOOD L
:OOL M
falseOON S
)OOS T
.PP 

AnnotationPP #
(PP# $
$strPP$ 8
,PP8 9
$strPP: @
)PP@ A
,PPA B
tituloProyectoQQ "
=QQ# $
tableQQ% *
.QQ* +
ColumnQQ+ 1
<QQ1 2
stringQQ2 8
>QQ8 9
(QQ9 :
typeQQ: >
:QQ> ?
$strQQ@ O
,QQO P
nullableQQQ Y
:QQY Z
trueQQ[ _
)QQ_ `
,QQ` a+
referenciaInvestigadorPrincipalRR 3
=RR4 5
tableRR6 ;
.RR; <
ColumnRR< B
<RRB C
stringRRC I
>RRI J
(RRJ K
typeRRK O
:RRO P
$strRRQ `
,RR` a
nullableRRb j
:RRj k
trueRRl p
)RRp q
,RRq r)
investigadorPrincipaluserNameSS 1
=SS2 3
tableSS4 9
.SS9 :
ColumnSS: @
<SS@ A
stringSSA G
>SSG H
(SSH I
typeSSI M
:SSM N
$strSSO ^
,SS^ _
nullableSS` h
:SSh i
trueSSj n
)SSn o
,SSo p,
 referenciaInvestigadorSecundarioTT 4
=TT5 6
tableTT7 <
.TT< =
ColumnTT= C
<TTC D
stringTTD J
>TTJ K
(TTK L
typeTTL P
:TTP Q
$strTTR a
,TTa b
nullableTTc k
:TTk l
trueTTm q
)TTq r
,TTr s*
investigadorSecundariouserNameUU 2
=UU3 4
tableUU5 :
.UU: ;
ColumnUU; A
<UUA B
stringUUB H
>UUH I
(UUI J
typeUUJ N
:UUN O
$strUUP _
,UU_ `
nullableUUa i
:UUi j
trueUUk o
)UUo p
,UUp q 
grupoDeInvestigacionVV (
=VV) *
tableVV+ 0
.VV0 1
ColumnVV1 7
<VV7 8
stringVV8 >
>VV> ?
(VV? @
typeVV@ D
:VVD E
$strVVF U
,VVU V
nullableVVW _
:VV_ `
trueVVa e
)VVe f
,VVf g
areaProyectoWW  
=WW! "
tableWW# (
.WW( )
ColumnWW) /
<WW/ 0
stringWW0 6
>WW6 7
(WW7 8
typeWW8 <
:WW< =
$strWW> M
,WWM N
nullableWWO W
:WWW X
trueWWY ]
)WW] ^
,WW^ _ 
lineaDeInvestigacionXX (
=XX) *
tableXX+ 0
.XX0 1
ColumnXX1 7
<XX7 8
stringXX8 >
>XX> ?
(XX? @
typeXX@ D
:XXD E
$strXXF U
,XXU V
nullableXXW _
:XX_ `
trueXXa e
)XXe f
,XXf g
tipoProyectoYY  
=YY! "
tableYY# (
.YY( )
ColumnYY) /
<YY/ 0
stringYY0 6
>YY6 7
(YY7 8
typeYY8 <
:YY< =
$strYY> M
,YYM N
nullableYYO W
:YYW X
trueYYY ]
)YY] ^
,YY^ _
fechaPresentacionZZ %
=ZZ& '
tableZZ( -
.ZZ- .
ColumnZZ. 4
<ZZ4 5
DateTimeZZ5 =
>ZZ= >
(ZZ> ?
typeZZ? C
:ZZC D
$strZZE P
,ZZP Q
nullableZZR Z
:ZZZ [
falseZZ\ a
)ZZa b
,ZZb c
linkProyecto[[  
=[[! "
table[[# (
.[[( )
Column[[) /
<[[/ 0
string[[0 6
>[[6 7
([[7 8
type[[8 <
:[[< =
$str[[> M
,[[M N
nullable[[O W
:[[W X
true[[Y ]
)[[] ^
,[[^ _
estadoProyecto\\ "
=\\# $
table\\% *
.\\* +
Column\\+ 1
<\\1 2
string\\2 8
>\\8 9
(\\9 :
type\\: >
:\\> ?
$str\\@ O
,\\O P
nullable\\Q Y
:\\Y Z
true\\[ _
)\\_ `
,\\` a
comentariosProyecto]] '
=]]( )
table]]* /
.]]/ 0
Column]]0 6
<]]6 7
string]]7 =
>]]= >
(]]> ?
type]]? C
:]]C D
$str]]E T
,]]T U
nullable]]V ^
:]]^ _
true]]` d
)]]d e
,]]e f(
referenciaEvaluadorProyecto1^^ 0
=^^1 2
table^^3 8
.^^8 9
Column^^9 ?
<^^? @
string^^@ F
>^^F G
(^^G H
type^^H L
:^^L M
$str^^N ]
,^^] ^
nullable^^_ g
:^^g h
true^^i m
)^^m n
,^^n o&
evaluadorProyecto1userName__ .
=__/ 0
table__1 6
.__6 7
Column__7 =
<__= >
string__> D
>__D E
(__E F
type__F J
:__J K
$str__L [
,__[ \
nullable__] e
:__e f
true__g k
)__k l
,__l m(
referenciaEvaluadorProyecto2`` 0
=``1 2
table``3 8
.``8 9
Column``9 ?
<``? @
string``@ F
>``F G
(``G H
type``H L
:``L M
$str``N ]
,``] ^
nullable``_ g
:``g h
true``i m
)``m n
,``n o&
evaluadorProyecto2userNameaa .
=aa/ 0
tableaa1 6
.aa6 7
Columnaa7 =
<aa= >
stringaa> D
>aaD E
(aaE F
typeaaF J
:aaJ K
$straaL [
,aa[ \
nullableaa] e
:aae f
trueaag k
)aak l
}bb 
,bb 
constraintscc 
:cc 
tablecc "
=>cc# %
{dd 
tableee 
.ee 

PrimaryKeyee $
(ee$ %
$stree% 3
,ee3 4
xee5 6
=>ee7 9
xee: ;
.ee; <
codigoProyectoee< J
)eeJ K
;eeK L
tableff 
.ff 

ForeignKeyff $
(ff$ %
namegg 
:gg 
$strgg P
,ggP Q
columnhh 
:hh 
xhh  !
=>hh" $
xhh% &
.hh& '&
evaluadorProyecto1userNamehh' A
,hhA B
principalTableii &
:ii& '
$strii( 2
,ii2 3
principalColumnjj '
:jj' (
$strjj) 3
,jj3 4
onDeletekk  
:kk  !
ReferentialActionkk" 3
.kk3 4
Restrictkk4 <
)kk< =
;kk= >
tablell 
.ll 

ForeignKeyll $
(ll$ %
namemm 
:mm 
$strmm P
,mmP Q
columnnn 
:nn 
xnn  !
=>nn" $
xnn% &
.nn& '&
evaluadorProyecto2userNamenn' A
,nnA B
principalTableoo &
:oo& '
$stroo( 2
,oo2 3
principalColumnpp '
:pp' (
$strpp) 3
,pp3 4
onDeleteqq  
:qq  !
ReferentialActionqq" 3
.qq3 4
Restrictqq4 <
)qq< =
;qq= >
tablerr 
.rr 

ForeignKeyrr $
(rr$ %
namess 
:ss 
$strss S
,ssS T
columntt 
:tt 
xtt  !
=>tt" $
xtt% &
.tt& ')
investigadorPrincipaluserNamett' D
,ttD E
principalTableuu &
:uu& '
$struu( 2
,uu2 3
principalColumnvv '
:vv' (
$strvv) 3
,vv3 4
onDeleteww  
:ww  !
ReferentialActionww" 3
.ww3 4
Restrictww4 <
)ww< =
;ww= >
tablexx 
.xx 

ForeignKeyxx $
(xx$ %
nameyy 
:yy 
$stryy T
,yyT U
columnzz 
:zz 
xzz  !
=>zz" $
xzz% &
.zz& '*
investigadorSecundariouserNamezz' E
,zzE F
principalTable{{ &
:{{& '
$str{{( 2
,{{2 3
principalColumn|| '
:||' (
$str||) 3
,||3 4
onDelete}}  
:}}  !
ReferentialAction}}" 3
.}}3 4
Restrict}}4 <
)}}< =
;}}= >
}~~ 
)~~ 
;~~ 
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� B
,
��B C
table
�� 
:
�� 
$str
�� #
,
��# $
column
�� 
:
�� 
$str
�� 6
)
��6 7
;
��7 8
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� <
,
��< =
table
�� 
:
�� 
$str
�� #
,
��# $
column
�� 
:
�� 
$str
�� 0
)
��0 1
;
��1 2
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ?
,
��? @
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� 4
)
��4 5
;
��5 6
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� ?
,
��? @
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� 4
)
��4 5
;
��5 6
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� B
,
��B C
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� 7
)
��7 8
;
��8 9
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� C
,
��C D
table
�� 
:
�� 
$str
�� "
,
��" #
column
�� 
:
�� 
$str
�� 8
)
��8 9
;
��9 :
migrationBuilder
�� 
.
�� 
CreateIndex
�� (
(
��( )
name
�� 
:
�� 
$str
�� 9
,
��9 :
table
�� 
:
�� 
$str
�� !
,
��! "
column
�� 
:
�� 
$str
�� /
)
��/ 0
;
��0 1
}
�� 	
	protected
�� 
override
�� 
void
�� 
Down
��  $
(
��$ %
MigrationBuilder
��% 5
migrationBuilder
��6 F
)
��F G
{
�� 	
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� "
)
��" #
;
��# $
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
�� !
)
��! "
;
��" #
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
migrationBuilder
�� 
.
�� 
	DropTable
�� &
(
��& '
name
�� 
:
�� 
$str
��  
)
��  !
;
��! "
}
�� 	
}
�� 
}�� �
dD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\Datos\Migrations\20220920052135_M2.cs
	namespace 	
Datos
 
. 

Migrations 
{ 
public 

partial 
class 
M2 
: 
	Migration '
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} �

WD:\avcer\Mau\PRUEBAS ING SOFT 2\Proyecto-Programacion-Web-main\Datos\ProyectoContext.cs
	namespace 	
Datos
 
{ 
public 

class 
ProyectoContext  
:! "
	DbContext# ,
{ 
public 
ProyectoContext 
( 
DbContextOptions /
options0 7
)7 8
:9 :
base; ?
(? @
options@ G
)G H
{		 	
}

 	
public 
DbSet 
< 
Proyecto 
> 
	Proyectos (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Usuario 
> 
Usuarios &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Peticion 
> 

Peticiones )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
DbSet 
< 
Persona 
> 
Personas &
{' (
get( +
;+ ,
set, /
;/ 0
}0 1
} 
} 