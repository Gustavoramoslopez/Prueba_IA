# 17/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 6 - Parte 1

- **Video:** [https://www.youtube.com/watch?v=cAT77TxZ1CE](https://www.youtube.com/watch?v=cAT77TxZ1CE)
- **ID:** `cAT77TxZ1CE`
- **Canal:** ETH KIPU
- **Fecha:** 2026-04-15
- **Duración:** 1:00:10

---

## Transcripción

Bien, nosotros habíamos dejado, sí, acá
en la clase seis que no lo habíamos
terminado, nos faltaban algunas cosas,
¿sí? Por lo tanto, podríamos empezar con
esta parte de las firmas que venimos
hablando, la parte de autentificación,
la integridad, la verificación, ¿sí?
Después el tema de las transacciones,
después venía el tema de las cuentas.
Sí, que esto lo habíamos explicado pero
muy rápido, el tema de la frase semillas
que creo que acá es donde nos habíamos
quedado. Pero bueno, comencemos un
poquito más acá atrás para refrescar un
poco la memoria, ¿sí? Con respecto a las
firmas,
si nosotros utilizamos la la web esta de
Under Brownworth, que si se acuerdan es
una web bastante interactiva que también
tiene todas estas explicaciones, eh está
en inglés, pero están muy bien
explicadas, por lo tanto se los aconsejo
ver. Creo que incluso tiene los
subtítulos, así que para el que no
entiende inglés también puede mirar los
subtítulos. Eh, son videos muy cortitos,
pero que la verdad están muy buenos y
que nosotros habíamos visto acá cómo es
que de a partir de una firma, de una
clave privada que habíamos puesto 1 2 3
cu
esta clave pública, ¿no? Que es
básicamente a través de la
multiplicación elíptica, ¿no? Acá
fíjense que estoy cambiando la clave 1 2
5 6 7 8 y la public key me dio
diferente. ¿Por qué? Porque esta clave
privada y esta clave pública están
ligadas. ¿Cómo están ligadas? Bueno, la
clave pública va a ser igual a la clave
privada. Sí, por un punto G, que es un
punto conocido.
Sí, pero ese punto G, acuérdense que se
multiplica con esta clave privada en una
curva elíptica que no puede ser
dividida. ¿Sí? Por lo tanto, por más que
yo tenga el punto G, yo no puedo agarrar
hacer este número dividido al punto G
para que me dé este 1 3 4 5 6 7 8. ¿Sí?
Por lo tanto, si este número tiene una
buena entropía, ¿sí? Va a permanecer
privado en mi cartera, ¿sí? que nadie va
a poder eh averiguar cuál es el número,
por más que yo revele esta clave
pública. ¿Y por qué es que necesito
revelar esta clave pública? Porque yo
necesito poder comprobar, o sea, los
nodos van a necesitar poder comprobar
que soy yo realmente el que está
mandando las transacciones. Sí, yo voy a
tener dinero acá dentro de esta clave
pública.
Sí, alguien me va a mandar dinero a esta
clave pública y yo después tengo que
poder demostrar que soy yo el dueño de
esa clave pública para poder mover ese
dinero y decir, "Okay, le quiero mandar
un eter a Pablo." Sí,
¿cómo hago eso? Bueno, a través de las
firmas, ¿cómo dijimos que es la firma?
Bueno, fíjense que acá le habíamos
puesto también a Pablo, le habíamos
mandado dos dos bitcoins. Ahora le vamos
a mandar uno. Sí, porque ya nos estoy
quedando sin bitcoins.
Sí. Entonces, acá tenemos el el
documento básicamente o la transacción.
Sí, que vamos a hacer acá. Tenemos la
clave privada y nosotros la vamos a
firmar. ¿Qué significa esta firma?
Bueno, acuérdense que todo en
computación terminan siendo unos y
ceros.
Sí, son bits. Por tanto, yo esto lo
puedo transformar en bits. Sí, no es que
son palabras o nada, son bits. Si yo
tengo un archivo, un PDF, también son
bits. Sí, yo todo eso lo puedo como como
son bits, son números, yo lo puedo
multiplicar. Sí, básicamente voy a poder
multiplicar el mensaje que yo tenga acá,
cualquiera sea el mensaje, por esta
clave privada. Sí, obviamente acuérdense
que es una multiplicación elíptica. Esa
multiplicación de ambas cosas es lo que
nosotros vamos a conocer acá como firma.
Sí, fíjense, acá tenemos la firma, la
signature.
Sí. Si nosotros cambiamos cualquier cosa
en el mensaje, obviamente esta signature
va a cambiar. Sí, por ejemplo, yo le
pongo acá un dos. Esta firma va a
cambiar. Sí, fíjense, ahora hago el
sign. Fíjense que ahí cambió. Si le
pongo uno de vuelta, fíjense que va a
volver a cambiar.
Obviamente que si yo le vuelvo a poner
uno y va a ser exactamente lo mismo,
¿no? Porque estoy firmando exactamente
lo mismo.
¿Sí?
Ahora,
¿qué es lo que sucede con esto? Como es
una multiplicación de mi clave privada
con mi mensaje, ¿sí? Y si ustedes se
acuerdan, la curva elíptica no admite
una división.
Yo le puedo dar este mensaje,
básicamente esta esta firma, básicamente
con este mensaje y no es que el otro el
usuario, el la otra persona va a poder
agarrar este esta signature, dividirla
por este mensaje y le va a dar esta
private key, ¿no? Porque acuérdense que
no se puede dividir en una curva
eléptica. Por lo tanto, yo le puedo dar
esto y le puedo dar esto. Ahora, ¿qué es
lo que sucede con estas dos cosas? con
el mensaje y con la firma, yo puedo
comprobar, sí, que ese mensaje realmente
fue firmado,
¿sí? Con esto
a través de la clave pública. Sí,
fíjense que ahora cuando voy a verify me
pone, bueno, tengo el mensaje, tengo la
clave pública, ¿sí? Y tengo la firma.
Con estas tres cosas yo puedo verificar
que son congruentes. Sí, esta clave
pública acuérdense que va a salir de mi
clave privada, por lo tanto, no voy a
poder tener dos claves públicas para una
misma clave privada. Sí, por lo tanto,
cualquier cosa que yo modifique acá es
porque era otra clave privada. Entonces,
con esto estoy diciendo, "Esta es mi
clave privada sin darte la clave
privada." Con esto le estoy diciendo,
"Este es el mensaje que yo firmé." Sí. Y
la firma lo que está diciendo es, bueno,
yo firmé esto y no firmé otra cosa. ¿Sí?
¿Por qué? Porque si yo cambio cualquier
cosa de acá, esta firma debería cambiar.
¿Sí? Entonces, yo con estas tres cosas,
mientras sean congruentes, yo lo puedo
verificar y puedo decir, "Okay,
corresponde esta clave pública con esta
firma y este mensaje o no corresponde
esta clave pública con esta firma y este
mensaje. Si yo quiero cambiar cualquier
cosa acá, por ejemplo, le pongo un
punto, fíjense, cuando yo le doy verify,
esto me lo pone en rojo." ¿Sí? ¿Por qué?
Porque no fue esto lo que firmé, sino
que lo que firmé fue esto.
¿Sí? Y fíjense que únicamente está
utilizando la clave pública para eso, no
está utilizando la clave privada.
¿Qué es lo que sucede? Yo no puedo
encontrar
la firma, ¿sí? Que corresponde a un
mensaje X únicamente con la clave
pública. ¿Por qué? Porque necesito la
clave privada para hacer la
multiplicación.
Y por eso es que con la clave privada
escondida nosotros podemos firmar lo que
sea, lo que sea y podemos verificar que
somos nosotros a través de esta clave
pública. Sí,
eso es justamente lo que trabaja la
criptografía simétrica. ¿Sí?
Y bueno, así es como funciona una
wallet. Si ustedes una huela, van a
tener una clave privada, van a tener una
clave pública, van a firmar con su clave
privada, van a mandar a los nodos. El
nodo va a tener su clave pública, la
cual va a agarrar ese mensaje que
ustedes mandaron, esa clave pública que
ustedes también le mandan, más el
más el mensaje, bueno, mensaje dije
mensaje, la clave pública y la firma. Y
con esas tres cosas va a poder comprobar
que realmente son ustedes los que están
queriendo mover, no sé, un Bitcoin desde
esa cuenta que está en esa clave pública
hacia otra. Sí. Por lo tanto, todo el
mundo, como hacer una clave pública, va
a poder ver la cantidad de Bitcoin que
tienen, pero únicamente el poseedor de
esa clave privada va a ser que pueda
mover los Bitcoin que están en esa clave
pública. ¿Se entiende?
Bien,
eso con respecto a a todo lo que es la
la autentificación, ¿sí? La integridad
obviamente está dado por eso, decir yo
modifico cualquier cosa, la firma se
tiene que modificar, por lo tanto ahí
tenemos la integridad, ¿no? Y la
verificación es esta, ¿no? Decir, bueno,
con la clave pública yo puedo verificar
la clave privada, puedo verificar el
mensaje que fue firmado por la clave
privada, ¿no? Sin conocer la clave
privada, que eso es básicamente lo que
nosotros queremos hacer para poder
decir, "Okay, esta transacción es
válida. es el dueño de esta cuenta que
tenía dos Bitcoin y quiere mover un
Bitcoin de tal lado a tal lado. Sí, para
poder comprobar eso, básicamente eh
tenemos que poder decir, somos los
dueños de esto, pero sin pasarle esa
clave privada, porque si nosotros
pasamos esa clave privada, después
cualquiera podría mover ese dinero,
¿verdad?
Y bueno, entonces cuando nosotros
hacemos una transacción, acuérdense que
es esto de cambiar de estados, ¿no? Esa
transacción es justamente lo que cambia
de un estado A un estado B.
Sí, tenemos que crear la transacción. Yo
tengo que decir qué es lo que quiero
hacer. Tengo que firmarla.
Obviamente que si yo quiero mandar dos
cuando tengo un ether y cuando el nodo
intente de de hacer las cuentas, eso le
va a dar un underflow, obviamente y va a
revertir y no lo va a mandar, ¿sí?
Porque no existe. Obviamente esa
comprobación también la va a hacer. Pero
ahora si yo tengo un eter y quiero
mandar 0,5 ether, él no va a decir,
"Okay, puede mandar 0,5, pero antes de
mandarlo tienes que comprobar que
realmente fuiste vos el que tuvo la
intención de moverlo. Sí, el dueño de
esa clave pública, ¿sí? Que que lo
quiere mover. Sí. Por lo tanto, vos
tenés que tener esa clave privada y
tenés que firmar esa transacción con la
clave privada para que después con la
clave pública pueda corroborar que
realmente fuiste vos el que quiso
moverlo. ¿Sí?
Y eso es el tema de la firma.
Obviamente, una vez que firmas la
transacción, acuérdense que la firma no
es más que una multiplicación, yo tengo
que enviar ese dato al nodo, ¿sí? Porque
si no lo envío al nodo no se va a no va
a operar, ¿verdad? Entonces envío eso al
nodo. El nodo obviamente lo valida.
¿Cómo lo valida? De esta forma, ¿no? Con
esa clave pública, como vimos recién en
la web de Under Brown, ¿sí?
Y una vez que lo validan, después lo
mete en un bloque, ¿no? Acuérdense que
primero entrar en un mpol, ¿no? Ese
menol iba agarrando las transacciones,
va variando cada una, lo va metiendo en
un bloque, ¿sí? Y lo hace un spread de
tipo P2P a todos los demás nodos para
que eh todos tengan lo mismo, ¿verdad?
Como ya vimos antes.
En cuanto a cuentas, dijimos que había
dos tipos de cuentas. Sí, hablamos de de
estas cuentas que se manejan con una
clave privada, con la firma, etcétera,
etcétera, pero dijimos que había otro
tipo de cuentas en las cuales vos no
tenías tus claves privadas, ¿sí? Que
eran los que se llamaba contratos.
Sí, los contratos son cuentas igual que
la que las EOA, las external on account,
que son esas que vos tenés la clave
privada, pero en los contratos vos no
tenés tu clave privada. ¿Qué es lo que
tenés?
Nada. Sí, no puedes ejecutar nada en los
contratos, salvo las cosas que ya están
escritas. Sí, vos cuando creas un
contrato, ¿sí? Lo deployás, decís,
"Okay, este va a ser el código que tiene
el contrato.
Mandas una transacción especial para que
ese contrato se deploye." Sí, eso se
crea. Se crea en una cuenta, ¿sí? Que va
a tener la misma forma que una EOA. Si
se crea en esa cuenta y esa cuenta pasa
a estar manejada por ese código, ¿sí? No
existe una clave privada para poder
manejar las cosas de ahí. Sí, únicamente
el código que está escrito es lo que lo
va a poder manejar. ¿Qué pasa si vos
quisieras cambiar el código? Bueno, no
tenés la clave privada, por lo tanto, no
podés cambiar el código de eso. Sí, el
código queda escrito ahí con fuego. ¿Se
entiende?
Entonces hablamos que tenemos estas dos
tipos de cuentas, ¿sí? Una external
account que tiene una clave privada y
vos manejas todo a través de la clave
privada y otras cuentas que son
contratos y se manejan a través de
código. Si el código que ya tiene
escrito por dentro. Sí.
Entonces, esa es la diferencia, ¿no?
Entre una EA y un contrato. Una tiene
código, la otra tiene claves privadas.
Y acá es donde nos habíamos quedado,
¿no? El tema de la C phrase,
que habíamos hecho un ejemplo, no sé si
lo tengo por acá guardado todavía, no,
me parece que no, no, que habíamos hecho
un ejemplo y que dijimos, "Okay, ¿qué es
lo que pasa si yo tengo una clave
privada?"
Sí, creo que lo habías visto por acá.
Tengo esta clave privada, por ejemplo, y
me confundí y este C no era una C, sino
que era un un tres, ¿sí? Por decir
cualquier cosa.
Si vos acá cambiá cualquiera de estos
números, básicamente después no vas a
saber cuál era el valor verdadero. ¿Sí?
¿Por qué? Porque puede ser cualquiera de
estos números que se haya modificado y
por cualquier valor. Entonces, tenés una
cantidad de combinaciones infernales
como para poder distinguir dónde estuvo
tu error.
¿Qué pasaba? Entonces, yo podía agarrar
este número y decir, "Okay, el uno es,
no sé, una determinada palabra. el dos
otra palabra, el tres otra palabra y así
sucesivamente, ¿no? Yo podría decir,
"Okay, bueno, acá tengo en cada uno de
estos números tenemos 15 posibilidades.
Bueno, 16, ¿no? De 0 a eh f, ¿no? 0 1 2
3 4 5 6 7 8 9 A, B, C, D, E y F. Sí,
esos son 16 posibilidades. Entonces, yo
podría decir, okay, me invento 16
palabras, ¿sí? Y el cero equivale a la
palabra,
no sé, abandon, el uno insect, el dos a
eh pepito, lo que sea, ¿no? Así hasta
llegar a al 15, ¿no? De cer a 15 para
tener las 16 posiciones. Y después en
vez de poner 1 2 3 4 le pongo entonces
abandon, insect, pepito, etcétera. ¿Sí?
¿Qué es lo que sucede con eso? Si yo me
llego a equivocar en alguna letra, ¿sí?
Al ser palabras que están en el
diccionario, puedo agarrar, leer el
diccionario y fijarme dónde estuvo mi
error y poder recobrar así cuál era la
clave privada que yo tenía. ¿Sí se
entiende eso, esa redundancia con las
con las palabras contra los números?
Bien,
después de eso dijimos, "Okay, eso es el
concepto fundamental, ¿no? ¿Por qué es
que nosotros necesitamos esto de tener
palabras en vez de números?
Obviamente acá yo lo puse con 16
palabras y, o sea, 16 palabras en total
que van del cer. Y si nosotros tuvieros
que hacer esto acá, tendríamos una, dos,
3, cu, un montón de palabras, ¿no?
Bueno, ustedes si si descargan una meta
másk o algo por el estilo, ustedes van a
ver que no tienen tantas palabras, sino
que pueden escoger entre 12 palabras y
24 palabras. ¿Sí?
¿Por qué son? ¿Qué son esas 12 palabras
o 24 palabras?
Básicamente es un protocolo que se llama
VIP 39. Sí, ustedes pueden ir BP 39.
A ver si vamos con GHub.
A ver, este acá
fíjense que tienen palabras y tienen
diferentes idiomas, ¿no? Inglés,
japonés, coreano, español. Básicamente
las que generalmente se utilizan son las
de inglés. ¿Sí? ¿Por qué? por lo que
habíamos explicado la la vez pasada, que
inglés no tiene acentos, no tiene letras
raras, ¿sí? Entonces, como eh mucho más
eh
Sí.
Y bueno, acá tenemos las palabras, ¿sí?
Fíjense que eh
el cero, digamos, sería abandon, el uno
sería ability, ¿sí? El dos, able, tres,
about, about, absent, etcétera,
etcétera, etcétera. Si hasta la palabra
número,
vamos, hasta abajo de todo.
2048.
Sí. ¿Por qué son 2048 y no 2049 o 2000?
Y porque son múltiplos de los bits.
Exacto. Exacto. Sí. Si nosotros tenemos
2 elevado a la 10, esto sabemos que es
1024. Sí, un K.
Y 2048, ¿qué sería? Bueno, sería 1024
por 2, o sea, sería esto por 2.
Sí, esto por dos. Esto sería 2048.
Quiere decir que si tenemos 2 elevado la
10 por 2, esto es básicamente como poner
2 elevado a la 11. ¿Sí? ¿Qué es lo que
quiere decir este 11 de acá?
son las combinaciones que puedo hacer.
Exacto. Sí. Básicamente vos vas a tener
11 bits. Sí. Esto quiere decir que son
11 bits. Sí. en combinaciones a dos,
¿no? Porque son justamente uno o cero.
Vos tenés 11 bits. ¿Sí? Eh, si vos
tenés, por ejemplo, 1 2 3 4 5 6 7 8 9 10
11, ¿sí? Que sería la máxima cantidad
de, o sea, el valor máximo que vos
puedes tener en 11 bits. Sí, esta esto
va a significar so. Sí, su zoológico.
Sí.
Ahora, si vos tuvieras 1 2 3 4 5 6 7 8 9
10 11. Sí. Este valor sí este valor
sería el abandono.
Acá está.
Sí, vamos a poner al revés. Bueno, este
va primero, ¿no?
Obviamente que si nosotros queremos algo
en el medio, si por ejemplo acá el 0 1 2
3 4 5 6 7 uno sí sería este ability
y así sucesivamente, ¿no? Llegar estos
2048 posiciones. Sí
se entiende eso, cómo se da el 11.
Si ahora nosotros decimos que tenemos 12
palabras,
¿sí?
12 palabras, ¿cuántos bits son?
Claro, 12 palabras. ¿Cuántos son? Claro,
pero depende del largo de cada palabra
porque
salvo que tengas la tabla,
acá tenemos la tabla, o sea, sabemos que
cada palabra tiene 11 bits,
¿no? Cada palabra tiene 11 bits.
Entonces, 12 palabras, ¿cuántos son?
144.
144.
No, ahí la cuenta. 124 es 12* 12, así
es. 12*
12* 11.
Claro, 12* 11.
132.
132. Okay. Esto entonces van a ser 132
bits.
¿Cuántos bits tiene eh una clave
privada?
Y pero, ¿cuántos dígitos tiene la clave
privada? 32.
Eh, ya lo vimos. Por eso pregunto a ver
si se acuerdan.
Ah, no me acuerdo.
No, 40 he exadecimal. Es es lo que tenía
un una dirección, ¿no? Un adres. La
clave privada
256 bits. Ahí como dice Gabriel. Exacto.
160. Juan es el
son los 20 exadecim
los 20 by de la dirección. Sí. que son
los mismos 40 he exasionales que decían
por ahí.
Eh, esto acá como dice son 256 bits. Sí.
Y si nosotros ponemos 24 palabras en vez
de 12,
obviamente va a ser el doble de esto,
¿no?
Claro. 124.
Bueno, si ustedes se fijan, ninguna de
estas dos coincide con esto de acá.
Sí. ¿Por qué?
No, pero no te la pregunta, ¿por qué
tiene que coincidir esto? No tiene nada
que ver con esto.
Porque si yo quisiera tengo una clave
privada,
tengo la clave privada que teníamos
por acá.
Tengo esta clave privada,
sí, que esta clave privada tiene 256
bits.
Si yo dijera, bueno, esta clave privada
quiero ponerle las palabritas.
Pero no era que agrupabas de a dos, algo
así,
¿no? No, cada palabrita tiene 11 bits.
Si por si yo acá quisiera poner cada una
de las palabritas, ¿cuántas palabritas
necesitaría? Y bueno, tendría que
agarrar esos 256
y lo va a dividir por 11.
Y dividimos por 11, ¿sí? Y me da 23,27.
Cosas que no podes hacer. Eso, ¿cómo
hacer el 27?
Claro, cosas que no puedes hacer.
Exactamente. Por lo tanto, ya estamos
viendo que no es exactamente decir,
bueno, agarro esta clave privada y la
divido y la pongo en palabritas para
únicamente si me equivoco acá en la
palabrita y le pongo abandon. Sé que
esto no es así y es así poder otra vez
volverlo para acá. Sí. ¿Qué es lo que
hace esto de acá? Bueno, esto de acá me
crea una lo que se conoce como una frase
semilla. Sí, esto se conoce como una
frase semilla. ¿Por qué frase? Porque
básicamente está creando por un conjunto
de palabras, pero la palabra fundamental
que quiero que entiendan acá es semilla.
Sí,
una semilla es algo que vos ponés y de
esa semilla después crecen cosas, ¿no?
Crece un árbol, crecen ramas. Sí.
Por lo tanto, de esta semilla vamos a
poder derivar muchas claves privadas,
¿se entiende?
Sí, acá tenemos entonces un protocolo
que se llama VIP 39.
¿Qué hace ese VIP 39? Bueno, me
transforma básicamente números en letras
para yo tener una mayor redundancia y no
perderlos. ¿Sí?
Ahora, después tenemos tenemos que esto
nos va a dar, digamos, las 12 palabras,
las 24 palabras nos van a dar una
semilla. Ahora, esa semilla tenemos que
utilizar otro protocolo,
¿sí? Para poder derivar en claves
privadas.
¿Sí?
¿Qué protocolo podemos usar acá para ir
a claves privadas? Bueno, básicamente
existen dos eh muy básicos son el VIP 32
y el BP 44.
¿Sí?
Y básicamente lo que hace eso es agarrar
esta frase semilla o mejor dicho los
bits, ¿sí? No, no la frase en sí, sino
porque la frase la convierte en
en numeritos y eso de alguna forma lo
jaa. Sí. Y con eso va generando,
digamos, diferentes eh wallets. ¿Cómo
puede generar diferentes wallets? Y
piénselo así. ¿Qué pasaría si yo esta
frase semilla si que puede que tiene 132
bits, vamos a ponerle es esta? Ponerle
la frase de semilla. Yo digo, okay,
quiero derivar muchas wallets, de muchas
cuentas de eso. ¿Cómo hago? Bueno, puedo
hacer, por ejemplo, unchack 256
de todo esto. Y si hago eso nada más,
¿qué es lo que sucede? Me va a dar una
sola clave. Sí, esto me da una sola
clave privada.
¿Cómo podría hacer para que de esta
semilla me de una forma determinística
muchas clases privadas?
le introducís la hora o un
inicialization vector.
Claro. ¿Qué pasaría si yo acá le
introduzco, por ejemplo, la hora un time
stamp?
para acá
te va a generar otra otra
digamos wallet
cl me va a generar una cla privada pero
qué es lo que sucede después yo voy a
tener esta frase esta frase semilla que
la voy a guardar en un papelito y cuando
quiera volver a firar mis wallet qué voy
a tener que hacer voy a tener que
esperar a que justamente el estamp me dé
el mismoest en el cual yo me había
generado para que me dé la misma frase,
No.
Por lo tanto, no sería determinístico la
forma que nos estamos generando esto.
¿Qué pasa si yo en vez de poner un time
stamp pongo un índice?
Y pero eso para eso pongo un hash.
No, acá tenemos hash. Estamos haciendo
un hash de esta frase semilla más un
índice.
Sí.
¿Qué es lo que sucede? La entropía sí me
viene dada por esta frase semilla.
Sí. Por eso esto tiene que ser bien
entrópico. Esto de acá no es entrópico
porque es un índice. Si vamos a tener
si si quieren esto, no vo voy a poner
varias.
Vamos a empezar acá a poner, por
ejemplo, en esta vamos a poner eh cer.
En esta vamos a poner uno. En esto vamos
a poner dos. Y en esto tres.
Sí. Entonces acá vamos a tener una clave
privada cero. Acá vamos a tener una
clave privada uno, acá una dos y acá una
tres. Van a ser diferentes. ¿Por qué?
Porque el hash que está corroborando acá
adentro tienen cosas distintas. tiene +
0, + 1, + 2, + 3. Y acuérdense que el
GAS tiene una propiedad que se llama
avalancha, ¿no?, que modifica por más
mínimo que sea lo que estamos poniendo
adentro que se modifique, lo de afuera
se modifica enormemente, ¿no? Entonces,
por propiedad avalancha, digamos, todas
estas claves privadas van a ser
totalmente diferentes. Ahora, si nos
ponemos a pensarlo del punto de vista de
la entropía, 0 1 2 3 no son entrópicos,
¿sí? Es algo totalmente
anentrópico, ¿no? Pero, ¿qué es lo que
sucede? Nosotros a eso le estamos
sumando una semilla. Si, por lo tanto,
por más que las demás personas sepan que
acá yo tengo un cero, tengo un uno,
tengo un dos, tengo un tres, ¿sí? Si no
tienen esta semilla, no van a poder
derivar mi clave privada, ¿se entiende?
O sea, vos al stream que te generó el
quechak, le agregas un cero y le volvés
a hacer un quechak, digamos.
Fíjate que estoy poniendo antes, ¿no?
Acá tengo el la frase de semilla
más cer.
Sí,
claro. Por eso le agregas un stream más
a ese concatenado, digamos. Claro,
básicamente con lo que estoy diciendo
con esto es que yo puedo decir que una
billetera se genera así con un ketcha
256 de la frase semilla
más un índice.
¿Y qué es lo que sucede? Todo el mundo
sabe cuál es este índice. 0 1 2 3 4.
Todo el mundo lo sabe. Pero, ¿qué es lo
que sucede? Mientras no sepan cuál es la
semilla, no van a saber lo que da acá.
La clave privada.
La fortaleza te lo da el protocolo y no
la oscuridad, digamos.
Claro, la fortaleza de todo esto te lo
da esta semilla.
Sí,
claro.
Ahí María dice, "Tienes que guardar la
frase semilla y el índice para no perder
tu billetera." El índice es como que no
hace falta. ¿Sí? ¿Por qué? Porque los
índices todo el mundo sabe que va van en
orden, 0 1 2 3 4 y así sucesivamente.
Cada vez que vos te creas una cuenta
nueva meta más, por ejemplo, y vas a
tener índice siguiente 0 1 2 3 y después
si vos querés eh barrer todas las
bicerias que tenés y bueno, agarrás la
la semilla y le vas poniendo 0 1 2 y vas
barriendo tod todas las cuentas se
generan. Siempre se genera una forma
determinística. Sí,
pero entonces para cuando yo tengo una
wallet y abro otra está siempre
dependiendo de la primera clave, no es
que, o sea, la primera privat case, no
es que tengo que poner otra privat case
por cada una de esas cuentas.
Fíjate que la private key es lo que te
da acá.
Sí,
a vos lo que lo que vas a tener para
generar esa private key es esta semilla.
Por eso llama semilla, ¿no? Porque de la
semilla te da un montón de ramas que son
estas private keys. Sí. Y esas ramas son
totalmente determinísticas,
pero son determinísticas y se saben,
pero vas a saber únicamente cuál es su
valor si vos tenés la semilla. Si no
tenés la semilla, no vas a poder saber
cuál es el valor. ¿Se entiende?
Cristian, una pregunta. Hay la semilla,
la semilla es la palabra. ¿Esas 12
palabras son 12 semillas o esas 24
palabras son 24 semillas? Claro, estas
12 palabras o 24 palabras son 132 bit o
264 bits, ¿sí? Que son una semilla. Si
yo acá pongo 132 bits o pongo 264 bits,
no importa lo que yo le ponga acá,
igualmente el quecha 256 siempre me va a
dar 256 bit acá. Por lo tanto, ya tengo
una clave privada.
Y Cristian, ponele, vos generaste, no
sé, del cer al siete generaste ocho
private key.
Sí.
Si vos estás recuperando tu wallet,
¿cómo sabes cuál de esas ocho va a ser?
Y no, ahí vos tenés que saber cuál fue
la cuenta que utilizaste porque si
utilizaste la cuenta 10,000, por
ejemplo, y bueno, capaz que empezas un y
no la encontras más, ¿no? Ahora, si vos
vas a metam tras wallet o cualquier
wallet, siempre te empiezan a generar
desde la acero.
Las primeras que las que vas a tener
utilizadas son generalmente las
primeras.
Ah, okay. O sea, te asigna la primer
semilla y esa es la semilla de tu
wallet, ¿no? No es que sigue generando,
no semilla. Tenés una sola.
Claro,
una sola semilla y un
o sea, te genera la priva y y esa es la
que usas para tu primer wallet, la con
el índice cero, digamos, y ahí se corta.
Claro.
Es más, te digo más. Si vos tenés, por
ejemplo, Binance, sí, Binance puede
tener una semilla y este 0 1 2 3 puede
ser el número de usuario.
Sí.
Entonces, cada uno tiene una clave
privada, pero yo tengo una sola semilla
que la guardo en un pendrive en el
banco, en una caja fuerte.
Es como multitan de wallet. Claro.
Y puedo generar todas determísticamente.
¿Por qué? Porque si sé la semilla, sí,
el índice es algo conocido. Sí. Por lo
tanto, la puedo generar y puedo generar
cada una de las clavadas.
Eh, Juan Ignazo. Y sí, te diría que sí.
No es tan sencillo como esto, pero el
concepto es el mismo.
Después existe algo que se llama
extended publicy, por ejemplo, que te
sirve para poder generar estas estas
claves públicas sin necesidad de tener
conectada siquiera la clave privada.
Pero bueno, justamente en tema
matemático.
Vamos a buscar el pendrive con la frase
semilla.
Vos lo único que vas a necesitar es la
frase de semilla. No importa lo que pasa
con el penrive en sí, porque si el
pendrive se muere, te lo pisan, se rompe
lo que sea, agarras la frase de semilla,
lo pones en otra y lo recuperas. Sí,
porque sabes que esto es totalmente
determinístico.
El tema es que si Binance llega a perder
esas 12 palabras, perdió todas las
cuentas de todo el mundo. Ya está fuera.
Sí, obvio, obvio. No tiene que perder.
Claro. Y ese es el miedo que uno tiene
con las wallet.
Está bien que por eso buscas con no sé,
Coinbase alguien serio, porque vos decís
este,
bueno, pero en su en parte de su proceso
de seguridad, obviamente no tienen que
tener únicamente un backup de esto,
tienen que tener muchos backups y
guardados todos en lugares seguros, ¿no?
cosa de no perderlo,
pero sí, obviamente si se lo llegan a
perder sí perder un montón de dinero
y no hay forma de que yo me quede con la
clave privada y no la maneje Binance.
Si vos tienes una cuenta en Binance, no,
porque el Binance no te da esta clave
privada, siempre te da la clave pública
que ya ya manejan, la dirección en
realidad te dan
te dan esta parte, esto nada más. Esto
de acá se lo quedan ellos.
Igual para Cristian, acá hay un tema
porque si la cantidad de palabras son
2048,
¿sí?
Y las semillas que vos puedes generar es
algo fijo y los índices es algo fijo,
vos podrías hacer un ataque de probar
todas las semillas posibles.
Sí, totalmente.
Es limitado, digamos. No, no estás
tampoco.
Sí, pero
inclusive con estas de 12 palabras,
¿sabes cuánto es 12 elevado a 132?
2 elevado a la 132. Eh, no habría
hacerlo
mucho.
Es un número muy grande que no podría. O
sea, si tuvieras 6 bits, sí, obviamente
lo haces en 2 segundos,
pero con 132 bits, eh, por ahora ni
siquiera computación cuántica lo hace,
¿no?
Y pero para las 12 palabras tienen que
ir en orden, tipo la primera va siempre
en el primer lugar, o sea, va,
no, no cualquiera, porque vos lo que
agarr lo que hacés no es agarrar las 12
palabritas, las ponés y después te fijas
que quedó, ¿no? Vos tiras una monedita
del aire, ¿sí? para generar máxima
entropía de 132 bits o 264 bits. Después
pones las palabras
en base a lo que te da.
Está bien, pero para la ponele que yo la
primer palabra que elijo o que me elige
es, no sé, so
y es la primer palabra y la segunda es,
no sé, protocol. Eh, después cuando
reconstruyo la semilla, ¿tengo que poner
primero so y después protocol o
sí? Tenés que poner el mismo orden que
te lo digo porque si no es otra palabra,
es es otra es otra semilla, otra frase.
Ah, okay. Claro, ahí está la dificultad,
¿no? No es que son tenés que elegir
justo las 12,
¿no? Por eso vos lo que tienes que hacer
es, no sé, son 132 bits. Bueno, tiras
132 veces la moneda. Sí. Si te da cara o
seca, si pones cara, te pones uno. Si te
das seca, pones un cero. Y una vez que
tenés eso, agarras la divisa en
partecitas de 11 y te pones ahí la
palabra abajo que corresponde según la
tablita.
Sí. Y ahí lo tenés armado.
Armado entre comillas. ¿Por qué digo
esto? Porque en realidad la última
palabra, ¿sí? Ya sea los 12 o los 24,
sí, no es tan exacta. De hecho, estos no
son 132 o 264, sino que tiene eh otro
valor, ¿sí? Que básicamente es que la
última palabra
hace un ketchak 256 de las 11 primeras.
Sí. Por lo tanto, la última palabra es
como si fuera un chexam de las de las 11
anteriores.
Sí,
pero eso es únicamente para decir,
bueno, todas las palabras tienen que
coincidir y la última básicamente te
verifica que todas las demás coincidan.
Sí.
Pero igualmente no vamos a entrar tanto
en detalle, ¿sí? Pero quiero que
entiendan esto, o sea, que vos tenés una
semilla, que esa semilla tiene que ser
muy entrópica, ¿sí? Porque es justamente
lo que da la entropía de la cuenta. Y
después con índices vos vas a poder
derivar diferentes claves privadas. Sí,
tenemos esta tablita que se llama VIP 39
y esto de derivación de claves privadas
en función de cómo vos lo hagas se llama
VIP e 32 o VIP 44. Sí, VIP es de Bitcoin
Improvement Proposal. Básicamente esto
viene de Bitcoin.
Y si lo vemos un poquitito más en
detalle, si ustedes entran acá al al
pad, acá tienen un poco de esto. Si ven
acá la parte de Bitcoin,
en este VIP 39, por ejemplo, fíjense acá
pueden generar unas palabritas, ¿sí? 12
palabras. Ahí generé esto de acá.
Fíjense que ya les eh le dice cuál es la
semilla, ¿sí? De esas 12 palabras. Sí,
esto de acá es lo mismo que esto de acá,
nada más que está codificado.
Y después, bueno, fíjense, acá le pone
si si quieren Bitcoin o nosotros
podríamos decir Ethereum, por ejemplo.
Sí.
Y básicamente acá les da el VIP 32 de
root key, ¿no? Que es justamente la la
principal de la cual se va a empezar a
derivar. Si fíjense que acá lo pueden
derivar con VIP 44, por ejemplo, VIP 32
y tienen otras, ¿no? Pero estas dos son
las principales. VIP 44, fíjense, acá
tiene la una private key, tiene la
publicy, ¿sí? Trip 32 Path. Fíjense, acá
tiene un path para la derivación, no es
exactamente el 1 dos como yo lo he
puesto, pero muy parecido. Fíjense, acá
tiene este P y el índice que va variando
es el uno de acá, ¿no? El dos acá, el
tres acá, cuatro acá. Y fíjense que
usted le va dando diferentes private key
con diferentes public key y con
diferentes addresses. Sí, acuérdense que
un private key equivale a un public key
y un public key después a un address,
¿no? A través de lo que habíamos visto
de esto de acá, ¿no? Un private key
deriva en un public key public key
después en un address.
Y acá ustedes lo tienen, ¿no? Y
justamente acá está la variación esta
que yo les decía,
¿sí? Y después esto de M 44 60 y todo
eso tiene que ver un poco con cuál es el
protocolo que estás utilizando. Fíjense
que si tenés el M 32 acá le ponen M/0/0
y después también el último es 1 2 3
sucesivamente no
19 y etcétera. Pueden tener más, ¿no?
Acá les muestra 20, pero podrían con
más.
Se se ve, se entiende eso.
Y fíjense, acá yo le puse Ethereum, pero
también podrían poner Bitcoin y todo.
¿Por qué? Porque es básicamente lo
mismo, ¿no? O sea, fíjense que esto se
inventó en Bitcoin, ¿sí? Para poder
decir, bueno, ¿cómo vamos a escribir
esta frase semilla para no olvidarnos la
frase semilla
y no perder el dinero? ¿Sí? Entonces,
una forma que sea fácil
de de acordarnos o por lo menos si
nosotros le pifiamos algo que la podemos
recuperar. Y después de esa frase
semilla, ¿cómo hacer para derivar muchas
cuentas de forma determinísticas, no? Y
decir, "Okay, bueno, a través de Bip 32
o VIP 44 tenemos esta fórmula para
hacerlo." Sí. Y con esta fórmula
nosotros determínicamente podemos
encontrar diferentes private keys y
diferentes addresses, ¿no? Y entonces si
nosotros ponemos esta misma semilla en
esta wallet o la ponemos en esta otra
wallet y vamos a derivar a las mismas a
las mismas adreses y vamos a poder
utilizar eso y poder backupearlo de
alguna forma, ¿no? Hacerlo estándar,
hacerlo protocolo. Sí,
eso es básicamente lo que quiero
demostrar con esto. ¿No se entendió
alguna duda hasta acá?
Bien, entonces recuerden, esta S phrase
es una forma de tener una frase semilla,
la cual va a poder derivar en múltiples
cuentas, ¿s? y múltiples claves privadas
de una forma determinística, ¿no?
Acuérdate que esta sefase es lo que les
da la entropía,
¿sí? Porque después la otra parte no es
entrópico. Fíjense que acá yo ya sé que
si vas a estar utilizando BP 32, el la
derivación es a través de este de esta
de esta ruta, ¿no? Si no estás
utilizando 44 y bueno, es sobre esta
otra ruta. Es totalmente determinístico,
por lo tanto no hay entropía, por lo
tanto necesito una semilla que me dé la
entropía y eso es lo que me da eh este
bit 39, ¿sí?
Y puesto en palabras, ¿sí? 12 o 24
palabras para eh poder no olvidármelas y
o poder reconstruirla fácilmente,
incluso si me llevo a equivocar. Y
acuérdense que la última palabra del
1224 es como si fuera un chequesam de
las de las anteriores. ¿Sí? Y por lo
tanto, cuando ustedes escojan una,
seguramente la la última palabra puede
que si usted tiran así una monedita
directamente, puede ser que la última
palabra no sea exactamente válida y
tengan que buscar una palabra que sea
válida, ¿no?
Pero bueno, como dije, no nos vamos a
meter tanto en el protocolo, ustedes lo
pueden ver después si si lo quieren,
¿no?
Y como dice acá, nunca compartir, ¿no?
Porque si ustedes comparten la sefrase
es como compartir todas sus claves
privadas, ¿sí? Porque de acá se derivan
todas sus claves privadas de forma
determinística, entonces alguien lo pone
una wallet y empieza a derivar todas sus
claves privadas. Por lo tanto, nunca se
tiene que compartir. No puede estar
grabados en medios digitales. Si yo no
puedo tener que grabarlo en en
una imagen en mi computadora o una foto.
Sí, porque hay virus que me levantan eso
o guardado en texto plano tampoco. Sí
podemos utilizar algún gestor de
contraseña. Sí, podemos llegar a usar un
gestor de contraseña. Podemos escribirlo
en papel, en metal, ¿sí? y guardar en un
lugar seguro.
Hoy, por ejemplo, yo me descargué una
una wallet, ¿sí?, la de Teter Wallet,
¿sí? Para ver un poco cómo cómo
trabajaba por detrás y eso, estudiarla.
Y una de las cosas que no me dejaba, por
ejemplo, era sacar foto a estas 12
palabritas. Yo le quería sacar foto para
tenerlo ahí a mano fácil y directamente
no me dejaba. fue un un elemento de
protección que ya pusieron a la
a la aplicación, ¿no? Para evitar que
que la roben.
No todas lo tienen, pero bueno, sepan
que
con foto, tipo un screenshot o una foto
con algún celular.
Claro, ni screenshot ni foto con
celular. Sí, no tiene no tiene que estar
en ningún medio porque eso puede ser
levantado con fácilmente con con algún
virus y hay muchos virus que están dando
vuelta para levantar frases semillas.
Una foto con rollo como la de antes.
¿Qué?
Una foto con rollo como la de antes.
Algo analógico.
Exacto. Si algo está desconectado en
internet.
Algo está conectado a internet.
Sí. Alguien me comentó una vez que usaba
de de billetera fría eh un celular que
no estaba no lo tenía conectado
internet, lo usaba como
como pendrive, digamos.
Sí, claro. Lo que pasa es que también se
te rompe el celular y perdiste todo
también, ¿no?
Entonces siempre te conviene tener un
backup a mano
y corroborar de que no se desgaste la
tinta, ¿no? Por eso muchos dicen también
metal.
Cristian, tengo una pregunta sobre, me
quedé pensando con lo de vainas, ¿no?
Ellos está bien, no te muestran la
prueba de Key ni la se phrase, ellos la
tienen guardada en, ¿cómo se llama? En
call wallets, ¿no?
Sí,
pero después ellos necesitan traérselas
cada vez que vos tenés que hacer una
transacción para firmar esas
transacciones. Entonces, me intería
saber cómo hacen eso de forma segura,
porque llegan a perder esas esas kiss y
chao.
Sí.
Eh, bueno, lo que pasa que como les
expliqué la otra vez, sí, Binance lo que
tiene es que cuando vos mandas una el
dinero a tu cuenta, ese dinero no queda
ahí en esa en esa wallet realmente, no
hay un pequeño demonito que está
agarrando ese dinero y llevándolo a otra
wallet fría.
Sí. Y esa wallet fría no está puesta en
internet.
Okay.
Y después tienen una parte como si fuera
un encaje bancario en una wallet
caliente que eso sí está conectado
internet y que es de donde te mandan
dinero a vos, ¿no?
Obviamente toda esa parte en un backend,
sí, que obviamente el backend tiene todo
su perímetro asegurado, ¿no?
Pero que otra cosa, si llegan a robar
ese back, lo que sea, roban lo que está
en la wallet fría, no lo que está, digo,
lo que está en la wallet caliente, no lo
que está en la wallet fría, que es el
que donde tien realmente el dinero.
Okay. Okay. Y supuestamente en las
welcup
de todos los saldos de todos sus
usuarios o no necesariamente
no. La wallet fría es la que guarda el
saldo de todo.
Es donde se guardan los saldos.
Okay.
Sí.
Entonces, eh todo el saldo, el fuerte, o
sea, vos tenés, por ejemplo, millones de
dólares eh guardado, bueno, esos 10
millones de dólar lo guardás en una
wallet fría, ¿sí? Y no sé, metés $30,000
en una wallet caliente. ¿Para qué?
Porque si alguien quiere sacar $1,000,
$2,000 y bueno, vos solas de la wallet
caliente,
si no tocas la wallet fría, una vez que
la wallet caliente bajó mucho en su
nivel y pasas de la wallet fría a la
wallet caliente y qué pasa la
transacción la puedes hacer en una
computadora, por ejemplo, fuera de
internet. Vos escribís la transacción,
haces la firma, todo lo que sea,
desconectas eso, lo mandas en un penrive
o lo que sea, a otra computadora con
internet y lo mandas, por ejemplo, ¿no?
Sí, sí, pero mi pregunta va más para
otro lado, porque quieras o no, todas
las que son las world calientes corren
un riesgo, ¿no? Y en el peor de los
casos, siendo muy pesimista, suponente
que tienen un ataque de su pecho in
ataque o lo que sea y pierden todos los
saldos de las calientes. Igualmente
deberían, no sé si por ley o porque sí,
tener como un backup en las call wallets
como para poder compensar a todos sus
usuarios, ¿no? Con todos los saldos que
tiene el total
y y eso lo van a tener que poner en su
bolsillo, básicamente.
O sea, no es que tienen que loquear en
las frías el total de todos los saldos y
aparte después tienen como, no sé, una
cuenta corriente o varias cuentas así
corrientes, no necesariamente. Okay,
está bien.
No, no necesariamente tienen que tener
el total, sí, pero lo pueden tener en
diferentes cuentas
y si se lo roban y bueno, es eso puede
estar asegurado, por ejemplo, sí, como
te digo, lo ponen en su bolsillo o lo
tienen asegurado y lo pone en la
aseguradora.
Ah, existe seguros para esto también.
Sí, sí, asegurar puedes asegurar
cualquier cosa,
pero es tipo de open así o nada que ver
otro tipo de empresa,
no asegurar una aseguradora común y
corriente le pagas por mes tanto por el
riesgo y si llega a pasar cualquier cosa
te devuel el dinero.
Okay. Mir, no sabía.
Bueno, gracias.
Bien, entonces tenemos hot Code. Bueno,
acá tenemos el tema de hot y COD, ¿no?
Justamente lo que estamos hablando. Scot
es la que está conectada en internet, el
COD es la que está desconectada. Si
obviamente cuando está desconectada es
mucho más e segura que una que está
conectada.
Y el tema de custodia y no custodia que
es un poco también lo que estamos
hablando, ¿no? Si te dan la clave
privada, básicamente si vos tenés la
clave privada es no custodia, ¿sí? O
sales custodial. Mientras que si no es
una encuesta custodiada. Sí, porque está
el exchange custodiándote esa clave
privada y vos no sos dueño de tu propio
dinero. Si es el exchange. Vos lo que
tenés es un numerito que representa ese
dinero y cuando vos lo querés se le
tenés que pedir exchange y el exchange
verás si te lo da o no. Sí, obviamente
te lo tiene que dar, pero lo que quiero
decir es que vos no tenés el control
sobre ese dinero, ¿no? Eso es custodio o
no custodio.
Ambos tienen obviamente su ventaja y su
desventaja, ¿no? ¿Cuál sería la ventaja
del custodio? Y bueno, es mucho más
sencillo el manejo, ¿no? Yo perdí la
clave privada, por ejemplo, y perdí todo
el saldo. En cambio, si estoy
custodiado,
básicamente perdí mi forma de entrada.
Sí. Básicamente con un KYC, ¿sí? un
audio customer que le puedes mandar la
fotito y todo eso para decir que sos
vos, ellos te pueden volver a dar
ingreso. ¿Por qué? Porque son ellos los
que están custodiendo esa clave privada
y te vuelven a dar ingreso para que vos
puedas otra vez trabajar con esa clave
privada, ¿no? Entonces, eso básicamente
la diferencia entre custodia y no
custodia, ¿sí? Y la diferencia entre hot
y cod. Ahora, en cuanto a billeteras
frías, por ejemplo, billeteras C que no
están conectadas, tenemos los Lchers,
por ejemplo, ¿no? Leders o o Tresor, sí,
tenemos diferentes
eh billeteras de ese estilo que son tipo
pendrives, si no son pendrives
exactamente, sino que son billeteritas
las cuales contienen adentro la clave
privada, ¿sí? Y y la dirección para
poder hacer firmas. Si vos podés
utilizar ese pendrive, lo ponés en la
computadora y vos querés hacer una
firma, mandás el documento que querés
firmar o lación querés mandar a ese
pendrive y adentro de ese pendrive se
hace la firma, no sale nunca de ese
penrive la la clave privada. Si, por
tanto se firma por hardware,
¿sí? No por software, lo cual es mucho
más seguro, ¿sí? Porque no te pueden
poner un virus o levantarte eso, esa
clave privada mientras estás firmando,
etcétera. ¿Sí? ¿Por qué? nunca sale de
esa de ese aparatito. Sí,
eso básicamente son wallets eh frías,
¿no? También vos podrías tener, como
dijimos, una wallet anotado en un papel,
¿sí? Que se conoce como una paper
wallet, ¿sí? Y vos cuando querés hacer
una transacción, podés hacer como como
dijo uno de sus compañeros, agarrar algo
que está fuera de internet, hacer la
firma y después agarrar esa firma,
llevarlo a un lugar con internet y eh
hacer un broadcast hacia hacia un nodo,
¿sí? Para que se para que se haga.
También estarías haciendo las firmas
fuera, ¿sí?
Eh, obviamente siempre podés tener las
hot wallets, que son mucho más fáciles
de usar, tipo una meta más en la cual
uno puede firmar directamente y
mandarla, pero obviamente está conectado
a internet y es mucho más insegura, ¿no?
¿Por qué? Porque puedes tener algún
virus, alguna cosa que te la levante.
Eh, en cuanto a lo que es, hay muchas
ofertas Scam, por ejemplo, de trabajo,
en las cuales te hacen hacer alguna
tarea, alguna cosa y te hacen correr
algún script. Y cuando vos corres ese
script, por ejemplo, se te instala un
virus en el cual eh levanta las claves
privadas, por ejemplo, de la metamas.
Entonces, vos abriste una meta más y te
levantaron la clave privada. ¿Sí? ¿Por
qué? Porque mientras vos la tenés
cerrada, no pasa nada porque está
encriptado eso, ¿no? Una vez que vos la
abriste, pusiste tu clave, eso se
desencriptó para poder trabajar con esa
clave privada, para poder hacer firmas o
lo que sea. Y en ese momento es cuando
este virus te toma esa clave privada,
por ejemplo, y lo manda a un servidor.
Sí. Así que tengan mucho cuidado con
esos temas de de de los trabajos.
generalmente vienen con ofertas muy
elevadas eh en cuanto a dinero y bueno,
te hacen hacer alguna alguna pruebita
bastante simple, bastante sencilla, pero
que trae aparejada estas cosas, ¿no? Así
que hay que tener cuidado.
Pero bueno, eso con respecto a las hot
wallets, a las a las custodias, ¿no? Si
ustedes quieren tener un poco más de
seguridad con una hot y bueno, ténganlas
divididas cuando se conectan a una
aplicación que desconfían un poco y
bueno, utilizen alguna hot pero eh con
poco dinero, ¿sí? Una máquina virtual,
por ejemplo, sí, en la cual esté sellado
ese ese recinto.
Cristian, una consulta e acerca de las
paper wallet, a mí me dijeron que esas
con las de Tresor eran como las más
seguras. Eh, vos igual si vos no querés
transfernir nada con la de Paper Wallet,
vos podés recibir aunque esté ahí en el
papel y no tenés que hacer nada,
digamos, para eso.
Sí, mientras vos recibas podés tenerla
en el paper, en el papel y recibís
normalmente. Ahora, cuando vos quieras
transferir, cuando quieras enviar y
bueno, ahí vas a tener que conectar.
Pero, ¿y cómo conectas ese paper wallet
a a para firmar, digamos, o cómo firmas
con esta clave privada? Por ejemplo,
cuando hicimos este paper wallet de acá,
que bueno, no sé si está bien hecho
porque no lo verificamos bien, pero
bueno, con esta prior key, por ejemplo,
de acá, si que hicimos este este paper
wallet, vos podrías agarrar, poner una
meta más, por ejemplo, te trae la cuenta
y con eso firmas.
Ah, okay. La importas en meta más y ahí
la firmas en meta más. Ah, okay.
Claro.
Y después podés como desconectarla, o
sea, okay, firmé, transferí y me vuelvo
al paper.
Sí, sí, podés. Obviamente eso se
mantiene mucho más seguro. Lo que pasa
que mientras está firmando y obviamente
está eh está conectada, ¿no? Mientras
está firmando es una cot.
En ese momento te la pueden robar,
mientras una call No, pero puedo hacer
tipo un ubunto live y le pongo
el meta más y después la apago y listo,
ya está, se cerró. Sí, sí, totalmente,
totalmente. Lo que pasa es que es mucho
más fácil y creo que más económico que
hacer todo eso directamente comprarte un
ledcher o un tresor, ¿sí? Que
básicamente conectas el pendrive y
firmas con el pendrive, ¿no?
Sí. Eh, nosotros hicimos una vez pruebas
con tresor, pero se te llega a romper y
o algo le pasa al Tresor y también medio
como que
e tenés que tener backup a mano igual.
Bien,
tenes que tener backup a mano igual. Lo
otro es para poder utilizarlo, digamos,
y no tener que conectarlo a internet.
¿Por qué? Porque se firma directamente
en el dispositivo por hardware.
Me disculpa, ¿me dejas copiar la
anterior filmina que decía la actividad
de tarea,
eh? Ah, perdón. Sí, igual también
llegamos.
Ah,
sí. Entonces, estamos viendo el tema de
hot C y custodial. Sí. Después tenemos
el tema de auto custodia. dice, "Not
your keys, not your coins." Sí, no, si
no son tus llaves o no son tus claves,
no son tus monedas. Básicamente es algo
muy conocido en lo que es Webtress y que
básicamente está diciendo, tenemos que
ser self custodias. Sí, obviamente que
también eso implica una cierta
responsabilidad, ¿no? Porque si perdemos
las claves tampoco nadie nos puede
ayudar, no tenemos un servicio técnico
al cual llamar.
Y con eso vamos un poquito a esto, ¿no?
La parte de riesgos.
No tenemos un servicio técnico a quién
llamar. Por lo tanto, si alguien te
viene a ofrecer
eh ayuda, sí, que tengas que mandar las
claves privadas o que le tengas que
mandar las frases semillas y el nemónico
ese o lo que sea. Y eso seguro, seguro
que es un scam, ¿sí? No existe un
soporte técnico.
Hay mucho de fishing. Sí, obviamente
intentar de
impersonificar también eh diferentes
protocolos, diferentes diferentes cosas
en las cuales vos quieras firmar, por
ejemplo, algo y estés firmando una
aprobación para que otro te saque
dinero. ¿Sí? Eh, por lo tanto, tenemos
que tener mucho cuidado con las cosas
que firmamos. tenemos que saber qué es
lo que estamos firmando antes de poder
firmarlo.
Eh, como dice acá, las firmas maliciosas
y el tema de los permisos excesivos. Sí,
muchas veces un protocolo te pide, yo
quiero que me des una aprobación
infinita para moverte este, no sé, USDC,
¿sí? Y por qué le vas a dar una
aprobación infinita si querés mover
únicamente $100 y en la bicilletera
tenés millón de dólar y no, dale
únicamente para mover esos $100 que
queres mover. Sí.
Entonces, esos permisos excesivos muchas
veces también nosotros tenemos que
modificarlo y decirle, "Che, no queremos
que muevas menos dinero." Sí. Entonces,
tenemos la parte de fishing, tenemos las
firmas maliciosas, tenemos los permisos
excesivos.
En cuanto a las reglas dice nunca firmar
algo que no que no entendemos. Sí, nunca
compartir las frases semillas. Un poco
lo que les decía, ¿no? De que si alguien
se les está pidiendo, seguro es un
scammer.
Sí, porque no existe un soporte técnico.
Y después acá como cierra dice, "Bueno,
las identidades son las claves." Sí,
básicamente tu identidad, tu clave
privada e es lo que te va a dar acceso a
a todo lo que vos quieras entrar, a lo
que quieras utilizar en web 3. Y la
seguridad básicamente está ligada a la
responsabilidad. Sí. ¿Qué tan
responsable sos vos con tus frases
semillas, con tus claves privadas? Es lo
que te va a dar la seguridad. Sí.
Y bien, habiendo dicho esto, sí podemos
ir al recreo, volvemos más o menos y
cuarto, ¿sí?
