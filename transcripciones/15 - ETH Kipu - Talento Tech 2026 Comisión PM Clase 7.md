# 15/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 7

- **Video:** [https://www.youtube.com/watch?v=jAU9pviCvfQ](https://www.youtube.com/watch?v=jAU9pviCvfQ)
- **ID:** `jAU9pviCvfQ`
- **Canal:** ETH KIPU
- **Fecha:** 2026-04-17
- **Duración:** 1:41:42

---

## Transcripción

Genial. Bien,
entonces comenzamos viendo un poco el
quiz este sí que me deje enviarlo,
pero bueno, voy a a contestarlo acá.
Vamos a ponernos mi mail
y vamos a ver un poco de las preguntas.
Ahí dice, "¿Qué gestiona realmente una
wallet en Ethereum?" Sí, acuérdense que
estas wallets son los que gestionan
básicamente las claves privadas, ¿no?
Que son las que nos van a permitir
firmar las acciones que queramos hacer.
Dice, "Los tokens almacenado en la
blockchain y no, la verdad que no es que
se eh gestionan los tokens, ¿no? Lo que
gestionan son las claves justamente como
acabamos decir acá dice las claves
criptológica del usuario, por lo tanto,
sí. Y después las bases de datos de
transacciones, ¿sí? No. Y después los
nodos de la red, ¿sí? Si tienen algún
alguna duda o algo, me frenan. Sí.
¿Qué afirmaciones describe mejor una
clave privada? Sí, dice, "Es un número
secreto que permite firmar
transacciones."
Justamente es eso, ¿no? Acuérdense que
habíamos dicho que era un número de 256
bits. Sí, teníamos, tirábamos la manera
256 veces. Con eso formáamos un número,
poníamos un cer según salía cara o seca.
Con eso obteníamos un número y ese
número iba a ser nuestra clave privada.
Sí. Después dice, es una dirección
pública de identidad que que identifica
una cuenta, ¿no? Acá ya tenemos la parte
pública. Si es pública, no es privada,
¿no? Por lo tanto, esta no va. Sí. Y
después dice, es un identificador
generado por los nodos de la red. Si lo
generan los nodos de la red, eh, no es
tan privado, ¿verdad? son los noddulos
que estarían generándolo. Acá es uno
mismo, como dije, puedes lanzar una
moneda, hacer eh alguna forma, como
habíamos visto a través de la pantalla,
moviendo el mouse a través del ruido
blanco y generando un número random de
alguna forma. Acuérdense que tiene que
ser muy entrópico. Y después dice, "Es
un código utilizado para encriptar
bloques." Sí, en realidad no, porque
tampoco encripta, ¿no? O sea, con la con
la clave privada nosotros lo que hacemos
es firmar. De hecho, firmamos y después
también mandamos la información para que
después se verifique, ¿verdad?
Por lo tanto, encriptarlo en realidad no
tendría mucho sentido,
aunque en realidad podríamos también
encriptarlo y después desencriptar con
la pública y verificar la información,
¿no? Pero bueno, ese sería, digamos, la
diferencia de lo que sería una
criptografía asimétrica de lo que es la
firma con clave pública, que se basa más
o menos en el mismo principio, pero es
un poco diferente en el sentido de que
con la firma nosotros no podemos a
través de la clave pública volver a
obtener el
mensaje. Sí, podemos verificarlo, pero
no obtenerlo.
Esto es una diferencia, por ejemplo, con
WhatsApp. Ustedes cuando ven WhatsApp
está comunicado encriptado punto a
punto, es básicamente eso lo que
tenemos, ¿no? Nosotros tenemos una clave
privada y una clave pública. La otra
persona tiene una clave privada, una
clave pública. Y ¿qué pasa? Yo le doy mi
clave pública a la otra persona, la otra
persona me da su clave pública, yo
encripto los mensajes que le quiero
mandar a la otra persona con la clave
pública, se lo mando encriptado y como
la otra persona es la única que tiene su
clave privada, va a ser la única que
pueda desencriptar eso y leerlo. Y ahí
sí estamos hablando de encriptar y
desencriptar. Sí, acá cuando estamos
hablando de una clave privada en la
blockchain, nosotros lo que hacemos es
con esa clave firmar un mensaje y
mandamos el mensaje junto con esa firma
y podemos verificar que ese mensaje ha
sido firmado con la clave pública
correspondiente. ¿Sí? Después, ¿qué
sucede si un usuario pierde su clave
privada y no tiene copia de seguridad?
Como dijimos, sí, un gran poder conslva
una gran responsabilidad. Sí. puede
recuperar desde la blockchain. No, no la
puede recuperar. Si una vez que perdió
la clave privada es una clave que vos
tenés secreta únicamente vos la tenés.
Por lo tanto, si vos la perdiste, no hay
nadie más que la tengan, no la puedes
recobrar.
Puedo solicitar una nueva al validador,
lo mismo, si el validador no la tiene,
pierde acceso a los fondos asociados a
esa dirección. Sí, totalmente. Sí. Y
después la red establece automáticamente
el acceso, ¿no? Como dijimos, nadie más
que vos tiene esa clave privada, por lo
tanto nadie más la puede recuperar.
Entonces, el único responsable es
mantenerla segura.
¿Qué es una seed phrase? Sí, nosotros
habíamos visto que esta seed phrase era
un número muy entrópico, ¿sí? Que
nosotros sacáamos por estos métodos
random, ¿sí? que después nos servía para
derivar wallets, ¿no? Habíamos visto que
esta este número lo codificábamos en
forma de una frase de 12 palabras
para tener una mayor redundancia y poder
recobrar eh el valor si es que nos
confundimos en alguna letra, porque
dijimos que si nos confundíamos en un
número era imposible poder eh
recobrarlo, ¿no? Entonces, esa es
nuestra sefrase. Acuérdense que a partir
de nuestra sef phrase que utilizaba el
lo que conocemos como bit 39, si que era
esa conversión de ese número a letra.
Después teníamos dos formas básicas, o
sea, hay más, pero tenemos dos formas
básicas de derivar otras eh claves
privadas de forma determinísticas. Sí,
habíamos visto VIP 44 y VIP 32.
Sí, VIP, acuérdense que es el Bitcoin
Improvement Proposal, ¿no? Pues esto fue
hecho para Bitcoin
y después obviamente se extendió para
todas las demás eh
eh blockchains porque funcionan con el
mismo principio, ¿no? Una clave privada,
clave pública, direcciones, etcétera.
Por más que las obtengan de formas
diferentes en el sentido criptográfico,
pero el
trasfondo la es el mismo. Sí. Entonces,
¿qué es una cifra? dice un algoritmo
para generar bloques, no justamente
esta, sino que es una frase semilla,
¿no? Por tanto, no es un algoritmo, es
una frase. Después dice una lista de
palabras que permite recuperar una
wallet y esto podría ser, ¿no? Ya
estamos viendo que es una frase, lista
de palabras, nos permite recuperar una
wallet, dice, pues, un código de
autentificación temporal. Sí, acuérdense
que no es temporal, yo lo tengo que
grabar. dijimos incluso la podemos
grabar en metal, ¿no? Para que no se eh
se fume con el tiempo como podría
hacerlo un papel. Y después dice un hash
de la dirección pública, ¿no? Y
justamente no es público, si es
totalmente privado, porque acuérdense
que tener esto con esto pueden derivar
todas las claves privadas que nosotros
tenemos, por lo tanto nunca lo tenemos
que que dárselo a nadie, ¿no? Después,
¿cuál es la diferencia entre una
externally own account, si las que
conocemos como EOA y un contract
account? Sí, habíamos dicho la clase
pasada que estas EOA básicamente se
trabajaron con este sistema de de clave
privada, clave pública, direcciones,
¿no? Para poder hacer firmas y eh
enviarlas a a la blockchain a a ser
procesadas, ¿no? Eso sería una EA, una
cuenta común y corriente como las que
venimos viendo. Y después dijimos que
existían otro tipo de cuentas que tienen
la el mismo formato de estas cuentas
EOA, si en el sentido tiene una
dirección, pero no poseemos las clases
privadas, sino que lo que tenemos
adentro es un código escrito con fuego.
Si en el momento de su creación, en el
momento de la creación se escribe es el
código escrito con fuego y eso es lo que
llamamos smart contracts, ¿no? Y
justamente por eso es un contract, ¿no?
Porque es una cuenta, pero que está
hecho con un smart contract, ¿sí? no
tiene la clave privada, sino que su
comportamiento está regido por código,
¿no? Entonces, vamos a ver qué dice acá.
Dice, "Las POA almacenan tokens y los
contratos no." Sí, en realidad las dos
pueden almacenar y que en realidad
ninguna de las dos almacena, ¿no? La que
almacenan los tokens es la blockchain y
vos con tu clave privada o el código de
contrato lo movés, ¿no? Y después dice,
"Los contratos pueden enviar
transacciones y las IOA no."
Sí, básicamente las dos pueden enviar
transacciones.
En realidad h si vamos a ser un poquito
más más explícito, las dos pueden mandar
mensajes, ¿sí? Porque se pueden
comunicar. Ahora, un un contract
account, si que es únicamente una
cuenta, no tiene firma para poder
realmente iniciar una transacción. Por
tanto, las transacciones siempre tienen
que estar iniciadas a través de una EOA.
alguien que firme para decir, yo voy a
pagar por esta transacción.
Y sí puedes ejecutar cosas del contrato,
¿no? Funciones de ese contrato.
Acuérdense que un contrato no es más que
un código, eh, un programa dentro de la
blockchain.
Después las EOA existen solo en
TestnetNT y no, acuérdense que
TestnetNet y MainnetNet
son dos blockchains
paralelas, no separadas, pero que si
funcionan ambas con EBM vamos a tener el
mismo método de generación de claves
privadas, claves públicas y adreses,
¿sí? y direcciones. Por lo tanto, todas
las EOAs que tenemos en en mainnet
también las vamos a tener en testnet
porque funcionan únicamente con la parte
criptográfica que vimos, la parte
matemática. Después dice, "Las COA están
controladas por claves privadas, ¿sí?
Acá es un poco lo que decíamos, y los
contratos por código, ¿no? Entonces está
la respuesta correcta. Sí. Después,
¿para qué se utiliza una testnet como
seolia? Sí, habíamos dicho que estas
testnets eran una copia, un fork
básicamente de la mainnet,
¿sí? Pero que adentro tenía s que no
tenían valor real, ¿no? O sea, nosotros
tenemos que seguir utilizando para poder
evitar ataques de y ese tipo de cosas a
los nodos, pero acuérdense que no tiene
valor real. Por lo tanto, nosotros
podemos ir a una faet, ¿sí? o un grifo,
como le quieran decir. Y podemos pedir
que nos den un par de Eters o centavos
de Eters o lo que sea para que nosotros
podamos probar cosas. ¿Sí? Entonces
dice, "¿Para qué se utiliza una Tesnet?
¿Cómo se pone?" Dice, "Para probar
aplicaciones y transacciones sin usar
dinero real." Sí. Bueno, esto es
básicamente lo que acabamos de decir,
así que lo voy a marcar. Después dice,
"Para almacenar contratos antiguos."
Sí, la verdad es que no, porque los
contratos antiguos, acuérdense que
siguen en la blockchain, ¿no? Un
contrato una vez que se desployó, ya
está escrito con fuego, no lo podemos
modificar, por tanto, sigue en la
blockchain. Y después para acelerar las
transacciones de la red principal, si no
se conecta la Tesnet con red sepolia, la
la Tesnet con la Mainnet, acuérdense que
les dije son dos blockchains totalmente
separadas que corren de forma paralela.
Si nosotros queremos conectarla,
acuérdense que la blockchain nunca puede
ver para fuera. Siempre vamos a tener
que utilizar un oráculo que conecte
ambas. Sí, podríamos utilizar, crear un
oráculo que conecte ambas y y usarlas.
Sí, podríamos.
Y después para variar bloques más
rápido, no lo mismo, no se conectan, por
lo tanto esto de acá no tiene sentido
tampoco. Después, ¿qué función cumple un
block Explorer como Ether Scan? A ver,
escucho una,
no sé si fue acá o no. Me parece que me
están escribiendo por Slack. Ahí no sé.
Eh, bien. Volvamos a donde estábamos.
¿Qué función cumple un block Explorer
como scan? Dice, crear nuevas nuevas
wallets. No, acuérdense que crear nuevas
wallet la crean ustedes, ¿sí? Lanzando
unas moneditas, por lo tanto necesitan
un block explorer para eso. Visualizar
información pública de la blockchain.
Sí. justamente block Explorer, ¿sí?
Block de y Explorer, ¿no? Explorar esos
bloques. Por lo tanto, esto parece
bastante straight forward, ¿no? Bastante
directo. Después validar transacciones
manualmente. Sí, acuérdense que validar,
lo que están validando son los nodos, no
es que uno tiene que validarlas, vos
podés visualizarlas, ¿sí? no validarlas
y después ejecutar smart contracts, ¿no?
Acuérdense que los smart contracts son
ejecutados por los nodos, no por el
Block Explorer. El Block Explorer es
únicamente un una DAP, ¿sí? una
aplicación descentralizada que se
conecta con esos contratos,
tiene un backend, obviamente para poder
eh indexar las cosas de los contratos y
poder hacer lecturas más rápidas, pero
básicamente es una DP, ¿no? Una
aplicación que se conecta con con la
blockchain para poder analizarla y ver
eh
qué es lo que tiene, ¿no? De una forma
visual.
¿Qué ocurre cuando se envía una
transacción en Ethereum? No, acuérdense
que una transacción, si yo envío una
transacción es una una EOA que firma la
transacción, la envía a un nodo en el
cual se crea se
la recibe en la mpol. Sí, de la mpol el
nodo agarra esa transacción, la
ejecuta. ¿Y qué significa esto ejecutar
transacción? Bueno, pasar de un estado
previo de esta máquina de estados a un
estado futuro. Y acuérdense que esta
transacción genera un cambio de estados
y cualquier cosa que esta transacción
revierta, el estado vuelve hacia el
primer snapshot. Sí, que me había
gustado mucho lo que había dicho una
chica de de acá, una de sus compañeras.
Hijo una fotografía. Sí, exactamente. Es
una fotografía ese estado en el cual
después a través
a otro estado. Sí. Y obviamente una vez
que se ejecuta eso, después tiene que
escribirse en la blockchain y hacer un
spread hacia los demás nodos. ¿Sí?
Entonces dice, se ejecuta inmediatamente
en todos los nodos. Sí, fíjense que
acabamos de decir la descripción y no es
que se están ejecutando todos los nodos,
se ejecuta en un solo nodo y después
hace unas para los demás. Después dice,
se guarda en una base de datos privada.
Sí, acá no estamos hablando de nada
privado, o sea, la blockchain es
totalmente pública. Después entra en la
mpol hasta ser incluida en un bloque.
Esto podría ser, ¿no? Porque nosotros
recibimos la transición en la MPOL y
después la incluimos en la blockchain y
se ejecuta solo en el nodo del usuario.
Sí. Eh, podríamos ejecutarlo en
cualquier otro nodo realmente, ¿no? Por
lo tanto, no.
Y además una vez que los demás nodos lo
vean, también lo van a ejecutar para
poder probar que realmente lo que está
diciendo el nodo que lo validó es el
correcto, ¿no? Y además el nodo del
usuario también puede ser un nodo que no
sea validador. Yo puedo crearme un nodo
para mantener las cosas y que ese nodo
no valide, sino que haga un spread de
esa transacción a otro nodo que sí lo
valide. Sí.
Después, ¿qué representa el gas en
Ethereum? Sí, dice el tamaño. Bueno,
acuérdense que el gas era la cantidad de
cómputo que nosotros teníamos.
Acuérdense que cada operación, ¿sí? No a
nivel Solity, sino a nivel assembly,
cada operación tiene un costo de gas.
¿Sí? Entonces, sumando todo eso nos va a
dar la cantidad de cómputo que nos toma
realizar una cierta acción, ¿sí?, una
cierta función.
Y eso es lo que nosotros conocemos como
gas. ¿Sí? Entonces, acá dice el tamaño
de un bloque, eh, no, el tamaño del
bloque no tiene nada que ver con el con
el gas. No dijimos que es el cómputo el
gas. la velocidad de una transacción y
tampoco sí acuérdense que la velocidad
de la transacción no está por la
complejidad de la función, sino por el
tiempo que tarda en confirmarse una
un bloque, ¿no?
Después la cantidad de nodos activos.
Sí, acuérdense que la cantidad de nodos
activos me va a dar un poco el precio
del gas, ¿no? Porque si yo tengo más
nodos activos y tengo pocas
transacciones y van a haber muchos nodos
ociosos y van a empezar a tomar más
transacciones a un precio más bajo que
si tengo poquitos nodos activos y muchas
transacciones, ¿no? Que van a exigir un
precio más caro para poder tomar tu
transacción, ¿sí? por la libre
competencia del mercado.
Y después dice el costo computacional de
ejecutar operaciones en la red, ¿no?
Esto es lo que acabamos de decir, por lo
tanto vamos a marcar esta.
Y después dice, según el modelo
introducido por la EIP 1559,
acuérdense que esta EP 1559 era la que
nos ponía un base fee y un priority fee,
en el cual el base fee se quemaba, si
desaparecía y el priority fee era lo que
se daban los mineros intentando generar
un poco esta economía deflacionaria. Sí,
dice, "El costo de una transacción se
compone principalmente de acá, como el
costo se compone, acabamos de decirlo el
base fe más el priority fee, así que
vamos a buscarlo. Dice hash fee y mining
fee, si esto no existe el hash fee y el
mining fee." Eh, de hecho, acuérdense
que Ethereum ahora ni siquiera se hace
minería, son validaciones.
Después tenemos base fee y priority fee,
que es lo que acabamos de decir, así que
lo vamos a marcar. Y después network fee
y validator fee. Sí. Eh, no tampoco, o
sea, ya lo dijimos que era esto. Y
después gas limitas block, ¿no?
Acuérdense que el gas limit
a
mi a mi transacción, ¿sí? Que yo puedo
ejecutar.
Si yo le pongo de menos, acuérdense que
esa operación no se hace.
Y si le pongo de más, acuérdense que
podemos llegar a tener problemas
también, además de que estaremos tirando
eh
de más que que se puedan consumir. Por
lo tanto, yo les aconsejo poner un valor
relativamente normal. Pueden hacerlo un
20% más, un 30% más, inclusive dos o
tres veces más. Si ustedes ven que es
una red barata y quieren jugar con eso
pueden tirarle más, no hay problema
porque el resto se le devuelve, pero
tampoco nunca exageren porque de la otra
forma también se les puede quedar
trabado. Sí, si ustedes ponen un límite
que se va más allá del bloque e y un
precio muy alto, quizás pueden llegar a
a un precio muy bajo, digo, eh, pueden
llegar a trabar la transacción.
Y bueno, veamos un poco cómo quedó. Sí,
vamos a ver su.
Uy, esta parte la más complicada para
mí.
Creo que debo ser un bot.
Automóviles.
Supongo que eso es un automóvil. Y esto
no sé si es un automóvil o no.
Ahí está.
Vamos a ver el score.
Y bien, hicimos todas bien. ¿Alguna duda
respecto a esto?
Genial, Na, que pudiste enviarlo. Me
alegro.
Bueno, ¿tenés el resultado del del
curso?
No, no lo tengo porque tengo únicamente
la versión alumno. También no tengo la
versión profesor,
no lo verme yo y me olvidé pedirlo.
Eh, después pregunto cómo se el curso,
pero bueno, por lo menos pudimos hacerlo
en tiempo real, ¿no?
Bien, vos sabes que leyendo para esto,
eh, me surgieron algunas dudas, ¿viste?
Siempre te surgieron dudas. Sí. Bueno,
eh una de las dudas que me surgió viendo
el tema de la de dos cos dos dudas, una
las más fuertes fue con la firma. ¿Por
qué? Porque la firma, si vos mirás, son
casi 130 eh caracteres hexadecimales
y como era la multiplicación que vos me
dijiste directa de el texto que hecho
que supongo que se le hace el hash al
texto y eso se lo multiplica
por la firma. Yo supongo que la firma
tiene la curva like de esa, la curva
elíptica.
Sí. Y no me quedó claro, no tengo claro
cómo esas dos cosas me dan cento eh ese
código tan largo por la cantidad de
bits, ¿me entendés? Porque uno da eh si
por porque el 256
te va a dar 256 con es un hashtag te va
a dar 256. El otro no me va a dar. Eh,
bueno, la curva eléctrica, sí, la curva
eléctrica puedo obtener eh una parte.
Ahí puedo poner hasta 520 bits, ¿no? En
la curva elíptica puedo obtener.
Sí, vos lo que tienes que tienes que
pensar ahí es que vos para la firma lo
que vas a obtener es un número que
dijiste de 130 más o menos. En realidad
son eh 62 64 headecimales por cada uno,
digamos, por el R, por el S y después el
B que tiene un byte. Sí, básicamente
serían 32 bytes más 32 bytes + 1 byte.
¿Qué son esos 32 by? 32 by 32 by 32 by,
o sea, 32 * 8 32 * 8.
Claro. Más ocho. Sí, esa es la cantidad
de bits. Ahora, ¿cómo es que lo
ubicamos? Eh,
básicamente es así. Ahí te digo.
Igualmente, eh, como les decía, esto es
interesante saberlo, no es que va a ser
fundamental para que ustedes puedan
programar, ¿no? O sea, sí entender el
concepto, eh, entender la matemática
cada vez que va un poquito más allá. Eh,
vos básicamente lo que tenés en la curva
acá es sí, un eje y un eje en X, ¿no? Y
obviamente acá tenés la curva, ¿no?
Ahora, ¿qué valores tenés acá? ¿Qué
valores tenés acá? Bueno, vas a tener un
valor R,
¿sí? No me acuerdo si era este el R y
este el S o al revés, pero bueno, uno
era el R y otro es el S. Sí, que
básicamente cada uno tiene 32 bytes
y después vas a tener un un otro número
que se llama B.
Sí,
que se llama B. ¿Qué es lo que va a ser
este B? Este Básicamente lo que más está
diciendo va a ser un solo byte, ¿sí? un
byte
que me va a estar dando el cuadrante,
¿sí? Me va a decir si es el cuadrante
cero, el cuadrante 1, dos o tres. Sí, en
cuál de estos cuadrantes está, se
entiende,
sí. Sí.
Entonces vos con el valor de R y el
valor de S puedes identificar un punto,
¿sí? ¿Dónde va a estar?
Sí. y tu clave privada, por ejemplo,
¿no? Con el valor R y con el valor S.
Y después, obviamente, como dijiste, lo
otro lo tenés que gallar. Si ese gallar
también lo vas a ubicar después en esta
curva, ¿sí? Y vas a hacer esa
multiplicación.
Sí. ¿Cómo sería ubicar en esta curva? En
realidad no tenés que ubicar en la
curva. A ver, espera.
Ah, supongo que
está bien. Te entendí igual el concepto
de como una curva elíptica.
Sí, esta esta es la curva elíptica. Por
ejemplo, vos tenés el el R y el S y acá
vas a tener un punto, digamos, que va a
ser tu tu clave privada, ¿sí? Eh, o
mejor dicho, acá vas a tener un punto
que va a ser la información, ¿no? Que va
a ser el hash de la información. O sea,
vos eh
con esto calculas un hash, ¿no? Y y lo
ubicas acá y después vos tenés tu clave
privada, ¿sí? Que ponerle que sea dos tu
clave privada. ¿Qué es lo que vas a
tener que hacer? Bueno, ese punto
multiplicado por dos. ¿Cómo hacemos la
multiplicación por dos? Acuérdense que
la multiplicación por dos es agarrar
esto de acá, así, pac, ¿no? Corta por
acá, bajamos acá y acá tenemos el valor,
¿no? Entonces acá obtenemos el nuestro
R, nuestro S y nuestro B. Si le decimos
el B, ¿en qué en qué cuadrante está? El
R, eh, este punto, no, este punto acá,
digo, y el S, este punto acá, no
se entienden
el mensaje. Entonces, lo jallamos y lo
ubicamos en la curva y después con la
clave privada multiplicamos cuatro
veces. Aqu le puse dos la clave privada,
obviamente dos no es en trópico, vamos a
tener una clave privada enorme, un
número enorme y por lo tanto acá vamos a
tener que hacer un par de
multiplicaciones que como dijimos para
llevar a un número grande es fácil
porque vos haces dos acá lo haces por
dos, después acá puedes ya que tenés
este por dos lo puedes llevar a por
cuatro después una vez que tenés el
cuatro lo puedes llevar a 4 por 4, ¿no?
Ya a 16 y así máximo vas a necesitar 512
eh multiplicaciones para poder
multiplicar cualquier cosa. Básicamente
se entiende.
En cuanto a concepto, yo me tengo que
llevar el concepto de que como le dice
la curva elíptica cuando verifica, que
viste que la firma verifica
versus la clave pública que
supuestamente hice el mismo proceso, le
aparqué la curva elíptica a la clave.
Eh, ese concepto me lo tengo que llevar
así sin entrar en la detalle matemático
para no complicarla. Sin entrar en el
detalle matemático vos lo que llevar es
que vos acá cuando firmás, ¿sí?, en la
curva elíptica lo que haces es
multiplicar tu clave privada, ¿sí? Por
lo que sea que estés firmando, ¿sí? Un
hash de lo que sea que esté firmado. Eso
te va a dar un valor RS y B, ¿sí? que te
va a tener acá un un la parte del eje X,
la parte del eje I y y el cuadrante, si
vas a tener este RSIB y vos vas a mandar
ese RSIB a la blockchain. Este RSIB va a
serando como firma se conoce como firma.
Bueno, la información vos acá la
información la tenés callada, pero vas a
mandar la información sin callar.
información
y dentro de la información una de las
cosas que tenés sí es el mensaje
más el
sale
de la a través de un lo que pasa con
esto. Una vez que llega acá al Sí, una
vez que llega acá a la blockchain, ¿cómo
hace para verificarlo? Bueno, vos tenés
los valores de RS y B, que serían la
firma, ¿sí? Entonces, tenés la firma,
tenés el mensaje que vos firmaste
y tenés la clave pública, digámoslo
entre comillas, que sería el address.
¿Sí? Entonces, vos vas a poder
comprobar, ¿sí? Verificar.
Claro. Ah, entendí porque yo le estoy
mandando el adres también en esa
codificación. Ahora sí. Claro,
por eso puede verificar contra la cable
pública.
Exacto.
Porque salió también la cable, el AD
salió de la clave pública.
Exacto.
Porque eso eran 60 y 64
40 números hexadecimales era la el.
Claro. Vos esa firma ese RSIB con el
mensaje que vos firmaste, ¿sí? con tu
clave privada que derivó en ese adres,
vas a poder verificar con ese adres que
realmente fue esa clave privada la que
lo firmó. ¿Se entiende?
Ahora sí, ahora sí me quedó. Ahora sí.
Cuando lo estaba mirando no entendía
cómo hacía para saber validar contra la
contra la clave.
Digo, ¿por qué validar contra la
pública? ¿Qué tiene la pública? Ahora
sí, con lo del ADR. Sí.
Genial.
Bueno, si se entiende, lo que les digo
es esta parte de acá es
tema matemático. Sí, está bueno saberlo,
pero bueno, no es tan fundamental. Esta
parte de acá sí es fundamental que la
sepan. Sí,
esta parte de acá sí es fundamental que
la sepan.
¿Por qué? Bueno, ¿por qué ustedes van a
hacer este tipo de cosas cuando estén en
la blockchain? Porque muchas veces
ustedes sí van a ser relayers o cosas
por el estilo en los cuales ustedes no
van a mandar las cosas directamente a la
blockchain, sino que van a pedirle a la
wallet que firme algo. ¿Sí? Y después
ustedes pueden mandar, por ejemplo, esa
firma a la blockchain. Sí, existe un
protocolo, por ejemplo, que se llama
permit.
Sí, después lo podemos mirar un
poquitito, pero básicamente permit nos
permite aprobar, si por un tercero eh
que se pueda mover dinero de la wallet
de ese tercero, ¿sí? ¿Y cómo podemos
hacerlo? Bueno, ese tercero nos tiene
que dar una firma. Esa firma puede ser
off chain, fuera de la de la blockchain.
¿Y para qué me sirve eso? Bueno, porque
si no el la persona que manda eh una
transacción a la blockchain tiene que
pagar por eso.
Sí. Y para evitar que la persona tenga
que pagar y poder hacer un un UX má más
bonito, ¿sí? Que sea más fácil para el
usuario, vos le puedes decir, "Okay,
dame la firma que me permita moverte
esto y después yo lo muevo por vos y
pago esa comisión, ese gas por vos." Sí,
eso es básicamente lo que hace Permit.
Después de Permit, digamos que es un
protocolo nativo de los tokens, también
existe lo que se llama Permit 2, que es
un protocolo inventado por Uniswap
intentando replicar este permit, pero
para tokens antiguos que no tenían este
permit. Sí, después lo podemos ver, pero
bueno, ahora se los dejo picando por ahí
por si alguno lo quiere investigar. Pero
bueno, eso básicamente sí sepan que
ustedes van a derivar acá una firma que
va a estar dado con su valor RS y B.
Y con eso más el mensaje que ustedes
mandan, que acuérdense que el mensaje
tiene toda la data, o sea, el el valor
que estás mandando, desde qué billetera
hacia qué billetera. E
esa billetera. Acuérdense que si
nosotros estamos mandando una
transacción a otra billetera por
mandars, va a ser dos wallet común y
corriente quizás. Pero si ustedes están
llamando para ejecutar una función de
smart contract, esa billetera, ese ese
campo to hacia dónde estamos mandando la
transacción puede ser un smart contract.
Sí, después van a tener data, ¿sí? Que
ustedes pueden mandar en el caso de que
ustedes le estén mandando billeta,
pueden escribir ahí en la data te estoy
mandando en concepto de X o pueden no
ponerle nada y si ustedes están llamando
un smart contract ahí van a poner cuál
es la función que ustedes están llamando
y cuáles son los parámetros que le van a
mandar esa función. Sí, todo eso es
parte de mi mensaje y yo eso lo voy a
estar firmando y esa firma me va a dar
este valor RSIB. Yo mando ese mensaje
con ese RSIB, ¿sí? Y ya de ese mensaje
podemos sacar este address en el campo
from, ¿sí? Y podemos determinar si la
firma es válida o no es válida. ¿Sí? Y
esto es lo que va a estar haciendo el
nodo, básicamente. El nodo o lo pueden
hacer también a nivel contrato, como les
decía, yo firmo offchain con una wallet
y lo mando como si fuera un parámetro y
después en el contrato verífico que la
firma corresponda con quién dice ser.
Sí,
entendió.
E Cristian, una pregunta también sobre
eso y sabes que cuando estaba estudiando
en, fíjate en el Etter Kipu, eh, la
clase seis,
sí,
eh
hay una parte que hay un gráfico que
dice anatomía de una transacción en
Ethereum.
M, clase seis dijiste.
Clase seis.
Sí,
hay un gráfico. Esa, ¿ves que ahí dice
ahí al costadito abajo dice firma y dice
clave privada oculta?
En realidad ahí no está la clave privada
oculta, o sea,
claro, no, no está la clave privada.
Okay. Por eso me hizo un poco de ruido
eso justo que estabas hablando de la de
la firma, no es la clave, es el hash,
digamos.
Eh, claro, no es el resultado de la
multiplicación de de lo que pone uno en
el contacto más la clave privada, ¿no?
Estábamos diciendo eso recién.
Claro. Acá vos tienes
acá vos tenés firma digital y tenés
firma. Por lo tanto, acá se ve que se le
pasó seguramente se va cuando lo hizo,
eh, que se le puso dos veces, pero
básicamente la firma digital, como dice
acá, es la prueba de de autenticación,
¿verdad? Eh, y esto, bueno, se pasó
seguramente no no tiene nada que ver, o
sea, la clave privada no va oculta, sino
va la firma y a través de la firma vos
puedes
eh con el adres y el mensaje verificar
que ese mensaje fue firmado por esa
clave privada que corresponde a ese
adres. Sí,
sí. Garantizar el no repudio común y
corriente como siempre. Sí,
pero bueno, está bien. No quería
aclararte eso porque cuando lo vi en la
documentación dije, "Lo voy a preguntar
en la clase. Yo estaba estudiando esta
parte y nada, me pareció bastante raro."
Está perfecto. Fíjense esto, ¿no? O sea,
ustedes tienen una clave privada. Sí,
esa clave privada eh la convierte en una
clave pública. Esa clave pública
la convierten en un en un
Sí.
Ahora, cuando ustedes tienen un mensaje,
¿sí? Esto digamos matemática, ¿no?
Ustedes pueden de esta clave privada
llegar a este address.
Ahora, cuando ustedes tienen un mensaje,
¿sí? Van a utilizar esa esa clave
privada para firmarlo. Sí. Entonces, con
esa clave privada ustedes firman el
mensaje
y eso acá les va a dar una firma.
Sí. Ahora, la firma sola no es
suficiente para poder verificar, ¿no?
Para firmar necesitamos la firma y el
mensaje. Por tanto, este mensaje también
lo tenemos que mandar. Sí,
mandamos el mismo mensaje que firmamos.
Sí. Junto con la firma.
¿Qué pasa en este mensaje? Nosotros
incluimos este address. Sí, este adres
está incluido
en este mensaje. ¿Cómo es que está
incluido? Bueno, acuérdense que el
mensaje,
tres campos que tienen fundamentales son
el from,
el to y el value, ¿no? Cuánto estamos
mandando, desde quién lo manda y hacia
quién.
El from, si que desde quién lo mandan,
es este address que está incluido, ¿no?
Entonces, vos vas a tener el mensaje,
vas a tener el este address, ¿sí?, que
lo vamos a estar mandando en el mensaje.
Sí. Y la firma, ¿no? Vas a tener firma,
mensaje y adres. Esto lo voy a sacar de
acá. Lo puse ahí para que se vea que
está ahí el
en el mensaje está este address.
Entonces ustedes tienen el address,
tienen la firma y tienen el mensaje. Y
con esto el nodo puede validar.
¿Se entiende?
¿Por qué? Fíjate que este adres es el
mismo que se obtuvo de esta clave
privada y esta misma clave privada es el
que hizo la eh la que firmó el mensaje y
con el mensaje y con el address que
derivó esta clave privada, yo puedo
comprobar que fue la misma clave privada
que generó este address al que firmó.
¿Me entienden?
Ese es el protocolo permit el que
chequea eso.
No, no, eso es otra cosa. Esto olvídense
por ahora.
Esto es como funciona un proceso de
firma. Si yo de una clave privada derivo
una clave pública, de esa clave pública
un adres. Cuando firmo un mensaje, firmo
un mensaje con esta misma clave privada
y lo mando. Sí,
sí. después como el adres y esa firma,
como ese adres provino de esa misma de
esa misma firma, yo puedo llegar a
comprobar que fue la misma firma que que
firmó estos dos eh protocolos, ¿no?, que
firmó esta firma y que firmó este e esto
de acá, ¿no? Para este adres, ¿se
entiende?
Sí, sí, eso está clarísimo. Lo que yo te
preguntaba es el nodo, ¿con qué
protocolo valida todo eso? ¿Tiene un
protocolo para validar todo eso? o hace
todas las operaciones inversas.
No existe operaciones inversas. Sí, hace
operaciones complementarias.
También es matemática.
Vos a través del complemento puedes
averiguar que con esta firma y este
address que tanto esta firma con este
address partió de una misma clave
privada.
Acuérdate que la clave privada deriva
todo. Entonces, vos por un lado
obtuviste el ADES, por otro lado
obtuviste el la firma. Vos puedes
comprobar que tanto la firma como el
ADRES proviene de la misma clave privada
sin saber cuál fue esa clave privada. La
clave privada. Eso eso me queda claro
porque vos no podés ir para atrás porque
de hecho vos en la pública tenés 520
bits y no vas a detectar una una clave
que está hecha
Exacto.
con 256. Es imposible ir para atrás en
ese lado.
Exacto,
eso lo tengo claro, pero tiene que haber
alguna forma matemática que hace todo
eso, que valida.
Sí, obvio. Acá nosotros tenemos la
privada, ¿sí? Que deriva un adres y que
deriva la firma. Ambas salen de la clave
privada, por lo tanto, yo puedo
averiguar que el root es lo mismo, es el
mismo root. Sí.
Es álgebra modular y es un grupo
abeliano, por eso puedes encontrar los
mismos resultados. Exacto. Ahí como dijo
Bernardi,
se entiende, o sea, no me voy a poner a
hacer la matemática acá en lo que está
bien, está bien, te entendí. Ya, ya
cuando me
álgebra modular es repasar un tema de
eso de álgebra modular.
Claro, por eso en lo que les pasé,
digamos, tiene un ejemplito bien simple
de cómo dos números primos, eh, digamos,
uno para encriptar y el otro para
desencriptar, cómo pueden hacerlo y cómo
funciona a través de la teoría esta de
complementos. Sí, obviamente bien simple
para que se pueda entender el concepto.
Eh, acá ustedes lo que tienen que
entender es que si yo parto una misma
clave privada para derivar un y esa
misma clave privada la utilizo para
firmar, yo puedo de alguna forma
comprobar que tanto este adres como esta
firma provienen del mismo de la misma
clave privada. Sí,
se entiende.
Sí. Okay,
eso es lo que ustedes tenga que
entender. Yo derivo de una clave privada
a un adres y después con esa clave
privada hago una firma. Yo tengo que
poder determinar que esa firma y ese
adres provienen de la misma clave
privada. No importa cuál es la clave
privada, yo solo tengo que saber que
vienen de la misma. Sí. Y eso es algo
que se puede saber. Sí,
bien. Estamos hasta ahí. Entonces,
una cosa que les quería comentar,
sí, que acá cuando busqué el tema
eh Kena, creo que fue que me lo pidió eh
por el tema de la firma, firma
electrónica
y firma digital, creo que cuando se los
di los dije al revés. Ac la firma
digital es un tipo específico de firma
electrónica con mayor seguridad y
validez jurídica. Sí. Por lo tanto, la
firma digital es la que es vinculante,
que es la que se hace con clave privada,
mientras que la firma electrónica es
únicamente el el sello holográfico, ¿no?
Okay, gracias.
Sí, o sea, fue un tema de nombres que yo
me equivoqué, quiero se los di al revés
si si no me equivoco, pero bueno, sepan
el concepto no cambia, es el mismo. Sí.
Bien,
entonces si estamos todo bien, eh,
vayamos a a la clase número ocho, sería,
¿no?
O siete en realidad.
Hoy no hice diapositiva, sí, intentando
a ver si si podemos ir directamente con
el plan de carquipu, sí, porque me están
llegando muchas solicitudes diapositivas
y como les no se las puedo pasar. Eh,
acá vamos a ir el índice. Esta clase ya
terminamos el módulo dos. Ese examen fue
básicamente el examen del módulo dos.
Acá pasamos al módulo 3. Hoy estaríamos
viendo lo que serían las epips, los
hitos históricos y las transacciones del
consenso de participación de merch. Sí,
un poco ya comentamos este tipo de
cosas, pero vamos a a verlo un poquito
más. Sí.
Entonces, como repaso dice, bueno, que
en la clase anterior eh vimos el tema de
las wallets, ¿sí? El tema de metamas. Yo
les había dejado incluso de tarea que se
descarguen una metamas hoy. Si tenemos
tiempo después lo hacemos. Si no
igualmente se los vuelvo a dejar en
tarea, por favor háganlo, descárguense
una meta más, pidan dinero, una fauset,
intenten hacer una transacción, ¿sí?
para poder entender un poco todo esto y
ver cómo está funcionando. Ustedes ya
van a poder entender cuando confirman y
ven el tipo de cosas que pasan, qué es
lo que está pasando por detrás, porque
ya tienen un concepto bastante eh
bastante bueno, ¿no? De cómo es que está
funcionando todo esto, ¿no? Entonces,
ustedes van a entender lo que están
haciendo al firmar y hacer las cosas con
la metamas, que capaz que otro no
entiende.
Después dice que, bueno, analizamos la
diferencia entre una red principal,
mainnet y las testnets. Sí. Eh, el tema
de la Fauset que nos sirve para pedir
dinero en las testnet porque es un
dinero que no tiene valor. La anatomía
de una transacción, ¿sí? Es decir, ¿qué
cosas tiene una transacción? Eso no
solos lo habíamos visto antes, sino la
clase pasada cuando fuimos viendo en
Etcan.
Acá en habíamos entrado a una
transacción. Podemos entrar ahora a
cualquier transacción y y
recordarlo.
Eh, fíjense que est es un bloque, ¿no?
Por tanto, no es una transacción, pero
dentro de este bloque hay 261
transacciones. Podemos ir a ver esas
transacciones y decir, "Okay, yo quiero,
vamos esperando que nos deje entrar."
Bueno, yo quiero ver esta transacción de
acá, ¿no?
Sí. Y acá podemos ver las cosas que
tiene la transacción. Fíjense lo que
tiene. Esta es la data que yo estoy
firmando. Sí, cuando cuando la mando,
¿no? Toda la data est transacción es lo
que firmo. ¿Y qué cosas tengo para
firmar? Eh, bueno, el realidad no. Eles
se pone junto con el bloque, si solo
pone el nodo validador.
Eh, bueno, sponsor tampoco esto es de
scan de la DAP. Esta el from sí, sí,
obviamente esto va a ser el que el nodo
tenga que verificar junto con la firma.
para ver que toda la transacción haya
sido firmada por por este from, ¿no? Por
este por este mismo por esta misma clave
privada que generó este address.
Este chu sí es hacia dónde estamos
mandando la transacción que puede ser un
una wallet, una EA o puede ser un smart
contract. Fíjense en este caso un smart
contract acá tiene el cosito de contract
y es más, te dice qué es el smart
contract. Este dice que es un USDT.
Después tenemos el el valor, ¿sí? ¿Cuál
es el valor? En este caso, fíjense que
le mandó cero ¿Por qué? Porque no está
haciendo una transacción de mandarle de
una billetera a otra, sino que está
llamando a una función de este smart
contract. Si, por tanto, le manda cero,
solo quiere llamar una función.
Eh, bueno, después el transaction fe y
el gas price y todo eso con respecto a
cuánto es que él va a estar pagando, si
esto esas cosas también se firman, si
van en la firma y gas limit
no poder sacar de más de lo que propuso
la persona que que iba a mandar.
Esto de acá, ¿no? Esto es de la
blockchain, ¿no? El tema de de cómo se
calcula. Si después otros atributos, por
ejemplo, el NOS. Si, el NOS también va.
El no es una cosa que me sirve
justamente para evitar repetibilidad.
¿Por qué? Porque si yo mandara algo sin
el NOS y digo, por ejemplo, le voy a
mandar un éter a Pablo, Pablo podría
agarrar esa transacción y volverla a
repetir. Y volver a repetir. ¿Por qué?
Porque ya tiene una firma mía. Sí. En
cambio, si yo aseguro que tenga uns,
¿sí? y que ese no solo se puede ejecutar
una vez, el dinero va a validar ese NOS
y dice, "Okay, si esto ya está
ejecutado, no lo vuelvo a ejecutar,
tengo que ejecutar el siguiente NOS." Y
¿qué pasa si yo quiero ejecutar el
siguiente NOS? Al cambiar ese número NOS
de la transacción de la data que yo
estoy firmando, me cambia toda la firma.
¿Sí? Entonces, Pablo no podría volver a
firmarlo porque no tiene mi clave
privada y no puede repetir el ataque,
¿no? El hacer un freeplay ataque. Esto
es importante que lo sepan porque como
dije muchas veces esto no va a estar
manejado por, o sea, está manejado por
los nodos a un nivel más grande, pero
ustedes pueden hacer en sus aplicaciones
cosas que verifiquen e
firmas, ¿no? Para poder hacer, por
ejemplo, firmas off chain y después
ustedes mandarla y ese tipo de cosas.
Cuando ustedes verifican van a tener que
tener en cuenta este tipo de cosas como
los replay attacks y demás.
Cristian, ese del contrato, ¿no?
Este es el el non de la cuenta. Sí.
Cada cuenta tiene un que lo puede
utilizar una sola vez. Sí. Y acuérdense
que va en orden desde el 0 1 2 3 y
sucesivamente. No, no puedes saltearte
ningún número, ni ir para atrás ni
volver a repetir.
Pero, pero del from o del to. Sería
del from. El from es el que este from es
el que está firmando la transacción.
Ah, okay, okay, okay. Listo. Gracias.
Este es el que firma la transacción,
eh, y es justamente es ese from. Fíjense
que tiene un montón de transacciones ya
hechas, ¿no? O tiene un bastante alto.
Y después acá tenemos input data. Si
este input data básicamente cualquier
cosa que ustedes quieren escribir. ¿Qué
es lo que sucede cuando ustedes están
haciendo una transacción un contrato?
Acá lo que se pone es cuál es la función
que ustedes quieren mandar y cuáles son
los parámetros. Fíjense que acá, por
ejemplo, tenemos un contrato que tiene
una función que se llama transferám
que es un address y otro parámetro que
es un win 256 y sería un entero sin
signo de 256 bits. Sí, uno es el true y
otro es el value. O sea, estamos haendo
una transferencia de del from este
hacia este to de una determinada
cantidad de valores de este contrato que
dijimos que se llama USDT. ¿Sí?
¿Cómo hacemos para ver el esto de acá
para codificarlo? Bueno, tenemos un
selector, fíjense, acá tenemos el
selector, así que esto nos está diciendo
que es la función transfer.
Esto de acá nos está diciendo cuál es el
ese valor true. Y esto de acá nos está
diciendo cuál es el valor este value,
¿no? Obviamente esto está una forma así
para que ustedes lo puedan ver. Una vez
que se envía, si cuando yo lo envío al
nodo, esto en realidad se enviaría así,
¿no? Acá tenemos la el selector, acá
tenemos el
a quién le estamos mandando y acá
tenemos el el valor, ¿no? Al final,
¿sí?
Y obviamente eso está firmado, por lo
tanto yo no podría agarrar y
modificarlo. ¿Por qué? Porque ya lo
firmó este este from. Sí.
Y y bueno, eso básicamente, ¿no? Ahí
tenemos los datos de la transacción.
Consulta. Si la función era transfer,
supuestamente llamó la función, pero le
transfirió cero.
No, no le transfirió cero.
Esto es lo que transfirió.
Sí. Fíjate, fíjate que es diferente lo
que le transfirió
del contrato USDT. Sí. que es este
contrato de acá, sí que fue 199,50.
Acá está 199,50
y el valor que es en eters, ¿no? Este
valor, ¿cuántos é le transfirió? Le
transfirió cero ethers. Sí,
pero 199 con 50, ¿qué le transfirió?
USDT.
Ah, okay, okay, okay. Gracias. Sí.
O sea, el UST es un contrato. El
contrato tiene una función transfer para
transferir el valor que está en el
contrato. Vos tenés 199 USDT en ese
contrato y vos lo estás transfiriendo de
ahí. Sí. No estás transfiriendo los
sets.
Sí.
O sea, me queda claro que todas las
exchange tienen que correr bajo este
tipo de plataforma sobre Ethereum.
Si yo tengo un exchange que cambio de
cualquier cripto a otra, lo tengo que
hacer con un contrato.
Eh, sí,
sí.
O sea, con Bitcoin no lo podría hacer en
una palabra porque solamente es una
transacción. Y acá sí podría ser un
exchange de criptos.
Sí, sí, sí.
estás mucho más limitado en Bitcoin
porque tiene scripts mucho más simples.
Eh, pero sí, fíjate que por eso Bitcoin
no tiene
stable coins o o demás cosas en
Ethereum. Sí, sí tenés algunos tipos de
NFTs bastante rústicos en Bitcoin que se
hicieron, por ejemplo, con colores y ese
tipo de cosas para darle color a tus
bitcoins, pero bueno, eh son cosas mucho
más rústicas. Acá como que puedes hacer
básicamente lo que quieras. Después
vamos a ver un poco un poquito más de
tokens, si no no se desesperen, vamos a
verlo más adelante, pero sigamos. Ahora
lo que quería mostrar es básicamente los
parámetros que tiene la transacción,
¿sí? Y las cosas que vos estás firmando,
que acabamos de de hablarlo.
Y bueno, todas estas cosas, fíjense que
lo estamos viendo acá en el Terscan,
¿sí? ¿Por qué? Porque es visible para
todos.
Después vimos también el modelo
económico del gas. Sí, esta IP 1559, la
tarifa base má la prioridad,
eh, como esta se quema y la otra se la
da a los mineros o mejor dicho a los
aliadores. Ciclo de vida completo de una
transacción, ¿sí? Cómo llega la MPOL,
cómo se hace la confirmación, etcétera,
etcétera. Sí.
Ahora dice, bueno, en introducción dice,
"Etherum es un protocolo de código
abierto." Sí, esto lo dijimos también un
montón de veces. Sí, es un protocolo
código abierto, por lo tanto cualquiera
puede descargárselo, cualquiera puede
modificarlo, ¿no? Lo que pasa que si vos
lo modificas tiene que ser bajo las
reglas de Ethereum, ¿no? ¿Por qué?
Porque si no ustedes estarían generando
un consenso diferente, ¿sí? Estarían
haciéndose un fork, estarían apartándose
de ese de la red principal, ¿no? Podrían
crear su propia red, por ejemplo, de esa
forma.
Y bueno, dice escucha evolución depende
de la técnica social de comunidad
global. En sesión analizamos los
mecanismos formales de actualización,
¿sí? Los mecanismos vamos a analizar
estos mecanismos formales que son a
través de estas EIP que tenemos acá,
¿no? Dice las EIP, son las Ethereum
Inflement proposas, que básicamente es
una propuesta que como la comunidad es
abierta, cualquiera puede eh meterse a
la comunidad de Ethereum, puedes hacer
propuestas para mejorar algo de
Ethereum.
Sí,
el tema es que para hacer eso no es que
yo digo, quiero mejorar este Ethereum,
agarro y lo modifico nada más. Sí, yo
tengo que hacer una propuesta y tiene
que pasar todo por un ciclo de revisión
para ver que esa propuesta realmente
está bien y podemos llevarla adelante y
que todo el mundo a través del consenso
general lo incluya dentro del del corte
Ethereum. ¿Sí? ¿Cuáles son esos ciclos?
Bueno, lo que tenemos descrpto acá, sí,
primero se hace una propuesta, yo agarro
y puedo decir, "Okay, eh,
no hay una
vinculación entre las las address y los
smart account, ¿sí? Pero se generan de
forma determinística. Por tanto, vamos
hacer una propuesta para decir que hay
una vincul para decir que eh quiero
hacer un
un programa que pueda eh vincularme esas
dos cosas, ¿no? Para que todo el mundo
pueda trabajar con ese estándar y todo
el mundo sepa cómo vincular esas dos
cosas. Sí, eh inventé algo, ¿no? Por por
así inventarlo, pero básicamente es eso,
¿no? Entonces yo hago la propuesta y
digo lo que quiero hacer. Después
empieza a haber una discusión técnica,
¿sí?, de cuáles son los pros, cuáles son
los contras, si existe algo similar, si
tiene sentido hacerlo, si no tiene
sentido, si cómo es que lo podemos
hacer, si genera algún problema de
seguridad, etcétera, ¿no? Después de
eso, de la discusión técnica, viene
pruebas, ¿sí? Se empiezan a hacer
pruebas, se se prueba muy bien que todo
esto funcione y que no tenga problemas.
Después viene la implementación,
¿sí? Se implementa.
Después de la implementación viene lo
que se conoce como el hard fork. Sí, el
hardfk justamente es cuando vos eh te
desvías del consenso anterior porque
agregaste algo nuevo, ¿no? Es decir, si
no las personas no agregan esa cosa
nueva que se agregó, es como que queden
afuera de este sistema que se que se
diseñó, ¿no? Porque va a ser diferente.
Y acuérdense que si es diferente eh la
validación no va a ser posible, ¿no? O
se van a validar cosas diferentes, por
lo tanto va a quedar relegado. Entonces,
vos ahí vas a tener en cuenta si vos
querés seguir por el nuevo camino o si
quieres seguir por el camino viejo. ¿Qué
es lo que sucede? Bueno, cuando todo
esto está bien, digamos, y pasó todas
las etapas y generalmente la comunidad
toda va hacia a ese nuevo camino, ¿no?
¿Por qué? Porque si no van a quedar
afuera del
del protocolo principal, ¿sí? Y una vez
que pasa eso, después viene la adopción,
¿no? Que es un poco eso que decíamos.
Bueno, ¿cuántos van a ese hardfk y
cuántos no?
¿Cuáles son las características
principales de esta IP? Bueno,
básicamente tenemos tres tipos de IP. Si
yo acá les dije una IP genérica, pero
básicamente tenemos tres tres tipos,
¿sí? Lo que son los tracks, lo que son
las ERC y las que son informational o
meta. ¿Sí? ¿Qué es esto? ¿Cuál es la
diferencia entre todo esto? Lasar track,
sí, dice, son cambios que afectan a la
implementación del protocolo, ¿sí? Como
reglas de la red de la máquina virtual
EBM. Si ustedes se acuerdan, yo cuando
les mostré, por ejemplo, EBM codes, ¿sí?
Le dije, "Bueno, si ustedes van
si ustedes van a a
Shanghai, por ejemplo, bueno, tienen
este ad, ¿sí? ¿Por qué? Porque, bueno,
está hecho en Frontier, ¿sí? Entonces,
desde la máquina virtual Frontier,
ustedes tienen estas esta suma AD, ¿no?
Que Frontier fue, si no me equivoco, la
primera.
¿Qué es lo que sucede? Muchas fueron
agregadas después, ¿no? Yo les había
puesto, por ejemplo, el pulsero, ¿no? El
5F que tenemos acá. Fíjense que esta fue
agregada en Shanghai. Y lo que pasa en
Frontier no teníamos esa de acá. ¿Cómo
fue que se agregó esto? Y bueno, si hizo
una IP diciendo, "Okay, estaría bueno
que nosotros podamos tener en la máquina
Core Ethereum un un
off, ¿sí? Que sea un push cero, ¿sí?
Para no tener que poner un push uno
seguido por un cero, ¿sí? Lo cual me va
a ahorrar un poco de gas. Fíjense que
esto cuesta dos contra esto que cuesta
tres y encima al tener que ponerle otro
número es como que eh cuesta más
todavía, ¿no? Porque tengo que escribir
más código.
Acá es directamente un solo hexadecimal.
Acá tengo, o sea, dos hexadecimales, acá
tengo todos hecimales más después el
cer, ¿no? Entonces es más económico y
más compacto. Entonces dijeron, "Bueno,
vamos a hacer una IP que diga que vamos
a agregar este código pulsero por esto,
esto y esto." Sí, se empezaron los
comentarios, se empezó a llevar eso
adelante y bueno, terminaron diciendo,
"Okay, en la máquina Shanghai nosotros
vamos a hacer un hardfk en lo cual vamos
a agregar eso." Sí.
Y eso es algo del core. ¿Por qué? Porque
está cambiando a la máquina virtual de
Ethereum. Si ustedes después mandan una
compilación, por ejemplo, que tiene este
5F, si lo mandan a una máquina en la
cual no tiene esta Shanghai, no vas a
ver cómo interpretarlo. Sí se va a
romper. Por eso es parte del core de
Ethereum. Sí. Y esto es un poco lo que
dice acá, ¿no? El standard track.
¿Qué tiene que qué se puede agregar?
OPCS únicamente, ¿no? También hay otras
cosas. Por ejemplo, la IP 1155 que
nosotros vimos, eh perdón, 1559 que
nosotros vimos de el base fe más
priority fee, también es una forma en la
cual esa máquina está contabilizando el
gas, ¿no? Por lo tanto, si hay otra
máquina que contabiliza el gas de forma
diferente, cuando se quiera validar,
esas dos cosas van a a chocar, ¿no?
Porque si lo hacen de forma diferente,
van a llegar a un resultado diferente y
van a ver que no son iguales y no se van
a poder validar con el consenso, ¿no?
Entonces es algo que toca directamente
el core, ¿sí?, de de nuestro de nuestra
blockchain de Ethereum, ¿sí?
En cambio, lo que son los ERC, que
significa Etherium request for comments,
básicamente no está tratado para el core
de las cosas, sino que está tratado para
estándares, ¿sí? De aplicaciones
que permiten interrocionalidad.
Acá es donde nosotros vemos, por
ejemplo, el tema de los tokens que
nosotros habíamos visto, por ejemplo,
ahí el USDT que dijimos es un token, sin
entrar mucho en detalle y todavía
tampoco hemos entrado, vamos a entrar
más adelante, pero básicamente un token
es una ficha que representa otra cosa.
En este caso o su tokens que están
representando
dólares que pueden estar en el tesoro
tesorio nacional americano o en una
cuenta bancaria o donde sea. Sí. y los
está representando y se pueden mover muy
fácil a través de la blockchain porque
la blockchain permite esa esa ventaja,
¿no?
Entonces, ¿qué es lo que sucede?
Si yo quisiera hacer, digamos que ese
token
e un estándar, ¿qué significa esto de
estándar? Es decir, yo quiero poder
agregar ese token a una meta más y que
pueda transferirlo, ¿sí?, a otro
usuario. Pueda ver cuántos tokens tengo,
pueda ver cuál es el nombre de ese
token, si el símbolo y todas esas cosas
pueda ver esa metamas. Y si yo quiero
agregar ese token a otra billetera, por
ejemplo, una Coinbase, una Rab o la
billetera que yo quiera, quiero poder
ver y hacer exactamente las mismas
cosas. ¿Cuál es la única forma en que yo
pueda ver y hacerla? exactamente las
mismas cosas, bueno, generando
justamente un estándar, es decir, vamos
a tener una función que se llama
transfer, por ejemplo, y todos los
tokens que cumplan con ese estándar
tienen que tener esa función transfer,
tiene que llamarse la misma forma, tiene
que recibir los mismos parámetros, tiene
que devolver la los mismos retornos. Sí,
eso es un estándar. Entonces, yo creo un
estándar
eh para poder generar interoperabilidad,
¿sí?, y con otras aplicaciones, Metamas,
Raby, Coinbase, como dijimos, son
aplicaciones, ¿no? Aplicaciones de
wallets. Pero bueno, justamente con esto
yo lo puedo hacer estándar y puedo eh
hacer que interactúen con eso. Sí,
existen muchos estándares, si por
ejemplo los estándares de Vols, ¿sí?
Morfo, por ejemplo, en donde ustedes
pueden depositar dinero y ganar
intereses. Por eso sí, porque se hace
diferentes técnicas. Bueno, tiene un
protocolo de volt en el cual tiene
funciones también específicas que
ustedes pueden llamar y que todos todo
el mundo saber cómo son esas funciones
específicas porque existe un estándar,
¿sí?, etcétera. ¿Cómo es que se ponen
esos estándar? Bueno, fíjense, acá
tenemos ERC20, por ejemplo, es un
estándar. Sí, básicamente es ERC porque
pues y tiene un request for comment y el
20 porque es el número 20. Este número
20 muchas veces tiene que ver con el P
request que uno manda, pero la verdad
que no es vinculante y le pueden poner
el número que ustedes quieran
prácticamente.
Y acá tenemos RS721, que también es un
estándar para tokens no fungibles. Así
que esto también lo mencionamos, un
toque no fungible es un toque que no es
intercambiable con otra cosa, ¿sí? que
más adelante vamos a hablar mejor, pero
eh sepan eso, ¿sí? Sepan entonces que
los interum request for comment son
estándares de aplicaciones, mientras que
los estándar track son cambios que
afectan directamente al core. Sí. Y
después tenemos la parte de information
los meta, ¿sí? Que son guías de diseño o
cambios de los procesos de toma de
decisiones, ¿sí? ¿Cómo es que vamos a
decidir? O sea, cómo es que vamos a a
lanzar, por ejemplo, esta propuesta,
discusión técnica, prueba,
implementación, si vamos a cambiar, si
vamos a poner otros estados, etcétera. Y
bueno, todas esas cosas van en lo que
serían las EP de tipo informacional,
¿sí? Para poder mejorar los procesos.
Acá dice, bueno, dato clave, una EP
exitosa atraviesa un riguroso proceso de
revisión por parte del Core developers y
las comunidades antes de ser aceptadas
por su implementación, ¿no? O sea, antes
de pasar acá esta parte de
implementación pasa por toda esta parte.
y que es bastante rigurosa justamente
para evitar problemas, ¿no? Y justamente
también cuando estamos hablando del core
se genera otro fork, se prueban esas
cosas antes después de hacer un merch
con la la otra rama. Sí,
acá dice, en resumen, EIP es un proceso
general de mejora de protocolo de
Ethereum. RC es un tipo específico de
EIP para estándares, ¿sí? tanto de
aplicaciones, tokens, etcétera. Se
entiende hasta ahí.
Genial.
M, me perdí en las ventanas.
Bien,
entonces. dice, "Actualizaciones
mediante hardworks." ¿Sí? ¿Qué es esto
de hard fork? Bueno, lo que
comentábamos, ¿no? O sea, cuando vos
estás utilizando un consenso y cambias
algo de ese consenso y, bueno, creas
otra blockchain paralela, ¿sí? Porque ya
las dos blockchains no van a funcionar
igual, son diferentes, por lo tanto son
dos blockchains diferentes. Eso sería un
hard fork. Sí,
como les decía, si ustedes cambian algo
del core, sí, están generando un hardfk.
Ahora, después está en la comunidad ver
si siguen por un lado o siguen por el
otro. Obviamente, como todos estos
hardfks programados, ¿sí?, dados por las
EIP, vienen siendo estudiados y este
estudio tarda años, ¿sí? No es que
tarda, se un día para el otro, es como
que todo el mundo sabe para hacia dónde
va y obviamente todo el mundo la sigue
porque si no uno tendría una blockchain
aparte totalmente inutilizable porque
nadie más utilizaría esa blockchain,
sino que utilizarían el protocolo al
cual la comunidad llegó en su consenso a
decir, "Este es el protocolo que
queremos." Sí,
este es el cambio que queremos hacer
cuando generen, por ejemplo, toda lo que
es la fuerza criptográfica para
computación cuántica y todo eso. Y
bueno, también se va a tener que hacer
un hardfk para que toda la comunidad
vaya para es parece y que toda la
comunidad vaya para ese cambio. ¿Qué
pasa? ¿Vos podés quedarte con la máquina
la máquina anterior? Sí, podés. Sí,
obviamente vas a tener el problema de
que en unos años seguramente va a ser
hackeable por eh la computación
cuántica, ¿no? Por lo tanto, nadie va a
quedarse ahí cuando tiene la otra
mejora.
Acá dice, bueno, cuando la IP requiere
cambios que son eh no son compatibles
con versiones anteriores del software,
la red se realiza un hardf, ¿no? Esto
que habíamos hablado cuando haces un
cambio en el core, básicamente
cuando haces un cambio en un estándar,
¿no? Porque el estándar, fíjense que no
va al core, sino que es únicamente para
las aplicaciones, ¿no? Para que haya
interoperabilidad. Por lo tanto, vos
podés utilizar ese estándar o no
utilizarlo. E es tu elección el usarlo o
no usarlo. ¿Qué es lo que pasa si vos lo
usas? Y bueno, vas a tener una mayor
interopelaridad porque todo el mundo va
a saber cómo funciona. Si vos haces un
token, por ejemplo, y puedes hacerlo
como vos quieras o puedes utilizar el el
estándar 20. ¿Sí? ¿Qué es lo que pasa?
que vos utilizas el stand RS20, lo vas a
poder listar en un exchange, por
ejemplo, ¿no? Porque el exchange ya sabe
cómo funciona tu token, sabe que va a
tener la función transfer, sabe que va a
tener para poder ver el balance de los
usuarios y cómo lo va a tener que hacer,
cómo ver el nombre, cómo ver el símbolo,
etcétera, etcétera. Sí, mientras que si
vos generas tu propio token, ¿sí? lo vas
a poder hacer y sí vas a poder hacerlo,
pero después no lo vas a poder listar
porque no van a saber cómo funciona, eh,
no van a tener las cosas preparadas
tampoco, no lo vas a poder mover
utilizando MetaMask o cualquier otra
wallet. Sí. En cambio, si us estándar,
sí.
Entonces, eso es un poco la diferencia,
¿no? Uno genera un hardfk, el otro no.
Después dice, definición, una
actualización obligatoria donde todos
los nodos deben migrar a las nuevas
reglas. Sí, esto que les decía, si no
migran quedan afuera. Aquellas que no
actualizan quedan en una cadena
divergente perdiendo conexión con la red
principal. Fíjense acá, eh, Seba lo puso
como una cadena divergente. Sí, es otra
cadena,
corre paralela.
Después hitos recientes, dice
actualizaciones como Shanghai. Nosotros
vimos Shangai acá cuando vimos la MMES,
por ejemplo, para el 5F, ¿no? Que se
hizo en Shanghai. Dice retiros de fondos
en stake. Sí, una de las cosas que se
hizo en Shangai fue esto, el retiro de
fondos en stake o por ejemplo Den Kun,
que es una actualización más moderna
todavía que Shanghai, se hizo la
reducción de costos para capa de
escalabilidad. Sí, son ejemplos de esta
evolución programada, es decir, nosotros
vamos programando las cosas, o sea,
nosotros como comunidad en Ethereum
vamos programando las cosas y decimos,
"Okay, bueno, para tal
para tal fecha, digamos, vamos a tener
esta actualización, ¿sí? Le vamos a
llamar con el nombre de alguna ciudad,
¿sí? o alguna combinación y y
generalmente dónde se hace eh todo esto.
Y bueno, una una vez que lo hagamos,
digamos, hacemos el hardfk y seguimos
todos por ese camino. Sí,
acá dice, bueno,
profe, perdón, le hago una consulta.
¿Qué pasa con la información cuando se
hace esa división? O sea,
todas las transacciones que estaban
almacenadas en la blockchain al
dividirse,
eh, ¿cómo cómo se ven afectado?
Hasta el punto donde se dividen quedan
igual.
Después, en el momento en que te diís y
bueno, ya empieza a hacer otra
blockchain y empieza a tener eh nodos
diferentes eh digo, bloques diferentes
en cada uno de sus bloques,
pero hasta el momento en que te divís es
lo mismo. Y en ese momento se hace un
fork y es justamente esta esta división,
¿no? Y hasta ese momento son iguales y
después empiezan a ser diferentes.
¿Se entiende?
Eh, sí. Lo que me cuesta entender es eh
qué pasa con las transacciones. Ahí yo
tengo un saldo guardado, por ejemplo, y
al dividirse,
¿qué pasa con mi saldo, digamos? O sea,
está en las dos red.
Vos tenías, poner que vos tenías un sí,
en Ethereum y se produce un hard fork y
algunos van a ese hard fork y otros no.
¿Qué pasa? Vos en un nodo vas a tener un
y en otro nodo vas a tener un éter. Sí,
vas a tener un éter en cada uno. Ahora,
el éter que que quieras mover de un
lado, lo vas a poder mover y dárselo a
una persona, por ejemplo, y el otro éter
vas a poder moverlo y dárselo a otra
persona. ¿Por qué? Porque esos va a
estar únicamente visto por la cadena en
la cual te estás comunicando. Sí, o sea,
dejan de ser eh compatibles, dejan de
comunicarse, se genera una cadena
divergente. Sí, tendrías las cosas
replicadas hasta el momento del fork y
después del momento del fork ya es cada
uno su rumbo. ¿Se entiende?
Sí, sí, sí. Gracias.
Bien, y siguiendo un poco con esto que
que le comentaba acá a su compañero,
cuando sucedió de Dago Hack, sí, que
nosotros comentamos en el año 2016, ¿sí?
¿Qué qué fue esto de DO Hack? Bueno,
básicamente hubo un proyecto
eh
que justamente era unao, es una
organización autónoma descentralizada
que quería recaudar dinero. ¿Sí? ¿Qué
pasó? Recaudó dinero en eter. Sí, fue la
la mayor recaudación. Acá dice el 14% de
todo el suministro de Ether de la época
para impresiones colectivas. Sí, 2016,
piense que cuando recién se lanzó de
Ethereum.
Eh, dice, bueno, siguiente dice, "Un
atacante explotó una volumad llamada
reentrada en un en el smart contract
desviando millones de s hacia una
estructura bajo su control." Sí.
Consecuencia, la comunidad se enfrentó a
un dilema moral. El código es la ley
definitiva. El code is law. ¿Sí? ¿O se
debe intervenir para proteger a los
usuarios? Sí. ¿Qué es lo que pasó?
Bueno, acá dice resultado, dice, "La
mayoría optó por un hard fork para
revertir el robo." Sí, decir, la mayoría
dijo, "Okay, no, no podemos seguir con
esto porque se nos caró el proyecto
abajo. Vamos a revertir el robo." Sí,
vamos a volver para atrás. En ese
momento no era tan difícil porque eran
pocos. Sí, piens 2016 está recién
lanzándose. Hoy en día volver para atrás
al 2016 sería casi imposible. Sí, en ese
momento eran poquitos. Sí, por lo tanto,
se pudieron poner de acuerdo para decir,
"Vamos a revertir." Sí. Entonces, la
mayoría siguió esa reversión.
Es decir, borraron todos los bloques que
se hicieron posterior a ese robo y el
bloque de ese robo modificaron el
contrato. Sí. Volvieron a despollarlo y
siguieron adelante con las
modificaciones. ¿Sí? ¿Qué pasó? Dice,
"Este resultó una división de la red."
Sí. Ethereum, que fue todas las personas
que siguieron ese hard fork, que
volvieron para atrás a tiempos antes del
robo y la cadena original que rechazó la
intervención. Sí, la que dijo, "No, para
mí COD, no, el código es la ley, no
vamos a intervenir para
salvar este robo." Sí, porque
no hubo un robo, sino que fue eh se se
ejecutó el código como estaba previsto
que se ejecute, ¿no? Si alguien escribió
mal el código y bueno, no es la culpa de
de la persona que lo ejecutó. Por lo
tanto, decidieron seguir ese camino,
decir, "Okay, seguimos con el robo y
seguimos para adelante, así como está."
Sí. Eso es lo que se conoce como
Ethereum Classic. Si ustedes hoy en día
eh pueden invertir en Ethereum, pueden
invertir en Ethereum Classic, pueden
tener sus Eters en Ethereum o pueden
tener sus Eters en Ethereum Classic y
van a ser Ethers diferentes, no es que
van a ser los mismos. En el momento del
hard fork, cuando se hizo esta división,
todo el mundo que tenía Eters en
Ethereum, obviamente también los tenían
en Ethereum Classic. ¿Por qué? Porque
hasta ese punto los bloques eran
exactamente iguales. Sí.
Ahí se hizo la división y después,
bueno, empezaron a trabajar cada uno por
separados y hoy en día son dos
blockchain, dos blockchain diferentes y
separadas, ¿no?
O sea, que el tipo que hizo eso en
Ethereum Classic es rico y en el otro es
pobre.
Claro,
claro.
Ahora el preci de Ethereum Classic, no
sé cuánto está.
Igual, Cristian, cuando hacen el hardf,
¿qué hacen? Estopean todas las
Ethereum B machine para que no haga
ninguna transacción más y ahí cambian o
lo hacen en caliente.
No, lo hacen en caliente. Lo que hacen
es primero hacen el hardfk,
si hacen todas las pruebas, todas las
cosas que tienen que hacer y después lo
marchean. hacen un march. Sí, como
cuando vos trabajas en GitHub, ¿no? Que
ha
una branch, escribist la branch y
después una vez que está bien lo
marchas, bueno, acá es lo mismo.
Y ahí la butean a la EBM y ahí ya toma
el código nuevo.
Claro.
Ah, okay. Gracias.
Fíjense acá, Ethereum Classic 8.43,
¿no?
El precio de Ethereum Classic.
un es 8,43.
Ahora
el Ethereum
común son 2349, ¿no? Por lo tanto, sí se
robó un montón de Eters, pero bueno,
esos valen menos en Ethereum clásico.
¿Por qué valen menos? Y bueno, porque
justamente todo el, o sea, la mayoría
hizo el cambio. Sí.
y fue hacia Ethereum. Es como que
Ethereum ganó sobre Ethereum Classic.
Si Ethereum Classic hubiera ganado,
seguramente Ethereum Classic sería mucho
más eh tendría mucho más valor que
Ethereum. Sí,
como dice acá, la mayoría siguió a
Ethereum.
Bueno, acá dice la bonoridad explotada
fue un error de Rientran donde el
contrato permitía retirar fondos
repetidamente antes de actualizar el
balance interno. Sí.
Eh, después más adelante seguramente
vamos a ver un poquito de reentrance o
si no capaz en el segundo curso, ¿no?
Porque tiene que ver más con la parte de
seguridad.
Pero básicamente es eso, como dice acá,
¿no? Que vos podés reentrar a una
función para extraer valor antes de eh
hacer un update de de ese valor. Por lo
tanto, vos entrás y seguís sacando
valor, sacando, sacando, sacando y nunca
se hace el update hasta que sacaste todo
el valor. Y una vez que sacaste todo el
valor, dec, "Okay, ahora sí, hacemme el
update, ponemme en cero y ya está." Pero
ya tengo todo el valor en mi cuenta.
Si no entendieron eso, igualmente no se
preocupen porque como digo, es un poco
más avanzado que tiene que ver con la
parte de seguridad de contratos y
todavía ni siquiera sabemos programar
contratos. Sí,
acá dice la gran transición de merch,
¿sí? Como les expliqué un poquitito hace
un ratito, sí, nosotros hacemos un
hardfk,
¿sí? y después merchamos ese hard fork,
¿no?
Eh, para para poder ir con la rama
principal, ¿sí? Como si fuera un branch
y lo marcheamos. Bueno, acá fue
justamente lo que pasó, ¿sí? ¿Qué fue
este The Merch que se conoce como The
Merch? Como el merch de el 2022 fue
cuando Ethereum pasó de lo que se
conocía como proof of work a proof of
stake. Nosotros ya vimos que es proof of
work, que vimos qué es lo que es proof
of stake, vimos que Ethereum hizo ese
cambio, ¿sí? Vimos inclusive que el non
de las primeras transacciones tiene un
non, un número, mientras que los N de
ahora tienen cero. Básicamente
justamente es por esto, ¿no? Porque uno
está haciendo proof of work calculando
ese non, mientras que el otro proof of
stake ponen cualquier total lo valía
únicamente una persona o mejor dicho un
nodo que básicamente para poder asegurar
la fiabilidad lo que hace es bloquear
capital, ¿no? Que es lo que conocemos
como staking, ¿no? Por eso es el proof
of stake.
Entonces, esto fue lo que hizo The
Merch. ¿Cuál era el objetivo ese de
merge? Bueno, principal la
sostenibilidad. Como vimos, trabajar con
la energía era muy caro. Sí. Y al ser
muy caro, eh, muy muy caro en sentido de
energético, ¿no? Gastamos mucha energía
para poder hacer toda esa ese proof of
work.
Entonces, para evitar eso, lo que se
hizo es, okay, ya no vamos a a tener
como penalidad el trabajo, ¿sí? La
energía, que es un recurso eh que se
gasta básicamente, sino que vas a tener
el como
como garantía el tema del staking, ¿no?
Vos ponés dinero y si lo haces mal,
entonces perdiste el dinero si en vez de
perder energía. Entonces, con esto
hacemos que esto sea más sostenible. Sí.
Como dice acá, hubo una reducción del
consumo eléctrico en el 99.9%, 9% por lo
tanto es abismal la diferencia que se
hizo
y bueno, es obviamente mucho más
ecológico.
Después tenemos la parte de la seguridad
económica, dice introducción del
concepto de penalización, slashing, s
esto de cortarle los fondos a las
personas que hagan, a los validores que
hagan las cosas mal intencionadamente.
Dice, emisión de la moneda. Dice, "La
emisión de nuevos éters se redujo
drásticamente convirtiendo la red en un
sistema potencialmente deflacionario."
Sí.
Acá eh se empezaron a utilizar menos
setters. Ustedes acuérdense que cuando
ustedes miraban un bloque ganaban el
tema del Coinbase y el tema del e
del Office, ¿no? Ahora acá sí se
implementó justamente, ¿se acuerdan? el
1559, en el cual ya no dependía
únicamente de eso, sino que también ese
base fe se eh
se se quemaba, ¿no? Por lo tanto, es un
sistema más deflacionario.
Después tenemos dice acá clasificación
importante, dice contrario a la creencia
popular, de merch no produjo las
tarifas, no redujo las tarifas de gas,
¿sí? ya que estas dependen de la demanda
del espacio de los bloques y no del
mecanismo de consenso. Yo acá difiero un
poquitito con CEBA porque sí creo que
hizo un poco una reducción del precio
del gas, lo que pasa es que no fue
significativa, ¿no? ¿Por qué? ¿Por qué
pienso esto? Para que ustedes tengan eh
ambos criterios y puedan eh evaluarlos,
¿no? Y y sacar su propia conclusión.
Antes de de merge, cuando estamos
hablando de proof of work, las máquinas
tenían que estar haciendo trabajo para
poder encontrar el bloque y ese trabajo
obviamente tarda tiempo. El proof of
stake el tiempo es mucho, es inferior.
¿Sí? ¿Por qué? Porque directamente vos
escogés a uno, esa persona valida y los
demás validan que esa persona hizo bien
la validación. Sí.
Por lo tanto, es más rápido. Es mucho
más rápido, ¿no? La verdad que se redujo
únicamente de 15 segundos el tiempo de
confirmación a 12 segundos. Si por
estamos hablando de 3 segundos sobre 15
e sería un
20%, ¿no?
¿Qué es lo que pasa? Si nosotros
reducimos el tiempo de confirmación en
un 20%
y tenemos la misma cantidad de
transacciones,
¿sí? Quiere decir que vamos a poder
estar ejecutando un 20% de transacciones
más en la gran escala, ¿no? Entonces, si
podemos eh ejecutar un 20% de
transacciones más, ¿qué es lo que
sucede? Vamos a tener
mayor, o sea, si si seguimos teniendo la
misma oferta y la misma demanda, si
podemos transaccionar un 20% más, ¿qué
es lo que pasa? esa oferta
es como que se vuelve un 20% más grande,
¿no? Porque yo voy a poder hacer un 20%
más de operaciones que antes. Sí. Por lo
tanto, si todo se mantiene igual,
básicamente el precio tendría que
reducirse en ese 20%, ¿no? Es decir, si
antes estaba de march estaba 200 una
transacción y bueno, ahora tendría que
estar 160. Sí, obviamente eh no es tan
lineal, ¿sí? Por lo tanto, no es que
serían 160, capaz que serían 180, 190 y
no se ve un cambio significativo en el
precio de del gas, ¿no? Por eso que acá
eh Sebas está diciendo, bueno, contrario
a la creencia popular, de merch no
redujo las tarifas de gas. Sí, porque
muchos creían que esto sí iba a
reducirlo. La verdad que no lo redujo.
Sí, pero yo creo que sí lo redujo. Lo
que pasa que fue muy poca medida, ¿no?
No llegó a ser eh visible, no
distinguible.
Pero bueno, básicamente les expliqué un
poco el criterio por qué supongo que sí
se redujo también un poco el precio del
gas, aunque no fue en gran medida.
¿Se entendió?
Bueno, me saldría el recreo. Si estoy
viendo ahora son las 20:41. Creo que
terminemos porque ya no tiene sentido,
me parece hacer el recreo ahora.
No, pero tendríamos que pasar, ¿viste?
La lista porque ahí están preguntando en
el chat.
Ah, es verdad. Sí, me tendrán que haber
avisado antes. Así no.
Acá les pasó el formulario de asistencia
y si quieren damos un minutito, dos
minutitos para que lo rellenen.
un minutito, dos minutitos para que lo
residen mientras si quieren preguntarme
de lo que estamos hablando.
Y Cristian, ¿por qué Bitcoin no quiere
ir a Proof of State para ahorrar
energía? ¿Es algo que ellos no pueden
por el protocolo en sí o es algo que no
no quieren? porque
no
eh básicamente
porque hacer eso supondría para Bitcoin
un problema de seguridad. Sí. Eh,
acuérdense que son están enfocados en
dos temas diferentes. Una cosa es
Ethereum, que intenta de hacer un
sistema en el cual puedas
programar contratos, o sea, hacer
programas en la blockchain. Bitcoin, no.
Bitcoin únicamente quiere el intercambio
de valor y que ese intercambio de valor
tenga la mayor e
seguridad posible. ¿Qué es lo que sucede
cuando vos
haces que un sistema sea más escalable,
es decir, que sea más rápido, ¿sí? Estás
perdiendo por un lado seguridad. ¿Por
qué? Acuérdense que Bitcoin justamente
la seguridad está dada por esos 10
minutos que tarda en poner cada bloque y
la fuerza de cómputo que vos tenés para
elevarte el nivel de dificultad, ¿no?
¿Por qué? Porque vos querés cambiar algo
de atrás y no vas a poder porque tenés
que ganarle a toda la fuerza de conto
que hay, ¿eh?
Y y te va a tardar un montón poder mirar
esos esos bloques, ¿no? Por la el nivel
de dificultad.
Y eso te lo vuelve prácticamente
imposible. Si vos llevás a esto, eso
Bitcoin, a un nivel de proof of stake,
lo que pasa es que justamente el que lo
está validando es uno, después los otros
están e poniendo los valores, pero sigo
así decir, bueno, pues quiero cambiar
los de atrás y es como que para Bitcoin
es más factible de hacerlo que e que con
el proof of work. El proof of work es
más seguro y para Bitcoin sí.
Yo no sabría decírtelo, la verdad. Sí,
yo creo que en mi opinión no es más
seguro, pero Bitcoin dice que sí. Sí.
Y es básicamente por eso,
profe. Y tendría algo que ver que
también ya cada vez queda menos Bitcoin
por minar, que cambiar ahora sería como
un sin sentido también.
No, no, porque los bitcoins e
se se minan, pero después que terminen
la minería, primero que está para el año
2140, por lo tanto falta todavía, pero
una vez que termine la minería, eh,
siguen teniendo la tarifa del gas, ¿sí?,
para en las transacciones. Por lo tanto,
no es que se va a acabar la minería,
lo que se va a acabar es el Coinbase.
Bien.
Entonces, sigamos. Entonces, esto de
merge justamente muestra eh este
proceso, ¿no?, de de cómo se se hizo el
cambio. Sí. Y bueno, acá un poco lo que
le expliqué de por qué yo no creo que
sea tan así de que no redujo, sino que
se redujo en muy poca medida.
Después el el tema de el merge, si se
separó la la arquitectura en dos capas y
una parte que es la execution layer, sí,
que es la parte donde se ejecutan las
transacciones y los SM contracts y otra
parte que es la consensus layer, ¿sí?
Que es la encargada de coordinar las
validaciones y el consenso de la red,
¿sí? O sea, una parte sería las
validaciones y el consenso y la otra
parte las ejecuciones y los smart
contract. ¿Por qué hizo esto? Y bueno,
básicamente porque acá en The Merch lo
que estaba cambiando era la parte del
consenso y no parte de la ejecución.
Entonces uno se preguntaría, ¿y por qué
yo tengo que cambiar la parte de la
ejecución si yo lo que quiero es
trabajar la parte del consenso nada más?
¿Sí? Entonces parece totalmente
lógico dividir esas dos cosas y decir,
"Okay, dejo la parte de ejecución igual,
no la toco porque no necesito
cambiarla." Y lo único que trabajo es la
parte del consenso. Y si yo quiero hacer
al revés y tocar la parte de ejecución
también, ¿por qué voy a tener que tocar
la parte del consenso? No, entonces lo
dejo dividido,
más abstraíble.
El futuro y el roadm hacia la
escalabilidad. ¿Por qué queremos la
escalabilidad? Bueno, piensen en esto.
Yo les dije
bajaronos de 15 segundos a 12 segundos,
por lo tanto tenemos más cantidad de
transacciones que podemos hacer en un
mismo tiempo, ¿no? En una hora podemos
hacer más transacciones, podemos tener
más cantidad de de operaciones
realizadas. Por lo tanto, esas máquinas
se vuelven más eficientes, ¿no? Porque
vamos a poder mandar más cantidad de
transacciones y eso hace que se reduzca
el precio. Acá dijimos, bueno, un 20%,
pero tenemos que bajarlo mucho más
porque acuérdense que estamos en $200,
$00 incluso por transacción y tenemos
que bajarlo mucho más.
Hoy en día es está bastante bajo, ¿no?
Por cosas que se han implementado, pero
bueno, todavía esto sigue en esa baja.
Dice el futuro, el rom hacia la
escalabilidad. Dice Etherum no ha
terminado su desarrollo. El mapa de ruta
actual denominado a menudo en términos
como the search o the scout o the bird,
etcétera, se enfoca en escalabilidad
centrada en rollaps, resistencia a la
censura y nodos ligeros. ¿Qué significa
esto? Vamos por partes. Escabilidad
escalabilidad central a rollaps. Yo la
clase pasada les expliqué lo que era una
rollap, ¿sí? Que básicamente era un como
un rollo que vos escribías un montón de
transacciones, lo enrollabas y lo
mandabas todo junto a la blockchain como
si fuera una sola transacción. Sí. Y
después habíamos dicho que teníamos dos
tipos, las ZK y las y las Optimistics.
¿Qué es lo que quería hacer Ethereum?
Acá dice, "Permitir que miles de
transacciones se procesen fuera de la
cadena principal, pero con su misma
seguridad." ¿Por qué dice con su misma
seguridad? Porque acuérdense que esto
está validándose en la cadena presal de
Ethereum. Si yo enrollo el rollito ese
eh de la rollap
en en mi cadena en mi side chain, o sea,
mi cadena secundaria y la mando después
a la cadena principal para que la cadena
principal la valide. Sí, de hecho
hablamos de las dos tipos de
validaciones, tanto la parte de Zak como
la optimista.
Entonces, se procesan fuera de la
cadena, pero se validan dentro de la
cadena. Entonces, si yo quiero hacer
10,000 transacciones y esas 10,000
transacciones las puedo hacer en una
sola transacción en Ethereum, por lo
tanto, estamos descomprimiendo Ethereum,
por así decirlo, ¿no? Entonces, si
Ethereum antes podía hacer 1000
transacciones nada más, pero cada rol
puede hacer 1000 transacciones y
utilizamos Ethereum únicamente para
poner las transacciones de la rollap, ya
estamos diciendo que Ethereum puede
transaccionar 1000 por 1000, o sea, un
millón de transacciones. Sí,
lo cual es un montón.
Discúlpame, pero vos no habías dicho,
recuerdo en la clase que el problema que
había con la R, las optimísticas que
había que esperar como 7 días para que
se validara esa. Entonces, ya no es tan
ágil
con las Rollaps Optimistics. Sí. ¿Por
qué? Porque vos tenés que esperar un
cierto tiempo porque vos decís, "Todas
las transacciones son válidas." Las ruas
optimistas dicen, "Todas son válidas,
están todas bien hechas, creemos en la
en el buen obrar de los validadores de
la rollap y son todas válidas." ¿Qué es
lo que sucede? Puede ser que no. Puede
ser que haya alguna que no sea válida y
que un validador lo esté metiendo
maliciosamente.
Entonces, vos tenés que darle un tiempo
a esa rollap para e que alguien pueda
objetar. Sí, alguien te objeta y te
dice, "No, esa transacción es falsa,
eliminala." Sí. Todo lo demás,
obviamente lo comprueban, ven que es
falsa y la eliminan, ¿sí? Y obviamente
eh pierde el dinero por slashing porque
generalmente trabajaron con proof of
stake eh la persona que hizo la
validación, ¿no?
Pero Cristian, ¿no era que Vitalica
había dicho algo así como buen Ya no
quiero más las rolas?
Sí, sí, pero es para vamos por parte.
Eso es la parte optimista, optimistic. Y
por eso es que tenemos esos 7 días o lo
que sea que tenemos que esperar, porque
alguien tiene que decir esto está mal.
Sí, si nadie dice esto está mal, pasa
como que todo está bien y se tiene en
cuenta como si es como si fuera real.
Sí,
obviamente que la persona que descubre
algo mal le dan un incentivo, ¿no? Por
eso hay personas intentando descubrir
que haya alguna transacción mal.
Ahora el las ral acá son diferentes,
¿si? Por lo tanto, no tenés que esperar
esos 7 días.
¿Por qué? Se generan unos polinomios que
se conocen como star o snarks, ¿sí? con
las transacciones, que ya al escribir
ese polinomio en en mi cadena principal,
yo puedo con ese polinomio determinar
que realmente todas las transacciones
que fueron hechas en
en la rollap son reales, ¿sí? Son
válidas, ¿sí? Entonces ahí ya no tenes
esos 7 días de esperas. ¿Qué es lo que
pasaba? era muy difícil poder hacer que
eh contratos que sean EBM compatibles,
¿sí?, en esas rollaps. Eh,
entonces, ¿qué es lo que pasó? Bueno,
como que se fue mucho para el lado de
las Optimistic, pero las optimistic ten
problema. Hoy en día ya vemos rollaps ZK
que son compatibles, es decir, podemos
programar la ROL
que programar,
pero
se te está cortando, Cristian.
Hola.
Sí, yo no quería decir nada porque pensé
que era mi
Yo también pensé que era mi conexión que
no es no es muy buena.
Claro, la vida tampoco.
Cristian, ¿estás ahí? Porque te
perdimos.
Se quedó enrollado de una rola.
Era una dona en realidad, ¿no? Una rola.
Lo están atacando lo de la rolaps.
Bien, Patricia, tenes razón Patrio,
así que ahora es nuestro turno.
Vayámonos todos juntos y cuando vuelva
que no encuentre a nadie.
Ángel.
Claro, esto sería un fork, ¿no? El for
de los alumnos de Cristian.
Hola. Hola. ¿Me escuchan?
Ahí sí, Cristian.
Ahora sí, ahora sí.
Sí, creo que se me cayó el internet. Lo
raro es que los escuché por un tiempo.
No sé hasta dónde me escucharon.
cuando dijiste buenas noches. ¿Cómo
están?
No, estábamos con el tema de las rollap.
Acordate que estábamos con el tema de
las rollap y el cambio que se iban a que
muchos se iban hacia las
de las ZK se iban hacia las hacia a las
otras.
¿Habías explicado el polinomio?
Claro, o sea, nosotros tenemos la las
roles optimistic, ¿no? Que teníamos ese
problema los 7 días, los set acá no lo
tenemos porque directamente
que escribimos ese polinomio, si los
stars o los snacks y con eso ya podemos
comprobar que las operaciones son
válidas sin necesidad de esperar o que
haya alguien vigilando para decir esta
operación es incorrecta. Sí, eso
básicamente.
Entonces, ¿cuál era lo complicado?
Bueno, era complicado generar una
máquina virtual EBM, ¿sí? Es decir,
puedo programar igual que programamos en
Ethereum, consolity, generan los mismos
contratos que funcionan misma forma
sobre la ZK. Hoy en día ya se puede, de
hecho hubieron, por ejemplo, Polyon hizo
su Zak y hay otros que también y
funcionan con Solitis. Yo puedo
programar solity y funciona. Ahora, una
cosa que ustedes tienen que tener en
cuenta acá es que, por ejemplo, los time
stamps y ese tipo de cosas van a estar
calculados sobre Ethereum, sobre la ma,
no sobre la rollap en sí.
Por lo tanto, la rol lo que hace es
básicamente una copia de ese de ese time
stamp e a sí misma para poder resolver
las cosas.
Pero bueno, todo el sistema de seguridad
básicamente acá está basado en este en
Ethereum, no en la rol en sí. Después la
resistencia a la censura dice mejorar la
forma que los bloques se construyen para
evitar monopolios. Sí. Es decir,
nosotros podíamos decir que en
que hay ahora hay muy pocos nodos, ¿sí?
Decir, bueno, Ethereum tiene muy pocos
nodos o están muy concentrados esos
nodos que siempre lo valían unos o no
otros. Y yo podría decir este nodo,
decir, bueno, si la transacción la mandó
Cristian, entonces no la no la incluyo,
¿no? Entonces, no es que te pueden e
censurar, pero yo te puedo decir, bueno,
este nodo no te incluye tu transacción y
entonces vos vas a estar complicado. Si
es siempre nodo el que está eh
haciéndolo o si se complotan un par de
nodos, por ejemplo, Infugura, Alkem, que
tienen la gran mayoría de todos los
nodos, dicen, "Okay, dejemos a Cristian
afuera y bueno, va muy difícil que yo
pueda crear una transacción, ¿no?
Entonces, en ese tipo de censuras es lo
que se quiere evitar, ¿sí? Dividiendo un
poco más el
eh esta validación, ¿no? Hacerla más
dividida.
Y después el tema de generar nodos
ligeros. Sí, la idea es que los nodos
ahora son muy pesados porque vos
necesitas tener toda la historia desde
el comienzo de la blockchain hasta
ahora, que son telas de información. Eh,
piense que cada 12 segundos se está
generando una transacción nueva, un
bloque nuevo con mucha información y
bueno, eso multiplicado por la cantidad
de años que está esto genera una
blockchain muy pesada. Entonces, la idea
es generar nodos ligeros en los cuales
yo pueda eh utilizar eso de un celular.
Si esto es lo que se conoce como
shardings, eh si lo quieren buscar. Y y
bueno, pero básicamente eso es eso es lo
que apuntamos en en Ethereum a crear.
Y después, bueno, ya no quiero seguir
más porque ya son 59, ¿sí? Pero bueno,
tengamos en cuenta hasta acá si la clase
que viene seguimos con Denkun y Spectra
para abajo. Sí, toda esta parte acá,
fíjense, acá está la parte de tokens
también que habíamos visto. Obviamente
si ustedes lo quieren leer y trérselo
más o menos leído para la clase que
viene y preguntar y hacer un poco más
interactiva la clase, hagámoslo. Sí.
Si quieren me quedo un ratito, tengo 5
10 minutos y me pueden preguntar si
tienen alguna dudas. No quiero dar más
temas.
Voy a a parar la grabación.
Ya que no tenemos recreo, por lo menos
terminamos en tiempo.
Gracias, buen fine.
Gracias. En fin de todo.
