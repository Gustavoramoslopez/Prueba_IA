# Presupuesto Abierto 3F

## Trazabilidad fiscal y participación ciudadana on-chain para el Municipio de Tres de Febrero

**Trabajo Práctico Final — Ethereum Developer Pack (ETH Kipu)**
**Fase 1: Diseño Conceptual y Defensa del Proyecto**

---

## 1. Resumen ejecutivo

Presupuesto Abierto 3F es una dApp para el Municipio de Tres de Febrero (Provincia de Buenos Aires, ~360.000 habitantes) que integra dos circuitos sobre la misma capa de identidad ciudadana: trazabilidad pública on-chain del 100% del presupuesto municipal ejecutado, y participación ciudadana directa sobre dos pools paralelos que totalizan el 4% del presupuesto (2% del aporte propio de cada contribuyente, asignable a proyectos sectoriales, y 2% del presupuesto recaudado total aportado por el Municipio, distribuido en cuotas igualitarias entre todos los ciudadanos verificados).

El sistema combina la inspiración del 8x1000 italiano (1985) con la del presupuesto participativo de Porto Alegre (1989), articulando ambas mecánicas sobre una capa de verificabilidad que ningún portal de transparencia tradicional puede ofrecer. La identidad ciudadana se materializa en un Soulbound Token ERC-721 no transferible emitido por el Municipio tras KYC off-chain. La ejecución de proyectos opera bajo modelo "todo o nada" con liberación condicionada por multisig 2-de-3 (auditor ciudadano electo, Ejecutivo Municipal, Concejo Deliberante). El proyecto integra los cinco módulos del Ethereum Developer Pack y está diseñado para ser replicable a otros municipios argentinos.

---

## 1.1 Cómo funciona, contado simple

Antes de entrar al detalle del problema y la solución, conviene una explicación accesible que cualquier persona pueda leer y entender, incluyendo quienes no tienen formación técnica ni familiaridad con blockchain.

### La pregunta de fondo

Vos pagás impuestos municipales. ¿Sabés realmente a dónde fueron? ¿Pudiste alguna vez decir "este año prefiero que mi parte se use en mejorar la plaza del barrio, no en otra cosa"? La respuesta para casi todos los vecinos de cualquier municipio argentino es no. Pagás, mirás Facebook a la intendencia hacer anuncios, y cada cuatro años votás. Punto.

### Lo que proponemos

Que una vez por mes puedas hacer dos cosas desde tu celular:

1. **Ver, sin pedir permiso a nadie**, cuánta plata recaudó el Municipio y en qué la está gastando. Como un home banking público.
2. **Decidir el destino de una porción acotada** de tus impuestos y de un fondo comunitario, eligiendo proyectos concretos de un catálogo.

Y que todo esto quede registrado de manera que nadie — ni la gestión actual ni la que venga — pueda borrarlo, modificarlo o esconderlo.

### Las dos cajas

El sistema trabaja con dos cajas separadas, que llamamos pools:

- **Pool A — "Tu plata, tu destino".** Cada mes, el 2% de lo que vos pagaste de impuestos municipales vuelve a vos en forma de cuota asignable. No es plata que recibís en tu bolsillo: es plata pública sobre la que vos decidís el destino dentro de un catálogo de proyectos. Si pagaste más impuestos, tu cuota es más grande. Inspirado en el 8x1000 italiano, que funciona así desde 1985.

- **Pool B — "Plata de todos, decisión de todos".** El Municipio pone un 2% adicional de la recaudación total en una caja comunitaria, y la divide en partes iguales entre todos los vecinos verificados — pagues impuestos o no, seas contribuyente o jubilado exento. Cada uno asigna su parte a proyectos de obra pública. Inspirado en el presupuesto participativo de Porto Alegre, que funciona así desde 1989.

### Los proyectos

El catálogo tiene proyectos de dos orígenes:

- **Propuestos por vecinos.** Cualquier vecino con identidad ciudadana verificada puede proponer un proyecto. Para evitar spam, deja un depósito que se le devuelve y necesita juntar firmas de apoyo de otros vecinos.
- **Propuestos por el Concejo o el Intendente.** Para proyectos técnicos complejos (cloacas, semáforos, infraestructura urbana) que requieren conocimiento especializado.

Cada proyecto tiene un mínimo de financiamiento ("umbral") y un plazo. Si en el mes junta el umbral, se ejecuta. Si no lo junta, los fondos vuelven a quienes los habían asignado.

### Cómo se libera la plata

Cuando un proyecto se financia, la plata no se transfiere automáticamente al constructor. Espera a que tres figuras independientes verifiquen físicamente que la obra está hecha:

1. Un vecino auditor, elegido por votación entre todos los vecinos verificados, cada seis meses.
2. Un representante del Ejecutivo Municipal.
3. Un representante del Concejo Deliberante.

Si dos de los tres firman que la obra está bien, la plata se libera al constructor. Si no firman, la plata queda congelada y eventualmente se devuelve.

### Por qué blockchain y no una página web cualquiera

Si todo esto lo administrara el Municipio en una base de datos propia, volveríamos al problema original: confiar en que el mismo que ejecuta no toca los registros. Blockchain hace que el registro no dependa de nadie. La red entera sostiene la verificabilidad. La próxima gestión municipal no puede borrar lo que la anterior asentó.

### Lo que el sistema **no** promete

Conviene ser claro sobre los límites para no vender humo:

- **No elimina la corrupción.** Hace más visible la opacidad, lo cual la encarece políticamente. Pero el sobreprecio en una licitación, la coima al contratista o la presión sobre el auditor son cosas que pasan en el mundo físico y blockchain no las ve.
- **No valida que la obra esté bien hecha.** Eso depende de la inspección humana del multisig. El sistema registra el resultado de la inspección, no la reemplaza.
- **No le pide a nadie que entienda blockchain.** El vecino entra desde su celular, ve dos cajas, asigna porcentajes, confirma. La complejidad técnica queda escondida.

---

## 1.2 Experiencia del usuario final: qué ve y qué no ve

Esto merece desarrollo aparte porque es la pregunta más importante para la viabilidad del sistema: *¿puede un vecino de 65 años, sin conocimientos técnicos, sin haber tocado nunca una wallet, usar esto sin sentirse expulsado?* La respuesta es sí, pero requiere diseño explícito y honestidad sobre el trade-off entre descentralización pura y accesibilidad masiva.

### Lo que el ciudadano ve

Cuando Susana — la jubilada de 72 años del ejemplo de §6.1 — entra a la dApp desde el celular, ve una pantalla parecida a la app de su banco. No ve direcciones hexadecimales largas. No ve frases como "smart contract", "gas", "wallet", "transacción", "blockchain". Ve cuatro cosas:

1. **Su nombre y su identidad ciudadana** ("Susana Pérez, ciudadana verificada de Pablo Podestá").
2. **Sus dos cajas** ("Pool A — Tu plata, tu destino: $0 este mes" / "Pool B — Plata de todos: $4.800 disponibles").
3. **El catálogo de proyectos** con fotos, descripciones cortas y barras de progreso de financiamiento.
4. **Un botón grande de "Asignar"** que le permite mover su cuota a uno o varios proyectos arrastrando porcentajes.

Cuando confirma su asignación, le aparece una pantalla de "Confirmar" como en cualquier app bancaria. No firma una transacción cripto en el sentido técnico: aprueba una operación cívica con su huella digital o PIN. Eso es todo. El frontend traduce su acción en una transacción on-chain, pero ella nunca tiene que saberlo.

