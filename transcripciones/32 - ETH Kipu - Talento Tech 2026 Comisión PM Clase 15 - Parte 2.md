# 32/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 15 - Parte 2

- **Video:** [https://www.youtube.com/watch?v=UBzKCd9itVY](https://www.youtube.com/watch?v=UBzKCd9itVY)
- **ID:** `UBzKCd9itVY`
- **Canal:** ETH KIPU
- **Fecha:** 2026-05-15
- **Duración:** 54:54

---

## Transcripción

Okay, retomando un poco, entonces,
habíamos visto esta función de get user
address, ¿no? Habíamos dicho que tiene
un límite la cantidad de eh valores que
nosotros podemos devolver. Por lo tanto,
tengan mucho cuidado con los e de tipo
dinámico, en el cual uno puede seguir
agregando y agregando indefinidamente,
pero llega un momento que cuando ustedes
quieren sacar y esto puede pasar un
error y si ustedes hacen esto, ¿qué va
qué va a pasar? van a tener un ataque
deoses, por así decirlo, ¿no? Pu van a
agregar tantos usuarios que después esta
función queda inutilizable.
Eh, bien ahí es esa
ahí vimos entonces esta
e el funcionamiento este de user
registry. Vamos a programar una
criptomoneda sencilla.
Sí.
Creo que estaba acá en este mismo coso
que decía crear un contrato que
representa una criptomoneda para el
curso. Sí, este contrato debe permitir
consultar balances, transferir saldos
entre cuentas y agregar la valiación que
sean necesarias.
Sí, vamos a copiar esto de acá y vamos a
intentar de construirlo. Sí, yo voy a
agarrar, vamos a crear otro documento,
create new file. Le vamos a poner token
y vamos a empezar a construirlo.
Sí,
pero necesito su ayuda. Alguien que me
ayude a ver cómo construirlo. Voy a
poner acá las cosas que nosotros tenemos
que eh
que tener en consideración, nuestras
especificaciones técnicas y vamos a
empezar. ¿Qué es lo primero que tenemos
que que poner? Bueno, el
la licencia, ¿no?
SPDx licentifier. ¿Verdad?
Sí. Sí.
Okay. Después de eso,
¿qué va?
La versión del compilador.
La versión del compilador. ¿Cómo se
ponía?
Pragma
Pragma Solidity y la versión, ¿no?
Fíjense que cuando puse Prag, le di
enter, ya me lo puse solito, ¿no? Y lo
también, así que lo podemos sacar.
Y la versión, ¿qué con qué versión la
compilamos?
0.8. Era una de las últimas.
0.8. Sí, podemos ponerle punto 30 y
podemos hacer que sea mayor.
Sí.
Bien, con eso ya dijimos que con qué
vamos a compilar. Ahora tenemos que
poner el nombre del contrato. ¿Cuál va a
ser el nombre del contrato?
Criptomoneda. No sé.
token criptomoneda, algo de eso. Bueno,
pero ¿cómo se pone?
Ah, contract.
Contract
y el nombre.
Mir, pon criptomoneda, ¿no?
Te escuchó y todo.
Me da miedo esta.
Eh, pero hay una cosa que si yo le llamo
criptomoneda a esto de acá, este archivo
también le debería llamar criptomoneda,
así que vamos a cambiarlo.
Ah, eso siempre es así.
Sí, eh, o sea, fíjate que no chilló, o
sea, no es un error, pero sí es un
es como sono.
Convención. Por convención.
Claro, es una convención. Igual lo vas a
dar a una auditoría, te lo van a marcar
como error.
Eh, bien. Entonces, comencemos. Dice,
"Bueno, crear un contrato que representa
una criptomoneda para el curso.
Podemos decir, listo,
está el contrato.
Ahora, este contrato debe permitir
consultar balances. Si debe consultar
balances, ¿qué es lo que tenemos que
tener acá?
un
sender.
Bueno, pero si quier envengo
que definir primero las variables, ¿no?
No tengo definir
la variable pública, la el token.
Claro. ¿Cuál es la variable que
necesitamos para poder consultar el
balance?
Adre.
un balance, ¿no? El balance es un
Windows 56, ¿no? Ah,
pero ¿qué es lo que pasa? Cada uno va a
tener su propio balance, ¿no?
Entonces, tienes que hacer tienes que
hacer un struck, un estructos datos,
¿no? Un estruct.
Pero si cada uno va a tener su propio
balance, si cómo representamos al cada
uno
como user. Un user.
Claro. Pero, ¿cómo representamos a una
persona en web 3?
Ah, con address.
Exacto, con un address. Entonces, un
address va a estar apuntando a un
Windows 56 para poder tener balance,
¿verdad?
Esto, ¿cómo se llama? Cuando un ades
apunta a un Windows 56,
un mapping.
Exacto. Mpping. Sí,
nosotros acá tenemos un mapping, ¿sí?
Una 256 y que se llama balance o
consultar balances. Sí, se llama balance
porque es uno solo. ¿Y acá qué nos está
faltando?
Y ahí no tenés que poner la variable
memory antes de balance o private o una
cosa así.
Esto va a estar en storage porque
estamos poniendo fuera de una función y
aparte queremos que sea persistente,
¿no? No queremos que el balance se
pierda una vez que se termine una de
ejecutar una función. Queremos que
permanezca en stores, en memoria de
memoria, digamos, resistente.
Y bueno, ahí tenés que o crear un
constructor o leerlo.
No, pero antes de eso, o sea, todavía
estamos acá declarando la variable. ¿Qué
nos falta para declarar la variable?
Ah, si es público el Ahora sí, porque
pero porque vos pusiste visibilidad, si
no ni me doy cuenta.
Claro. Bueno, y qué visibilidad le
ponemos.
Y eso es es public. Sí.
La es te está ayudando, ¿no?
Sí. No, pero igual si vos pones
visibilidad, ya me doy cuenta que es
pública.
Ajá. Exacto. Bueno, ahí tenemos la la
visibilidad.
Bien, si le ponemos la public, ¿sí?
Quiere decir que ya vamos a tener un
getter, ¿no? Que nos va estar dando este
balance siempre que nosotros le pongamos
un address como habíamos visto antes.
Por lo tanto, ya tenemos la parte de
consultar balances. Esto listo.
Igual, espera, Cristian, si vos no le
ponías public, igual era public. O no,
no.
Si vos no le ponés public por defecto,
te lo pone como internal.
Ah, okay.
Pero siempre conviene eh definirlos.
Okay.
De hecho, si no lo definiste, lo van a
marcar como un error en una auditoría,
porque acuérdense que siempre tenemos
que saber exactamente qué es lo que
estamos haciendo, ¿no? Ser explícitos.
Y si le hubiese puesto private como
privad,
no lo puedes consultar de afuera. Si le
pones private,
claro, si vos le ponés private, ahí no
tenés un getter. Sí,
claro, porque yo no quiero que lo que
los otros lo miren.
Cualquiera te lo va a poder ver igual
porque acuérdate que las variables
privadas en Solity no son privadas.
Ah, cierto.
Y por eso yo te puedo leer el SL.
¿Para qué le ponen private si no son
privat?
¿Para qué le pones public para que sea
public si cualquiera lo puede ver?
Para para tener una forma de cómo la vas
a usar. Si si vos le pones private, por
ejemplo, y este contrato lo heredas en
otro, si vos haces un contract eh
cri
criptomonedas,
sí, si vos haces esto y la das acá, no
vas a poder escribir balance.
es una función,
por ejemplo, lo que sea, y vos querés
escribir balance
igual a tres y esto te va a dar error.
¿Y por qué? Porque es privada. ¿Cómo
harías para poder escribirla? Bueno, acá
con intern
y ahí sí la puedes escribir.
Sí. Y ahora, ¿qué es lo que pasa? Bueno,
si vos lo querés ver encima de desde
afuera para que directamente no tener
que escribir el get y bueno, acá le
puedes poner public,
¿me entiendes?
Okay.
Es por un tema de cómo se trabaja. Vos,
como te digo, cuando escribís, tenés que
saber exactamente qué estás escribiendo
y para qué. Por lo tanto, si vos le
ponés acá private, ¿sí? Es porque vos no
querés que cuando vos heredes ese
contrato o que otra persona lo herede,
te la vaya a modificar.
O sea, ni siquiera es read only cuando
le pones pret.
No, no, no es read only.
Okay.
Ni siquiera.
Claro, es por eso. Acuérdense que
siempre en Solit intentamos hacer las
cosas totalmente visibles, ¿no? O sea,
saber qué es lo que estamos haciendo con
cada línea de código.
Gracias.
Bien, entonces con esto ya nos da eso.
Si ustedes quisieran, por ejemplo,
decir, "Okay, yo no le quiero dar la
velocidad private public, le quiero dar
la versilidad private, ¿sí? que muchas
veces se ve, se le puede poner private y
muchas veces acá también se le pone el
guion para decir, bueno, est esta
eh es de tipo privada, ¿sí? Y después
podemos hacer un getter function que se
llame balance,
eh, que sea de tipo vio porque voy a
estar leyendo
public o externo, mejor dicho, para que
sea
eh con la mínima visibilidad posible.
returns.
Y acá le podemos retornar eh, obviamente
Windows 56
y escribimos esto y le hacemos un return
del balance.
Sí.
Y mal.
Ah, bueno, claramente porque acá nos
faltó el, fíjense que el balance tiene
un address, ¿no? Tiene que llegar un
address que acá sería,
vamos a ponerlo así, de hecho, balance
off, ¿sí? Vamos a dejar este balance así
y vamos a poner acá balance off y acá le
ponemos un address
y no sé, acá le podemos poner cualquier
nombre.
Sí. Entonces, fíjense que acá puso una
variable de tipo privada, pero después
le hizo un getter que se llama balance
off, ¿sí? al cual le doy el address y le
devuelvo eh eso de ahí. Sí, le pude
cambiar el nombre.
¿Sí? ¿Por qué? Porque este nombre es más
representativo que este de balance. Sí.
Y bueno, con eso ya podemos consultar
balances. Ahora dice transferir saldos
entre cuentas. Sí. Por lo tanto, tengo
que tener una función que se llame
transfer. Sí.
¿Qué qué datos vamos a a tener que
mandarle a una función transfer?
El sender y el receiver
y el amount.
Claro, podíamos decir sender, receiver
y amounts, ¿no?
Pero, ¿qué es lo que pasa? Vos en el
transfer únicamente puedes transferir
tus propias monedas. Por lo tanto, el
sender mucho sentido no tendría. Sí,
el rece y el amount. Sí, obviamente sí.
Igual lo vamos a dejar y vamos a poner
esto como si fuera una función internal.
Si vamosamos acá el transfer, pero como
internal.
El sender, obviamente va a ser de tipo
address. Sí, este receiver va a ser de
tipo
de
Bueno, me molesta un poquito la
inteligencia artificial. Eh,
me escribir cualquier cosa
y el amado va a ser de tipo Windows 56.
Sí.
Y después, ¿qué qué podemos decir?
Bueno, podemos decir que esto va a ser
una función de tipo internal, como
inteligencia artificial y abrimos y
cerramos para
poder empezar a escribir acá la función.
¿Sí?
Bien. ¿Qué significa de tipo internal?
Que va a poder ser llamada por
funciones que están acá dentro del mismo
contrato o funciones que están de
el. Si yo la quiero llamar de afuera, no
la voy a poder llamar. Sí. Por lo tanto,
esto de acá te ha como protegido ahí
dentro del contrato. Sí.
¿Y qué es lo que tenemos que hacer?
Bueno, cuando nosotros transferimos,
¿qué es lo que hacemos? Le sacamos de
balance a uno y se lo ponemos a otro.
¿Sí? ¿Cómo haríamos eso?
y tendría que poner que restar el
balance del
Okay. ¿Cómo hago eso? ¿Cómo lo escribo?
¿Habrá alguien que me diwer?
Porque tengo que diferenciar
el el primero del segundo, al que le doy
y al que le saco.
La inteligencia artificial me molesta
inteligencia artificial. me ruine la
clase,
¿no? Fíjense que acá el balance, sí,
con el sender,
digamos, el balance sender es
básicamente el balance que tiene la
persona que lo está enviando.
A ese le restó el amount que le estoy
mandando y el receiver sí se lo sumo.
Entonces, se lo resto al sender y se lo
sumo al receiver. ¿Me entiendes?
Igual para primero no tendrías que
chequear que el balance sender tenga
saldo, digamos.
Sí, pero ¿qué pasa en este caso? ¿Con
qué estoy confilando?
Con la 0830.
¿Y qué pasaba si yo acá hago
5- 6?
Eh, te daba overflow, digo, no, algo
como
hay un underfow, ¿no? Y esto
y esto, ¿qué pasa cuando estamos
compilando con la 8.30? Cuando hay un
underflowierte.
Ah, o sea, no te preocupar por eso, como
el compilador ya se ocupa.
Sí, acá se está ocupando solito. De
hecho, vos te puedes preocupar y de
hecho está bien preocuparse. Sí, vos
podés poner acá, por ejemplo, un
require,
nosotros mismos require el otro día,
¿sí? Y podemos decir, "Okay, bueno,
require que
este valor
sea mayor
o igual que la mount. Bueno,
ahora sí la quería. Ahí está. Mayor
mayor o igual que el amount. Sí. Y si no
es que se ponga sal,
¿no?
Ahora
igual por eso vos en una auditoría
tendrías que ponerlo así, por más que el
compilador
se ocupe por vos.
Lo ideal es que vos lo pongas así. Pero,
¿qué es lo que pasa? Vos acá ya estás
chequeando ahora eso de ahí y acá lo
estás chequeando de vuelta. Por tanto,
acá lo estás chequeando dos veces. Por
lo tanto, en la auditoría también te
pedirían que vos esto lo pongas en
unchecked.
Ah, buenísimo. Y así gastas menos gas.
Sí,
Cris ahí en el check no consume, no
consume gas.
No es que no consume gas, sino que no te
chequea esto, porque si no esto te lo
está chequeando, ¿eh? siempre que una
cuenta.
Entonces voy a poner en check está no
chequeando esto acá. ¿Por qué? Porque ya
lo chequeast acá. Y otra cosa, acá esto
ya lo chequeé. Ahora esto de acá es
imposible que suceda.
Sí,
esto es imposible que suceda.
¿Por qué? Porque fíjate que le estamos
restando a uno para ponerla a otro.
Sí.
Y si este lo tenía, digamos que digamos
y se mantiene, digamos, porque se está
manteniendo digamos la invariante, ¿no?
Porque se está restando uno, se está
asumando el otro. Si yo tengo un,
digamos, un máximo, eh, el otro no va a
poder superar ese máximo, ¿se entiende?
Ah, esa parte no la entendí.
A ver, ¿cómo explico?
Vamos a hacerlo más visible
acá. Mira, ya me lo hizo. Me escuchó la
inteligencia artificial. Total supply.
Este total supply tenga cuántos
cuántas criptomonedas hay en total. Sí,
que de hecho lo vamos a crear. Vamos a
poner acá un constructor.
Sí, porque acá nosotros estamos haciendo
una transferencia de moneda, pero la
verdad que no se la asignamos a nadie
esta moneda, por lo tanto, ¿qué estamos
transfiriendo? No, no, no existe una
transferencia.
Pero nosotros lo que podemos hacer es
que en el constructor se le asigne ese
balance a la persona que está emitiendo,
que está construyendo, ¿no? Entonces
este balance le puedo poner el messer
que es la persona que destruy el
contrato,
que le demos
tokens.
¿Y qué vamos a hacer? Bueno, este supply
también va a tener
tokas.
Sí.
¿Qué es lo que pasa? Si ustedes ven esto
de acá, cuando yo
resto de un lado y sumo del otro y le
saco uno y le saco el otro y le pongo
acá, ¿sí? Nunca va a superar este
estudio de supply. Siempre este estudo
de supply se mantiene constante. ¿Se
entiende?
Yo tengo 50 acá y 50 acá y de este 50 le
mando 10 y voy a tener 40 acá y 60 acá.
Pero la sumatoria siempre va a dar 1000.
Se entiende eso
es lo que veíamos de la curva de la caja
de conversión y todo eso.
Claro, es la constante, la constante que
veíamos que que tenía que ser en una
cantidad. Ahora, si alguien saca eh
token del circuito, ¿qué es lo que pasa
con eso?
O sea, si vos lo quemás y bueno, acá se
reduce, pero también se va a reducir
este to supply.
La cosa es que este to supply siempre
tiene que tener la suma de todos. Sí. Es
decir, van a ser el sender más van a ser
receiver. Claro, es la constante, la K
que que Sí, claro, el K que habíamos
visto.
Esto es lo que se conoce como una
invariante.
Sí,
es una invariante. ¿Por qué? Porque
nunca varía. O sea, vos puedes tener
20,000 billones de personas que tienen,
si todas las sumas todas, te da el set
supply. Después se pueden intercambiar
el dinero, pasarse de un lado para el
otro, hacer cualquier cosa que quieran,
pero el total supply sigue constante.
¿Sí? ¿Por qué? Porque si se resta uno,
se suma en el otro. Sí.
Esto se puede estudiar formalmente, ¿no?
Se hace una un
estudio formal, un análisis formal, ¿sí?
Y puedes demostrar, digamos, que este
supply se mantiene constante y se resta
de un lado y se suma del otro, la misma
cantidad. Sí, es como cuando hacer
cuando tiene una ecuación que suman de
un lado la misma cantidad que suman del
otro, restan de un lado la misma
cantidad que restan del otro, se
mantiene constante. Sí.
Entonces, ¿qué sucede?
Este de acá, si yo si si
por más que reciba todos los tokens, o
sea, que yo le mande todos los tokens,
siempre nunca va a poder superar este to
supply. Por lo tanto, esto de acá sí
nunca va a poder hacer un overflow. ¿Sí?
¿Por qué? Porque máximo va a tener 1000
tokens, ¿sí?, que es lo que está en el
total supply. El total supply ya está
limitado por Window 56, igual que el
balance. Sí
se entiende.
Sí, sí.
Bien. Entonces, con esto tenemos la
parte de la transferencia.
Tenemos la parte de la transferencia o
no la tenemos la parte de transferencia.
No, no, todavía no tenes la
transferencia.
Claro. Fíjense esta función.
Tienes que poner la función transfer.
Ahora tenés que hacer el transfer.
Claro, esta es una función interna, si
nadie la puede llamar. Nosotros ahora
tenemos que poner la función externa que
la gente la pueda llamar. Sí. Entonces
puedo hacer una función function.
A ver si me la pone solita la intensa.
Ahora sí me sirve.
Me pone la función transfer. Sí. ¿Que
qué es lo que va a hacer? Y bueno,
llamar esta función transferencia de
acá,
pero la voy a llamar así como si nada.
¿Qué pasa si yo hago esto?
Bueno, primero esto no no existe acá el
sender. Si yo en el transfer tengo el
receiver nada más y el amount. ¿Por qué
tengo el receiver y el amount? Y
básicamente porque el
sender sería la persona que está
llamando esta función. ¿Y quién es la
persona que está llamando esta función?
¿Qué me dicen? ¿Quién es
el center? El message center.
Exacto. Como digo, Maruina la clase de
inteligencia artificial.
Ahí está. Sí. Entonces, el M
tienes que usar el pad. Usar el el pad,
el pacios
todo.
Voy a escribir el código en Paint
o en un notepad,
en el celular, ¿viste?
Viste que al final volvemos a la fuente,
¿no?
Eh, bien. Entonces ahí estamos llamando
la función de transferencia, ¿sí? Le
estamos mandando este messi. Center,
¿sí? Entonces, siempre que nosotros
llamemos a este no lo vamos a poder
llamar, vamos a llamar este y este le
pasa el Messi. Que sos vos, ¿no? Igual
sí
consulta porque esta sería la función
real que llamaría el que llama contrato,
¿no? Y dónde está la parte que ponerle
el que llama contrato dice, "Toma, te
doy tanto gas." O sea, nosotros no
estamos procesando el gas ni nada acá,
¿no? El gas va a tener que ver con la
cantidad de cálculo que vos estás
haciendo acá. Por eso acá lo pusimos
esto en el LCK para ahorrarnos gas.
¿Quién es el que está ahorrando gas? Y
bueno, el que llama esta función
transferir más barata que si vos no
pones esto, por ejemplo.
Sí, pero el mismo contrato, tipo, no se
encarga del gas, no hace nada con el
gas, no
estáagas, nada,
no.
El que el que paga el gas siempre es la
EOA que lo llama. Así, acuérdense el que
inicia la transacción este,
por eso definimos transacción de
mensaje, por eso lo diferenciamos.
Okay. Pero nosotros a nivel contrato es
como que es otra capa, como que no se
maneja el gas a nivel contrato,
¿no? El gas únicamente a nivel eh
transacción, no a nivel mensaje.
El gas lo paga este, no este.
Okay. Okay. Gracias.
De hecho, es el mismo gas que paga este,
que se utiliza para ejecutar este
código, que se utiliza para ejecutar
este código y no se le paga el gas al
contrato en sí, sino que el gas se le
paga al que está ejecutando ese código,
que es el nodo,
¿sí? A la EBM que está corriendo,
digamos.
Sí. Y bueno, acá tenemos la función
transfer. Sí. Entonces, ya esta parte
dice transferir saldo entre cuentas.
Listo.
Agrega las validaciones que sean
necesarias. Sí. Bueno, una variación
podría haber sido esta, ¿no? Que acá lo
hicimos con el require.
¿Hay otras variaciones que podemos
llegar a hacer acá?
que el receiver no sea el mismo del
sender.
Podríamos decir como que no se pueda
mandar a sí mismo, ¿no?
Claro. Bueno, si si vos querés podríamos
decir, bueno, require
podría ser una buena.
O sea, requerimos que el require sea el
reiver sea distinto al eh center, ¿no?
Ahí dice, no se puede mandar
transferencia a ti mismo. Sí.
¿Y qué otra cosa podemos qué otra cosa
podríamos eh chequear?
Y la cantidad que no sea cero, por
ejemplo.
Exacto. Que la mod no sea cero. ¿Dónde
lo vamos a tiar eso?
Y primer transfer, ¿no? O sea, el de
abajo
claro, podemos chequearlo acá, ¿no?
Sí. Eh, bien. Entonces, esto no se cero.
¿Qué otra cosa podemos chequear?
¿Qué pasa si vos le ponés a al reiver te
equivocas y le mandas la dirección cero?
¿Qué vos querés que autoricie o no a
mandar? Como si fuera con un bull.
¿Queres hacerle?
¿Te autorizo o no te autorizo? Si vos si
vos le mandás a la dirección cero, sí,
eh, no sé, 50 tokens y esos 50 tokens no
lo vas a poder rescatar nunca. ¿Por qué?
Porque este reciber lo recibió y no lo
va a poder rescatar nunca. Podrías hacer
una una función que te diga, bueno, que
el require, este receiver, por ejemplo,
ya distinto cero
al de cero, ¿no? Por lo tanto, acá tengo
que castear ese cero
y podemos ponerle
a
Sí,
capaz que no lo necesitamos, no, depende
de lo que nosotros queremos hacer, pero
bueno, fíjense que lo que estamos
haciendo acá es intentar de chequear
todas las entradas que tengan valores
lógicos. Sí,
es una recomendación. Siempre chequeemos
que todas las entradas tengan valores
lógicos, por ejemplo, que la mo no sea
cero, que el recién no sea cero, sí,
etcétera, que el sender, bueno, en este
caso sender no es cero porque es la la
persona que lo envía y aparte eh nadie
tiene el cos address, pero bueno,
siempre hagan ese tipo de chequeos, ¿sí?
Y bueno, ahí tenemos un poco la parte
esto de chequeos, ¿no? De variaciones.
Listo.
Sí, con esto tenemos nuestra primer
criptomoneda. Sí, intentemos decorrerla.
Vamos a ir a despollarla. Sí.
Quiero
esto
y para depollarla. Bueno, esto ya me
está dando, así que listo. Deploy
Cris,
¿qué?
Eh, sí, te comento, Luisa pregunta si
sería conveniente también chequear que
los adreses tengan el la longitud
apropiada para que no entre un
eh, no sé, con un dígito menos. En
realidad eso no porque te lo va a
chequear directamente el
la EBM, ¿no? O sea, vos le está diciendo
que acá tenés que recibir un address y
si está mandando cualquier cosa no te lo
va a recibir. Tiene que tener siempre la
longitud de apropiada.
Okay.
Sí. Entonces, bueno, ahí le apreció el
contrato. Fijos que ahora voy a copiar
este área de acá porque justamente le
dijimos que va a tener todo el balance,
que van a ser 1000. Así que vamos a ver
si es verdad, si se cargó con ese
balance de 1000.
Sí, balance off. Le ponemos el
la dirección, le damos call. Y fíjense
que acá efectivamente tenemos 1000. Si
nosotros vamos a otra dirección, ¿sí?
Vamos a ir al account uno, por ejemplo,
y le ponemos esta dirección y acá vamos
a tener que tener cero.
Sí, vamos a volver a la a la cuenta dos.
¿Por qué? Porque vamos a hacer una
transferencia a esta cuenta uno.
Sí, vamos a ir acá a la función
transfer. Y fíjense que dice, bueno,
receiver, ¿quién va a ser? Bueno, el uno
y cuánto le vamos a mandar. Y bueno,
mandémosle 500 y la mitad y le damos
transacct. Sí, fíjense que acá se hizo
la transacción y ahora podemos agarrar,
ir a ver eh en la función
balance off cuánto tiene cada uno. Si
esta primer esta primer cuenta, si le
hacemos un call, fíjense que ahora tiene
500 y si nosotros vemos la la segunda
cuenta de AB,
obviamente también va a tener 500, ¿no?
Por lo tanto, está funcionando acá
nuestra primer criptomoneda, ¿sí? o
barra token.
Se entendió
alguna pregunta.
Ya
se los copa ahí. Sí. Bueno, require, ya
lo vimos. Sí, revert,
¿cómo es que funciona esto del revert?
Bueno, fíjense que acá nosotros estamos
poniendo require, por ejemplo, y este
require acá, acuérdense que esto, por
ejemplo, puede tener muchos caracteres y
no los conté, pero bueno, capaz que
tiene muchos caracteres y puede traernos
e
el tema de que gastemos más gas. Sí.
¿Cómo se suele poner? Bueno, se suele
utilizar lo que se llaman custom errors.
Sí. Yo puedo definir un error, ¿sí? Que
se define de esta forma. Error,
eh,
co address, por ejemplo,
y después esto lo vamos a lanzar. Sí.
¿Qué es lo que hace cuando haces esto?
Bueno, básicamente lo que está haciendo
es un ketchup 256
de esto de acá.
Sí. Y te toma los ocho primeros los ocho
primeros caracteres, o sea, los 4 bytes.
Sí, los primeros 4 bytes.
Esto como si fuera básicamente un
selector, ¿sí? Con 4 bytes ustedes acá
estarían ahorrando esto de no poner
tantas cosas acá, ¿sí? tantos dígitos
y tendrían algo representativo. Si pues
si esto después lo carga en una IBI con
una interfaz en la cual pueda eh ver
machar, digamos, cuál es el el error con
el el código de error, ustedes podrían
distinguir que qué es lo que está
pasando. Si como habíamos dicho ahí,
había dicho uno de ustedes, bueno, me
conviene mandar un código de error, ¿no?
Bueno, esta es la forma en que uno manda
un código de error. Sí, es un código de
error, pero customizado.
¿Y cómo se cómo se hace la la
comprobación?
Bueno, básicamente se utiliza el revert.
Sí, el revert cuando ustedes ponen
revert así, esto de acá revierte sin
ninguna condición. Sí, este revert no
manda nada. Es más barato, obviamente,
que un rever que manda cosas, pero yo
acá le puedo poner también eh datos,
información, ¿no? Como decir, "Bueno,
repetido por tal cosa." ¿Qué es un poco
lo que está haciendo acá? Sí.
Ahora si yo le pongo cosas acá,
obviamente va a ser más caro, ¿sí?
Entonces, ¿qué es lo que hago? Es,
bueno, mandar un revert, ¿sí? Pero que
lo que esté mandando acá no sea e
no sea algo
muy caro, sino que sea algo barato. ¿Que
qué sería eso barato? Bueno, lanzarle
este mensajito, si que son únicamente 4
bytes.
Entonces yo lo revierto y le mando este
mensajito.
¿Qué es lo que sucede acá? Fíjense que
yo al hacer estoy,
estoy revertiendo, ¿no? Vengo por acá,
hace este require, pasó, hace este
require, pasó, vengo acá, revierto. Esto
de acá revierte sí o sí. Entonces, ¿cómo
tengo que hacer para que no revierta sí
o sí? Sino que sea una sea una versión
condicional. Si por ejemplo, que el
receiver
no puede ser el adrecero. Si el reciber
es el adresero, esto se revierte. ¿Qué
haría ahí? ¿Qué tengo que poner acá?
Un condicionador, un if. condicional un
if. Exacto. ¿Y cuál sería la condición
del if?
Si cer es igual a Si es igual a cer que
revierta.
O sea, que si rever
es igual a cer entonces que reabierta.
Podemos hacer así.
Sí. O también como es una sola línea, se
suele escribir sin esto
directamente esto acá en la misma línea,
así porque es una sola línea. Sí,
básicamente lo puso ahí.
¿Sí? Entonces, poner esto funcionalmente
es lo mismo que poner esto, pero poner
esto es más barato y por lo tanto si
ustedes van a hacer una auditoría es
mejor que lo tengan así. Esto es lo que
se conoce como custom errors.
Sí.
Y otra cosa, si ustedes se fijaron acá,
cuando yo pongo require, esto es lo que
yo requiero, por lo tanto, eh está
negado con respecto a esto de acá, que
es si pasa tal cosa, reabierto. Sí,
fíjense que son eh signos opuestos
para hacer la misma condición,
pero bien, ahí lo tenemos. Y bueno, eso
estaría funcionando. Fíjense ahí compiló
sin problemas.
Eh, ¿qué otra cosa tenemos? Bueno, los
reverts
acert. Sí, el acert es una cosa que
no se usa mucho, la verdad,
al igual que el revert pongo
así, esto revierte. Si yo le pongo acert
con una condición,
¿no? Acabo el require con una condición.
Pero si yo acá pongo el require, perdón,
con una condición. Rever no se pone
condición. Eh,
¿qué iba a decir? No, aquí
pone cualquier cosa. No, no quiero poner
eso. E
acá el asert.
Si nosotros este require le ponemos un
acerto.
Va a
a a revertir también. Yo le puedo poner
acá una condición. Si por ejemplo, no
sé, esto de acá,
sí le puedo poner esta condición, sí,
que el acert va a revertir y sería igual
más o menos que poner el revert, ¿no?
Revert. Yo le pongo ahí también, como
habíamos dicho, esto acá y también va a
revertir de la misma forma.
Bueno, en River no require,
así
yo puedo poner este require sin ningún
sin ningún mensaje y básicamente sería
eh muy similar. ¿Qué es lo que sucede?
Este acert se utiliza generalmente para
lugares donde el código no tenga que
llegar nunca.
pantallazo azul de Windows, por ejemplo,
¿no? Ahí sería un acertón
por cero, ese tipo de cosas. Eh, este
require, ¿no? Este require es cuando vos
tenés algo que no sé o que chequeas,
¿no? Un chequeo de de variables
entradas.
Antes, en antigüedad este require
funcionaba con el off code que tiene que
ver con el revert. Sí, por eso eso ahí
me confundí con revert porque esto
funciona con el revert. Esto de acá
funciona con un código que se llama
invaliue.
Entonces, si ustedes ven un poco la
información por ahí, van a ver que e
van a ver que decía que cuando uno
utilizaba el acertas
libre se te consumía, mientras que
cuando utilizabas el require, el gas que
tenías libre se te devolvía. Si esto es
porque el off code que está utilizando
en este caso era el invalid y este code
que está utilizando era el offer si son
los últimos dos, el fe y y el FF.
Ahora, ahora ya no es más así. Sí. Y
tanto este como este require utilizan
los dos el revert, por lo tanto, esa
condición que van a encontrar ahí por un
montón de lados no es válida. Sí, se lo
explico para que lo tengan en
consideración. Siempre se les devuelve
el cas que queda, pero este únicamente
se utiliza, como digo, para lugares
donde el código no debería llegar nunca.
Sí.
Después tenemos owner, librerías yable
modifier. Okay. ¿Qué sucede si yo ahora
tengo por compliance, ¿sí?, que esta
transferencia, ¿sí?, o sea, tiene que
poder ser hecha, digamos, desde una
cuenta a otra cuenta. Si ya no tengo un
transfer, sino tengo un transfer from,
que vendría a tener más o menos este
campo, el sender, el receiver y el
amount, pero tiene que ser controlado.
¿Sí? Entonces, voy a copiar esto de acá.
Bien, hace falta que lo ponga todo, sino
que de hecho puedo directamente llamar
acá al transfer from
acá. Esto le voy a poner transfer de
nombre. Sí, llamo a esta función
transfer internamente.
Acá le voy a cambiar, le voy a poner el
sender porque eh porque sí puedo
transferir por un tercero. Sí, pero
quiero que únicamente lo pueda hacer el
owner del contrato. Sí, por ejemplo, por
compliance, ¿sí? La PESP en una cosa de
tokenización. Únicamente la PESAP puede
transferir el token de una billetera a
otra billetera. Si por ejemplo, una
orden judicial. viene un judicial, dice,
eh, esto estos tokens tienen que pasar
al heredero porque la persona murió, una
sucesión y vos tenés que mandárselos.
Sí. Entonces, como pensar vos tenés que
agarrar y hacer esa transferencia. Para
eso tenés acá la función est transfer
from, ¿sí? En la cual tener, receiver y
la mount. ¿Qué pasa si yo lo dejo así?
Cualquiera puede entrar. Si esto no
tendría un límite, un control de quién
es el que puede y no puede entrar. Si
cualquiera lo podría llamar, ¿no? Acá
obviamente external no nadie lo pu
llamar.
Pero se entiende, acá yo tengo que poner
un chequeo. ¿Cómo hago para poner el
chequeo? Bueno, primero tengo que
determinar un owner. Sí, acá podría
tener una variable, por ejemplo,
que se llame owner.
Vamos a ponerlo del tipo public para que
ya se vea. Y la podemos determinar acá
en el constructor. Acuérdense que el
constructor una vez que se creó ya
murió. Sí. Así que acá la puedo
determinar, le puedo decir que es la
persona que lo construye, Mi.
Y después, ¿qué hago? Bueno, cada vez
que voy a llamar a este a este transfer
from, chequeo si hago por ejemplo un if
y me fijo que ese owner,
o sea, que el mess. Center ahora mess.
Que es la persona que está enviando la
transacción sea igual al owner.
Sí. Si no es igual al owner, entonces
revierto. Si le hago acá.
¿Y con qué revierto? Y bueno, puedo
ponerle que esto es only owner,
¿sí? Como un custom error. Y acá tenía
que obviamente definir este custom error
acá arriba, ¿no? En la parte de errores
defino error only owner.
Quiere decir que únicamente el owner lo
va a poder transferir. ¿Por qué? Porque
acá estamos chequeando que la persona
que llama esta función transfer from que
es hm.
Sea el mismo owner que nosotros seteamos
acá en el constructor y nunca más
podemos cambiar. ¿Sí por qué? Porque no
existe ninguna función que te cambie
este owner.
Entonces solo esa persona podría llamar
esta función transfer from. Sí
se entendió eso
deditos.
Y también lo tenés que autorizar también
la transferencia por estás autorizando
ahí,
¿no? Porque acá en la external le digo,
"Okay, primero antes de llamar este
transfer, este transfer from, chequea
que la persona que lo esté llamando sea
el owner. Si no es el owner, revertí.
¿Entienden?
Bien, existe algo que se llama
modifiers, ¿sí? Que son justamente
modificadores de que me agregan código a
una función. ¿Cómo se escriben? Bueno,
en vez de poner la palabrita function,
como decíamos con la función, acá pongo
modifiers. Sí, estamos modificando el
código. Tengo que poner el nombre del
modificador. Sí.
Eh, yo lo que quiero hacer es que con
este modificador poder agregar este
pedazo de código, ¿sí?, que me va a
estar chequeando las cosas. Por lo
tanto, si voy a estar chequeando eh que
sea únicamente el owner que lo pueda
escribir, el nombre del modificador que
le puedo poner es el only owner. ¿Sí?
Y después se escriba medio como una
función. Si yo acá puedo poner cosas
adentro como si fuera una función, ¿qué
cosa tengo que poner? Y bueno, dije que
quiero hacer este chequeo, por lo tanto,
chequeo esto acá. Sí.
Pero después yo tengo que decirle cómo
seguir.
¿Sí? ¿Cómo le digo cómo seguir? Bueno,
pongo un guion bajo y un punto y coma.
Este guion bajo y punto y coma significa
seguir con el resto del código. ¿Sí?
¿Cómo lo utilizo? Bueno, acá esta
función transfer from, por ejemplo, ya
no le pongo esto acá porque es que se lo
quiero agregar con el modificador. Sí.
Entonces,
¿cómo lo agrego? Bueno, ustedes vieron
algunos modificadores que nosotros
poníamos acá, por ejemplo, el tema de
el tema si es externa, si es es public o
tod es buenos son visibilidades, ¿no?
Pero todas las cosas que vayamos
agregando acá, el tema de view, pure,
eso básicamente son modificadores, ¿sí?
Porque yo con ese view o pure estoy
modificando la función para volverla de
escritura a lectura. Sí, acá también con
esto nosotros vamos a poder modificar
esta función. Yo escribo este only
owner, que es un modificador casero que
yo hice acá.
Sí. Y con eso estoy diciendo, "Okay,
intercálame esta función de acá, este
modificador con esta función de acá."
Y esto me está diciendo, bueno, lo la
primer línea que vamos a encontrar en
este código cuando lo corramos va a ser
este if. Y después el resto del código.
¿Cuál es el resto del código? Esto de
acá. Sí. Por lo tanto, esto de acá va a
comportarse de la misma forma que como
lo teníamos antes, pero únicamente acá
le tengo que agregar este modificador
only owner. Sí. y el código ese sale.
¿Cuál es la ventaja de esto? Si yo tengo
más cosas que correr únicamente con only
owner, yo podría agarrar, por ejemplo,
ahora la transferencia únicamente la
puedo hacer el owner también. Y bueno,
only owner, ¿sí? Y de esa forma hacemos
una modularidad.
¿Aras gas con eso?
No, no ahorras gas porque básicamente lo
que te hace el compilador es te pone una
cosa abajo de la otra, pero sí ahorras
en escribir código y legibilidad. Sí,
porque acá vos sabes que esta función
únicamente va a poder ser llamada por el
owner. Sí, nadie más y no que
estarleciendo el código.
¿Entiendes?
Hay una pregunta en el chat.
Sí,
open
ante eso dice,
"¿Es mejor importar un contrato,
modificar modificador o es mejor hacerlo
en el contrato propio?"
Eh, no, fíjate que el modificador es
como si fuera una función.
Sí. Por lo tanto, eh acá estás haciendo
una función que sea un modificador.
Puedes hacer un montón o puedes eh sí,
puedes hacer un montón o uno solo o lo
que quieras, ¿no? Acá queremos
únicamente el only owner, por eso
hicimos acá el only owner y básicamente
lo pusimos como modificador acá para que
haga esto. Si yo quiero, por ejemplo,
que primero ejecute este código y
después que chequee esto y lo que tengo
que hacer, como yo dije, este guion bajo
y punto y coma significa donde va el
resto del código, es modificar esto,
¿sí? Y ponerlo acá.
Sí, ahí primero correría este código y
después chequearía esto. ¿Qué es lo que
sucede? Generalmente todos los chequeos
se hacen antes. Sí, porque aparte si yo
quiero revertir, quiero revertir lo
antes posible para consumir la menor
cantidad de gas antes de de correr todo
y después revertirlo. Sí. Entonces,
generalmente se pone así. Pero si
ustedes se recuerdan, nosotros habíamos
visto, por ejemplo, el reentrance guard
en su momento, que también dijimos era
un modificador,
un modificador llama no reentrant.
Sí. Y lo que hacía era básicamente
ponía un flag
en uno, ejecutaba el código y después
ponía un flag, el flag en cero. Sí. Y
acá obviamente tiene que chequear que
ese flag
sea igual igual a cer, ¿no?
O mejor dicho, en este caso distinto de
cero, ¿no? Si si el flag es distinto de
cero, entonces revierte. ¿Por qué?
Porque acá ya se transforma en uno. Si
si el flag está en cero, entonces entra,
lo pone en uno. Si alguien vuelve a
hacer la llamada cuando estás acá en el
código, cuando vuelva a entrar para acá,
esto va a estar en uno y revierte. Sí,
esto nos servía para el ataque de
reentrancy.
Obviamente acá esto va a tenía de error
porque no tengo ese flag declarado, pero
acá le podemos poner, por ejemplo, un
win 8 flag.
Y ahora sí estaríamos bien
o casi bien porque me estoy olvidando un
punticoma.
Y acá se me fue esto. Sí. Y acá tenemos
el no reentrí.
Y qué tenemos que hacer para que
nosotros una función que no sea sea no
reentrant, por ejemplo, transfer lo que
vamos a hacer no reentrant y bueno,
únicamente tenemos que agregar esto acá,
¿sí? Entonces vamos a poder ir ahí
agregando modificadores, ¿se entiende?
Y ahí me dicen lo de importing contable.
Sol. Sí, el onable. de openpling hace
exactamente esto que estamos haciendo
acá con el only owner, eh, no, acá esto
tiene que tener otro nombre, ¿no?
Eh, este only owner, pero lo vamos a ver
la próxima clase, ¿sí? Porque ya estamos
pasaditos de hora.
¿Le
borraron cosas o yo estoy mal?
No, acá está 14 de mayo. Acá no. Bueno,
vimos la parte de owner, faltan las
librerías de ownerable y bueno, los
modifiers ya lo vimos. Nos faltaría la
librería de opening, como dijeron ahí,
que lo vemos la próxima clase.
Cristian, ahí te están preguntando en el
chat si podes dejar el código para que
lo utilicemos.
Voy a voy a borrar el código anterior
porque es el mismo que fuimos
modificando,
¿eh? Y les dejo este otro más
completito.
La paso para acá directamente.
Listo. Ahí está. Ahí lo tien. Paso el
pad de vuelta por las dudas.
Hacer
cuesta mucho, ¿no? No cuesta mucho. O
sea, bueno, depende. Es más barato que
escribir una variable de estado.
Bien, cierro la cabeza acá. Vamos a
dejar de grabar.
