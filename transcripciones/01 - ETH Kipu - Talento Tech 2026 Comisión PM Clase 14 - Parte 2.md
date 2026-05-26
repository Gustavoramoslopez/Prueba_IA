# 01/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 14 - Parte 2

- **Video:** [https://www.youtube.com/watch?v=EY60bpJZnKI](https://www.youtube.com/watch?v=EY60bpJZnKI)
- **ID:** `EY60bpJZnKI`
- **Canal:** ETH KIPU
- **Fecha:** 2026-05-13
- **Duración:** 46:02

---

## Transcripción

a reloguearte.
Eh, ¿cómo acá decís?
Sí, sí, ahí, ahí.
Ah, no tengo idea.
Ah, esto porque yo tengo versión beta,
fíjate.
A mí me aparece también versión beta,
pero yo me quiero firmar porque entrar
con correo, entrar con y no te deja.
Inhabilitada por ahora la firma. Es que
por eso es la versión beta tenés que
estar way listeado.
Tiene que estar listado para para poder
entrar en la versión beta.
No, no, no todo el mundo tiene acceso a
la versión beta.
Eh, bien.
Entonces tenemos acá la función
decrement. Sí. Eh, lo que yo quería
mostrar justamente no está sucediendo,
pero bueno, tiene una explicación
justamente de por qué no está
sucediendo. Si fíjense que acá yo lo que
voy a mostrar es que tenemos un
un long string, ¿no?, contra un short
string. Pero, ¿qué es lo que sucede
cuando nosotros llamamos acá al require
mayor account que tenemos en cinco, ¿sí?
Esto de acá nunca se llega a llamar, por
tanto, no estamos cargando esto de
ninguna forma. Sí. Y por eso es que
tanto esta de acá como esta de acá nos
está tomando lo mismo. Si quisiéramos
nosotros e
fallar, sí, vamos a fallar. Lo lo que
podemos hacer es que directamente
llamemos a al count y ahí sí ya. ¿Por
qué? Porque vamos a tener que cargar
esto en memoria para poder devolverlo o
cargar esto en memoria y esto de acá va
a ser más largo para cargar que esto de
acá. Entonces, vamos a verlo.
Vamos a verlo. Vamos a poner acá el
count directamente. Lo vamos a poner en
cero para que esto falle. Sí, le doy en
deploy.
Y acá ahora vayamos a llamar a
decrements
y en decrement le ponemos transact, ¿no?
Fíjense que obviamente esto falló.
Y cuánto es que nos consumió. A ver si
lo podemos ver.
Sí, tenemos el transaction host. Bueno,
vamos a poner los dos.
[carraspeo]
Eh,
aunque igual esto de acá
el contador no puede ser negativo.
Tengo que ver también si Remix no está
tomando una simplificación de esto, ¿no?
Pero bueno, eh veámoslo.
Ah, porque le puse valor acá
y escamos aent.
Bueno, igual que antes falló.
Vamos a ver el gas.
Bueno, y acá si ven, sí, ya tuvimos un
un
diferencia, ¿no?
Y estamos viendo que acá nos gastó 2574
y acá 2556.
¿Sí? ¿Por qué? Justamente, ¿cuál es la
diferencia? Esta no. Acá tenemos un
short string y acá tenemos un long
string. Por lo tanto, acá nos dio
19, ¿no? Unidad de gas más
o 18.
18, ¿no?
Sí. 18 unidades de gas más, ¿verdad? Sí,
claro. Entonces, con esto que vos
mostras, me conviene a mí hacer un
código de error en el front end y que
acá mande un mensaje de código de error
y no poner todo el texto del código de
error.
Claro. O poner un mensaje corto.
Sí. Ah,
por eso le pongo código 01. Es el error
01 y el front digo el error 01
corresponde tal. Claro.
Ahora, esto es una cosa. Ahora, fíjense,
acá tenemos, por ejemplo, este menor o
igual a uno. Pero, ¿qué es lo que
sucede? Nosotros acá estamos
comprobando, ¿no? De que esto no, esto
tiene que ser mayor a cero el count. Por
lo tanto, count puede hacer un desborde
para abajo
y teoría, sí.
¿Por qué
no? No puede.
Claro, no puede porque digamos si si es
uno acá pasa y 1 men 1 es 0. Si es cer
que es el siguiente número 0 es mayor a
cer y no pasa acá. Sí. Por lo tanto,
nunca se va a ser el 0 men 1 que sería
-1.
Por lo tanto, el el count nunca va a
tener un underfow. Sí. ¿Qué es lo que
pasa? Solity. Ah, puede tener un al
revés un overlow, porque por ejemplo si
vos lo inicializas con un C muy grande,
¿sí?
Y vos cuando inicializaste acá con el no
con el constructor, sino desde acá el
remis, cuando vos el bar lo ponés muy
muy grande, sí podés pasarlo
acá,
¿no? Ahí no, porque vos pusiste cinco,
pero no importa ahí el número.
Pero vos desde acá, desde el desde el
deploy,
llamá al al account y poner ponerle que
pones un número exageradamente grande.
No puedes cambiarlo, no puedes cambiar
el camp. No existe una forma de
cambiarlo.
Ah, no, porque pusiste dos.
No, pero no existe forma de cambiar
porque no hay ninguna función que lo
cambie. Igualmente, aunque exista una
función digamos nunca vas a poder poner
un valor mayor a
al valor que entra en 156. Sí, por eso
dije bueno de
Yo, entonces vos vas a estar restando
acá y esto de acá eh nunca pasa. ¿Qué es
lo que pasa? Si ustedes ven el assembly
de esto, en el assembly acá se está
haciendo un chequeo de que esto no tenga
unders. ¿Por qué? Porque estamos en una
versión superior a la 8 que habíamos
dicho. Entonces, ¿qué podríamos hacer? Y
bueno, podríamos simplificar un poco
más. ¿Ustedes se acuerdan? Esto era
25000 y pico, no me acuerdo cuánto era,
pero bueno, mejor.
uncheck.
Sí. Y hacer esto dentro del check. ¿Qué
está diciendo con esto? Bueno, no chequé
este caos. Sí,
vamos a guardarlo y vamos a volver a
hacer el el cinco.
Yo no me acuerdo cuánto da, pero bueno,
ustedes seguramente van a tener la
grabación si después lo quieren volver a
ver. Vamos a
vamos a buscar el micr
y damos transact. Y acá podemos ver
cuánto nos costó. Y si vemos cuánto nos
costó, nos va a costar
5300 en unidad de gas.
Sí.
Ahora si nosotros no hacemos este
unchecked y lo hacemos directamente,
a ver qué tenemos.
y transact
se pican Execution cost 5482.
Fíjense que acá costó 182 unidades de
gas más hacer esto que hacer esto.
¿Lo ven?
Lo veo. Pero, Cristian, el anche, ¿qué
es lo que no chequea en el en el bucle?
Claro, vos hacer esto no estás haciendo
únicamente una resta a nivel, sino que
además de hacer la resta, estás fijando
que no haya un underflow.
Sí, porque acuérdate que yo había dicho
que después de la unidad de del de la 8,
esto te chequeaba solito los underflows
y los overflows. Entonces, acá te está
chequeando que no hay un underflow.
Ah, es como si compilara con las
versiones anteriores.
Claro, con eso decía, "Bueno, estoy
compilando."
Pero eso fue un problema de hackeo.
Sí, fue hay problema de hackeo, pero en
este caso que nunca puede ser, yo lo
pongo porque sé que nunca va a poder
llegar. ¿Por qué? Porque se va a detener
acá.
Acá es estoy haciendo el chequeo. ¿Cómo
estoy haciendo un doble chequeo?
Es como vos
tenés una condición de un require ahí
que
claro, vos ya lo tenés acá, entonces
para qué lo vas a volver a calcular. Sí.
Y eso no lo tuvo en cuenta ahora cuando
hicieron la nueva compilación.
Sí, pero dijeron, "Bueno, vamos a evitar
el hackeo primero y después si alguien
quiere porque sabe que específicamente
eso va a traer mayor
mayor ahorro de gas y y realmente sabe
lo que está haciendo y que no va a poder
tener un hackeo por eso, entonces que le
ponga específicamente el check,
¿no? Acuérdense que estamos entrando
siempre con el solity de que las cosas
sean totalmente eh que vos sepas cada
línea de código qué es lo que estás
haciendo. Entonces, solit te intenta de
obligar a que vos sepas, ¿se entiende?
Todavía hay otra cosa más que podemos
hacer. Fíjense que count es una variable
de estado. Sí. Y yo acá estoy accediendo
dos veces.
¿Sí? ¿Qué pasaría si en vez de hacer eso
yo hago? int 256
counts,
o sea, hago una variable memoria, me
traigo la variable estado
y después la que utilizo acá es la
variable
de memoria
y acá también.
Sí. Y después, obviamente, sí puedo
hacer,
tengo que volver a a
poner la variable estado.
Hay que ver acá si esto realmente trae
alguna ventaja porque, bueno, había muy
pocos accesos, ¿no? Pero si hay muchos
accesos, esto podría traer una ventaja.
Yo creo que igual sí va a traer, pero
bueno, veámoslo.
Vamos a borrar esto
y vamos a despar otra vez con el count
igual a 5 para ser siempre igual.
Deploy.
Vamos a abrirlo y nos vamos a fijar en
la función decrement y vamos a intentar
de hacer transact.
Vamos a ver.
Y efectivamente, fíjese, 5208 unidades
de gas, o sea, que estamos en 5300,
ahora pasamos acá 5208,
¿sí? Por lo tanto, bajamos 92 unidas de
gas, ¿sí? por hacer por agregar más
línea de código.
Se ve
y bueno, esto podríamos decir que es lo
más optimizado posible, ¿no? De hecho,
se puede optimizar un poco más, pero
bueno, ahí ya estamos viendo que es ya
bastante optimizado. Bajamos de lo que
eran 5482
era, eh,
no, de hecho era un poco más porque
teníamos este long, ¿no? Pero era para
el otro lado, pero sacamos de 5482 a
5208,
sí, 200
unidad de gas, 270 unidad de gas, ¿no?
¿Qué es lo que sucede acá? es mucho y
no, la verdad que no es mucho.
Si esto estuviera en un en un bucle for,
¿sí? Y son 200 unidades de gas por cada
uno de los bucles for, ¿no?
Si acá tenés 1000, estamos hablando de
200 por 1000, estamos hablando de
200,000 unidades de gas.
Y si son 200,000 unidades de gas y acá
esto te ocupa cada una de las cosas te
ocupa 5000 200
cuántas bucle formas podríamos hacer
20000
dividido 5208
no podríamos hacer 38 bucles más o sea
en vez de hacer 1000 podríamos hacer
1038
y te te aumentó, no mucho, pero bueno,
fíjense que es un código muy simple,
¿no? Que de 1000 aumentó 1038.
Sí
se entiende.
Sí, [resoplido] Cristian, María pregunta
si esto hay que hacerlo siempre cuando
vos vas programando en Solit.
No es que hay que hacerlo siempre. No es
que hay que hacerlo siempre. Esto vos lo
tenés que tener en memoria. Ya. Eh,
memoria, no digo en tu memoria, ¿no?
Sí. Eh, conocido, sabido. Claro,
claro. Esto lo tenés que tener vos en tu
memoria de estado cuando vas
programando. No es que vos tenés que
agarrar y empezar a ver. No, no tiene
sentido eso. Pero vos sabés que, ah,
okay, mira, acá estoy empezando a tener
muchas var, ¿okay? La voy a bajar a
memoria. Sí. Eh, acá y esto de acá no no
le puedo poner una variable mayor 32
bits a 32 bytes. Tengo que poner algo
corto. Eh, tampoco que me voy a poner a
contar, pero yo acá lo veo y sabes que
esto tiene menos de 32 bytes. Si yo hago
ya sé que va a tener más, ¿no? Eh, no
hace falta tampoco que me ponga a contar
letra por letra. Eh, pero bueno, ese
tipo de cosas, ¿no? O sea, vos ya lo
tenés que tener en mente, no es que vas
a ponerte a a optimizarlo a ese punto,
salvo que tengas algo específico, ¿no?
¿Entienden?
Sí, sí, claro.
Bien, entonces sigamos. Bueno, ya
tenemos el bucle de decremento, el
require, inclusive lo optimizamos un
poco más. Acá tenemos un bucle. Sí.
Fíjense que ya hablamos de bucles,
pero no vimos cómo se hacía, pero bueno,
acá lo tenemos. No sé si está en una
función o no, ya veremos.
Sí, está en una función suma el bucle.
Eh, fíjense que qué sucede, ¿no? Yo
tengo un bucle. Acá tengo una variable
que es de tipo array. Sí, acá estoy
diciendo que es un array. Yo le puedo
mandar varios números en formato rey y
todos esos números lo va a estar
recorriendo y lo va a estar sumando. Sí.
Y me lo me va a estar volviendo el
resultado.
Yo acá podría ponerle al final de esto
un return
total y esto esto no me va a agregar
gas. Si hacer esto y no hacerlo es
exactamente lo mismo, porque yo acá le
puse ya que estoy retornando esa
variable total y cuando termine esta
función y me va a retornar esa variable
total. Sí.
Si yo acá hubiera puesto otra variable y
quiero que lo retorne y bueno, tendría
que poner la que quiero que retorne acá,
¿sí? Porque se va a copiar en ese total
y se va a mandar.
Ahora, acá sí vemos otro problema. Sí. Y
no sé, a ver si alguno se da cuenta cuál
es el problema.
Y como vos tenés definido ahí el unit y
esto es un pienso, ¿no? Y el unit eh ahí
está abierto con ese corchete, la es una
dimensión, no está definida la
dimensión. Ese bucle va a ser muy largo,
va a recorrer la memoria muchas veces
habría que sacar ese memory, poner, no
sé, el cold data ese que dijiste o hacer
una de esas, vamos a decir, artilugio
que hiciste vos con la calle con
números.
Okay, es verdad, si yo acá le pongo un
call data,
puedo ahorrarme un poco de eh de
memoria. Sí,
puedo ahorrarme un poco de memoria. Sí,
puedo ahorrarme un poco de memoria, no
hace falta, ¿eh? Sí, sí puedo hacerlo.
Pero hay otro problema más grave todavía
acá.
Fíjense cómo es el book for, ¿no? El
bookle for.
El tiene tres eh partecitas acá, ¿no?,
que están separadas por un punto y coma.
Sí.
Y esto se escribe entre paréntesis y
después se va a ejecutar ese book for
mientras se haya una condición y lo que
se va a ejecutar es lo que está acá
dentro de las llaves, ¿no? Entonces la
el primer statement que tenemos acá en
el Google for, ¿sí? Se va a dar
únicamente al principio, ¿sí? cuando
empieza for para inicializar y estamos
inicializando una variable i en cero.
¿Sí?
Después estamos diciendo, bueno,
mientras esa i sea menor a
el largo de números, o sea, números es
un array. Los arrays tienen un un método
que se llaman length, entonces yo puedo
acceder ese length números punto length
y esto me calcula la longitud de este
arrey, ¿sí? mientras sea menor,
ah, mientras sí sea menor a eso y me voy
a mantener en este loop y cada vez que
hago un ciclo de este rot se ejecuta
este de acá que me va a ser este i más,
es decir, ese ese i lo va a aumentar en
uno. ¿Sí se entiende hasta ahí?
Sí, entiendo que vos estás diciendo que
el numeros lens es el problema, que yo
debería poner ahí una variable fija como
un valor total y no andar sumando y
sumando y sumando y sumando y sumando,
porque ahí voy a recorrer muchas veces
el la matriz, el array.
Exacto. O sea, vos acá tenés un número
LED, es un número fijo. Entonces, ¿para
qué vas a tener que calcularlo cada vez
que vos haces un for? no tiene sentido.
Entonces, vos podrías, como dijo su
compañero, poner acá un wi, ¿sí?, por
ejemplo, l, sí, que calcule este número
lent
y guardamos y acá en vez de poner el
número l ponemos el l. Sí, se ve
eso, Cristian, perdón. [carraspeo] Es
porque cada acceso alcohol data consume
más gas, ¿no?
Claro, cada acceso, o sea, no es cada
acceso. Acá estamos haciendo una cuenta,
estamos agarrando la área de número,
vamos a estar viendo cuántos qué
longitud tiene. No estamos haciendo una
cuenta
y esa cuenta la estamos haciendo todas
las veces que entramos al for
y es y el resultado es siempre el mismo.
Entonces, ¿por qué no lo hacemos antes
de entrar al for y ya lo sacar como una
variable, no?
que está está entrando, está accediendo,
pero ya lo tiene calculado, no tiene que
calcular de vuelta todas las veces, ¿no?
Ahí dice Melisa Martínez, "Creo que me
perdí." Entonces, ¿cuánto tiene números
LED? Números LED es una variable que no
sabemos cuánto tiene porque viene de
afuera. Yo le puedo poner dos números,
tres, cu 5. Sí. Si le pongo dos, van a
ser poquitos. Si le pongo 1000 y acá
vamos a entrar 1000 veces a este [risas]
for y va a calcular 1000 veces la
longitud en el caso de que yo la ponga
acá el cálculo y lo peor es que siempre
me va a dar 1000. Sí. Entonces, ¿por qué
no lo calculamos una sola vez para
obtenerse 1000 y después seguimos acá
con el cálculo ya hecho, ¿no?
Se entiende, Melisa?
Genial.
Buenísimo.
Y dice, "¿Y no hay manual de buenas
prácticas para refactorizar el código?"
Es que esto ya no se trata de un manual
en sí, sino entender cómo está
funcionando por detrás, ¿no? Y y las
buenas prácticas son eh
depende, ¿no?
Bien.
[carraspeo]
Y
un poco más. Este I+ más sí el I puede
desbordar.
Sí.
¿Por qué?
Y porque se te acaba la cantidad de
número
de
Esto para acordar antes.
Ah, el l. Okay.
Ya. Esto va cortante porque este i más
no puede bordar. Y vos estás acá en cada
en cada paso
contando, ¿cómo se dice?
Haciendo un chequeo
y pero el len original no puede serse un
número tan grande que
sí 256 pero el i también
y esto es menor, ni siquiera menor
igual. Y de hecho, aunque fuera menor o
igual, es llegan hasta el mismo punto.
Si este wind, por ejemplo, fuera un,
no sé si, por ejemplo, si si este win,
por ejemplo, fuera un win 16 con L
y el otro un Windows 56, ahí sí, porque
este Windows 56 de length puede ser un
número gigantesco comparado con este de
acá, ¿no? Y ahí podría desbordar, pero
si los dos son 256
no puede desbordar.
Ah, el win solo es si vos no especificas
de 256.
Claro, acuérdate que esto es una máquina
de estado de una máquina de pila de 256
bits.
Okay. Okay. Listo.
Ahora, ¿qué? Ustedes van a ver muchos
códigos que lo que hacían era esto.
Igual que hicimos antes.
De hecho, les digo más, hacer I+ más o
hacer más i. Más más i es un poquito más
barato. Sí. Entonces veían esto y acá
esto de acá lo sacaban.
Hoy en día la verdad es que esto de acá
ya creo que a partir de la versión 8.
223 el
solit hace solo, por lo tanto, yo puedo
poner así, es exactamente lo mismo. Sí,
no va a haber problema.
Sí, pero bueno, sepan que eh que eso es
porque una decisión que se tomó a partir
de Solidio 8.23. Por lo tanto, ustedes
tienen que ir más o menos leyendo las
cosas nuevas que van saliendo y viendo,
okay, cómo se cómo se van tomando las
cosas, ¿no? Si yo acá hago incrementos
raros, por ejemplo, un, no sé, i más ig
no lo chequea. Sí,
por lo tanto, como no lo chequea, ahí sí
yo tendré que poner, por ejemplo, un si
esto no puede ser nunca mayor. Sí.
Eh,
he chocado no podría porque esto es
menor. Si fuera menor o igual y ahí sí
puedo tener un problema. Sí,
igual si se lo si le tiras a te lo hace
esta optimización. Si no, tienes que ser
comoita de Lázar y de Covid.
Los las inteligencias artificiales son
muy malas programando Solidity por
ahora. Al menos
si vos no especificá bien las cosas, eh,
te hace cualquier cosa. También lo mismo
que no hay un manual como preguntaron
por ahí para optimizar código. Alguien
que haya escrito esto, que haya matado
con el Solidity
[risas]
y puedes encontrar cosas por internet.
Sí, pero básicamente se trata de
entender lo que está pasando por detrás,
por eso que también le dimos toda la
primera parte, ¿no?
Eh,
esto es lo que te va a diferenciar a a
vos después de un programador, como
digo, que estudió JavaScript y dijo,
"Okay, voy a ponerme a estudiar por
Soliti." Y yo me acuerdo una vez me
reía, por un chico vino me dijo,
"Hace una semana que estudio Solity, ya
aprendí todo Soliti, ya se programar
Solidity." Yo le digo, "Mira, yo hace 5
años, ahora hace 8 años, pero en ese
momento hacía 5 años, yo hace 5 años que
programo Solity y todavía no sé
programar soliti. Me parece raro que vos
con una semana ya supieras programar,
¿no? Eh, un poco por esto, ¿no? Es
decir, hacer,
no, hacer un poco el tema de, bueno, voy
a hacer un programita que funcione es
una cosa, programar bien, ¿sí? eh
teniendo en cuenta todas estas
consideraciones, optimizaciones de gas,
optimización de seguridad y
es bastante complejo, ¿no? Manuales y
sí, seguramente vos podés buscar de
internet y vas a encontrar un montón de
buenas prácticas, un montón de cosas,
eh, pero siempre tenés que ir más allá
de todo eso.
Dice Melisa un adiós a a mi plan de
poner solit en CB, ¿no?
acá puedes eh ponerte mucho más profundo
y y ponerte realmente solito y senior y
y ser realmente un solito y senior. ¿Y
qué son 5 años? ¿Como estás diciendo
para ser senior en esto? 5 8 años.
Sí, 5 años de 10 horas cada día. Es
depende depende. [resoplido]
Yo di yo como dije hacía 5 años en ese
momento y no sea programar soliti. Ahora
hace ocho probamos 20 horas por día y
todavía no se programaban, así que
eh bien. Entonces
ahí te faltó el check, ¿no? Vamos a
poner probar con el cheque a ver cuánto
nos ahorramos en ese.
Eh, no, no lo vamos a ahorrar. Bueno,
acá sí porque estoy en la versión 8.5,
pero a partir de las 8.23 23 ya no te
ahorras nada. Sí, porque igual
igualmente te lo hace. Pero bueno,
justamente por eso quería un poco que
ustedes entendían cómo funciona todo
esto. Acá el length sí, obviamente que
lo descubriste muy bien, eh, eso te
ahorra bastante. Acá capaz que no tanto
porque ese ese length número es un cold
data, entonces barato entrar, pero
muchas veces
si vos dijiste que eran 10. De hecho, la
diferencia entre cata y memory eran 10
de gas dijiste.
Sí, sí, sí. Por eso, pero si vos estás
haciendo, por ejemplo, acá eh vos tenés
un win 256 número dos poner y vos acá en
vez de tomar este número que está en un
colatalo, tú vas tomando de acá que es
una variable de
que es una variable de estado y y vos me
haces esto.
Ahí sí yo te vocho el examen, digamos,
¿no? No, no en este curso no, pero en el
curso siguiente, por ejemplo, bocho el
examen. ¿Por qué? Porque básicamente vos
estás haciendo cada vez que vos entraste
for una entrada esta variable de estado.
De esa variable estado estás calculando
la longitud. Sí. Y básicamente con esto
estás consumiendo, no sé, tres veces más
que consumirías haciendo algo por estilo
como esto.
Ahí sí es muy grosera la diferencia.
Ahí es muy grosera la diferencia.
De hecho,
he tomado vista exámenes así a a puesto
de soliti para entrar a trabajar y
digamos por ese tipo de cosas los hemos
dejado fuera a gente. No
hay una pregunta en el chat.
En todo caso tendría que ir una rey.
Eh, ¿cómo? Una rey, Gabriel.
Sí. Bueno, a rey. Sí, es verdad. Acá
así. Yo yo lo que quería mostrar es que
si vos este número dos lo ponés acá
haciendo el cálculo,
haciendo esto, esto está muy mal.
Es que vos estás saliendo afuera a
consultar, volviendo, estás consumiendo
un montón de CPU. CL. Y
si vos me ponés esto y yo te digo,
"Okay, está mal, pero qué sé yo, capaz
que lo podemos dejar pasar." Si por
ejemplo, estás entrando una variable,
una variable memoria, okay, bueno, es
barato entrar una variable memoria,
¿okay? Te puede consumir
5% más, 10% más. Bueno, está bien. Ahora
hacer esto, como digo, ya es duele la
vista, se entiende,
porque acá ya no estás entrando una
variable de de memoria, sino estás
entrando una variable de estado para
hacer la cuenta. Para centrar variable
estado, haciendo la cuenta, haciendo el
bucle foro, volviendo acá, volviendo a
entrar variable estado, volviéndose a la
cuenta otra vez y otra vez. Sí, es está
gastando muchísimo más.
Y además gas que podrías evitar muy
fácil haciendo esto, ¿no? Agarrar esto
de acá y meterlo acá.
O si me dijeras, bueno, es un gas que no
puedo eh solventar, bueno, está bien,
listo. La funcionalidad mata gas, pero
si vos te lo puedes solucionar así con
una línea más de código y ya está, ¿me
entiendes?
Bien, entonces después tenemos el bucle
wild, ¿sí? Fíjense que es como el bucle
for, nada más que acá únicamente tiene
la condición, todo lo que es el I+ más o
el ceteo va por fuera. Fíjense que acá
pon el IG = a 0 acá afuera y después el
I+ más en vez de ponerlo acá lo ponen
acá. Acá sí. Fíjense que yo tengo i
menor a números pun. Sí.
Este i más está consumiendo más gas.
¿Por qué? Porque estoy haciendo el
chequeo cuando esto de acá no puede
desbordar. Acá yo tenía que poner un
check. Sí.
Después modificaciones de
comportamientos view y pure. Sí, esto ya
lo vimos. Sí. Tanto el view como el
pure.
Caso de estudio de contacto del
contador. Sí. Eh,
acá tiene un contador que ustedes pueden
agarrar, copiarlo y ponerlo allá.
Fíjense que tiene una una función que se
llama increment. Sí, hace un el contador
que cuenta esto de acá, que ya lo vimos
cómo hacía el decrement. Bueno, acá hace
el increment de la otra forma. Esto es
public, por tanto van a tener una
variable de tipo count. Acá tiene un get
count, ¿sí? Que también le devuelve el
mismo contador que acá. Por lo tanto,
acá les convendría o poner private o
eliminar esta función de acá.
Y acá después tienen una función de tipo
pure, ¿no?, que justamente recibe dos
valores y devuelve la suma de esos dos
valores sin entrar a ver esta variable
de acá. ¿Sí? Después tiene el resumen de
clases
y
listo con esa con esa guía dos.
Eh, quiero mostrar un poco acá la
estructura tres
para que se la tengan en mente. Fíjense
que acá estamos viendo ya estructuras.
Para ustedes eh
escribir una estructura escriben muy
similar a los que son en C para los que
saben. C. Sí, básicamente structura.
Fíjense que la primera letra está en
mayúscula y después adentro todas las
cosas que tiene dentro la estructura.
¿Qué es lo que sucede? ¿Qué es una
estructura? Bueno, básicamente es una
forma de agrupar datos. Sí, yo quiero
tener todos datos que son, por ejemplo,
corresponden a un usuario. Por ejemplo,
el usuario tiene un nombre, tiene una
edad, ¿sí? Podemos decir si está activo
o no está activo, ¿sí? Entonces, todas
esas cosas podrían ir una estructura.
Acá es donde nosotros dijimos, conviene
que las cosas estén ordenadas. ¿Sí? ¿Y
por qué conviene que las cosas estén
ordenadas? Bueno, porque acuérdense que
después para traer las cosas, si las
cosas están ordenadas, yo puedo hacer
como menos lecturas a eh a la variable
estado. Sí,
por eso eso lo habíamos visto cuando
vimos el tema de layouts.
Y acá tenemos entonces el string name,
el age y el isctive, ¿no? Y todo eso. Si
nosotros queremos escribir ahora una
variable que sea de tipo user, nosotros
de la misma forma que antes hacíamos
que nosotros llamáamos acá a esto,
¿sí? Acá nosotros tenemos que declarar
la estructura y de la misma forma que
nosotros,
sí, de la misma forma que nosotros
declaramos cualquier tipo, ¿sí? Acá
ahora en vez de ser un Windows 56, el
tipo va a ser este tipo de estructura
que sería user y yo le puedo poner acá
eh cualquier cosa, ¿no? Generalmente se
le pone user, user, ¿no? El eh fíjense
acá esto es una variable, por lo tanto
se minúscula y esto como es una
estructura está con la primera
mayúscula. Sí. Y esto lo podemos poner
esa pub, por ejemplo, si queremos
cargar, bueno, hagamos una función
rápido que cargue esa estructura.
Podemos poner function
eh set user.
Y acá dentro podríamos poner las cosas
que tiene este usuario, ¿no? Por
ejemplo, estas tres. string
name
Windows 56
H
yll
active, ¿no?
intentar usar la inteligencia artificial
que me está proveniendo las cositas,
pero
soy un desastre con eso. Soy más de
programar a mano. Eh, bien, el stream,
fíjense que me lo está marcando como
error. ¿Por qué? Porque yo le tengo que
decir si está en call data o si está en
memory por porque es un tipo complejo.
Sí. Y las otras de acá no hace falta que
se lo diga porque directamente me lo
ponen en call data, ¿sí?
Eh, pero acá si lo tengo que
especificar. Entonces, acá yo lo podría
poner, bueno, por ejemplo, ahí me ponía
memory, puedo poner memory o codata.
Acabamos poner col dat
podríamos decir, bueno, como son de
están internamente, si no son variable
de estado, le podría agregar acá eh por
convención el el guion. Muchas veces se
puede poner o acá al municipio o a veces
la ponen acá al final. Sí.
Y acá podemos setearlo. Y fíjense que
ella me está dando la inteligencia
artificial, ¿no? Me dice, bueno, el user
de acá es igual a
user que estamos casteando. Y adentro
del casteo le estoy dando los valores.
¿Cuáles serían? El name, el age y el
isctive, ¿no? Estos tres de acá. Name,
age, istive. Lo puedo poner así. O si yo
quisiera tocar uno en particular, ¿sí?
Por ejemplo, fíjense que acá yo quisiera
tocar el age y decir, no importa qué
edad me den, si acá afuera yo lo quiero
tocar, puedo decir, okay, bueno,
entonces us
igual a eh, no sé,
22. Yo tengo 22 años, así que mentira,
pero
ahí digamos lo puedo tocar, ¿si?
Entonces acá le podría dar cualquier
valor y acá me estaría poniendo este
user. H en metido. Fíjense que estoy
poniendo el user minúscula, ¿no? Porque
este user con la v mayúscula es el tipo.
Lo que es realmente la variable es este
user en minúscula, ¿sí? Y acá le estoy
poniendo 22. Yo después cuando quieran
leer acá y me va a poner el nombre y el
y exacto y como yo se lo puse y el user
y el y el age me va a poner siempre 22.
¿Por qué? Porque le estoy seteando este
22 después que yo le sete acá cualquier
valor. Sí. Si yo no le pusiera este
valor y estaría seteado por el valor que
yo lo sete acá. Corrámoslo. Sí. Veamos
cómo cómo funciona. A ver si esto está
acá porque estamos pues lo habíamos
borrado. Lo voy a sacar
y exalción clear para no confundirme y
le vamos a dar
un valor cualquiera y deploy. Sí. Total,
lo que nosotros ahora queremos correr es
este set user y ver el user. Si nosotros
vemos el user, primero vamos a buscar eh
user
acá, ¿sí? Y le damos a call. Fíjense que
tenemos el el string, el name, ¿sí? No,
no tiene nada. El H tiene cero y el
disactive está en false. Sí, porque
siempre sea siempre no existe un
indefinido, sino que los stream
inicializan vacíos, los enteros
inicializan en cero y los pulianos
inicializan en foss. Sí, si yo ahora
quiero setear un valor y bueno, acá le
puedo poner el set user
y le vamos a dar los valores y acá le
podemos poner por ejemplo el name
a 16 y le voy a poner
y le vamos a dar acá. Sí, fíjense que
acá funcionó. Y si ahora yo voy a ver
cuál es el valor que está seteado,
hacemos un code, fíjense acá, ya me dice
Cris 22 y true, ¿no? Por lo tanto,
rejuvenecí. Sí
se entiende.
No, no toma el valor que cargaste
después, sino el que inici pusiste 22 y
siempre va 22.
Sí, lo tomó, lo cargó todo, pero después
después de tomarlo y cargarlo acá se lo
carcodía, digamos. No,
está bueno ese recurso. Sí,
sí. Rejuvenecer,
¿no?
Eh, bueno, después tenemos la parte de
arrays. Nosotros ya estuvimos viendo un
poco de arrays, eh, o sea, trabajando un
poquito con el array, pero fíjense, acá
tenemos, por ejemplo, array dinámicos,
¿sí? Y dice, bueno, el array dinámico
vos le podés agregar todas las cosas que
vos quieras, ¿sí? Scores, eh, por
ejemplo, es un arr dinámico de Windows
56. Puedes ir agregando cosas. Esto es
un array dinámico de address. Puedes ir
agregándole cosas. Básicamente vas
pusheando.
Sí. Después tenés array fijos también.
Igual vos le podrías decir acá quiero 10
posiciones nada más. Generalmente eso en
en lo que es estado no se utiliza porque
vos en estado generalmente querés un
array dinámico para poder ir agregando
cosas. En un array en memoria sí se va a
utilizar un array fijo. Y de hecho los
arrays dinámicos de memoria van a ser
dinámicos entre comillas. ¿Sí? ¿Por qué?
Porque vos vas a tener que especificar
cuál es el tamaño de ese rey dinámico,
porque cuando vos sete las eh cosas en
memoria va a ser algo diferente que
cuando vos tenés eh las cosas en storage
que nosotros dijimos, "Bueno, se agrega
un puntero que te llega a otro lado." En
memoria no. En memoria las cosas una vez
que se fijan se fijan de forma contigua
los de memoria. Sí. memoria M0, M1, M2,
igual que tenemos S1, S2, S3 y así en
los slots. Acá también tenemos M0, M1,
M2, todo contiguo. Sí, acá no existe un
salto eh
de ese estilo. Entonces, vos tenés que
fijarlo.
Después tenemos la parte de mapeos. Sí,
mapeo son tablas de hashes eh
diccionarios para los que conocen
Python, en los cuales vos podés eh tener
una key
un valor, en este caso, por ejemplo, de
un address a un Windows 56 y se llama
balances. ¿Qué hace este balances?
Bueno, básicamente si vos acá
si vos tenés esto,
¿sí? Vos llamás a este balances
en una función y acá le pones un
determinado address, por ejemplo, 0x,
bla bla bla bla. Sí, esto te va a dar el
el balance, o sea, un Windows 56 de este
address. Si vos le cambias este address
por otro, ¿sí? Te va a dar el Windows 56
que tiene este de acá. Por lo tanto, por
eso sirve básicamente como balances.
Cuando ustedes tenían un token, por
ejemplo, cada address tiene un balance.
¿Sí? Entonces, si vos le mandás cuál es
tu address, básicamente vas a obtener
cuál es tu balance.
Eh, justamente esto es una tabla de
hash. Sí, fíjense acá dice una
estructura de datos tipo clave valor. Es
extremadamente eficiente porque permite
acceder a cualquier tipo de datos de
forma externa sin importar cuánta
información contenga el contrato. El
funcionamiento dice, "Imagino como una
base de datos donde ingresa una
dirección de Ethereum, obtienes un valor
asociado y las limitaciones". Dice, "Los
mapping no son iterables, es decir, no
pueden pedir al contrato que te dé una
lista de todas las claves guardadas. Por
eso a menudo se combinan con una rey."
Sí. Básicamente lo que te está diciendo
acá es que este mapeo sí no es iterable.
¿Por qué no es iterable? Porque fíjense
que la clave que vos estás dando, esto
de acá, si vos no lo estás guardando en
ningún lado, si alguien te lo da, vos
obtenés la posición de memoria donde va
a estar el balance de esa persona a
través de eso, ¿sí? Calculando con un
hash. Vos haces un hash de esto de acá,
¿sí? con la con el slot donde está eh
este balance. Si haces una combinación
del slot donde está este balance con eh
el adres que vos le estás mandando y con
eso calculas una dirección de memoria y
en esa dirección de memoria vas a tener
contenida este Windows 56 que tiene el
adres no eh si vos cambias cualquiera el
si vos cambias tanto el adres como el el
slot en el cual estás evaluando y bueno,
vas a cambiar justamente esa posición de
memoria y va a tener otro valor. Sí.
Entonces, ¿qué sucede? Es muy fácil, muy
si vos sabés cuál es el adres que estás
buscando, tirarle el adres y decirte,
"Okay, el adres tiene tanto." Pero si
vos querés ver, por ejemplo, hacer una
sumatoria de todo el balance que hay en
todo tu sistema, si vos tendrás que
agarrar y empezar a poner todos estos
adreses y a fijarte el balance y vos no
tenés guardado ninguno de estos adreses
porque no se guarda con esto. Se calcula
el hash, se ve la posición de memoria y
listo, pero no se guarda. Entonces, lo
que está diciendo acá la guía es que si
vos querés hacer eso de ahí, vas a tener
que agarrar este balance, vas a tener
que hacer un array, si de addresses,
¿sí? Vamos a poner acá, por ejemplo, de
addresses y ahí sí. ¿Por qué? Porque vos
acá podés ir pusheando en este address,
hacer un punto push de todos los address
que te vayan entrando. Sí, cada vez que
te entra un address, ¿sí? El 0x bla bla
bla bla, sí, y esto se va a ir agregando
a esto de acá y esto de acá sí lo puedes
iterar. ¿Cómo lo vas a iterar? Y bueno,
como lo vimos con este for de arriba,
que bueno, ya lo borré, pero ese for de
arriba que iba iterando, entonces vas a
iterar sobre esto y ahí sí, una vez
queeras sobre esto, vas agarrando los
diferentes adreses y los vas metiendo
acá en el balance para obtener cuál es
el balance de cada uno de esos y los vas
sumando. Sí, eso es lo que se conoce
como mapeo iterable. Sí. Y bueno,
dejamos hasta ahí porque ya estamos
pasaditos de hora. Sí, fíjense que
después tenemos el tema de mapeos
anidados. Eh, o sea, mapeos de mapeos,
identidades de ejecución, sí, el mesi.
Sender,
eh, después caso de estudio, registro de
usuario, user registry, resumen de
clases, ya casi estamos. Y después,
básicamente desplegar un contrato y
crear un contrato y representar una
criptomoneda. Sí. Así que bien, dejamos
acá por hoy. Si tiene alguna duda, me
puedo quedar 5 minutos, pero no damos
más temas y ya corto la grabación para
que no sea tan larga.
Muchas gracias, Cristian.
Dale, nos vemos.
Chao.