### Lo que el frontend esconde

Por debajo de esa interfaz simple corren cuatro capas técnicas que el ciudadano no debe ver:

- **Wallet.** Existe, pero el frontend la maneja por debajo. El ciudadano no instala MetaMask, no copia direcciones, no maneja seed phrase.
- **Firma de transacción.** El sistema le pide PIN o biometría. Por debajo, eso desencadena la firma criptográfica de la transacción.
- **Costo de gas.** En L2 (Arbitrum, Optimism, Base) es de centavos. En MVP la dApp puede subsidiar el gas con un patrón meta-transaction (gas station): el ciudadano firma, otro paga la transacción. El ciudadano nunca ve el costo.
- **Dirección on-chain.** Existe pero está oculta. Lo que el ciudadano ve es su nombre asociado a su SBT, igual que en cualquier app moderna.

### Estrategia progresiva: cómo se llega ahí

El sistema no nace con esta experiencia perfecta. Se llega por etapas, y conviene declararlo con honestidad:

**Etapa 1 — MVP del TP (testnet).** Para el trabajo final del EDP el frontend usa MetaMask como wallet. Es la opción más simple y compatible para demostrar la mecánica de los contratos. *Esta versión NO es apta para usuario final masivo*: requiere instalación de extensión de navegador, manejo de seed phrase y entendimiento mínimo de transacciones. Sirve para defensa académica y para que el tribunal verifique que los contratos funcionan, no para que la jubilada de 72 años la use.

**Etapa 2 — Piloto controlado (testnet pública con onboarding asistido).** Antes de cualquier despliegue a mainnet, se prueba con un grupo acotado de ciudadanos voluntarios (idealmente 500-1000 vecinos) que vienen a una sede municipal para hacer el KYC y el setup. En esa sede:
- El funcionario verifica DNI y domicilio (KYC documental clásico).
- Asiste en la instalación de una wallet sencilla, idealmente una wallet móvil (Rainbow, Argent, Coinbase Wallet) en lugar de MetaMask, que tiene mejor UX en celular.
- Le emite el SBT y le explica el flujo básico en cinco minutos.
- Le entrega instructivo impreso, mail de soporte y número de WhatsApp del Municipio para consultas.
- *Opción de custodia institucional asistida:* para ciudadanos que explícitamente no quieren custodiar su propia wallet (mayores, personas con baja alfabetización digital), el Municipio puede ofrecer una custodia asistida bajo un esquema legal claro, donde la wallet vive en infraestructura municipal pero las decisiones de asignación siguen siendo del ciudadano, autenticadas por DNI + PIN. Esto rompe parcialmente la descentralización pura, pero es honesto reconocer que la inclusión digital tiene este trade-off.

**Etapa 3 — Producción masiva (v2, con account abstraction).** Cuando el sistema escale a uso masivo, el frontend migra a un esquema de account abstraction (ERC-4337) con login social. El ciudadano se registra con email o DNI, sin saber que tiene una wallet. La wallet existe en infraestructura del usuario (smart contract wallet), pero su gestión está abstraída: recuperación social, ausencia de seed phrase, gas patrocinado por el Municipio o por terceros. Es la experiencia que tiene hoy un usuario de WorldCoin o Coinbase Smart Wallet. *En esta etapa el sistema es indistinguible de una app bancaria moderna desde el punto de vista del usuario.*

### El trade-off reconocido

Hay tensión real entre dos principios:

- **Descentralización pura.** Cada ciudadano custodia su propia clave, tiene control total, nadie puede actuar en su nombre. Es la promesa filosófica de Web3.
- **Accesibilidad masiva.** Un sistema cívico tiene que poder usarlo cualquier ciudadano, incluyendo jubilados, personas con baja alfabetización digital, ciudadanos sin smartphone propio.

Estos principios entran en conflicto. Una jubilada de 72 años no va a custodiar correctamente una seed phrase de 12 palabras. Si insistimos en descentralización pura, la excluimos del sistema. Si flexibilizamos con custodia asistida, perdemos algo de descentralización pura pero la incluimos.

La decisión del proyecto, declarada explícitamente, es **priorizar inclusión sobre pureza ideológica**: ofrecer múltiples niveles de custodia según preferencia y capacidad del ciudadano, con default razonable (wallet propia con asistencia) y opciones para ambos extremos (custodia total propia para el usuario técnico, custodia institucional asistida para el ciudadano que la prefiera). Esto se construye sobre cuentas con esquemas de social recovery o smart contract wallets, no sobre custodia bancaria tradicional. La trazabilidad de cada acción sigue siendo on-chain, independientemente de qué esquema de custodia tenga el ciudadano.

### Qué requisitos técnicos tiene el ciudadano en cada etapa

| Etapa | Requisitos técnicos del ciudadano | Asistencia provista | Apto para |
|---|---|---|---|
| MVP del TP (testnet) | Saber instalar MetaMask, entender seed phrase, manejar testnet | Documentación del repo | Tribunal académico, evaluadores técnicos |
| Piloto controlado | Tener smartphone, ir presencialmente al Municipio | KYC + setup asistido + soporte WhatsApp | Vecinos voluntarios alfabetizados digitalmente |
| Producción masiva (v2) | Saber usar una app del celular (homebanking, mensajería, redes) | Onboarding self-service + soporte municipal | Cualquier ciudadano adulto, incluyendo no técnicos |

**Conclusión honesta.** El MVP que entregamos en este TP NO es apto para usuario final masivo, y conviene declararlo. Es apto para demostrar que la arquitectura funciona, que los contratos son seguros, que las reglas ejecutan correctamente. La accesibilidad masiva no es un problema de contratos (los contratos están bien) sino de frontend, y la solución a ese problema está bien identificada en el roadmap a v2 con account abstraction. Vender el MVP como si la jubilada pudiera usarlo mañana sería deshonesto. Reconocer la brecha y mostrar el plan para cerrarla es lo correcto.

---

## 2. Problema

En la mayoría de los municipios argentinos la ejecución del presupuesto vive en un agujero negro de confianza. El ciudadano paga ABL, patentes, tasas de habilitación y derechos varios, pero no tiene canal operativo para saber qué se hizo con ese dinero ni para incidir en su destino, más allá del voto cada cuatro años.

Los presupuestos participativos clásicos — herederos de Porto Alegre 1989 — existen en varios municipios argentinos pero arrastran tres limitaciones estructurales:

- Opacidad en la ejecución una vez aprobado el proyecto.
- Bajo poder asignativo real (suelen operar sobre 1-3% del presupuesto).
- Fricción participativa alta (votación presencial, plataformas con integridad no verificable, catálogos curados verticalmente).

Los portales de transparencia tradicionales son repositorios pasivos que el propio Municipio publica, valida y puede modificar silenciosamente entre gestiones. Las plataformas de presupuesto participativo tipo Decidim o Consul son excelentes para deliberación pero no resuelven la trazabilidad de la ejecución: una vez votado el proyecto, el seguimiento depende del mismo actor que ejecuta.

El problema afecta a tres grupos distintos: el contribuyente activo (paga y percibe despilfarro sin poder probarlo), el vecino no contribuyente (recibe servicios pero queda fuera del canal de incidencia), y la propia gestión municipal de buena fe (sin mecanismo barato y creíble para probar buena ejecución).

