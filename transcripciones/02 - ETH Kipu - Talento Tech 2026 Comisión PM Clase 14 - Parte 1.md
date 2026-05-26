# 02/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 14 - Parte 1

- **Video:** [https://www.youtube.com/watch?v=_axRGryI_Fk](https://www.youtube.com/watch?v=_axRGryI_Fk)
- **ID:** `_axRGryI_Fk`
- **Canal:** ETH KIPU
- **Fecha:** 2026-05-13
- **Duración:** 1:10:05

---

## Transcripción

Bien, como les comentaba, sí, acuérdense
que acá tenemos nuestro el pad nosotros
de que usamos siempre la clase pasada
que les di o la anterior, cuando le di
la parte de lo de los grupos, acá le
puse el doc donde ustedes pueden abrirlo
y fijarse los grupos que hay para poder
agregarse. Esto es una cosa totalmente
informal. Después se van a tener que
inscribir en una aprendizia que le vamos
a pasar, pero ustedes acá pueden decir,
"Bueno, okay, bueno, el equipo uno eh,
no sé, está formado por estas personas,
bueno, tiene tres integrantes y quiero
quiero agregarme." Bueno, puedo
contactar a la gente de acá y agregarme.
El grupo dos, lo mismo. Fíjense que hay
dos personas, hasta cuatro pueden ser. Y
bueno, entonces se pone ir agregando ahí
hablando si se fija en el proyecto, si
les gusta, si no tienen ningún proyecto,
capaz que proponer alguno, ¿no? Y que se
vayan un poco organizando. Básicamente
porque dije, si se empiezan a organizar
por Discord, bueno, capaz que puedes
hacer un looc como que ya estás un
poquito más ordenado porque es
únicamente para eso, ¿no?
Y después, bueno, como le decía, tener
la planilla para organizarse
para inscribirse,
ser una planilla en el cual una persona
en el grupo va a tener que escribir el
nombre de los todos los integrantes,
¿no? Acuérdense que los grupos pueden ir
de uno a cuatro personas.
Hay uno con el micrófono abierto.
Bien, entonces los grupos va a ir de una
a cuatro personas y bueno, eh
organícense, vean cómo cómo se meten,
cuáles qué temas les gusta y bueno,
a ver a qué proyecto llegamos.
Eh, seguramente la clase que viene, el
jueves se le va a estar dando la guía,
bueno, no la guía, sino el formulario
para poder inscribirse.
Si eso estuvimos hablando con Seba
y
bueno, eso
yendo un poco a lo que habíamos visto la
clase pasada, sí, nosotros habíamos
estado viendo esta parte de fundamentos
estuvimos viendo bastante a fondo. Sí.
Bueno, tema de atomicidad,
cómo se la estructura del del contrato,
¿no? Cómo se escribe un contrato, las
variables de estado, ¿no? Que eran las
partes que se guardan en el storage, el
constructor, ¿no?, que dijimos que
únicamente estaba visible mientras
teníamos la función.
Eh, digamos, cuando el contrato se
estaba creando, una vez que se crea,
este constructor desaparece, no existe
más, no lo pudo llamar de ninguna forma.
Eh, las funciones, ¿no?, que teníamos
tanto funciones de escritura como de
lectura. habíamos visto que podían ser
de tipo publical
o internal.
Eh, habíamos visto que tenía diferentes
costos según la persistencia también el
tema de la memoria no era no era lo
mismo escribir una variable de estado
que escribir una variable de memoria.
Sí, uno era persistente y la otra no.
Pero también una costaba más que la
otra.
Ahí hemos visto que había diferentes
tipos básicos de datos como el u, el
int, el buiano, los addresses, los
strings y los bytes. Si habíamos visto,
por ejemplo, que solity es un lenguaje
fuertemente tipado y que tanto el bytes
como string son iguales, ¿no? Lo que
pasa que al ser fuertemente tipado no me
deja igualarlos, sino que primero tengo
que castear.
Habíamos dicho que el Bull también era
un un 8 en el sentido de que capaz que
acá no tampoco me dejaba castearlo, pero
en el sentido de que ese bull en
realidad va a tener 8 bits, no va a ser
un solo bit, como uno podría suponer que
una variable de 256 bits pueda tener 256
bull y no va a pasar eso, sí, porque
cada bull va a tener 8 bits, que es la
mínima unidad en la que cual podemos eh
en el cual podemos tener información. Si
nosotros queremos
bajarlo más todavía ese proceso de
ventaneo que nosotros mostrábamos que
funcionaba, eh, cómo funcionaba en en la
EBM, tendremos que hacerlo nosotros,
¿no? y hacerlo nosotros obviamente
involucraría más gas. Por lo tanto,
tampoco nos conviene hacerlo,
eh, salvo que sea un proceso de que que
digo, bueno, estoy trayendo un montón de
información toda junta. Sí, yo tengo 256
bits, que si lo tuviera que tener 256
bits de tipo buliano, uno por uno, desde
la máquina de estado, ¿sí?, de nuestro
digamos desde el estado que está en el
storage y lo tenía que traer uno por
uno, estaría leyendo 256 posiciones de
memoria en storage, que es carísimo
leer. Si. Entonces, bueno, si todo eso
lo puedo juntar capaz en un solo wind,
me bajo ese wind a a memoria y después
lo trabajo ahí en memoria y capaz que me
puede salir más barato. Sí.
Entonces, son todo ese tipo de cosas que
nosotros tenemos que empezar a ver, ¿no?
Es decir, capaz que si estoy trayendo
una una variable, pagar unos centavitos
más o unos centavitos menos, no pasa
nada si yo estoy haciendo algo muy
grande y puede tener una
puede tener una diferencia, ¿no? Puede
haber una diferencia y no únicamente en
la diferencia está en decir, bueno, me
cuesta más barato. Si pues yo puedo
decir, "Okay, estoy utilizata tipo Base,
eh, Polygon o o cualquier EBM que que
ustedes puedan considerar barata y digo,
okay, ahorrar gas realmente me sirve
para algo y bueno, capaz que me estoy
ahorrando un centavo o dos centavos,
capaz que no es mucho y ustedes dicen,
¿para qué?"
Ahora, si ustedes quieren poder leer,
por ejemplo, listas más grandes para
poder eh, por ejemplo, si usted tiene un
batch que tienen que mandar un montón de
cosas desde un backend hacia un
hacia la blockchain, ¿sí? Y acuérdense
que la blockchain tarda tiempo en
responder, no es como si fuera una base
de datos en la cual ustedes al
milisegundo, en un par de milisegundos
obtienen la respuesta, sino que puede
tardar segundos inclusive 30 segundos,
incluso más, ¿no? Entonces si ustedes
eso lo pueden mandar en batch y decir,
en vez de de tener 10,000 transacciones,
esas 10,000 transacciones las pueden
meter todas juntas en una sola. Sí.
Entonces van a ahorrar un montón de
tiempo, pero imagínense si cada una de
esas transacciones le tarda 30 segundos.
10,000 por 30 y estamos hablando de
300,000 segundos. No, si hacen la cuenta
de eso, no sé ni cuánto sea, pero es
mucho.
Vamos a verlo.
Eh, serían, dijimos, 30 segundos cada
una. Bueno, 30 segundos capaz que es
demasiado. Podamos poner quizás 12
segundos, creo que tarda Ethereum. Sí. Y
tenemos 10,000 transacciones.
Y esto es algo que me pasó, les digo,
así que no es algo tan tirado de los
pelos.
que de hecho vamos a poner los números
reales que me pasaron. Eh eh creo que
fue, no sé si fue el año pasado o hace
dos años, más o menos habíamos hecho una
aplicación
que se llamaba Finger Pump y básicamente
vos podías e
digamos vos tenías que hacer una prueba
de de tipeo y según tu accuracy en lo
que tipeabas y la velocidad con que lo
hacías, obtenías ciertos puntos que te
permitían comprar o no comprar un NFTs.
Si ustedes ya saben lo que es un NFT,
podías comprar eso y básicamente
nosotros para para comprarlo teníamos e
teníamos una billetera atrás que iba
dándole eh dándole las cosas a la gente,
¿sí? Como para evitar que la gente pague
las transacciones y ese tipo de cosas. Y
¿qué es lo que pasó? nos fuimos a dormir
la noche del lanzamiento. Sí, lo
lanzamos y dijimos, "Bueno, vamos a
dormir mañana seguimos trabajando. ¿Qué
qué va a pasar? ¿Cuántos usuarios vamos
a poder tener al día siguiente?" Bueno,
cuando levantamos teníamos 14,000
transacciones,
¿sí? Eh, o sea, 14,000 usuarios, mejor
dicho, teníamos más transacciones.
Eh, obviamente uno dice un happy
problem, pero bueno, ¿qué es lo que
pasó? teníamos una cola. Sí, porque
acuérdense que cada uno de estos tarda
una cierta cantidad de tiempo. Poner 30
segundos. Sí, como decía, bueno, 30
segundos no, pero 12 segundos. Sí. Y si
ustedes tienen 14,000 personas,
¿sí? Esto multiplicado por 12 segundos.
Acá estoy poniendo más 14,000
por 12 segundos. Sí, estamos hablando de
168,000 segundos. Esto lo divimos por 60
para poner minutos y lo dimos en 60 para
ponerlos en hora.
Iba a tardar 46 horas en procesarse toda
esa cola que teníamos de usuarios, ¿no?
Y obviamente eso son casi dos días, ¿sí?
¿Qué es lo que pasó? Si vos haces una
transacción, no querés esperar 2 días
para que te llegue lo que pediste, ¿no?
Obviamente si esto es una base de datos,
esto tarda milisegundos y bueno, es
mucho más fácil, ¿no? En todo caso
compras más
cantidad o no y y por eso procesarlo más
rápido, más recursos, pero bueno, acá no
puedes comprar más recursos, es lo que
hay, básicamente.
Entonces, en vez de tardar dos días,
¿qué era lo que qué fue lo que hicimos?
Agarramos y en vez de mandar 14000
transacciones una por una para esperar 2
segundos a que se hiciera y que se haga
la otra. ¿Por qué es esto? Porque encima
acuérdense que ustedes tienen un en su
billetera, ¿no? Entonces, si ustedes
mandan una transacción desde una
billetera,
la siguiente transacción no se puede
ejecutar hasta que no se ejecutó la
primera. Sí, como que todo tiene que ser
secuencial. Sí, no podemos ejecutar
todas las transacciones juntas, salvo
que la mandemos en batch. ¿Cómo hacemos
para mandarla en batch? Bueno, hacemos
un contrato básicamente que le decimos
en vez de mandarle una sola transacción,
le mandamos un array de las cosas que
queremos hacer y el contrato va haciendo
un buclecito for para hacer cada una de
las transacciones. ¿Sí? Entonces con eso
nosotros podemos decir, "Okay, les
mandamos las 14,000 transacciones y le
sacamos todas en vez de en 46 horas la
sacamos en 12 segundos." Sí, lo cual es
mucho mejor, ¿no? Y después ya liberamos
el que para empezar a hacerlo. ¿Qué es
lo que pasa con eso? Si ustedes quieren
hacer eso y tienen ahí 14,000
transacciones,
van a tener otro problema. Acuérdense
que yo les dije que cuando ustedes eh
están realizando alguna
alguna transacción, ¿sí? En el bloque
ustedes tienen un límite de gas máximo
que el bloque puede eh recibir. Sí, más
allá de ese límite no puede. ¿Qué es lo
que pasa si vos la cantidad de gas que
necesitas para ejecutar esas 14,000
transacciones se pasa del límite del
bloque? ¿Alguna idea? ¿Qué sería lo que
pasaría ahí?
Se cancela.
Sí, claro. Se va a ejecutar.
Exacto. Revierte, ¿no? Y ninguna se
ejecuta. Y es como yo mando todo, no se
ejecuta nada. Vuelvo a mandar todo, no
se ejecuta nada. Vuelvo a mandar todo,
no se ejecuta nada. No funciona así. Sí.
Entonces, ¿qué tenemos que hacer? Bueno,
empezamos a dividirlo. Okay. En vez de
14,000, empezamos a mandar de 7000. Sí,
mandamos dos de siete, también se
cancela. Okay. Bueno, 3 3,5K, ¿no? Así
hasta que llega un momento que pasa,
¿no? Capaz que 500, sí, 400, depende qué
tan bien diseñado está es que se va a
poder hacer. Si vos,
digamos, no tenés en cuenta bien el tema
del uso del gas y todo eso y bueno,
capaz que podés mandar de a 50, ¿sí? Y
ahora cuando empezas a tener bien en
cuenta el uso de gas, podés optimizar
todo eso y capaz que en vez de mandar de
50 puedes mandar de 200. Entonces, capaz
que no es más dinero, sí, lo que vos
estás ahorrando, sino tiempo. Sí, estás
poniendo hacer las cosas más rápido, más
escalado para tus usuarios. Sí.
Entonces piensen en el gas, no
únicamente con el tema de decir, bueno,
me estoy ahorrando gas para ganar
tiempo. También pueden pensarlo cuando
están utilizando este tipo de baches y
cosas. Estoy ahorrando gas para ganar
escalamiento, ¿no? No sé si
escalamiento, escalar, no puedo decir,
ob tengo más usuarios.
Una consulta respecto a esto, cuando
comentas de que iban probando eh digamos
primero el bloque de 14,000, después de
7000, de 3500, digamos, a modo de
ejemplo, eh todo eso de alguna manera
consume gas, es decir, o sea, esas
pruebas te están consumiendo
eh digamos el gas o
no es así. Sí, igual no es tan así como,
o sea, yo estoy contando un poco con los
dedos. Obviamente esto puedes hacer un,
digamos, puedes eh simular a ver cuánto
gas te va a ocupar, digamos, una
transacción y en base a eso hacerlo,
¿no? E intentar optimizarlo en ese
punto. Vos podés hacer eh hacer un
coverage, por ejemplo, de gas, a ver qué
funciones te ocupan más, qué funciones
te ocupan menos, dónde están los puntos,
dónde puedes optimizar, eh etcétera. Sí.
Eh, no están así como vamos haciendo por
los dedos, pero sí, básicamente es eso,
decir, "Okay, bueno, ¿cuánto puedo
mandar? Puedo mandar las 14,000 y no no
se va a poder mandar 14,000. Pero si
mando las 7,000 y ya en vez de hacerlo
en 48 horas o 46 horas, lo hago en 30
segundos. Y si mando, bueno, 3,5 y
bueno, capaz que en vez de hacerlo en 30
segundos lo hago en un minuto, pero
tampoco tardo 46 horas. Igualmente
estamos bajando mucho el tiempo. Sí. Y
después seguimos haciendo el match para
que esto no pase, ¿no? Y no se nos junte
como se nos puede juntar durante la
noche que estuvimos durmiendo 14,000
transacciones. ¿Se entienden?
Sí. Sí, perfecto.
Porque esto lo que pasó fue que la gente
empezó a mandar, empezó a mandar, empezó
a mandar y los primeros le fue llegando,
pero después se fue juntando, juntando y
era como va más rápido la llenada de la
cola que la extracción de la cola. Sí.
Y como estamos hablando de concurrencia,
si acá tenemos una concurrencia que es
justamente el tema del NS, yo no puedo
mandar un antes de que el otro NS haya
realizado. En realidad sí podría, pero
yo debería llevar una cuenta aparte
diciendo, "Okay, el último N que utilicé
fue uno, entonces la siguiente la voy a
mandar con dos." ¿Por qué? Porque hasta
que no se hizo esa transacción uno, si
yo leo de la blockchain, ¿cuál es el
siguiente no que tengo que tomar? me va
a decir uno. Si lo leo de vuelta me va a
decir uno y voy a empezar a mandar todas
un uno y todas estas van a salir
fallidas, fallidas fallidas, salvo la
primera, ¿no? Y después cuando se hace
la otra, va a ser la dos y va a empezar
el resto. Pero, ¿qué es lo que pasa si
yo ahí no hago una cola, ¿sí?, para
poder después irla ejecutando una por
una y voy a perder todas esas
transacciones, ¿sí? Van a quedar en la
nada. Por eso ho cola para manejar el
tema de las concurrencias y después
irlas ejecutando una por una. Y
obviamente si yo esas una por una puedo
agarrar dees y mandarlas todas juntas y
obviamente optimizo no únicamente el
tema del dinero, que obviamente también
optimizo el tema de dinero, pero capaz
que uno puede decir el dinero acá no me
importa porque en vez de gastar
$ por mes gasto 4 y bueno, d más d menos
no va a ser más pobre, más rico nadie y
si digamos me tomo más horas de
ingeniería, sí, pero sí vas a poder
hacer más rápido o para los recursos
para tus usuarios, ¿no? Entonces, si vos
estás planeando tener 10 usuarios, no
pasa nada. Si estás planeando tener
cientos de miles de usuarios y bueno,
vas a querer hacer las cosas eh rápidas,
¿no? Para que esto funcione para todos.
A ver, eh, todo bien hasta ahí. Vamos.
Bien.
Okay. Bueno, eso un poquito, ¿no?
Entonces, bueno, tengan en cuenta eso.
Tengan en cuenta que el gas es
importante para dos temas particulares.
Ustedes sabrán cuándo utilizarlo y
cuándo no. Cuando hagan sus proyectos.
Bueno, fijarse. Bueno, acá tengo que
optimizarlo por esto, esto y esto y acá
capaz optimizarlo la verdad que es una
pérdida de recursos, ¿no?
Eso son cosas que ustedes tienen que
detectar para poder saber dónde
optimizar y dónde no. O sea, no hacer
sobre ingeniería, pero sí hacer buena
ingeniería, ¿no?
Visibilidad y acceso, sí, el tema
public, private internal, external, eso
también lo vimos. Tipo en función y
consumo de gas, funciones de escritura,
que dijimos que estas sí consumen gas.
Nuestras funciones de lectura, ¿no?
Vimos que había dos funciones de
lectura, view y pure, ¿no? Las view eran
las que eran eh podían leer de las
variables de estado, mientras que las
fewer eran puras, o sea, no leían de de
las variables estados. Podían ser como
funciones de librería, por ejemplo, para
una suma de dos números y que te
devuelva el resultado.
Teníamos el tema de, bueno, un ejemplo
práctico. Acá teníamos el storage, ¿no?
Un mensaje que podíamos guardarla.
Hacíamos un setter y un getter. el
mensaje estamos como Pablo y por lo
tanto nos generaba ya un getter con el
mismo nombre de la variable que era este
message y por eso nosotros veíamos en el
AVI,
sí, que teníamos tres funciones con este
código cuando acá veíamos solo dos. ¿Por
qué? Porque la tercer función estaba
acá.
Si nosotros lo poníamos en private, ahí
desaparecía esa tercer función. Dijimos
que incluso cuando nosotros tenemos un
código muy grande en la cual eh ya
tenemos un get acá y ese código no está
entrando, eh no estamos pudiendo
despollar porque se pasa en la cantidad
de bytes que podemos desemprollar. Y
bueno, a veces hay que hacer estos
retoques, ¿no? Decir, "Okay, bueno, esta
función la pongo como private, total acá
ya tengo el getter, ¿no? O sacar el
getter y dejarlo como public, ¿no? Para
que vamos a escribirlo dos veces.
Depende como lo quieran usar ustedes. Ya
habíamos dicho que las funciones private
no eran realmente, digamos, las
funciones, digo, los variables private
no eran realmente privadas. Sí, yo podía
leer esas esas variables desde afuera,
eh, sin importar que me pongan el primer
acá, ¿no? ¿Por qué? porque yo leía el
slot del contrato, ¿no? Acá esto está en
el slot número uno, por ejemplo.
Eh, bueno, acá el tema de la variable de
memoria o la variable en storage, si el
tema, bueno, resumen, estado,
visibilidad, lectura, escritura o en la
guía práctica, vimos el tema de remix,
hicimos un ejemplito y bueno, hasta ahí
estuvimos. Estamos hasta acá con este
resumen.
Sí. Okay.
Una cosita, porque ya que ahora vamos a
empezar a hablar más del tema de datos.
Sí,
acá tenemos un string publice. Nosotros
dijimos que acá estamos teniendo en en
Solity, básicamente, o no Solity, sino
la EM es una máquina de pila de 256
bits.
Cada slot. Sí. La información tiene 256
bits. Yo acá tengo un string.
Esta palabra message, ¿qué largo podría
tener para eh entrar en un string?
¿Conocen el código ASKI?
Sí, el código ASKI de los 256 bit.
Podemos tener 256, [carraspeo]
pero
el el string si vos lo ponés, no no no
aclarás el tamaño, por lo menos en C, en
C vos tenés que aclarar el tamaño del
string. Acá yo veo que vos lo podés
hacer libre, lo que te va a costar
después gas cuando lo vas a procesar o
puede hacer una extensión [carraspeo]
grande.
Claro, pero estamos viendo un poco el
tema del layout de de memoria. ¿Qué es
lo que va a pasar? Yo tengo un string
acá, como dijiste, no le estamos
poniendo tamaño, por lo tanto el string
puede ser de cualquier valor, pero si yo
digo en un slot de 256 bits, utilizando
el código aski, que cada letra tiene 8
bits, ¿cuántos e
cuántas cuántas letras puedes tener acá
en ese slot
y tener que considerar mayúscula y
minúscula?
Sí, es lo mismo. Son 8 bits. Serán 32
letras.
Claro, pues son 256 dividido 8, ¿verdad?
Son 32 letras.
32.
[carraspeo]
¿Qué pasa si ustedes van a Sority L, que
yo les pasé la otra vez, que es la
información oficial de Sority, le van a
decir, existen dos tipos de strings, un
short string y un long string. ¿Qué
significa esto? Bueno, el short string
básicamente es un string en el cual
todas las letras que vos pongas entran
en este slot, el slot cero. Sí, mientras
que el long string es un string que no
entra acá y tiene que buscar otra forma
para hacerlo. Sí, no importa cómo, pero
tiene que buscar otra forma. ¿Qué es lo
que pasa? Si ustedes leen la información
oficial, les van a decir ahí que no es
32, sino que es 31. ¿Por qué piensan que
puede ser 31 y no 32?
por el cero.
¿Qué es cero?
Un puntero,
algo así. Claro. Acá nosotros tenemos
que el 32, ¿sí? Básicamente es lo que
nos entra todo en el slot. Pero, ¿cómo
hacemos nosotros para indicarle si
estamos utilizando un short o un long
string
para decir si esto es un short o un
long? Bueno, necesitamos un byte para
decirle esto es un short o esto es un
long. Por lo tanto, ahí perdemos un byte
y podemos escribir hasta 31 letras. Si
escribimos 31 letras y el otro
básicamente nos indica si es un short o
un long. ¿Qué es lo que sucede? Si es un
short, las letras van todas acá en el
slot,
¿sí? O sea, yo pongo, "Hola, ¿cómo
estás?", por ejemplo, eso entra en 31
bits, en 31 bytes. Entonces, va acá. Si
yo me paso y pongo un texto muy largo,
por ejemplo, un un contrato legal, ¿no?
Como habíamos visto al principio que
decimos, "¿Qué pasa si guardamos un
contrato legal?" Ya eso es un long
string, no va a entrar en ese slot. Por
lo tanto, los primeros 31 bytes, ¿sí? Lo
que van a estar indicando es una
posición de memoria en donde va a estar
comenzando a escribirse ese texto, ¿no?
Y el otro B está congelado, eh, está
congelado la pantalla. Ah, hola, ¿me
escuchan ahí?
Sí, te escuchamos.
Se ve el pad nada más.
Ah,
a ver, voy a abrir un Paint. Ahí ven el
Paint.
No, no, la calculadora.
A ver, voy a voy a dejar de compartir.
Voy a volver a compartir.
Igual no estaba dibujando nada, estaba
mostrando el coso de equipo.
[carraspeo] Bien. ¿Ven mi pantalla
ahora?
Sí,
sí, ahora sí.
¿Ven el
Ahí? Sí,
sí vemos.
Bien, para que no se pierdan, yo lo que
estaba mostrando
era
esto. Sí,
eso de acá. String public message,
¿sí? Que está en en la en la guía en la
primera de del módulo 7.
¿Qué es lo que le estaba diciendo?
Bueno, si ustedes
tienen acá nuestra variable, nuestro
storage, ¿sí? Y tienen acá los
diferentes slots, ¿sí? En el primer slot
va a estar ese message. Pero, ¿qué es lo
que sucede? Si vos ponés 31 caracteres,
¿sí? Va a poder estar contenido acá.
Digo, "Ok, acá vamos a tener un hola,
¿cómo estás?"
Y vamos a dejar hola nada más para
hacerlo más fácil.
Y acá le vamos a poner un
byte, básicamente que nos va a estar
diciendo que ese byte esto es un short.
¿Sí? ¿Qué pasa si ahora el slot dos en
vez de poner un hola ponemos algo super
largo? Si por ejemplo un contrato legal,
como les decía, de tres páginas, ¿sí? Ya
no va a entrar entre ti un carácter y se
va a pasar. Entonces, ¿qué pasa? Bueno,
yo acá voy a indicar esto. En vez de
como un un
short, lo voy a indicar como un long.
Y acá en en esta parte de acá yo no voy
a poner el
yo no voy a poner el contrato, ¿sí? El
contrato legal. ¿Qué voy a hacer? Y
bueno, lo voy a poner en otro punto de
la memoria,
¿sí? Que va a estar apuntado por eso.
Un puntero.
Un puntero. Exacto. Acá tengo un
puntero. Poner que esto sería la
posición
cer.
Esto sería un este de acá sería
dos.
Este de acá sería tres
y este de acá sería cuatro.
¿Qué es lo que voy a tener ahí en en
esta posición? Y bueno, acá voy a tener
cuatro.
Sí, ¿por qué voy a estar apuntando
cuatro? Y mi contrato legal va a estar
acá.
Sí, acá vamos a tener mi contrato legal
o va a empezar mi contrato legal después
va a estar para abajo, ¿no? Contrato
legal
muy
largo.
Sí,
pero que vos tenés en los slot un slot
que es diferente al resto.
Claro, este slot me va a estar diciendo
en este slot como como acá tenemos una L
que es un long, ¿sí? te va a estar
diciendo, "No tengo la información acá
yo directa, sino que tengo un puntero en
donde va a estar la información."
¿Se entiende?
Sí, pero ese qué sería dónde estaría en
otro slot de la memoria. ¿En dónde?
El número cuatro, ¿qué es exactamente?
Claro. ¿Qué qué pila es, digamos? ¿Qué
está es la la cuatro?
El número cuatro es el slot de memoria
número cuatro. Este de acá. Este es el
cuatro. Este es el cinco. Seis y así
sucesivamente. No
está haciendo referencia a una posición
de memoria.
Exacto. Este cuánto es una posición de
memoria.
Es esta de acá. Sí, correcto. Pero,
¿cómo guarda ahí cuando está muy largo y
no entra en el
eh tiene 31 bytes para guardarlo. 31
bytes es muchísimo.
No existe una posición de memoria tan
grande como para no poder guardarlo.
O sea, vos decís que las tres páginas,
yo no me conviene poner un puntero, no
meterla al lado porque lo único que le
saqué es eh un byte para decir long o
short y no me conviene tengo que meter
un puntero para mandarlo a una dirección
de pila que tendría los 32 completo. Es
todo eso lo hago por un byte.
Con un byte vos le decís si es un short
o un long. Con los 31 bytes que le
quedan. Estos son 31 bytes. Le decís la
posición de memoria.
31 bytes. Estamos hablando. Fíjense que
eh el uno es básicamente 1 por 2. ¿Sí? Y
después lo otro, fíjense que tenemos eh
que cada 10, ¿sí?, o sea, y acá tenemos
30, lo está multiplicando por un K. Por
lo tanto, tenemos esto por un K, por un
K,
por un K, ¿no? Por todo estamos hablando
de acá tenemos megas y acá tenemos
gigas. Si por todo estamos hablando de 2
GB.
Acá estamos mapeando con esto, con esos
31 bytes, estamos mapeando 2 GB de
información, ¿se entiende? Y no es que
esto pueda tener 2 GB nada más, sino que
tenemos un mapeo de 2 GB. Después esto
va a ir para abajo indefinidamente, ¿se
entiende? Si vos querés tener más de 2
GB de información acá y bueno, ahí capaz
que puedes llegar a tener problemas,
¿sí? Pero bueno, 2 GB es un montón para
lo que es contratos, ¿no?
Entonces, cada posición, cada slot tiene
una capacidad mucho mayor. Tiene,
Discúpame porque no entendí.
Se va multiplicando el espacio.
Vamos multiplicando el espacio cada vez
que que avanzas
numéricamente dos tiene doble T1, tres
tiene doble T2. Así es.
espacio.
¿Cómo? ¿Cómo? ¿Cómo? Pablo no entendí
bien.
Eh, digo, va aumentando el espacio a
medida que vas bajando en las
posiciones. Eso es lo que
claro. Este sería el slot cero, el uno,
el dos. Sí, son a medida que vamos
bajando es un slot que va aumentando.
Acá yo lo que estoy diciendo que con 31
eh
con 31
bytes, digamos, puedes dirigir hasta 2
GB. Y qué es lo que sucede si vos acá
después tenés más de más cosas, bueno,
acá tenés 31 GB que puedes dirigir y acá
tenés otros 31 GB que podrías redirigir,
¿no? Entonces como que podés hacerlo
infinito prácticamente.
Ah, ahora te entendí. Claro, lo que pasa
es que yo puedo usar punteros para
ampliar la memoria. Eh, claro, te
entiendo, te entiendo.
Puedo hacer un árbol como un nido de
entre punteros y exposiciones y slots.
Ahora sí te entendí.
Exacto. Acá lo que estás haciendo es
directamente para agrandar vos 31 by que
puedes meter acá. Como no te entran los
31 by acá, tenés que agarrar poner un
puntero hacia dónde va a estar escrito.
¿Por qué? Porque acá en el punto dos
seguramente vas a tener otra variable.
Así que capaz que esa variable es un
número y dice, "Bueno, es
negrito, ¿no? Para que
no sé este número o no sé 2026 el año.
Tenemos puesto el año acá.
No, acá pusimos el saludo,
eh, un mensaje largo y acá el año.
Sí.
¿Qué es lo que sucede? Si vos te
pasarías de 31 bytes y empezas a
escribir acá abajo y sobrepisarías el
año. Por lo tanto, en vez de hacer eso,
lo que haces es te pone un puntero
a dónde va a empezar a escribirse
contiguamente, ¿no?
Y ese long tiene un límite máximo porque
si no, ¿cómo determinas que el puntero
apunta cuatro, posición de memoria
cuatro, arranca un slot 256 bits, pero
cuánto? ¿Cómo sabes qué tan largo va a
ser? O sea, ¿cuántas posiciones de
memoria va a tomar?
2 GB. hasta 2 GB puede tener 31 bytes.
Pero eso de 2 GB es que vos puedes
direccionar a una posición de memoria de
2 GB. Yo no te digo eso, está bien. Decí
empiezan en cuatro. ¿Y cómo sabe después
el eh copilador cuántas posiciones de
muel tiene que leer que va a representar
el el long stream?
Ah, okay. Bueno, eso es otra cosa, si no
lo estamos viendo, pero obviamente acá
si el long string no es tan fácil como
un short string que directamente tenes
los datos, sino que el long string de
alguna forma tiene que tener cuál es el
tamaño, dónde empieza, dónde termina,
¿no? Antes de tener el la información en
sí, lo cual le agrega más eh payload,
¿no?
O sea, tiene como un header, digamos,
ahí donde empieza
Exacto. No es que te empieza acá
directo, sino que tiene un header.
Está bien.
Sí.
Y ahí puedes agregar y obviamente al
agregar cosas vas a cambiar el header.
Vas a agregar esto y vas a cambiar el
header. Agregar y cambiar el header. ¿A
qué voy con todo esto? Fíjense cómo se
complejiza, ¿sí? De agregar un hola, que
es un short string, agregar algo, ¿sí?
que tiene más de 31 caracteres,
sí, se complejiza a nivel después
instrucciones, ¿no? Si yo quiero leer
esto de acá, es listo, me traigo este
slot. Si yo quiero leer acá y bueno,
tengo que agarrar este slot, ¿sí?
Ponerlo en la pila, decir, "Okay, es un
long string, por lo tanto tengo que leer
que esto es un long string." Vamos a
agarrar la posición de memoria que dice
esto, o sea, vamos a ir a buscarla,
vamos a leer el payload, lo voy a poner
en la pila, me fijo en el payload que
qué altura tiene, a ver qué posición
quiero leer. Okay, voy a entrar acá. Y
voy a se entiende todo eso que estamos
haciendo en vez de traer esto
directamente.
Claro, ¿no? Eh, gastaría también mucho
gas acá, como decís vos, y no me
convendría directamente con un contrato
así de tres páginas hacerle un hash al
contrato, tener un hash afuera y uno
adentro y después los comparo. Exacto.
Mucho más barato.
Esto de acá obviamente gasta muchísimo
gas, ¿no? Por eso siempre se trata de
tener short string y nunca long strings.
Y después lo que decís es cierto, si vos
tenés un contrato, no vas a guardar el
contrato en la blockchain, sino que lo
que vas a guardar es un hash. Acá
sí vas a guardar un hash.
Por ejemplo, un Shadow 56.
¿Qué pasa con el Shadow 56? ¿Cuántos
bits tiene?
Ay, de memoria 256. [risas]
Exacto. 256, ¿no? Eh, justamente el chat
256 tiene 256 bits. El quech 256 también
tiene 256 bits. ¿Qué es lo que sucede?
Si vos acá tenías 256 bits y acá le
tomas 8 bits, ya esto tampoco te entra.
Por lo tanto, si vos utilizas un bytes o
un string, esto también se te va a
convertir en un long string y vamos a
estar en la misma. ¿Qué es lo que vas a
utilizar para esto? Y bueno, para
guardar esto vas a utilizar algo que se
conoce como bytes
32, ¿sí? Que esto te dice, bueno, acá
tenés 32 bytes de de memoria y ahí
guardas ya 256 o el ketch 256. Sí,
acuérdense que estos bytes podía ser
bytes 1, byte 2, byte 3, byte 4, byte 5,
byte 6, así hasta byt 32, ¿no? Que es
justamente un slot.
Perdón, perdón. ¿Puedes repetir qué pasa
si yo no le pongo by 32 con el hola?
¿Cómo qué dijiste? No,
con el con el no, pero si vos tenés un
Shadow 56 y vos declarás un bytes acá
para guardar el Shadow 56, acuérdate que
ese Shadow 56 va a tener 256 bits, por
lo tanto 32 bytes. Eso te va a entrar en
un long string.
Ah, claro, porque tenía 31
Exacto.
Por el Ah, ahora sí, ahora no lo puedes
poner así porque te va a producir el
mismo efecto de este del puntero. Sí.
Entonces, para evitar eso acá en vez de
utilizar un bytes así, un bytes así que
es como libre que es igual a stram que
habíamos dicho, ¿sí? lo que vas a hacer
es especificarle qué cantidad de bytes
tiene. Sí, en este caso 32 para decirle
todo el slot es eh [carraspeo]
información, ¿no?
No tenemos el S o el L, son 32 bytes.
Este direccionamiento directo,
obviamente siempre es mucho más
económico que tener direccionamiento por
punteros. Sí. Por lo tanto,
perdón, no. Entonces, no es mandatorio
poner S, usar un B para visitar si es
longo.
Esto esto no lo haces vos, esto te lo
hace el compilador. Sí.
Ah, okay.
No haces vos, pero bueno, sabes que así
funciona, ¿sí? Que básicamente cuando
vos pones un short te pone el dato acá.
Cuando vos pones un long, ¿sí? o cuando
compador te pone long, básicamente lo
que te pone acá es un puntero que te va
a dirigir al a un payload donde va a
estar después contenido la eh la
información, ¿no? Y todos esos saltos
que tiene que hacer, obviamente te va a
eh costar mucho más gas. Sí. Por lo
tanto, si lo podemos poner directo para
que directamente se traiga el valor y no
tenga que traerse un puntero, después
sumarle la posición para poder ir a
buscarlo y volver a buscarlo y que de
hecho estás haciendo varios entradas a
memoria, a memoria de storage, ¿no? Esto
son tod memoria de storage que es caro,
estás haciendo muchas más entradas a
memoria de storage, entonces mucho más
fácil directamente hacer una sola
lectura. ¿Se entiende?
Sí. Sí.
Bien, eso para entrar un poco más en
detalle de lo que decíamos acá de string
long stream.
Vamos a eh la siguiente guía, ¿sí? La
parte de tipo de datos, gestión de
variables y etcétera.
Bueno, repaso no importa porque ya lo
vimos, lo acabamos de ver recién.
Tenemos, bueno, tipo de datos y
funciones, dice tipo de datos
primitivos. Tenemos wint e int, ¿sí?
Okay, ya los vimos. Dijimos que son
básicamente 256 bits si nosotros no
especificamos. Y si nosotros le
especificamos podemos tener desde
Windows 8, 16, 32, 64
y eh 128 256, ¿no? Y habíamos dicho que
también agregamos uno más que era el win
160, que es básicamente por los
addresses, ¿sí? que tienen 20 bytes, 160
bits son 20 bytes.
Acá como dicen, no siempre usar entero
más pequeño ahorragas. Si es un poco lo
que veíamos la clase pasada del tema del
ventaneo, ¿no? Si nosotros estamos
ventaneando en en el stack, eh nos está
ocupando más gas. Sí, nos ocupa menos
gas cuando estamos armando estructuras.
¿Por qué? Porque en vez de traer eh dos
posiciones en storage, traemos una a
memoria y después en memoria la eh
dividimos.
¿Sí?
Es un poco lo que les decía recién
también cuando si tenemos 256 buanos, si
nosotros lo metemos con una máscara en
una sola variable,
que la hacemos nosotros la variable y
bueno, ahí podremos estar ahorrando.
¿Por qué? Porque si nosotros necesitamos
traer eso y estar operándolo, es mejor
traerlo una sola vez de de la variable
de estado, los 256 bits, y después
trabajarlo en memoria. Esos 256 bits, no
lo copiamos una sola vez de una. En
cambio, si nosotros ponemos 256 bits
variables de estado, vamos a tener que
empezar a traer cada uno, ¿no?
Y eso es caro.
Bueno, después tenemos las direcciones,
el adres. Acuérdense que acá tenemos eh
todo lo que son direcciones de de
Ethereum, por lo tanto, necesitamos
tener un
un tipo de de dato que sea el address,
que es capaz diferente a todos los demás
lenguaje de programación en donde vos no
tenés un adres en el cual est recibiendo
dinero o mandando dinero o identificando
una persona, ¿no?
Y dentro del adres hay dos tipos. Sí,
tenemos lo que sería el address común y
corriente que almacen una dirección. Sí,
puede ser tanto un contrato como una EOA
ese address o puede ser un address
payable. ¿Sí? ¿Qué es esto? El address
payable es un address en el cual se le
hace una adición de funciones
para que ese adres pueda recibir dinero.
Sí, como dice acá, dice una variante que
permite enviars directamente a una
cuenta. Sí, si yo tengo un adres nada
más y yo le intento de mandar dinero
desde el contrato y el contrato me va a
decir, "No, usted no le puede mandar
esto porque no es un un adres de tipo
payable." Sí. En cambio, si yo le agrego
el address payable, sí voy a poder.
¿Cuál es la diferencia entre estos dos?
Bueno, básicamente la el payable, ¿no?,
que es como la agrega funcionalidad,
como cuando ustedes tienen una herencia
y extienden cosas. Bueno, este payable
básicamente está extendiéndole cosas a
este address. Sí, no es exactamente eso,
pero es básicamente la funcionalidad,
¿no? O sea, el payable le extiende la
funcionalidad de este address y le
agrega funciones que sirven para pagar.
Se comprende.
Esas funciones la agregan en el AVI.
Estas funciones se le agregan en
Solidity.
Sí.
Si vos esto, por ejemplo, lo vieras en
en Assembly, en realidad es lo mismo. Un
address es un address,
son 160 bits, no pasa nada. Ahora en
Solidity, sí, para ponerte ponerte
ciertas reglas y que vos sepas qué es lo
que estás haciendo, sobre todo porque si
vos le mandas dinero, por ejemplo, a un
smart contra que no tiene la posibilidad
de sacar dinero, ese dinero queda ahí
trabado para siempre, ¿no? Porque no vas
a poder hacer absolutamente nada.
Entonces, para evitar ese tipo de cosas,
lo que hace Solipi para protegerte es
decirte, "Okay, si vos querés mandarle
dinero, tenés que saber realmente a lo
que le estás mandando dinero y tenés que
asegurarte de que esa de ese adres que
le está mandando dinero sea del tipo
payable." ¿Y cómo lo vas a saber? Bueno,
decímelo textualmente que es un adres de
tipo payable. Sí, declarara como un
adres de tipo payable. ¿Se entienden?
Es una protección de Solidity hacia
nosotros, hacia los programadores, para
que no nos equivoquemos.
Después tenemos los bulianos, ¿sí? El
bull que es true o false. Básicamente se
utiliza como en cualquier lenguaje, pero
sepan eso que son 8 bytes, ¿no?
Sobre todo si lo van a después poner en
estructuras.
Tenemos la cadena de textos, ¿sí? Que
son stream. dice, "Los strings eh
costoso eh son costos de manipular en
Soliti. En la blockchain el texto se
almacena como una rey de bytes
dinámicos." Sí, esto es un poco lo que
les comentaba. Si ustedes van a hacer un
stream de 31 caracteres, puede salir
económico. Si ustedes hacen string ya de
32 caracteres o más y van a tener todo
este paraplejo, ¿no?, que
que tienen que tener en cuenta y es
costoso, es caro.
Después tienen la parte de bytes, ¿sí?
Como les decía, tienen la parte de bytes
32 que les acabo de mostrar, bytes 1, 2,
3, 4 y sucesivamente hasta 32 o bytes,
que es básicamente, bueno, cualquier
bytes que vos quieras. Puedes poner
desde uno hasta
lo que vos quieras. Sí. ¿Qué es lo que
pasa? Bytes 1 a bytes 32 es básicamente
por dirección direccionamiento directo,
¿no? Como este hola y en un slot entra
lo que es bytes ya no. Dependiendo si
utilizas un long bytes o un short bytte
te va a entrar en un slot o vas a tener
que utilizar direccionamiento por
punteros. ¿Lo vas a hacer vos el
direccionamiento por punteros? No, vos
vas a programar en Solity. y no lo vas a
ver el direccionamiento por punteros.
Pero, ¿qué es lo que sucede con el
direccionamiento por punteros? Y bueno,
te va a estar consumiendo más gas. Si
ustedes hacer un estudio de gas a
escribir o leer una variable byt de tipo
bytes que tiene 31 caracteres, le va a
salir mucho más barata que si leen un
bytes que tiene 32 caracteres.
Sí.
Y acá, bueno, dice bytes, array dinámico
de bytes. Sí, bytes 1, byt 32 es un
array de tamaño fijo, ¿no? Como es fijo,
sabe cuántos slots va a ocupar y punto.
Estos tipos son utilizados
frecuentemente para trabajar con hashes,
firmas criptográficas y datos
codificados. Ahí un poco lo que
hablábamos en los hashes, por ejemplo,
los Ketchak 256, SH 256 tienen 32 bytes,
por lo tanto entrarían acá en un 32
perfectamente.
Los strings son más para trabajar
contexto. Sí. Firmas criptográficas
también, las firmas criptográficas
generalmente también tienen eh 32 bytes.
Sí, por ejemplo, el RS y B que nosotros
habíamos visto en su momento de la curva
elíptica. Sí, hay dos que tienen 32
bytes y uno tenía un bytte, ¿no?
Entonces podes poner
RIS, creo que vean que tenían 32 bytes,
lo podés como bytes 32 y B que tiene un
byte, lo ponés como bytes 1. ¿Sí?
Y bueno, después datos codificados,
etcétera.
Acá podemos ver eh justamente un byte
32, ¿sí? que estamos declarando un B2
del tipo public que le estamos llamando
hash y acá estamos calculando un hash.
¿Cuál estamos? ¿Qué hash estamos
calculando? Bueno, el de hola mundo.
¿Con qué función? Hcheck 256. Esta
función acuérdense que [carraspeo] es la
función de hash por defecto try
solidity. Sí, trae solidity o la EM. O
sea, acuérdense que cuando nosotros
calculamos una dirección de un
[carraspeo] address, por ejemplo,
siempre entramos por ese sketch 256. Sí,
hacíamos el exa primero y después a esa
clave pública que nos daba le aplicamos
el KCHC 206 y tomamos los bytes, ¿no? De
ahí. O cuando nosotros estamos viendo el
tema de selector de funciones, también
yo a una función
para poder hacer un selector de
funciones y saber eh dónde, en qué
posición de memoria va a estar esa
función, básicamente se termina eh
realizando a través de un catchup 256.
Sí, todo lo que sería e hashes en dentro
de BM nativo, ¿sí? Es a través de este
Kck 256.
Entonces existe en Solity la función
Ketchup 256 en la cual vos puedes
hashear cosas.
¿Qué podrías hacer? Por ejemplo, bueno,
vos tenés en tu frontend, ¿sí? Algo
hashado, ¿sí? y lo mandas y lo guardas y
después querés eh ver digamos ese hash
vas a poder sería una lectura única,
¿no? Pero puedes decir, "Okay, mandame
un valor, ese valor eh lo haso con el
256 y me fijo que sea realmente el
correcto con
con el valor que que le propuse, ¿no? Y
hacer un juego, por ejemplo, bueno, el
primero que adivina el
eh este valor gana. Obviamente ese juego
sería un poco trucho porque yo podría
agarrar y hacérmelo por afuera, ¿no? Y
empezar a probar hasta que sepa cuál es
el valor y después lo mando, ¿no? Y
mientras no lo sepan no lo mando. Pero
bueno,
acá donde puedo aplicar entonces yo la
otra vez vi que vos pusiste wh list. Acá
yo podría hacer eso, un juego, lo que
sea. Determino exactamente la cantidad
de un lado y del otro de digamos de de
posiciones o de participantes y tengo un
wir adentro. Y a es y
con ese wir adentro y y este que hago
puedo chequear que son únicamente esos
participantes los que los que trabajaron
o esas direcciones.
¿Se entiende?
Eh, sí, pero más o menos, porque
acuérdate que el GCH 256 es una función
hash, pero una vez que vos ya la
utilizás queda obsoleta, ¿no? Porque ya
se sabe para qué se puede utilizar esto.
Por ejemplo, a ver, fíjense acá esta
función, si yo tengo una función que se
llama claim, si no importa mucho lo que
por dentro, pero fíjense que recibe un
amount, un non, este deadline no le
hagan caso y una signature. Pero, ¿para
qué puedo servir esto? Bueno, estoy
estoy diciendo claim, o sea, alguien va
a reclamar. ¿Qué va a reclamar? Bueno,
una cantidad de por ejemplo. Sí.
Eh, el para qué bueno para que no se
pueda hacer replay, ¿no? O sea, una vez
que alguien eh ya reclamó ese esa amount
dado por ese no entonces no lo puede
volver a reclamar. Y el signature, ¿para
qué? Okay, para relacionar este amount
con el no y decir, "Okay, este amount
con este no está relacionado y
únicamente si fue firmado por una
persona específica, entonces va a poder
hacer el claim." ¿Qué es lo que hago acá
yo? Bueno, ¿alguien tiene para retirar
Okay, me pide el claim, yo agarro en mi
agarro en mi backend, por ejemplo, y
pongo una un address que tiene un cierto
rol, ¿sí? Y digo, "Okay, firmame esos
para esta persona,
¿sí? Con el NOS número 3, por ejemplo.
Entonces, pone los
el tres, hace la signature y me la
manda.
Sí. O mejor dicho se la manda a la
persona y la persona después puede hacer
el claim con esa signature. ¿Por qué?
Porque esa signature que fue firmada por
el otro conse con su clave privada. Yo
acá con la clave pública o mejor dicho
con el adres de la persona más toda esta
información podría llegar a o mejor
dicho puedo decodificarlo y ver que
realmente fue firmado por esa clave
privada. ¿Sí?
Ahora, ¿cómo hago cuando yo quiero
firmar algo que es muy grande?
Acá yo tengo poquitas cosas, pero si yo
quiero firmar, por ejemplo, un contrato
completo, si puedo decir este amount,
este nos y eso está dado por un contrato
de cinco páginas para decir le estoy
pagando por este contrato y bueno, ahí
ya se empieza a complicar, ¿no? Entonces
ahí ya sí tengo que buscar una forma de
achicarlo. ¿Cómo hago? Bueno, fíjense
que en una parte acá, fíjense que hay un
digest que básicamente le mando una
estructura.
Sí, acá fíjense que tengo una estructura
que tiene el
la persona que que lo está mandando, o
sea, la persona que va a recibir el
dinero, el amount, el non, bueno, el
deadline y bueno, otra información, ¿sí?
Eh, y básicamente eso de ahí, fíjense
que acá le hago un ketcha 256 de eso,
¿sí? ¿Por qué? Porque no importa la
cantidad de cosas que yo le pongo acá,
le puedo poner un contrato o lo que sea,
esto me va a dar siempre una cantidad
fija y siempre que le pongas las mismas
cosas, siempre me va a dar lo mismo por
la funcionalidad del ketchak, ¿no? Y
después lo que hace la persona del otro
lado en el backend es firmar esa
estructura. Entonces después cuando me
manda las cosas acá, yo hago exactamente
lo mismo. Haheo todo eso para obtener
qué fue lo que firmó la otra persona y
lo mando a una función que básicamente
me pueda leer. Sí. ¿Quién fue el que lo
firmó? Fíjense que acá le manda este
digest, ¿sí? Que fue ese hash de todo
eso y la firma. Entonces, teniendo la lo
que firmó con la firma, yo puedo saber
quién fue el que lo firmó. Sí. Y
después, sabiendo quién fue el que lo
firmó, puedo ver si tiene el rol para
firmarlo, ¿no? Fíjense, acá tiene un
sign roll, lo tiene o no lo tiene. Si no
lo tiene, entonces lo revierto y esto es
una firma inválida. Si no sigo y le doy
el dinero. Sí se entiende.
Sí, te entendí. Pero yo pensé mucho más
sencillo en vez de hacer todo eso con
una list de las direcciones que están
habilitadas y pueden hacer el reclamo.
Aunque yo no conozco el nombre de las
personas, no se conoce, pero vos tenés
una cantidad que vas a dar desde el
frontend, una cantidad de posiciones que
van a corresponder a diferentes eh
identidades ID y después le hago la wi
dis y ahí pero claro, lo que yo estoy
haciendo es resencillo
y sobre eso quería hacer el hash. Ahora
te entendí. Claro, pero es un poco lo
mismo. ¿Por qué? Porque vos tenés una
weld, ¿qué qué es lo que vas a tener?
Bueno, vas a tener un address, que
básicamente acá también está, ¿no? Un
address, después uns. ¿Por qué? Porque
si no la persona que está la webas
podría utilizar esa esa firma para
extraer muchas veces, ¿no?
Por eso que tenés acá el Nes para decir,
bueno, okay, funciona una sola vez,
porque después este NOS lo marco como
usado y ya no lo puedo volver a
utilizar, tiene que volver a firmar. Sí
se entiende
eso como funciona firma, ¿se acuerdan?
Pero bueno, lo que vamos a estar
firmando y generalmente va a ser acá
algo hashado, no va a ser todo un
documento, sino va a ser el hash de ese
documento.
Acá lo mismo, voy a tener el no un
montón de datos, lo voy a hashe todo y
una vez que obtengo el hash de un tamaño
fijo y bueno, yo firmo ese hash de
tamaño fijo, después mando toda la
información, mando la firma y del otro
lado el contrato va a estar haleando
toda esa información de vuelta para que
esté de la misma forma que yo lo firmé.
y contrastando con esa firma que
realmente sea la persona que dice ser la
que lo firmó. ¿Sí?
Bueno, entonces, volviendo un poco esto,
acá tenemos los by 32, ¿sí? Para guardar
este tipo de datos para has, por
ejemplo, tenemos la clasificación de
variables según su ubicación, ¿sí? que
podemos ver el tema de variable de
estado.
Acuérdense que estas variables de estado
son las que están fuera de las funciones
y son persistentes.
[carraspeo]
Tenemos las variables locales, que son
las que están dentro de las funciones,
acuérdense de que estas no son
persistentes, están guardadas en memoria
y una vez que la función termina el
valor se pierde. ¿Sí?
Y después dice, bueno, Solit, además
distinguir entre variables de estado y
locales. También es importante entender
dónde se almacenan datos de memoria
durante la ejecución de una función.
Solity define tres ubicaciones
principales. Storage, sí, como decía,
las variables estado, memory, las
variables locales y call data, que
acuérdense que este call data es donde
llega la información una vez que entra
en una función. Acuérdense que la
función tiene parámetros y en esos
parámetros la función tiene que entrar
de alguna forma y bueno, ese lugar donde
entra es lo que se conoce como coltata,
¿sí? Y al ser únicamente de entrada
digamos lo puedo modificar, ¿sí? Porque
ahí tienen los valores que entraron.
Esos valores una vez que entraron ya no
se pueden modificar en el código. Por lo
tanto, si yo quiero modificar algo de
ahí, lo tengo que bajar a memoria y
transformarlo en memoria. Sí,
por eso que dice para el alcance de este
curso utilizaremos memory nada más. ¿Por
qué? Porque este call data yo lo puedo
traer a memory y lo utilizo enter en
memory. ¿Qué es lo que pasa? Si yo lo
utilizara en Cold data, en el caso que
no necesito e modificarlo, voy a gastar
un poquito menos de gas, pero la verdad
que tampoco es tan crítico. La verdad
que son 10 unidades de gas nada más que
por cada uno, básicamente que este
llevando de Cold Data memory
en Ethereum cada operación ejecutada por
un contrato tiene un costo de gas. Sí,
algunas prácticas ayudan a optimizar
este costo, ¿sí? Como usar Windows 56 en
lugar de enteros pequeños, un poco lo
que hablamos. marcar funciones como
view, pure cuando sea posible, ¿no?
Porque acuérdense que con esto ustedes
por más que consume y gas ustedes no lo
pagan. Sí. Y consume en el sentido de
decir si yo tengo una función que me va
a estar ocupando mucha cantidad de
cómputo y capaz que me la cortan, ¿sí?
para eh utilizar el los recursos para
otra cosa,
porque al no estarle pagando es como
bueno, la corto y sigo con otra cosa.
Después evitar el almacenamiento
innecesario en storage, ¿no? Si usted no
tienen que guardar algo en storage y no
debería estar ahí, por ejemplo, no
guardar un contrato completo, un
contrato legal completo, sino guardar
únicamente el hash como decíamos, el
contrato después lo pueden guardar en
una base de datos descentralizada como
ser IPFS
y en el
y en la blockchain últimamente una
dirección hacia ese contrato, por
ejemplo.
[carraspeo]
Y la dirección, me refiero justamente al
al hash, ¿no? Porque acuérdense que las
direcciones en IPFS no están dadas por
una IP como e como sería en web 2, sino
que están dada por el contenido. Sí.
Y justamente un hash.
Anatomía de la función. Sí, nosotros ya
vimos cómo era. Function, el nombre de
la función, los parámetros que recibe
con marcado con los tipos y el
parámetro. Fíjense, acá le pone un guion
bajo, básicamente que está indicando que
es una función de tipo interna o mejor
dicho una variable de tipo interna para
identificarla contra una variable de
estado, por ejemplo, que podría ser
parámetros sin este guion.
Sí.
Y en un set ustedes pueden hacer
parámetros sin ese guion, por ejemplo,
igual a el parámetro con este guion.
Después tienen la visibilidad, ¿sí?
public private eh
o internal o external, si no me salía
modificadores que ustedes pueden poner
extra
y el returns con el tipo, ¿no?, que va a
estar retornando. Ustedes acá también
pueden retornar e
pueden retornar tuplas, por ejemplo, más
más de un tipo, ¿no? Igual que acá en
los parámetros pueden recibir muchas
cosas, acá en los returns también pueden
retornar muchas cosas, no hace falta que
retorne un solo dato.
Dice parámetros y retornos. Parámetros
dicen datos que la función recibe para
operar y returns define tipo de datos de
la función entrega finizada su
ejecución. Sí, por favor, si alguno no
entiende, por favor, me frena. Si, yo
estoy intentando pasar esto porque son
cosas relativamente fáciles de
programación, pero si alguno no lo
entiende, me frena y lo vemos un poco
más a fondo
o un poquito más eh tranquilo,
más que a fondo. Entonces, tenemos
function, por ejemplo, increment save.
Sí, public. Fíjense que ya tenemos un
if. Fíjense cómo está ya el el if
armado, ¿no? Tiene un if, abre
paréntesis, cierra paréntesis y acá
tiene una condición. Sí, en este caso la
condición es que una variable llamada
count sea menor a 100. Mientras esto
suceda, se va se va
va a pasar lo que está eh en el camino
del sí del if, o sea, que esto es
verdad. Si esto es verdad, entonces se
ejecuta lo que está en esta primera
llave, que en este caso lo que está
haciendo es hacer un count,
hacerle agregarle uno, sumarle uno.
Hacer este count es lo mismo que hacer
count igual a count 1. Sí, eso también
es muy similar en varios lenguajes de
programación, por ejemplo, en C, ¿sí? O
en
JavaScript, ¿sí?
Esto es lo mismo que hacer count
1.
Ahora, ¿es lo mismo o no es lo mismo?
No, en teoría no es lo mismo porque con
pones con con más un cargas en memoria y
tenés que leer de vuelta con memoria. En
ese con más un te ahorrás porque lee y
suma a la vez. Es como si fuera count
más más. Si le pongo C más hace lo
mismo.
Sí, C+ más también hace lo mismo. Sí,
pones acá C+ más también puedes hacerlo
acá más igual 1 es porque también
podrías poner dos, ¿no? Por ejemplo, y
le va sumando a dos.
Sí, que se da igual que con acá dos.
Ahora esto está bien, pero como dijo,
¿no? Acá estamos por algún lado leyendo
dos veces. Sí, acá es como
una vez menos. Eh, no son exactamente
igual a nivel de assembly, si son
iguales a nivel lógico, ¿no?
Pero bien, entonces tenemos acá eh cómo
se escribe un if. Sí. Después si
nosotros quisiéramos poner otro salto en
el caso de que esto sea falso, acá le
pondríamos el s y también abríamos
llave, cerraríamos llave y dentro de la
llave pondríamos el los statement que
queremos dentro del
tenemos variaciones con require, ¿sí?
Esto también lo pasamos muy rápido la
clase pasada, pero básicamente el
require lo que dice es que yo voy a
tener una condición que requiero para
seguir. Sí, a diferencia de esto, que si
vos decís, "Okay, si esta condición es
verdadera, entonces entro acá, si es
falsa, entro a els, que acá no está el
acá lo que me está diciendo es esto. Yo
requiero que esta condición sea
verdadera. Si esta condición no es
verdadera, entonces revierto. Sí,
revierto. Ya me está diciendo, si esta
condición no es verdadera, revierto. Y
esto de acá es un mensaje que le pone
para el caso en que revierta. ¿Sí?
Entonces, ¿qué estamos diciendo acá?
Bueno, si count es mayor o igual a cer o
mejor dicho, count es mayor a cer,
entonces sigo. Pero si count mayor a
cer, entonces el contador no puede ser
negativo. ¿Sí? O sea, si esto fuera -1,
por ejemplo, esto me saliría el contador
no puede ser negativo.
[carraspeo]
Y acá estamos e bueno, restando cada vez
que llamamos esto de acá. Entonces, ¿qué
va a pasar? Yo tengo un número, por
ejemplo, 10. Voy a empezar a llamar este
decrementar. Me lo va a ir
decrementando. 10 es mayor a 0. Sí.
Entonces, sigo y este 10 se va a
transformar en nueve. Después otra vez 8
7 6 5 así sucemente. ¿Hasta qué? ¿Hasta
qué punto? Bueno, llega a cero. Una vez
que me pregunta cero es mayor a cer,
¿no? Listo. El contador no puede ser
negativo. Si no va a a llegar esta línea
siquiera.
Se entiende eso.
Por favor, si alguien no lo entiende,
avísenme porque yo si no voy más
profundo y después nos perdemos, ¿no?
Ahí te está preguntando Ignacio.
Ah, no vi porque no estoy en el chat.
Que preguntó, [carraspeo]
¿no estás presentando al Paint? No, eso
¿Dónde?
No, tiene la mano levantada.
Levantó la mano.
Ah, perdón, perdón. Quise poner un
pulgar para arriba, perdón, sorry.
Ajá. Okay.
Eh, bien. Entonces,
¿qué es lo que tenemos nosotros? Esto de
acá.
Espera,
voy a ir a voy a ponerlo directamente en
remix. Vamos a abrir un remix.
Así nos vamos acostumbrando al remix.
Y y después de esto nos vamos al recreo,
pero les quiero dejar algo de tarea para
que se queda en el recreo como yo.
Entonces, no recreo.
Claro, por eso.
Claro, es un raro del
Es un recreo raro,
¿no? No, obviamente no, no hace falta
que lo hagan. Pero bueno, para el que
termina antes el recreo y y quiere ver
algo, fíjense qué es lo que sucede si yo
hago esto.
Acá pongo la función. Sí, función.
Fíjense que acá ya me está marcando que
tengo un error. ¿Por qué? Porque este
counto,
entonces lo tengo que definir. ¿Qué cómo
lo voy a definir? Y bueno, acá le tengo
que poner acá un valor, tengo que
declarar un pin 256
para poder ver cuál es el valor, porque
acá fíjense lo estamosando, pero no
estamos viendo. Sí, yo podría decir que
directamente esto de tipo public. Sí.
Y ahí ponemos el count.
Ahora este contador va a llegar acá y
como como dijimos inicializa en cero.
Por lo tanto, cuando yo quiera llamar
más este incrementar no voy a poder
porque cero no es mayor a cero. Por lo
tanto, me va a salir este error. Sí.
Y [carraspeo]
y bueno, entonces, ¿cómo podría hacer? Y
bueno, necesitaría hacer que este
contador tenga un valor inicial. ¿Cómo
hago para que tenga un valor inicial?
Bueno, el constructor, ¿no?
Vamos a a poner el constructor y acá en
el constructor, por ejemplo, le vamos a
poner que el contador es igual a
un valor de contador que se lo puedo
mandar por por acá por parámetro 256.
Sí, sí.
Y ya lo tenemos. Entonces, yo le puedo
poner el valor que yo quiero acá y poner
este valor acá. Fíjense esto de acá. A
ver,
contemos los caracteres de esto.
A ver si tengo algún contador de
caracteres por acá.
¿Cuántos caracteres tiene?
33. ¿Lo pusiste ahí?
Sí. ¿Qué pasa si esto tiene 33
caracteres?
Esto, ¿de qué tipo es?
Long,
un long stream. Claro,
claro, esto es un long stream.
Sí.
Bueno, lo hacemos por ahí. Vamos a
agarrar esto de acá. Y si nosotros
queremos
despollarlo, a ver, me cambiar un montón
de cosas de remix,
eh, a ver,
acá tengo
a y tengo que mandarle un valor al
contador.
Ah, acá está, ¿no? Fíjense, acá me pone
el valor del constructor, ¿no? Dice
count, que es lo que yo le tengo que dar
acá en el constructor. Acá le damos, no
sé, cinco
y deploy. Sí, fíjense que ahí se
deployó.
Vamos a a ver un poco
esto de acá y vamos a llamar esta
función que se llamaba
decrement, ¿no?
Y transaccionamos, ¿sí? Y nos fijamos
qué fue lo que pasó. Sí, fíjense que acá
funciona función decrement. Acá está el
decrement que llamamos y si nosotros
fijamos en cuánto gas gastó,
sí tenemos el execution cost que esto
fue lo que costó la ejecución y el
transaction cost que es lo que juntó la
transacción, ¿no? Fíjense que tenemos
más o menos 21000 unidades de gas que es
lo básico. Pero bueno, lo que nos está
dando, ¿cuánto? O sea, lo que pagamos es
esto. Lo que nos está dando, ¿cuánto
costó nuestra ejecución? O sea, nuestro
uso de gas, ¿sí? Nuestro código es
básicamente esto de acá, 546.
Sí, le habíamos puesto cinco, ¿no? Para
hacer exactamente lo mismo. Vamos a
agarrar esto de acá.
Si yo le pongo así, contador,
no negativo. Vamos a ponerle así para
asegurarnos de tener un short string.
Sí.
y queremos ver cuánto tiene. Bueno, nos
vamos al recreo.
Lo hago en el recreo y les muestro
así.
Así pueden dar el presente, ir a ir al
baño si quieren.
E voy a darles acá
el
form asistencia. Como siempre es el
mismo de siempre.
y nos vemos. y 22.
