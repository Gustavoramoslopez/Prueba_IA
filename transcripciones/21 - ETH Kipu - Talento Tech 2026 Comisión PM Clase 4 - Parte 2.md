# 21/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 4 - Parte 2

- **Video:** [https://www.youtube.com/watch?v=tLaxhpMuW3E](https://www.youtube.com/watch?v=tLaxhpMuW3E)
- **ID:** `tLaxhpMuW3E`
- **Canal:** ETH KIPU
- **Fecha:** 2026-04-08
- **Duración:** 26:08

---

## Transcripción

Bien, continuemos.
Entonces, estamos hablando de eh de la
EVM, de todo esto del código, ¿sí?
Hablamos de de Soliti, ¿no? Esto ya lo
dijimos, o sea, Soliti es para que un
humano lo pueda leer. Si es un programa
muy parecido a lo que es JavaScript,
¿sí? Está sacado de lo que es XM+
Script. Por lo tanto, ustedes si manejan
en JavaScript van a ver que es muy
parecido. Ahora, obviamente ustedes van
a tener que tener acá otra visión de ver
qué es lo que está pasando por detrás,
¿no? Porque todo este tipo de cosas que
yo les comentaba no lo van a poder ver a
simple vista escribiéndolo eh en
JavaScript, salvo que ya tengan un ojo
entrenado. Entonces, esta cosa que es un
poco para lo que estamos haciendo estos
cursos introductorios, ¿no? junto con
junto con Seba, que es el profe de la
mañana para que después cuando ustedes
ya lleguen al segundo módulo, donde sí
vamos a empezar a ver a digamos al
al próximo cuestre, donde sí vamos a ver
programación, todas estas cosas de
teoría ya lo tengan conocidas y puedan
eh entender cuando están programando qué
es lo que están haciendo por debajo. Sí,
el tema del compilador, si yo dije,
bueno, ustedes van a tener un código en
Solity escrito a nivel humano, van a
tener un compilador que es básicamente
un traductor. si traduce ese código de
Solity a el código interpretado por la
máquina, ¿sí?, a los bits. Acá en lo que
es eh blockchain, nosotros ese código le
llamamos byte code. ¿Sí? ¿Por qué?
Porque es código escrito en bytes,
básicamente, ¿no? Fíjense que acá
eh no acá no, o sea, acá
cada una de estas operaciones tiene un
byte, ¿sí? son cuatro hexadecimales, o
sea, cada hexadecimal son 4 bits, ¿sí?
Un nivel. Por lo tanto, dos
hexadecimales es un byte, ¿si? Esto es
un byte, esto es un byte, un byte, un
byte. Cada uno de estos códigos tiene un
byte, ¿sí? Básicamente por eso que se
llama byte code. Sí, código que son
bytes.
Entonces si ustedes entran, por ejemplo,
van a Etheran,
vamos a ir a
enterscanio
como nosotros dijimos que se podían ver
contratos, ¿sí?
Por ejemplo, vamos a poner acá USDC,
¿sí?
Vamos a buscar el contrato acá del USDC,
la B20. ¿Por qué?
Sí, creo que no sé a dónde entrar, pero
no importa. Acá tenemos, por ejemplo, el
USCS.
¿Me
están escuchando o estoy hablando solo?
Por las dudas pregunto.
Sí, sí.
Ah, buenísimo. Bien, acá entramos, por
ejemplo, al USDC.
Si nosotros vemos acá en la parte de
contact, podemos ir a ver el contacto.
Sí. Acá fíjense que ustedes tienen el
programa en Solity. Sí. Acá fíjense que
ustedes pueden leer este programa
Solidity,
pero lo que se está guardando en la
blockchain, esto no es esto realmente,
no esto es únicamente para que un mano
lo pueda leer.
Fíjense que acá dice contract creation,
¿sí? Esto es lo que nosotros estamos
mandando a la blockchain para que el
contrato se cree.
Sí. Y esto es el contract deploy o sea
el contrato en sí. El contrato no es
esto que nosotros vemos acá.
sino que es esto.
Sí, esto de acá es el contrato.
¿Qué es lo que sucede? Obviamente a
nivel humano leer esto es mucho más
difícil que leer esto, ¿no? Con
palabras.
Yo podría ver qué hace esto de acá. Sí,
claro que podría. Por ejemplo, acá tengo
un playground. Yo puedo ir a este
playground acá de mm.codes
y acá le tiro. A ver. en byte code. Sí,
fíjense acá. Acá ya tiene un pequeño by
code. Y yo le tiro acá esto,
fíjense, acá me lo traduce, dice este 60
es un push uno, ¿sí? Y que estamos
haciendo un push de este valor 80, ¿sí?
Este uno significa que es un byte lo que
quiero pushear. Por lo tanto, estoy
pusando un byte y el byte que quiero
pushear es 80. Y acuérdense que esto es
un número hexadecimal, por lo tanto esto
es un byte, esto es un acuerdo el
primero ocho y el cero es otro new. Por
tanto, tengo un byte, entonces estoy
pusheando este byte, después estoy
pusando este otro 40, estoy guardando en
la memoria, sí, el el valor que que
queda. Después acá hago un push uno,
¿sí? O sea, otra vez push esto 04, busco
este col side, ¿sí? O sea, todo eso de
acá lo lo saca de acá. Ustedes podrían
interpretar esto y podrían ver cómo está
funcionando. Obviamente que sería mucho
más complicado que leer un código
humanamente elegible, ¿no? Pero acá
tienen exactamente qué es lo que se está
haciendo. Sí.
Y con las herramientas que existen hoy
en día de inteligencia artificial y todo
eso, incluso podrían llegar acompilarlo
de alguna forma, ¿no? Decir, "Okay,
ustedes le mandan acá en el call data
cierta información y ¿qué es lo que
sucede acá?" Sí, con con este código,
¿qué vamos a obtener? Y bueno, esto sí,
pero bien ustedes sepan que es esto lo
que se está grabando, ¿no? Entonces
ustedes tienen Solity, un compilador que
lo transforma a esto de acá. Esto de acá
se manda de alguna forma a la
blockchain, ¿sí? Y es y esto de acá
genera este código, que este código es
lo que realmente se guarda. ¿Sí
se entiende ese proceso?
Bien,
entonces eso Soliti es para el humano.
Sí, hay un compilador que transforma ese
lenguaje de Solity a un byte code.
Eso se deploya en la blockchain. Como
dijimos acá, se crea un B code que es un
B code para construir el contrato. No es
el mismo BC code que queda ya el
contrato depollado. Cuando se depla se
manda ese BCode para construir y ese
BCode para construir construye un
contrato que guarda un BCOD un tanto
diferente,
¿sí? En eh en la blockchain, ¿sí? ¿Qué
es lo que va a hacer la EBM? Va a
ejecutar códigos.
Vamos a ver un ejemplo. Sí, acá, por
ejemplo, esta adición que dijimos.
Pónganle que ustedes crearon un contrato
para hacer una suma, algo así bien
simple.
Acá fíjense que sea reproducing
playground, si yo puedo jugar con esto
en el playground. Y acá tenemos, por
ejemplo, si fíjense que pulle el valor
10, después vuelve a pés
una suma y lo suma esos dos valores acá
después pausa este otro valor que es un
valor muy grande, pusa un uno, ¿sí? Y
después hace también una suma. Fíjense
que acá es un push 32, ¿no? Por tanto,
esto tiene e 32 bytes.
Este push uno, fíjense que tiene un
byte, por tanto, este uno en realidad es
lo mismo que poner 01. Sí,
pero bueno, eh, ustedes esto de acá
también acá están viendo como nemónicos,
¿sí? También podrían verlo directamente
como Bcce, ¿sí?
Bueno, no lo está traduciendo, pero
ustedes esto lo podrían poner m, ¿no?
Acuérdese que pus 1, por ejemplo, sería
60. Yo pongo 60 10 60 10 y después 01 y
vamos a tener justamente esa suma, esa
misma suma, ¿no?
Pero bueno, ahí lo tenemos en en
demónico, que para el caso es lo mismo.
Si nosotros esto le damos rank, fíjense
que acá nos está diciendo, bueno, hac
este push 1, este valor 0a, que es el
10. Sí, a en decimal es 10, push 1 0 va
a después adiciona los dos y después
hace este otro, ¿no? Push 32, este otro
valor, push un este valor y después hace
el ar. Sí, acá ustedes tienen lo que va
a estar haciendo la la, ¿no? Ustedes
tienen una memoria, ¿sí? Que es esa
memoria volátil que decíamos. Acá tiene
un stack que es la pila donde se van a
estar ejecutando las acciones. Acá
tenemos un storage que es un valor
persistente que habíamos dicho que era
comparable con lo que era el el disco
rígido, ¿no? Y la memoria, acuérdense
que era comparable con la RAM. El
destaque es una pila en la cual se van a
estar ejerciendo las operaciones porque
justamente la EBM es una máquina de
pila.
Eh,
trans storage, bueno, es un
es una
es como si fuera un storage, o sea, es
persistente, pero únicamente persiste
durante el tiempo de una transacción.
Eh, no existen todas las EBMs en
Ethereum. Sí, es algo que se inventó a
partir de la EMM Cancún. Antes no
existía, ¿sí? Por lo tanto, ahora oíenlo
un poco. Y el return value es el valor
que se retorna básicamente, ¿no? Acá no
estamos retornando ningún valor, sino
que únicamente estamos haciendo una
cuenta. Y vamos a ver cómo es que lo
ejecuta. Básicamente usted tiene un
instruction pointer. Fíjense que el
instruction pointer en este momento está
parado acá, que tiene otro color. Si
ustedes aprietan step into, sí, va a
pasar al próximo. Sí, fíjense que acá ya
tiene que haber pusado ese valor. Cuando
pusa ese valor, fíjense que se agrega
este valor 10 a este stack.
Después vuelve a pusar ese valor, así
que vamos a volver a darle. Sí, va a
volver a pullar valor. Entonces, tenemos
a y a. ¿Y qué es lo que sucede ahora? Va
a llamar a la función AD. Si va a ser
una adición. ¿Qué es lo que va a ser la
adición? Bueno, con estos valores de
TAC. A + A, ¿sí? O sea, 10 + 10 va a dar
20. 20 es 32, si no me equivoco. No, no,
no, 32, perdón, 14. Sí,
a revés. O sea, 20 en hexadecimal es 32
en
en decimal, pero
acá estamos al revés. O sea, hexadecimal
20 es 14 en en
hexadecimal. Por lo tanto, acá ya me
hice la cuenta. Fíjense que sumó ese A +
A, me dio 14. Fíjense que el A + A lo
hizo desaparecer, ¿no? Y ahora guardó
únicamente el stack, el 14. Sí. Ahora,
fíjense que lo que va a hacer es este
valor de muchos FS, ¿sí? que es
básicamente el mayor valor que puedo
obtener un número de 32 eh bytes y eso
le va a sumar uno. Vamos a ver qué es lo
que hace esto.
Fíjense que primero cargan ese valor
gigante.
Sí, este, fíjense que quedó ahí en el
stack. Si nadie lo tocó. Sí, pero ahora
cargó ese valor gigante. Vamos a cargar
a este valor 01.
Sí. Y ahora vamos a hacer la suma de
estos valores, ¿no? Los últimos valores
que están en el C stack. Se va a ser la
suma. ¿Cuánto me dicen ustedes que esto
me va a dar?
Les doy una pista. O sea, el máximo
valor, o sea, el máximo es una máquina
de pila esto de 32 bytes, por lo tanto
no puede haber nada más grande que 32
bytes. ¿Qué es lo que pasa? Acá tengo el
número más grande de 32 bytes al cual
estoy sumando uno.
¿Cuánto me va a dar esa suma?
que un overflow va revertir
vas desbordando la cola
seguro que va a revertir
pero parecía
bueno vamos a dar vamos a hacerlo. Sí,
vamos a darle.
Sí, ahí lo hizo. ¿Cuánto me dio?
¿Cuánto dio?
Ahí dice cero, pero no sé cuánto es cero
en hexadecimal.
Cero. Bueno, cero en hexade decimal es
cero también decimal. [carraspeo]
¿Qué pasó? Teníamos el número más grande
que podemos tener, ¿sí? Al cual le
sumamos uno. Sí. Cuando le sumamos uno,
esto se hace
este f obviamente sería acá f más el 01
que que quedaría me daría 1 pero ese uno
pues queda fuera, por lo tanto queda
cero, ¿no?
El programa tiene código de error,
digamos, o yo o presupone que yo sé
programa muy bien y no te tira ningún
código de error para no cometer, por
ejemplo, un verso. que es que no es una
esto no es un error,
es una definición,
ese es el punto. Ahora ustedes van a
programar en Solidity, seguramente más
arriba, ¿sí? Y Solidity, ¿qué va a
hacer? Si ustedes ponen este valor más
este valor, no les va a dar este código,
sino que le va a poner un montón de
código extra, ¿sí?
para poder verificar que no exista un
overflow, ¿no? Y si existe un overflow,
te va a decir, "Che, error, overflow,
revierto." Sí
se entiende.
Sí, yo te entiendo que en la librería,
como vos dijiste, gracias a Dios existen
las librerías,
parte de esto va a estar ahí.
Claro, ustedes cuando quieran hacer esto
en Solidity, sí, Solidity va a revertir,
pero ¿por qué les va a revertir? Porque
Solidity cuando escribe no escribe esto,
¿sí? Sino lo que hace es fijarse o o
esto, mejor dicho, ¿no? Que fue lo que
revirtió. ¿Qué es lo que hace? Se fija,
por ejemplo, después este valor, ¿sí?
Este cero que le dio. Okay. Ese cero es
mayor o menor a este valor que que
teníamos. es menor o. Okay. Entonces,
quiere decir que hubo un overflow. Si yo
hice una suma de dos valores positivos y
me dio un valor menor y bueno, quiere
decir que hubo un overflow, ¿si?
Entonces revierto, ¿no? Entonces le hago
una reversión. Sí, pero eso es todo
código que se agrega. ¿Quién es el que
lo agrega? Bueno, cuando yo hago solity,
lo paso por un compilador, me va a dar
un cierto código. Si yo ese compilador
le voy poniendo ciertas reglas, ¿sí? Ese
código que vamos a obtener es un código
diferente en Assembly. Sí, acá tenemos
el código en Assembly. Ese código es un
código diferente, ¿sí? Que va a tener
más chequeo, más cosas, ¿sí? Además de
la suma que nos dice tener. Sí. ¿Y de
qué va a depender ese código que sale?
Bueno, justamente de la versión del
compilador. Si yo tengo el compilador en
su versión 7,
sí, por así decirlo, y nos va a salir un
código de salida.
Si yo lo tengo en en su versión 8o, no
va a salir otro código que sería
totalmente diferente.
Sí se entiende ahí.
¿Se entiende eso,
sí? Sí, se pone lindo.
Bien, entonces, ¿qué es lo que sucede?
Por ejemplo, en Soliti, yo dije 7 y 8,
justamente porque en Soliti, en la
versión 7 no se hacía un chequeo de
overflow o underflow, ¿sí? Por lo tanto,
el chequeo lo tenías que hacer vos
dentro de tu programa de Solidity. Sí,
existía una librería que se llamaba Safe
Mat, justamente para evitar este tipo de
cosas. A partir de la versión 8 de
Solidity, sí, el compilador ya te hace
el chequeo de por sí. Sí, por lo tanto
ya no necesitamos más esa librería de
mat. Sí. ¿Por qué? Porque ya te lo hace
de por sí, te revierte cuando hay un
error. Ahora, ¿qué sucede? Si vos ya
hiciste un chequeo antes,
¿sí? Para verificar, por ejemplo, que
esto no puede tener overflow, ¿sí?
Entonces, vos tenés que vas a tener que
decirle explícitamente al Solity, "Che,
esto ya lo chequé. Acá no evalúes si hay
un overflow o un underflow."
¿Sí? ¿Por qué? Porque al evaluarlo,
obviamente, va a ser más código que va a
poner acá.
Y ese más código significa más gas, ¿no?
Acuérdense que cada una de estas cosas,
cada una de estas líneas, ¿sí? Me saca
gas. ¿Se comprende?
Sí. Entonces, también las librerías me
sacan gas.
Exacto. Sí, obvio que te sacan gas.
Lo que pasa es que te agregan seguridad,
¿no? Pero bueno, vos tenés que ser capaz
de poder decir, "Okay, acá ya la
seguridad está. Si esto nunca va a poder
dar un overflow, un underflow porque ya
lo chequé. pregunté si era mayor o menor
a un número determinado. Y bueno, si eso
es mayor a un número determinado, no sé,
por ejemplo, si esto de acá yo verifico
que no puede ser nunca mayor a 10, sí,
porque tengo un while y por ejemplo, y
wi en 10 se corta y acá lo voy a estar
sumando uno y bueno, esto nunca va a dar
un overflow, ¿no? Porque lo sumo me da
11.
Sí.
Entonces, ¿para qué yo voy a e un
chequeo de de overflow y la librería y
digamos el compilador ya me lo va a
poner de por sí? Entonces, yo voy a
tener que especificar el compilador,
che, acá no me hagas ese chequeo si no
lo quiero porque nunca va a dar off.
Sí,
bien. Entonces, como vimos acá, sí, una
vez que despamos esto en en la
blockchain, la BM ejecuta el code. ¿Cómo
lo ejecuta? Y bueno, lo vimos acá en en
este playground, ¿no? Va ejecutando
línea por línea, ¿sí? ejecutando ese
off.
Entonces, bueno, ejecución real dice,
bueno, el input, tenemos el by code, la
interpreta esas instrucciones, ¿no?, que
las va ejecutando y el output es un
nuevo estado. Sí, acuérdense que cambia
con la transacción cambia
estado. Después dice la memoria, tenemos
el stack, ¿sí? que es esa pila, sí, el
hacer operaciones ahí en la pila es
barato. Si todo lo que está en la pila
es barato.
Tenemos una memoria que es de tipo
temporal, que lo habíamos visto cuando
vimos el modelo de cómo está formada la
EBM, ¿sí? Esto que era asemejante a la
RAM, ¿no? Esta memoria de temporal. Yo
tengo una función, mientras estoy
función existe ese esa variable, después
muere si no persiste
el precio por trabajar ahí es un precio
medio, si no es ni barato como el stack,
pero no es tan caro como el storage, si
el storage está variable permanente, lo
que nosotros conocemos como variables de
estado, ¿sí? Estos estados que cambian,
¿sí? Son estos storage. Este storage es
justamente la memoria persistente que
cambia de un estado A a un estado B con
una transacción. Sí. Y cambiar eso es
sumamente caro. Sí, es caro. Por lo
tanto, tienen que ser, tienen que
ustedes trabajar en storage lo menor
posible. Si ustedes tien una variable en
storage, por ejemplo, la quieren
cambiar, nunca deben trabajar desde
storage y poder, por ejemplo, un sumador
que vaya sumando esa variable storage +s
1, después 2, +S 3, no, si ustedes bajan
esa variable storage a memoria, en
memoria hacen todos los cosas que
quieren hacer y unas que ya tienen el
valor final lo vuelven a subir a
storage. ¿Por qué? Porque así hacen un
solo acceso a esa memoria de storage y
no múltiples accesos. Sí, porque acceder
es muy caro. Sí, tanto para hacer como
para escribir.
Bueno, formulismo que yo se lo di. Eh,
bueno, gas dice unidad de costo
computacional. Acuérdense que el gas
justamente es esta unidad de costo
computacional. El la sumatoria, por
ejemplo, eran tres unidades de gas. la
productoria. También hay otras cosas que
son dos, otras cosas que son más,
dependiendo de de
dependiendo, por ejemplo, si esa si esa
variable ya fue accedida o no fue
accedida, puede valer un poco más o un
poco menos. Sí, pero bueno, son el gas
es básicamente lo que te dice cuánta eh
cómputo requiero para eso. Sí. Y también
es una cosa determinística, ¿sí?
Pero acuérdense que cada operación
cuesta gas y esto no se ve a nivel de
soliti, sino que se ve a nivel de
assembler. Por eso yo les decía, ustedes
tienen una suma y esa suma en Solity
puede estar trciendo un montón de líneas
de assembly. Sí. Y esas líneas de
assembly básicamente son las que van a
estar sumando, restando gas. Por
ejemplo, que tenga un chequeo de
overflow o de underflow. ¿Si? Entonces,
si ustedes ya lo chiquearon para ahorrar
gas, le van a tener que decir al Soliti,
"Che, a esta parte de acá no le hagas un
chequeo porque yo ya lo hice y no lo
hagas de vuelta, ¿no? Para ahorrar gas."
Ahí vi una mano levantada, no sé si
querían preguntar algo.
Bien, si no preguntan, bueno,
básicamente acá dice funciones de del
gas para evitar spam. Sí, por un lado,
como dijimos, si esto fuera totalmente
gratuito, si yo podría agarrar y hacer
un ataque de OS. ¿Por qué? Porque agarro
y empiezo a llamar a muchas funciones,
muchas veces o llamo una función
gigantesca y bueno, me agarro todo el
cor de la máquina, ¿no? Y nadie más
puede ejecutar. En cambio, si empiezo a
cobrar gas por eso, todo eso me lo van a
ir cobrando y llega un momento que se me
acaba el dinero y mientras no se me
acaba y bueno, siguen cobrando dinero,
por lo tanto a mí me va a resultar s
super caro, ¿no? Entonces es una forma
de evitar el spam, justamente esto de
tener gas
y justamente evita los loops infinitos,
¿no?
Acá como dice el gas protege a la red
justamente por eso, ¿no?
Después, bueno, el de mismo ya hablamos
muchas veces, ¿no? Un mismo input. Sí,
forma un mismo output. Todos los nodos
se ejecutan igual. Sí, no hay acceso a
API, sí, a internet. Eh, esto problemas
con los datos externos. Dijimos para eso
están los oráculos que pueden traer. Sí,
rompen pureza, dice, agregan confianza.
¿Por qué rompen pureza? Porque estamos
hablando ya de afuera de la blockchain,
pero bueno, es como que nos da ese
puente, ¿no? Con el mundo real.
Perdóname, ese oráculo está hecho en en
qué en qué es Jason. Afuera de la
blockchain. Puede ser un programa, por
ejemplo, no es que te meta blockchain y
te saque,
que te lea y mande para otro lado y que
te meta en una función de escritura, por
ejemplo.
Es fuera de la blockchain el oráculo. Ve
la blockchain, pero fuera de la
blockchain.
Descentración dice, bueno, no es
absoluto. ¿Por qué? Porque hay ejecución
descentralizada, variación abierta, dice
cloud, centralización, gobernad social.
¿Qué significa con que toda esta cosa
está diciendo? Bueno, que la
descentralización nunca es absoluta,
porque nosotros podemos decir, "Okay,
hay muchos servidores, eh, hay mucha
concentración en los servidores, ¿no?
Decimos, bueno, todos los servidores de
Amazon Web Service, por ejemplo, y están
ejecutando este nodo, se cae Amazon Web
Service y bueno, entonces cayó la mitad
de los nodos. O el tema del código, si
el código es open source, yo tengo un
código abierto, tengo GET, por ejemplo,
que justamente me da el tema de este
poder crear un nodo, ¿sí? y todo el
mundo baja el mismo código. ¿Qué pasa si
ese código tiene algún error, algún
problema? Y bueno, el 80% que está cor
que está corriendo ese get y va a
introducir un problema en la blockchain,
¿no? Entonces existe una cosa de
descentralización a través de ese tipo
de cosas terciarizadas, ¿no? Entonces es
descentralizado. Sí. Ahora tiene
problemas la descentralización y también
sí, o sea, nunca podemos hablar de que
algo está 100% descentralizado, siempre
hay matices, ¿no? Que es lo que hablamos
la primer clase. Y bueno, como cierren,
la es una computadora global que tiene
determinismo, el gas para proteger la
red en modo sandbox, ¿sí? Para correr.
No tiene una autoridad central. Si,
acuérdense que es descentralizado. Sí. y
después chequea con con los otros con
los validadores
y acá como una frase de siempre dice de
cierra dice, bueno, es una sola
computadora compartida por todo el
mundo. Sí, como actividad se los dejo de
tarea. Dice ver BCO en Nether Scan. Eso
ya lo vimos. Sí, eh, lo vimos, de hecho,
lo pusimos en el playground para ver
cuáles son los outputs que me que me
daba los
eh los neemónicos. Eh, ¿ves ver el gas
tracker? No lo hicimos hoy, pero lo
habíamos hecho la clase pasada y
comparar con finanzas tradicionales,
¿no? Esto para que jueguen un poquito
ustedes.
Ahora sí, lo que sí les voy a dar es
este quiz que, ¿cómo dice? Acá dice,
"Usen el mismo email que se registraron
en el curso." Esto es porque talento
quiere ver quiénes hicieron y quiénes
no. Esto de acá, como le digo, puede
llegar a influir un poco en la nota
final, pero no es que si reprueban esto,
reprobaron. Sí.
Y como dice acá, bueno, aprobarlo o no
implica la aprobación eh o reprobaciones
del curso. Ahora si me dan un segundito,
se los paso y tenemos más o menos 10
minutitos para hacerlo y después en los
últimos
5 minutitos póngale, hacemos una apuesta
un poco en común.
Bien, se los pasó acá.
Y bueno, pueden comenzar.
Yo voy a parar la grabación porque no
tiene sentido que grabemos tiempo
muerto.