Este problema se beneficia específicamente del ecosistema Ethereum por tres ganchos concretos: inmutabilidad del registro presupuestario, liberación condicionada por reglas verificables sin actor único confiable, y padrón participativo persistente vía SBT independiente de cambios de gestión.

---

## 3. Usuarios y actores involucrados

| Actor | Necesidad | Beneficio |
|---|---|---|
| **Ciudadano contribuyente** | Saber qué se hace con su aporte y poder incidir parcialmente | Poder asignativo directo sobre 2% del aporte propio + cuota igualitaria comunitaria + trazabilidad verificable |
| **Ciudadano no contribuyente** | Participar en decisiones presupuestarias sobre servicios que usa | Incidencia presupuestaria nueva via Pool B igualitario + acceso al dashboard de trazabilidad |
| **Concejo Deliberante** | Mantener rol institucional en sistema de mayor participación directa | Pista institucional propia + validación de factibilidad técnico-legal + firma en multisig |
| **Ejecutivo Municipal** | Demostrar buena gestión sin costo de auditoría externa permanente | Transparencia creíble + reducción de costo político + diferenciación nacional |
| **Auditor ciudadano electo** | Capacidad operativa real de control, no figurativa | Rol institucional reconocido + voz directa en el control + mandato semestral |

Actores fuera de la dApp pero parte del ecosistema: proveedores de obra (contratistas), sistema fiscal del Municipio (Rentas, base de contribuyentes), periodistas, organizaciones cívicas, investigadores y oposición política como consumidores del dashboard público.

---

## 4. Solución propuesta

Una dApp municipal que opera dos circuitos integrados sobre la misma capa de identidad ciudadana.

**Circuito 1: Trazabilidad pública del 100% del presupuesto ejecutado.** Lectura abierta, sin login, sin SBT. Cualquier persona puede consultar en tiempo real qué se gastó, en qué partida y con qué validación. Datos agregados, no nominales.

**Circuito 2: Participación ciudadana directa sobre dos pools paralelos.**

- **Pool A — Individual Asignable.** Cuota de cada contribuyente = 2% de sus propios impuestos municipales pagados. Asigna esa cuota porcentualmente entre uno o N proyectos sectoriales/barriales/de causa del catálogo, sumando 100%. Asignar es el destino, no hay votación adicional. Inspiración: 8x1000 italiano (1985).
- **Pool B — Comunitario Igualitario.** El Municipio aporta un 2% adicional del presupuesto recaudado. Se divide en cuotas iguales entre todos los ciudadanos verificados (contribuyentes o no). Cada uno asigna a proyectos de obra pública/infraestructura/espacios comunes. Asignar = votar. Inspiración: Porto Alegre (1989).

Los proyectos se originan en dos pistas: ciudadana (cualquier titular de SBT puede proponer con depósito reembolsable y avales mínimos; el Concejo valida factibilidad por silencio positivo con timelock) e institucional (Concejo y Ejecutivo proponen proyectos técnicos complejos). Cada proyecto se etiqueta como financiable por Pool A, Pool B o ambos.

**Modelo de ejecución "todo o nada".** Cada proyecto declara umbral mínimo y plazo. Si alcanza el umbral, queda en estado "financiado" y se libera via multisig 2-de-3. Si no alcanza, devolución proporcional automática a los asignadores (Pull-over-Push). Las cuotas no asignadas caducan al Pool B del período siguiente. Período mensual, ventana de modificación libre durante los 28 días.

**Identidad ciudadana.** Soulbound Token (ERC-721 no transferible) "Ciudadano de Tres de Febrero", emitido por el Municipio tras KYC off-chain (DNI + domicilio). Metadata: estado de contribuyente (booleano) y rango escalonado de aporte (no monto exacto, para preservar privacidad).

**Multisig 2-de-3 para liberación de fondos.** Tres firmantes: auditor ciudadano electo (mandato semestral, votación on-chain entre titulares de SBT), Ejecutivo Municipal, Concejo Deliberante. Cualquier combinación de dos firmas libera fondos.

---

## 5. ¿Por qué Ethereum?

El sistema involucra tres actores institucionales con incentivos parcialmente opuestos (Ejecutivo, Concejo, ciudadanía organizada via auditor electo) y un universo masivo de ciudadanos que no se conocen entre sí. Ningún actor único es confiable por construcción para custodiar el registro de ejecución ni para liberar fondos. Una base de datos centralizada — aunque la administrara un tercero "neutral" — reintroduce el problema de confianza en otro nodo. Ethereum elimina la necesidad de elegir custodio porque la red es el custodio.

Cinco dimensiones concretas justifican la elección:

- **Inmutabilidad y trazabilidad.** Un asiento de ejecución on-chain queda asentado de manera verificable y no puede borrarse ni reescribirse en la próxima gestión.
- **Automatización vía smart contracts.** Devolución proporcional, caducidad de cuotas, liberación condicionada a multisig ejecutan sin discrecionalidad administrativa.
- **Identidad persistente.** El SBT no depende del backend municipal ni puede manipularse entre gestiones.
- **Reducción de intermediarios.** El proceso clásico requiere múltiples pasos donde la información puede modificarse o perderse; la dApp colapsa la cadena a contribuyente → contrato → liberación verificable.
- **Stack tokenizado existente.** ERC-721 con override de transferencia + OpenZeppelin + IPFS resuelven las primitivas necesarias sin reinventar.

Las siguientes partes deben seguir off-chain por diseño: KYC ciudadano (verificación documental con DNI), aporte fiscal individual exacto (privacidad), validación física de obras (inspección territorial material), recaudación fiscal real (SIAF provincial), expedientes administrativos completos.

Si alguien plantea "esto se podría hacer con Postgres + firma digital del Municipio + portal de transparencia", la respuesta honesta es: técnicamente sí, pero entonces la integridad del registro vuelve a depender del Municipio, que es exactamente el actor que el sistema busca dejar de tener que confiar ciegamente. Ese es el corazón del argumento.

---

## 5.1 ¿Y si lo administra un ente neutral en lugar de blockchain?

Es la objeción más fuerte que el sistema tiene que responder, y conviene tenerla afilada porque cualquier tribunal de derecho público o ciencia política la va a plantear en los primeros minutos: *"¿Por qué no que esto lo administre el Tribunal de Cuentas Municipal, la Defensoría del Pueblo, una ONG como ACIJ o Poder Ciudadano, o un consorcio universitario?"*

La respuesta tiene tres capas y vale ordenarlas:

**Primera capa: un ente neutral sigue siendo un nodo único de confianza.** Tribunales de Cuentas argentinos han sido históricamente capturados políticamente, intervenidos, vaciados de presupuesto o reformados por la gestión de turno. Defensorías del Pueblo provinciales han pasado años sin titular designado por bloqueo legislativo. ONGs reciben donaciones de actores con intereses, y aunque operen de buena fe pueden ser presionadas o desfinanciadas. Universidades públicas dependen de presupuesto nacional o provincial que se puede recortar selectivamente. *No existe en Argentina ningún ente neutral que pueda sostener una infraestructura crítica de transparencia durante 20 años sin riesgo de captura o desfinanciamiento.* La descentralización de Ethereum no es "este ente vs ese ente"; es la eliminación estructural de la necesidad de elegir uno.

