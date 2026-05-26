# 07/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 11 - Parte 2

- **Video:** [https://www.youtube.com/watch?v=orRKMIm_gkQ](https://www.youtube.com/watch?v=orRKMIm_gkQ)
- **ID:** `orRKMIm_gkQ`
- **Canal:** ETH KIPU
- **Fecha:** 2026-05-04
- **Duración:** 46:30

---

## Transcripción

Bien, antes de ir un poquito con esto
del bridge, como venimos hablando de la
parte de seguridad y eso, les quería
mostrar esto, por ejemplo, sí, que es
una cosa que justamente presenté hoy en
el trabajo.
Esto es más básicamente la estructura
que presenté para la arquitectura de un
de un de un smart contract. Si, un smart
contract que tiene todas estas
funciones, ¿si? y digo, "Okay, todas
estas funciones que son básicamente de
configuración, de de inicial eh de
de inicialización, de ejecución, que son
bastante eh problemáticas en el caso de
que lo puede ejecutar algún actor eh mal
intencionado, ¿sí? Porque podría, por
ejemplo, cambiar el un protocolo, o sea,
nosotros tenemos un un bolt, por
ejemplo, el cual se se conecta con AVE o
con Morfo o con cualquier otro que le da
un y sí, para poder ganar intereses. Y
¿qué es lo que sucede? Si alguien llega
a cambiar ese volt, podría poner un volt
eh malicioso que, por ejemplo, extraiga
el dinero a la gente y se lo quede
alguna billetera maliciosa. Sí.
Entonces, todas esas cosas que son
ejecuciones
muy problemáticas, hay un admin que lo
tiene que hacer. Y acá, por ejemplo,
dice 2 /re 4. Si en realidad no es que
sea un 2 / 4, pero es para ejemplificar
un poco eh cómo es que sería. Pero 2 / 4
se refiere a que si yo tengo cuatro
billeteras, por ejemplo, por lo menos
dos billeteras tienen que estar de
acuerdo para hacer ese cambio. Y segundo
que este cambio tarda 15 días en hacerse
yo lo propongo. Primero tiene que pasar
por el propose y después tiene 15 días
que que está propuesto para hacer la
ejecución. ¿Y qué es lo que pasa? En
esos 15 días cualquiera de estos
guardianes
sí puedo agarrar y cancelarlo. Sí.
Entonces, si alguien propone algo dañino
y bueno, acá tenemos un montón de
guardianes que necesitan únicamente una
sola firma y no varias, como esto de acá
para cancelarlo o incluso si llega a
haber algún algún error, alguna cosa que
llega a suceder en los protocolos que
estamos conectados como AV, Morfo,
etcétera, y estos guardianes, ¿sí?, que
también necesitan una sola firma para
pausar todos los depósitos y que nadie
más pueda depositar, ¿no? Que no puedan
extraer porque si no estaríamos creando
un honey pot, ¿no? Es decir, la gente
pone después no puede sacar. si todos
los que pusieron van a poder sacar, pero
que no puedan seguir poniendo más para
poder limitar un poco el riesgo. Sí. Y
segundo, que este admin nunca tiene la
posibilidad, por ejemplo, de dar o
quitar el rol a estos guardianes. ¿Sí?
¿Por qué? Porque estos guardianes
básicamente están yendo en contra de los
de los admin, ¿no? El admin te propone,
estos guardianes te dicen, "No, no lo
quiero." Y te lo cancela. Y te lo
cancela muy fácilmente. Eh, esto de acá
conlleva mucho más trabajo para eh
proponerlo y para hacerlo. Sí. Y después
tienes un super admin que fíjense que
acá le puse por ejemplo 10 billeteras y
que tienen que estar por lo menos seis
billeteras de acuerdo y estas billeteras
tienen que ser dos billeteras que no
estén conectadas a la red. Por eso dice
acá cold. Estos son W porque justamente
como está haciendo ejecuciones y cosas
tiene que estar conectada a la red, ¿sí?
Para poder hacer para poder ir haciendo
todas estas cosas y capaz que puede ser
comprometida en algún momento. Pero,
¿qué es lo que pasa si esta billetera es
comprometida? Sí, acuérdense que yo le
dije, bueno, entre propuesta y ejecución
tienen que pasar 15 días. Puede venir
este super admin agarrar y decirle,
"Okay, vos fuiste comprometido, estás
afuera. Creo otra billetera admin, ¿sí?
Con este dos entre cu, sí, que no esté
comprometido, que que pueda trabajar y
cualquier guardián puede frenar lo que
hizo este mal. Y si un guardián se ve
comprometido, lo mismo, este super admin
agarra y lo puede sacar y poner otro. El
que nunca tiene que quedar comprometido,
obviamente es este super admin, por eso
que tiene que ser, por ejemplo, una
bicela mucho más grande y por eso le
puse acá una relación, por ejemplo, seis
contra 10, mientras que acá fue un dos
contra cuatro, ¿no? Y acá un uno contra
uno. Y después el tema de las paradas
asimétricas también acá, como decía, un
guardián puede agarrar y apagarte la el
fuego, ¿sí? O sea, hay fuego, cualquiera
tiene que agarrar y poder apagártelo,
¿no? Entonces lo pausa los depósitos.
Ahora, no cualquiera tiene que agarrar y
poder eh despausarlo. Sí.
¿Quién le dice que lo despausa? Bueno,
este admin que tiene una mayor cantidad
de billeteras que estar de acuerdo para
poder hacerlo. ¿Se entiende más o menos
el proceso este?
Eh, perdona, pero eso que estás
presentando vos es de un proyecto de un
bridge,
¿no? Este es un proyecto eh común. Si es
un proyecto, básicamente es un Volt como
si fuera AV. Sí.
Ah, está bien.
El tema es acá el sistema de permisos.
Sí, porque estos permisos, digamos, son
eh estas billeteras son los que están
como el agente externo, que es
justamente lo que van a intentar atacar.
¿Por qué? Porque el contrato puede estar
muy bien auditado. Si yo el contrato lo
llevo, se lo llevo a Consenses, a un
montón de auditores, me lo auditan y
queda un contrato sers seguro. Pero,
¿qué es lo que pasa? El hacker, ¿dónde
va a ir? No va a ir a atacar el
contrato, obviamente si hay una
inseguridad,
no va a ir a los a cada uno de las
billeteras personales a hackárselas.
Exacto. Van a ir, van a intentar con
fishing, van a intentar para intentar
agarrar las cosas. Entonces,
por eso está muy bien eso de bichetera
fría, que esté fuera de la de todo tipo
de de la red.
Exacto. Y esta bicera frías son las que
tiene el control para decir, bueno,
¿quiénes son admin y quiénes son
guardianes? Y después cada cambio tarda
15 días en poder hacerse y los
guardianes pueden e bajar las cosas de
en un segundo, ¿si? Pero únicamente
bajan, no tienen la potestad de
ejecutar, por lo tanto queda seguro. Sí,
la única inseguridad es que bueno y
llegues a perder este super admin. Por
eso este super admin es lo que tiene que
ser s seguro, ¿no?
Claro, pero vos como tenés 15 días, esto
no lo podéis usar para swap, lo tenés
que usar para eso, para préstamos, para
No, no, no. Lo que pasa es que esto es
para un cambio de protocolo. Sí. Si por
ejemplo, yo quiero pasar de todo lo que
está de Ave a Morfo, ¿sí?
Yo como admin tengo que decir, "Okay,
voy a pasar todo de ave amorfo y tengo
15 días después para que lo guarden me
diga, no, no lo hacemos." Sí, es
antincoreano, dice María Guerrero. Es un
poco lo que se intenta, ¿no? Decir,
bueno, si los norcoreanos nos hackean la
parte del admin, nos haan los guardianes
y siempre tenemos 15 días después para
que el super admin recupere el control,
¿no? Ya si los norcoreanos nosquean el
super admin y estamos en peligro, ¿no? Y
en peligro, ¿qué significa esto en
peligro? Bueno, vamos a tener 15 días
para retirarnos antes de que los
norcoreanos empiecen a robarse el
dinero. ¿Se entienden?
Es como un sistema de seguridad, si que
se piensa en los contratos para poder
salir. Y eso es por eso que lo quería
mostrar un poco, porque justamente yo no
sé lo que pueden proponer, ¿sí?
Pero sé que si cualquier cosa que
lleguen a proponer y bueno, tenemos 15
días para armarnos, ¿no? Y decir, "Okay,
dentro de 15 días esto puede ser un
desastre, avisémosle a la gente que
saquen el dinero, ¿no?
Y
ya
bien. Entonces, ya más o menos conocemos
que es un bridge, cuáles son los tipos
diferentes que existen. Si e
esto, esto de acá
que pudo hacer diferentes cadenas acá a
veces también eh a veces no son tan
directos. Es decir, capaz que yo acá lo
que hago es este un USDC lo convierto a
no sé a ETS.
Sí,
a través de uniswap, por ejemplo, esto
lo convierto a Eters. Yo mando Eters a
través del puente, ¿sí? Meto un puente
en el cual mando Eters y no mando USDC,
sino y después una vez que llega del
otro lado, puedo decir, "Ah, okay." Y
acá otra vez esos Eters que me llegaron
los mando a otro swap.
y lo convierto de vuelta a USDC, si en
este caso, por ejemplo, USDC punto E,
no,
sí, fíjense que yo capaz que podía hacer
entonces un DC lo mando para acá, esto
lo convierto a Ether, de Ether, lo mando
para acá y los vuelvo a cambiar CDC, si
puedo hacer un montón de estos caminos.
Sí.
Esto, esto es lo que se conoce como
agregadores, básicamente.
Si
no mal, si mal no recuerdo, eh, capaz
que estoy confundido.
Tenemos, por ejemplo, le punance.
Sí,
como uno de estos agregadores que
justamente hace este tipo de cosas.
Entonces, vos le decís de qué es lo que
tenés a la entrada, en qué red y qué
moneda, qué es lo que tenés a la salida
o qué lo que queres a la salida, en qué
red y qué moneda y ellos te buscan cuál
es el camino óptimo para llegar a ese
punto. Sí,
también son otro tipos de de puentes así
multibrid,
¿no?
Después ustedes me preguntaba, uno me
preguntaba, "Y bueno, pero ¿qué es lo
que gana C TP haciendo esto o cualquier
bridge haciendo esto?" No, es decir, si
yo le pongo un USC acá y le pongo un USC
acá y no estoy ganando absolutamente
nada.
Como leímos, CSTP, básicamente vos
mandas un USDC y ellos te crean un USDC,
por lo tanto ahí no están ganando nada.
En esto que es e
en esto, por ejemplo, Rin. Finance, vos
le mandás un uso de acá y acá te llega
0.99 y pico. Si por tanto están cobrando
ahí una comisión, ¿sí? que es
básicamente como haría el banco, ¿no?
Decir, yo te mando dinero de acá a de
Argentina a Estados Unidos, ¿sí? No es
que te lo mando, sino que se manda el
dinero del banco, como ahí explicaba uno
de los chicos que trabaja en eso. Y en
Estados Unidos te liberó el otro dinero,
pero obviamente te cobra una comisión
por eso, ¿no? Bueno, acá pasa lo mismo,
te estás cobrando la comisión por
hacerte esto, ¿sí? Y obviamente va
ganando con esas comisiones. Acá no. Sí,
es totalmente gratis. La verdad no lo
sé. Sí, capaz que sí, capaz que no. La
verdad que no leí exactamente el código
para saber si realmente es gratis o no.
¿Por qué? Porque te pueden estar
cobrando, por ejemplo, cuando vos haces
el
con el gas. Si cuando vos pones el gas
decir, "Okay, bueno, te agarro la parte
de eso y en eters y
y me lo quedo en eters, ¿no?
¿O no? Sí, en este caso yo creo que CTP
no cobra nada. Sí, porque básicamente lo
que quieren es que vos tengas USDC, ¿sí?
Y justamente está dando esta
funcionalidad como bueno, para que
tengas, ¿sí? para que la puedas
utilizar, que que sea más utilizado y
que más gente lo tenga y y se haga más
masivo. Ya. Y con eso es lo que gana
con los dólares pues que tiene el banco
trabajando para con su SDC y los
movimientos y bueno, fuerte como
empresa, entonces con eso que gana. Pero
por ejemplo estos bridges sí tienen una
comisión, ¿sí? Y cómo te la pueden
cobrar. Y bueno, te la pueden cobrar
tanto en USDC
como en la moneda nativa.
Y, o sea, por ejemplo, Ethers,
yo te puedo decir, "Okay, para mover un
vas a necesitar eh, no sé, un centavo de
Eters. Sí. Y te lo cobran en eso. Sí.
Fíjense que acá de este lado van a tener
contratos que estén sacando de un lado
el dinero, guardándolo y esos contratos
pueden decir, "Okay, bueno, yo te saco
ese dinero, pero además mandame dinero
de verdad, ¿no? Eh, para que yo
funcione. Si no me mandas ese dinero y
no funciona. Entonces, lo puedes hacer.
Sí, lo puedes hacer y ahí puedes ganar
también, ¿no?
Eso con respecto a al tema de ganancias.
Una cosita más que nos está quedando,
que como es muy parecido a los bridge,
se los quiero decir ahora, es el tema de
eh
los tokens envueltos. ¿Sí? ¿Qué es esto
de token envuelto? Los wrap e, por
ejemplo, ¿no? Ese wet que nosotros
habíamos visto. ¿Qué es lo que sucede?
Esto puede ser en una misma cadena. Si
yo tengo, por ejemplo, Ethers, en la
cadena de Ethereum, yo tengo Ethers
y un smart contract que, por ejemplo,
puede recibir esos setters y crearme en
relación uno a uno otro token. ¿Sí? Es
decir,
yo acá tengo mi smart contract
a este smart contract. Yo le mando, por
ejemplo, un ether
smart contract me va a devolver a mí
un W et ETH.
Sí. ¿Qué significa rap e?
Ahora, si yo a este contrato le doy un
wrap eer, sí, me va a devolver un ether
de este otro lado. ¿Se entiende? Ahora,
¿para qué yo quisiera hacer esto? Bueno,
¿cuál es la diferencia entre esto?
Bueno, acuérdense que este Eaters
básicamente es la criptomoneda nativa de
la red.
Sí,
el web no es la criptomaneda nativa de
la red, sí, es un token, un token con lo
que nosotros vimos el RC20 y un token
ungible.
Ambos van a tener diferentes
capacidades. Sí, acuérdense que yo, por
ejemplo, en el token RC20 podía aprobar
a un tercero que me mueva dinero. ¿Sí?
Entonces, yo acá
en esta segunda parte
así acá.
Yo puedo hacer que un tercero mueva
dinero por mí. ¿Cómo? Bueno, haciendo
que apruebe el wet
hacia el contrato que lo quiere mover o
hacia la billetera que lo quiere mover,
¿no? Entonces, aprobar
que un tercero
me mueva dinero.
Sí, acá se me permite acá no. El ether
no existe una función que yo diga, yo le
quiero sacar dinero. Sí, tiene que
únicamente la persona enviar dinero. Sí,
acá me lo permite. Entonces, capaz que
yo quiero tener en algún lugar donde me
lo permita, ¿sí? Hacer, por ejemplo, si
yo quiero hacer un swap con Uniswap y
que Uniswap me saque el dinero para
darme otro token, como habíamos visto el
el par de liquidez, ¿no? Te saco de un
lado y te doy del otro. Para sacarte
tienen que darte permiso. ¿Y cómo
hacemos para el permiso? Y bueno,
convertimos esos eh esos sets en Wet,
por ejemplo, que es un token. Y esto sí
ya tiene permiso para sacarte. Y vos de
acá después eh
del otro lado vos puedes convertir estos
W a estos sets. ¿Cómo funciona esto? Y
bueno, adentro tiene un mecanismo como
el que vimos de lock y unlock.
Cada vez que alguien manda, esos quedan
loqueados en este contrato y te dan un
WTH. Cuando vos le mandas la WTH, eh,
desloquean ese eter y te lo dan y
obviamente este web te lo queman. Sí,
entiende.
¿Dónde más podemos tener este wet?
Bueno, acuérdense que es la manera
nativa de Ethereum. Si por tanto, si yo
estoy en Ethereum, voy a tener
qué pasa si yo quiero brincar, por
ejemplo, a Polygon y en Polyon no hay
eters. La monía nativa de polyon es el
polí el que antes era matic, ahora es.
Yo quiero brichar acá. Acá voy a teners,
pero yo no voy a teners. Acá lo que voy
a tener es un token que va a estar
representando este ether. Este va a
quedar bloqueado acá.
Sí. Y de este otro lado vamos a emitir
un token que está representando este
token que vamos a emitir, bueno, es
justamente también un waper.
Sí.
Por eso es que ustedes seguramente si se
metieron en el mundo defi, fueron por
ejemplo a a lo que es e
investigaron un poquitito sobre eso,
ustedes van a ver que tienen, por
ejemplo, eh, bueno, acá le voy a poner
por se confundan, que esto es polgon y
esto es Ethereum. Sí, ustedes van a ver,
por ejemplo, que tienen WBTC.
Sí. ¿Por qué? Esto no es BTC,
¿sí? Es un token que representa el BTC.
Del otro lado, lo vos lo que tenés es
justamente BTCs loqueados. Si vos
bloqueas BTC de un lado y creas los W
BTC en la otra chain, ¿no? Para poder
hacerlo. Después cuando vos querés
volver para el otro lado y bueno, que
más es W BTC y vuelves para el otro lado
con los BTC.
Pero esos los tenés en la red de
Ethereum, los W yo los conocía como rap,
como más caras BTC. ¿Los tenés de en la
red de Ethereum o están solamente Sí, lo
tení que tener porque si no no tenía el
swap? Está. Yo por lo menos en Ethereum
no no los no los he usado, pero sí los
he usado, por ejemplo, en Binance
Marmchain.
En Binance Marchain estoy seguro que el
WTC está porque yo tengo ahí.
Sí, pero y es el mismo concepto, es
decir, yo loqueo los BTC en
eh en Bitcoin, ¿sí? y los creo en
Binance SmartChain como si fueran un
token que se llama WBTC y puedo
utilizarlos ahí, ¿no? A través de este
puente estoy haciendo un puente entre
una red que ni siquiera es CBM, fíjense,
BTC no es BM y estoy punteándolo con una
red que es BM como Bance SmartChain y me
creo este W BTC para utilizarlo dentro
de la red BM, ¿sí? en las cuales tengo
más funcionalidades que como dijimos
Bitcoin, acuérdese que no es touring
complete, entonces no se puede hacer
todas las cosas de deffi. Eh, pero yo
ahí puedo agarrar, meter, por ejemplo,
WTC nave, pedir un préstamo, con eso
colateralizado, puedo agarrar y comprar
más y volver a meter y apalancarme y
crear así diferentes eh cosas, ¿no? O
poder comprar y vender a través de
Uniswap, eh etcétera, ¿no? cambiar esos
bitcoins por otras monedas,
hacer trading, etcétera. ¿Se entiende?
Sepan eso. Entonces, el wrap, la moneda
no es la moneda en sí, sino es un token
que representa la moneda que de alguna
forma esa moneda está loqueada en algún
lado, en algún contrato, en alguna cosa,
¿sí? en un vol.
Y bien, habiendo visto eso, vayamos un
poquito a a las guías, ¿sí? Para
terminar de cerrar un poco esto,
vamos a pasarlos un poquito rápido.
Fijemos acá en la parte de bridge. Sí.
Eh, bueno, la parte de repaso no
importa, eso es lo que vimos la clase
pasada. dice el desafío del ecosistema
multichain. Sí, justamente para
encontrar la interoperabilidad,
justamente yo tengo que poder conectar
esta estas cadenas, ¿no? Porque si no no
hay interoperabilidad entre las cadenas.
Y para eso tenemos los brids, ¿no? Los
puentes. Acá podemos ver, por ejemplo,
el mecanismo lock and me, ¿no? O sea, yo
loqueo de un lado y creo del otro, o
sea, bloqueo y emito. Sí, acá dice
block. Luego dice, el usuario deposita
el el activo en un smart contract de la
red de origen. Si se queda ahí en ese
smart contract para que no salga y del
otro lado, obviamente se eh se crea,
¿no? Pero previamente antes de crearse
tiene que haber una validación. Si dice
un conjunto de validadores o una prueba
criptográfica confirma que los fondos
han sido depositados, no que hayan sido
bloqueados acá. Esto es lo que le decía,
ustedes tienen por afuera, ¿sí? esta
parte de acá, un backend, ¿no?, que va a
estar conectando las dos cosas y de
alguna forma va a estar creando algún
algoritmo o algo que pueda
validarme criptográficamente que
realmente fue loqueado de un lado para
emitirlo del otro. Es un poco lo que
decíamos, lo puedes hacer
criptográficamente para tener una mayor
validez, ¿no? Y que tengas que romper la
criptografía para poder atacar, que
igualmente siempre se puede porque vos
no vas a romper la criptografía, sino
que vas a a romper la persona que está
creando esa criptografía, ¿no? Y siempre
las personas es el punto más vulnerable
y los que hackean los norcoreanos.
Eh, y después el proceso inverso, ¿no?
Si vos tenés eh lo tenés mintiado del
otro lado, sí, lo quemás y lo
desbloqueas del anterior.
Eh, acá dice, existen distintos modelos
arquitectónicos, ¿sí? Como trusted
bridges, ¿no? Dice custodiados, dice un
conjunto de validadores o una entidad
controla el proceso de verificación.
tienen light client preaches y el
contrato de una red eh destino verifica
criptográficamente el estado de la red
origen mediante pruebas. Fíjense que una
tiene como varios validadores, otra es
básicamente basado en la criptografía,
no necesita tantos validadores, uno más
descentralizado que el otro, pero el
otro es más criptográficamente
eh confiable, aunque puedes intentar
hacer un poco las dos, ¿no? Después ten
la parte de liquidity network brides,
dice, no se bloquean toques en la red de
origen. En cambio, los proveedores de
liquidez mantienen puls en distintas
redes. Si, eso es un poco lo que
explicamos, por ejemplo, con con Rino,
¿no? tienen liquidez en las dos redes,
te vos le das en una y te la dan en la
otra.
Después tienen cross chain messaging
protocols. Sí, dice acá, dice, "En lugar
de mover tokens permiten enviar mensajes
entre cadenas, ¿no? Ustedes pueden, acá
no lo dijimos, sí, estamos hablando
siempre de mover tokens de un lado para
el otro, pero capaz que no quieren mover
un token, sino que quieren comunicar las
cadenas. Por ejemplo, de esta cadena
ustedes quisieran mandar a ejecutar una
función de esta otra. Sí, si ustedes
quieren hacer eso y bueno, tienen que
mandar acá un mensaje que le diga, "Che,
ejecuta este esta función, ¿no?" Y
después esa función capaz que dice,
"Okay, ejecutate de vuelta para allá y
comprueban, por ejemplo, que se hizo
este circuito, ¿no? Eh, ese tipo de
cosas también se hacen. Por ejemplo, una
cadena que hace esto es Z chain. Ustedes
pueden buscarlo, se los dejo acá, si no
en
no le puse la fecha de hoy. Bueno,
después lo ponemos. Z chain.
Sí, yo trabajé para ellos.
Sí, que básicamente hacíamos
comunicaciones crosschange, sí, entre
cadenas.
Después tienen la parte de tokens
envueltos y wrap tokens. Un poco lo que
vimos recién, ¿no? Dice el WTH en la red
de Polingon es una promesa de que hay
ethers real bloqueados en el contrato
Bach de la red principal de Ethereum.
Sí, decir yo tengo doble eh en polygon,
quiere decir que hay éters bloqueados en
Ethereum. Para eso, si yo puedo
generarlo, acuerden que yo puedo
robarlo, ¿no? Dice riesgo asociado. Si
el bridge es vulnerado y el éter
original es robado, el token envuelto
pierde su respaldo y por ende
normalmente colapsa su valor de mercado.
Sí, es un poco lo que hablábamos. Decir,
si yo eh tengo ese USDC.Es e que no es
el de circle y yo lo emito, puedo
agarrar y desbloquear los que hay en el
lado de circle, que eso sí van a tener
valor, y los otros que eh quedaron con
loss.e ahí no van a tener ningún valor,
¿no? El riesgo crístico en
interoperabilidad dice, bueno, tenemos
la centralización de los baliadores.
Como decían, los baliadores van a ser el
punto de ataque, ¿no? Ahí es donde está
centralizado. Es lo más fácil de de
hackear, o no más fácil, pero más eh más
hackeable, digamos.
Complejidad del código dice, "La
interacción entre dos lenguajes de
programación, arquitecturas distintas
aumenta la probadidad de errores
lógicos." No, acuérdense que acá no
sabemos en qué el lenguaje está hecho,
sino que tenemos la comunicación. No
tenemos que crear bien el protocolo. Si
el protocolo está mal creado y no encaja
perfectamente y siempre puede tener
alguna vulnerabilidad o es el punto de
comunicación donde yo puedo agarrar y
mandarle un mensaje erróneo para que el
otro piense que es un mensaje verdadero,
¿no? Entonces ahí tengo también un punto
en donde atacar.
váyase en la lógica de verificación. Sí,
si el Bridge cree que le depositaron
fondos puede e
puede emitirlos del otro lado, ¿no? Que
fue esto fue lo que pasó con RSTH, ¿no?
Que que ya lo explicamos bastante.
Después dice, bueno, a diferencia de
protocolo DIFI aislado, el bridge debe
validar el estado de las redes
distintas. dice, "Los introduce
complejidad adicional en verificación de
mensajes, sincronización de estados,
seguridad de validadores." Esto es un
poco lo que les explicaba de que ustedes
tienen un backend que van a tener que
estar haciendo un montón de operaciones
para asegurar que un lado realmente se
hizo para poder después hacerlo el otro,
¿no? Y bueno, todo eso es complicado, no
es no es sencillo y es un punto crucial
en cuanto a la seguridad.
Acá dice eh históricamente más del 40%
de los fondos robados en Deffi fueron
robados de bridges. Sí. Por lo tanto,
ustedes tienen que saber que esto es un
punto bastante
caliente, ¿no? A la hora de de realizar
un un protocolo.
Casos históricos. Sí, acá tenemos
algunos casos. Por ejemplo, Ronin
Bridge. Sí, Ronin era un sistema creado,
era una side chain. Sí, nosotros acá
mostramos lo que era una side chain. Sí.
dijimos que estos son side chains.
Nosotros tenemos Ethereum, acá teníamos
running, ¿sí? Que era una blockchain que
funcionaba eh así como como Ethereum y
que básicamente para qué servía. Bueno,
esto se había hecho cuando estamos con
el Ax Infinity, ¿sí? que tenías que
comprar los NFT para poder jugar a ese
juego de Ax Infinity, que era un juego
con cartas básicamente para pelear
contra otras personas y ganabas un play
to earn, ganabas dinero por hacer eso. Y
básicamente para comprar esos esos esos
NFT vos tenías que eh comprarlos en un
mercado y en ese momento cuando salió
cada transacción de Ethereum era muy
cara. Capaz que podías hacer una
transacción que te salía $10 y el gas te
cobraban $400, ¿no? Era muy caro.
Entonces, ¿qué fue lo que hicieron?
Bueno, hicieron una side chain llamada
running en la cual vos podías mandar una
sola vez, ¿sí?, a través de un bridge,
¿sí? No sé, la cantidad de terz que vos
quisieras. Y acá en running vos después
te podías manejar
muy barato, ¿sí? Prácticamente gratis.
De hecho, los 100 primeros transacciones
por día creo que eran gratis y después,
bueno, te empezaban a cobrar. ¿Qué es lo
que pasaba? Bueno, Ethereum, como
ustedes saben, tiene un montón de
variadores. Running tenía solo nueve
variadores, ¿sí? De los cuales cuatro
estaban en un mismo en un mismo
servidor. Sí. Y encima en ese mismo
servidor que tenían los cuatro tenían el
acceso a un quinto servidor donde había
otro baliador. ¿Qué fue lo que pasó?
Bueno, cuando hackearon ese servidor
tomaron cinco de los nueve nodos y
ustedes saben que si yo tengo el más del
50% de los nodos, puedo modificar la
red. ¿Qué hicieron? Modificaron la red
para decirme, bueno, me voy a asignar,
autoasignar a mí mismo,
no sé, 1000 W ETHs acá en running. ¿Y
qué pasa? Una vez que yo tengo esos 1000
WTH acá en running, puedo agarrar y
utilizar este bridge para sacar el
dinero de los que estaban bloqueados
acá. Y una vez que ya saqué los reset
que están bloqueados acá, listo. Sí, no
hay cómo recuperarlos. ¿Sí? ¿Por qué?
porque ya están en Ethereum, no están
acá en Roning. Entonces, la gente seguía
eh jugando acá, seguía utilizando los
setters en running porque, bueno, acá
tenían su valor, sí podían comprar
muñequitos, todo lo que sea porque
existían esos WTH, pero si vos quisiera
querías volver a Ethereum, no tenías el
respaldo para volver. ¿Por qué? porque
se los habían robado. Sí. Entonces, fue
un robo bastante silencioso. Sí, eso fue
lo que pasó acá con Ronnie. Y como dice
acá, bueno, se robaron 600 millones de
dólares.
Después tenemos otros como eh Warnho,
sí, dice acá aproximado 320 millones.
Dice, "La causa del error es la
verificación de firmas que permitió
emitir tokens y respaldos. Eh, un poco
parecido lo que pasó con Kentado.
Después, Nomad Bridge, sí, dice,
"Erilización del contrato que permitió
copiar transacciones fraudulentas."
Si este ataque se volvió viral porque
cualquier usuario podía replicarlo. Sí,
si vos tenés el
si vos podés replicar, digamos, y hacer
un replay attack y agarrar y publicarlo
muchas veces y seguir sacando y no tiene
un, por ejemplo, para que tengas que
volver a firmar y bueno, vos puedes
seguir replicando y sacando dinero,
sacando dinero, ¿no? Y cualquiera podía
hacerlo.
Eh, bueno, pues acá hay una actividad,
fíjense acá en R News. Sí, yo esto creo
que se los había pasado en algún
momento.
Acá tienen van teniendo una historia de
los hackeos. Está bueno que lo tengan y
que cada tanto lo miren o se suscriban y
vayan leyendo. Sí.
¿De cuánto fue el de los norcoreanos?
Porque vos ves que van bajando los
valores en la historia de los hackeos.
Pero, ¿de cuánto fue los norcoreanos?
Eh, todos son norcarianos. los
los de Ave,
los últimos de Ave creo que fueron
habían sido 116,000,
eh,
pero igualmente algunos los recuperaron,
otros todavía están en intentar de
intentar de recuperarlos.
Eh, hay mucha gente que puso como si
fuera una donación, no es una donación,
sino que básicamente pusieron el dinero
para que todo todas las personas,
digamos, no sufran esa pérdida y
obviamente después van a recuperar ese
dinero a través de la liquidación de
de lo de lo del hacker, ¿no? Si se logra
retribuir el dinero y seguramente van a
tener ganancias, si no logran y
seguramente esa gente que puso va a
tener pérdidas, ¿no? Entonces, acepta
una ganancia por un riesgo mucho mayor.
Pero sí, eh, puede antes. Creo que había
sido,
no sé, 250 millones, pero no sé cuánto
se logró recuperar y el punto fue no que
únicamente esos 150 millones, sino que
cuando hubo ese hackeo, 6,000 millones
de dólares salieron de AVE y eso causó
un montón de inestabilidad, ¿no? Porque
como AVE tiene prestado mucho dinero, si
vos sacás el dinero que está ahí que no
está prestado y que hicieron una corrida
sin querer generar una corrida.
Exacto. Generas una corrida.
Claro, pero la idea es que si vas viendo
con el tiempo los los hackeos tienen que
lograr menor cantidad de monto.
Sí, no sé porque
y si no estamos diciendo de que con el
tiempo si son mentales que no los no se
pueden controlar.
Sí,
cada vez tiene que apantar la curva a
mayor seguridad y a que sea más difícil
hackear valores.
Yaron Marcel hace unos días,
robaron un montón de variables de
entorno.
Anda sa ver quién tenía las variables de
entorno ahí.
Eh, bueno, después algunas culminades
comunes, ¿sí? El tema de reentrancias y
esto fue como robaron, por ejemplo, de
Dao en el 2016. Sí, básicamente es una
llamada que vos volvés a llamar a a la
misma función para sacar dinero. O sea,
vos, por ejemplo, ponés dinero y después
podés sacar ese dinero. Y si vos llamás
a una función para cuando te mandan
dinero para que vuelvas a llamar esa
función, si esa función todavía no hizo
un update del dinero que vos sacaste y
vuelve a entrar y vuelve a entrar y
vuelve a entrar y vos seguís sacando
dinero y seguís sacando dinero
indefinidamente. Sí, seguramente después
en el curso de programación se verá
mucho mejor, pero bueno, acá ténganlo
una leída, sepan cómo funciona más o
menos el tema de la manipulación de
oráculos, que también hablamos un poco
de esto, ¿no? de que el oráculo es es
otro de los puntos de ataque y que de
hecho también lo puedes manipular con eh
las flashlans que hablamos la otra vez,
el tema de los préstamos instantáneos,
los flashlans, sí, que también hablamos,
dice, "Buenas prácticas de seguridad de
desarrolladores, ¿sí? Check effect
interactions." Esto básicamente por el
tema de reentrancia. Yo les dije, si
ustedes no hacen el update primero, eh,
pueden volver a llamar a su función y
volver a llamar muchas veces si ustedes
hacen el update primero y después
entregan el dinero y bueno, ahí cuando
la vuelven a llamar ya el valor está eh
updateado, ¿no? Entonces, no pueden
volver a sacar. Es para eso sirve este
check interaction. Después uso de
billetera de librerías auditadas.
Siempre que ustedes puedan utilicen
librerías auditadas, por ejemplo, la
Open Capelin, valizaciones estrictas de
entrada. Sí, acá todas las entradas
ustedes tienen que validar que realmente
sean los valores que ustedes pretenden
que sean y no cualquier cosa.
Uso de pausas de emergencia, circuit
breakers, lo que decía, por ejemplo,
poner pausa a los depósitos. Si algo
pasó, lo pauso. Sí, no generar un
hanyot, pero sí evitar que eh siga
haciéndose peor.
Auditorías, ¿sí? Llevar esto a que te
auditen el código, que te auditen los
procesos, ¿sí? Back bounties, ¿sí?
Ofrecer recompensas para que otras
personas encuentren los errores.
Después, protocolo de seguridad para
usuario de higiene digital, ¿sí? El tema
de auditorías, gestión de permisos, ¿sí?
Eh,
después de hardware wallet, si utilizen
hardware wallet, acuérdense billeteras
frías, no calientes conectados a
internet, verificación de URL y para
evitar los fishings,
eh, y bueno, tendencia
interoperabilidad, dice, bueno, capa de
seguridad, capa de ejecución, rollaps,
esto es un poco lo que habíamos visto en
cuanto a los diferentes layers. Eh, en
este contexto nuevo, estándares están
emergiendo. Bueno, se emerg estándares
como 77 83 para la crosschain, si no
está muy implementado todavía igual.
Después tenemos el Chainlink CIP. Sí,
esto es básicamente un una versión del
CSTP de Circle, pero hecho por Chainlink
y Chainlink, por ejemplo, tea un montón
de confirmación de un lado antes de
darte del otro, eh, para poder estar
seguro. Acá tardan 20 minutos mientras
que el CSTP tarda un par de segundos.
Eso también se los digo. Después tiene
protocolo de interoptividad tipo Rollaps
to Rollaps y bueno, otras cosas, ¿no? Y
bueno, resumen. Y déjenme pasarles
rapidito la la otra guía, ¿sí? Para que
ya lo tengan.
Cristian, y una consulta de con el tema
de los norcoreanos, ¿en algún momento no
se pensó hacer como tipo dao de volver
atrás algo así o ya no hay manera?
Eh,
sí, pero no tiene mucho sentido. O sea,
no
pensar que se están robando, no sé, 200
millones de dólares y esto tiene miles y
miles de millones. Si vos volvés para
atrás por cada cosa que vos hacés y ya
no dejaría de ser confiable el sistema,
¿no? Entonces es mejor eh buscar cómo
solucionarlo que volver para atrás.
y por todos estos temas de seguridad,
porque creo que lo que apunta eh ahí
Bernardi es el tema de vas a tener que
hacer un fork. Suponete que para evitar
todos estos hackeos
en dentro de la red de Ethereum se se
habilita un protocolo con más con mayor
seguridad. Eso inevitablemente llevaría
un fork.
Si vos vas a hacer algo a nivel core y
si llevaría un fork y después algunos lo
tomarían, otros no y se dividiría como
pasó con con Ethereum y Ethereum Clásic
y ya ese es un gran problema.
Y sí, porque si por
porque esto es un árbol que ya creció
demasiado este árbol.
Claro. Y si vos vas agarrando y por
cadao vas haciendo un fork y tenés fork
infinitos, ya no porque todos los días
hay hackeos.
Entonces si hay un hackeo muy masivo y
bueno, capaz que lo hacen, pero por
ahora 250 millones, 300 millones y no es
tan masivo comparon fork
que se encarguen los seguros por esos
valores.
Claro,
tienen que ganar los seguros también.
Claro,
si no no usarían seguro.
Bueno, siendo un poquito, bueno, acá
tenemos la diferencia entre sex y dex,
¿no? Que también ya como dije lo vimos
bastante.
Eh, acá vean un poco las
características, ¿no? El tema de la
custodia, ¿sí? ¿Quién tiene la custodia
en cada uno, el tema del mecanismo, sí?
Que uno usa libre de orden y otro AMM.
el tema de la privacidad, ¿no? Uno con
KYC, el otro no necesitas KYC, que ya
dijimos que KYC, después tienes el
acceso, ¿no? Uno es eh está sujeto a
restricciones, el otro es global. Es el
motor de DeFi, ¿sí? Que es el AMM. Ya
explicamos cómo funciona esta curvita,
¿sí? Para comprar y vender y que vas
variando la cantidad de tokens que tenés
de un cierto pool.
Acá tenés un ejemplo. Sí. Después,
bueno, acá te dice la actividad y
básicamente la actividad te dice, bueno,
tenés 100 ets y 500 curso coins, ¿no?
Una moneda inventada. Y te dice, si si
un usuario compra 10s, ¿cuánto curso
Coins tiene que pagar? ¿No? Entonces acá
vos podrías eh decir, hacer la formulita
que habíamos hecho la clase pasada y ver
cuánto es que tenemos que pagar. Y
después dice, si quiero depositar 10
sets, ¿cuánto curso coin debo depositar?
No, porque acuérdense que ustedes
siempre tienen que depositar el par.
igual cantidad de uno que igual cantidad
de otro en cuanto a valor. Sí, para que
siempre tiene que ir el par eh
el par completo, ¿no? Porque acuérdense
que x * y tiene que ser igual siempre a
una constante, eso no puede variar
porque si no se modifica esta curva,
¿no? Usted siempre se tiene que mover
sobre esta curva.
Tu punto puede estar en cualquier lado,
pero sobre esa curva. Después dice P
liquidez y el R de liquidity provider.
Sí, el liquid provide es justamente la
persona que pone la liquidez, sí, que te
tiene que poner ese par que eh se pueda
transaccionar, ¿no? Para que haya par
que obviamente reciba una recompensa en
función de las comisiones que va ganando
por eh las compras y ventas. Sí. Y
obviamente el liquidity provider para
poder tener una participación del pool
recibe un liquidity token, ¿sí? Que
representa cuál es su participación en
ese pool. Sí.
Acá se habla un poco de la estabilidad
del sistema AM, dice incentivos a
proveedores de liquidez.
Sí. Eh, el tema del arbitraje que
también lo hablamos, vimos inclusive
cómo arbitrar con flash loans,
incentivos económicos, ¿sí? ¿Cómo son
los incentivos económicos? que sale a
través de las comisiones. Después acá
hay una actividad,
dice, bueno, una mm en un pool de Ether
USDC, dice, un provider deposita esto y
luego Ether duplica su valor, o sea,
Ethers, eh, gana valor este este
hagámoslo. Tenemos un Ether y tenemos,
no sé, un USDC o no, o mejor dicho 1000
USDC porque el ter está a 1000. Ahora el
el éter se va a 2000. ¿Qué es lo que
sucede con eh tu posición o qué te
hubiera convenido? ¿Te hubiera convenido
tener el dinero en Eter o tener
directamente el dinero puesto en el
pool?
¿Alguna idea?
Bueno, después lo pueden hacer si
quieren con las cuentitas, ¿sí? Para
verificarlo, pero sepan que lo que va a
pasar acá es algo que se llama
impermanent 2, que está explicado acá.
Sí, dice pérdida impermanente. Dice,
"Cuando depositas dos activos en un
pool, el algoritmo ajusta
automáticamente sus cantidades para
mantener el equilibrio, ¿sí? Es decir,
la gente va a ir comprando y vendiendo
para mantener el equilibrio." O sea, si
el subió al precio y vos ves que el éter
acá están vendiéndolo a 1000, vos vas a
agarrar y vas a empezar a comprar
Etters. ¿Hasta cuándo? Hasta igualar el
precio con el mercado. ¿Sí? ¿Por qué?
Porque vas a comprar un lado y lo vas a
vender del otro. Te vas a quedar con la
diferencia. vas a volver a comprar, a
volver a vender y así sucesivamente
hasta que se igualan, ¿sí?, con el
mercado. ¿Qué es lo que pasa? Vos vas a
estar sacando esos setters del pool,
¿sí? Y metiendo dólares a un precio
menor, ¿sí? Porque estás tomando la
letra a 1000 cuando la letra ya estaba
2000. Entonces, el valor del pool sí va
a estar bajando el valor total del pool,
por lo tanto, vos vas a estar perdiendo
dinero. Sí, esto es lo que se conoce
como impermanment loss. Sí. Entonces,
leámoslo. Dice, "Cuando depositas dos
activos de un pool, el algoritmo ajusta
automáticamente sus cantidades para
mantener el equilibrio." Si el precio de
uno de los activos cambia mucho, el pool
vende parte del activo que sube y compra
el que baja. Es decir, vos estás
vendiendo el que sube y comprando el que
baja. Sí, como pool. Esto puede provocar
que al retirar tus fondos tengas menos
valor que que que simple que si
simplemente hubieras mantenido tus
tokens en tu wallet. Sí, si vos hubieras
mantenido tu token, tu wallet y vas a
tener más valor. ¿Por qué? Porque vos
pusiste un ether y pusiste $1,000 y
después cuando sacas no vas a sacar un
éter y $1,000, vas a sacar 0,5 é y
$1,500.
Sí.
Y dice, "Bueno, mientras no retires los
fondos, la pérdida es impermanente." Por
eso llama los desde pérdida impermanent
es impermanente, dice, "Pero se vuelve
se vuelve permanente cuando retiras la
liqueas." Sí, mientras vos no lo
retirás, vos seguís teniendo ahí tu
posición en el pool. ¿Por qué? Si vuelve
el precio a estar al mismo a la misma
posición que estaba cuando vos lo
metiste y vas a tener ganancias. Sí.
Ahora, si no vuelve siempre vas a
acumular más del token que menos valor
tenga. Por lo tanto, por eso es que
tenés esa impermanent los Sí.
Después el slip chester es básicamente
el deslizamiento que se produce en esta
curva. Sí, acuérdense que si yo compro,
si compro un poquitito, el precio varía
muy poco, pero si yo compro mucho, el
precio varía mucho. Sí, eso es el
slepage, justamente
está acá.
Después, bueno, ten riesgo de contrato
inteligente, o sea, que el contrato
falle y y lo roben o lo que sea.
Liquidez concentrada, ¿sí? MEP, que ya
lo explicáamos, un rack pool,
básicamente es que el token lo suban, lo
suban, lo suban y de pronto lo bajen.
Sí, comprando, comprando, comprando. Y
vos cuando compraste un presumo de
asalto te lo bajaron, hacen un rad pool.
Después ten el token malicioso. Sí,
puedes tener tokens maliciosos.
Acuérdense que estos están programados.
Errores de interfaz, sí, que puedes
tener errores en cuando vas a la
interfaz un decí que quieres comprar
algo y te compra otra cosa, ¿no? Ustedes
tienen que ver lo que están firmando ahí
realmente. Y después, ¿por qué los de
son importantes? Bueno, pueden trabajar
247 a diferencia de los bancos. Resumen
de clase, un poco esto y ya está. Sí,
con eso tenemos todo el contenido de
esta eh
esta modalidad. Por favor, lean un poco
estos dos eh
estas dos últimas guías antes de de la
clase que viene para poder hacer bien el
examen, pero están ya más que
capacitados igualmente para hacerlo,
¿no?
O sea, la clase que viene va a haber un
como un de la unidad, un examen de la
unidad.
Claro. Uno como los que venimos
haciendo, ¿viste? de los multiple choice
es bastante sencillo.
Todos se vienen sacando nueve, creo que
está 990 el promedio de de lo que viene
haciendo, así que eh no van a tener
problema.
¿Qué unidades son las del parcial? Es
esta última del módulo cuatro.
El módulo 4 serían estos tres, 1 2 3,
que no es más de lo que vimos, pero
bueno, para que tengan un cierre a todo
esto y sobre todo esta parte que capaz
que la pasamos un poquito rápido, ¿no?
Pero con todo lo que vieron ya lo van a
poder
Buenísimo. Muchas gracias, Cristian.
Dale.
Feliz día mañana para todos.
Feliz día.
Gracias. Feliz día para todos. Feliz día
solo
Gracias. Feliz día para todos.
Yeah.
