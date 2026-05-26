# 22/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 4 - Parte 1

- **Video:** [https://www.youtube.com/watch?v=oyZ96XPafhU](https://www.youtube.com/watch?v=oyZ96XPafhU)
- **ID:** `oyZ96XPafhU`
- **Canal:** ETH KIPU
- **Fecha:** 2026-04-08
- **Duración:** 1:05:45

---

## Transcripción

Bien, voy a compartir.
Bien, [carraspeo] primero ya les voy
comentando para que sepan, al final de
la clase vamos a tener una pequeña
evaluación, ¿sí? Que es el quiz. Hoy
estamos terminando con el módulo uno.
Vamos a tener un quiz el módulo uno. No
es necesario aprobarlo para tener la la
cursada aprobada, sí, pero sí les
recomiendo que lo hagan porque sí puede
llegar a interferir en la nota. Sí.
E
bueno, eso básicamente se los voy a dar
los últimos 20 minutos y es un quiz
bastante sencillo, multiple choice, que
involucra un poco todas las cosas que
estuvimos viendo hasta ahora, ¿no? No se
preocupen, como le digo, es muy sencillo
y se los di los últimos 20 minutos, así
lo hacen en 10 minutos más o menos y
después vemos un poco las respuestas,
¿sí?, en los últimos 5 minutos.
Eh, bien, habiendo dicho eso, para que
sepan, si después lo lo que es
presentismo se los doy en el recreo.
Antes no se abre igualmente para dar el
presente, igual ahí ya se los dejé por
si ustedes lo quieren tener.
Y bueno, comencemos.
Esta guía, como digo, no es la oficial,
sino que es únicamente para yo e poder
irme guiando. Sí, la la guía oficial es
esta que está acá en eterquipum.org, sí,
baretherum developer pack. Si no les
puedo pasar estas guías, sí, porque
básicamente los confundiría si por tanto
me pidan que no las pase, pero ustedes
acá tienen todo el material y eh es el
material completo. Sí, acá ustedes
entran a a la clase número cuatro, que
sería la de hoy, ¿sí? La eter machine,
¿sí? Y la ejecución descentralizada. Y
ustedes acá tienen el la información que
vamos a estar viendo. ¿Sí? ¿Qué fue lo
que hice yo? Bueno, tomé los puntos
claves de este material, ¿sí? yarme acá
una diapositiva como para poder tener
los puntos claves para poder organizarme
yo y no olvidarme ningún tema. Sí,
pero bueno, eso básicamente. Así que sin
más eh comencemos. Sí, voy a voy a
agrandar un poco esto. Slide shows.
Bien, un poco de repaso. Sí, ¿qué fue lo
que estuvimos viendo la última clase, la
clase pasada? por si alguien se la
perdió capaz o o no la recuerda bien
porque fue antes de de las fiestas, ¿no?
Y bueno, capaz que pasó mucho tiempo,
así que bueno, vamos a recordar un
poquito. Vimos básicamente esta
diferencia entre lo que era Bitcoin y
Ethereum. Sí, habíamos visto que Bitcoin
servía para hacer una transferencia de
valor, ¿sí? Que era una blockchain bien
segura, pero que era únicamente
especializada en lo que es transferencia
valor. Sí. Por lo tanto, todo lo que era
algoritmos que podía llegar a tener
Bitcoin, habíamos visto que eran
algoritmos muy sencillos, sí, muy
básicos, ¿sí? los scripts que se podían
lograr con Bitcoin, pero que básicamente
le daba mucha seguridad, ¿no? Habíamos
dicho que Ethereum cambiaba un poco eso
y le agregaba una máquina virtual que
nos habíamos dicho que se llamaba EBM,
si tiene un virtual machine, que le
permitía hacer ejecuciones de código,
hacer ejecuciones de de otro estilo,
¿sí?, que ya eran touring complete, sí,
eran completas frente a las máquinas de
Touring y eso
digamos le daba mayor eh capacidad de
acción, pero obviamente le reducía la eh
la
seguridad. Ustedes habrán escuchado que
muchas veces se han hackeado protocolos
en Ethereum. Sí, capaz que no el core de
Ethereum, pero sí los programas que
están hechos en Ethereum, mientras que
nunca se ha escuchado que hayan hackeado
algún algo que está en Bitcoin, ¿sí? Un
un transacción de Bitcoin. Sí,
básicamente porque son transacciones
nada más, sí, que de envío de dinero,
transferencia de valor, mientras que el
otro tiene más complejidad, ¿no? Y al
tener más complejidad también tiene un
mayor
vector de ataque, ¿no? Entonces de esa
forma es un poco menos seguro, pero
puede hacerse un montón de otras cosas
que en Bitcoin no se pueden hacer, ¿no?
Entonces, si ustedes van a querer hacer
transferencia de valor y bueno, Bitcoin
capaz que sea su mejor opción. Si
ustedes van a querer hacer algo más
complejo, ¿sí? y probablemente Ethereum
sea su mejor opción, obviamente teniendo
en cuenta todas las posibilidades en las
cuales ustedes podrían llegar a ser
atacados. Sí,
hay cosas en las cuales sería
fundamental analizar todo el tema de
ataques, otras cosas que capaz que no es
tan importante.
En cuanto a los nodos, sí habíamos visto
que había nodos, habían diferentes tipos
de nodos. Teníamos los nodos livianos,
los nodos eh completos, ¿sí? que
dependiendo si tenían únicamente los
hash de las transacciones anteriores o
si tenía todo la toda la información.
Sí, eso decíamos para usar un nodo
liviano para que no tenga que ocupar
tanta memoria,
pero que igual pueda comprobar las cosas
que están funcionando bien o el nodo
completo que tenían absolutamente toda
la historia desde el comienzo de de
Ethereum hasta el día de la fecha.
Y y bueno, también habíamos dicho que un
nodo sí, cuando escribía la blockchain,
sí tenía que tenía que hacer algo, ¿no?
Tenía que comprobarse, tenía que hacer
eh
habíamos dicho primero que un consenso,
¿no? El tema de la prueba de trabajo que
lo vimos bastante a fondo, ¿no? Cómo se
encontraba ese non para ponerlo. De
hecho, después nosotros vimos en la
eh en el Explorer que ya Ethereum no
funciona más con prueba de trabajo. Sí,
acuérdense que esta prueba de trabajo la
idea era poder evitar que una persona eh
pueda
modificar algún valor previo, ¿sí? Algún
valor que se esté escrito, [carraspeo]
¿sí? que para eso la prueba de trabajo.
Después el tema del consenso entre las
máquinas y ese P2P, ese peer to peer era
básicamente para poder ponerlo a todos
que tengan la misma información y que
puedan validarse entre sí, ¿sí? Pero el
tema de poder no modificar un número o
una información anterior, sí, eso lo
daba esa prueba de trabajo, ¿no? Pero
habíamos dicho que ya Ethereum no
trabajaba más con prueba eh de trabajo,
si es el proof of work y habíamos visto
que justamente aparecía el non, que era
ese numerito que íbamos encontrando en
el bloque para poder eh encontrar un
hash que satisfaga un cierto nivel de
dificultad en la prueba de trabajo.
Ahora el NS en Ethereum estaba en cero.
Sí. Y habíamos dicho, "Okay, bueno,
habíamos planteado la pregunta, bueno,
piensen por qué, si por qué es que tiene
que estar en cero." Y ahora cuando
terminemos esta introducción, a ver si
alguno lo investigó o algo y me puede
comentar un poquito, pero bueno,
básicamente es que trabaja con proof of
take. Sí, ahora vamos a ver un poco más
de eso. Ahora también habíamos visto un
poco el tema de la mpol, si que era esta
cola en la cual iba tomando las
transacciones que le llegaban de forma
concurrente, ¿no? Siempre que ustedes
trabajan concurrencia y tienen que
trabajar con una cola y acá ustedes
tienen concurrencia, un nodo, por lo
tanto en ese nodo antes de que se
ejecuten, como no se va a poder ejecutar
todo en el mismo momento, sí tiene que
ir a una cola. Esa cola vimos que se
ordenaba por el gas price, ¿si? Nosotros
podíamos ordenar de diferentes formas,
podíamos hacer un fifo, un Lifo o lo que
sea y se ordenaba por gas price. Esto
dijimos que no era parte del protocolo.
Ustedes si querían hacer su propio nodo
y el MPL ordenarlo de otra forma, están
totalmente en su derecho de hacerlo. Sí.
Y nadie les va a decir esto va a
encontrar protocolo. Pero, ¿por qué lo
hacían el punto de vista del gas price?
Y bueno, básicamente porque de esa forma
obtienen mejores eh rendimientos, ¿no?
Porque cuando agarran transacciones y
bueno, van a agarrar las transacciones
que más le van a estar pagando.
Entonces eso con respecto a la mpol,
¿no? Ustedes podrían hacer, por ejemplo,
su propia mpol y tomar de esas
transacciones, las transacciones, por
ejemplo, que ustedes mandan primero,
¿sí? Como para decir, "Okay, mis
transacciones tienen prioridad, lo
pueden hacer."
Ahora, obviamente, como trabaja con
proof of stake para poder meterlo en la
blockchain, vamos a ver que usted va a
necesitar pagar eh
no o no pagar, pero poner a disposición
de la comprobación una cierta cantidad
de ters.
Después vimos también el tema de las
wallets. Sí, eh vimos que las wallets
eran básicamente para manejar firmas
criptográficas. Si yo tengo una clave
privada y con esa clave privada que no
se la comparto a nadie, yo puedo firmar
y puedo decir que estoy realizando
cierta acción, puedo identificarme.
Si habíamos dicho que la wallet era una
forma de identificación, como en la web
2 utilizamos un usuario en una
contraseña, por ejemplo, acá podemos
utilizar una wallet firmando
criptográficamente algo y esto que pueda
comprobar que somos nosotros sin
necesidad de tener nuestra clave privada
justamente por el tema esta de la
criptografía asimétrica, ¿no?
criptografía de clave pública, que algo
estuvimos hablando
y después vimos también el tema de las
DAPS, ¿no?, que es básicamente un
frontend conectado con Smart Contract.
Acuérdense que los Smart Contact tienen
eh digamos sería la parte del servidor
con un cierto, bueno, Smart Contía el
código básicamente, ¿no? Pero después
tienen un servidor, ¿sí? Que va a estar
dando el cómputo, que sería esta EBM. Y
por otro lado tendrían las bases de
datos, que sería las que están guardando
la información que sería la blockchain.
¿Sí? Y acuérdense que la EBM tenía
adentro adentro de sí todas las las
cosas que tiene una máquina común, ¿no?
Memoria RAM, memoria eh persistente,
memoria de código, todo lo que ustedes
conocen. Sí, un instruction pointer eh
un sería como un sistema operativo eh en
por así decirlo, si no es un sistema
operativo e muy complejo, porque
básicamente va a ser, digamos, una
operación por mes, ¿sí? como si fuera un
single core, ¿sí? Que va ejecutando
assembly línea por línea.
Y bueno, eso es básicamente como un
repaso general. ¿Sí? ¿Alguna duda hasta
acá?
Bien, entonces continuemos.
Bien,
como dijimos hoy,
sí, hoy la idea como está acá es que nos
concentremos en esto, ¿no? En esta
máquina virtual, ¿sí? Y la ejecución
descentralizada, o sea, cómo funciona la
EBM. Básicamente nosotros ya tenemos un
cierto bosquejo de cómo funciona. Sí, la
clase pasada hicimos un poco
de de introducción a esto. Vimos como
cómo estaba formada, qué cosas tenía,
hacía grandes rasgos, cómo se comparaba
eso con una máquina común y corriente,
¿sí? Y cómo es que un poco funcionaba
por dentro, ¿no? Pero ahora vamos a
intentar verlo un poquito más.
Entonces dice, ¿cómo ejecutamos código
en todo el mundo? Sí, es decir,
necesitamos una computadora que esté
conectada en todo el mundo para poder
ejecutar ese código. Eso es la EM. Sí,
todos deben obtener el mismo resultado.
Eso es lo que nosotros hablamos como
determinismo. ¿Qué es lo que sucede si
yo
doy una transacción
a un cierto nodo? ese nodo ejecuta algo,
le da un resultado y después publica ese
resultado a los demás nodos para que
después los demás nodos lo validen y
cuando los otros otros nodos quieren
ejecutar lo mismo, le da otra cosa. ¿Qué
es lo que sucedería? ¿Alguien me lo
podría decir?
Inconsistencia.
Claro, hay una inconsistencia. ¿Y qué
pasa ante la inconsistencia?
No se, no se ejecuta. Para acá.
Exacto, Pablo. No se ejecuta. Sí, se
descarta. Bien, Germán. Claro, al haber
una inconsistencia se descarta. Sí. Por
lo tanto, estamos hablando que siempre
tiene que haber determinismo. Sí. Todos
los nodos al ejecutar la misma
transacción, ¿sí? partiendo de los
mismos estados, porque todos tienen los
mismos estados porque justamente es un
consenso
y a ejecutan una transacción tienen que
llegar al mismo resultado, no pueden
llegar a un resultado diferente. Por lo
tanto, vimos que esto traía algunas
ciertas limitaciones, ¿no? Como por
ejemplo, yo no puedo comunicarme con el
exterior, ¿sí? Por ejemplo, con una API,
¿sí?
Por ejemplo, para poder obtener el
precio de letter. ¿Por qué? Porque entre
que el nodo uno hace la transacción para
llegar a un resultado, el nodo dos va a
hacer lo mismo, pero lo va a hacer en un
delta t después, ¿no? Un tiempo después.
Y esa ese valor de la API puede haber
modificado, si puede haber se puede
haber cambiado y al haberse cambiado
cuando lo quiera comprobar sí le va a
dar otra cosa diferente y obviamente esa
transacción va a ser descartada, no no
va a funcionar.
Por eso que no nos podemos comunicar con
el exterior. ¿Cómo hacíamos para
comunicarnos con el exterior? Y bueno,
primero no podemos hacerlo directamente
con el exterior, sino que tenemos que
inyectar ese valor del exterior adentro
de la blockchain. ¿Sí? ¿Por qué? Porque
de esa forma el nodo ya no lee del
exterior, sino que lee desde el interior
de la blockchain. Va a leer ese valor,
va a hacer la ejecución y va a llegar a
una eh a un cierto valor. Después se lo
va a dar a otro nodo para que lo
compruebe que va a ser exactamente lo
mismo. Va a leer el mismo lugar, ¿sí?
que había sido ya inyectado en ese valor
y le va a dar exactamente lo mismo.
Obviamente que acá puede haber un cierto
una cierta diferencia ya ahora entre el
valor que está e leyéndose que ya está
incluido en la blockchain con el valor
exterior, así que ya puede haber
variado.
En el caso de precios, obviamente va a
ser un precio muy muy chiquito, no va a
ser un número muy grande y además es un
número que uno no puede conocer de
antemano, ¿no? Pero e
pero bueno, no sí puede haber una una
pequeña variación.
Esto de inyectar código desde afuera,
¿sí? Es lo que se conoce como oráculos,
tanto inyectar hacia adentro como
sacarlo para afuera. Si yo modifico
algún valor y llamo algo para que e me
cambie algo en otra web, por ejemplo, o
en otra blockchain, ¿sí?
Eso también, o sea, tanto meter como
sacar valores es lo que se conoce como
oráculos. ¿Por qué se conoce como
oráculos? Y bueno, básicamente por el
oráculo griego, ¿no? Que conocía todo,
sabía todo, ¿sí? De todo el mundo. Acá
lo mismo, el oráculo ve todo, tanto la
blockchain como para afuera. Sí, por eso
que puede consultarse a ese oráculo.
Obviamente después existen oráculos
centralizados, oráculo descentralizado,
pero bueno, tengan ustedes el concepto
de que eso es el oráculo, ¿no? Con
conectar la blockchain con el mundo
exterior, tanto para meter datos como
para sacar datos.
Y bueno, acá dice, necesitamos entorno
estándar, ¿sí? Que es justamente eh la
EBM, ¿sí? ¿Por qué estándar? Y bueno,
todas las todas los nodos tienen que
tener una computadora que
básicamente interprete de la misma forma
las cosas, ¿no? Si uno dice que una
adición es agarrar el valor y sumárselo
a otro, mientras que otro dice que una
adición es agarrar un número y
multiplicárselo a otro y obviamente eso
va a ganar dos valores diferentes y por
lo tanto el el
resultado va a ser diferente y por lo
tanto va a ser descartado, ¿no? Entonces
ahí ya sabemos que eso también
involucraría el determinismo. ¿Si?
Entonces acuérdense eso porque es
fundamental y es clave. Si todo sistema
en la blockchain, si todo contrato, todo
programa que corre en la blockchain
tiene que ser absolutamente
determinístico. ¿Sí? Y acuerden que esto
trae entonces problemas como el tema de
conectarse hacia afuera, problemas como
el que habíamos comentado antes, si
también la clase pasada del random, sin
los números aleatorios. Acuérdense que
es imposible generar un número aleatorio
en la blockchain si vamos a necesitar un
oráculo que que inyecte ese número
aleatorio, pero en la blockchain es
imposible. Sí, uno puede en la
programación común, aunque podemos
intentar de
eh aunque es discutible, ¿no?, el tema
de esto de la aleatoriedad, ¿no?, o sea,
que el sistema es realmente aleatorio,
pero podemos encontrar sistemas que son
realmente entrópicos, por más que no
sean totalmente aleatorios.
Poder generar un número random, ¿sí?
Pero en la blockchain es totalmente
imposible, ¿sí? ¿Por qué? Porque vos
tenés el código ahí visible por un lado
y siempre que ese código se ejecuten con
los mismos valores de entrada,
sí, va a dar exactamente los mismos
valores de salida.
Y si eso lo hace en una misma
transacción, nosotros conocemos
exactamente todos los valores de
entrada. Entonces, si conocemos el
código que se va a estar ejecutando y
conocemos los valores de entrada,
es muy fácil obtener los valores de
salida. Y si nosotros ya conocemos los
valores de salida, podemos actuar en eh
consecuencia. Sí. Por lo tanto, ya deja
de ser aleatorio, porque yo ya conozco
el resultado que voy a obtener. Sí, se
entiende eso.
Bien.
Bueno, Ethereum dice acá, es una máquina
de estados.
¿A qué se refiere con esto? ¿Qué es un
estado? ¿Alguien podría definirme un
estado?
Es como un momento determinado que de
algo que tiene un valor determinado.
Exacto. Ahí, Bernard. Lo define muy
bien. Sí, es un valor determinado, sí,
que está en un momento determinado. Si
es un valor que está en un momento
determinado. ¿Qué significa esto? Yo,
por ejemplo, tengo una variable, ¿sí?
Que se llama variable uno, ¿sí? un común
en la programación, ¿no? Obviamente no
tenemos que utilizar ese tipo de
nombres, tiene que ser algo más
identificativo, ¿no? Hay como dice
María, justamente es una fotografía,
¿no? Vos tomas una fotografía de tu eh
de tus variables, ¿no? En este caso, vos
tenés una variable uno, por ejemplo, que
tiene valor tres. ¿Sí? Entonces, ese es
el estado de la variable de variable
uno, ¿no? El valor tres. ¿Qué pasa si
vos tomas una fotografía en ese momento
y bueno, tu variable uno tiene el valor
tres, ¿sí? Eso es un estado.
¿Qué es una transacción? Ahora sí,
alguno puede definirme lo que es una
transacción. Alguno capaz que esté un
poco más familiarizado con esto de
blockchain
y sigiendo con el ejemplo, sería un
cambio de ese estado, sería una
transacción.
Claro, Pablo. Exacto. Justamente una
transacción es una acción que involucra
un cambio de estado, ¿no? Por lo tanto,
yo tengo una variable tres, ¿sí? y hago
una acción, ¿sí?, por ejemplo, sumarle
dos, ¿sí? Que involucre un cambio de
estado. Sí. Ahora la variable uno me va
a dar cinco, ¿no? Antes tenía tres, le
sumo dos y eso me va a dar cinco. Ese
sumar dos justamente es la transacción,
¿sí? Porque es justamente lo que está
creando ese cambio de estado, ¿no?
Entonces, yo tengo un estado uno,
ejecuto una transacción y eso me genera
un estado dos.
Sí,
si está como esa fotografía al principio
tenemos la variable de estado de
variable uno en tres. Si la sacamos al
final la tenemos en cinco. Me gustó
mucho ahí lo que había dicho María, creo
que fue, ¿sí? El tema de la fotografía.
¿Por qué? Si ustedes entran al código de
la EM, lo primero que hace la EM antes
de comenzar a ejecutar cualquier
transacción es [carraspeo] justamente
tomar una fotografía de todos los
estados que que contiene. ¿Sí? ¿Por qué?
Porque si cualquier cosa pasa durante la
transacción,
va a revertir. ¿Qué significa revertir?
Volver todos los estados a su posición
anterior. Sí. O sea, que no haya ningún
cambio en los estados. Por lo tanto, esa
fotografía es lo que hace que yo pueda
volver todo a como estaba, ¿sí? Que no
se modifica absolutamente nada. Y me
asegura eso y eso es lo que me asegura
justamente que la transacción sea
atómica, ¿no? Si cualquier cosa
revierte, yo vuelvo a esa fotografía e
primera, ¿sí?, a esa primera fotografía
que yo tomé.
Esta fotografía en inglés se llama
snapshot. Si ustedes ven el código en la
EM, justamente va a haber una parte que
se llama snapshot, que va a estar
sacando el
eh esa fotografía de cómo está las
variables de estado en un cierto tiempo.
Después van a ver cómo se ejecuta la
transacción, ¿sí?, a través de esta EM,
¿sí?, que va a agarrar y va a ser
básicamente un instruction pointer, ¿sí?
Un puntero que va a estar yendo
línea por línea del código ejecutándose.
Sí. Y si en cualquier momento revierte,
agarra y carga otra vez todas esas
variables de estado en las variables de
estado para asegurarse que ninguna haya
sido modificada. ¿Sí? Y eso sería la
reversión.
Bien, entonces eso no la es básicamente
una máquina que va a
cuando alguien la llame, cuando alguien
se cuando un código se ejecute en esa va
a ser transicionar de un estado A a un
estado B.
Acá dice como frase clave, ¿no? Dice
Ethereum no guarda transacciones, sino
que lo que guarda es estado. Sí. Por eso
es que acá define Ethereum como máquina
de estados. Sí, porque es una máquina.
Sí, Ethereum machine es la máquina
virtual de Ethereum, por lo tanto, es
una máquina. Sí. Y es de estado
justamente porque lo que hace es guardar
estados. Sí. A mí no me importa eh
guardar transacciones, sino lo que
realmente me importa es guardar los
estados en cada uno de los momentos,
¿no? Esas fotografías.
La transacción lo que hace es hacer ese
cambio de estado, pero yo lo que guardo
es el estado. Sí. Por tanto, ese estado
tiene que estar en una memoria
persistente en la blockchain. Sí. por
más que yo eh deje de ejecutarlo o lo
que sea, tiene que seguir ahí. Por lo
tanto, no lo podemos tener una memoria
RAM, como diríamos en en computación
normal, ¿no? Tiene que estar en una
memoria persistente, en una memoria ROM,
¿sí?
En disco.
Se entiende hasta ahí.
Sí, sí.
Bien.
y y bueno, dijimos que esta m está en
todos los nodos. Por lo tanto, si yo
tengo un estado A, ¿sí? Y mando una
transacción que hace modificar ese
estado A a ese estado B, después yo esto
mismo lo agarro en otro nodo, voy a
tener el mismo estado A, porque
acuérdense que todo tiene el mismo
eh todos los nodos tienen lo mismo. Sí.
Voy a ejecutar el mismo código, ¿sí? que
sería esa transacción y voy a ser al
mismo estado B. Y esto lo voy a poder
comprobar. Si estos estados no están
iguales, entonces estamos en un
problema. Sí. Y esa transacción no va a
poder ser ejecutada, ¿s? Por lo tanto,
va a revertir y vamos a volver a este
estado a Sí. Ahora, si todos pueden
hacer esta transacción, si ya es
totalmente determin determinístico,
entonces sí lo vamos a poder escribir y
obtener el estado B. Sí. Y podemos decir
que esa blockchain o esa cuenta o lo que
sea, ese modelo que tengamos ahí, cambió
de un estado A a un estado B, ¿sí? Y que
eso va a ser lo que se está guardando,
¿sí? Esa transacción, o sea, no es la
transacción lo que se está guardando,
sino es estado.
Bien,
tenemos después los tres pilares, ¿sí?
¿Cuáles son los tres pilares? los
pilares que de lo que estuvimos viendo.
Bueno, la criptografía por un por un
lado, ¿qué es lo que me asegura la
criptografía? Bueno, como dice acá, la
identidad y la integridad. A ver si
alguno de ustedes puede eh decirnos cómo
es que asegura esta criptografía la
identidad por un lado y cómo asegura la
integridad por el otro. A ver si se
recuerdan de las clases anteriores,
la identidad, porque cada uno firma con
su clave privada las transacciones.
Exacto. Cada uno firma con su clave
privada una transacción
y con la clave pública de esa persona
podemos llegar a ver que realmente fue
esa persona la que lo firmó sin yo tener
que revelar mi clave privada, ¿no? Eso
es fundamental. Eso es lo que conocimos
como eh criptografía asimétrica, ¿no? O
un proceso de firma dado por la
criptografía asimétrica.
Bien. Y en cuanto a la integridad, ¿cómo
hacemos?
Por la cadena de hash que vas armando
por cada bloque.
Exacto. Acuérdense que siempre la
integridad está dada por el hash. No
habíamos dicho que nosotros para guardar
la integridad podríamos agarrar y copiar
muchas veces el el mismo texto. Sí. Lo
cual, si ese texto era un texto largo,
era totalmente imposible hacerlo por un
por una cuestión de memoria, ¿sí? O
podíamos únicamente eh copiar muchas
veces el hash. Sí, por todos lados el
hash. Y para y cómo comprobamos la
identidad. Bueno, después ese mismo
bloque de código o de datos o lo que
sea, nosotros le aplicamos otra vez el
hash y verificamos que coincida con
todos. Si coincide con todos, quiere
decir que la integridad se guardó, ¿no?
Entonces eso hash lo que nos hace es
permitirnos guardar la integridad.
Entonces tenemos dos cosas totalmente eh
separadas, pero que ambos estado por la
criptografía, ¿no? El hash que nos da la
integridad y nuestro juego de clave
pública y privada para darnos la
identidad de las personas. Sí,
es una identidad, acuérdense, de tipo
alias, ¿no? Porque ustedes saben de qué
cuenta corresponde, pero no saben a qué
persona corresponde, ¿no? Ustedes pueden
ver ahí la cuenta, pueden ver todo, pero
no saben que esa cuenta, por ejemplo, es
mía. Si no me pueden identificar a mí
como persona.
Después, otro de los pilares, si además
criptografía es el consenso, ¿sí? que
como dice acá dice un acuerdo global.
¿Cómo es que podemos ver el consenso
acá? A ver, ¿alguno
lo tenecen los nodos
porque los mineros tienen que hacer esa
competencia tanto para la proof of work
o proof state? Ahí es donde tenés el
consenso.
Si no no hubiera consenso, no pueden
ejecutar esas operaciones.
Claro. Bueno, ahí tenemos justamente uno
de los tipos de consenso que es ese
proof of work o proof of stake o lo que
sea para poder asegurarnos de que no
haya una mutabilidad
en
algún dato eh del pasado, ¿no? O sea,
que nadie pueda mutar cosas del pasado
falsamente. Sí. Es parte del consenso.
Sí, es parte del consenso.
¿Qué más? ¿Qué otra cosa del consenso
tenemos? Como dice acá, el gas. El gas
fundamental,
¿eh?
Sí, sí. el gas y el hecho que cada uno
está aceptando de que hay un bloque que
va a tener identificado que a quién le
toca el nodo.
Eh, eso no tanto porque eso depende un
poco el sistema de consenso que
utilicemos, ¿no? Es verdad que en el
proof of stake a algún nodo le to le
toca validar, sí es cierto. En el proof
of work, por ejemplo, no. Cada uno
agarra y compite para validar, ¿no? Acá
cuando dice consenso como acuerdo
global, ¿sí? Es básicamente que todos
estén utilizando el mismo algoritmo para
hacer las cosas, ¿no? Es decir, como
dije hace un ratito, si uno dice que el
más es para sumar, ¿sí?, y otro dice que
el más es para multiplicar, ¿sí? ya no
hay un acuerdo. Si están diciendo que
que son dos cosas diferentes. Entonces,
si son dos cosas diferentes cuando
quieran eh consensuar y decir, "Okay, a
ver si si es verdad lo que escribió y no
van a poder, ¿no? Entonces, ¿qué
significa este acuerdo global?" Y bueno,
que básicamente todos se rijan por las
mismas reglas, ¿sí? No pueden haber
reglas diferentes. ¿Se entiende?
En realidad, Cristian, el consenso está
dado por el protocolo en sí, ¿no? Hay un
protocolo de consenso que todos
suscriben.
Exacto. Sí, es un protocolo. Es un
protocolo justamente de consenso, pero
es es eso que le estaba diciendo, ¿no?
Un acuerdo global entre todas las
máquinas. Sí. Yo digo, "Okay, vamos a
guiarnos así. vamos a tener una EM que
va a tener todas estas eh estas
funciones y estas funciones tienen que
comportarse de esta manera, tienen que
cobrar esta cantidad de gas,
¿sí? Y obviamente eh tiene que ser
determinístico, ¿no? Entonces yo me digo
eso en el consenso y después digo,
"Okay, ahora pónganse de acuerdo si la
transacción está bien o no. ¿Cómo hacen
para ponerse de acuerdo?" Y bueno, la
ejecutan. Si llegan a un valor, el otro
lo ejecuta, llegan a un valor y
consensúan, se fijan. Sí, si las dos son
iguales. Si las dos son iguales, okay,
está bien. Si no, no. ¿Por qué? Porque
alguien estaría faltando al consenso. Si
si alguien dijo, por ejemplo, que un una
operación es diferente, eh, no sé, tomó
más cantidad de gas que que lo que dice
el consenso que tiene que tomar y bueno,
les va a estar dando justamente que eh
cambia la cantidad de gas que tiene que
tomar y el otro le va a dar otra
cantidad de gas y la cantidad de gas van
a ser diferentes, por lo tanto está mal.
Sí, esa transacción va a volver para
atrás.
¿Sí? ¿Por qué? Porque estoy faltando ese
consenso, a ese acuerdo, ¿no? Acuérdense
que el consenso es un acuerdo. ¿Se
entienden?
Cuando vos decidis esa operación va a
volver para atrás, no es que lo hacen
los mineros ni nada de eso. El mismo
protocolo lo hace, ¿no? Se entiende que
el mismo la, vamos a decir acá, la EBM
la va a retroceder.
Claro. O sea, el protocolo en sí es el
consenso, ¿no? Es decir, el protocolo
dice, "Esto funciona así, así y así. Si
vos querés subirte a la rueda, bueno,
crea una un nodo que funcione de esta
forma, que tenga estas capacidades
mínimas, como yo les dije, por ejemplo,
después el mempol, ¿sí? Ustedes lo
pueden escribir como quieran, es decir,
puede ser fifo, puede ser Lifo, puede
ser por gas. Sí, eso no es parte del
consenso.
Sí, eso no es parte del consenso. Pero
después, ¿cómo se van a a ejecutar las
transacciones para hacer un cambio de un
estado A a un estado B? Eso ya sí es
parte del consenso, ¿no? Existe un
wayper paper que dice cuáles son las
funciones que existen, etcétera, ¿no?
Fíjense esto. Por ejemplo, yo les dije
lo de la suma como multiplicación y
capaz que así suena medio loco. O sea,
¿cómo voy a hacer una multiplicación
cuando me dice suma? Pero el punto no es
ese. A ver, quiero sacar sacar esto de
la máquina. ¿Cuál es el punto?
Eso se lo estoy diciendo con los dedos,
pero usted cuando tiene una
multiplicación, una suma, en realidad no
tienen una suma o una multiplicación.
¿Qué es lo que tienen ustedes?
Un conjunto de bytes. Sí,
por ejemplo, acá la suma es 01. Si esto
está en número hexadecimal,
o sea, son 8 bits. Esto quiere decir que
esto va a ser 01.
Sí, eso es la suma. Y fíjense que
después dice, bueno, recibe un valor A y
un valor B.
Entonces, ¿cómo haría yo una suma?
Sí, fíjense que tendría que poner el 01,
por ejemplo, mandarlo a un stack. Sí, si
que hac un,
no sé, 2 + 3, por ejemplo. Bueno, agarro
ese número dos, lo cargo en el stack,
pues dice que lo va a tomar de stack.
Sí. Después el tres lo cargo en el stack
y ahí voy a tener el dos y el tres en el
stack. Después voy a ejecutar este 01.
Sí. Y eso va a ser la suma y eso me va a
dar cinco. ¿Qué es lo que pasa si otra
otra máquina sí otro nodo agarra y esto
lo cambia y me dice, "Okay, el 01 ahora
no es una suma, sino que es una
multiplicación."
Sí, cuando ejecute eso, el 2 + 3, eso va
a dar 6.
En otra máquina que lo tenga como suma,
eso va a dar cinco. En otra máquina, eso
va a dar cinco. ¿Sí? Entonces, cuando lo
ejecute esa máquina, le va a dar
cualquier cosa y cuando lo quiera
comparar para ver que sus estados son
iguales,
¿sí? Le va a dar algo distinto. Por lo
tanto, esa operación no va a poder
realizarse. Sí, se va a tirar si le
ejecutó ese nodo. Sí, eso en sí es el
consenso.
¿Se entiende?
Sí, se entiende. Tienen que tener todos
la misma tabla de registro.
Exacto. Tienen que ser iguales. Tienen
que todas las cosas que hagan tienen que
dar los mismos. De hecho, acá, por
ejemplo, dice, "Okay, esto del gas cobra
tres." ¿Qué pasa si uno dice, "Okay, yo
no quiero cobrar tres, quiero cobrar
cuatro." Se va del consenso. Sí.
Ahora te hago una pregunta.
Esto lo hizo este Vitali, es el que creó
este protocolo. Después está bien que se
revisó, se cambió, se hizo el mer, pero
el digamos el cerebro el que diseñó todo
esto fue Vitali este de este protocolo.
Claro, en principio sí, o sea, no fue
solo Vitaliic, hubieron varios. Sí,
Vital fue como el eh digamos el el
primero, ¿no? Obviamente hubieron varios
que lo diseñaron,
pero sí, básicamente es eso. Pero
después obviamente hubieron
modificaciones porque todo esto
acuérdense que es abierto. Cualquiera
puede agarrar, puede opinar, puede
proponer mejoras, se pueden hacer. Sí,
ustedes mismos pueden agarrar escribir
una eip, ¿sí? decir, "Okay, yo quiero
mejorar esto." Por ejemplo, fíjense que
eh no sé, esta suma, por ejemplo, esto
fue agregado en Frontier, sí, que fue de
la primer máquina virtual. Sí, hay
diferentes máquinas virtual, pero
fíjense, por ejemplo, código 5F, que es
un
eh,
¿dónde está? Acá sí, este push cero, sí,
este dice fue hecho en Shanghai. Sí, o
sea, fueron dos máquinas virtuales
diferentes. Al principio este este
código 5F no existía. Sí, ahora sí.
Sí. Y eso ponele cuando se forqueó, eh,
todos siguieron con esta Shangai, ponele
y implementaron este nuevo protocolo.
Claro, acá justamente se restableció el
consenso de todas para decir, "Okay,
ahora todos vamos a eh hacer un upgrade
a Shanghai. Si ya no vamos a estar en
Frontier, sino que vamos a estar en
Shangai y vamos a modificar todas estas
cosas que pedimos que se modifiquen en
el protocolo. Sí. Y el protocolo
entonces agrega, por ejemplo, pulsero.
Antes no estaba, ahora sí está. ¿Se
entiende?
Igual, espera, hay algo que no me queda
claro.
Sí. Eh, porque vos dijiste es una
máquina de estados, eh, tipo una
variable, cada cambia de estado, está
todo bien. El protocolo, esto, sumar,
restar, está todo bien. ¿Dónde es que
queda la programación en sí que, por
ejemplo, no sé, eh, hasta que,
no sé, tal persona deposite tantos
Ethereum o tantas X, se transfiere la
propiedad de un cuadro o se transfiere,
¿dónde queda eso guardado como tal?
Eso es código, ¿no? O sea, vos eso vas a
tener que eso vas a tener que o sea, vos
vas a tener que programarlo.
Esa programación obviamente se va a
convertir en estos upodes, ¿no? 5C, 5D,
5E. Se va a convertir. Sí, eso se llama
compilación. Si ustedes lo van a
programar, Solity, se va a compilar con
estos upcodes que se llama byte code y
ese byte code es lo que se va a guardar
en la blockchain. Si va a ser un un
estado básicamente dentro de una cuenta
en una blockchain. Sí. y va a ser el
estado que va a ser capaz de manejar esa
cuenta.
No está dentro del contrato que vos
estás programando eso que a él.
Claro, claro. Eso es un contrato.
Justamente eso es un contrato, un
programa que está funcionando en el
blockchain.
¿Sabes dónde? Entonces eh eh
entiendo de que este es el protocolo,
pero por ejemplo vos hablaste del
oráculo que inyecta. Generalmente esa
inyección eh digo, no desconozco, no,
pero debe ser un Javaon, un un Jon, que
es más o menos un protocolo. Si yo, por
ejemplo, en el JavaSon tengo, por
decirte, un float, ¿cómo hago? Te voy a
hacer un protocolo para decir, no, para
yo no puedo tener o tomar valores, o
sea, tengo que tener también un
protocolo de cómo voy a tomar los
valores que me van a pasar de de en esa
inyección, porque dentro del Solidity
está claro lo que vos decís, debe ser
muy determinístico, pero después cuando
me voy a la frontera, lo que me metan
tiene que también estar reglamentado.
Sí. Bueno, ahí está como vos lo
reglamentes, ¿no? De ambos lados.
Pero la pregunta es, ¿lo lo reglamento
yo con el código?
sabiendo las reglas o ya el protocolo me
protege a mí. Te doy un ejemplo, metí un
float en el códig en
el código que yo programo, pero resulta
que el dato de entrada no venía para un
flow.
Okay. Bueno, ese es un punto. Solidity
no acepta flats.
Ah, bueno, ¿ves? Entonces está dentro
del Entonces ya está ahí ya está
regulado eso.
Claro. Te te digo más. O sea,
Solidity, ¿qué es lo que o sea nada
acepta floats en realidad? Si vos te
pones a pensarlo, ¿qué es lo que acepta
esto? Ceros y unos. Sí, bits.
Sí, sí, todos s in.
Por eso son todos bits. Ahora, ¿cómo lo
codificas vos? Sí, es es el punto
principal. ¿Puedes hacer un float en
Solity?
Sí, lo puedes armar vos. Sí, ahora no
existe. Sí,
otras cosas sí existen ya de por sí,
pero no nos tenemos que olvidar que es
siempre termina básicamente en ser bits,
¿no? Porque vos lo que vas a estar
mandando en definitiva son bits.
¿Se entiende lo que a lo que voy?
Sí, sí. Está claro. El tema es, por
ejemplo, lo que te decía, después saber
la longitud en byte que vos vas a
aceptar, ¿me entendés? Claro. Te te lo
te lo digo de otra forma. Por ejemplo,
¿cómo haces para diferenciar un int de
un u int? ¿No? ¿Cuál sería la diferencia
entre un int y un u int? Bueno,
básicamente que uno es unsignal, si no
tiene signos y el otro sí tiene signos.
Si vos tomás, por ejemplo, un intra un
int, el int 256 valores posible, ¿no?
Del 0 al 255,
mientras que un int
va 128 de -18 a 0 y después obviamente
de 0 a + 127.
¿Sí? Ahora, ¿cómo es que eso se
codifica? Y bueno, complemento a uno.
Sí.
¿Qué es lo que sucede si vos le mandás
un complemento a uno, si un del otro
lado le escribís en bit eh un valor
en tipo intas
a a tu programa, a tu a tu smart
contract, si tu smart contract acepta un
wint, esos valores van a ser diferentes,
¿se entiende?
Tal cual. Tal cual. O sea, yo debo
conocer todo eso antes de de programar.
Claro, claro. Y por eso es que yo le
decía, bueno, en realidad lo que están
mandando son bits, o sea, olvídense de
que tienen inflowat, todo eso.
Obviamente los tienen, pero eso es una
abstracción que nosotros hacemos. Lo que
se va a estar comunicando de una punta a
la otra, no dejan de hacer bits. Todo en
computación en realidad son bits.
O sea, que el que maneje Assembler la
tiene más clara acá.
Totalmente. Sí, totalmente.
Ese se le dice el lenguaje de bajo
nivel.
Es un lenguaje de bajo nivel. Soliti,
Solidity es una cosa extraña, ¿sí?
Porque es
para programar parece un lenguaje de
alto nivel, ¿sí? Como programación
orientada a objetos, inclusive, aunque
objetos medio extraños, se llama
programación orientada a contratos. Sí,
por los contactos pueden verse como si
fueran objetos, tienen el especificador
punto, por ejemplo, si quieres entrar a
un método eh o ese tipo de cosas,
pero si nosotros en realidad queremos
poder entender que está pasando por
debajo y lo cual es muy recomendable por
un tema de tanto de seguridad como tema
de gas, sí, nosotros tenemos que conar
todo esto, ¿no? Toda esta cosa que le
estoy diciendo. ¿Qué es lo que sucede
ustedes? Seguramente cuando quieran
comunicar esto, como yo decía, de mandar
un int o mandar un int, que en realidad
lo que van a estar haciendo es mandar eh
bits, ¿no? Van a seguramente descargar
una librería. Esa librería va a tener
todas esas abstracciones ya hechas y que
cuando ustedes le pongan, bueno, esto es
un intento es un wint o lo que sea, se
lo va a frenar de alguna forma, ¿no?
Para que usted no metan la pata. Sí,
pero piensen que eso ya es una
abstracción de la librería, no es del
funcionamiento de del sistema. ¿Se
entienden?
Sí, sí, se entiende. O sea, inclusive
para otro lenguaje se tiene que instalar
una librería de matemática para poner
los flotos.
Exacto, exacto.
Acá, bueno, Soliti no tiene por ahora
floats.
Capaz que en algún momento se le
agregue. Sí, hoy por hoy no tiene.
Eh, María, hay que manejar todo esto
para poder programar. Y yo te diría que
depende a lo que llames programar. Si
vos decís, "Yo quiero hacer un
programita porque quiero jugar un poco
con Soliti." Y te diría, "No, no
necesitas hacer eso." De hecho, agarrass
un chat que hacemos un programa y listo,
¿no? Ahora, si vos querés realmente
programar en Soliti y sí, necesitas
conocer todo esto, necesitas saber cómo
trabajas por dentro, necesitas saber
cada línea que vos estás haciendo cuando
pones un más algo, ¿sí? saber qué es lo
que se está haciendo, cuál es la
diferencia, por ejemplo, entre hacer,
no sé, si vos tenés
eh, por ejemplo, suma igual a a + 1, si
por ejemplo esto sí no es lo mismo que
hacer eh a más, ¿sí? O no es lo mismo
que hacer más a. De hecho, esto de acá y
esto de acá ya es diferente. Sí.
Y todas esas cosas son cosas que vos
necesitarías saber y para poder saberlo
necesitas conocer todo esto de acá
abajo. Por eso justamente que con SEBA
organicamos este primer curso para poder
entender bien cómo es que funciona todo
esto, que es la parte fundamental antes
de poder comenzar a programar, digamos.
¿Se entiende?
Eso es lo que te va a convertir después
en un programador Solidity, ¿no? Un
programador de smart contract real que
uno que bueno agarró, aprendió el
lenguaje en una semana, lo cual se puede
hacer porque es muy parecido a
JavaScript o a otros lenguajes y
programar un contrato.
Sí,
es justamente lo que te va a dar la
diferencia.
Nosotros acá queremos eh formar
programadores reales, ¿no?, de de
Solidity. Y bueno, esa es un poco la
idea, ¿no?
Bien.
Bueno, entonces esto era un poco para
mostrarles el tema del consenso, ¿no?
Decir, bueno, hay un consenso que me
dice que este 01, este upcode 01 va a
ser una suma y este 02 va a ser una
multiplicación y no al revés. Alguien
podría agarrar y cambiarlos,
modificarlos, pero ¿qué pasa? Se va a ir
del consenso.
Sí, se va a ir de este,
¿dónde estábamos?
de este acuerdo global, no es parte del
acuerdo. Eso obviamente hay muchas cosas
más aparte de ese acuerdo.
Sí,
eso de de cómo están formados los codes,
bueno, es una parte del acuerdo, otra
parte, por ejemplo, cómo se hace ese
proof of take, ¿sí? ¿Qué es lo que se
necesita para hacer? son todas partes de
ese acuerdo, de ese consenso
o cómo se hace el peor to peor, la
comunicación, etcétera.
Como decían, todo el protocolo es parte
del consenso. Después tenemos la M, dice
que es ejecución determinística. Sí, ya
lo hablamos bastante esto, la ejecución
determinística y el por qué tiene que
ser determinística esta esta ejecución.
Y acá dice, bueno, idea, dice, sin uno
el sistema se rompe, ¿sí? O sea, si no
tenemos la criptografía, si no tenemos
el consenso y no tenemos la EBM que
ejecuta esta ejecución determinística,
¿sí? El sistema se rompe y no podemos
tener el el sistema, ¿sí? ¿Por qué? La
criptografía lo que me va a estar dando
es, ¿okay? ¿Quién es el que tiene la
potestad de mover eh cierto estado, sí,
de una cuenta? El consenso lo que me va
a decir, ¿cómo es que eso se mueve? Sí.
Y la BM va a ser la que realmente lo
hace. Sí. Y si no es determinístico, yo
no podría hacerlo y comprobar que lo
hizo bien. Sí. Y acuérdense que la
comprobación que lo hizo bien es
totalmente fundamental porque estamos
hablando de un sistema descentralizado.
Si fuera un sistema centralizado es como
que mucho, no importa porque es el
sistema centralizado el que pone sus
reglas. En cambio acá para poder tener
un sistema descentralizado y poder
verificarlo tiene que ser sí o sí
determinístico. Sí. Si no, no se puede
verificar.
Sí, es una cuestión matemática, lógica,
por así decirlo.
Entonces, ¿qué es la EBM? Sí, acá dice,
es una computadora virtual distribuida.
Nosotros ya vimos cómo está formada y
vimos que está distribuida porque está
en cada uno de los nodos. Cada uno de
esos nodos tiene hay una que se ejecuta.
Sí.
A ver si
no está bien. Después si tengo tiempo
les muestro un poco de de una EBM, pero
bueno, no me quiero pasar con eso.
Eh, bien, como dice acá, corre en todos
los nodos, ¿sí? Y en todos los nodos
corre de la misma forma, por lo tanto
tiene el mismo protocolo, usa el mismo
consenso. Sí, las propiedades es
determinística, como lo venimos diciendo
ya hace rato,
es ailada, tipo un sandbox, ¿sí? ¿Por
qué? Porque cada uno tiene su propio
EBM, ejecuta su código y una vez que
llegamos a ese cambio de estado y y lo
quiere escribir en la blockchain, ¿sí?
Eso lo vuelve a ejecutar los validadores
y se vuelven vuelven a fijar que
realmente de lo que está diciendo que
da, ¿sí? que no está dando otra cosa.
Sí, por eso que se ejecutan como si
fueran en compartimentos separados, ¿no?
En este sandbox,
incluso si es un proceso de lectura, si
habíamos dicho que también tienen que
ejecutarse, necesita cómputo, entonces
ese esa EBM dentro del nodo va a estar
ejecutando ese proceso de lectura, pero
ese proceso de lectura no necesita
cambiar un estado, ¿no? Porque es
justamente lectura. La diferencia entre
un proceso de escritura y un proceso de
lectura es eso, ¿sí? el tema de cambiar
o no cambiar un estado. Si se cambia un
estado, si pasa de un estado uno a un
estado dos a través de una transacción,
¿sí?, eso es un proceso de escritura.
Sí, hay una transacción, es un proceso
de escritura. Ahora, no existe una
transacción, sino que yo quiero leer
algo nada más. Entonces, voy a mandar
una solicitud. Sí. Y en esa solicitud
directamente la máquina virtual, el nodo
ese va a ejecutar las cosas con sus
datos que los tiene ya, sus datos
previos, va a ejecutar la función que
tenga que ejecutar y me va a devolver
los datos sin tener que hacer un
broadcast de eso, si sin tener que
mandar los demás nodos. ¿Por qué? porque
no necesita cambiar ningún estado, por
lo tanto directamente te va a dar el
resultado. Y como esa funciona igual en
todas las máquinas, ese valor si vos lo
leés en un nodo, tiene que ser
exactamente lo mismo que si lo lees en
otro nodo. Sí, obviamente si hubiera un
nodo adulterado y vos lo llamaras, ese
nodo podría devolverte cualquier cosa.
Sí,
pero bueno, generalmente los nodos que
vos estás llamando no están adulterados.
¿Por qué? Porque son los mismos nodos
que se utiliza para escritura. ¿Qué
utilizan para lectura? Los tiempos en
los que no está escribiendo, sí lo
utilizan para leer. Ahora, ¿qué es lo
que sucede si yo tengo que hacer un
cómputo muy complejo? Por ejemplo, le
pongo un sistema de redes neuronales.
Ahí sí.
Alguien que pueda responder eso. ¿Qué
pasa si yo pongo un conjunto de redes
neuronales en la para que me dé un
proceso de lectura
o escritura incluso también?
Pero vos, ¿por qué querés hacer eso?
Porque es una máquina touring complete y
yo si tengo los recursos puedo hacer lo
que yo quiera, básicamente si quiero
hacer una inteligencia artificial, por
ejemplo, en blockchain.
Bueno, pero tenés un tema de gas y un
tema de cóputo que no poder, que no es
infinito.
Exacto. O sea, si yo voy a escribirlo,
obviamente tengo que pagar gas por eso,
¿no? Y ese gas me va a costar. ¿Qué es
lo que pasa si tengo que hacer un
proceso de lectura en el cual no tengo
que pagar gas? ¿Por qué yo no puedo
hacer una lectura de una red neuronal
que ya esté hecha? agarro red neuronal,
la pongo ya escrita y leo.
¿Por qué no podría hacer eso?
que los nodos te rate limiteen.
Exacto. Ahí como dice los nodos te rate
limitean, ¿no? Eh, te relimitan
básicamente. Y sí, ¿por qué? ¿Qué es lo
que sucede? Si vos vas a hacer un
cálculo que es muy complejo,
lo que va a pasar de cierta forma en el
nodo es que, bueno, está bien, vos estás
en un proceso de lectura, es la lectura
no te va a cobrar gas, ¿sí? Porque no lo
va a tener que hacer un broadcast, ¿sí?
Entonces, únicamente va a ejecutarlo y
te va a devolver resultado. Pero si ese
ese ejecutarlo le toma mucho tiempo y te
lo va a cortar, sí, te lo va a cortar y
te va a decir, "Okay, revertió." Sí, no
le va a importar darte el resultado
porque no lo estás pagando por eso. Te
va a decir, "No, ¿sabes qué? Revirtió.
Sí." Y no te va a devolver nada.
¿A qué voy con esto? Bueno, estamos
hablando de algo así como muy grande,
por eso dije ras neuronal y todo eso,
pero podemos decir algo mucho más chico.
Si ustedes, por ejemplo, tienen un array
si en el cual ustedes le van agregando
datos y después tiene una función que
devuelve ese arrey. Sí, no va a ser lo
mismo si tiene si en el array tiene 10
posiciones
que se las va a poder devolver muy fácil
seguramente que si tiene un millón de
posiciones.
Sí, si tiene un millón de posiciones y
vas a tener que hacer muchos cálculos
para devolvérselo.
¿Y qué es lo que va a pasar? Y bueno,
vos vas a pedir ese millón de posiciones
y no te lo va a poder devolver,
por lo tanto, te va a revertir y no te
va a volver ninguno. No es que te
devuelve, hasta acá llegué, toma esto,
no. Acuérdense que esto o se ejecuta o
no se ejecuta. Por lo tanto, se quedó en
el 999, 1999 procesando y no te devolvía
no te devolvió nada. Sí, es lo mismo que
se había quedado en el primero,
se entiende
y hablo de una ley porque sí, claro, eso
yo como programándolos quiere decir que
si no tengo una estructura de
programación eh optimizada, llámese if
anidados, sistemas de que no haga
trabajo dos o tres veces, prácticamente
estoy afuera del de la red, o sea, de
los nodos. prácticamente eso me
condiciona a que tengo que tener una una
programación muy depurada, muy
optimizada para consumir menos gas y que
no estar, digamos, eh lejos de los
demás, porque los demás sí van a tener
con experiencia una red, una una
programación más fina, ¿se entiende?
Sí, lógico. Vas a tener que tener una
programación fina que primero se enfoque
en optimizarle gas para poder devolverte
la mayor cantidad de cosas posibles. Sí,
por un lado. Sí. No, únicamente para que
te cobre menos, si una una función
lectura capaz que no te cobra, pero sí
vas a tener que optimizarla para que te
pueda devolver la mayor cantidad de
cosas posibles. Sí. Y por el otro lado
también vas a tener que tener mecanismos
para solventar este tipo de cosas.
Porque yo dije, por ejemplo, un rey.
¿Por qué dije un rey? Porque básicamente
vos cuando una rey dinámica no sabes
nunca cuántos datos vas a tener adentro.
¿Sí? Entonces, si vos tenés 10 datos,
tenés un array fijo que dice, "Tenés 10
datos, listo, no hay problema. sabés
cuántos datos vas a tener, puedes hacer
un cálculo y fijarte si realmente eso va
a funcionar o no va a funcionar. Ahora,
si tienes una red dinámica en el cual se
van agregando eh con el tiempo y eso en
algún momento te va a dejar de funcionar
y va a ser como si alguien te hiciera un
ataque de OS, pero te lo hiciste vos
mismo el ataque de OS, ¿me entiendes?
Claro, vos cuando dimensionas la rey,
vos le decís cuánto va a ser esa tablet,
esa matriz de cuánto por cuánto.
Claro.
Eh, claro, pero con las dinámicas van
creciendo y vos tenés razón. Entonces
sí, todo apunta a eso. Tenés que ser muy
fino, tenéis saber muy bien lo que va a
entrar y muy bien lo que vas a devolver.
Claro. ¿Cómo podrías llegar a eh
a prediseñar eso? Y bueno, vos podrías
llegar a decir, "Okay, yo sé que esto en
un futuro me va a pasar." Sí. Entonces,
acuérdense que los contratos aparte son
eh inmutables, ¿no? O sea, yo una vez
que lo programo lo mandé y ya está, no
lo puedo modificar. Entonces, ¿qué es lo
que pasa? Si yo mandé para que me
devuelva todo el rey y bueno, mientras
tengo 10 personas, 20 personas, esto me
va a funcionar. Una vez que llego a
tener un millón de usuarios, dejó de
funcionar y se me rompió el contrato.
Sí, se me rompió el contrato con el
millón de usuarios ahí adentro, lo cual
es gravísimo, ¿no? Entonces, ¿qué es lo
que tengo que tener yo? Esa pervicidad
decir, "Okay, esto cuando escale va a
romperse, entonces, ¿cómo lo tengo que
solventar?" Y bueno, capaz que lo puedo
paginar, ¿sí? y decirle, "Okay, le mando
un parámetro que me diga, bueno,
devolverme los primeros 10 valores,
después devolverme los segundos 10,
terceros 10 y así sucesivamente. Y
después yo afuera puedo agarrar, empezar
a juntarlo, hacer varios llamados, ¿no?
Juntarlos todos y armarme la tablita del
millón de valores eh, off chain. Sí,
eso podría ser una forma.
Acá María pregunta, "¿Y cómo sabés cuál
es el volumen límite de lectura de datos
en la EM?" No es que exista un valor
límite en en la lectura de datos de la
EM, sino que justamente esto del gas.
Sí, como les decía, eh cuando ustedes
ejecutan algo y seguramente les va a dar
un límite de gas para el cual ustedes
puedan ustedes puedan ejecutar. ¿Qué es
lo que sucede cuando es una operación de
lectura? Ese gas no se los cobran. Por
tanto, ustedes no necesitan tener gas.
Pero sí se los va a ir descontando y una
vez que eso llega a cero, sí, eso
revierte. Yo, por ejemplo, te doy 30,000
unidades de gas para ejecutar esto y
bueno, hiciste una adición, habíamos
visto la adición, eran tres unidades de
gas. Bueno, ya no tenés 30, ahora tenés
29,997.
Si después hiciste otra cuenta y bueno,
se te va restando. Una vez que eso llegó
a cero, revirtió. Sí. Por lo tanto,
depende como vos programes el código,
¿sí? cómo qué también lo optimizaste,
vas a poder tener más o menos cantidad
de datos que puedas llegar a obtener o
enviar también, ¿no?
Miren, les cuento una cosa. Por ejemplo,
yo el año pasado tuve que hacer una
aplicación en la cual iba a tener
alrededor de 4 millones de transacciones
eh por día, ¿sí? O sea, estaba
prendiendo para muchas transacciones.
¿Qué es lo que sucede con esas
transacciones? Y bueno, capaz que cada
transacción costaba menos de un centavo,
pero ¿qué es lo que sucede al
multiplicar esa menos de un centavo por
4 millones de de transacciones? Y bueno,
eran un montón de dólares por día que
involucraban eso. Entonces, ¿cuál fue mi
tarea? Bueno, agarrar ese código y hacer
que esas transacciones sean lo más
baratas posible. ¿Por qué? Porque bajas
un 50% por más que la transacción te
cueste 0.00 00 un centavo y bueno, ya
bajaron 50% en 4 millones de
transacciones. Es un es es bastante,
¿no? ¿Cómo podía hacer eso? Y bueno,
esas 4 millones de transacciones en vez
de mandarlas una por una, ¿sí? Porque
cuando vos la mandas una por una, te
cobran siempre una base más después lo
que vos consumís es mandarla a varias
juntas. Es decir, okay, esas 4,000,000
no las mando 4,000,000 por separado,
porque si no voy a estar multiplicando
21,000 por 4,0000. Sí, eso de ahí me lo
eh me lo ahorro ha mandando las 4
millones de una. Sí. Ahora, ¿qué es lo
que sucede? Mandar 4 millones de una no
se puede porque pasaría esto que les
estaba comentando, ¿no? Revertiría por
la cantidad de gas, ¿no? O sea, hay una
cantidad de gas límite. Yo no puedo
superar esa cantidad de gas límite. Sí.
Entonces, revertiría. ¿Cómo hago? Bueno,
tengo que hacer la cosa que sea más
optimizada para poder mandar la mayor
cantidad al mismo tiempo. Sí. Capaz que
si no lo hago optimizado puedo mandar 50
y si lo hago optimizado y puedo mandar
100. Sí. Por lo tanto, ya estoy
reduciendo a la mitad del costo. Sí.
¿Cómo hice para optimizarlo? Bueno,
básicamente el sistema terminó siendo
programado
en Assembler, ¿no?
Claro, te iba a decir eso porque eso me
hace recordar cuando vos tenés datos
como los seriales, ¿viste? de los
sensores
y que viste que te tien te manda mucha
cantidad de datos los sensores, entonces
bueno, podés
meter todo porque
tenés que tener un procesamiento enorme.
Acá es algo parecido.
Entonces, vos podés mandar un como una
longitud de datos donde en esa longitud
de datos podés mandar varias como un
serial varias transacciones.
Claro. Mm.
Sí, exactamente. Entonces, tenés que
optimizarlo de la forma tal en el cual
puedas mandar mayor cantidad y para
hacer mayor cantidad y bueno, tiene que
estar lo más optimizado a nivel de gas
el código. Sí. Y bueno, eh, en ese
momento era muy importante poder
optimizar eso porque hacer eso te
ahorraba miles de dólares por día. Sí.
Ahora, obviamente que si voy a optimizar
esto que cuesta un centavo, para que
ahora cueste 0,5 centavos y voy a tener
10 transacciones por día, ¿cuántas horas
me conviene tener un ingeniero ahí
trabajando? No me va a costar más las
horas del ingeniero optimizándolo que eh
lo que me pueda llegar a ahorrar, ¿no?
Entonces, también hay que saber cuándo
optimizar y cuándo no. Sí. ¿Qué procesos
optimizar, qué procesos no optimizar?
Sí,
sí, me voy a ahorrar
y voy a tener un ingeniero trabajando un
mes. Sí. Y yo te diría no lo optimices,
dejarlo así.
Sí.
Ahora, si te vas a ahorrar $10,000 por
día
y bueno, te conviene tener un ingeniero
trabajando dos semanas para que lo
optimice.
Y bueno, en ese caso puntual que les
digo, mi solución fue básicamente
escribir el programa prácticamente en
assembler, ¿no?
Vamos a usar Solidity,
siempre vamos a tener que escribir el
programa de assembly y no, la verdad que
no es aconsejable escribir el programa
de assembly. Sí, puedes tener muchos
errores que Solid ya te los cubre, ¿no?
Pero bueno, ese era un caso muy puntual
que teníamos que optimizarlo lo más
posible.
[resoplido]
Pero vos después de la Sem lo compilaste
a Solidity.
No, no, no.
Vos entonces llamaste dentro de Solidity
a la Assembler,
¿no? Directamente. Acuérdense que el
Solidity, sí, como cualquier otro
lenguaje, es un lenguaje para que un
humano lo pueda leer. Acuérdense que la
computadora trabaja con Bits.
Ah, está bien. Vos.
Bueno, entonces tenés que trabajaste
directamente sobre el Claro, no entiendo
con qué plataforma llegas desde
Assembler al programa de porque vos
estás usando la EBM, si no estás
salteando la EBM.
No, no estás salteando la EBM. La EBM
funciona con bits.
Si ustedes en la EBM, por ejemplo, como
yo le dije, mandan uno, después mandan
dos y hacen 01, ¿si? hace hacen ese
procedimiento y eso le va a dar la suma.
O sea, que yo en la parte de texto ahí
de donde está el contrato, si escribo en
Assembler, lo toma.
Ustedes pueden escribir el contrato en
Assembler. Sí, pueden incluso agarrar y
escribir los codos directamente.
Ah, está bien.
Más adelante si tenemos tiempo.
O sea, que puedo poner los valores en
hexadecimal, así ya lo toma para no
poner en binario, que es más difícil.
Sí, sí. Acuérdense que la EVM lo que va
a estar ejecutando son bits. ¿Sí? ¿Qué
es lo que hace ese solity? Bueno, vos
tenés un compilador que va a hacer que
ese soliti se transforme en bits, pero
lo que se va a terminar grabando son
esos bits.
¿Se entiende?
Cuando yo tengo un un programa en C en
la máquina también la computadora no lee
C. Yo voy a tener un compilador. Si ese
compilador va a transformar ese C en
el los bits correspondientes para que lo
ejecute la máquina. Sí
se entienden.
Bien, habiendo dicho eso, ya creo que es
hora de ir al recreo. Les voy a pasar de
vuelta acá el presentismo
para que ustedes lo tengan y puedan dar
el presente mientras tanto.
Y volvemos y 18 más o menos.
Vamos. 5 minutitos recreo.
Voy a parar
esto.