**Segunda capa: costo operativo asimétrico.** Mantener un portal de transparencia gestionado por un ente externo requiere financiar permanentemente a ese ente: presupuesto anual, personal técnico, infraestructura, auditorías de seguridad, certificaciones. Un cálculo conservador para algo equivalente al sistema propuesto rondaría los 200-400 millones de pesos anuales solo en operación del ente custodio, sin contar el costo político de defender ese presupuesto cada ejercicio. En L2 (Arbitrum, Optimism, Base) el costo total de operación del sistema es de fracciones de centavo de dólar por transacción, sin personal técnico custodio. Lo que cuesta plata es el onboarding (KYC presencial para emitir SBTs), no la operación del registro. La red provee la custodia y la verificabilidad como bien público.

**Tercera capa: un ente neutral puede mentir o equivocarse de buena fe y nadie lo sabría.** Si un Tribunal de Cuentas administra una base de datos de ejecución presupuestaria, los ciudadanos confían en lo que ese Tribunal publica. Si el Tribunal modifica un asiento — por error, por presión política, por bug en el software — la modificación no es detectable por un tercero, salvo que ese tercero tenga acceso a auditoría completa, lo cual es excepcional. En blockchain, cualquier persona con la dirección del contrato puede verificar el estado actual e histórico contra la red, sin pedir permiso ni acceso a la auditoría del ente. La verificabilidad pasa de "confío en el auditor" a "yo mismo puedo auditar en 30 segundos desde el explorador de bloques".

**Síntesis.** El proyecto no usa blockchain porque sea "moderno" ni porque "esté de moda". Lo usa porque resuelve estructuralmente tres problemas que ningún ente neutral resuelve sin reintroducir riesgo: persistencia entre gestiones políticas adversas, costo marginal cercano a cero, y verificabilidad sin permiso por cualquier tercero. La elección es deliberada y, conviene aclararlo, descartable: si en cinco años aparece una arquitectura mejor para resolver estos tres problemas, el sistema debería migrar. Blockchain es la herramienta, no el fin.

---

## 5.2 Criterio explícito: qué va on-chain y qué no

Para hacer visible que el uso de blockchain no es por aplicación ciega sino por criterio, conviene declarar la regla de decisión que ordena todo el diseño:

**Algo va on-chain si y solo si cumple al menos uno de estos cuatro requisitos:**

1. **Persistencia entre gestiones.** Datos o estado que deben sobrevivir cambios políticos sin posibilidad de borrado o reescritura (padrón de SBTs, historial de ejecución, asignaciones registradas).
2. **Verificabilidad sin permiso.** Información que cualquier tercero debe poder auditar sin pedir acceso al operador (montos asignados por proyecto, firmas de liberación, devoluciones realizadas).
3. **Custodia de fondos públicos.** Plata que no puede depender de la voluntad de un solo actor para moverse (Pool A, Pool B, fondos custodiados de proyectos financiados, devoluciones pendientes).
4. **Ejecución automática de reglas.** Lógica que debe correr sin discrecionalidad administrativa (caducidad de cuotas, evaluación de umbrales, devoluciones proporcionales, cambio de estado de proyectos).

**Algo NO va on-chain si cae en cualquiera de estas categorías:**

- *Requiere privacidad estricta.* Aporte fiscal individual exacto, KYC documental, datos personales sensibles.
- *Requiere validación humana material.* Inspección de obra, contratación de proveedor, atención al ciudadano.
- *Tiene alta variabilidad o tamaño no acotado.* Descripciones largas, fotos, planos técnicos (esto va a IPFS, con solo el hash on-chain).
- *Puede operarse con un actor confiable razonable sin riesgo crítico.* Cobranza de impuestos, sistema documental administrativo, gestión interna del Municipio.

**Aplicación del criterio al sistema:**

| Componente | Decisión | Criterio aplicado |
|---|---|---|
| Padrón de SBTs | On-chain | Persistencia + verificabilidad |
| KYC documental (DNI, domicilio) | Off-chain | Privacidad estricta |
| Catálogo de proyectos (estado y montos) | On-chain | Custodia + ejecución automática |
| Descripción larga y fotos de proyectos | Off-chain (IPFS, hash on-chain) | Tamaño no acotado |
| Aporte fiscal individual exacto | Off-chain | Privacidad estricta |
| Cuota asignable mensual (rango escalonado) | On-chain | Verificabilidad |
| Asignaciones de ciudadanos | On-chain | Verificabilidad + custodia |
| Fondos de Pool A y Pool B | On-chain | Custodia + ejecución automática |
| Firmas de liberación del multisig | On-chain | Verificabilidad |
| Inspección física de obras | Off-chain | Validación humana material |
| Cobranza real de impuestos | Off-chain | Operable con actor confiable (Rentas) |
| Expedientes administrativos completos | Off-chain (hash on-chain como anclaje) | Tamaño no acotado |
| Comunicación entre actores (chat, notif.) | Off-chain | No requiere persistencia ni verificabilidad |

**Lo que deliberadamente NO incluimos, como evidencia de criterio:**

- **No hay token de gobernanza propio.** El auditor se elige por votación 1 SBT = 1 voto. No necesitamos otro token aparte. Crear uno habría introducido complejidad innecesaria y un vector especulativo.
- **No hay yield ni staking sobre los fondos custodiados.** Tentación financiera fuerte, decisión consciente de rechazarla. Los fondos públicos no se exponen a riesgo DeFi.
- **No hay DAO completa.** El sistema mantiene gobernanza institucional (Concejo, Ejecutivo, auditor electo) con instrumentación on-chain, pero no pretende reemplazar al Estado por una DAO. El Estado municipal sigue siendo el actor político central.
- **No hay NFT por proyecto, por hito ni por participación.** Tentación de gamificar la participación cívica; la rechazamos porque convierte un sistema de política pública en un producto de marketing.
- **No hay cross-chain ni puentes.** El sistema vive en una sola red. Operar en múltiples cadenas habría sumado complejidad sin valor para el caso de uso.
- **No hay upgradeability vía proxy en el MVP.** Decisión consciente: contratos no upgradeables para reducir superficie de ataque y aumentar inmutabilidad real. La upgradeability se considera para v2 con timelock y multisig institucional.
- **No hay oracle automático de validación de obras (IoT, satélites) en MVP.** Sería tecnología por la tecnología; la inspección humana es más confiable hoy.

Este es el criterio. Cada decisión del documento se puede mapear contra él. Si algo del diseño no encaja, el diseño está mal, no el criterio.

---

## 6. Flujo de funcionamiento

**Apertura del período (día 1 del mes).** El Ejecutivo, vía multisig, publica on-chain: recaudación agregada del mes anterior, cuota personal disponible del Pool A por cada wallet con SBT (rango escalonado), monto del Pool B comunitario y cuota igualitaria resultante. Queda activo el catálogo de proyectos vigentes.

**Asignación ciudadana (días 1 a 28).** Cada titular de SBT entra a la dApp, ve sus dos cuotas y el catálogo. En Pool A reparte porcentualmente entre proyectos sectoriales. En Pool B reparte entre proyectos de obra pública. Modificación libre durante el período. Solo el agregado por proyecto es público; las asignaciones individuales son pseudoanónimas.

**Proposición continua de proyectos.** Pista ciudadana (titular de SBT propone con depósito reembolsable y avales mínimos; el Concejo valida por silencio positivo con timelock) y Pista institucional (Concejo y Ejecutivo proponen técnicos sin depósito).

