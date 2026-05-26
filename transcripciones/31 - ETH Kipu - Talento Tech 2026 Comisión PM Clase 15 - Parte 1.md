# 31/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 15 - Parte 1

- **Video:** [https://www.youtube.com/watch?v=SWS_u_5caas](https://www.youtube.com/watch?v=SWS_u_5caas)
- **ID:** `SWS_u_5caas`
- **Canal:** ETH KIPU
- **Fecha:** 2026-05-15
- **Duración:** 58:04

---

## Transcripción

Bien, ¿ves mi pantalla correctamente?
Genial.
Había puesto, [carraspeo]
sí, la clase pasada lo escribí, puse,
bueno, plan para el 14 de mayo, que
sería hoy, básicamente desplegar el user
registry, ¿sí? explicar su
funcionamiento, programar una
criptomoneda sencilla, eh vertema
require, revert custom errors, eh acert
owners, librerías ownable y modifiers. S
básicamente lo que pretendo que veamos
hoy. Así que vamos a ir a a la guía y
vamos a empezar con esto. A desplegar
este user registry
a a la guía de Ethero, ¿no? Tenemos
pack. Esto creo que estaba en la
segunda, si no me equivoco, acá tipo de
datos y gestión de variables lógicas.
Hador
estaba acá o estaba en la otra.
No, me pasa que en la que sigue CR. En
la 12, en la 14 cre.
Acá
sí los ampos y todo eso. Bien, acá está
user registry. Bueno, esta esta cosa la
habíamos pasado muy rápido, ¿no? Que
habíamos visto en la parte de
instrucción, la paso rapidito de vuelta.
Sí, habíamos visto el tema de las
estructuras, ¿sí? Cómo se acomodaban.
Acá habíamos dicho que bueno, acá sí
viene acomodarla bien para que después
cuando traigamos traigamos todas las
cosas juntas. Sí. Eh, esta es la forma
que se escribe struct, el nombre de la
estructura y entre llaves todos los e
las cosas que queremos agrupar juntas,
¿no? Y después para acceder cuando
nosotros definíamos algo que era de tipo
de estructura, por ejemplo, hacíamos
user y definíamos un usuario, ¿sí?
Después hacíamos usuario. Usuario.
Usuario. Active, ¿no? Y podemos entrar a
cada uno de estos campos.
Cristian, eh estuve [carraspeo] viendo
un poquito el tema del strack user y las
dudas que me quedan son
esas son esas variables si están digamos
entiendo que están local, pero entiendo
que por lo que vi pueden ser guardadas
en memoria,
en el storage o en memory.
Sí, cuidado con eso porque esto de acá
no son variables. Y vos adentro de una
estructura lo que tenés son
definiciones.
¿Qué tengo? Como si fueran campos ahí.
Claro, esto son definiciones. Vos tenés
una estructura que adentro tiene un
string name, un win 256 y un bull is
active. Mientras vos no declares nada.
Sí,
claro. Por eso si cómo lo tomo name aí.
Esa fue mi duda. ¿Cómo tomarlo? Porque
viste que habíamos visto que depende
dónde ponemos la variable es el consumo
de gas.
Claro. A ver, veamos.
Esto es una propiedad del objeto. Eso
eh, ojo,
el name, el age.
Claro, son propiedades, o sea,
por eso digo, son declaraciones, no no
están ocupando, ¿eh? Ah, perfecto.
Por eso lo tomo Claro, como propiedades,
por eso lo lo recién lo asoí a campo,
pero es mejor como propiedades, está
bien.
Claro,
no como declaración de variables.
Fíate, acá está, ¿no? Nosotros tenemos
user. Acá le puse user, capaz que puede
ser un nombre poco feliz. Le podemos
poner usuario.
Y obviamente acá tenemos que cambiarle
esto
como para que se llame un poquito
diferente porque si no tiene el mismo
nombre.
Bueno, cuando ustedes quieren comentar
con multilínea, ¿sí? Con el
con la barra asterisco hacen los
comentarios multilínea y la cierran con
el asterisco barra. Sí. Cuando es una
sola línea la sigan de esta forma, ¿no?
Con la doble barra.
Eh, fíjenos acá. Entonces tenemos este
user, si mientras nosotros tenemos esto,
la estructura, esto únicamente está
declarando cómo es la estructura, cómo
es el formato de la estructura. ¿Sí?
Mientras nosotros no declaramos ninguna
variable, esos espacios no están
ocupados. ¿Cuándo se empiezan a ocupar?
Bueno, cuando nosotros declaramos acá,
hacemos user public usuario, sí que lo
escribí mal, muy serio.
Usuario, escribiendo mal.
Sí, en este momento cuando nosotros sí
eh instanciamos o mejor dicho declaramos
esta variable, ahí sí nosotros estamos
agarrando diciendo, bueno, este usuario
el primer slot, ¿sí? Esto estaría, por
ejemplo, acá en el slot cero empezaría,
pero bueno, el slot cer tendría este
string name, el slot 1 tendría este
Windows 56, el slot 2 tendría este
bullis active. Sí, si yo acá pusiera
otro
publicario
2, por ejemplo, y lo que vamos a tener,
bueno, acá tenemos ocupado es el slot
0 1 y dos. Sí, porque tiene el slot 0,
uno y dos. Este otro en cuál va a estar
slot va a estar ocupando este este
usuario dos,
eh, 3, cu y 5
que siguen ese orden.
3, cu y 5. Sí,
pero esto de acá no ocupa nada. Sí, esto
no ocupa slots.
Sí, nosotros acá únicamente estamos
definiendo cómo cómo es la estructura,
¿sí? ¿Cuándo va a ocupar? Cuando
nosotros declaramos,
mientras definimos no ocupa nada.
Y ahí como lo definiste como público,
vale storage, porque el público
eh no
va generar el
storage, todo lo que yo defina por
fuera.
de
de las funciones, ¿no? Todo lo que
defina, va al sector
y Cristian, antes en la clase anterior
definiste, ¿te acuerdas cuando le iba a
la memoria tipo guion bajo y el nombre?
Eso, el compilador, si vos le ponés guón
bajo del nombre, ya te lo manda a la
memoria o o es una convención solamente
esto acá gu bajo.
Sí, guion bajo. N
no es [carraspeo] una convención.
Okay, pero pero el compilador no
interpreta como que bueno, si le pusiste
guion bajo al principio ya va la memoria
por default. No, no, no,
pero tenes que especificar.
Sí.
Okay, okay, gracias.
Ya.
Bien, se entendió esto de la estructura.
Ahora me quedo más claro. [risas]
Y después, bueno, ¿cómo excedes? Bueno,
fíjate acá. Usuario. Estás accediendo al
el usuario. El usuario, este es el que
tiene está empieza en el slot cero. El
age es el slot uno, ¿no? Entonces acá
estás accediendo al slot
uno. Si vos pusieras, por ejemplo,
usuario
2.H
igual a este más viejo,
sí estarías accediendo. Bueno, al
usuario dos, si al segundo slot del
usuario dos, que sería el cu, ¿no? Que
sería el slot cu.
Si
es lo que pasa internamente, si cuando
nosotros compilamos esto, no se va a
llamar usuario age cuando haga el
código, ¿sí? sino que va a ser el slot
un, el slot 4.
Sí,
el nombre es algo que utilizamos
nosotros para como humanos para poder
entender lo que estamos haciendo. La
máquina lo va a ver esto como el slot 1
o el slot 4, ¿se entiende?
Sí.
Y y la estructura, Cristian, siempre
tiene el mismo formato, ¿no? Tipo key
value, o sea, para esta propiedad este
valor, para esta propiedad este valor.
Siempre así.
Sí.
Okay. Gracias.
Sí, igual vos puedes tener estructuras
de estructuras, ¿no?
Sí. Aparte ahí cuando vos pones user eh
público usuario y usuario dos, en
realidad estás como heredando de la
clase user, digamos, de la estructura
user.
Acá como
claro, usuario y usuario dos serían como
dos instancias de la clase o usuario
user.
Claro. Sí, si lo ves como pronos, sí,
sería así. Lo que pasa que no es una
clase por acá no puedes poner métodos.
Claro, sí, solamente serían propiedades.
Claro, es una estructura
de lujo. Gracias.
Es más como si fuera un objeto ese
strack,
pero que no puedo heredar propiedades.
Es un objeto, pero acá en Solidity no
puede heredar propiedades.
La
en C+ más sería un objeto así como lo
está lo estaríamos haciendo.
Sí, pero sí hereda, ¿eh? No, ¿no ves que
ahí pone usuario y usuario dos y dice
user user public usuario user public
usuario?
Este user, piénsenlo, como que es un
nuevo tipo que ustedes están declarando,
¿no? Acá tienen los tipo string, string,
winter 56, bull y ustedes declararon un
nuevo tipo que se llama stru, ¿sí? Que
el str está constituida por un conjunto
de
Tenés razón. Sí, sí está heredando.
Mm.
Y podría entonces eh este strack heredar
otro strack.
Sí, puedes escribir un struck entre otro
stck.
Eh, bien. Entonces, acá tenemos la
estructura, ¿sí? Después vimos el tema
de los arrays. Sí, dijimos, bueno,
tenemos los arrey dinámicos que no le
ponemos nada acá. Si nosotros pusiéramos
un valor, estaríamos diciendo que es un
array estático, ¿sí? de tantos de tantos
valores y básicamente esto se declaran,
los dinámicos únicamente pueden estar
hechos declarados en lo que sería
eh estado, o sea, en la parte de
storage, no en memoria, porque memoria
acuérdense que siempre esto se crea en
forma contigua porque es lo que está
corriendo básicamente, ¿no? Entonces,
vos v tenes que saber exactamente cuáles
son las partes de de esa memoria que vas
a estar utilizando para memoria, cuál
vas a estar utilizando para código. Sí.
Entonces vos acá tenés que tener todo
definido. Podés hacerlo eh dinámico. Sí,
podrías poner, por ejemplo, un valor de
afuera y decirle, "Okay, tomame 10
valores, después ese 10 tomarme cinco o
cuatro o lo que sea, lo mandaste
afuera." Eso es lo que se conoce como
una variable dinámica de memoria, pero
en realidad no es tan dinámica porque no
es que yo le puedo ir agregando valores,
¿sí? Yo no le puedo agregar valores a
a una memoria en en memoria, ¿no? V la
redundancia.
Eh, entonces esa la parte de de
memorias, después vimos el tema de
mappings. Sí, dijimos que el mapeo es
este conjunto clave valor, ¿sí? en el
cual nosotros podemos poner e, por
ejemplo, que un adres de una persona
apunte a un balance. Esto justamente es
muy bueno para hacer el tema de los
balances. Cuando vos tenés eh tu saldo,
por ejemplo, en USDS, lo que tenés es
esto, ¿sí? Cada tiene un balance, ¿sí?
Entonces, vos pones un address y obtenés
ese balance y después querés querés
hacer una transferencia, ¿qué es lo que
estás haciendo? Bueno, sumas el balance
de un address y al otro le restas, ¿no?
El from to uno le sumas, al otro le
restas.
Eh, bueno, acá otro mapeo. Después
tenemos mapping sanidad. Sí, mapping
sanidad. Justamente que vos puedes hacer
mapeos dentro de mapeos. Es decir, vos
tenés una clave que apunta un valor,
pero que ese valor a la vez es una clave
que apunta a otro valor. Sí, esto es el
caso de la por ejemplo. ¿Por qué? Porque
yo podría, eh, si se acuerdan en token
RC20 tenía este allowance y tenía el
approf, ¿no? Yo podía aprobar que un
tercero me moviera dinero. ¿Qué
significa eso? Bueno, yo tengo un owner
y tengo un spender. Si el owner es la
persona que el dueña de la billetera que
tiene el dinero, el spender el que le
puede gastar y después tengo que ponerle
una cantidad a eso, ¿no? Para decir tal
spender a tal owner le puede gastar
cinco USDC, ¿sí? Por así decirlo.
Entonces para poder hacer eso, yo
necesito tener un mapeo de un mapeo.
¿Por qué? Porque, bueno, tengo un owner,
tengo un spender y eso tiene un valor.
Sí. Entonces, básicamente el lo que
estaba acá como mapping address a a
user, mejor dicho, acá, no, mapping
address a Windows 56, ¿sí? Vamos a tener
acá el mapping address
a otro mapping que es de un address a un
Windows 56. Fíjense que acá yo estoy
haciendo también un mapeo que va de un
address a user, ¿no? Que user es la
estructura. Podemos tener un mapeo que
apunta a una estructura. Sí. Esto es un
address, puede estar apuntando a
una estructura que tenga name, age is
active, ¿no?
Entonces cada puede tener después puede
estar apuntando a un montón de
información del usuario. Sí, este
address, por ejemplo, eh no sé en
tokenización que decían, por ejemplo,
sí, yo tengo un address, sí, que está wi
listeada por por un KYC, ¿sí? you know
your customer. Vos le tomass los datos
al DNI y todo eso y decís, "Okay, esta
wallet corresponde a esta persona para
yo tenerlo y si alguien me pide
información, o sea, la Wi me pide
información poder presentarlo."
Entonces, ¿qué es lo que sucede? Yo,
bueno, deles tengo que poder decir,
"Okay, bueno, ¿cuál es el balance que
tiene capaz o cuál es eh el nombre de
ese usuario? ¿Cuál es el valor que puede
mover?" Sí, capaz que puede mover una
cierta cantidad de dinero y no más de
esa cierta cantidad de dinero. Y bueno,
todo eso básicamente podemos escribirlo
como si fuera una estructura y yo le
apunto con ese adres a esa estructura,
¿no? Y y con eso vamos ajustando límites
y haciendo lo que tenemos que hacer, si
tiene el KC hecho o no, eh si puede
mover 000, 5000, 10.000 por año, ¿cuándo
fue la última vez que movió? o inclusivo
cualquier información que yo quiera
tener del usuario,
lo bueno los maping animados como
veníamos diciendo, identidad de
ejecución, sí, esto creo que no lo
vimos, sí lo voy a explicar ahora.
Habían nosotros dijimos que acá
esas variables eran variables de estado,
muchos me habían dicho variables
globales, ¿no? Porque capaz que vienen
otro lenguaje y generalmente afuera se
suelen declarar las variables globales
que básicamente pueden ser vistas por
cualquier función. Acá también estas
variables dentro de todo pueden ser
vistas por cualquier función, así que en
ese sentido podemos llegar a decir que
son globales, pero que son variables
globales. En Solity conocemos a otras
variables globales, ¿sí? Que son la la
variable message, ¿sí?
Globales
son las variables message
que se pone msg.
la variable transaction que sería TX
y la variable
transaction block.
Sí,
creo, no sé si tenemos más, no, creo que
son esas, estas tres variables, sí, que
adentro es como si tuvieran más cosas,
¿sí? Como si fuera una estructura. Sí,
el mensaje tiene una estructura, la
transacción también, el blog también.
¿Por qué tiene una estructura? Bueno, en
el mensaje, sí, ustedes se acuerdan lo
que era un mensaje, era [carraspeo]
cualquier cosa que se manda e
de una billetera a otra, ¿no? Yo podía
mandar un mensaje cuando yo iniciaba,
digamos, con una EOA, una una
transacción, ese mensaje era justamente
una transacción. Sí. Y por lo tanto, esa
transacción es la que se encarga de
iniciar de iniciar la iniciar la el
cambio de estado, ¿no? O sea, el que
paga por ese gas. Este mensaje es, ¿no?
¿Quién lo envía? ¿Quién quién envió ese
mensaje? Pueden no ser los mismos. Y el
blog es básicamente el bloque. ¿Sí? Y
adentro nosotros podemos tener un montón
de información. Por ejemplo, el message
podemos tener el sender, ¿sí? Es decir,
¿quién envió, no? ¿Quién envió el
mensaje? Podemos tener el value. ¿Cuánto
valor envió?
Sí, el sender y el value son los que más
se utilizan en este caso sender y
message
value.
En la transacción sí, uno que tenemos
muy conocido es el transacction. Origin,
¿sí? Que es quién inició la transacción.
Pueden ser diferentes sí pueden ser
diferentes. Y ahora lo explicamos por
qué.
Y en blog tenemos, por ejemplo,
el blog puntimestamp,
¿sí? Para ver el tema del tiempo, o sea,
en qué segundo estamos.
Eh, esto viene dado en el formato ese
EPOC que creo que va desde el primero de
enero de 1970 o una cosa por el estilo
en segundos, nunca me acuerdo bien el
año y eso, pero bueno. Eh, fíjense acá,
me aparece block difficulty, block
Coinbase, block gas left. Sí, toda la
posilla que tienen block
limit, ¿sí? Eh, ¿cuánto es el límite de
gas del bloque? El block difficulty para
ver el tema de la dificultad. Acuérdense
que la dificultad ahora es cero, ¿no?
Pero antes tenía una dificultad. Tenemos
blog punto
block hash, ¿no? Para ver cuál es el
hash. Obviamente no va a ser el hash de
este bloque, sino que va a ser el bloque
anterior. Sí. Block pun block number. O
podemos tener también
creo que es
el Chain ID, no me acuerdo cómo era. A
ver, Chain.
Bueno, creo que era blog. Chain ID o una
cosa por el estilo. Y pueden ver, por
ejemplo, el Chain ID. Sí, acá está. Sí,
para poder ver cuál es el Chain ID que
ustedes están. Si por ejemplo, si están
en Ethereum, el Chain ID va a ser e
uno. Sí,
acá también podos ver transaction value,
¿no? Creo que era
transaction vale. Bien, se entiende ahí
por qué son globales estas. Y bueno,
porque no es únicamente que yo lo puedo
ver desde todas las funciones,
sino que lo puede ver toda la EBM, ¿sí?
Es decir, si yo estoy corriendo dos
contratos, ¿sí? Los dos contratos van a
ver lo mismo. ¿Se entienden?
Yo tengo dos contratos, por ejemplo, que
acá tienen este usuario, están en el
slot cero, ¿sí? Van a estar el slot cero
de cada contrato, por lo tanto, el
usuario del contrato uno va a ser
diferente al usuario del contrato dos.
¿Sí? ¿Por qué? Porque están en dos slots
diferentes. Por eso no es una por eso es
que no son variables globales. ¿Qué es
una variable global? Por ejemplo, esto,
el blog. Estestamp. ¿Por qué? Porque si
yo pregunto por ese blog puntimestamp
dentro de mi programa, el blog puntimest
que yo voy a ver con mi contrato uno va
a ser el mismo que otra persona va a ver
con su blogtimestamp
eh del contrato dos. Sí, por eso es un
problema el tema del determinismo, ¿sí?
Cuando ustedes quieren hacer una función
aleatoria, por ejemplo, que muchas veces
en web 2 pueden utilizar el el time
stamp, ¿no? Para poder hacer una eh una
se puede hacer una semilla y con eso
calcular un número random. ¿Qué es lo
que sucede acá? Si yo veo lo mismo que
ve el otro, puedo correr un contrato,
ver cuál es el block punamp,
hacer todos los cálculos que tenga que
hacer y si me convence, le mando la
transacción. Sí, total el otro va a ver
exactamente lo mismo que yo veo. Sí
puedo anticipar lo que va a ver el otro.
¿Se entiende?
Estamos.
Por eso esto es un poquito eh
bueno, primero son varios globales, por
eso porque se pueden ver de todos lados
y segundo por eso que también la parte
de números eletorios y todo eso es
bastante complicada en blockchain. Sí,
más que complicada, mejor dicho,
imposible. Tenemos que solucionarlo
desde afuera.
Y bueno, el tema del blog puntestam
también tiene otra otra cosa que vos
tenés un margen de error, ¿sí? Porque el
minero si cuando hace e o mejor dicho el
valiador en este caso, cuando pone el
bloque puede poner cualquier e
cualquier tiempo que ellos quieran que
sea posterior al último bloque que
pusieron, ¿no? Por lo tanto, y y
tiene que ser menor al siguiente, ¿no?
Obviamente, por eso es que vos tenés ahí
un lapso de 12 segundos, que es lo que
dura el la puesta de un bloque a otro
bloque en Ethereum, ¿no? Que el
validador puede tomar el tiempo que
quiere, entonces puede jugar ahí a tomar
el tiempo que más le convenga y y
escribírtelo, ¿no? Escribírtelo si le
conviene, ¿no? Y puedes escribirte
cualquier número de ese en ese entorno.
Entonces tampoco conviene y ahí pueden
sacar lo que se conoce como MEP. Así que
habíamos explicado un poco el tema de
extraer valor de una transacción.
Pero bien, volviendo un poco a esto,
tenemos dos cosas que que ver. El tema
del mensaje y transacción. ¿Cuál es la
diferencia entre esas dos cosas? Bueno,
si nosotros vamos a nuestro típico
Paint,
dijimos que todo lo que sucede en
blockchain, todas las cosas que se
mandan, básicamente van como mensajes.
Si ya tengo
acá un usuario,
este puede ser mi, por ejemplo, mi user.
Acá también mi user.
Este me pueden ser mi smart contract 1.
Smart contract 1.
Acá mi smart contact 2
y abajo voy a tener exactamente lo
mismo. Este es Smart Contract 1 y Smart
Contact 2.
[carraspeo] ¿Qué es lo que sucede? Yo
como usuario, cuando hago una
transacción me comunico, ¿no? Con el
Smart Contract 1. Sí.
Y el Smart Contract 1 se puede comunicar
con los Smart Contract 2.
Sí, podemos decir que ambos son
mensajes. Sí, tanto lo que manda el
usuario como el que manda el Smart
Contact 1. Ambos son mensajes. Sí, pues
está comunicando, está mandando un
mensaje. Ahora nosotros hacemos una
distinción entre lo que es mensaje y lo
que es transacción. ¿Qué es transacción?
Bueno, transacción es cuando
hay un usuario básicamente que paga por
eso. Sí. Por lo tanto, esto le llamamos
transacción.
También también es un mensaje. Si no,
deja de ser un mensaje. Pero si vamos a
ir un grado más más allá de
especificación, podemos decir que es una
transacción también. Y acá también
tenemos un mensaje
y abajo obviamente tenemos lo mismo.
Sí,
se puede decir que toda transacción es
un mensaje, pero no al revés.
Exacto.
Okay.
Toda transacción es un mensaje, pero no
al revés.
Todo mensaje es una transacción porque,
por ejemplo, este mensaje de acá no es
una transacción. Sí. ¿Por qué? Porque
esta es la transacción.
¿Qué pasa si yo en este smart contact 1
quiero leer leer el message pun sender
y el transactionor originá?
Y después lo quiero leer en este smart
contact 2. Sí. ¿Qué es lo que pasa? Este
Messi. ¿Quién va a ser? ¿Quién va a ser
el MSE? Este smart contacto.
El user.
El user. Exacto. Acá va a ser el user.
¿Quién va a ser el transactionor origin?
También el user.
También el user.
Bien. Y en el SMAC 2, ¿quién va a ser
MS?
El SC1.
Exacto.
¿Y quién va a ser el transacción origin?
El user.
El user.
Exacto. Sí.
Entonces, acá ven el cuando un usuario
te manda una transacción, ¿sí? El Messi.
Sender coincide con el transacción
origin. Pero cuando es un smart contract
que te está mandando un mensaje, si el
Messi pun sender no coincide con el
transacción. Origin. ¿Sabe esto?
Entonces, ¿qué pasaría, por ejemplo, si
este Smart Contract 2 es un
es donde el es como un banco en el cual
el usuario tiene dinero, ¿sí? Y nosotros
estaríamos comparando eh o mejor digamos
este Smart Contra un es un banco donde
el usero tiene dinero y nosotros
hacemos un ponemos un if
el messard
igual a al owner, sí, al que tiene ese
dinero. Entonces, eh
estamosamos dinero,
sí, porque me llamó el owner, entonces
le doy el dinero. Si yo hago esto,
obviamente va a estar comprobando que el
user se el owner y le da el dinero,
¿verdad?
Si yo hago esto, ¿cambia o no cambia?
punto origin no cambio
y sí cambia porque
lo que dijiste anterior porque no puede
coincidir a veces con el el con el
original
ahí vos te aseguras que es el original
es el original
en este caso el transacctionorin si
estamos hablando smart contract 1 el
transacction punor Origin es el user.
Por lo tanto, vos puedes decir, "El user
es igual al owner." Sí, listo, le da el
dinero. Pero, ¿qué pasa si alguien me
pone un contrato en el medio? Sí, como
saben ustedes, existe la composabilidad
y yo puedo escribir contratos que
comuniquen con otros contratos. Alguien
me pone un contrato en el medio para
interactuar con este user y yo lo había
puesto como transaction. Origin y en vez
de estar ahí, entonces ya estaríamos en
este otro caso. ¿Y qué sucede?
Bueno, transaction. Origin ahora sigue
siendo user cuando el que está mandando
el
las cosas es el smart contact, por lo
tanto yo podría sacarle con ese smart
contact dinero al usuario engañándolo,
¿me entiendes?
Porque este smart contact 2 piensa que
lo está llamando user, pero en realidad
está llamando smart contact 1.
¿Entienden?
Bien, estas son las variables globales,
¿sí? Y bueno, acá nosotros podemos ver,
por ejemplo, entonces Messi. Center,
¿sí?
Después tenemos caso de estudio de
usuarios. Acá tenemos el user registry,
que es lo que dije que vamos a copiar y
vamos a analizar.
Voy a copiar todo. Vamos a agarrar esto.
Sí. Si yo lo quiero compilar, acuérdense
que yo acá lo podría compilar con
control S. Sí, fíjense que compiló sin
ningún problema. Pero antes de correrlo
vamos a estudiar a ver qué tiene.
Bueno, la licencia MIT tiene que ser
compilada con una versión mayor a la
8.20. Si nosotros vamos a ver acá con
qué lo estamos compilando, perdón. Acá
834 tiene que compilar se llama user
registry. El contrato tiene una
estructura, ¿sí? De tipo user que
adentro tiene un name y tiene un age,
¿no? O sea, cada usuario tiene un nombre
y tiene una edad.
¿Y cómo identificamos al usuario? Y
bueno, está diciendo que al usuario lo
identificamos a través de un adres. ¿Sí?
Entonces, el adres identifica al usuario
que va a estar mapeando a a este user
que tiene un nombre y un age. ¿Cómo se
llama eso? Bueno, users. Entonces, yo
acá voy a poner tener muchos users, ¿sí?
Porque voy a tener un user por cada
address que que yo le meta, que va a
estar mapeando a algo que tiene un name
y un age, ¿no? A esta estructura.
Por otro lado, tenemos además del
mapping, tenemos un array.
Sí, fíjense, tenemos un array dees,
¿sí? Que es de tipo dinámico
y eh esto se llama user addresses, ¿sí?
Por lo tanto, acá vamos a estar
guardando los adreses del usuario. ¿Sí?
¿Por qué? Acuérdense que nosotros
habíamos dicho que los mapeos no se
pueden iterar.
Sí, yo no puedo iterar un mapeo. ¿Por
qué? Porque cuando yo le cargo el adres
a un mapeo acá para después ponerlo a un
usuario, este adres no queda guardado en
ningún lado. Sí, únicamente se utiliza
para poder determinar una posición de
memoria en dónde se va a guardar la
información de este usuario. ¿Sí?
Entonces, determinísticamente, siempre
que yo le meta esa misma address, voy a
poder obtener esa misma posición de
memoria para poder extraer los valores
de este
de este de esta variable, ¿sí? O poder
escribirlos.
Pero si yo no tengo este este address,
no voy a poder determinar dónde está
esto. ¿Se entiende?
Como pasa eso, yo no tengo los adreses
en ningún lado como para poder iterar,
¿sí? Porque únicamente aparecen cuando
yo los pongo porque sé dónde poner. Si
eso es justamente el tema del par clave
valor.
Ahora, ¿cómo podría hacer para
recorrerlo si yo quisiera recorrer todos
los usuarios? Y bueno, tengo que hacer
lo que llama un mapeo iterable. ¿Cómo
sería este mapeo iterable? Bueno, en vez
de guardar todas las eh toda la
estructura como si fuera un array, puedo
únicamente guardar los adreses.
¿Sí? ¿Por qué? Porque después con cada
uno de esos adres
en un array, puedo ir entrando a través
de este mapeo y encontrando el name y el
age. Sí, eso sería lo que se conoce como
mapeo iterario. Estoy agarrando un mapeo
que no lo puedo iterar y lo estoy
volviendo iterable a través de este esta
rey. Sí. ¿Por qué no lo hacemos
directamente con
no lo hacemos directamente así?
¿Por
qué no lo hacemos directamente así? A
ver, ¿alguno tiene alguna idea?
Y porque si vos pones ahí justamente
una ray sin dimensión,
estás consumiendo un montón de stories
ahí.
Porque ahí
eso no tiene no tiene límite ahí ese
user esa ese arr, o sea, yo podría poner
un montón ahí y como lo estoy declarando
como publico va al storage o me equivoco
aunque le pongan esto está en storage
aunque le ponga así está en storage
porque estáado afuera
Eso tiene que ver con la forma en como
buscamos. Sí.
Si nosotros hacemos esto,
cuando nosotros después buscamos, nos va
a consumir más gas que si nosotros
hacemos esto de acá.
Los mapeos consumen mucho menos más gas
que la rey. ¿Sí? ¿Por qué? Porque la rey
está guardando un valor más.
Sí. Y acá el array que vos estás
teniendo es un arrey eh unidimensional.
Sí. Acá estás teniendo un array
multidimensional, por así decirlo. Pued
tener el array más las cosas que tiene
acá dentro, ¿no?
Los array multidimensionales consumen
más.
¿Entiendes?
CL, los árboles vienen a funcionar como
un código para cada uno de los datos que
están en el array, ¿no?
Claro.
Entonces, después solo lees los códigos,
digamos, los
Claro.
Sí. Es como si vos leyeras índices de
una base de datos y no los campos de la
base de datos. Claro, si vos lees todos
los campos y te va a consumir más que si
lees únicamente el índice
y después, bueno, lees el campo de lo
que vos querés en específico.
Bien, entonces ahí tenemos este user
address y ahora acá dice función
register, ¿no? Para poder registrar qué
es lo que le está pasando. Y bueno, los
campos de acá de de la estructura, ¿no?
El nombre y la edad. Ya tenemos el name
y el age, ¿sí? Acuérdense que esto de
acá no hace falta poner si está en
memory si está en call data porque es un
valor simple y ya te lo pone en call
data de por sí, salvo que vos lo
modifique y ya te lo pone en memory.
Pero esto como es un valor complejo del
string, ¿sí? Cuando tenemos estructuras
o cuando tenemos strings o bytes,
básicamente se conocen como valores
complejos. Como es complejo, yo le tengo
que poner acá que eh si está en memory o
si está en contatta. Como les había
comentado, si este name lo van a
modificar y acá les conviene poner
calla, si no les conviene poner memory,
eso como una regla técnica, pero la
verdad es que es muy poco el gas que se
ahorran, por lo tanto no es tan
importante, pero bueno, ténganlo en
cuenta.
Y acá tenemos eh una primer carga, ¿no?
Fíjense que dice, bueno, users, que
sería esto de acá, o sea, el mapeo.
Fíjense que mapeo le tiene que entrar un
address y va a
y eso le va a dar un un tipo de
estructura, ¿no? Entonces, users le
ponen el message puncender, o sea, la
persona que lo está llamando, o sea, yo
llamo a este register, por ejemplo, y me
va a decir, "Bueno, mis datos, sí, mi
adres, el que estoy con el que estoy
llamando, sí, me va a apuntar eso y me
va a apuntar al nombre y a la edad, ¿no?
Y yo acá le cargo el nombre y la edad.
Por lo tanto, si yo llamo a esto, me
estoy autorregistrando con mi nombre y
con mi edad. ¿Sí?
¿Y qué es lo que hago después para poder
hacer la laeración? Bueno, esto de acá
sí vamos a cargar el address que yo
agregué acá. ¿Cómo lo hacemos? Y bueno,
a través del método push, nosotros
tenemos user address, que es una red de
address punto push y le mandamos el eh
el ad que le queremos cargar, en este
caso el mes punto center. ¿Se entiende
cómo funciona esto?
editos o algo.
Yo, Cristian, igual no entiendo qué te
ahorrás haciendo esto la rey de Adresis,
si igualmente tenés que guardar todos
los users en storage, o sea, tanto name
como ed lo tenés que guardar todos, ¿o
no?
Eh, sí, pero ¿qué pasa si vos quisieras,
por ejemplo, buscar después, no sé, a
ver, eh,
querés levantar todos los usuarios que
tenés? ¿Cómo haces?
Eh,
bueno, iría al primera ubicación donde
tengo el primero y va por ahí guardaría
dos.
¿Y cómo sab el primero?
Claro, guardaría dos pun o un puntero y
un counter, digamos, y ahí sabría
cuántoar,
o sea, un puntero estar el primero y es
un contador o algo que me diga cuántos
tengo que entrar. Pero esto no se guarda
en orden.
Acuérdate que la posición de esto lo va
lo va a hacer
esto está, mira, esto está acá en el
slot cero, ¿no? Entonces vamos a tener
primero tenemos un slot cero, después
tenemos el
un address. Sí,
yo te hago el ketchup 256 de esto
y me va a dar algo,
no sé qué me va a dar. 0x bla bla bla
bla. Sí, en esta posición de memoria
va a quedar guardado
este este users, ¿no?, que tiene, bueno,
obviamente un name
y un age, ¿no?
Sí.
O sea, en este slot va a quedar guardado
el name y en el slot siguiente,
básicamente en el tres va a quedar el H.
Sí. Entonces, ¿cómo hacés vos para
recorrerlo si vos no guardaste este
address? Puedes saber este cero. Esto
está está en el cero. Puedes saber esto
de acá, pero ¿cómo haces para saber este
valor para poder ver dónde está el
puntero?
Claro, no sabía que se hacía quecha ahí
entre el cero y el adres para terminar
el el adres donde se guarda, digamos, la
instrucción, ¿no? La instrucción, los
users. V vos podrías, o sea, acuérdate
que habíamos dicho que esto es un campo
justamente de hash, ¿no? Si vos haces
esto acá también obtenías una dirección,
pues sería el problema que si yo copio
esto
abajo
y pongo, no sé, users 2, esto deberían
ser variables diferentes y si yo lo
pongo así y únicamente tiro ladres, el
que echa 256 de ladres me va a dar lo
mismo. Entonces, ¿qué es lo que hace
esto? Bueno, te toma el cero ese que
está en el slot cero y acá te toma el
el slot un
con una mínima cosa que cambies
acuérdate que el es algo totalmente
diferente, ¿no?
Sí, sí, sí.
Pero por eso digo, esta posición de
memoria es imposible encontrarla si vos
no tenés este el slot.
Claro, yo iba más allá de eso. Ponerle
que no tenés mapeos, simplemente
una estructura users.
Okay.
O sea, ¿qué te con hacer el mapeo ante
una clásica? esto o hacer esto.
Claro.
Hacer esto.
Sí.
Bueno, ¿qué qué pasa acá? Si vos querés
recorrer usuarios, ¿cuántos datos estás
descargando para poder recorrer los
usuarios
cada vez que descargas?
No, no, igual aparte de eso tendría
e contador de usuarios y un
y un no punter no sé si necesario, pero
un contador de mínima seguro.
Un contador acá.
Sí.
Okay. ¿Y para qué te servía es ese
contador?
para
o se ten que saber dónde empieza la
memoria, digamos, dónde empieza el
primer usuario, está dónde llega por
para eso sería el computador
y llega va desde cero hasta usuarios len
esto de acá no te hace falta.
Ah, cierto que puedes agarrar link. Sí,
sí,
esto no hace falta. Vos puedes
recorrerlo con esto nada más.
Ahora, ¿qué es lo que sucede? Yo quiero
recorrer esto. Cada vez que lo esté
recorriendo,
me estoy tomando dos campos, ¿no?
Sí.
Acá cada vez que lo recorro tomo uno.
[resoplido]
Ah, okay. Será como más bien como un
mapeo entre el índice interno que guarda
el usuario con el adres al que se quiere
acceder.
Sí. Aparte hay otra cosa y la array
hacer un array es más caro mapeo porque
hacer toda la cuenta para que este arrey
te quede totalmente contiguo, sí, es más
caro que este mapeo que te da de
formacástica,
¿no?
Está bien, está bien. Ahí ahí creo que
entendí.
Guardar guardar esto o escribir esto es
mucho más grato que escribir esto. Por
eso es que en realidad se suele escribir
eh se suele hacer este mapeo para hacer
las escrituras. y después un
array unidimensional para eh poder eh
mapearlo, ¿no? Algo
será para las lecturas, ¿no? Para los
accesos entrás de una, digamos, o uno,
si no tenías que recordarte de todos o
bajarte todo y recorrerlos.
Sí. Y otra cosa es algo que vos podrías
hacer, que sí podés hacer ahí, como me
decías el contador, es bueno, vos tenés,
si vos tenés esto de acá y esto lo
recorrés los usuarios, por ejemplo, con
un Windows 56, ¿sí? Vos ahí sí podrías
poner, por ejemplo, un contador Windows
56
o index, podemos llamarle que se llama
representativo y recorrés, ¿no?, este
usuario con este index.
Sí, sí, sí,
sí. Esto sí lo puedes hacer y capaz que
ahí en el usuario vos puedes poner acá
otro campo que sea address,
¿no? Ahí tenés el address, tenés el
name, tenés el age y lo vas recorriendo
con un índice.
Claro. Pero vos cuando llamas a la
función de afuera, tendrías que saber
cuál es tu índice de usuario si querés
acceder a un dato con el
Claro. Acá lo que no vas a tener en este
caso se vuelve a poner acá dentro es
decir, bueno, yo puedo encontrarlo por
el adres al usuario, ¿no? O sea, está
diferente como vas a hacer la consulta.
Sí, sí, sí.
Pero bueno, son dos cosas que puedes
usar.
Claro, capaz depende del caso. Sí,
sí, en algún caso puede ser mejor eso.
Claro.
Bueno, gracias.
Ya.
Bien, entonces se entendió el código, lo
ejecutamos.
Vamos a hacerle deploy. Sí, acuérdense
con control S compilo y acá vamos deploy
y acá creo que ya se hizo. Y acá
estamos. User registry. Lo vamos a
estirar y vamos a ver qué es lo que
tiene la primera función. Las primeras
funciones que tenemos, fíjense que son
funciones de lectura acá, eh, user
address y users, ¿sí? que básicamente el
users es porque esto está declarado como
público y el user también porque está
declarado como público. Fíjense que no
tenemos ninguna otra función de lectura
y después tenemos la función de
escritura que es este register. ¿Sí? Si
nosotros nos fijamos ahora, por ejemplo,
acá en
users,
¿no? Con nuestro campo, con nuestro
con nuestro valor,
nuestra address, ¿sí? ¿Cuál es nuestro
address? Y bueno, fíjense que acá eh
Remix nos da un montón de address para
elegir. Si yo esto podría desplegarlo. Y
acá tengo varias para elegir. Fíjense
que ya despegué el contrato con este
address, por eso tengo 99.999,
¿sí? Todas los demás tienen 100. Sí.
Entonces, yo podría escoger, por
ejemplo, esta otra address y pregunto,
bueno, a ver, esta address,
¿cuál es el
cuál es el nombre y cuál es la edad?
Entonces preguntamos, fíjense que dice,
bueno, name nada, age cer
Entonces ahora vamos a cargarlo. ¿Cómo
hacemos para cargarlo? Bueno, tenemos
que llamar esta función register.
Entonces, vamos a buscar la función
register.
Sí, acá le ponemos el name, le pongo
Cris
25
y transact. Sí. Bien. Fíjense que acá se
descontó. ¿Sí? ¿Por qué? Porque hicimos
una función de escritura. Ahora vamos a
ver qué fue lo que se grabó acá en
users. Sí, si [carraspeo] vamos a ver
users y volvemos a buscar esta misma
address, le damos call y fíjense que
ahora sí ya aparece Cris y 25. Si
nosotros ponemos user address,
obviamente va a tener que aparecer este
address de acá. Y bueno, vamos a ver si
realmente pasó eso o no. Vamos a buscar
la función user addresses y vamos a
darle un call. Fíjense qué es lo que
pasó acá. Yo le doy call, fíjense que
esto falla. ¿Por qué? Porque me está
pidiendo parámetros. Cuando yo le pongo
a un array, sí, de tipo public, esto
siempre me va a pedir acá que yo le
ponga parámetros, que le ponga el
índice, ¿no? Entonces, yo tener que
poner acá, por ejemplo, el índice cero.
Si yo le doy call, ahí me tendrá que
mandar el valor, ¿sí?
Que es justamente la la que yo puse.
Si yo le pongo uno, ¿sí? Esto tendrá que
eh irse para fuera de acá a un lugar
donde no hay nada. se con un puntero
descarrelado, ¿no? Y obviamente esto
tiene que fallar. Y fíjense que dice
ocurrió un error, revertió. Sí,
si yo agrego ahora, por ejemplo, otra
con contradiección, vamos de vuelta con
la primera
y le vamos a dar en
registrar. Vamos a ponerle
mar
7
exact. Y ahora vamos a cambiar de vuelta
acá a user address. Sí, cuando le damos
a este uno, obviamente acá va a tener
que cambiar. Sí, a la 5B. La certa
esta otra, sí, la B.
Ahora si vamos a ver el el perdón, el
users,
sí, fíjense que el users le tengo que
poner el address. Acá le pongo este este
primer address y me va a dar justamente
esto de acá. Pero si le pongo el segundo
que lo tenemos acá,
me tiene que dar el mar y el 27. Sí, Mar
y 27. Se ve.
A ver.
Genial.
Eh,
bien. ¿Qué me va a ser? Por ejemplo, si
yo quiero devolver eh
acá este rey, puedo devolver esta rey.
Bueno, sí, vamos a programarnos. Sí,
porque fíjense que acá yo tenía que
ponerle el con el public tenía que
ponerle cuál era el índice que yo
quería, pero yo quiero devolver todo el
arrey. Entonces, bueno, vamos a devolver
todo. Hagamos una función que sea get
user addresses,
que no reciba nada
y que después sea obviamente de tipo
view. ¿Por qué? porque vamos a estar
accediendo a a las variables de estado.
Si, por tanto, no lo puedo poner como
y me lo ponía solito la inteligencia
artificial. Así
ahí está. Fíjense que el tipo publics
y que devuelva el address eh array de
address, ¿no? Y en memory. Acá yo no le
puedo poner callata. Algunos sabría
decirme por qué no le puedo poner
callata.
Para retornarlo solo tengo que poner
return y la dirección está.
¿Alguien sabe por qué no le puedo poner
col data acá?
¿Por qué no puedo hacer esto? Fíjense
acá medio error
ahí. No.
¿Alguna idea?
Eso
qué
porque no está no viene de la memoria,
sino que viene del storage,
no es no es porque no viene la memoria,
sino que viene storage, pero acuérdense
que yo le dije, el call data no se puede
modificar. Si el contrata es únicamente
donde entran los valores. Acá lo que
estamos haciendo es, fíjense, que
tenemos una variable que está en
eh e en storage. Sí. Acá estamos
poniendo una variable que no le estamos
no le estamos poniendo nombre, pero
pónganle que le ponemos nombre que se
llama user addresses,
¿sí? Con el guion para para hacer lo que
venimos haciendo. Y lo que estoy
haciendo es hacer esto. Vamos a grabar
en ese user addresses este de acá
y después lo devolvemos acá.
Sí, nosotros no podemos doblar
directamente storage. Sí, esto lo baja
para para grabarlo. Nosotros estamos
haciendo esto básicamente. Y fíjense que
si estamos haciendo esto, esto de acá
está siendo modificado. Antes tenía nada
y una vez que le asignamos tiene un
valor, por lo tanto no puede estar en el
call data. ¿Se entiende?
Porque lo el call data es fijo, digamos.
El coleta es fijo,
es fijo y y a la entrada.
Ah, okay, okay,
entiendo. Entonces acá cuando en los
returns siempre vamos a tener memory,
¿sí? No hace falta que pongamos esto,
pero siempre vamos a tener ahí memory.
Y ahora sí vamos a correr esto rapidito.
Clear. Vamos a hacer un deploy. Vamos a
llamarlo desde esta cuenta uno
a la función register.
Sí, con con un nombre y una edad.
A ver, soy muy viejo. Y le vamos a poner
otra
otra dirección acá,
la dos.
Vamos a seleccionar la función register
y le vamos a mandar
otro nombre y bueno, dato transact.
Sí. Y ahora vamos a ver justamente qué
hace este get user address. Sí, vamos a
poner get user addresses, que es lo que
está acá, y le damos call. [carraspeo]
Y fíjense que acá nos trajo las dos
direcciones.
Sí,
la primera en 5B3 y la segunda en AB8.
Se ve,
sí.
¿Cuántas direcciones podemos devolver? Y
bueno,
depende de del gas, ¿no? Porque
acuérdense que yo les había comentado
que esto es una función de lectura que
no nos ocupa gas en sí, pero si yo
quiero devolver un array demasiado
grande, si no sé capaz que 10000 nombres
y eso le va a tirar una out of
exception, ¿no? Porque acuérdense que va
a tener que estar trayendo todas las
cosas que están acá, ¿sí? hacia memoria
y de memoria devolviéndola y eso ocupa
eh recursos, ¿no? Y al ocupar demasiado
recursos te dice out of exception y no
te lo eh no te lo vuelven, no te hacen
un revert. Por lo tanto, si ustedes
tienen un array dinámico en el cual
tienen que devolver todo, esta forma de
acá es un poco peligrosa. ¿Por qué?
Porque ustedes nunca saben cuántos datos
va a tener este address array dinámico,
cómo deberían hacer. Y bueno,
páginándolo, decir, bueno, vamos a
devolver a 10 valores. Y acá le mandan,
por ejemplo, eh,
un Windows 56
Start, ¿sí? Y hasta un Windows 56
stop
y devuelven entre ese start de stop.
Sí,
devuelven entre estas dos posiciones,
devuelven la la memoria. Entonces, con
esto ustedes lo paginan y lo pueden eh
devolver, ¿no? O por ejemplo, la página
no es startop, sino quantity, ¿no?
¿Cuántos desde ahí? Pero bueno, sepan
eso.
¿Se entendió?
Sí. Cristian, ¿por qué te pone ahí la
inteligencia infinita de gas? Como que
la instrucción consume mucho, mucho gas.
No, no lo calcula bien. Remix,
tenés que tenés que correrla y una vez
que la corres te fijas cuánto cuánto
tomó. No, no la calcula bien. Eso no lo
promita que tiene.
Es como para asustarte por las dudas.
Sí,
no la sabe calcular bien.
Como si ya no estuviera asustado con el
gas. [risas]
Bien, vamos al recreo. Sí, son I6.
Volvamos I11. Les dejo el pad, les dejo
el Bueno, en el pad siempre está el el
formulario de la asistencia. Se los dejo
acá
y volvemos. Después estamos programando.
