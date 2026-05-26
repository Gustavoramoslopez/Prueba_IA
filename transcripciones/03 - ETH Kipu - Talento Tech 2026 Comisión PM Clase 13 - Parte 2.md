# 03/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 13 - Parte 2

- **Video:** [https://www.youtube.com/watch?v=Tbv332-Ncu8](https://www.youtube.com/watch?v=Tbv332-Ncu8)
- **ID:** `Tbv332-Ncu8`
- **Canal:** ETH KIPU
- **Fecha:** 2026-05-08
- **Duración:** 45:00

---

## Transcripción

Bien, volviendo un poco al tema, si como
les dije no se enrosquen demasiado con
esto, o sea, sepan lo básico, es decir,
que acá digamos cuando uno ordena todas
las variables, ¿sí? Si las ordena todas
por
si utiliza Windows 56, si generalmente
van a ser más baratas las operaciones,
si por lo menos a a en variables
simples. Si ustedes tienen estructuras
ahí sí les conviene tenerlas ordenadas y
les conviene tenerlas ordenadas eh
de esta forma, ¿no? O sea, todos los
Winch juntos, todos los Win 16 juntos y
así sucesivamente, ¿no? para que estén
de la forma más compacta posible para
poder traer eh
menos de menos cantidad de bloques. Sí,
porque justamente el traer va a serlo
caro ahí, no tanto las operaciones. En
cambio, si ustedes tienen que hacer
únicamente una operación y, bueno, hacer
más operaciones o hacer menos
operaciones, siempre hacer menos
operaciones va a ser más barato.
Entonces, sepan un poco eso.
Acuérdense que siempre lo que se está
ejecutando son instrucciones de de
assembly, ¿sí? O sea, codes, eh, no es
Soliti, sino que Soliti se compila,
¿sí?, a través del compilador
en esos opcodes, ¿no? Este compilador,
esta versión del compilador compila y da
determinados codes, cómo son. Y bueno,
no sé, tenemos que hacer un desarme,
¿no? Que hoy en día se puede hacer
bastante, ¿no? Con el tema de, bueno, yo
tengo acá el OPC, no está verificado y
bueno, lo puedo descompilar de alguna
forma, utilizar inteligencia artificial
para volver a rearmarlo de una forma más
humanamente elegible, ¿no? Y y poder ver
qué es el código que no haya sido
verificado. ¿Sí?
Entonces, yendo un poco más a esto,
fíjense acá dice, bueno, nota, dice
memory hace referencia a almacenamiento
temporal, solo
se utiliza con tipos de datos que no
forman parte de los básicos. ¿Sí?
¿Qué se refiere con esto? Bueno, fíjense
acá, nosotros tenemos variable de estado
almacenada blockchain, si este message.
Después tenemos un setter que
básicamente me va a setear ese esa
variable, ese mensaje. ¿Cómo hace para
setearlo? Bueno, básicamente una
asignación. Sí, ese message igual a algo
que yo le mando de afuera. ¿Y qué es lo
que le mando afuera? Bueno, [carraspeo]
este este string, ¿sí?
Y después, ¿qué qué es la otra función
que yo tengo acá? Bueno, es un get. Este
getter básicamente me devuelve este
valor de mensaje y bueno, esta es la
forma que se declara. Si fíjense la
forma de declarar el setter, que es una
función de escritura, function, el
nombre de la función. Fíjense que acá es
lower came. Entre paréntesis, las eh los
parámetros que recibe, la visibilidad,
en este caso lo pone como public, ¿sí? Y
después este message, ¿no?, que le
asigna el valor que yo le di por
parámetro. Entonces, queda guardado acá.
Y después cuando yo hago el getter, lo
que tengo que hacer es leer este valor
de acá. Entonces, hago una función de
lectura. ¿Cómo la defino? Bueno,
function, el nombre de la función de
lectura también lower cambio case, en
este caso, get message, si no recibe
parámetros. ¿Por qué? Porque únicamente
necesita devolver el valor que está acá,
que sea de tipo public, ¿sí? Para que
pueda ser llamado de afuera o de adentro
del contrato o de herencia también. Y
después el tipo, acuérdense que nosotros
vimos que podía ser o view o pure. ¿Por
qué acá es view y no pure? ¿Alguno que
se acuerde?
Porque tiene que ser solo lectura.
Claro,
pero vi también es solo lectura.
Sí, pero view
eh habías dicho que no que no hace nada
solamente es, o sea, no muestra,
¿no? Justamente view es demostrar, ¿no?
View es justamente eso, demostrar. Pure
es que es pura. Sí.
Acá dice Miguel, dice los lee. Claro.
¿Qué es lo que está pasando? Bueno,
acuérdense que de lectura tenían dos
funciones, view y pure. Pure era cuando
vos tenés una función más de librería,
es decir, vos le mandas, por ejemplo,
parámetros acá y trabajas con esos
parámetros y nunca le variable de
estado. Acá vos estás leyendo una
variable de estado, que es este message,
¿sí? Por lo tanto, vos no podés poner
acá pure, le tenés que poner view estás
accediendo a esa variable de estado,
¿no? No la escribís, por lo tanto no te
van a cobrar el gas por ejecutarla. Sí,
pero sí estás accediendo, por tanto es
view y no es pure. Y acuérdense que ese
view o pure es únicamente a nivel
solidity, ¿no? No tiene una contraparta
a nivel assembly.
Después, fíjense que acá le ponemos lo
que va a retornar, ¿sí? Con returns con
la s al final, sí, retorna
y entre paréntesis el tipo de cosa que
está retornando, ¿no? En este caso es un
string. Sí.
y retorna el valor que acá se el pone
return sin la S. Fíjense que la función,
el scope de la función está dado con las
llaves y empiezan y cierran.
Y con eso básicamente tenemos nuestro
primer contrato. Así que vamos a
agarrarlo así como está y lo voy a
copiar.
Vamos a ir a un
un ID, ¿sí? Que se llama remix.
Sí, es de la ET. Bueno, era del Etherum
Foundation, ahora se abrieron. Sí, ya no
están más financiados por la Etherum
Foundation, se abrieron. Pero bueno, es
básicamente un ID que nos sirve para e
para usarlo, ¿sí? Para poder crear
código y depar y demás.
Lo voy a poner acá directamente porque
si no
sé si no tendré acá igual la versión de
de beta tester. Soy betester en remix.
Así que no sé si lo verán diferente al
mío,
¿eh? Pero bueno, ahí tienen la dirección
de remix, también se las dejo en la
plantilla.
Hoy es
7 de mayo.
Sí, este es el ID que vamos a usar.
Ahí algunos me preguntaban, por ejemplo,
si se utilizaba Visual Studio Code y
todo eso. Sí, obviamente se utiliza,
pero para dar es mucho más fácil usar
esto eh para aprender que
estar aprendiendo a usar en Visual
Studio Code con toda la cantidad de
cosas que que tienen que instalar y
demás. Esto ya viene completito para
hacer. Si ustedes quieren crearse un
proyecto desde cero, pueden ir acá
create, ponen eh
no [carraspeo] acá, acá fíjense, default
workspace, van acá create new workspace
y con esto crea un nuevo workspace,
ustedes podrían poner acá, por ejemplo,
create an empty workspace, ¿sí? Create
blank crear uno en blanco. Sí. Y bueno,
le damos finish
y acá creamos uno en blanco. Fíjense,
acá tiene únicamente unos archivos de eh
de configuración, ¿no?
E esto acá no hace falta que lo toquen.
¿Qué es lo que pasa acá? Ahora nosotros
necesitamos crear nuestro primer
contrato. Sí, ¿cómo se va a llamar
nuestro primer contrato? Y bueno, vamos
a poner acá, vamos a a encreade, vamos a
ir a new file y le vamos a poner acá el
nombre del contrato. Sí, ¿cuál es el
nombre del contrato? Y no me acuerdo.
Vamos a ponerme cualquiera y después lo
cambiamos. My first contract, ejemplo. Y
la extensión que sería punto sol porque
vamos aar un sol significa sol. Y acá le
vamos a pegar el contacto.
Había perdido.
Sí, fíjense, acá me aparece un cartelito
que básicamente están copiando código.
Asegúrate de entenderlo, ¿sí? para que
no te estén metiendo cualquier cosa. Si
hay algunos códigos que uno copiaba, por
ejemplo, decía, "Con esto usted puede
ganar un Eter por por día, no sé qué
cosa, tienen que meter dos." Y ustedes
metían, desplaan eso, les explicaba cómo
despollarlo, metían dos sarecían
esos no obviamente se lo roba el hacker,
ese tipo de cosas. Bueno, entonces remix
saco este cartelito para diciendo,
"Okay, estás copiando código, asegúrate
que estás copiando sabes lo que estás
haciendo." No tien la la posibilidad de
preguntar la remix y y si no close. Si
algú no sé si tendrán todas las
opciones, porque como digo, yo estoy
como beta tester, así que capaz que
tengo otras opciones que ustedes no
tengan acá.
Eh, bien, ¿qué es lo que tenemos acá?
Bueno, ya tenemos el código, ¿sí?
Pegado. Vamos a ir y vamos a compilarlo.
¿Sí? ¿Qué significa compilar? Bueno,
acuérdense que significa esto de pasar
de Solity al BY Code. Veamos cómo se
hace eso. Bueno, acá a la izquierda
ustedes tienen un poco las
funcionalidades que tienen. Las dos que
más van a utilizar son esta de S, ¿sí?
De básicamente Solidity Compiler. Sí,
Solity utiliza el Sol C para compilar.
Entonces, este es básicamente el
compilador y después tiene este otro de
acá que dice deploy and run
transactions. ¿Sí? ¿Por qué? Porque ahí
van a justamente deployar el contrato,
lo van a mandar a la blockchain y van a
poder correr transacciones, ¿no? Tanto
de escritura como de lectura. ¿Qué es lo
que tienen que hacer primero? Y bueno,
compilar. Voy a agarrar, voy a venir
acá, voy a elegir el compilador. Vamos a
elegir un compilador que no puedo
elegir. Si por ejemplo 0.819. ¿Qué va a
pasar cuando yo quiera compilar acá?
Vos dijiste que teníamos que elegir uno
mayor porque si no había cosas que no
iba a tener. Por ejemplo, el tema de las
stack, el overflow.
Claro. Fíjense acá me está poniendo
remix, me lo está poniendo en rojo y si
yo me paro arriba, me dice parcel error,
¿no? Source file requires different
compiler version compiler, etcétera,
etcétera. ¿Qué pasa? Yo quiero compilar
con la 19 y yo, bueno, acá tenía que
bajar la versión, ¿no?
Y ahí fíjense que ahí sí me lo permite,
no me está poniendo en rojo. Sí, vamos a
dejar la 20 y acá vamos a subir y vamos
a ponerle, bueno, vamos a ponerle la
última 0.8.35.
Sí,
acá debería poder. Y efectivamente no me
marca ningún error. ¿Cómo hago para
compilar? Y bueno, aprieto acá compile
my first contract. Sol. Sí.
Y listo, ya me lo compiló. Fíjense que
acá me aparecieron algunas par de cosas.
Sí, una de las cosas que me apareció fue
el B code. Sí, si yo copio esto, vamos a
abrir un notepad, por ejemplo, y lo pego
acá.
Ups, tengo el Bod. Sí, fíjense acá tengo
un 60 40.
Esto no es el principio, pero bueno. Acá
tenemos el BC
tiene que empezar como 6080, ¿no? 6080,
6040, sí, 52, etcétera. Esto, si se
acuerdan, por ejemplo, es un push 80.
Sí, esto es un push 80, un push 40. Si
esto lo hacen como para inicializar,
¿sí? Pero fíjense que esto de acá tiene
una eh
una referencia directa a digamos al
código, ¿no? Al al demónico. Sí, ustedes
así lo podrían ver un poco mejor que
así, pero poner esto es exactamente lo
mismo que esto. Ustedes podrían
decompilar todo esto de acá, ¿sí? Pero
ahí vienen el Bcode. Y lo otro que
tienen sí es el AVI. Sí, se acuerdan lo
que era el AI. ¿Se
acuerdan?
Me caí. O se acuerdan lo que era el AVI,
¿no?
El AI era el application Binary
Interface, ¿sí? Que es la forma en cómo
te vas a poder comunicar con el
contrato, ¿no? Cómo se va a ver desde
afuera. Si ustedes lo pegan. Fíjense que
acá, por ejemplo, tienen, bueno, eh,
está acá, ¿no? Fíjense que acá tiene una
input, ¿sí? Que dice, bueno, de tipo
string se llama new message, ¿sí? Type
string, ¿sí? El el nombre, set message,
fíjense que el tipo es una función. Si,
por tanto, acá estamos hablando que es
una función que se llama set message,
que recibe un parámetro es de tipo
string, ¿no? Y que se llama new message.
Sí.
Eh, lo mismo con la otra, ¿no? Acá van a
tener otra función que se llama stick,
perdón, que se llama, ¿dónde está?
Name, acá, ¿no? Que el state
multiability es como view, si es una
función de lectura. Acá el state
multibility, fíjense que es del tipo no
payable, si esto quiere decir que no es,
no pueda recibir dinero, básicamente que
es escritura, pero no puede recibir
dinero. Este de acá es de tipo view,
¿sí? que se llama que es message. Y
después tengo esta otra función, ¿sí?,
que se llama get message también, que es
una función, es de tipo view y bueno, no
recibe nada, ¿no? O sea,
nada. Tengo tres funciones acá, tengo
dos. ¿Qué fue lo que pasó?
¿Por
qué tengo tres funciones ahí en el Abi y
acá tengo dos?
y que algunas deben ser peor, entonces
no te las muestra,
¿no? Al revés, o sea, acá tengo dos
funciones nada más y cuando yo acá la
pongo como tengo tres, ¿no? ¿Por qué?
Fíjense que había una función que se
llamaba message. ¿Dónde vemos message?
Acá la función message.
No, vos tenés el set Messis.
Sí. ¿Qué es lo que pasa al ser de tipo
public? Yo les había dicho cuando
ustedes declaraban una función de tipo
una variable de tipo public, esto
generaba un getter con el mismo nombre
de la variable. Sí. Y fue exactamente lo
que vimos.
Ese sería como el constructor. Eh,
no, no es el constructor, es un getter
que se genera con el mismo nombre de la
variable por ponerla como public.
Fíjense que acá me dio este message,
¿sí? Que es una función que tieneability
view, o sea, lectura. o estás viendo el
valor de una variable nada más y no
recibe nada. Sí. Y es un tipo función.
Sí,
lo genero solo por esto de acá. Y yo
esto de acá lo hubiera puesto private.
Veamos pasa.
Ah, porque te transforma el método
público en una función directamente.
Claro. La diferencia entre
la diferencia entre una variable pública
y una variable privada es básicamente
que la variable pública ya me genera un
getter sobre esa variable. La variable
privada no.
Sí, pero acuérdense que tanto la
variable privada como la variable
pública pueden ser accedidas y vistas
desde afuera, ¿no? Por lo tanto, nunca
son privadas realmente. Entonces, yo lo
voy a compilar de vuelta. Para eso voy a
apretar control S, sí, que es un
shortcut. Ustedes pueden apretar acá o
poner control S. Y vamos a tomar acá el
AB.
Voy a borrar esto de acá y le vamos a
poner de vuelta. Y fíjense lo que pasó.
Ahora ya no tengo tres funciones, tengo
dos.
Sí.
¿Qué pasa de vuelta?
Si yo acá tengo un get message y acá
ponerlo como como public, ya estamos
teniendo un error. Sí. ¿Por qué? Es un
error visible, es un error grave y
depende. Sí, acá no sería muy grave
porque el contrato es muy simple, tiene
poca línea de código, no va a ocasionar
nada, pero ¿qué pasa? Estoy teniendo dos
funciones que están haciendo exactamente
lo mismo. Si este get message y este
message tiene exactamente lo mismo. Por
lo tanto, yo podría o eliminar esta,
¿sí? Dejar el código más compacto o esto
cono como private y que se elimine una
función del byte code, ¿no? O sea, que
el byte code me quede más comprimido,
más más chiquito, ¿sí? Lo cual va a
optimizar un poco el
el tema del gas, ¿no? El uso del gas.
que eh Cristian te cobra el get también
que genera
eh no es que no es que te cobra el get,
sino que acab el public una vez que que
vos viste que te genera del otro lado,
mostrar que te genera el el get del otro
lado, ese también te lo está teniendo en
cuenta en el cobro.
En el cobro cuando vos lo llamás, ¿no?
Porque vos vas a llamar a uno o vas a
llamar al otro. Sí. Entonces ahí no es
que se va a hacer la diferencia. ¿Cuándo
se va a hacer la diferencia? Cuando vos
lo construís, cuando vos despollás el
contrato, este de acá tiene tres
funciones, mientras que este de acá
tiene dos.
Sí, este de acá tiene menos código que
el otro.
Vos que acá no lo ves, pero por detrás
tiene menos código. De hecho, los
contratos tienen una cantidad máxima de
de código que pueden escribirse. Si se
pasa es esa cantidad de código, hay
problemas. Sí.
Y y bueno, en ese momento cuando vos
estás muy justito y una cosa que te
conviene hacer es esto, ¿sí? Decir,
okay, vamos a sacar todas las funciones
que no que no estoy utilizando, ¿no? De
la vista y bueno, las pongo como
private, ¿sí? En vez de poner como
public.
Pero bueno, es un poquitito para decirle
que bueno, acá la variable si voy a
tener un getter debería ser private
y
después bueno, hay algunas cositas más
que se pueden optimizar acá, pero bueno,
no vamos al caso porque no quiero
tampoco atosigarlos tanto que creo que
ya los atosé bastante. Sí. Eh, vamos
directamente a correr esto. ¿Y cómo
hacemos para correr este programita? Y
bueno, ya lo compilamos. Ahora lo que
tenemos que hacer es ese byte code,
mandarlo de alguna forma a la blockchain
y que se grabe en un address para que
después nosotros podamos llamar ese
address, decirle de ese address yo
quiero tomar tal función y quiero
mandarle tantos parámetros y que se
ejecute, ¿no? Y mandar esa transacción
firmándolo con mi con mi wallet.
Entonces remix me da una cosa para poder
simular todo eso sin tener que yo
mandarlo a la blockchain realmente y que
me cobre, ¿sí? Ya sea que me cobre a
través de de let éter que tiene un valor
un valor real, como el éter de sepolia,
por ejemplo, que no tiene un valor real,
pero tengo que conseguirlo, ¿no?
Entonces, para desarrollo está muy bueno
tener una billetera local. Sí, remix, ya
me probé esas billeteras. Fíjense, acá
yo tengo account, dice account uno, y
podría desplegar y tengo varias
accounts, varias cuentas y fíjense, cada
una tengo 100s. Sí. Entonces yo podría
utilizarlas. Vamos a empezar utilizando
la account uno. Sí. Acá me dice, bueno,
remix virtual machine, porque yo puedo
hacer con eh en diferentes en diferentes
cosas. Fíjense, yo acá podría poner, por
ejemplo, browser extension, si yo podría
poner una meta más, por ejemplo,
conectarme con browser extension,
conectarme a través de la meta más para
poder deployar realmente en la
blockchain, que nosotros ahora no lo
vamos a hacer, sino que vamos a hacer
localmente en remix. Capaz que después
hagamos eso de de proyectarlo en la
blockchain, pero ahora vamos a deposarlo
acá en remix, pero básicamente ese sería
el cambio. Sí, acá ustedes le pueden
poner cuál es la eh el tipo de M que van
a estar utilizando. Si si eso saca,
Praga, Cancún, ¿no? Que eso también
vimos que eran diferentes eh
que tenían diferentes máquinas virtuales
por dentro, ¿no? Que se agregaban
algunas ciertas cosas, algunos epips,
¿no? Que de hecho hablamos, por ejemplo,
de Praga, ¿no? Eh, cuando cuando veíamos
el tema de la ERC7702,
¿no?, que era la la EOA que podíamos
delegarla como si fuera una cuenta,
convertir en un smart account,
eh, y hablamos también, por ejemplo, de
Shanghai en su momento, Frontier.
Y bueno, vamos a empezar acá con la
cuenta número uno en
vamos a dejarlo acá nos acá, que es el
que viene por defecto. Sí,
fíjense que acá dice, bueno, deploy
remix virtual machine o saca, ¿no? O
sea, que lo vamos a deployar ahí.
Acá podemos ver que el message storage,
que es este contrato de acá, sí, ya está
eh compilado. Sí, por lo tanto, no
tenemos que hacer nada ahí. Fíjense que
acá yo tengo un value para poder
mandarle. Podría mandarle un value acá.
La verdad que no. ¿Por qué? Porque si yo
le mando un value, esto va a fallar. Sí.
Eh, no necesito mandar ningún value para
para hacer el contrato, sino lo que yo
sí necesito ponerle es gas. Sí, necesito
pagar el gas con el cual yo voy a lanzar
la transacción. Ustedes van a lanzar una
transacción con el byte code, ¿sí?, en
el en el data, ¿sí? Y lo que va a hacer
la blockchain es justamente agarrar ese
data y ponerlo en en una dirección, un
address, ¿no?
Fíjense que si yo acá lo dejo así, acá
puedo tomar el auto o el custom, ¿no? Yo
puedo cambiarlo para un lado o para el
otro. Sí, acá lo podemos dejar como auto
para que escoja Remix cuánto es que
tienen que que pagar, qué es lo que hace
Remix. Y bueno, Remix tiene el código
compilado, por lo tanto sabe cuánto es
que va a tener que pagar por por eso y
puede en base a eso calcularlo, ¿no?
Y después ya tenemos, fíjense, la el
botoncito de deploy. Si nosotros le
damos acá deploy
acá en esta pantallita de abajo, va a
pasar algo. Fíjense acá que dice, bueno,
se hizo una transacción. Si ustedes la
despliegan, pueden ver un poco más el
texo de transacción, ¿no? Por ejemplo,
status uno, que sería que fue ejecutada,
completada,
el transaction hash de la operación. Sí,
acá tiene transaction hash, el block
hash, ¿sí? ¿Cuál es el el hash del
bloque? O sea, este es el hash de la
transacción, este es el hash del bloque.
Acuérdense del del market tree que
nosotros armábamos, ¿sí? para poder
compararlo con las transacciones y
después el bloque que hacía acá es para
comprobar la integridad. Habíamos visto
el tema de proof of work, proof of
stake. Después acá tiene el tema del
block number, ¿sí? El número, en dónde
está, en qué, en qué número de bloque
está. Esto está en el bloque uno. ¿Por
qué en el bloque uno? Y bueno, porque yo
acá recién creé la blockchain, ¿sí?
Porque es una blockchain que se crea
para esto. Si hace un fork de la
blockchain local y lo trabajamos ahí.
Entonces está en el bloque uno.
Eh, después tenemos el contract address.
Sí, este es el address del contrato que
se generó. Sí, fíjense que es 0x de9. Y
si ustedes se fijan acá en en el
contrato dice 0x de9. Acá dice deploy
contract y acá tenemos el contrato
depyado que coincide con esta dirección
que nos está diciendo la transacción. El
from es la billetera que lo creó, que es
básicamente está 5B38.
Si ustedes van acá, la bicera que creo
es justamente esa 5 38.
¿A quién se le mandó? Bueno, fíjense, al
el message storage constructor, ¿no?
Pues hizo el constructor este
que al no haber nada es como un
constructor vacío que únicamente lo que
hace es construye el código, pero no se
te da ninguna variable. Este mes
comienza eh con la cadena vacía. No
existen los sfines en en
NBM. Sí.
ustedes siempre un número va a estar
inicializado en cero y una cadena
siempre va a estar vacía.
El bueno, los costos de la ejecución,
¿sí? Cuánto gas consumió tanto para la
ejecución y lo que es la transacción,
¿no? Acuérdense que la transacción va a
ser un poquito más, ¿no? Porque siempre
tiene un base que se quema, ¿no? Y
después el execution cost es básicamente
lo que cuesta las operaciones.
El output, ¿sí? Fíjense acá digo un
output. Y este output, si se fijan en
que es un Pythode, es el contrato,
justamente. Sí, este es el código del
contrato. ¿Qué es lo que pasa cuando
ustedes mandan ese Bitecode que yo les
había mostrado? Es un BCode que contiene
el constructor para poder crear este
contrato. ¿Sí? Una vez que ustedes eh
construyen eso, lo que tienen que
devolver esta transacción es el código
del contrato sin ese constructor y es lo
que está acá. Sí, el constructor
justamente te devuelve el código de
contrato sin él.
Después tenemos la parte del código de
input, bueno, que no hay nada, output,
logs, row, etcétera. Sí, acá podemos ver
la transacción. Si ustedes estuvieran
trabajando con Ramis conectado a
Blockchain, ustedes podrían agarrar este
transaction hash, lo copian, van al
Blockchain Explorer, lo pegan y buscan
ahí la transacción realmente que se
ejecutado y que se ejecutado en la
blockchain, ¿no?
Pero acá lo estamos haciendo
internamente, por lo tanto no lo vamos a
encontrar en ninguna blockchain.
Si nosotros desplegamos este contrato de
storage, tenemos que tener las funciones
para poder llamar
estas de acá. Sí, yo despliego.
Sí. Y fíjense, acá tenemos el tema de
functions. Sí. En en functions nosotros
podemos buscar las funciones. Tenemos la
función de set message y la función de
get message. Vamos a empezar a ver qué
obtenemos get message, qué valor vamos a
obtener si yo leo esta función. Fíjense
que acá yo lo puedo
vacío. Cero.
Exacto. Cero. Sí. No vacío. Acuérdense
que no existe elfine, ¿no? Yo voy a
llamar esto y de hecho vamos a eh tener
un valor cero, ¿no? Acá.
Bu. Vacío, perdón. Sí, vacío porque es
un string, perdón.
Eh, no vamos a tener cero porque
justamente es un string. Si fuera un
número sí tendríamos cero vacío porque
es un string. Fíjense que entonces me
devuelve el valor vacío. Sí, acá
obviamente se se hizo la transacción.
Fíjense que la transacción es un call.
Si los call no eh consumen gas. Nosotros
lo vimos acá. Si es este Ether call
Ether, ¿sí?
Y si nosotros queremos cambiar el valor,
bueno, tenemos que elegir la otra
función. Vamos a buscar otra función que
sería set message. Fíjense que acá ahora
ya me pide el stream que yo le quiero
poner y para no tener mala suerte vamos
a ponerle hola mundo. Siempre hay que
empezar con un hola mundo cuando
empezamos a programar.
Y bueno, acá podremos ajustar el valor,
el valor de gas que le queremos mandar y
el valor de ETERs que le queremos mandar
en la transacción y le damos transact.
Sí, cuando nosotros transaccionamos,
fíjense que acá ya me puso un tic verde.
Ese tic verde quiere decir que se hizo.
Fíjense que acá ya no me aparece un
call, ¿sí? Sino básicamente que estamos
haciendo un llamado desde mi billetera
hacia la función setage del contacto
message storage, ¿sí? que es esta
dirección de acá
con un valor de cero, data de esto,
etcétera, etcétera. Y nosotros podemos
incluso abrirla y ver la transacción de
la misma forma que vimos cuando hicimos
la transacción, que grabamos el
contrato. Esta es una transacción que
estamos llamando una función del
contrato. Fíjense, acá tengo el
transacion hash, el blog hash igual que
antes. Y lo que va a cambiar obviamente
es la parte del eh del data, ¿no?
Por cada operación de WR. Entonces te
avanza un bloque, ¿no?
¿Qué?
Por cada operación de right. O sea, esta
es una operación de right.
Sí, porque vos viste el bloque el bloque
dos acá, ¿no?
Claro,
claro. ¿Por qué es eso? Y porque
mientras no estás haciendo nada, el esto
acordé es una blockchain local. Mientras
no estás haciendo nada está poniendo
nada en la mpol y no se está agarrando
nada para poner en la en la blockchain.
No
son lo exclusivo para nosotros. Claro,
si vos trabajaras en una blockchain real
y este número iría aumentando
independientemente si vos lo utilizas o
no, perfecto.
Va a ser dos transacciones y van a estar
en bloques, no en los mismos bloques,
no, no en bloques con tipos.
Y acá si se fijan en decoded input, sí
dice, bueno, se le mandó este hola
mundo, sí, el output, etcétera,
etcétera. Ustedes podrían ver esto,
obviamente, en la blockchain si nosotros
estuvimos mandando, pero bueno, no
estamos mandando, por lo tanto,
esto es lo que se ve. Sí, pero si se
fijan, nosotros ahí ya escribimos el
hola mundo en el en la variable message,
¿no? ¿Cómo hacemos ahora para poder
verlo? Y bueno, tenemos que otra vez ir
a buscar la función
get message, ¿sí? Vamos a la función get
message, la llamamos,
se llamó ahí y fíjense que ahora
apareció acá hola mundo. Si lo que antes
era vacío, ahora tenemos hola mundo.
¿Por qué? Porque acuérdense que este
valor quedó persistente. ¿Sí? ¿Por qué?
Porque yo lo setí acá, pero está en una
variable de estado y después agarro y
vengo y lo leo. ¿Se entendió?
Sí, Cristian. Y si este valor pone de
pasa un año y nadie lo cambió, la
blockchain sigue, todos los contratos
que tienen sigue, yo después de un voy y
lo consulto, me va a dar el mismo
resultado, va a quedar ahí almacenado.
Exacto. Sí.
Okay.
Y piensen también que esto ahora lo
estamos haciendo acá local, por lo tanto
ustedes no lo pueden ver. Sí, pero si yo
lo hiciera en la en la blockchain de
Ethereum, se hubiera conectado acá
cuando conectamos las cosas en vez de
remix virtual machine, hubiera conectado
la red de Ethereum que a través de de
Metamas y lo hubiera grabado ahí. Cuando
yo le pongo hola mundo, si ustedes van a
la a al Blockchain Explorer y consultan,
van a poder ver el Holamundo. Sí.
Por lo tanto, lo que yo escriba acá
sería totalmente visible para ustedes.
Allá
se entendió.
Sí.
Bien. Entonces, ya tienen la forma de
cómo utilizar este remix, por lo menos
en un primer nivel. Sí. Bueno, fíjense
acá pues hay un resumen en la clase.
Después está lo de remix. Si vamos
a a la siguiente, que quiero cerrar un
par de cositas nada más, eh, que es,
fíjense, dice tipos de datos, gestión de
variables y lógica de funciones. Ya
estuvimos viendo algunas cosas, por eso
quiero pasarlo así rapidito para que
ustedes después puedan verlo un poco
mejor en su casa o están en su casa,
¿no? Pero un poco más tranquilos. Sí,
fíjense tipo de datos primarios,
primitivos, digamos, tienen un int y el
int. Acá no se le pone 256 básicamente
porque como es una máquina de pila de
256 bit, si ustedes no lo aclaran,
básicamente lo toma por defecto, que es
el 256,
pero si ustedes le gusta ponerlo, a mí
por ejemplo me gusta ponerlo y yo
generalmente lo pongo, ¿sí? Eh, pero
bueno, hay algunos que no lo ponen
porque, bueno, son más letras,
eh, así que las dos cosas están bien.
Bueno, unos son enteros signos, otros
son enteros con signos. Tenemos la
optimización de tamaño, dice, podemos
especificar el tamaño de bits desde wind
8, lo que veníamos diciendo. Dice, no
siempre usar enteros más más pequeños
ahorra gas. Sí, exactamente lo que vimos
acá, no siempre ahorra gas. En este
caso, por ejemplo, no estamos ahorrando
gas.
Solo ocurre si se empacan dentro de stru
o stores de slots. Sí, solo ocurre
cuando yo lo pongo en estructuras.
Fíjense que incluso acá le puse el
nombre de estructura para que ustedes
sepan que en estructuras esto sí está
bueno. Cuando usted no lo tien lo tienen
fuera de estructuras, no está bueno
utilizar esto. Sí,
en la mayoría de los casos usar un
Windows 56 es lo más simple y eficiente,
¿no? Y fíjense que acá está como se
ordena, ¿no? Un poquito mejor que mis
gráficos de Paint. Acá tense el el 8
bits, ¿sí? 128, 128, 256, etcétera.
El tema de después de direcciones, sí
tenemos address, hay variables que son
de tipo address. Yo acá podría tener por
una variable que se llame address
y s white listed y podría, por ejemplo,
hacer un setter, ¿sí?
que me sete el
que sea, por ejemplo, W list addresses,
¿no? O W list directamente. Y acá
obviamente yo lo que tené que mandar
como parámetro es un address que yo
quiera poner. Por ejemplo, le puedo
poner addr, ¿sí? Y qué voy a hacer a
agarrar este wayisted
y le voy a poner este addr,
¿no? Entonces, con esto podría wayistar,
por ejemplo, una address, ¿sí? Uso un
setter igual que el otro. Fíjense que
copié y pegué básicamente y le cambié el
tema del dato, ¿no? Acá vamos a tener un
address en vez de un string.
¿Qué más tenemos? Tenemos buleanos, ¿sí?
Ceros o unos, true o false. Los buleanos
en realidad son un wind 8. Acuérdense
que yo la clase pasada les dije que
nosotros acá la mínima unidad de
expresión tenemos es el wind 8. Los
buanos son un wind 8 que únicamente
utilizan el último, el primer bit, mejor
dicho, como cer o un. Sí, para decir si
es true o si es false. Ahora en Soliti
es fuertemente tipado, por lo tanto yo
no voy a poder hacer acá un un 8
e
no sé, bar un o bar un y acá un full bar
dos
y no sé cuando estoy acá hacerte un bar
un igual a bar dos. Sí, yo no voy a
poder hacer esto.
Sí, por más que el bar 2, digamos sea 01
y entre acá, fíjense que acá ya me da
error. Cuando compilo, fíjense que acá
ya me da error y tengo en esta s el el
error que tenemos acá y que de hecho
podríamos incluso preguntarle a la IA,
¿no? A ver, que me ayude a resolverlo.
¿Cómo haría esto? Y bueno, para que
pueda entrar acá, yo tendría que de
alguna forma castearlo, hacer 128 y
decir, "Okay, bueno, este bar 2 vamos a
castearlo y ahora funciona." Eh, bueno,
después lo vemos porque capaz que no se
puede castear con
No, fíjense que de no se puede, pero no
importa. Ustedes sepan que acá lo que
tienen básicamente es en los guianos 8
bits. Sí, después vemos cómo cómo lo
podemos convertir, no importa.
Después tenemos la parte de cadena de
textos y strings, que lo vimos. Ham
mundo tiene la parte de bytes. También
dijimos que era eran similares a los
strings, pero eh con números
hexadecimales, básicamente, ¿no? Eh,
bytes y solity también permite trabajar
con datos binarios mediante tipos bytes
y bytes 32. Sí, esto bytes básicamente
es cuando vos querés tener cualquier
cantidad de de bytes. Bytes 32, vos
podés tener e únicamente 32 bytes, así
que serían 256 bits. Y ustedes podrían
poner una una cadena caractería, por
ejemplo, 256 bits
por este bytes 32. Este bytes no es
abierto, ¿sí? Como dice acá, array
dinámico, mientras que de acá dice array
de tamaño fijo. Sí, byte 1 a 32. O puede
tener dos, 3, 4, cí hasta 32. Eh,
Cristian, el el stream que tiene 256 el
máximo.
El stream no no puedo buscar tanto en
stream como bytes. Puedes tener lo que
quieras,
lo que quieras de máximo. Lo que pasa
que ahí vas a tener dos cosas. vas a
tener lo que se llaman long strings y
short strings, que se van a manejar de
forma diferentes. Uno se va a manejar
con punteros y el otro eh directo. Sí,
pero no me quiero meter tanto en eso
y menos a esta hora.
Básicamente sepan esto. Si el bytes,
esto es un array dinámico de bytes. Si
bytes 1 a 32 son fijos. Si yo puedo
decir, bueno, quiero guardar un byte,
pongo byte 1 0x a 2. Sí. Y ahí tengo un
byt. Ahora quiero poner 2 bytes. Puedo
hacer bytes 2 0x a 103. Si por ejemplo,
ahí guardo 2 bytes. Ahora, si yo quiero
hacer algo que es variable y bueno, voy
a tener que seguramente utilizar esto.
Después tenemos clasificación de
variables según su ubicación. Sí,
tenemos variable de estado, ¿sí? Las que
están acá fuera de las funciones, que
acá las vimos, todas estas son variables
de estados y tenemos las variables eh
locales, ¿sí? Si se crean dentro de una
función, esas variables locales son
variables de memoria. Yo acá podría, por
ejemplo, declarar un wind eh
lo que sea eh PP, ¿sí? Esta variable PP
es una variable en memoria, ¿sí?
únicamente va a estar durante el durante
se ejecuta la función. Sí. Y bueno, es
local.
¿Por qué es local? Porque si yo de una
función, por ejemplo, llamo otra
función, tampoco esa otra función
tampoco la va a ver, ¿no? Yo se la tengo
que mandar de alguna forma para que la
vea. Por eso también es local, ¿sí? O
sea, está en memoria y es local.
Eh, [carraspeo] solita, además de
distinguir entre variables de estado
locales, también es importante entender
dónde se almacenan datos de memoria
durante la ejecución de la función. Sol
define tres eh ubicaciones principales,
¿sí? Storage, donde están las variables
estados, memory, donde están las
variables estes locales o que están
dentro de las funciones y el call data
que es donde nosotros recibimos el los
datos. Si por ejemplo acá, como dice
function nombre y le manda este
parámetro, ese parámetro llega a este
call data. Este call data, como es una
función que llega desde afuera, es una
variable constante. Si yo no puedo
modificar el call data una vez que llegó
desde afuera, eso no lo puedo modificar.
Si yo quiero modificar ese esa ese valor
que llega y yo lo tengo que mandar a
memoria y modificarme memoria, ¿sí?
Que eso lo podríamos ver un poco cuando
estamos acá. Fíjense que yo acá le puse
este string en lo puse en memory. ¿Sí?
¿Qué es lo que estoy haciendo acá?
Bueno, estoy haciendo un paso. Además,
yo acá podría haber hecho directamente
ponerlo en grupa,
¿sí? Y esto hubiera estado bien. Sí,
esto acá obviamente no, pero esto
hubiera estado bien. Y acá me está
diciendo que no estoy usando esa
variable, así que la voy a sacar.
Fíjense que ahí compiló sin ningún
problema. ¿Por qué? Porque yo lo que
estoy haciendo es agarrar esta var que
está en en call data y lo guardo en
storage. Sí.
Eh, no lo estoy pasando por memory, lo
estoy traendo directamente call data a
estag. Si yo acá le pongo memory, estoy
haciendo un paso de más.
Básicamente estoy trayendo la variable
de new message desde call data, la estoy
poniendo en memory. Sí, le voy a llamar
new message a la variable que está en
memory. La otra no le puse nombre, si
quedó ahí únicamente como un pasaje que
que me lo hizo el compilador y después
acá le estoy asignando esa bar de
memoria a e message. Por lo tanto, si
ustedes corren esto van a ver que esta
función corre, le cuesta un poquito más
de gas que esta, más o menos 10 unidades
de gas.
No es mucho, sí, pero bueno, sepan por
qué.
Después dice, en el CAD operación
ejecutada por por un contrato tiene un
costo de gas. Si algunas prácticas
ayudan a optimizar este costo, usarlo 56
en lugar de enteros pequeños, un poco lo
que hablamos, marcar funciones como view
o pure cuando se cuando es posible. ¿Por
qué? Porque view y pure es que no
cuesta. Si yo acá, por ejemplo, a esta
función no le pusiera view, obviamente
me va a tirar un warning, ¿no? Dice esta
función podría ser view, pero después yo
la quiero llamar. Cuando yo la llame me
van a cobrar por ejecutar esta función y
por más que me esté dando una lectura
nada más, por lo tanto debo ponerlo
para ahorrar gas y después evitar
almacenamiento innecesario en storage.
Sí.
Eh, obviamente todas las cosas que no
las tenga que guardar acá no las guardo
porque guardar tanto escribir como leer
es más caro, ¿no? Y guardar siempre es
más caro también que leer.
[carraspeo]
Anatomía de una función. Bueno, fíjense
que ya la vimos. function, sí, el nombre
de la función, los parámetros que
reciben, la visibilidad, public,
private, internal o external,
modificadores, que después vamos a ver
lo que son los modificadores, ya igual
algo dijimos que agreguen código, ¿no? Y
después lo que retornan, ¿no?, con los
returns y los tipos.
Después tenemos parámetros y retornos.
Sí, fíjense que los parámetros son los
datos de la funciona que recibe para
operar. Los retornos dicen, define el
tipo de datos que la función entregará
al finalizar la ejecución. Sí, ustedes
pueden tener retornos tanto en función
de lectura como escritura.
Eh, y bueno, fíjense que acá tiene una
función, dice como en otros lenguajes,
la programación Solity permite controlar
el flujo que ejecutan la función
mediante condiciones, ¿no? Acá tienen
una condición, ¿sí? Fíjense cómo se se
hace la condición del if, muy similar a
lo que sería JavaScript o o C.
Eh, hay una variación con require. Sí,
fíjense que require lo que hace
básicamente es decir, bueno, count es
mayor a cero. Dice, requiero que que
count, que la variable count sea mayor a
cero. Si la variable count no es mayor a
cero, bueno, revierte y además me envía
este mensaje. El contador no puede ser
negativo. ¿Sí?
Entonces, con eso yo hago una
verificación de un valor, ¿sí? De una
condición.
También podría hacer con este if,
decirle, bueno, if count es menor a
cero, entonces
revert, ¿no? Reevierto y le mando la
condición acá. El contador no puede ser
eh negativo. Sí, es otra forma de
hacerlo. Después tenemos la parte de
bucles. Sí, fíjense, acá tenemos el for,
también tenemos el while. El for
también, fíjense que es muy similar a C.
Acá hay un problemita que lo vamos a ver
la clase que viene, pero fíjense que es
muy similar a hacer la forma de
escritura. Capaz que les dejaría incluso
para que ustedes piensen cuál puede ser
el problemita acá, por están consumiendo
gas de más. Eh, después tenemos el Book
Wild, ¿sí? Lo mismo también muy similar
en AC
modificador o AC o JavaScript también,
¿no? Modificador de comportamiento view
y pure un poco lo que hablamos y cuál
era cada uno.
Y caso de estudio, contrato de contador,
¿no? Acá tiene un contrato de contador
que ustedes pueden agarrar, poner en
remix y ver cómo funciona. Sí. Y bueno,
después se el resumen de clase y la
actividad en remix. Entonces, la clase
que viene vamos a ver un poco todo esto.
Sí, vamos a fijar que se fijaron que ya
vimos la mayoría, pero bueno, vamos a
ver un poco el código, los bucles for,
while, if, etcétera.
¿Alguna consulta?
Ya cierro acá la clase.