**Cierre del período (día 28-30).** Por cada proyecto: si alcanzó umbral, pasa a "financiado" y queda custodiado esperando firma multisig; si no, "fallido" y devolución proporcional Pull-over-Push. Cuotas no asignadas caducan al Pool B del período siguiente.

**Ejecución y liberación (período siguiente, paralelo).** El proveedor ejecuta la obra. Cuando está completa, los tres firmantes inspeccionan materialmente; dos firmas liberan los fondos. Si vence plazo extendido sin firma, vuelven al circuito de devolución.

**Elección del auditor (semestral).** Ventana de votación on-chain entre titulares de SBT. Cualquier ciudadano con SBT puede postularse. Mandato semestral sin reelección inmediata.

**Trazabilidad pública (continua).** Dashboard de lectura abierta, sin wallet ni SBT, con datos agregados de ejecución.

---

## 6.1 Un mes en la vida de cada actor

Para que se entienda cómo se vive el sistema desde adentro, vale recorrer un mes típico desde la perspectiva de cada participante.

### Martín, contribuyente activo (35 años, comerciante)

Martín tiene un local sobre Avenida San Martín en Caseros. Paga ABL, tasa de habilitación comercial y patente del vehículo. Hace cuatro meses fue a la sede municipal a hacer el trámite de identidad digital (DNI + comprobante de domicilio), le explicaron cómo instalar una wallet en el celular, y recibió su SBT "Ciudadano de Tres de Febrero".

- **Día 2 del mes.** Le llega notificación push: "Tu cuota del mes está disponible: $4.800 en Pool A, $3.300 en Pool B". Entra a la dApp.
- **Día 2.** Revisa el catálogo. Hay 47 proyectos vigentes. Le interesa especialmente "Refacción del Club Barrial Libertador" (donde juegan sus hijos al fútbol) y "Reductores de velocidad en calles internas de Caseros" (cerca de la escuela).
- **Día 3.** Asigna su Pool A así: 60% al Club Libertador, 40% a un programa de becas deportivas que descubrió leyendo el catálogo. Asigna su Pool B completo a los reductores de velocidad.
- **Día 18.** Recibe notificación: "Refacción del Club Libertador alcanzó el 82% del umbral. Faltan 4 días." Entra a la dApp y reasigna: pasa 30% del programa de becas al Club Libertador para empujarlo arriba del umbral.
- **Día 30.** Cierra el período. El Club Libertador quedó financiado. Los reductores de velocidad no llegaron al umbral. Los fondos que había asignado a los reductores se le devuelven automáticamente cuando los reclama desde la dApp. Nota: como dejó un 10% sin reasignar al final, ese remanente caduca al Pool B del próximo mes.
- **Mes siguiente.** Inspectores municipales pasan por el Club Libertador, sacan fotos, confirman avance. El auditor electo y el representante del Ejecutivo firman la liberación. La plata se transfiere al contratista. Martín ve la operación en el dashboard.

### Susana, jubilada no contribuyente (72 años, vecina de Pablo Podestá)

Susana cobra jubilación mínima, vive en una casa que está a nombre de su hijo y no tiene patente porque no maneja. No paga impuestos municipales, pero usa el centro de salud, transita por las calles, depende del alumbrado público. En el sistema viejo de presupuesto participativo nunca pudo opinar, porque exigían comprobante de pago. Ahora sí.

- **Día 2.** Le llega notificación, igual que a Martín. Su cuota Pool A es cero (no aporta), pero su cuota Pool B es $3.300, idéntica a la de Martín.
- **Día 5.** Va a la sede del Centro de Jubilados, donde el Municipio puso una tablet con asistencia para vecinos mayores. Asigna su Pool B al proyecto "Rampas de accesibilidad en cuatro plazas de Pablo Podestá".
- **Día 30.** El proyecto alcanzó el umbral. Susana no hizo nada más, pero su cuota participó en una decisión real.
- **Dos meses después.** Las rampas están instaladas. Susana las ve cuando pasa por la plaza. En el dashboard público puede verificar cuánto costaron y cuándo se liberó la plata. Su nieta le muestra la transacción en el celular.

### El Concejo Deliberante (24 concejales, distintos bloques)

El Concejo mantiene su rol como cuerpo legislativo del Municipio. En el nuevo sistema tiene dos funciones operativas concretas:

- **Validación de factibilidad técnico-legal de propuestas ciudadanas.** Cada mes le llegan entre 5 y 15 propuestas ciudadanas que pasaron el umbral de avales. La comisión correspondiente revisa: ¿es legal lo que se propone? ¿es técnicamente realizable? ¿está dentro de las competencias municipales? Tiene 7 días para responder. Si no responde, se aprueba por silencio positivo.
- **Pista institucional propia.** Cuando hay obras complejas que requieren conocimiento técnico que el vecino promedio no tiene (red cloacal, repavimentación troncal, semaforización inteligente), el Concejo o el Ejecutivo las proponen directamente.
- **Firma en multisig de liberación.** Un concejal designado por el cuerpo firma la liberación de fondos cuando los proyectos están ejecutados, junto al auditor electo y el representante del Ejecutivo.

El Concejo no pierde poder político. Mantiene control sobre las obras técnicas complejas (que son las más caras) y sobre la validación legal de todo lo que entra al catálogo. Lo que cede es la microdecisión sobre proyectos chicos sectoriales, que pasa al vecino.

### El Ejecutivo Municipal (Intendencia y Secretaría de Hacienda)

El Ejecutivo opera la pieza técnica más crítica del sistema: el oráculo fiscal. Cada mes, la Secretaría de Hacienda toma los datos de recaudación de Rentas Municipales, los procesa, y publica on-chain tres cosas: cuánto se recaudó en total, cuánta cuota tiene cada vecino verificado en Pool A (rango escalonado, no monto exacto), cuánto suma el Pool B comunitario.

Esto se firma con multisig interna del Ejecutivo (Intendente + Secretario de Hacienda + un funcionario técnico). No es una sola persona la que aprieta el botón, lo cual reduce el riesgo de error y de manipulación interna.

Adicionalmente, el Ejecutivo ejecuta materialmente los proyectos aprobados: contrata proveedores por los canales habituales, supervisa avance, coordina inspección. El cambio respecto del sistema viejo es que la liberación de fondos al proveedor depende de la firma multisig 2-de-3, no de la sola voluntad del Intendente.

### Pablo, auditor ciudadano electo (vecino de Loma Hermosa, 41 años, contador)

Pablo es contador y vive en Loma Hermosa. Se postuló al rol de auditor ciudadano electo y ganó la votación on-chain con 3.200 votos de titulares de SBT. Su mandato es de seis meses sin reelección inmediata. Recibe una asignación mensual modesta por la dedicación.

- **Cada semana.** Recibe en la dApp la lista de proyectos que pasaron a estado "ejecutado" y esperan firma de liberación.
- **Lunes a viernes.** Sale al territorio. Visita las obras, saca fotos, habla con vecinos del lugar, verifica que la obra esté efectivamente hecha y no sea humo. Sube las fotos a IPFS como evidencia.
- **Viernes.** Si la obra está bien, firma la liberación en el multisig. La plata se transfiere al proveedor. Si la obra no está bien o no está hecha, no firma, y deja constancia pública del motivo.
- **Cualquier momento.** Si detecta algo irregular puede activar el Circuit Breaker (Pausable) y pausar temporalmente el contrato hasta esclarecer.

