# 08/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 11 - Parte 1

- **Video:** [https://www.youtube.com/watch?v=Ez3youaFevY](https://www.youtube.com/watch?v=Ez3youaFevY)
- **ID:** `Ez3youaFevY`
- **Canal:** ETH KIPU
- **Fecha:** 2026-05-04
- **Duración:** 1:08:57

---

## Transcripción

cosas ya para la semana que viene con
respecto al trabajo práctico final y
después de del examen del del pequeño
examen que tenemos cuando vamos a la
exposición común después organizamos
bien todo eso.
Bien,
comencemos. Voy a compartir la pantalla.
Bueno, ya igualmente para
bueno, ací del Ethereum Developer
acá, acuérdense que acá tienen todas las
guías y todas las cosas. El examen de la
clase que viene va a estar tomando lo
que sería el módulo 4, que ser la parte
de DeFi, ¿sí? Estos tres módulos, bueno,
estas tres clases, ¿sí? Eh, después si
se fijan ya el módulo 5 comienza con la
parte de programación, ¿sí? Fundamento
de Soliti, arquitect, un contacto
inteligente, tipo de datos, estructuras,
seguridad, validación y control de
acceso, comunicación externa,
modularidad de interacciones entre
contratos, estándares de tokens y como
vimos los tokens, pero ya más des el
punto de vista de la programación y
después acá tiene trabajo final. Ustedes
ya pueden entrar acá y mirar qué es lo
que necesitan el trabajo final. Fíjense
que acá dice, bueno, eh, bueno, las
áreas de aplicaciones sugeridas,
estructuras de entregables, ¿sí? Eh, acá
tienen todo el estructura como tiene que
ser, tien que hacer un elevator pago,
el desarrollo técnico, como decía, es
opcional, ¿sí? un valor añadido para el
que lo quiera hacer y sea técnico, pero
no es eh obligatorio. Como digo, la
semana que viene lo vemos bien. Sí,
ahora sí se los muestro ahí que está
nada más para que el que quiera irlo
leyendo el fin de semana y eso ir
pensando algo inclusive si quieren eh ir
pensándolo.
Pero comencemos con esto. La clase
pasada terminamos con toda la parte de
fundamento de Deffy, arquitectura y
aplicaciones descentralizadas. Si este
punto este esta clase uno la vimos
completa, esta clase dos y esta clase
tres medio como que hicimos una pequeña
mezcla, ¿no? Por lo tanto, hoy quiero
terminar de ver bien todo esto. Si
ustedes entran acá en la parte dos dice
intropolidad, arquitectura de bridges y
gestión de riesgos. Sí, van a ver que
hay varias cosas que nosotros ya vimos,
pero bueno, está, por ejemplo, la parte
de los bridges que no vimos lo que es un
bridge o o cómo funciona, no lo
mencionamos en algún momento, eh dijimos
un poco por ahí suelto. Eh, también
hablamos de los Wap tokens, aunque no lo
vimos muy bien a fondo.
Y bueno, algunos riesgos críticos de
esto también lo podemos ver y bueno,
algunos casos históricos de los bridges.
Eso si ustedes se fijan es como que
vimos algunas cosas, otras por arriba,
otras no tantos. Y si vamos a la parte
del
para atrás se sale esto. Si vamos para
la parte de
de la tercer clase de este módulo, ¿sí?
Hay bueno el repaso para la introducción
a a la desintermización de los mercados,
¿no? Eh, la parte de sex versus Dex,
esta parte lo vimos bastante a fondo,
¿no? Como que es técnicamente un Dex,
vimos cómo funcionaba. Acá podemos
después fijarnos que no nos hacía
faltaba nada, pero vimos bastante a
fondo el motor de la Deffy, ¿no? El AM,
así que lo vimos acá, inclusive está la
curva que les mostré cómo es que nos
íbamos de un punto al otro. Eh, la
constante vimos cómo se formaba
inclusive, ¿no? Esto acá algunos
ejemplos, después una actividad, ¿sí? Y
acá hay algunas cosas después en esta
actividad que no vimos que tenemos que
terminar de de ver, ¿sí? Como por
ejemplo lo que es el impermanent loss y
ese tipo de cosas. Acá vimos algunas
cosas como arbitraje,
los incentivos, ¿no? E
bueno, después riesgos críticos del
sistema no lo vimos, pero un poco con
las cosas que estuvimos viendo se pueden
intuir, ¿sí? Por lo tanto, tenemos que
intentar de poner un poco de nombre a
eso. El MEP sí lo mencionamos.
Bueno, pues porque los textos son
importantes y bueno, el resumen de la
clase, ¿no? Entonces, como ven, tenemos
un poco una mezcla de C dos y tres que
queremos terminar de ver hoy, ¿sí? Por
lo tanto, les diría que, bueno,
comencemos con la parte de los bridges,
¿sí? De los puentes. ¿Qué se imaginan
que es un puente acá en la blockchain?
como una conexión entre eh las
blockchains o nodos. Claro, claro.
Justamente un puente es una conexión
entre dos puntos, ¿no? Nosotros sabemos
que en la blockchain dos blockchains
diferentes no se pueden conectar entre
sí. Sí dijimos que cada blockchain es un
mundo por separado y yo si no no puede
ser como en la web en la cual yo puedo
empezar a conectar todo a través de API,
¿no? ¿Por qué? que acá tiene que ser el
terminístico y si yo empiezo a conectar
las cosas, las cosas de afuera pueden
variar mientras las cosas de adentro
todavía están comprobando cosas y eso no
lo haría determinístico, no podrían
hacer esas pruebas que necesitan, ¿no?
Por lo tanto, si yo tengo dos
blockchains,
tengo una blockchain acá y tengo otra
blockchain acá, para poder conectar esas
dos blockchains, voy a necesitar acá un
puente,
¿sí? Un bridge. Este sería el bridge o
puente que está conectando las dos
cosas. ¿Para
qué? O sea, ¿y qué cosas podría
conectarnos
eh un bridge o un puente entre dos
blockchains? ¿Qué es lo que hay acá que
quiero conectar con con cosas acá?
Bueno, lo vivimos lo de los rollaps, por
ejemplo, se tienen que conectar ambas
blockchain porque se publican
e operaciones, las publicas de la rollap
la la publica en la cadena de Tum.
Sí, pero ojo porque eso es diferente. Si
yo cuando tengo una rollap no tengo acá
un puente así, sino lo que yo tengo es
acá tengo mi blockchain principal. Sí.
Acá tengo mi rollup y lo que está
haciendo la rollap es mandar
transacciones
para acá. Sí,
manda transacciones. Esto manda una
transacción
cuando yo acá tengo eh 20 transacciones,
¿no?
Punto esas 20 transacciones y la mando
como si fuera una transacción acá. No es
que esto estoy conectando
esta esta blockchain con esta
blockchain, ¿sí? Estoy mandando una
transacción
de un punto al otro. ¿Se entiende?
Sí, te comprendo. Es unidireccional. Ahí
vos decís que hay un solo sentido de
flujo porque yo estoy mandando
información y publico. No es como un
swap que tengo que hacer intercambio.
Claro, no es que estás conectando las
acá. Es como si esta blockchain fuera un
una persona externa que está haciendo
una transacción. Sí. Acá esto lo ve como
si fuera una transacción.
Sí, por eso es una rollap. Es como un
como como digo, un papiro que se mete
acá en esto de acá. En cambio, estas dos
no son no es una rollap, no es un
papiro, sino que son side chas, ¿no? Son
dos cadenas, una al lado de la otra.
Sí. Esto de acá se conoce como side
chas, no rols.
Claro. Entonces, el bit sería como la
manera de comunicar este entre dos
blockchain.
No sé, las monedas o lo que sea que
tienen que ir de un lado al otro para
porque cada uno utiliza este como un
circuito estanco, ¿no? Entonces, abrirse
la conexión, abrir ese circuito para que
puedan conectarse las dos blochen y
transmitir monedas, lo que sea que haya
que pasar de una a otra.
Claro. Exacto. Fíjense que acá yo, por
ejemplo, tengo una rollup, por ejemplo,
esto podría ser optimism,
¿sí? que sería por ejemplo una rolp o de
tipo de tipo optimistic y esto es
Ethereum. Sí, estás conectando
únicamente con Ethereum. Pero, ¿qué es
lo que pasa si yo tengo otra blockchain
que no es ya Ethereum? Es por ejemplo
Binance SmartChain.
No, acá tengo Binance SmartChain.
Es otra blockchain. Sí. Y no es una
rollap. Yo no estoy mandando las cosas
acá. Ethereum, esta tiene sus cosas por
separado. ¿Qué pasa si yo quiero
conectar Ethereum con esta oism con
esta? Sí, de hecho esta de acá podría
llegar a tener su rollaps y las dos
rollaps quiero conectarlas entre ellas.
Y bueno, ¿cómo hago para conectarlas?
Bueno, tengo que crear un puente. Sea
como sea, acá yo tengo que crear un
puente. Puedo tener, por ejemplo, un
puente entre Optimism y Binance Smart
Chain, ¿sí? o un puente entre Ethereum y
Vinas SmartChain.
Se ve.
Esto es indiferentemente si estamos
hablando roll up o qué. Sí, yo estoy
generando un puente entre dos redes. ¿Y
qué es este puente? Es algo que voy a
poder pasar algo de un lado al otro. Sí.
O sea, para este lado, ¿no?
Para este lado
o para el otro, ¿no? Pero vamos a poder
pasar algo por acá.
¿Qué es ese algo que nosotros podemos
querer pasar de un lado al otro?
transacciones, me dicen por ahí.
Y María, eh, contestando tu pregunta de
antes, dice, "Pero la blockchain no es
una única, no es una única con bloques
individuales. Eh, no, las blockchains
hay muchas blockchains. Fíjense, fíjate
que Binance Smartchain es una
blockchain, Optimus es una blockchain,
que también Optimus justamente es una
rollap de Ethereum. Si esta es una
blockchain layer 2, esta es una
blockchain layer 1, pero Bance Smchin,
por ejemplo, es una blockchain layer 1
también, ¿no? Porque no es una roll app
de Ethereum.
Por ejemplo, si conectara, viste que es
muy conocida la red de Trom que se
conecta con la de Ethereum. Entonces ahí
en ese caso necesitas un bridge y si
necesitas un bridge, como estás contando
vos, ahí lo que se publican son las
transacciones, swaps, generalmente son
swap de monedas.
o de tokens, mejor dicho.
Ahí vamos un poquito mejor. O sea, en
realidad no estás publicando las
transacciones porque las dos cadenas son
totalmente separadas. Sí. A una no le
importa la transacción de la otra en sí.
¿Qué es lo que pasa? ¿Qué es lo que yo
quiero hacer? Bueno, quiero poder decir,
tengo un token en en la red de Ethereum
y quiero pasar ese token a, no sé,
Polygon. Sí, acá tengo Polyon
y acá tengo Ethereum.
Y bueno, ¿qué es lo que quiero hacer yo?
Bueno, agarrar un USDC de acá que está
en Ethereum
y comunicarlo con este puente, ¿sí? y
llevarlo para el otro lado
y que este USDC en Ethereum ahora ya no
esté más en Ethereum, sino que ahora
esté en
Polyon. Sí,
se ve eso.
Perfecto, perfecto. Entonces, como
comentaba ahí en el chat Miguel Ángel,
eh, cuando haces un swap de un token a
otro, como lo que pasó con RSTH,
eh, sí. Más o menos. Ahora vamos a ver
un poco eh qué es con eso de RC RSTH.
Sí, pero básicamente lo que yo quiero
hacer es decir, "Okay, tengo un USDC en
Ethereum, ahora quiero tener un USDC en
Polyon." Sí.
¿Qué pasa? USDC sí pertenece a una
empresa llamada Circle
y pertenece a una empresa llamada
Circle. Si ustedes van a ver eh la
documentación de Circle,
hay algo que se llama CSTP,
¿sí? Que significa crossin transfer
protocol, ¿sí? Ustedes pueden hacer
justamente este el crossing transfer, si
justamente está haciendo una
transferencia entre eh crossing
significa como eh cruzar las cadenas,
¿no? O sea, dos cadenas diferentes,
hacer una transferencia y bueno, es un
protocolo.
Y acá dice transferencia nativa entre
blockchains.
Es transferencias nativas entre
blockchain. ¿Por qué nativas? Porque
fíjense que es un protocolo que le está
dando el mismo Circle, que es la persona
que crea esos USDC, ¿no? Entonces CTP
permite que USDC fluya de manera nativa,
uno a uno entre blockchains, unific
unificando la liquidez y simplificando
la experiencia del usuario. Sí, la forma
más seguras de transferir USC entre
blockchain,
etcétera, etcétera. ¿Sí?
¿Qué es lo que sucede? Obviamente USS no
está en todas las blockchains, sí,
despollado, pero básicamente es un token
que tiene muchas blockchain, poner que
tenga, no sé, 20, 50, pero bueno, hay
cientos y cientos de blockchains.
Entonces, mientras yo tenga ese USDC,
¿sí? En el cual eh estoy utilizando
alguna alguna cadena que está incluida
en ese CSTP,
sí,
no voy a tener problema. ¿Por qué?
Porque hay un protocolo, como dice ahí,
que me permite decir, "Okay, yo este
USDC que tengo en Ethereum lo quiero
hacer desaparecer de Ethereum y lo
quiero hacer parcer aparecer en polgon."
¿Sí? Entonces, yo llamo a ese protocolo
CTTP
y ¿qué es lo que va a hacer?
¿Alguna idea? ¿Qué va a ser ese
protocolo CSTP?
Pero para que pase eso, entiendo que
ambas blockchain tienen que tener,
digamos, como un como un acuerdo con
respecto a ese a Circle.
Es como si fuese un API, ¿o no?
Claro, porque tienen que ambos tienen
tien que estar autorizado de ambos
lados.
Exacto. Pero acuérdense que les dije,
bueno, USS, el dueño de USS es Circle.
Circle tiene todos los permisos, ¿sí?
Sobre USDS, tanto en Ethereum como en
Polygon. Vos llamás ese protocolo CTP,
que es un protocolo justamente de circle
que diga, "Okay, yo este Ethereum que
tengo acá, este USDS que tengo acá en
Ethereum, no lo quiero tener más en
Ethereum, lo quiero tener en polon
por eso
nada.
Ahora sí que me mataste. Como nada.
Después vemos. Pero, ¿qué es lo que
tiene que hacer?
Sacarlo de un lado y llevarlo al otro.
Exacto. Tiene que sacarlo de un lado,
como dijo ahí, porque
tiene que sacarlo y quemarlo del otro
lado. Tiene que de un lado quemarlo y
del otro lado despollarlo.
Exacto. Ese es el punto, porque si yo no
lo quemo de un lado y lo creo en el
otro, estoy creando de un USDC dos USDC,
¿no?
Claro, estás creando el doble a doble.
Claro. Entonces, ¿qué es lo que tiene
que hacer? Bueno, primero tien que
quemarlo de acá. Sí. Lo que se conoce
como burn.
Y por el otro lado tienen que eh
crearlo, ¿no? Que es lo que se conoce
como mint. Sí.
Esto es un protocolo justamente por esto
que se llama
burn and mint.
Sí, porque quema de un lado y crea del
otro. Sí.
Vamos hasta ahí.
Vamos hasta ahí.
Sí. Lo que pasa es que le das un poder
muy grande ahí a Circle porque tiene
poder de quemarte de un lado y y crearte
en el otro.
Circle tiene todo.
Es un punto, digamos, como dijiste vos,
para hackeo. Eso es un punto genial para
ir a hackear.
Exacto. O sea, si vos vas a hackear un
punto, vas aar justamente esto, ¿no?
Bueno, eso con Circle. Ahora le puedo
decir, por ejemplo, que USS en Binance
SmartChain no existe.
Sí, en Binance Smartchain USDC no
existe. Y ahora yo tengo mi USDSC en
Polygon y quiero llevarlo a B
smartchain. ¿Cómo hago si no existe?
Lo que pasa que entiendo que Binance
tiene otro token que es cambiable con
Polygon, por ejemplo, ahí no va no te va
a dar USDC, te va a dar un SDC
eh made in Binance, por decirte.
Mm. Y y ¿cómo vamos a hacer eso? Y ahí
también con otro puente que no va a ser
circle.
Okay. Acá, acá tenemos un puente que era
el puente de circle, ¿no? Este que hace
CTP, ¿no? Acá pongámosle acá puente. Acá
como dijiste, acá como dijiste ya el
puente no va a ser circle, ¿no? Entonces
ese puente puede ser un puente de
Binance, como dijiste.
Sí. ¿Y qué va a ser el puente de Binance
con
para transferir un USDC de acá de
Polygon a Binance Marchain
y valida ese USDC y lo quita de polygon
y lo transfiere a Binance?
Claro, lo mismo que explicaste antes,
calculo que es lo mismo, quema de un
lado y como dijiste crea en el otro.
Okay. Suponete que Binance ahora quiere
agarrar y quemar este USDC.
¿Cómo hace para quemarlo?
Le pide autorización a
CCTP
o tiene que tener una cantidad de USDC
que soporten esa esa quema, tiene que
tener una reserva de de eso.
Yo le dije acá CCTP lo puede quemar
porque bueno, es USDC y justamente USDC
es de Circle. Circle tiene la habilidad
de quemarte susc. es un protocolo
bastante centralizado, digamos, ¿no? Que
ahí ustedes me dijeron, "Bueno, es un
peligro porque alguien puede atacar este
CCTP y quemarme los USDC o crearse USDC
a a Piechere." Y es verdad, es un punto
de justamente un punto en el cual que
hay que respararlo con máxima seguridad.
Pero, ¿qué pasa acá con Binance
Marchain? Sí puede vainas quemarte el
USDC
y lo podría hacer si él te da algo a
cambio. O sea, si yo te digo, te saco
esec, pero te doy mi mi
Binance, que es uno a uno con con USDZ,
o sea, te tengo que dar un token. Ahí sí
te tengo que dar un token a cambio del
que te quemo.
Pero, ¿cómo lo quema si no tiene los
permisos? El único que tiene los
permisos para quemar o crear es circo,
no vainas.
Tienen que hablar entre circles y y
Binance, a mi entender, ¿no? Para poder
hacer la operación,
¿no? El único que puede quemar acá es
Circle. Circle puede quemar y puede
crear. Sí, Circle dice, "Okay, entre
Ethereum y Polygon, yo tengo eh
tengo los contratos puestos acá en
Ethereum, los contratos del token en
Ethereum, tengo el contrato en Polygon y
cuando alguien me pide a través de CSTP
que le queme de un lado y le minte del
otro, se lo quemo y se lo creo acá. ¿Sí?
Entonces, mantengo siempre la sumatoria
de todo la las cantidades de los USDC en
todos los protocolos constante e igual a
lo que yo tengo, por ejemplo, en mi
banco. Sí.
Y bueno, entonces estamos en la misma.
Entonces este Binance tiene su propio
token y puede quemar su token de un lado
y del otro lado y no puede tocar al
otro. Entonces vos no vas a poder
transaccionarc Binance, vas a tener que
solicitarc
Binance.
Okay. El no vas a poder no me gusta
mucho. Es decir, todo se puede. ¿Cómo
hacemos
la solución?
Y bueno, la solución eh que en eso vos
tenés decía, tenés una transición más
cruzada. Yo te doy como si fuera tantos
de los míos, vos dame los USDC que los
tengo yo.
Exacto. Ahí sí me está gustando un
poquito más, ¿no?
O sea, Binance se queda con CDC
y le da como diciendo, "Te doy de estos
para que vos cambies por los USDC."
Exacto. A mí me está gustando un poquito
más. ¿Por qué? Porque básicamente yo acá
puedo tener, o sea, Binance puede crear
en Polyon un una bóveda, ¿no? Vamos a
poner acá una bóveda.
Que cuando alguien le diga, "Okay, yo
quiero tener un USDC dentro de Binance."
¿Qué es lo que puede hacer Binance? Y
bueno, pueda agarrar este USDC
de la persona, no se lo puede quemar.
Sí, porque Temar únicamente puede
hacerlo circle, pero sí puede
agarrárselo y decir, "Okay, vos dámelo."
Que yo lo guardo en esta bóveda. Sí, lo
guardo acá.
Y una vez que te lo guardé acá,
acá te creo otro token, ¿sí? Que también
se puede llamar USDC.
Sí, un USDC,
¿sí? Que podemos llamar, ¿no? Llaman
Peg.
Sí,
básicamente yo lo digo porque está
pegado al otro. Sí, no, no es por eso
peg, pero básicamente
es por eso, ¿no? Todos van a ver que le
ponen peg e bien. Entonces esto sí lo
puede hacer porque Binance puede lanzar
su token acá, ¿sí? Y decir, "Okay, este
token un USDC está colateralizado con el
un USDC que tenemos acá.
Sí, yo guardé un acá y le creé un de
acá. Si yo quisiera después volver para
el otro lado, ¿qué es lo que tengo que
hacer? Y bueno, quemar este este
USDC. Acá sí lo puedo quemar porque esto
B ya tiene la potestad porque es su
token y este USDS devolvérselo de alguna
forma al usuario. Sí.
Por lo tanto, ¿qué es lo que estamos
haciendo acá? Quemando y creando.
No, no estás creando porque eso es una
reserva. Es como un un colateral, como
dijiste.
Exacto. Estás haciendo algo que se llama
lock y unlock. Sí, pues estás estás
loqueando, o sea, estás eh poniendo bajo
llaves ese USS y después lo estás le
está sacando las llaves, ¿no? Lock y
unlock.
Sí, este es otro tipo de puentes.
Entonces, que existe, tenemos un puente
que es vern m y otro que es lo and.
Sí, dependiendo de los permisos que vos
tengas para crear esos tokens y bueno,
vas a crear y y borrar, ¿no? Vas a poder
hacer un burn and meet o un look and
lock. ¿Se entiende?
¿Se
entiende eso,
sí se entiende. Y viste que está USDT.
Sí.
Es el mismo caso que Binance USDT o es
el más o más se acerca a Circle.
Yo diría que USDT se acerca más un poco
a circle. Sí. ¿Por qué? Porque USDT
es de una,
¿cómo se llama?
Es de una compañía que se llama Teter.
Sí, sí, Tetter.
Sí, es de una compañía que se llama
Tater. Ahora no tiene eh este producto
STP así como como lo tiene Circle, pero
sí tiene sus USDT eh desplegados en
diferentes lados y vos podés utilizar
sus bridges para quemarlo de un lado y
eh mintiarlo del otro. Sí.
Y obviamente en donde no esté puesto
USDT, vos vas a poder hacer esto, ¿no?
Vas a poder crear tu propia tu propio
bridge y decir, "Okay, yo te bloqueo los
tokens acá y te los doy del otro lado."
Sí, vos puedes hacer tu propio bridge,
¿sí? Puedes hacer tu propio bridge. Sí.
Ahora, obviamente que el token que vos
desplegas acá, si no es un token
masivamente utilizado y no lo va a usar
nadie, nadie lo va a aceptar, es como
que va a estar ahí relegado, ¿no? Por
más que tenga su valor colaterizado en
la otra red. Sí. Por lo tanto,
generalmente los que hacen los bridge
que realmente valen y bueno, son
compañías grandes, ¿no? Por eso, por
ejemplo, puse Binance Smartchain, si
Binance tien su bridge en las cuales te
loquea los USS de un lado y te los crea
en Binance, ¿no? En Binance Marchain,
¿se entienden?
¿Se entiende es?
Vamos bien.
A ver, dedito para arriba, para abajo,
aunque sea que me está escuchando o
perdí conexión. Genial.
Eh, bien. Entonces, eso por un lado.
Ahora, ¿qué pasaría, por ejemplo?
Sí, porque acá yo dije, bueno, Ethereum,
Polygon, Polygon, Smartchain, sí, les
doy un caso real, por ejemplo, que que
me pasó a mí hace unos días. Sí, yo
quiero dinero acá en una red
llamada nosis.
Sí, nosis USDC no existe. Sí, o sea, no
circle no deployó USDC en nosis. Sí,
hay sí un
un bridge, sí, bastante
bastante normal, ¿sí? Que se llama eh
Omnibridge.
Sí, acá tenemos Omnibridge
que me transforma los USDC que yo puedo
tener acá en mi cadena de Ethereum. ¿Si?
Esto sería eterior.
Ah,
acá no, un uso S.
Sí. Y esto me lo pasa para acá a algo
que nosotros podemos llamar un USDC.
Sí, esto se le suele agregar mucho. Sí,
un USDC.Ee E, por ejemplo, en Polygon,
sí, antes Circon no tenía los USDC
desplegados y existía justamente el
USDC.Ee que era el bridge, ¿no? El USDC
que les daba el bridge. ¿Qué pasó
después? Bueno, vino Circle y desplegó
en polyon y bueno, quedaron quedaron los
dos tokens, ¿no? Quedaron el token
USDC.Ee, que sería la el del bridge y el
USDC nativo de circle. Sí. Y estaban los
dos. Después algunos exchanges aceptaban
uno, después empezaron a aceptar el otro
y no el otro y así se fue digamos eh
este USDC. Desapareciendo acá en Nosis,
como es una cadena que no la utiliza
mucha gente, sí, eh, no está, sí tenemos
únicamente el USC.
Y que lo y lo traen desde Ethereum, ¿sí?
con este USDC vos podés eh loquear ese
USDC porque no lo vas a poder hacer
desaparecer porque no existe el CTP acá
en este en este medio. Si, así que lo
vas a tener que loquear este USDC y te
lo eh crean de este otro lado. Sí,
pero qué es lo que me pasaba a mí.
Bueno, nosotros no estamos en Ethereum,
nosotros estamos en base.
No existe un puente directo,
si entre lo que es base y lo que es
nosis, si no existe esto.
Pero, ¿qué qué es lo que sí existe?
¿Qué es lo que sí existe?
Y un puente entre base y Ethereum, ¿no?
Exacto. Existe un puente acá, ¿sí? Entre
y Ethereum,
¿sí? En la cual es yo puedo acá un
quemarlo, ¿sí? A través de CTP, ¿sí?
Porque acá sí tenemos CSTP
y crearme un USC de este otro lado, ¿no?
Entonces, que un USDS acá, lo eh
a través de STP quemo este de acá. Lo
minteo acá, ¿sí? Y después este USS eh
mintié acá, lo logo y me creo un USS.e
acá en Nosis a través de Omniibrid. Sí,
esta puede ser una alternativa. Sí,
obviamente fíjense que tiene que hacer
varios pasos, ¿no? Multichangins y
acuérdense que las cadenas no se
comunican entre sí, ¿no? Por lo tanto,
cada bridge lo que tiene atrás es un
backend trabajando para ellos, ¿no? Acá
un backend. Y acá vamos a tener otro
backend que va a estar de alguna forma
conectando estos dos. Sí, esto sería el
bridge.
Sí, que bien lo que decía uno de sus
compañeros. Bueno, ese backend es
seguramente lo que va a ser atacado
siempre, ¿no? Justamente ese puente es
lo que es atacado. ¿Por qué? Porque,
bueno, yo si acudiera atacar esto, ¿sí?
Acá, por ejemplo, en CSTP podría decir,
"Okay, no quemo ningún uso de se y
directamente me los creo." Sí, porque el
BC le dice crea, entonces acá lo crea y
acá lo mismo. Si yo podría decir, bueno,
créame USDC.
Y fíjense inclusive que si yo creo USDC
acá, estos USC no tienen nada que ver
con los USDC de circle. Por lo tanto, no
tendrían valor en sí si no están no hay
bloqueados acá. Pero si yo creo SDC.
acá. Después puedo ir a través de bridge
y desbloquear los de acá de circle. ¿Y
qué pasa? Esos de circle los únicos que
tienen eh potestad para hacerlo es
circle, no este bridge. Por lo tanto,
este bridge ya quedó hackeado. ¿Se
entienden?
¿En qué lenguaje están esos?
En lo que sea. No importa, es agnóstico
el lenguaje. Puedes hacerlo en lo que
quieras.
Claro, porque yo no voy a atacar acá el
lenguaje en sí, sino lo las los los las
comunicaciones.
Claro. Exacto.
El lenguaje es indiferente, ¿no?
Recuerden que todo al final termina en
instrucciones en assembly, ¿no?
Sí se entiende.
Obviamente hacer todo esto. Bueno,
fíjense, es una movida, pues yo tengo
que ir de base a Ethereum, de Ethereum a
Nosis a través de dos máquinas, ¿si? Y
obviamente si yo tengo dos máquinas y
bueno, tengo también dos posibilidades
de error, ¿sí? Acá tengo una, si hago
esto nada más y es como que tengo menos
posibilidad de error, acá tengo dos, no
se entiende.
Y no se puede depollar entonces los c
directamente ahí porque no te permite
circle, no no lo ve como un negocio.
Claro. Esto de acá, fíjense que por
ejemplo USC.e creo que hay 450,000 en
total.
Sí, que es nada. Si ustedes se ponen a
ver para para nosotros puede ser mucho
dinero para una persona común y
corriente, pero si lo ves para una
blockchain 450,000 que haya es nada,
¿no?
Como estamos hablando, por ejemplo, que
ABOR tiene 50,000 millones de dólares.
Eh, acá tiene 450,000.
Sí.
Entonces, no esta esta red no la
utiliza. ¿Por qué es que nosotros la
necesitamos? Bueno, porque existe una
tarjeta que se llama Nois Pay,
¿sí? Que es básicamente una visa. Ellos
tienen la licencia de de visa que
básicamente cuando vos le creas una
cuenta al usuario, ¿sí? Vos le creas una
cuenta al usuario, le haces el KYC. KYC
significa no your customer, es decir, le
pedís el documento, la fotito y
comprobáas que el usuario realmente es
el usuario. Sí, lo que hace Nois Pay es
le crea una billetera a cada uno de esos
usuarios. Sí. Y se la crease.
Bueno, como dice Nosis Pay, se la crea
en Nosis. Sí. Entonces, cada usuario va
a tener una billetera. Es en Nosis Pay.
¿Y para qué sirve esa billetera? Bueno,
esa billetera tiene un permiso,
¿sí?, para ser movida por otra billetera
que está conectada básicamente a Visa, a
las cosas de Visa, ¿no?
Entonces, ellos te dan una tarjeta,
entonces ellos te dan una tarjeta, ¿sí?,
que a cada usuario le crean una cuenta,
cada usuario puede depositar ahí su su
SDC, ¿sí? y a través de obviamente todo
su
todo su sistema acá que les estoy
comentando,
lo que hacen es el pago a esa tarjeta de
Visa. Si. Por lo tanto, vos podés
utilizar esos VSC que vos tenés cargado
en tu cuenta con tu tarjeta Visa. Sí.
Y nosotros lo que estamos estamos
haciendo es justamente eso, ¿sí?
Entonces acá le damos con el
nosis pay, pero nuestros usuarios están
acá en base, entonces tenemos que
transformar solo en Ethereum después de
tener una nosis y de nosis pasárselo a
nosis pay. ¿Se entiende?
Sí, está claro. Ahora, qué raro que Visa
no se está apoderando de todo esto.
Visa tiene la posibilidad de tener una
blockchain propia
y ser como la circle
por las transacciones que mueve, por el
volumen, por dreguita y todo.
A no le interesa eso porque Visa
ganancia
va acá.
dice, "Tomá, vos armame todo esto y las
ganancias son mías igual, entonces para
qué me voy a esforzar en hacer eso
así como este que le dije nois payón,
tienen pomelo, tienen rayar, culpa
hay miles y todos trabajan con el motor
atrás de visa. Visa gana por todos
ellos.
¿Entienden?
Tengo una pregunta, Cristian. ¿Sabes
cómo funciona eso nuevo de Lemon? que
por ejemplo vos haces gastos con la visa
de débito de Lemon en dólares y
directamente se te pueden debitar USDC o
incluso pesos, pero o sea, si el 30% de
impuestos que calculo que básicamente lo
que hacen es que te compran USS con con
esos pesos automáticamente.
Es esto
es esto. Vos sacaste en succenta
y cada vez que pagas se editan de ese de
ese lugar y después acá todo el motor
que justamente hace la conversión para
pagar la visa.
O sea, a Visa se le está mandando USC.
Entonces como que Visa está aceptando,
¿no? A Visa, a Visa vos le mandás eh
pesos, dólares o lo que sea. Si en ese
caso seguramente lo que está mandando es
dólares. Si puede ser una tarjeta
internacional y por eso es que no te
cobra ese eh ese 30% extra. Sí. O vos se
lo mandas en dólares. Ahora, ¿cómo hace
para mandárseelo en dólares? Y bueno,
acá tenés todo el motor ese que no es de
Lemon, como te digo, son proveedores de
visas. Por ejemplo, el nombre de Pomelo,
eh, este no Space, tiene Culipa,
Reinard, eh, no me acuerdo más en este
momento, pero hay un montón, sí, que vos
podés agarrar o obviamente siendo una
empresa, ¿no? Vas, haces un KYB con
ellos y le das a tus usuarios la tarjeta
y la posibilidad de esa, ¿no? Ellos
tienen todo el motor que justamente te
agarran los USC, te lo transforman en
pesos, dólares o euros o lo que sea y
con eso le pagan a visa, ¿no?
Te dictase el banco, que el banco sí
cuando te hace la liquidación de tarjeta
te mete el 30%.
Claro. Lo que pasa es que acá las
tarjetas son tarjetas internacionales.
Sí. Entonces, vos la estás pagando en
USDC. Sí. USDC hace la conversión a
dólares y bueno, dólares ahí lo paga. Y
fíjense que a la conversión de USDC a
dólar siempre termina ganando el USDC,
por lo tanto ahí está también ganando
estas compañías, ¿no? En esa conversión.
Claro. Y el estado, ¿dónde come? Ahí,
digamos, porque siempre este van
no ahí ahí perdió el estado, ahí no
puede tener acción porque es
claro la billetera virtual.
Eso es lo que quieren encontrar a la
vuelta.
Ese es el problema que los bancos por
eso están en contra. Todos los bancos
están en contra de todo est de todos
estos sistemas porque ellos no pueden
morder.
Sí, acá el banco no tiene ingerencia y y
es verdad el Estado no tiene ingerencia.
Donde sí tiene ingerencia es ustedes
dijeron Lemon, por ejemplo. Bueno, Lemon
es justamente está regulado por el
Estado, ¿no? Tiene lo que se conoce como
PESAP, PSP. Y si vos metés dinero dentro
de Lemon, Lemon está custodiando ese
dinero por vos. Sí. Por lo tanto, para
custodiar ese dinero por vos, no pueden
ser una compañía así, digo, bueno, abre
una compañía cualquiera y dame tu
dinero, yo te lo custodio. Sí, eso tiene
toda una regulación. Ellos son PSP, son
PESAB.
Sí,
claro. Pero más más allá del Emon,
igualmente esos intermediarios, los
cuales reciben USDC de los clientes que
usan las tarjetas y les mandan dólares a
visa, esos intermediarios tienen que
tener fondos y reservas de millones de
dólares. Y ahí es donde digo, "Che, eso
tiene que estar registrado en un lado y
el estado debe estar regulando eso o
no."
No, esto de acá lo regó la visa.
Okay.
Sí,
pero Visa no te lo dice eso
porque ni siquiera son argentinos, o
sea, son compañías de afuera.
Sí, pero Visa no se hace responsable. Si
te ca una de las billeteras de estas, no
se va a hacer responsable Visa.
Eh, depende depende depende hasta qué
punto, o sea, si fue injerencia de de
ellos y no seguramente no se va a ser
responsable Visa, sino Visa también le
va a hacer una demanda a esto, ¿no? Pero
bueno, Visa tiene muy controlado a todos
sus eh sus proveedores, no es que
cualquiera puede ser un proveedor acá de
visa. Hacer esto cuesta millones, ¿no?
No es que te cuesta
000,
no te puedes agarrar un grupo de
programadores, programarlo y ya está.
hacer esto te cuestan millones en
licencias y en cosas para para poder
estar compliance con Visa.
Entonces, en definitiva, no le está
mandando a Visa, o sea, se lo está
mandando un proveedor de visa, pero
a un proveedor de visa, el proveedor de
visa se encarga de darle de hacerle
todas las cosas para que Visa tenga sus
dólares o lo que sea.
Por eso te decía yo que qué raro que no
se hizo cargo del negocio. Hizo un
outsouraring, lo contrató afuera, pero
es de ellos.
Claro, lo que pasa que hacerse cargo del
negocio, que es agarrar y armar toda
esta estructura y después tiene que
estar controlando toda esa estructura en
todos lados. En cambio, te dice, "Bueno,
toma, hacete vos la estructura y dame la
plata a mí." Listo,
¿no? Acá avisa lo que haces el
procesamiento.
Claro. Y dijiste que, por ejemplo,
Pomelo es uno de esos.
Pomelo, por ejemplo,
son de acá, ¿no?
Son de acá.
Son buenos.
Pero bueno, el tema es esto, ¿no? Que
les comentaba, por ejemplo, algo que me
pasó. Bueno, ¿cómo lo estamos
resolviendo? Para que tengan también una
idea de eso. Sí, no estamos haciendo
nada de esto. Sí. Eh, utilizamos una
cosa que se llama e Reno, ¿sí? que
básicamente vos tenés dinero acá en
base, tenés, bueno, eh vos tenés el
dinero acá en base y vos tenés acá este
Rino que estaba diciendo y acá tenés
nosis. ¿Qué es lo que pasa? Rino ya
tiene dinero acá en en base y tiene
dinero acá en Nosis.
Claro, tiene un col lateral lo que
hablamos. Entonces sí puede hacer eso.
Claro, ya tiene el dinero ahí y tiene el
dinero del otro lado. O sea, tiene de
los dos lados. Entonces, ¿qué pasa? Vos
le das
a Rino, por ejemplo, acá $10. Sí,
das acá $10.
¿Y qué hacen ellos? Bueno, del otro lado
te dan a vos $.
Sí. Y obviamente ahora van a tener $10
más acá y $10 menos acá, ¿no? Entonces,
obviamente tienen su su portafolio un
lado del otro y después cuando quieren
ellos esto obviamente lo eh
lo regulan, ¿no? Lo cómo se dice, lo
rebalancean, ¿no?
ponle, no sé, una vez por semana y
bueno, esto te lo rebalancean.
¿Qué es lo que te ahorras ahí?
¿Por qué piensas que hicimos esto en vez
de hacer esto de acá?
Y porque me calculo que como en el mismo
caso de de Circle, le reducís todo el
riesgo ese que tenés ahí de
de del hackeo.
Igual Rino lo puedes hackear y pasa
exactamente lo mismo, pero al tener un
balance debe tener más seguridad porque
debe decir hasta tanta cantidad, tengo
que tener tanta cantidad acá, no puede
tiene que tiene que cerrar eso. calculo
que eso lo debe hacer.
Claro. Mira lo que pasa acá. Sí. O sea,
yo acá tengo un backend, obviamente, o
sea, Rino acá tiene su backend que
básicamente conecta una con la otra. Eso
lo tiene que hacer, ¿no? Está haciendo
como si fuera un bridge, pero no está
bridgeando el dinero, sino que tiene su
dinero a un lado y tiene su dinero al
otro lado, lo recibe de un lado y te lo
en el otro, ¿no?
Acá básicamente vos estás mandando el
dinero de un lado al otro y después de
ese lado al otro. Sí. Esto de acá te
tarda un cierto tiempo. Esto de acá te
tarda otro cierto tiempo. Sí. Por lo
tanto, el tiempo total va a ser el
tiempo que tardó esto más el tiempo que
tardó esto. Acá necesitas
confirmaciones. ¿Sí? Acuérdense que
entre si teníamos pocas confirmaciones,
esto podía retrotraerse, ¿no? Entonces,
no podemos dejar que eso haya con muy
pocas confirmaciones. Y después de acá
para acá lo mismo, tenemos que esperar
un montón de confirmaciones. Sí. Y si
nosotros tenemos que esperar 5 minutos
acá, 5 minutos acá y son 10 minutos que
tengo que esperar para cargar de acá a
acá. En cambio, si acá yo lo tengo, ¿sí?
Y una vez que lo tengo, espero dos
confirmaciones y mando, ¿sí? Capaz que
esto tardó 10 segundos, 20 segundos.
Estamos hablando 10 minutos contra 20
segundos. Sí, esto es mucho más rápido
que esto de acá. Sí. Ahora, ¿cuál
podemos decir que es la desventaja?
Bueno, fíjense que acá vos tenés en tu
billetera un USDC, vos mandas a través
del protocolo CTP y ellos te crearon unc
billetera, si eso nunca estuvo en
custodia de nadie. Y después ese bueno
un USDC también, o sea, quedó acá en
lock y ellos te y acá te creó un USDC en
tu billetera. Sí, este lock básicamente
no es que cualquiera lo puede
desloquear, ¿sí? Pero digamos vos tenés
tu USDC acá al instante. En cambio, acá
vos le mandaste esto de acá y durante
esos 10 segundos el que tien los 10 USC
es esto de acá, ¿sí? En su billetera
custodia.
Y después te da a vos los 10 USC de acá,
¿sí? Desde su billetera custodia. Por
tanto, esos 10 segundos ese dinero
estuvo custodiado. Obviamente que si
esto no llega a tener el dinero acá para
dártelo o llega a fallar o alguna cosa y
bueno, podés quedar con tu dinero
atrapado en su custodia, ¿no?
Podés perderlo, pu. Vos le estás dando
el permiso para que te lo saque y que se
lo queden durante un tiempo. ¿Se
entiende?
Sí, pero aún así es más seguro porque el
hecho de tener colaterales a vos te
permite tener funciones de decir, bueno,
no se puede hacer transacciones de tanto
valor, ¿me entendés? Y vos tenés que
compensar como como tenés balanceo es
difícil que eh digamos en en el anterior
caso, que como vos decís, yo puedo
atacar y crear más dinero porque total
no hay un chequeo desde del principio al
fin de la cadena. Acá tenés un chequeo
de principio a fin. Entonces, si hay
algo irregular, se puede detectar
enseguida, no puede desaparecer todo de
lado, de un lado y del otro lado.
Bueno, ahí no estás teniendo en cuenta
lo que conocemos como composibility,
¿no? Como composibilidad de toda la red.
¿Qué es lo que pasa? Vos lo que estás
recibiendo acá son USDC, no son USDC,
acuérdate que USDC en Nosis no existe.
Esto es USDC.
Vos estás recibiendo
básicamente el token de este puente.
Por más que lo estés haciendo de esta
forma, estás recibiendo el token de este
puente. Si alguien hackeó este puente,
también te hackeó a vos.
¿Por qué? Porque yo hackeo este puente,
digo, "Okay, acá hay $10,000 guardados,
yo me creo $10,000 acá. Si con este
puente de acá saco esos $10,000 y los
tus $ que vos tenés acá ya no valen
nada,
¿se entienden?
Ah, porque Rino no puede crear. Eh,
claro,
los tiene. Vos mismos lo dijiste, los
tiene.
Y pero entonces a Rino no le conviene
meterse en el medio y no crear el como
es el caso de Circle que crea su propio
token. Le conviene que tener su propio
protocolo y su propio token.
Es que no cualquiera puede crearlo
porque yo te digo, "Okay, yo lo creo.
¿Puedo crearme?" Sí. Puedo hacerlo, pero
si nadie lo usa, ¿de qué sirve ese token
USS.e que estoy creando yo,
por más que te diga, lo tengo
colateralizado en el Etherium, pero
ningún protocolo lo tiene eh
lo acepta. Yo acá con este USDC.Ee, por
ejemplo, lo puedo poner en Sparkle. Sí,
Sparkle sería como ave. Sí,
nosotros ya vimos AVE. Bueno, esto lo
podré poner en Sparkle
para ganar. ¿Por qué? Porque Sparkle
reconoce este USDC.Es
de
de Omnibridge, ¿sí? Pero si Rino crea su
propio USDC y eso no va a estar en
Sparkle para ponerlo, ¿se entiende?
Pero Cristian, consulta, porque no
podría tener Rino su propio eh, no sé,
Rino Coin y lo que lo que te transfiere
es el Rino Coin en vez del USDC.
Sí, claro que podría, pero lo que estoy
diciendo acá, por ejemplo, si lo quieres
meter en Sparkle, Sparkle no acepta Rino
Coin, acepta USDC.e de Omnibridge.
Pero, ¿para qué? Yo voy a agarrar ese
Rino Coin y mandarlo a esta red sparker.
Si yo lo que quiero hacer es la
transacción de cambiar esos USDC al otro
lado.
Depende lo que vos quieras hacer porque
si vos querés, por ejemplo, meterlo acá,
como decía en la tarjeta, en la tarjeta,
en la tarjeta, igualmente que que
Sparkle, sí, no Sispay, tampoco acepta
Rino Coins,
sí, porque no existe Rino Coins, lo
pueden crear, pero no es nada. Sí. ¿Qué
es lo que acepta Nosis Spay? Y bueno,
USDC.Es de Omnibridge,
pero y Rino no podría tener como otra
interfaz para hablar una vez que está
validado eso para para que no como vos
decís, no hacken el puente ese de Rino y
ya se quedan con todo.
No, lo que estoy diciendo es que ustedes
siempre tienen que tener en cuenta la
composabilidad. Ustedes me dicen que que
bueno, si yo lo tengo acá, sí es como
más difícil que me lo hackeen y no, la
verdad que no es más difícil que me lo
hackeen porque no hace falta que te
hacken este punto para ser hackeado,
sino que te puedan hackear acá también.
Claro, pero ahí es como que hackean al
emisor del, vamos a decir, del token.
Entonces, si hackean al emisor de token,
es como si ahora hubiesen hackeado, no
sé, a USDC. Si lo hackean y perdieron
todos, todo lo que tienen USDC
perdieron. Claro,
perdió el mundo, vamos a decir.
Claro. Entonces, ¿qué qué es lo que te
conviene? Si vos tenés yendo de base a
Ethereum, ponerte tu propio bridge, que
te pueden hackear a través de tu propio
bridge o a través de CTP o dejar
únicamente CSTP que tiene que sí o sí
hackear CSTP, ¿entendés? estás poniendo
un hackeo paralelo,
aumentan las probabilidades de hackeo.
¿Se entiende?
Mira, yo te digo cómo hacemos nosotros
en el banco. Ponerle alguien que está en
China le quiere transferir algo a
alguien de Estados Unidos.
Nosotros transferimos la moneda del
bancom
nuestra propia coin y de repente cuando
se termina
al otro lado le aparece la plata, pero
es la misma plata que estaba en Estados
Unidos, digamos. Es como esto que vos
decís que tiene plata en China y plata
en Estados Unidos. Claro, así de de esta
forma acá abajo.
Claro, así
la transferencia es la moneda nuestra, o
sea, no es nada, es un eh no tiene
ningún valor afuera del banco, es
nuestra,
como decís ese Rino Coin, pero
después eso se quema en realidad
desaparece.
Mm. Y está bien que se está bien que sea
y que lo hagan así. Ahora, ¿qué es lo
que sucede cuando vos acá no tenés un
sistema eh permisionado como es el de un
banco, sino que es un sistema que se
engloba todo, ¿no?
La visión ahí cambia.
Es decir, yo puedo tener esto. Sí,
obviamente, de hecho acá Rino lo tiene,
pero no es que utilice su propio Rino
Coin, porque ese Rino Coin serviría para
la compusabilidad contra otros
protocolos. Sí, tiene que tener los USS.
e que genera ovnibridge y si tiene los
USC. Que genera que genera OVNIBRID y no
tiene únicamente el punto de hackeo,
decir, "Okay, me hackearon el contrato
en donde tengo acá el dinero y me lo
sacaron el dinero, sino que también te
pueden hackear acá el puente y decirte,
okay, te genero más US.e y con eso eh te
saco los USCSC que tenés acá en
Ethereum. Por lo tanto, los USC que
tenés acá e no s ya no están más
colateralizados, también hackearon así a
a Reno o también puedo agarrar y hackear
acá el protocolo CSTP, ¿sí? Para decir,
"Okay, bueno, me genero USS y saco de
acá igualmente, ¿no? Entonces tengo tres
formas de hackearlo en vez de una sola."
¿Se entiende?
Sí. Ahí Miguel Ángel eh creo que apunta
eso bien. Dice, "Ahí tenés seguridad,
pero no tenés descentralización. En el
banco tenés seguridad porque justamente
él está en el medio, pero está
centralizado y es que esto como tiene
que estar abierto a otro
y está descentralizado.
Claro.
Y sí, y sí,
sí. Si vamos a ver ahí el punto de vista
la seguridad. Bueno, ahí la seguridad es
la seguridad del banco, ¿no? Que bueno
también tiene seguros y lo que quieras.
Vos acá también podes poner seguros,
pero bueno, ahí la seguridad es la
seguridad del banco. Acá la seguridad es
la seguridad del CSTP. Sí, si ustedes me
preguntan cuál de todas estas formas es
la más segura y la más segura es esta,
la de CTP. ¿Por qué? Porque básicamente
vos antes de estar creando estás
asegurando que acá se están quemando.
Sí. Y esa quemazón vos lo puedes
comprobar criptográficamente en la otra
cadena. Sí, como vimos con las rolas,
vos podías comprobar que todas las
transacciones eran eh eran fieles a
través de una transacción dentro de la
cadena principal. Bueno, acá también
puedes crear una transacción dentro de
la otra transacción que te verifica que
realmente se haya quemado el token acá
antes de ser creado acá. Entonces,
primero quemas y después creas y nunca
creas antes de quemar. Sí, eso por un
lado. Segundo, sí, si vos haces el burn
y después el mint, acá pasa lo mismo. Si
vos quieres hacerlo para el otro lado,
primero vas a tener que quemar para
después crear. Sí. Entonces, es 100%
seguro. Y no, no te diría que es 100%
seguro si vos podés eh de alguna forma
hackear esa forma criptográfica de
comprobar que primero se haya quemado
antes de mitar. Sí, lo que pasa que
trackar esa criptografía obviamente es
complicado si no es sencillo. Ahora, si
vos vas a a loquear y desloquear, ¿sí?
No es únicamente el problema de decir,
"Okay, yo loqueo." Sino que primero vas
a tener la posibilidad de encontrar
algún vector de falla a ese lugar donde
está loqueado y decir, "Okay, los
desloqueo directamente."
Sí. Y por el otro lado vas a tener la
posibilidad de decir, "Okay, bueno, si
no lo puedo desbloquear directamente,
voy a buscar algún vector de falla en la
cual yo pueda crearme tokens del otro
lado para desbloquearlos." ¿Se entiende?
Esa sería la opción más insegura,
digamos. Claro, por eso, o sea, tenés
primero esta de acá, que es como tenés
un solo punto de hackeo, acá ya tenés
dos puntos de hackeo, ¿no?
Claro.
Acá ya tenés muchos más puntos de
hackeos. ¿Por qué? Porque tenés el punto
de hackeo, los mismos puntos de hackeo
que tenías acá arriba, ¿sí? más el
hackeo, decir, "Okay, bueno, te robo las
claves privadas y te saco este dinero."
No,
¿me entiendes? Acá tenés tres, entonces
tenés uno, en el otro tenés dos y acá
tenés tres puntos de hackeo. ¿Se
entiende? No entiendo por qué la de Rino
es tan insegura o la ve tan insegura,
porque
no no es que la de Rino sea insegura, lo
que pasa que la Rino tiene su propia
inseguridad, además de que lleva
aparejado la la inseguridad de todo el
resto.
Vos decís que se suma, que se suma al
propio token que tiene, que lo podes
hackear al propio token más el puente de
Rino.
Claro. Es decir, yo si voy a voy a
hackear acá esto, puedo hackear o puedo
hackear directamente a Rino o puedo
hackear a Omnibridge o puedo hackear a
Circle. A cualquiera de los tres que
hacke puedo hackear a este de acá, ¿se
entiende?
Si yo quiero hackear a Circle, sí, no me
sirve hackear a Rino porque por más que
hacke a Rino, Circle sigue funcionando
como si nada.
ovnibridge. Si hackeo Omnibridge, sí,
Circle sigue funcionando como si nada.
En cambio, si hackeo circle, Omnibridge
también cae, se entiende
por la misma dependencia, digamos.
Exacto. La compusabilidad.
Claro. Lo que pasa es que habría que
tener como un consenso internacional
para evitar todo esto, pero centralizás.
Si buscas un consenso en monedas, vas a
centralizar.
Sí. Es que todo esto estoy totalmente de
acuerdo que es un caos, es una jungla.
De hecho, por eso pasó lo de Ketloud,
que les expliqué el otro día y fue un
poco también por que se lo expliqué,
¿no? Es decir, yo hacké un protocolo y
saqué plata de otro, o sea,
AVE funcionó exactamente como debía
funcionar, ¿no? No hackearon AVE, sí,
pero sacaron el dinero de AVE habiendo
hackeado Kelp, ¿se entienden? Acá lo
mismo. Yo podría sacar el dinero de de
los que tienen Rino habiendo hackeado
Omnichain o habiendo hackeado Circo. Si
es como que todo se enmaraña, ¿no? Y vos
cuando vos diseñas el sistema tenés que
pensar en ese enmaraento que trae por
detrás. Sí, no podés ser agnóstico a
todo lo que pasa en el ecosistema. Sí se
entienden.
Bueno, pero por eso también es el tema
de la adopción y no la adopción.
Porque siempre aparecen hackeos nuevos,
o sea, es como que la gente nunca va a
terminar de entre que no es 100% líquido
y o sea, van a ir siempre a los dólares
abajo del colchón, digamos.
Sí, totalmente, totalmente. O sea, si
ustedes me preguntan, "¿La blockchain es
para todos?" Yo ya le diría, "No, ¿sí?
¿O no es para todos?" Tenés un montón de
de cosas complicadas. Si fíjense ahora
todas las todo esto, digamos lo
complicado que es, ¿no? Las líneas para
todos lados, eh las diferentes formas de
hacerlo, el las probabilidades de falla
de cada uno, ¿no?
Después lo otro es que no sabes cómo
está funcionando acá dentro, cómo está
funcionando esto de acá, cómo funciona
esto de acá, ¿sí? ¿Qué medidas de
seguridad están tomando realmente? Hay
hay muchos que obviamente ponen sus
auditorías y y bueno, capaz que está muy
bien auditados y vos decís, "Okay,
bueno, confío un poco más en esto." Pero
tampoco puedo decir, "Bueno, 100% seguro
que no lo vayan a hackear, ¿se
entiende?"
Aparte lo peor de todo que en las
noticias salió que era el hackeo fue Ave
y Ave no tuvo nada que ver. Pobre los
desarrolladores también cayeron entonces
en la volteada.
Es que sí, es que ese es el punto.
Fíjense que el hackeo fue a AVE y AVE
funcionó como debía funcionar. Si Ave
vos tenías tu el digamos la liquidez que
vos ponías en RSTH contra WTH. Si vos
ponías RSDTh podías sacar WTH. Ese es el
punto. Pero, ¿qué fue lo que hackearon?
Bueno, a la persona que emitía los RSTH,
hackearon esto de acá, lo pusieron en
AVI y sacaron los WTH. Si es un poco lo
que le estaba diciendo acá, si hackean a
circle, hackean a todo lo que está por
debajo.
Sí, porque lo pueden meter un protocolo,
pueden sacar por el otro, ¿se entiende?
Y ustedes me dicen, "Bueno, Circle es
totalmente centralizado. Hackearon el
Circle, Circle te apaga la máquina para
esa persona, te lo plaquistea. Pero,
¿qué pasa si no llega a apagárselo?" Y
yo digo, "Okay, eso es USC que saqué de
circle, lo meto en Ave, ¿sí? Saco WTH y
lo cambio Ethereum. Después, ¿quién a
Eter
quién me banea la red? ¿Si en un
protocolo descentralizado?
¿Me lo van a poder? Me van a poder decir
acá en USDC, bueno, listo, esos USDC que
yo te congelé, no lo vas a poder mover,
pero y los setups
que yo saqué de ame
ya está. Una vez que se convirtió, ya
está, fuiste.
Claro. No, no, no se porque no hay
justamente centralización. No, no tenés
un policía que pueda correr al otro acá
que decir, "Che, pará, vos no podés."
O sea, que aún sabiendo vos que te
hackearon, no lo podés evitar.
Exacto. O sea, acá tenés que actuar muy
rápido. Por eso tenes que tener alarmas
por todos lados, eh, en un protocolo
centralizado, tener un montón de circuit
breaker, decir, "Okay, cuando pase algo
tengo que tener la posibilidad de poder
parar esto." Sí.
Y pero para cuando fue lo de hackeo este
de A, ¿no no saltó alguna alarma de
mira, hay alguien que está haciendo
tantas transacciones e o se juntaron
tantas peticiones, no sé, algo así, ¿no?
Hubo algo. Claro que saltó y por eso
pararon algunas cosas, de hecho les
congelaron algunos en Arbitrum, por
ejemplo, eh, pero otros se van, ¿no?
Otros lo meten en tornado Cash, donde yo
les comenté que hace todo un tornado
ahí, te lo da en otra billetera que no
puedes rastrear, te lo sacan después por
Monero, que Monero es super privado,
¿eh? No, no es tan fácil, ¿no?
O sea, por más que tengas todos los
controles habidos y por haber, por algún
lugar se te escapa,
¿eh? Sí. Y no, o sea, yo te diría
siempre tenés que tener todos los
controles por haber, ¿no?
Ahora
siempre está que te pueden ganar a vos,
¿no? En tu pensamiento cuáles eran los
controles aidos y por haber.
Bueno, pero claro, lo que pasa es que
vos tenés que aceptar que ya por esta
red de Ethereum,
porque todo esto no le pasarí no te
pasaría en en digamos es mucho menor en
la red de Bitcoin, pero no tiene la
flexibilidad para poder hacer todas
estas cosas. Entonces, el solo hecho de
habilitar todo estos es más contra los
swap y todo eso y claro, también tenés
que perder en algo, ¿no? No es perfecto.
Y sím
si querés flexibilidad para hacer cosas,
vas a tener que tener correr este
riesgo, vas a tener que tener seguro
como porque lo que lo que no puede hacer
es no hacer nada con todo esto,
¿no? Claro. Punto principal a todo esto
y que quiero que les deje que les quede
también claro un poco es que si ustedes
van a invertir en esto, que de hecho se
lo recomiendo, yo obviamente invierto en
todo este tipo de cosas, eh igualmente
háganlo con cuidado, sepan dónde están
metiendo el dinero, sepan cuáles son las
los posibles errores que pueden llegar a
ver y nunca vayan con el 100%, no tengan
algo bajo del colchón, algo en el banco.
No vamos a hacer 100% eh blockchain.
Sí, es un tradeof clásico, tipo más
apertura, más flexibilidad, bueno, menos
seguridad. Sí, totalment
igualmente un banco también eh no sé,
capaz me lo puede negar el que trabaja
acá en el banco, pero no sé, yo tengo
conocidos que hacen toda la parte de
auditoría, seguridad de los bancos y me
cuenta cada cosa también que
que vos decís no son tan seguros, ¿no? Y
el banco en hackeos pierde un montón de
plata, pero existe el reeguro, los
seguros, todo, eh,
claro,
o sea, eso se ve. Nunca vas a ver que
diga, bueno, se tal banco cerró por un
hackeo. Nunca va a pasar.
Están los más seguros.
Claro, pero por es por pero un tema de
publicidad ni lo publican, ni te dicen
que lo hackearon, se lo guardan.
Y esto lo que pasa es que como es tan
abierto y descentralizado, todo el mundo
se entera. Por eso digo, tiene que hacer
lo mismo, tener seguros. Acá la clave
está el seguro.
Es que hay mucho que tienen. Yo, por
ejemplo, le dije, "Ave tiene seguros,
por ejemplo, y además tiene una caja
enorme que decir, bueno, si me jaquean
tengo de dónde sacar el dinero, incluso
asegurado por mí mismo, ¿no?
O sea, existen los seguros,
pero más allá de eso, acá los hackeos
como son visibles, no podés como el
banco decir, bueno, me hackearon, no voy
a decir nada, lo cubro y ya está. Tiana
la vista. No
se entiende.
Sí.
Acá no puedes cubrir los hackeos, o sea,
están y están. Lo puedes ver. Todo el
mundo lo puede ver. ¿Cómo se hace?
Pasamos el formulario de asistencia y
hacemos los cinco.
Sí, eso
que el baño.
Sí, sí.
Vamos a pasar el formul de asistencia
que como siempre sepan que está en el
pad.
Y cortamos 5 minutitos. Volvemos y 22.
