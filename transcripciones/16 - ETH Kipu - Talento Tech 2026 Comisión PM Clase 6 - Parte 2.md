# 16/32 — ETH Kipu - Talento Tech | 2026 | Comisión PM | Clase 6 - Parte 2

- **Video:** [https://www.youtube.com/watch?v=E4HfD_CzeLI](https://www.youtube.com/watch?v=E4HfD_CzeLI)
- **ID:** `E4HfD_CzeLI`
- **Canal:** ETH KIPU
- **Fecha:** 2026-04-15
- **Duración:** 49:46

---

## Transcripción

Bueno, un poco con esto, sí, terminamos
lo que era la clase seis, sí, toda la
parte de wallets y la clase si eh
seguimos enrollado un poco con la parte
de wallet, ¿sí? Dice operativas de
wallets y transacciones.
Sí,
los fundamentos básicamente blockchain,
identidad criptográfica. Ya estuvimos
trabajando la clave privada, ¿sí? La
clave pública, ¿sí? qué es lo que para
qué sirve cada uno y cómo derivamos de
la clave privada de la clave pública,
incluso cómo derivamos la clave pública
al ADRES, ¿no? Y en blockchain hay una
cosa que nosotros en realidad cuando yo
les digo vamos a tener dinero en una
clave pública, ¿sí? El dinero no es que
esté en la clave pública, acuérdense que
el dinero siempre está en la blockchain.
Vos con tu clave privada vas a tener el
derecho básicamente de mover
ese dinero que está asignado en esa en
la blockchain a esa cuenta, ¿no? A ese
estado. Sí.
Pero bueno, acuérdense también que clave
pública y adres tampoco es lo mismo. Sí.
Y en la blockchain ustedes van a poder
firmar algo con su clave privada y
comprobar a través de su address, ¿no?,
de su clave pública, de que esa firma es
correcta o no. Sí.
Y bueno, acá el concepto de dirección,
¿no?, que sería clave privada, clave
pública, dirección. Sí. Acuérdense la
clave privada es un número aleatorio, la
clave pública es eh básicamente ese
punto G por esa clave privada a través
de del protocolo es el exa y después esa
clave pública hacemos un 256 y tomamos
los últimos 20 bytes y con eso obtenemos
la dirección.
En cuanto a cuentas, teníamos dos clases
de cuentas. Si una era las EOA, si
externo ligado un account, que tenían
una clave privada y teníamos después las
cuentas de contratos que no tienen clave
privada, sino que tienen adentro código,
¿no? Y se y todo su
sistema se mueve en base a ese código.
Todo lo que está escrito va a funcionar,
todo lo que no está escrito no va a
funcionar. Sí. y siempre va a funcionar
como está escrito. Obviamente que
siempre como como siempre va a funcionar
la forma que está escrito, siempre
podemos encontrar vulnerabilidades en
ese código y explotarlas, ¿no? Y ahí es
cuando podemos hackear un contrato.
Y acuérdense que una vez que se escribió
el código no se puede modificar.
Entonces, después hablamos de la parte
de wallets, ¿sí? Dijimos que había
wallets custodias o no custodias. Sí, en
la parte custodial eh vimos, no vimos
software hardware, pero sí mencionamos
algunas, ¿no? Por ejemplo, dijimos
MetaMask. MetaMas básicamente es un
software, eh hay otras, no sé, Rabi, por
ejemplo, un software, Coinbase software
y después tenemos otras que son
hardware, por ejemplo, Ledger, que yo le
dije como un penrive que se conecta.
Tresor, lo mismo. Si esos son hardware,
entonces tenemos hardware wallets o
software wallets en función de si está
hecha, digamos, como un programita en la
computadora o básicamente como un
dispositivo externo.
Vimos el tema de la seed phrase, ¿sí?
Esta frase semilla, las 12 palabritas,
la 24 que se hacían a través de BIP 39.
Eh, vimos que era muy necesario hacer un
backup de esto, ¿no? Porque acuérdense
que a través de la Sfrase van a poder
reconstruir todas sus claves privadas y
si ustedes no tienen la SFAS van a
perder todas sus clases privadas y por
lo tanto van a perder todo su dinero
porque no van a poder moverlo. Sí,
quizás van a poder ver dónde está, pero
no van a poder moverlo
porque para moverlo necesitan las claves
privadas.
Ah, una cosa con esto, ¿sí?
¿Qué es lo que sucede acá? Ustedes
necesitan la clave privada para moverlo.
Sí,
nosotros dijimos que, bueno, podemos
tener un contrato, el contrato lo mueve
a través de código. Sí. Entonces, ahí
podemos encontrar otro tipo de wallet,
¿sí? Que son los que se conoce como
smart wallet, que básicamente son wallet
que
que son contratos también, ¿no? Es
decir, yo puedo meter dinero en ese
contrato y mover el dinero de ese
contrato en función de cómo el código me
diga. Sí, y el código puede tener, por
ejemplo, habilitado para que otras
wallets, ¿sí? otras cuentas puedan mover
ese dinero. ¿Sí?
Entonces, ¿qué es lo que sucede ahí? Yo
puedo generar, por ejemplo, thresholds,
¿sí? decir, bueno, necesito que dos
cuentas estén de acuerdo, o sea, puedo
tener tres cuentas conectadas a ese
contrato, por ejemplo, decir, "Okay, que
dos cuentas estén de acuerdo para mover
este este dinero para que realmente se
mueva." Sí, dos de los tres. O puedo
decir, bueno, uno de los tres o puedo
decir que los tres de tres, ¿sí? O puedo
tener más cuentas, etcétera. Y ahí puedo
jugar un montón. Sí. Esa cuenta que me
permiten hacer ese tipo de cosas es lo
que se conoce como multisign, ¿sí? o o
múltiples firmas, es decir, son
contratos en los cuales yo puedo mover
como si fuera una wallet las cosas
porque ya está puesto en su código, pero
que puede moverlo, digamos, billeteras
externas, ¿no? A través del código de
esa wallet.
Después, a partir de eso, salió, por
ejemplo, lo que es el el RC437,
sí, que se los comenté en algún momento,
eh, por ejemplo, para hacer account
abstraction. ¿Por qué? Porque yo si
pierdo mi frase semilla, por ejemplo, en
mi wallet podría pierdo todo, ¿no? En
cambio, si yo tengo una Smart Wallet y
tengo el dinero ahí y yo con mi frase
semillas muevo el dinero de esa de esa
Smart Wallet, si yo pierdo mi dinero
acá, puede ser que, por ejemplo, tenga
un guardián en la cual me permita eh
cambiar el owner de ese contrato, si
para que sea otra cuenta y que vuelva a
tener acceso para mover ese dinero, ¿no?
Y no perderse dinero.
Esto puede servir, por ejemplo, para
cuentas semicustodial, mejor dicho. ¿Por
qué digo sem custodial? Porque, bueno,
justamente tenés un guardián que te lo
puede modificar, ¿no? Por lo tanto, no
sería custodial,
pero sí sería semicustodia porque puede
decir, "Bueno, guardián no puede mover,
únicamente puede asignar." Sí,
pero bueno, eso para que tengan un poco
de noción de otro tipo de wallets, ¿no?
Eh, bien, después tenemos la parte de
interacción de web 3, ¿sí? Las DPS.
Acuérdense que las DAPs son estas
aplicaciones centralizadas, es decir,
tenemos un frontend que era básicamente
JavaScript, CCS y HTML. Sí, las
tecnologías comunes. Podemos utilizar
cualquier framework que ustedes quieran,
React, Angular, eh View, ¿sí? lo que
utilicen, eh, o hacerlo HTML y CSS con
JavaScript simple
y conectarlo eso a a un backend, que en
este caso el backend no sería un
servidor y una base de datos, sino que
sería la blockchain, ¿no?, que a su vez
tiene esta EBM que nos daría este
servidor, ¿no? Este cómputo.
Tenemos la parte de firma de mensajes,
¿no? Acuérdense que podemos firmar los
mensajes con las claves privadas. Sí,
tenemos eh programas especializados para
hacer esas firmas que son las que se
conocen como wallets. Si las wallets son
programas en las cuales yo pongo mis
cuentas, pongo mi clave privada, pongo
mi ALDES, pongo mi dirección pública,
¿sí? Y con eso yo puedo eh firmar lo que
sea, ¿sí? Esos son wallets y básicamente
también me lo pueden mandar un nodo.
Es decir, las wallets son únicamente
estos software que me permiten hacer eso
de una forma sencilla.
Bueno, podemos firmar transacciones.
En cuanto a las redes, sí tenemos
diferentes tipos de redes. Nosotros
estuvimos hablando, por ejemplo, de las
blockchain, ¿sí? Y hablamos, por
ejemplo, en su momento, hablamos de
Ethereum, hablamos de Binance
Smartchain, hablamos de Polyon, hablamos
de otras redes. Sí. Todas esas redes son
redes eh Mainnet, básicamente. ¿Qué
significa esto Mainnet? Bueno, que son
redes centrales, ¿no? En las cuales todo
el todo el dinero que hay ahí adentro es
dinero de verdad, si tiene valor
económico.
Por lo tanto, si yo tengo un Ether en la
red de Mainnet, de Ethereum, por
ejemplo, vamos a tener un Eter que son
hoy en día 2300, 2400.
¿Sí?
¿Qué es lo que sucede si yo estoy
desarrollando, por ejemplo, o estoy
aprendiendo, estoy empezando a jugar con
esto en la blockchain y tener el dinero
ahí y hacer transacciones que me cuestan
dinero y bueno, eso es muy caro.
Entonces, ¿cómo se hace? Bueno, se
utilizan los que se conocen como
TestnetNTs. Sí, TestnetNT es una red que
funciona igual que la Mainnet. Quizás
puede variar en su protocolo de e de
consenso, capaz que algunos son proof of
authority o proof of stake o proof of
work o o lo que sea, sí, que puede
variar en eso, pero funcionan de la
misma forma, tienen la EBM que funciona
con los mismos códigos. Si yo grabo algo
ahí va a ser exactamente lo mismo que lo
grabe en una maNet. Sí. Y el dinero que
manejo ahí es un dinero de mentira, un
dinero que no tiene valor.
Entonces, yo puedo ir a estos grifos o
fusets que se llaman y pedir, por
ejemplo, que me den prestado Eters. ¿Sí?
Entonces, yo voy, le pido, le pongo mi
dirección y me da, por ejemplo, 0.1. Y
yo ahí tengo, por ejemplo, para hacer
transacciones, para pagar eh gas, para
despollar mis contratos, ¿sí? Que me van
a me van a requerir gas.
Sí.
¿Cuáles son las testnets que tenemos hoy
en día en Ethereum? Bueno, son estas
dos, Sepolia y Holenski.
Sí, cualquiera de las dos sirve y
cualquier las dos funciona de la misma
forma. Sí, por si ustedes tienen en una
o tienen la otra es indistinto.
Son la misma red de la Mainnet, ¿no? Son
dos redes separadas, ¿no? Y acuérdense
que las redes no se conectan entre sí.
Sí. Por lo tanto, las cosas que están en
mainnet van a poder ser vistas en
Cepolia o en Holenski. Si ustedes pueden
desplegar algo con Cepolia, lo prueban,
ven que todo funciona y una vez que ya
probaron y vieron que todo funciona,
agarran y lo deployan en mainet. Sí.
Entonces, primero lo deployan gratis y
después lo deployan pagando. Sí.
Igualmente yo les dije, tienen crear una
FET y pedir ese dinero. ¿Por qué es que
las Testnet también requieren dinero?
¿Por qué requieren etthers las testnets
si no tiene valor el el éter?
A ver, alguien quien pueda responder
porque necesitan pagar el gas.
Claro, necesitas pagar el gas. Sí. Y y
¿por qué vamos a pagar el gas si el gas
es gratuito? No, no tiene valor.
Y pero alguien lo tiene que procesar.
Exacto, como dice acá Miguel y como dijo
también Bernardo, al tiene que procesar
y tiene valor un valor de cómputo, ¿no?
Es decir, yo estoy gastando un una
máquina cómputo en una máquina y si no
le pusiera gas podría eh hacer un ataque
de OS a esa máquina, ¿no? Entonces, de
esta forma yo me aseguro de que eh haya
un valor máximo en el cual pueda poner y
después de eso muere. Y además es otra
forma de decir, "Okay, funcionan de la
misma forma." Sí.
van a tener las mismas unidades de gas
acá que allá. Obviamente el precio de
gas va a ser diferente y después el
precio del éter va a ser acá 2,400 y acá
va a ser cero, ¿no?
Y bueno, las FETs muchas veces también
tienen dinero, ¿sí? Muchas veces cuesta
conseguir
si dinero por esto, ¿no? Es decir, hay
una cantidad de dinero fijo, eh, no es
que cualquiera puede crear dinero. Si
vos creas dinero, capaz que tenés que
ponerte a minar, ¿sí? O a validar
bloques.
Eh, Alchemi, por ejemplo, tiene tiene su
su testnet. Si ustedes se loguean en
Alchemi, pueden ir a a su FET y decir,
"Okay, dame a mi billetera
0.1. un creo que 0.01 ether o algo por
el estilo.
Rollaps. Sí.
¿Qué son las rollaps?
Básicamente las rollaps son
redes
igual que que Ethereum o o poling o lo
que sea. Son redes que funcionan de las
mismas formas, pero que de alguna forma
están conectadas con mainet. Sí.
Rollaps justamente viene de rollo. ¿Para
qué sirve esto? Bueno,
en un principio cuando se crearon las
rollaps, ahora es como que está
cambiando un poco por unos tweets que
hizo Vitalic hace unos meses o un mes,
dos meses, hace poquito. Si está
cambiando un poco esto, pero cuando se
empezaron a generar las rollaps fue
porque Ethereum básicamente estaba muy
caro. Si hacer una transacción en
Ethereum te costaba, no sé, 200, $00 y
busca pues que querías mandar 10. Sí, te
cobran 200, 300 de gas, lo cual era muy
caro. Entonces, ¿qué hacían estas
rollaps? Bueno, agarraban muchas
transacciones.
Sí, ponerle 1000 transacciones
y esas 1000 transacciones las escribían
como si fuera una transacción en
Ethereum. ¿Sí? Entonces, esos $200 que
me cobraba Ethereum para hacer una
transacción, ahora ya no eran $200, sino
que esos se dividía en 1000 personas, en
1000 transacciones, ¿no? Entonces cada
transacción en vez de costarme $200 me
costaba 20 centavos. ¿Sí
se entiende eso,
eso? Es básicamente una rolat. Después
existen dos tipos. Sí. básicos de
rollaps, que son las Rollups
optimistics, ¿sí? Optimistas, o las ZK,
¿sí? Las C Rollaps.
¿Cuál es la diferencia entre una y la
otra? Bueno, la forma en que trabajar.
Yo les dije, ustedes tienen un montón de
transacciones y yo con esas
transacciones escribo una sola
transacción en Ethereum para validar
todas esas otras transacciones. ¿Sí?
¿Qué es lo que hacen las optimísticas o
optimistas? Básicamente dicen, todas las
transacciones que están acá en esta
rollap están bien. Sí, por defecto están
bien. ¿Hasta cuándo? Hasta que haya
alguien que te diga, "No, acá hay una
transacción que está mal hecha." Sí,
hasta ese momento todas esas
transacciones están bien. ¿Qué es lo que
sucede con esto? Bueno, existe, si yo
quiero hacer, por ejemplo, un pasaje de
Eters de una
de un layer one, sí, o sea, de Ethereum
Maet, por ejemplo, a esta rolap que se
suelen llamar layer two, ¿sí? O o sí,
layer two. Básicamente, si yo quiero
mandar de una a la otra, ¿qué es lo que
sucede? Yo tengo que congelar de un lado
y crear del otro y después si quiero
mandar para el otro lado, vuelvo a
eliminar de este lado y vuelvo a crear
de este lado. ¿Para qué? para poder
mantener el saldo, ¿no? Porque si yo
creo de un lado sin eliminarlo del otro
y estoy duplicando el saldo que tenemos,
estamos teniendo como si fuera un doble
gasto, ¿sí? Para esa comunicación. Y
acuérdense que, como yo les dije, es una
red diferente, ¿sí? Que está basada ahí
en Ethereum, o sea, todas las
transacciones tienen que estar
corroboradas en Ethereum, pero tiene una
cadena totalmente diferente. ¿Sí? ¿Qué
es lo que sucede si yo le libero los
éter, por ejemplo, en Ethereum
y no se los quemo acá, sí? Van a tener
elum en la rollup y el en Ethereum y
después van a poder volver a sacar. Sí.
Entonces, por tanto, yo tengo que
quemárselo acá en la rollap. ¿Qué es lo
que sucedía? Si yo
hago una transacción que es una
transacción falsa, ¿sí? Y como es
optimista, me dice que es una
transacción verdadera y yo lo libero acá
en Ethereum, una vez que lo liberé a Can
Ethereum, ya no puedo congelárselo. ¿Sí?
¿Por qué? Porque ya esta rollap no tiene
e
potestad sobre la red principal de
Ethereum. ¿Sí? Entonces, para evitar
eso, ¿qué es lo que hacía la rota
determinística de la rola optimista?
decía, "Okay, por 7 días, una vez que
vos quemaste los los ter acá, por 7 días
no vas a poder liberar los ters en
Ethereum." Sí,
o sea, tenés que estar una semana para
hacer una transferencia de una de una
red a la otra. Sí, de Ethereum a la
optimista era fácil, ¿sí? Porque
Ethereum lo quemaba o mejor dicho lo
frisaba y te lo daba en en la optimista,
¿sí? Pero cuando vos querías hacer al
revés y teabas 7 días en extraerlo. Sí.
¿Qué pasó con eso? Bueno, vino algo que
se llamaban las rollaps ZK, ¿sí? Las CK
proof rollaps.
Básicamente estas rollaps lo que hacen
es ya en esa transacción que te escriben
en Ethereum, cuando yo les dije, bueno,
tienen todo un rollo de transacciones,
pero escriben una sola transacción en
Ethereum. Esa transacción en Ethereum es
básicamente un polinomio que se forma a
través de eh como si fuera la sumatoria
de todas las transacciones de acá. Por
lo tanto, ese polinomio está comprobando
la veracidad de todas estas
transacciones de la rollap. Sí. Por lo
tanto, si quieren hacer una
transferencia, ya es ya es inmediato.
¿Por qué? Porque eso ya está comprobado
y no es que tienen que esperar 7 días a
ver que alguien encuentre la transacción
que está mal hecha para decirte, "Che,
esta transacción está mal, volvamos todo
para atrás."
Sí, se entiende un poco el concepto.
Pero consulta, Cristian, eh, ¿cuál es el
sentido de tener esta red solamente que
las transferencias son más baratas?
Exacto, exacto. Acuérdense que yo le
dije, esto viene de un momento cuando
Ethereum costaba una transacción $200,
vos querías mandar $10 y te costaba 210,
¿no?
Y y ahora se usa mucho esta rollaps o o
no.
Eh, lo que pasa lo que pasa es que ahora
el precio de la transacción de Ethereum
bajó mucho. Sí. Y eso es un poco lo que
les decía, que Vitali, que hace un mes
con L, hizo justamente un tweet de esto
diciendo, "Che, ya las rollaps no van
más porque Ethereum ya vale poquito,
entonces volvamos todos a Ethereum." Eh,
sin embargo, hay algunas que todavía se
se siguen utilizando, ¿no? Eh, por
ejemplo, tenemos Startnet, ¿sí? Startnet
es una SP proof rollup, ¿sí? Eh,
y otras que bueno también que son muy
específicas y y se siguen usando, ¿no?
Otras LER dos,
por ejemplo, C Polygon también, ¿no?
Optimistic. Optimistic es una roll up
Optimism, perdón,
árbitro. Mm. Exacto. Por eso te digo, se
siguen usando. Sí, se siguen usando, eh,
pero bueno, la idea de Ethereum es que
cada vez se utilicen menos, ¿no? Acá yo
creo que ya iba a haber una pelea en
algún momento, porque también en algún
momento si no las Rolaps hubieran dicho,
"Che, para qué voy a estar escribiendo
todo eso en Ethereum si yo por mi cuenta
ya soy una una blockchain, ¿no?
Entonces, me mantengo en mí y y para qué
le voy a pagar los 200 Ethereum
si ya tengo todos los usuarios
concentrados en en mí.
Pero bueno, era un poco esa la idea,
¿no? Es decir, bueno, cada unas
transacciones de Ethereum equivalen, no
sé, a 1000 transacciones en esta rollup.
Entonces, si tenemos 1000 transacciones
Ethereum, podemos tener 1 millón de
transacciones en en un bloque, ¿no? Y
podemos escalar Ethereum, hacerlo más
barato y no solo más barato, sino que
podemos hacer mayor cantidad de
transacciones eh por minuto, ¿no? Y
poder superar así, por ejemplo, las
transacciones de Visa, sí, lograr una
mayor escalabilidad.
Gracias. E
valor las transacciones Ethereum igual
que todo el mercado es verdad o depende
de la oferta y la demanda. Sí,
acuérdense que siempre tenemos la oferta
y la demanda en cuanto a las máquinas.
Si yo tengo máquinas realizando cálculos
y si yo tengo una oferta muy elevada y
una demanda muy baja y me va a costar
poquito el cálculo ese. Sí. Si yo tengo
una oferta muy grande, digo, muy baja y
una demanda muy alta, ¿sí? Ese cálculo
me va a costar un montón. Sí, voy a
tener que subir el precio para que me
metan en ese pedacito de cálculo.
Bien,
después la parte de exploración. Si dice
block explorerc dice transaction hash.
Si ya vimos esto del transaction hash
que lo hacía de una forma como los mer
tre, ¿no? Para poder después identificar
cuál era el camino,
cuál el camino si había una transacción
que estaba mal. Sí. Poder ver dónde
estaba el problema,
eh, el estatus, ¿sí? Si está confirmada
o no confirmada la la transacción, el
número de bloques, ¿sí? el height que le
decíamos para saber cuál es el número de
bloque en el cual estás, el gas
utilizado, ¿sí? En cada una de las
transacciones, todo esto se puede ver en
el Explorer. Sí,
en cuanto a las transacciones, tenemos,
por ejemplo, el NOS. Acuérdense que este
NOS era ese numerito que iba se iba
incrementando las cuentas eh de forma
consecutiva para poder ir siempre en
orden y no repetir la misma transacción
dos veces. Sí, acuérdense que esto
evitaba el doble gasto en Ethereum.
Tenemos el mpll que acuérdense que cada
uno de los nodos tiene su propio menol,
¿sí? Para cuando le llegan las
transacciones, porque esas transacciones
no llegan y se hacen directamente, sino
que pueden llegar concurrentemente. Y al
llegar concurrentemente, nosotros
necesitamos sí o sí una cola en donde
poder ordenar las cosas y poder después
ir extrayendo para poder eh operar, ¿no?
Entonces, eso es lo que se conoce como
mpol. Sí. Y acuérdense que era una cola
que se ordenaba generalmente por el gas
price, ¿no? ¿Por qué? Porque entre mayor
pago yo de gas, más pago ya de gas, más
le conviene al
al nodo agarrar esas transacciones para
poder eh cobrar más, ¿no?
Entonces, una vez que viene el mpol, yo
incluyo eso en un bloque. Sí. Una vez
que incluye eso en un bloque, lo tengo
que poner en la blockchain. En el
momento que lo pongo en la blockchain,
eso se llama confirmación. Si está
confirmado de que eso está en la
blockchain. Sí. Ahora, ese confirmado
significa que realmente está confirmado.
Y yo les diría ni sí. ¿Por qué? O
nosotros habíamos dicho que cada vez que
vos tenés un bloque más atrás es más
difícil modificar. Sí. mientras que los
bloques de más adelante son más fácil de
modificar. ¿Por qué? porque habían otros
otras blockchains que podían tener cosas
diferentes, ¿no? Acá en Ethereum no va a
pasar eso de que haya bloques que tengan
cosas diferentes porque acuérdense que
como estamos en un proof of stake hoy en
día ya no en un proof of work que están
peleando para compitiendo para poner su
postura, sí hay uno que sale elegido y
ese es la persona que va a estar
poniendo su bloque. Sí, pero una vez que
lo puso es el punto de la confirmación.
¿Qué es lo que sucede en ese momento?
todavía puede llegar a ser eh rebotado.
¿Por qué? Porque todavía tienen que
pasar los más baliidadores. Si los más
validadores dicen que eso no va y ese
bloque va a quedar rechazado y tu
transacción que estaba ahí adentro
seguramente va a quedar rechazada. ¿Sí?
Por lo tanto, igualmente tiene más
posibilidades de variar esos últimos
bloques que los bloques que pasaron hace
2 años, tres años, ¿no? Que variarlos
sería un caos, ¿no? Porque tenés que ir
eh variando todos los galles para
adelante, ¿sí? Y hacer que todo el mundo
acepte tu tu nuevo tu nuevo cadena de
bloques. ¿Sí?
Entonces, eso se llama confirmación y a
medida que nosotros vamos poniendo más
bloques adelante se llama cantidad de
confirmaciones. ¿Sí? Por lo tanto, vos
hiciste una transacción, te entró en un
en un bloque, ese bloque se confirmó,
tenés una confirmación, después viene
otro bloque que se confirma, vas a tener
dos confirmaciones, otro bloque que se
confirma, tres confirmaciones. Otro
bloque que se confirma, cuatro
confirmaciones. Y así sucesivamente.
¿Qué es lo que sucede? Entre más
confirmaciones tenemos, más difícil es
modificar eh la transacción. Sí, sobre
todo cuando estamos hablando de Tru of
Work, ¿sí? Ahí es mucho más complicado.
Acá eh básicamente la complicación está
en que tenés que modificar en todos los
servidores, ¿no? ¿Por qué? Porque ya
tienen su sus bloques asignados.
¿Se entiende?
Y bueno, eso es la irreversibilidad,
¿no? El tema de los bloques anteriores
no los podemos revertir porque son más
complicados que los bloques nuevitos.
Acuérden que no es, acuérdense que no es
que no se puede, sino que es
económicamente inviable hacerlo. Sí. E
en lo que es e proof of work a tener que
meter mucha energía, mucho poder de
cómputo. Sí, que habíamos hecho un poco
la cuenta, si se acuerdan. Ahora, en lo
que es eh Ethereum, vas a tener que
meter mucho dinero en ether, ¿no?, para
poder hacerlo,
porque
confirmar te requiere ethers.
Y después tenemos el tema de gas, que
nosotros muchas veces hablamos de gas,
hablamos de cómo esto básicamente es la
unidad de cómputo en la cual nosotros
estamos eh realizando en la EBM. Si la
EBM va a estar haciendo sumas,
multiplicaciones, divisiones,
comparaciones, saltos y cada una de
estas cosas. tiene una cantidad de de
cómputo asignado que lo vamos a medir en
gas. Una vez que somamos todas esas
unidades, va a decir cuántos gas nos
cuesta hacer una determinada operación,
¿sí? O llamar una determinada función en
un contrato. ¿Sí? Ahora, eso es la
cantidad de gas que nos va a dar, ¿no?
Este gas units.
Ahora, ¿qué sería el gas limit? también
lo habíamos visto. Si dijimos, bueno,
nosotros cuando hacemos una transacción
podemos poner cuánto es el límite que
nosotros queremos que queremos hacer,
¿sí? Que queremos usar. Por ejemplo, a
mí me da que eh la operación esta de
llamar esta función smart contract son
30,000 unidades de gas. Sí, esto sería
el gas unit. 30,000 unidades de gas.
¿Cuánto le puedo poner al gas limit?
25000.
¿Qué va a pasar si yo le pongo 25,000 al
gas al gas limitando el cálculo me da
que son 30,000 unidades de gas?
Nunca te la van a procesar la
transacción,
¿eh? Sí, más que eso me la van a
procesar y una vez que llegue a las
25,000 va a revertir porque se le acabó
el gas.
Ah. Uh.
Sí. Yo voy a haber pagado esa 25,000
unidades de gas. La voy a pagar, pero no
va a terminar de ejecutarse. Y
acuérdense que esto o se ejecuta o no se
ejecuta. Por lo tanto, es lo mismo que
nada. Sí.
Y y los 25000 los perdiste. Fuiste
lasiste. Síolero.
Por lo tanto, nunca podes poner el gas
límit de menos, ¿no? Siempre tenés que
ponerlo de más. ¿Cuánto más se le suele
poner? Y bueno, un 20%, un 30%. Sí.
Entonces, si va 30,000, ustedes le
pueden poner de gas límit, por ejemplo,
50,000. Sí.
Con eso, ¿qué va a pasar? Una vez que
llega a esos 30,000, ¿sí? Se va a gastar
esos 30,000 y los otros 20,000 que le
quedan te lo devuelven.
Sí. Ahora ustedes me dirán, "¿Y por qué
no podría ponerle 100,000 millones si es
así?" No, total me lo va a devolver. Sí.
Bueno, hay dos cosas. Primero, por
100,000 millones tenés que tener esa
cantidad de dinero,
¿no? Porque si no, eh no te va a dar
para poner ese número. Segundo, aunque
lo tengas, el problema es que cada
bloque tiene un gas límito, ¿no? Que más
de eso no puedes poner. Sí. Entonces ahí
ya también tenes otro otra traba.
Y después está el problema de que si vos
le pones un gas límit muy alto, ¿sí? y
el precio muy bajo,
eh, y después eso queda trabado y vas a
tener un problema de que no vas a poder
poner uno mayor para poder hacer que
esto, digamos, funcione
y se destrabe esa transacción y te va a
quedar trabado ahí la la billetera. Sí.
Por lo tanto, no se vayan nunca de
mambo, ¿sí? Al máximo del que les da el
bloque. Sí, pongan un valor más o menos
coherente, como digo, un 20% más, un 30%
más. el doble si quieren, si si costara
30 pueden poner 60, pueden ponerle, pero
nunca eh
se vayan demasiado de mambo tampoco,
¿no?
Pero pero hay una calculadora un
estimador que te va a decir cuánto va a
consumir.
Eh, sí, todo es terminístico, es decir,
vos podés simular la transacción antes
de mandarla.
Pues
acordate que el las unidades de gas,
este gas unit es determinístico, es
decir, yo tengo una operación suma, eso
van a ser tres tres unidades de gas.
Tengo una operación eh que no sé,
multiplico, bueno, cinco operaciones de
gas, etcétera. ¿Sí? Entonces, vos puedes
calcular todo eso. Obviamente que
hacerlo a mano te va a costar un montón,
pero vos podés agarrar un simulador y
simular la operación y decir, "Ah, okay,
va a costar 25,000 unidades de gas."
Okay, listo. Entonces yo le pongo 40, le
mando. Sí,
pero pero esto también aplica para los
contratos o solo para las transferencias
de
Para todo las transferencias
generalmente cuestan 21,000 unidades de
gas. Es como valor fijo.
Eh, los contratos, si cuando vos
interactúas con un contrato y bueno,
depende de la función que vos tengas si
tú una función que es muy grande y te va
a costar más unidad de gas porque
acuérdate que es la cantidad de cómputos
si es una función más chica y te va a
costar menos. Sí.
Pero es totalmente eh visible, o sea,
vos podés eh simularlo y decir, "Okay,
esto me costar 25, le pongo 40."
Generalmente Metamas, por ejemplo, o
cualquier otra billetera te hace la
simulación antes de mandártelo y te
dice, "Esto te va a costar tanto."
Buenísimo. Gracias.
De nada.
Entonces, con eso tenemos la parte de
gas units y tenemos la parte de gas
limit. Sí.
¿Qué es esto de base fee y priority fee?
Sí, básicamente esto lo que me está
dando es el valor del el precio del gas.
Sí,
hay un protocolo que, si no me equivoco,
era el EIP 1559.
Sí, acá está. Fíjense, el IP 1559 es una
actualización clave en la implementación
de agosto del 2021, ¿sí? Con London.
London es la máquina virtual que se hizo
ese año. Dice que reformó el mercado de
comisiones de Ethereum. Sí, introdujo la
tarifa base, el TBAS fee, quemada por
cada transacción para reducir el
suministro de ETERS, mejorando la
previsibilidad de costo y la experiencia
de usuario. ¿Sí? Entonces, básicamente,
¿qué fue lo que hizo este esta IP 1559?
fue poner este base fe y este priority
fee. Antes vos tenías un precio de gas,
¿sí? Y ese precio de gas vos lo
multiplicabas directamente por la
cantidad de gas que
que te costaba
a hacer cierta operación y obtenías
cuento era que vos ibas a pagar de gas.
¿Sí? Es decir, si yo tenía una
operación,
por ejemplo, que me costaba 30,000
unidades de gas,
vamos a poner mejor 10,000 para hacerlo
más fácil la cuenta, ¿sí? 10,000
unidades de gas
y el precio del gas era de
dos, ¿sí?
Dos etther, vamos a ponerle
cuánto sería lo que yo tenía que pagar
de gas. Y bueno, sería este 10,000 por 2
ethers, ¿no? Sería 20,000 ethers.
Sí, esto era antes. Después a partir de
este de esta EIP 1559 lo que se hizo fue
no hacerlo así. Sí, estos dos que que
vos pag, o sea, estos 20 20,000 que vos
pagabas básicamente iban para el minero.
Si en ese en esa época esto era un proof
of work, por lo tanto había minería y
estos 20,000 iban para el minero, ¿sí?
Más obviamente el Coinbase que se
generaba. Entonces, ¿qué es lo que
pasaba? Cada vez había más hets en
e en el juego, ¿no? Porque se agregaban
s por la minería, básicamente y estos er
que se le daba minero también porque gan
porque ganaba. Ahora lo que se hace es
que este precio, estos dos setters, ya
no se calculan así, ¿sí? sino que el
precio del gas
va a estar dado por un base fe
más un priority fe.
¿Qué es este base fee? Bueno, es
una una comisión de base que siempre se
quema. ¿Sí? ¿Qué significa que se quema?
Que desaparece. si esos sets desaparecen
y este priority fee es lo que se le da
al minero, ¿sí? O mejor dicho ahora al
validador. Sí.
Entonces, en vez de tener esto que eran
dos Eters, bueno, capaz que esto ahora
es
un éter más un.
Sí. Entonces, ¿cómo se calcularía el
precio ahora? Bueno, la cantidad de gas
utilizadas son 10,000 unidades por estos
mismos dos, ¿sí? Porque tenemos dos s y
sigue siendo 20000 20000, ¿no? Pero,
¿qué es lo que pasa de esos 20,000?
El minero ya no va a recibir 20000, sino
que va a recibir únicamente 1000
y los otros 1000 se van a quemar.
Sí. y estos se queman, se entiende.
Es decir, ahora tenemos la cantidad de
gas utilizada, que acuérdense que esto
es lo mismo que cantidad de cómputo. Si
acuérdense cantidad de gas es igual a
cantidad de cómputo.
Entonces el cómputo se mide en gas,
entonces la cantidad de gas utilizada
por el precio del gas sí va a dar
cuántos que nosotros tenemos que pagar.
Sí, el precio de gas antes era un
precio,
un precio, un número número nada más.
Ahora el precio del gas está dado por
dos números, ¿sí? Por un base fee y un
priority fee, ¿sí? Por la suma de ambos.
Eso a partir de este 11, este 1559. Sí,
eso es lo que es este base fee, por eso
que dice acá burn, ¿sí? Porque se quema.
Y este priority fee es lo que se le da
al minero o al validador en este caso.
Y bueno, acá los validadores por eso no
en cuanto a la seguridad. Bueno, acá
tenemos la parte Sí,
sí, perdón, Cris, quería preguntarte el
B fe, ¿cómo se calcula? O sea, ¿quién lo
define eso?
Bueno, esto de acá como como habían
dicho, tiene que ver con el mercado,
¿sí?
¿Qué es lo que pasa? Hay hay una
relación entre el base fe y el priority
fee. Si vos no podés poner un priority
fee, por ejemplo, que sea mayor al base
fe, o sea, el base fe tiene que ser
siempre mayor al priority fee. ¿Para qué
sirve este base fe? Primero, bueno,
porque fíjense que estos 1000 letters se
están quemando. Antes estos teníamos
20,000 letters, eh, no, acá serían
10,000 letters, ¿no?
Y ahora estamos quemando 10,000 letras.
Por lo tanto, en esta transacción
tendremos 10.000 Eters menos, por lo
tanto, estamos desinflando el precio del
Eter. Si porque hay menos
es como más e disminuye, digamos, la
oferta de ETS en el mercado, ¿no? Por lo
tanto, el precio del Eter aumenta, ¿sí?
Estamos desinflándolo.
Entonces, para esto para justamente
crear esta
de inflación, ¿no? Lo contrario de la
inflación.
Ahora, ¿cómo es que se genera este
precio? Bueno, como yo les comenté, el
priority fee siempre tiene que ser menor
al base fe
y bueno, puedes mandar un base fee que
sea, eh, digo, un priority fee que sea
mayor al base fe y qué es lo que sucede
este priority fee es lo que vos le das
al minero, ¿sí? O al valiador, mejor
dicho, en este caso. ¿Qué es lo que
pasa? Vos le vas a dar variador, le vas
a decir, "Okay, yo te quiero dar
un Eter." Sí, pero si hay otras 10
personas que le están dando 10 Es, ¿cuál
va a tomar el validador? ¿La que vos le
diste, le das un o la que le da el otro
a 10?
Imagina que tomarte los 10.
Claro, va a tomar esto y la tuya va a
quedar ahí indefinidamente. Podés darle
lo que vos quieras, pero va a quedar ahí
indefinidamente. ¿Qué es lo que tenés
que hacer para que corra la tuya? Para
que vaya. Y bueno, tenés que darle 10
como los otros. O si quieres que vaya
más rápido, dale 11.
¿Se entiend?
Sí. Entonces es oferta de mercado de lo
que
Exacto. Exacto. Esto se rige
exclusivamente por el mercado. Vos podés
ponerle el valor que vos quieras. Le
querés poner cero y cero, podés ponerle
cero y cero. El tema que no se te va a
quedar ahí para siempre, no, nadie te lo
va a tomar.
Es oferta y demanda de mercado en su
máxima expresión.
Sí. Okay, veo, veo. Gracias.
Si vos le pones un valor muy chiquitito,
por ejemplo, 0.1 E y bueno, esto va a
quedar así porque te va a seguir tomando
la de los 10 Eters. ¿Y
cuánto se va a ejecutar? Bueno, cuando
ya no haya ninguna más de 10 Eters y
tenga otras que son de 0.01 y bueno, ahí
te va a tomar la tuya, ¿no?
Igual, claro, es es una corrida continua
porque obviamente que todos van a ir los
validadores por los 10 headers.
Exacto.
Así que ahí también va a haber una cuja
que no sé qué hace con el precio del
éter eso.
Claro, acá lo que va a hacer en realidad
no es el precio del éter, sino es el
precio del gas. Sí, pues fíjate que acá
te estoy diciendo cuánto vale cada
unidad de gas. Después el precio del
éther es otra cosa que eso va a tener
que ver con la oferta y la demanda del
éter, ¿no? Acá el gas tiene que ver con
la oferta y la demanda de los nodos.
Sí, si hay alguien que le está
ofreciendo a un nodo 0.1 por hacerlo y
otro está ofreendo 0.01
y bueno, el nodo obviamente va a tomar
este de acá, más allá de cuánto valga el
eter, si el eter puede valer un centavo
como puede valer $ o 000, pero va a
tomar este acá porque es mayor.
Sí. Entonces, una cosa es la oferta y
demanda que se genera por la oferta o
demanda que hay de cómputo en la red, si
en la gran red que esta que llamamos
EBM, si hay una red gigante que llama
EBM que va a tener una cierta capacidad
de cómputo, ¿sí? Y vos vas a estar
peleando por ese cómputo, ¿sí? Entonces,
vos tenés ahí una oferta y demanda, ¿sí?
Que se va a medir en en precio de gas y
otra va a ser el precio de letter, que
va a estar la demanda de let éter, ¿no?
Decir,
sí, sí, esa eso me queda claro. Sí. Sí,
lo que lo que no alcanza a ver cómo cómo
se validan las leyes de mercado con esto
de la oferta y demanda, porque eh a 01
nadie lo va a querer, a 10 todo el mundo
lo va a querer. Entonces yo también
puedo arbitrar entre todos los que
quieren, no sé cómo se pensó cómo se
arbitra este con el precio de una
acción, pero no sé si es comparable con
esto. No me doy cuenta. Sí, básicamente
es el mercado, o sea, decir, si vos no
tenés ninguna oferta por arriba de la
tuya, y va a tomar la tuya. Si vos tenés
oferta por arriba de la tuya, y vas a
seguir tomando las otras, ¿no? Eh, si le
queda tiempo libre porque ya no tiene
ninguna otra ninguna otra que hacer y
bueno, va a tomar la tuya, si no vas a
ir tomando las otras y a vos te deja ahí
relegado por meses o años o lo que sea.
Yo tengo transacciones, por ejemplo, que
hice mal ya el año pasado y todavía no
se ejecutaron.
¿Cuánto
pagas por eso?
No, más que lo que pagué fue que se me
bloqueó la billetera, pero bueno, no
importa.
Eh, bien.
Entonces, eso básicamente, ¿no?
Entonces, ti base fea,
priority fee, ¿no? Sí, seguridad, la
parte de fishing que dijimos
cuando estamos en la otra guía.
Eh, la parte de allowances no lo dijimos
con estas palabras, pero básicamente es
cuando nosotros firmamos algo que le
estamos dando eh la capacidad de
extraernos dinero a otra persona, si le
estamos dando este allow, este esta
capacidad de extraernos dinero,
extraernos tokens, generalmente RS20 y
digamos estamos firmando lo que no
sabemos, que no entendemos y se lo
estamos dando o le estamos dando de más,
como yo les había dicho Quiero mover
100, tengo 1,000ón y estoy posibilidad
de que mueva infinito. Sí. Entonces, le
estamos dando una allowance de más y con
eso pueden extraernos esos tokens.
Y bueno, en tema de la gestión de
riesgos,
¿sí? Después acá hay una tarea que
también está en el en el campus acá
únicamente lo copié. Si decía crear una
meta más, que esto se lo di tarea
justamente para la clase que viene para
que lo intenten hacer crear una meta más
obtener de una fauset. Sí, pueden
utilizar acá Alchemy. Sí, vamos.
Alchemy FET.
Sí, se ten que generar una cuenta en
Alchemy. Fíjense que acá tienen una
Fauset. Una vez que ustedes ya tengan la
cuenta,
pueden ir, fíjense que dice acá que deja
0.1 E cada 24 horas. Ustedes entrarían
acá, le ponen su billetera. Obviamente
tienen que pasar el
esto de acá, le mandan el send y con eso
les va a dar 0.1 ether para que ustedes
puedan eh transferirlo a otra cuenta.
Pueden crearse otra cuenta después en
metamas y transferirse de una cuenta a
la otra, ¿sí? Para jugar un poco con eso
y hacer su primer transferencia,
eh, que sea acá como enviar una
transacción y bueno, eso básicamente.
Después, bueno, había un examen, pero el
examen lo vamos a estar haciendo la
clase que viene a a primera hora. Así
que por favor no lleguen tarde. Eh,
vamos a dar los primeros 10, 15 minutos
para hacer el examen, eh, que sería de
este módulo. Fíjense que este módulo
justamente termina acá.
Pueden leerse un poco la la parte de
del material. Siquipu.org/etherum
developer pack. Acá nos estamos en el
módulo dos. Sí, incluyen estas dos
cosas. La pruebita. La prueba,
acuérdense que no es que si ustedes
reprueban van a reprobar el curso, pero
eh sí puede influir en la nota. Eh, eso
depende un poco después de lo que diga
talento
eh fíjense, acá tiene clase cinco. Sí,
acuérdense que yo lo que les di es
únicamente tiene ahí los títulos de las
cosas para yo irme guiando, pero acá
ustedes tienen toda la información que
les recomiendo leérsela, ¿sí? para que
tengan un cierre
y
eh uy
y después acá la clase seis, ¿no?, que
también habla un poco de de todo esto.
Empieza con la parte de repaso, ¿sí? la
configuración del entorno, lo que es
metamas rabis y rabis otra billetera, eh
seguridad operativa y protocolo de
creación, escrituras físicas,
aislamiento digital, privacidad, red de
experimentación, mainnet versus testnet,
un poco lo que explicamos, eh Ethereum
versus tokens, y esto no lo explicamos,
pero básicamente Ethereum es la
criptomoneda nativa de la red. Los
tokens son básicamente contratos
inteligentes en los cuales yo tengo
funciones que me permiten hacer
transferencias, que me permiten ver
cuántos tokens tiene una determinada
billetera y con eso puedo determinar
básicamente puedo crear dinero, ¿no? Por
así decirlo. Por eso tenemos USDC,
tenemos UNI, tenemos Link. Si esto el
protocolo se utiliza RC20. Si ustedes lo
pueden ver, van a ver que son funciones
estándar, que es básicamente para que
cualquier billetera pueda e reconocer.
esos tokens y que ustedes pueden
importarlo y pueden transferirlos o
pueden recibirlos o hacer las cosas
estándar de un token, ¿no?, que que es
como si fuera una demostra una una
fichita que representa otra cosa, ¿no?,
que representa dinero generalmente.
Después obtención de recursos, la
FUSETs, ¿sí? Acá incluso les dio de
Alchemist, se los voy a poner acá en el
en este material, sí,
set.
Alcami también tiene nodos, ¿sí? Para
que ustedes puedan llamar a nodos, nodos
más privados, ¿no? Públicos como lo
habíamos visto en chinelis.org. Después
anatomía, una transacción. Sí, esto ya
lo vimos varias veces, ¿sí? el, el
origen, el destinatario, la cantidad y
todo eso. Incluso una clase habíamos
visto mucho más a fondo dentro del block
Explorer. Habíamos evaluado una
transacción, cómo se hacía, cuál una de
las partes. Después datos visibles de
transacción, ¿sí? las el transacción
hash, el status, el gas use, el blog,
sí, el, este número que es que que va
consecutivo en las transacciones, firma
de mensajes, sí, la bueno, pues es una
actividad
y la economía del gas, ¿no? lo que
explicamos hace un ratito, la IP 1559,
cómo se forma el base fee, el priority
fee, el tema de las unidades de gas, acá
un poquito las cuentas, el gas limit, el
ciclo de vida de la transacción, sí, la
firma, la MPUL, después incluye, sí, las
confirmaciones,
eh, bueno, gestión de riesgo, fíjense la
parte irreversibilidad, ¿no?, que es
irreversible, aprobación de contratos,
sí, el tema de como digo, no firmen lo
que no entiendan, ¿sí? Intenten entender
un poco lo que están firmando antes de
firmarlo.
Yo creo que nadie lee usos y
condiciones. Me parece
eh
nadie lee usas y condiciones cuando
abril.
Claro. Lo que pasa la cámara esa.
Lo que pasa que puedes estar firmando
acá puedes estar firmando un allowance
diciéndole podes sacarme todo el dinero.
Claro que te saquen todo lo que tenes en
la billetera. Lógico. Sí. Entonces ahí
es como que lo haces una vez y después
ya no quieres volver a hacerlo, ¿no?
Y bueno, resumen de clases un poco de
todo eso y la actividad que les pu acá,
¿no? Instrar la meta más, crear una
cuenta, almacenar las palabras de
seguridad, sí, acuérdense de esto, ¿no?
Aceran las palabras de seguridad, sí, en
una hoja, papel, lápiz,
eh, no sacar fotos ni nada de eso. Sí,
habilitar testnets, sí, para poder pedir
acá en la faet. Acuérdense que acá le
van a dar testen no le van a dar 0 pun
un de verdad son 200.
Si no nos creamos un robotito que que
vaya pidiéndolo muchas veces y nos
hacemos millonarios. Sí, es se lo dan en
Testnet y que pueden ser acuerdia o
Jolenski y después bueno recibir una una
transferencia que básicamente con esto
ya van a recibir una transferencia
después ustedes pueden mandar para poder
jugar un poco más y y ver cómo se procar
un poco, ¿no?
Así que bien, ahí estamos.
¿Alguna duda? ¿Alguna consulta?
Genial. Buenísimo. Entonces dejo de
grabar para que no se pase mucho.