Pablo no es funcionario municipal. No depende del Intendente. Su único respaldo es el voto de 3.200 vecinos que lo eligieron. Y los próximos seis meses define su reputación cívica.

### Carolina, periodista local

Carolina escribe para un medio digital de Tres de Febrero. No tiene SBT (no participa, escribe). Pero usa el dashboard de trazabilidad como insumo permanente.

- **Lunes.** Entra al dashboard, ve los proyectos del mes anterior, el ranking de los más financiados, los que fallaron umbral. Escribe una nota: "Los vecinos eligieron seguridad vial por encima de obras culturales este mes".
- **Cuando hay sospecha.** Si un proyecto se libera por monto muy alto, puede verificar la firma multisig: cuál fue el auditor que firmó, en qué fecha, qué fotos quedaron como evidencia. Si algo le resulta raro, lo publica.
- **Trimestralmente.** Hace cruce entre lo publicado on-chain y los expedientes administrativos pedidos por acceso a la información. Si los hashes coinciden, prueba que no hay manipulación.

Carolina representa una pieza del ecosistema que no estaba prevista en los presupuestos participativos clásicos: la auditoría informal continua. Antes la única forma de fiscalizar era pedir expedientes y armar denuncias caso a caso. Ahora tiene flujo continuo de datos abiertos verificables.

---

## 6.2 Cómo se conecta el ecosistema

El sistema no es una pieza aislada. Articula seis actores y tres sistemas externos que conviene visualizar juntos.

### Las conexiones operativas

```
        +-----------------+
        |  Rentas         |
        |  Municipales    |
        |  (off-chain)    |
        +--------+--------+
                 |
                 | Recaudación
                 | mensual
                 v
        +-----------------+         +------------------+
        |  Ejecutivo      |  firma  |  Oráculo Fiscal  |
        |  Municipal      |-------->|   (on-chain)     |
        +--------+--------+         +---------+--------+
                 |                            |
                 |                            | Publica cuotas
                 | Ejecuta obras              v
                 |                  +------------------+
                 |                  |  Pool A + Pool B |
                 |                  |   (contratos)    |
                 |                  +---------+--------+
                 |                            ^
                 |                            | Asignan cuotas
                 |                  +---------+--------+
                 |                  |   Ciudadanos     |
                 |                  |   con SBT        |
                 |                  +---------+--------+
                 |                            ^
                 |                            | Emite SBT
                 |                  +---------+--------+
                 |                  |  Municipio       |
                 |                  |  (KYC off-chain) |
                 |                  +------------------+
                 |
                 v
        +-----------------+
        |  Proveedor      |<------+
        |  de obra        |       |
        +--------+--------+       | Libera fondos
                 |                | si 2 de 3 firman
                 | Ejecuta        |
                 v                |
        +-----------------+    +--+----------------+
        |  Obra en        |--->|  Multisig 2-de-3  |
        |  territorio     |    |  Auditor electo + |
        +-----------------+    |  Ejecutivo +      |
                 ^             |  Concejo          |
                 |             +-------------------+
                 |
        +-----------------+
        |  Inspección     |
        |  física         |
        +-----------------+
```

### Las cuatro capas del ecosistema

**Capa fiscal (off-chain).** Es el motor económico. Rentas Municipales sigue cobrando impuestos por los canales habituales. AFIP, ARBA, el sistema bancario, el contribuyente que paga en la sucursal o por home banking. Nada de esto cambia. El sistema no toca el cobro real.

**Capa de identidad (mixta).** El Municipio mantiene una base de datos off-chain con la verificación documental (DNI, domicilio, situación fiscal). Esa base es la que decide quién recibe SBT. Una vez emitido el SBT, la identidad es on-chain y persistente. El KYC es off-chain por privacidad y por requerimiento normativo; el SBT es on-chain por persistencia y verificabilidad.

**Capa de decisión y custodia (on-chain).** Los contratos de Pool A, Pool B y catálogo de proyectos viven enteramente on-chain. Las asignaciones son transacciones. Los fondos quedan custodiados en los contratos. Las reglas de cierre, devolución y caducidad ejecutan solas. El Municipio no puede tocar fondos custodiados sin pasar por las reglas del contrato.

**Capa de ejecución material (off-chain).** Cuando un proyecto se financia y pasa a ejecución, el mundo real toma el control. El proveedor construye, la inspección verifica, los firmantes del multisig recorren el territorio. La blockchain registra el resultado pero no lo produce. Esta es la separación más importante del sistema y la que conviene comunicar claro: blockchain organiza, custodia y verifica; no construye obras.

### Los flujos de información que se cruzan

- **De Rentas al Oráculo:** datos agregados de recaudación. Mensual.
- **Del Oráculo a los Pools:** cuotas individuales y comunitarias. Mensual.
- **De los Ciudadanos a los Pools:** asignaciones porcentuales. Continuo durante 28 días.
- **De los Pools al Multisig:** orden de liberación cuando proyecto cumple umbral.
- **Del Multisig al Proveedor:** transferencia de stablecoin cuando dos de tres firman.
- **De la Inspección al Multisig:** veredicto humano que habilita la firma.
- **De todos los contratos al Dashboard:** datos públicos para lectura abierta.
- **De la Justicia o el Concejo al Sistema:** capacidad de pausar (Circuit Breaker) si hay incidente.

### Lo que se gana al verlo como ecosistema

Si pensamos el proyecto solo como "una dApp" perdemos la mitad del valor. La fuerza está en que articula sistemas que hoy viven separados y desconectados: el sistema fiscal del Municipio, el padrón ciudadano, la participación, la ejecución de obras, la auditoría informal. Ninguno se reemplaza; todos se conectan a una capa de verificabilidad común.

---

## 6.3 Un ejemplo con números reales

Para aterrizar el sistema en algo tangible, va un ejemplo ilustrativo con cifras de referencia. Los montos exactos dependerán del presupuesto real del Municipio en cada período, pero el orden de magnitud y la mecánica son los que se proponen.

### Supuestos del ejemplo

- Tres de Febrero, ~360.000 habitantes.
- Población adulta verificada con SBT en el primer año de operación: 50.000 ciudadanos (objetivo realista de onboarding gradual).
- Presupuesto municipal hipotético: 12.000 millones de pesos por mes (cifra ilustrativa que combina recaudación municipal, coparticipación provincial y nacional).
- Pool A: 2% del aporte propio de cada contribuyente. Asignable individualmente.
- Pool B: 2% del presupuesto recaudado total. Distribuido en partes iguales entre los 50.000 SBTs activos.

### Las cuotas resultantes

**Pool A (varía por persona según aporte propio):**

| Perfil | Aporte mensual aproximado | Cuota Pool A asignable |
|---|---|---|
| Comerciante con local | $200.000 | $4.000 |
| Profesional con monotributo | $80.000 | $1.600 |
| Propietario sin actividad comercial (solo ABL) | $40.000 | $800 |
| Jubilado exento | $0 | $0 |

**Pool B (igualitario):**

- Monto total del Pool B en el mes: 2% de 12.000 millones = **240 millones de pesos**.
- Cantidad de SBTs activos: 50.000.
- Cuota Pool B por ciudadano = 240.000.000 / 50.000 = **$4.800 por persona**.

Cada uno de los 50.000 ciudadanos verificados tiene $4.800 para asignar al Pool B, sea contribuyente o no.

### Lo que se moviliza en un mes

- Pool A total (suma de aportes individuales del 2%): aproximadamente **180 millones de pesos** (depende del mix de contribuyentes).
- Pool B total: **240 millones de pesos**.
- Total movilizado mensualmente por ciudadanía: **420 millones de pesos**.
- En un año: **~5.000 millones de pesos** asignados por ciudadanos directamente.

Esto representa aproximadamente el 4% del presupuesto municipal anual destinado a decisión ciudadana directa, con trazabilidad total del 100% del presupuesto en el dashboard público.

### Un proyecto concreto del mes

Tomemos un proyecto del catálogo: **"Refacción del Club Barrial Libertador"**.

- Umbral mínimo: $3.000.000.
- Plazo: 30 días.
- Etiqueta: Pool A (sectorial/causa específica).

Si 1.200 contribuyentes le asignan en promedio $2.500 cada uno, el proyecto junta $3.000.000 exactos. Alcanza umbral, se financia. Pasa a ejecución. En el mes siguiente, el contratista refacciona el club. El auditor electo y un representante institucional inspeccionan, ven que está bien, firman. La plata se transfiere al contratista. Todo queda asentado on-chain.

Si en cambio el proyecto solo junta $2.100.000 (70% del umbral), no alcanza. Los $2.100.000 vuelven proporcionalmente a las wallets de los 1.200 asignadores. Cada uno recibe la devolución cuando la reclama desde la dApp. Los fondos no se pierden, no quedan estancados, no terminan en otro destino discrecional.

### Qué cuesta al Municipio

El sistema **no le cuesta más** al Municipio comparado con el presupuesto participativo tradicional. La plata del Pool A es plata que ya recauda y que de todos modos iba a ejecutarse; lo único que cambia es quién decide su destino dentro de un margen del 2%. La plata del Pool B es un aporte adicional del 2% que el Municipio compromete; equivale a lo que ya destinan municipios comparables al presupuesto participativo clásico.

Los costos operativos del sistema (gas en L2, infraestructura del oráculo, eventual hosting del dashboard) son marginales: en una L2 como Arbitrum u Optimism, cada transacción de asignación cuesta centavos de dólar. El gasto mayor del primer año está en onboarding (KYC presencial para emitir SBTs) y en comunicación, no en tecnología.

---

## 7. MVP

**Dentro del MVP del TP.**

- Contrato SBT "Ciudadano de Tres de Febrero" (ERC-721 no transferible).
- Contrato de catálogo de proyectos con state machine completa.
- Contrato Pool A con asignación porcentual, evaluación al cierre, caducidad al Pool B.
- Contrato Pool B con cuota igualitaria, asignación, evaluación al cierre.
- Contrato de oráculo fiscal simulado (sembrado con datos representativos).
- Contrato de ejecución con multisig 2-de-3 y devolución proporcional Pull-over-Push.
- Contrato de gobernanza del auditor con ventana de votación semestral.
- Frontend mínimo de participación + frontend público de trazabilidad.
- Despliegue en testnet pública (Sepolia o L2 testnet).
- Suite de tests con Hardhat + Chai incluyendo happy path, edge cases y simulación de ataques.

**Fuera del MVP, roadmap v2.** Integración real con sistema fiscal del Municipio. Account abstraction (ERC-4337) para reducir fricción de wallet. Notificaciones. Panel del Concejo con timelock. Panel del auditor con anclaje de fotos a IPFS.

**Fuera del MVP, roadmap v3.** Zero-knowledge proofs para privacidad de aporte individual. Oráculos automáticos de validación de obras (IoT, satelital). Mecanismos cuadráticos opcionales por categoría. Multisig escalada por monto. Replicación a otros municipios bajo contrato madre.

---

## 8. Beneficios

**Para el ciudadano.** Canal de incidencia presupuestaria continuo (mensual, no cuatrienal). Verificación independiente del destino sin depender del Municipio. Poder asignativo directo sobre 2% del aporte propio para el contribuyente. Inclusión efectiva del no contribuyente via Pool B. Reducción del costo cognitivo (una transacción desde el celular reemplaza asistencia presencial).

**Para el Municipio.** Transparencia creíble sin costo de auditoría externa permanente. Reducción del costo político por opacidad. Diferenciación competitiva como primer caso documentado en Argentina. Para el Concejo, mantener rol institucional sin tener que decidir todo. Datos granulares de demanda territorial real.

**Para la ciudadanía no usuaria.** Acceso al dashboard de trazabilidad sin requisitos. Capacidad de auditoría informal continua para periodismo, oposición, ONGs.

**Para el ecosistema cívico argentino.** Primer caso documentado replicable a otros municipios. Demostración de uso público de Ethereum sin token especulativo, sin yield, sin venta pública. Datos abiertos masivos para academia e investigación.

**Eficiencia operativa.** Liberación de fondos por multisig reduce ciclo de firma de expediente a una transacción. Devolución automática elimina fricción del reintegro manual. Caducidad evita plata estacionada sin destino.

No prometemos reducción de corrupción. La trazabilidad on-chain reduce opacidad, lo cual hace la corrupción más visible y costosa, pero no la elimina (sobreprecio en licitación off-chain, captura del auditor electo via clientelismo barrial, entre otros vectores, siguen abiertos).

---

## 9. Riesgos y limitaciones

**Adopción.** Complejidad de wallets (riesgo principal, mitigado parcialmente en MVP con tutoriales y en v2 con account abstraction). Brecha digital (mitigada off-chain con kioscos municipales). Costo de gas (mitigado con despliegue en L2). Educación del usuario en conceptos básicos de Web3.

**Seguridad.** Vulnerabilidades de contratos (mitigadas con OpenZeppelin, patrones del Módulo 3 del EDP y suite de tests del Módulo 5). Captura de wallets ciudadanas (mitigada con SBT no transferible y mecanismo de revocación/reemisión con timelock). Captura del oráculo fiscal (mitigada con multisig del Ejecutivo, publicación verificable, hash de expediente anclado). Captura del auditor electo (mitigada con mandato corto sin reelección; reconocimiento: no resoluble técnicamente, se mitiga con diseño institucional).

**Privacidad.** Reidentificación a partir de patrones de asignación en padrones chicos (mitigación parcial con rango escalonado; real en v3 con ZK proofs). Vinculación wallet-identidad en el KYC del Municipio (riesgo de filtración off-chain, no de la dApp).

**Legales y normativos.** Marco normativo argentino sin legislación específica sobre asignación on-chain (sistema opera como consultivo vinculante por compromiso político, convalidable por ordenanza, pero reversible por gestión entrante). El esquema de Pool A es objetable desde la doctrina de igualdad estricta (Art. 16 CN); el sistema preserva igualdad en Pool B y opera Pool A como facultad de afectación del propio aporte, análoga al 8x1000 italiano. El sistema no viola el principio de unidad de caja del derecho tributario argentino: no se afecta nominalmente el aporte de cada contribuyente sino una porción del presupuesto consolidado asignada por mecanismo consultivo.

**Operativos.** Errores del oráculo simulado (mitigado con Pausable y función de corrección con timelock). Dependencia de la red L2 (mitigado con documentación de contingencia, eventual mirror). Coordinación del multisig (mitigado con regla 2-de-3 y timelock máximo de inacción).

**Gobernanza del propio sistema.** Cambio de gestión hostil que decida derogar (no se blinda técnicamente; se mitiga con base usuaria suficiente). Falta de masa crítica si participan pocos ciudadanos (no resoluble por MVP; depende de estrategia de comunicación y onboarding).

**Limitaciones intrínsecas.** Blockchain no valida realidad off-chain: la firma del multisig prueba que dos de tres firmantes dijeron que sí, no que la obra esté materialmente bien hecha. Inmutabilidad obliga a corregir errores con asiento posterior, no borrando el original.

---

## 10. Próximos pasos (puente a la fase técnica)

La Fase 1 cierra con definiciones conceptuales validadas. La Fase 2 técnica desarrollará:

- **Arquitectura general:** diagrama on-chain/off-chain, stack tecnológico justificado (Solidity ^0.8.20, OpenZeppelin, Hardhat, Ethers.js, IPFS), red de despliegue (testnet o L2 testnet).
- **Diseño de smart contracts:** seis contratos del MVP con variables de estado, structs, mappings, enums, funciones públicas/externas con firmas, modificadores, eventos, custom errors gas-efficient, relación entre contratos via interfaces.
- **Patrones de diseño aplicados:** Checks-Effects-Interactions, Pull-over-Push, Circuit Breaker, Access Restriction, State Machine. Justificación de cada uno.
- **Estándares y librerías:** ERC-721 con override para SBT, ERC-20 para stablecoin operativa, OpenZeppelin AccessControl, ReentrancyGuard, Pausable. Estructura JSON del metadata del SBT en IPFS.
- **Código Solidity:** contratos completos y compilables con SPDX, pragma, NatSpec en funciones públicas y comentarios en español.
- **Setup del proyecto:** estructura de carpetas Hardhat, configuración de redes, scripts de deploy, `.env.example`, comandos de compile/test/deploy/verify.
- **Plan de testing:** tests unitarios por contrato cubriendo happy path, edge cases y simulación de ataques. Invariantes a mantener. Cobertura mínima recomendada.
- **Análisis de seguridad:** repaso explícito de las 12 vulnerabilidades del Módulo 5 marcando aplica/no aplica/mitigada cómo, cerrado con mini test Rekt autoaplicado.
- **Frontend mínimo (opcional):** pantallas clave con funciones de Ethers.js mapeadas a contratos.
- **Roadmap a producción:** qué queda fuera del scope del TP, cómo escala (auditoría externa, multisig institucional, timelock, upgradeability).
- **README final del repo y guion para la defensa oral.**

---

## 11. Glosario simple para lectura no técnica

Términos del documento explicados en una línea, para que cualquier integrante del tribunal académico o cualquier funcionario público pueda leer el documento sin frenarse.

- **Blockchain.** Una base de datos compartida entre miles de computadoras en todo el mundo que nadie controla individualmente; lo que se asienta ahí no puede borrarse.
- **Ethereum.** La red blockchain pública más usada para aplicaciones que ejecutan reglas automáticas (smart contracts).
- **Smart contract.** Un programa que vive en la blockchain y ejecuta reglas por sí solo, sin que un administrador apriete un botón.
- **dApp.** "Aplicación descentralizada". Una app web que usa smart contracts en su back-end en lugar de un servidor tradicional.
- **Wallet.** Aplicación o extensión de navegador que guarda las credenciales del usuario para firmar transacciones (ejemplo: MetaMask).
- **Token.** Un activo digital que vive en la blockchain. Puede representar valor (stablecoin), identidad (SBT), propiedad (NFT) o derechos varios.
- **ERC-20.** El estándar técnico que define cómo se hace un token intercambiable (como una stablecoin).
- **ERC-721.** El estándar que define cómo se hace un token único e identificable (NFT). El SBT es un ERC-721 con la transferencia bloqueada.
- **SBT (Soulbound Token).** Un token que no se puede vender, regalar ni transferir. Acá lo usamos como credencial de ciudadanía.
- **Stablecoin.** Un token cuyo valor está atado a una moneda estable (típicamente el dólar). El sistema opera en stablecoin para evitar volatilidad de precios.
- **Multisig.** Una billetera o contrato que requiere varias firmas para ejecutar una operación (en este sistema, 2 de 3).
- **Oráculo.** El puente que trae datos del mundo real (recaudación fiscal) hacia la blockchain.
- **L2 (Layer 2).** Una red que opera sobre Ethereum y reduce el costo de cada transacción de varios dólares a fracciones de centavo. Ejemplos: Arbitrum, Optimism, Base.
- **Testnet.** Una red de prueba que funciona igual que la real pero usa dinero falso. El MVP se despliega ahí.
- **Mainnet.** La red real, con dinero real. El sistema iría a mainnet recién después de auditoría externa.
- **IPFS.** Un sistema de almacenamiento descentralizado para archivos pesados (fotos, documentos) que no caben on-chain.
- **Gas.** El costo de cada operación en blockchain. En L2 es marginal; en Ethereum mainnet puede ser caro.
- **KYC.** "Know Your Customer". Proceso de verificación de identidad real con documento. Para el SBT lo hace el Municipio off-chain.
- **OpenZeppelin.** La librería de contratos de seguridad más usada del ecosistema. La usamos para todos los módulos críticos.
- **Hardhat.** El entorno de desarrollo estándar para probar y desplegar contratos.
- **Pull-over-Push.** Patrón de diseño: el usuario reclama sus fondos (pull), el contrato no se los empuja (push). Más seguro.
- **Checks-Effects-Interactions.** Patrón de orden interno de una función para evitar ataques de reentrada.
- **Circuit Breaker / Pausable.** Mecanismo de emergencia para pausar el contrato si pasa algo raro.
- **Reentrancy.** Tipo de ataque clásico donde un contrato malicioso llama de vuelta al original antes de que termine de actualizar su estado. Mitigado en el sistema.

---

## 12. Por qué este proyecto importa

Más allá de la defensa académica del TP, conviene cerrar con una mirada honesta de para qué sirve esto.

Argentina arrastra un déficit estructural de confianza institucional. No es opinión: los datos de Latinobarómetro y de encuestas locales lo muestran sostenidamente en mínimos históricos. La política suele responder con discursos. La tecnología cívica, cuando se aplica seriamente, puede responder con infraestructura.

Presupuesto Abierto 3F no resuelve la crisis de confianza. Lo que hace es ofrecer una herramienta concreta para que un Municipio que quiera demostrar buena gestión tenga cómo hacerlo de forma verificable, sin pedirle a nadie que le crea. Y para que un vecino que quiera participar realmente — no votar cada cuatro años y rezar — tenga un canal continuo y trazable para hacerlo.

El sistema no necesita ser perfecto para tener valor. Necesita estar funcionando, ser auditado, ser replicable. Cada municipio que lo adopta y lo sostiene durante una gestión completa baja el costo político de adoptarlo para el siguiente. Eso es lo que hace que herramientas de transparencia como esta crezcan: no por revolución, sino por acumulación silenciosa de casos que funcionan.

El TP final del Ethereum Developer Pack es el primer paso. La Fase 2 baja todo esto a contratos compilables, tests rigurosos y un README defendible. Lo que viene después — auditoría externa, ordenanza municipal, despliegue real — es trabajo que excede al curso pero que el proyecto deja sembrado.

---

**Autor:** [Tu nombre]
**Programa:** Ethereum Developer Pack — ETH Kipu
**Fecha:** Mayo 2026
