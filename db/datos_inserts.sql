--
-- PostgreSQL database dump
--

\restrict 9wabWxcHBNea4XkFQ8jyW8euJgRq2U4NGmFVgWsEreROtHCDPOy7sGno0StnXko

-- Dumped from database version 15.18
-- Dumped by pg_dump version 15.18

-- Started on 2026-07-13 20:06:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3556 (class 0 OID 16472)
-- Dependencies: 218
-- Data for Name: sede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sede (id_sede, nombre, tipo_sede, ciudad, ubicacion, telefono) FROM stdin;
1	CEDI Chinchiná	Planta Producción	Manizales	Vereda el Edén	(606) 874-2100
2	Galapa	Planta Producción	Barranquilla	K.M 2.5 vía Galapa-Baranoa	(605) 319-4500
3	Sopó	Planta Producción	Cundinamarca	Km 3 vía Sopó-Briceño	(601) 862-0300
4	Entrerríos	Planta Producción	Entrerríos	Calle 10 # 8-45 Centro	(604) 862-8200
5	Facatativá	Planta Producción	Facatativá	Cra 4 # 12-60 Zona Industrial	(601) 892-1700
\.


--
-- TOC entry 3558 (class 0 OID 16479)
-- Dependencies: 220
-- Data for Name: bodega; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bodega (id_bodega, nombre_bodega, ubicacion, capacidad, id_sede) FROM stdin;
1	Bodega Materia Prima A	Bloque Norte	5000	1
2	Bodega Producto Terminado	Bloque Sur	8000	1
3	Bodega Insumos Químicos	Bloque Este	2000	1
4	Bodega Refrigerada 1	Bloque Oeste	3500	1
5	Bodega Lácteos Frescos	Nave A	6000	2
6	Bodega Distribución Norte	Nave B	4500	2
7	Bodega Empaque	Nave C	3000	2
8	Bodega Devoluciones	Nave D	1500	2
9	Bodega Central Sopó	Zona 1	7000	3
10	Bodega Fría Sopó	Zona 2	4000	3
11	Bodega Materiales	Zona 3	2500	3
12	Bodega Despachos	Zona 4	3000	3
13	Bodega Leche Cruda	Sector A	5500	4
14	Bodega Derivados	Sector B	4000	4
15	Bodega Almacenamiento 1	Sector C	2000	4
16	Bodega Cuarentena	Sector D	1000	4
17	Bodega Distribución Sur	Módulo 1	6500	5
18	Bodega Logística	Módulo 2	4000	5
19	Bodega Empaque Facatativá	Módulo 3	2500	5
20	Bodega Producto en Tránsito	Módulo 4	3500	5
\.


--
-- TOC entry 3567 (class 0 OID 16543)
-- Dependencies: 229
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cargo (id_cargo, nombre_cargo, descripcion) FROM stdin;
1	Gerente General	Responsable de la dirección estratégica y administración general de la empresa.
2	Gerente de Planta	Dirige y controla las operaciones de producción en la planta asignada.
3	Jefe de Producción	Coordina los procesos productivos garantizando calidad y cumplimiento de metas.
4	Jefe de Calidad	Supervisa los estándares de calidad e inocuidad alimentaria en planta.
5	Jefe de Logística	Gestiona la cadena de suministro, almacenamiento y distribución de productos.
6	Jefe de RRHH	Administra los procesos de selección, contratación y bienestar del personal.
7	Jefe de Mantenimiento	Planifica y supervisa el mantenimiento preventivo y correctivo de equipos.
8	Analista de Calidad	Realiza análisis fisicoquímicos y microbiológicos de productos y materias primas.
9	Analista de Producción	Apoya la planificación y seguimiento de los procesos productivos.
10	Analista de Logística	Gestiona inventarios, despachos y coordinación con transportadores.
11	Analista Financiero	Elabora reportes financieros y apoya la toma de decisiones económicas.
12	Técnico de Mantenimiento	Ejecuta labores de mantenimiento mecánico y eléctrico de equipos industriales.
13	Operario de Producción	Realiza operaciones de manufactura en la línea de producción de lácteos.
14	Operario de Bodega	Controla entradas y salidas de mercancía en las bodegas de la planta.
15	Auxiliar Administrativo	Brinda soporte administrativo a las diferentes áreas de la organización.
16	Conductor Distribuidor	Transporta y entrega productos terminados a clientes y puntos de venta.
17	Asesor Comercial	Gestiona relaciones comerciales y cumplimiento de metas de ventas.
18	Supervisor de Turno	Coordina y controla las actividades del personal operativo en su turno.
19	Médico Ocupacional	Atiende la salud de los trabajadores y gestiona el programa de medicina laboral.
20	Ingeniero de Procesos	Optimiza los procesos productivos mediante análisis técnico e innovación.
\.


--
-- TOC entry 3559 (class 0 OID 16490)
-- Dependencies: 221
-- Data for Name: cuenta_bancaria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuenta_bancaria (id_cuenta, nombre_banco, tipo_cuenta, num_cuenta) FROM stdin;
CTA-0001	Bancolombia	Ahorros	971-4117625
CTA-0002	Banco de Bogotá	Corriente	505-3195773
CTA-0003	AV Villas	Ahorros	261-8351517
CTA-0004	Bancamía	Ahorros	834-6752576
CTA-0005	Banco Agrario	Ahorros	674-1162230
CTA-0006	Davivienda	Corriente	898-7817881
CTA-0007	Nequi	Ahorros	3168722606
CTA-0008	Davivienda	Corriente	282-5453786
CTA-0009	Banco Agrario	Ahorros	472-8235969
CTA-0010	Scotiabank Colpatria	Ahorros	730-6049101
CTA-0011	Banco Popular	Ahorros	195-4940441
CTA-0012	Banco de Bogotá	Ahorros	771-1093026
CTA-0013	Bancamía	Ahorros	873-8425149
CTA-0014	Davivienda	Corriente	340-5558623
CTA-0015	Scotiabank Colpatria	Corriente	888-1327691
CTA-0016	Scotiabank Colpatria	Ahorros	960-8841505
CTA-0017	Nequi	Ahorros	3207360682
CTA-0018	Bancolombia	Ahorros	344-3117636
CTA-0019	Scotiabank Colpatria	Corriente	832-4327421
CTA-0020	Bancolombia	Corriente	942-9224219
CTA-0021	Banco Popular	Ahorros	349-8796514
CTA-0022	Banco Agrario	Ahorros	187-5049282
CTA-0023	Bancamía	Ahorros	584-9907391
CTA-0024	Nequi	Ahorros	3289801946
CTA-0025	Bancolombia	Corriente	580-9031491
CTA-0026	Banco de Bogotá	Ahorros	671-7982241
CTA-0027	Banco Popular	Ahorros	260-5024269
CTA-0028	Banco de Bogotá	Corriente	906-4318855
CTA-0029	Banco Agrario	Ahorros	548-2349590
CTA-0030	Banco Popular	Ahorros	699-8312936
CTA-0031	Nequi	Ahorros	3205234550
CTA-0032	Banco Popular	Ahorros	394-8350368
CTA-0033	Davivienda	Ahorros	610-5896624
CTA-0034	AV Villas	Ahorros	940-1043037
CTA-0035	Scotiabank Colpatria	Ahorros	425-8935224
CTA-0036	BBVA Colombia	Corriente	991-3589751
CTA-0037	Banco Popular	Ahorros	864-2516313
CTA-0038	BBVA Colombia	Ahorros	180-7418028
CTA-0039	Bancamía	Ahorros	754-8118722
CTA-0040	Bancamía	Ahorros	720-9333700
CTA-0041	Banco Popular	Ahorros	865-7970985
CTA-0042	AV Villas	Ahorros	909-7619862
CTA-0043	Banco de Bogotá	Ahorros	750-8789116
CTA-0044	Bancamía	Ahorros	524-2661307
CTA-0045	Banco Popular	Ahorros	225-8628891
CTA-0046	Banco Popular	Ahorros	233-5205279
CTA-0047	Davivienda	Corriente	559-7074006
CTA-0048	Nequi	Ahorros	3122355439
CTA-0049	Davivienda	Ahorros	540-8575834
CTA-0050	Davivienda	Ahorros	542-2620082
CTA-0051	Davivienda	Ahorros	258-9089795
CTA-0052	Banco Popular	Ahorros	284-5584716
CTA-0053	Nequi	Ahorros	3157208460
CTA-0054	Banco Popular	Ahorros	873-9595744
CTA-0055	BBVA Colombia	Corriente	396-6504979
CTA-0056	AV Villas	Ahorros	687-7785090
CTA-0057	Davivienda	Corriente	991-6205543
CTA-0058	Bancamía	Ahorros	878-2264218
CTA-0059	Bancamía	Ahorros	460-9511700
CTA-0060	Bancamía	Ahorros	429-8979730
CTA-0061	Banco Popular	Ahorros	518-6676858
CTA-0062	Scotiabank Colpatria	Ahorros	709-2421349
CTA-0063	Banco de Bogotá	Ahorros	240-3599548
CTA-0064	Bancolombia	Corriente	473-4985095
CTA-0065	Scotiabank Colpatria	Ahorros	936-4350371
CTA-0066	Scotiabank Colpatria	Ahorros	327-8568671
CTA-0067	Bancolombia	Corriente	949-8926478
CTA-0068	Davivienda	Ahorros	344-8043503
CTA-0069	Scotiabank Colpatria	Ahorros	780-2436363
CTA-0070	AV Villas	Ahorros	850-2739191
CTA-0071	Banco de Bogotá	Ahorros	910-4346548
CTA-0072	Scotiabank Colpatria	Corriente	495-6688090
CTA-0073	AV Villas	Ahorros	413-8481225
CTA-0074	BBVA Colombia	Ahorros	246-8351320
CTA-0075	AV Villas	Ahorros	421-5675638
CTA-0076	BBVA Colombia	Ahorros	562-3896693
CTA-0077	Banco de Bogotá	Ahorros	305-3329967
CTA-0078	Scotiabank Colpatria	Ahorros	228-6318841
CTA-0079	Banco Popular	Ahorros	265-6413349
CTA-0080	Bancamía	Ahorros	275-6664316
CTA-0081	Banco Popular	Ahorros	350-7813102
CTA-0082	Banco Agrario	Ahorros	426-5055688
CTA-0083	Nequi	Ahorros	3256176450
CTA-0084	Bancolombia	Ahorros	541-3247055
CTA-0085	Bancamía	Ahorros	231-2622046
CTA-0086	BBVA Colombia	Ahorros	435-6344047
CTA-0087	Banco Popular	Ahorros	711-8962302
CTA-0088	Nequi	Ahorros	3233540594
CTA-0089	Nequi	Ahorros	3276943949
CTA-0090	Banco Agrario	Ahorros	394-3044708
CTA-0091	Banco Agrario	Ahorros	240-2832517
CTA-0092	Banco Agrario	Ahorros	516-8980915
CTA-0093	Nequi	Ahorros	3191628578
CTA-0094	Nequi	Ahorros	3151236293
CTA-0095	Nequi	Ahorros	3171114590
CTA-0096	Scotiabank Colpatria	Corriente	806-2969909
CTA-0097	Bancamía	Ahorros	638-8495187
CTA-0098	Davivienda	Corriente	928-1933413
CTA-0099	Scotiabank Colpatria	Corriente	817-2069713
CTA-0100	AV Villas	Ahorros	282-7594429
CTA-0101	Banco de Bogotá	Ahorros	132-8033690
CTA-0102	BBVA Colombia	Corriente	339-6350316
CTA-0103	Nequi	Ahorros	3217394713
CTA-0104	Scotiabank Colpatria	Corriente	670-9891787
CTA-0105	Davivienda	Ahorros	923-4640933
CTA-0106	Nequi	Ahorros	3195388275
CTA-0107	Bancamía	Ahorros	402-3557039
CTA-0108	Banco Agrario	Ahorros	288-1985360
CTA-0109	Nequi	Ahorros	3109929043
CTA-0110	Banco Agrario	Ahorros	934-6946534
CTA-0111	Bancolombia	Ahorros	819-3875339
CTA-0112	Bancolombia	Ahorros	970-6276177
CTA-0113	Bancolombia	Ahorros	547-4894730
CTA-0114	Bancamía	Ahorros	917-5134741
CTA-0115	BBVA Colombia	Ahorros	291-8230636
CTA-0116	Bancamía	Ahorros	801-7387623
CTA-0117	Nequi	Ahorros	3146111313
CTA-0118	Scotiabank Colpatria	Corriente	398-9237735
CTA-0119	Banco de Bogotá	Corriente	916-5887726
CTA-0120	Scotiabank Colpatria	Ahorros	909-7031903
CTA-0121	Davivienda	Corriente	327-9567725
CTA-0122	Davivienda	Ahorros	456-6232651
CTA-0123	Davivienda	Ahorros	858-5092180
CTA-0124	Scotiabank Colpatria	Corriente	104-4603680
CTA-0125	Bancamía	Ahorros	701-2916496
CTA-0126	Scotiabank Colpatria	Ahorros	688-7437584
CTA-0127	Banco de Bogotá	Corriente	675-9479842
CTA-0128	Nequi	Ahorros	3279569902
CTA-0129	Nequi	Ahorros	3212459332
CTA-0130	AV Villas	Ahorros	711-3824903
CTA-0131	Nequi	Ahorros	3285508325
CTA-0132	AV Villas	Ahorros	914-9966154
CTA-0133	Nequi	Ahorros	3133650523
CTA-0134	Banco Popular	Ahorros	539-2530068
CTA-0135	Banco de Bogotá	Corriente	191-2718442
CTA-0136	BBVA Colombia	Corriente	730-8421969
CTA-0137	Bancamía	Ahorros	897-1450038
CTA-0138	Bancamía	Ahorros	640-1202450
CTA-0139	Bancolombia	Corriente	618-5806467
CTA-0140	Scotiabank Colpatria	Ahorros	417-8339797
CTA-0141	Nequi	Ahorros	3269677559
CTA-0142	Davivienda	Corriente	566-9569497
CTA-0143	Nequi	Ahorros	3223518002
CTA-0144	Banco Agrario	Ahorros	510-2156393
CTA-0145	Bancamía	Ahorros	891-4278644
CTA-0146	Banco Agrario	Ahorros	529-9254874
CTA-0147	Bancamía	Ahorros	545-3192921
CTA-0148	Nequi	Ahorros	3207820148
CTA-0149	Scotiabank Colpatria	Ahorros	793-6013715
CTA-0150	Davivienda	Corriente	932-2258076
CTA-0151	Scotiabank Colpatria	Corriente	276-6938182
CTA-0152	Scotiabank Colpatria	Ahorros	529-4346346
CTA-0153	BBVA Colombia	Ahorros	426-4674549
CTA-0154	Bancamía	Ahorros	463-3914404
CTA-0155	Davivienda	Ahorros	338-4671004
CTA-0156	Banco Agrario	Ahorros	174-7267813
CTA-0157	Bancamía	Ahorros	487-6147639
CTA-0158	BBVA Colombia	Corriente	863-2305378
CTA-0159	Scotiabank Colpatria	Corriente	850-8040612
CTA-0160	Davivienda	Ahorros	450-3853891
CTA-0161	Banco de Bogotá	Corriente	813-5450404
CTA-0162	Davivienda	Ahorros	311-3866088
CTA-0163	Nequi	Ahorros	3188377620
CTA-0164	Scotiabank Colpatria	Corriente	648-8966231
CTA-0165	BBVA Colombia	Ahorros	927-4233407
CTA-0166	Nequi	Ahorros	3299767135
CTA-0167	Bancolombia	Ahorros	382-7760781
CTA-0168	Banco de Bogotá	Ahorros	407-8434162
CTA-0169	Banco Agrario	Ahorros	238-9796063
CTA-0170	Banco de Bogotá	Corriente	600-8484373
CTA-0171	Banco de Bogotá	Ahorros	375-7870390
CTA-0172	AV Villas	Ahorros	358-4660940
CTA-0173	Banco Popular	Ahorros	292-3515396
CTA-0174	AV Villas	Ahorros	802-9969688
CTA-0175	Davivienda	Ahorros	463-4746820
CTA-0176	Davivienda	Corriente	642-6005578
CTA-0177	Nequi	Ahorros	3163828735
CTA-0178	AV Villas	Ahorros	118-1069186
CTA-0179	Banco Agrario	Ahorros	544-3244614
CTA-0180	Banco Popular	Ahorros	708-1804641
CTA-0181	Davivienda	Corriente	737-3301222
CTA-0182	Bancolombia	Corriente	312-9064202
CTA-0183	Bancolombia	Ahorros	932-3931009
CTA-0184	Bancamía	Ahorros	999-2559464
CTA-0185	Scotiabank Colpatria	Corriente	921-8351152
CTA-0186	AV Villas	Ahorros	543-5170429
CTA-0187	AV Villas	Ahorros	151-9504862
CTA-0188	Scotiabank Colpatria	Ahorros	670-1002847
CTA-0189	AV Villas	Ahorros	216-2634721
CTA-0190	Bancamía	Ahorros	292-3025778
CTA-0191	Nequi	Ahorros	3261814896
CTA-0192	Banco de Bogotá	Corriente	507-6752216
CTA-0193	BBVA Colombia	Ahorros	615-6408662
CTA-0194	Bancolombia	Ahorros	304-5479152
CTA-0195	Banco Agrario	Ahorros	343-9571853
CTA-0196	AV Villas	Ahorros	894-4246352
CTA-0197	Nequi	Ahorros	3113578714
CTA-0198	Banco Agrario	Ahorros	194-6862008
CTA-0199	Bancolombia	Corriente	490-2902100
CTA-0200	Banco Agrario	Ahorros	741-2098434
CTA-0201	Bancolombia	Ahorros	913-5226314
CTA-0202	Bancamía	Ahorros	817-2217848
CTA-0203	Banco Agrario	Ahorros	749-3417186
CTA-0204	Banco Agrario	Ahorros	264-4086885
CTA-0205	AV Villas	Ahorros	787-4934808
CTA-0206	Banco de Bogotá	Ahorros	829-8316947
CTA-0207	Banco Popular	Ahorros	844-2265001
CTA-0208	Banco de Bogotá	Corriente	237-8796391
CTA-0209	Nequi	Ahorros	3114671175
CTA-0210	Banco Agrario	Ahorros	954-5417710
CTA-0211	Nequi	Ahorros	3263331501
CTA-0212	Nequi	Ahorros	3163705263
CTA-0213	Scotiabank Colpatria	Ahorros	999-5755579
CTA-0214	Banco de Bogotá	Corriente	494-3218169
CTA-0215	BBVA Colombia	Ahorros	893-8239315
CTA-0216	Bancamía	Ahorros	363-4171246
CTA-0217	Banco Agrario	Ahorros	678-7134489
CTA-0218	Banco de Bogotá	Corriente	901-3714471
CTA-0219	Davivienda	Corriente	327-7221581
CTA-0220	Bancolombia	Ahorros	729-3843451
CTA-0221	Banco Popular	Ahorros	455-5639031
CTA-0222	Banco Agrario	Ahorros	810-8428425
CTA-0223	AV Villas	Ahorros	461-9665502
CTA-0224	BBVA Colombia	Ahorros	610-4349848
CTA-0225	Banco Agrario	Ahorros	968-9091518
CTA-0226	Banco Agrario	Ahorros	503-3932663
CTA-0227	Banco Popular	Ahorros	375-8907862
CTA-0228	Banco de Bogotá	Ahorros	838-5528994
CTA-0229	Nequi	Ahorros	3181800429
CTA-0230	Scotiabank Colpatria	Ahorros	459-4337963
CTA-0231	Scotiabank Colpatria	Corriente	969-2196955
CTA-0232	BBVA Colombia	Ahorros	974-1387572
CTA-0233	Banco Popular	Ahorros	186-7540534
CTA-0234	Nequi	Ahorros	3273970181
CTA-0235	BBVA Colombia	Corriente	110-1001549
CTA-0236	Bancolombia	Corriente	293-7907781
CTA-0237	Banco Agrario	Ahorros	522-4154127
CTA-0238	Davivienda	Corriente	375-3097809
CTA-0239	BBVA Colombia	Ahorros	372-7583744
CTA-0240	Banco de Bogotá	Corriente	498-6236326
CTA-0241	Bancolombia	Ahorros	913-5632190
CTA-0242	Bancolombia	Ahorros	464-3582322
CTA-0243	Nequi	Ahorros	3275944490
CTA-0244	Banco Popular	Ahorros	564-1012076
CTA-0245	Bancamía	Ahorros	430-7875379
CTA-0246	Nequi	Ahorros	3117146400
CTA-0247	Bancolombia	Ahorros	954-6098672
CTA-0248	Davivienda	Corriente	790-8696054
CTA-0249	Scotiabank Colpatria	Corriente	723-5038654
CTA-0250	Banco Popular	Ahorros	319-6283223
CTA-0251	Banco Popular	Ahorros	194-7707501
CTA-0252	Bancolombia	Corriente	456-8286418
CTA-0253	Bancolombia	Corriente	556-9467953
CTA-0254	BBVA Colombia	Corriente	672-4323709
CTA-0255	Scotiabank Colpatria	Corriente	474-6843636
CTA-0256	Bancolombia	Ahorros	735-3477610
CTA-0257	Nequi	Ahorros	3107318411
CTA-0258	Davivienda	Ahorros	399-7484783
CTA-0259	Banco Popular	Ahorros	601-7600153
CTA-0260	AV Villas	Ahorros	772-3302852
CTA-0261	Banco de Bogotá	Ahorros	416-9787997
CTA-0262	Banco Popular	Ahorros	863-5593537
CTA-0263	Nequi	Ahorros	3268864546
CTA-0264	BBVA Colombia	Corriente	987-9219877
CTA-0265	Bancolombia	Ahorros	562-8665517
CTA-0266	BBVA Colombia	Corriente	401-1915141
CTA-0267	Banco de Bogotá	Corriente	192-5195684
CTA-0268	Scotiabank Colpatria	Ahorros	886-3866974
CTA-0269	Bancolombia	Corriente	112-8694746
CTA-0270	Banco Popular	Ahorros	150-4101100
CTA-0271	Bancamía	Ahorros	566-7042962
CTA-0272	Scotiabank Colpatria	Ahorros	812-4507293
CTA-0273	Banco Agrario	Ahorros	604-4018342
CTA-0274	Bancolombia	Ahorros	806-5724912
CTA-0275	AV Villas	Ahorros	788-9038102
CTA-0276	Bancolombia	Ahorros	691-6565326
CTA-0277	AV Villas	Ahorros	378-7943579
CTA-0278	BBVA Colombia	Ahorros	448-9111313
CTA-0279	Banco Popular	Ahorros	803-2460891
CTA-0280	Banco Popular	Ahorros	261-5590865
CTA-0281	AV Villas	Ahorros	151-3182279
CTA-0282	Nequi	Ahorros	3128856366
CTA-0283	Davivienda	Corriente	590-8738351
CTA-0284	Banco de Bogotá	Ahorros	661-3667917
CTA-0285	Bancamía	Ahorros	433-2638360
CTA-0286	Bancolombia	Ahorros	776-3503436
CTA-0287	BBVA Colombia	Corriente	163-7194532
CTA-0288	Scotiabank Colpatria	Ahorros	778-3909338
CTA-0289	Davivienda	Ahorros	757-7976896
CTA-0290	Banco de Bogotá	Corriente	520-7156735
CTA-0291	Banco de Bogotá	Corriente	745-2309997
CTA-0292	Banco Popular	Ahorros	136-6101462
CTA-0293	Banco Popular	Ahorros	235-5713926
CTA-0294	AV Villas	Ahorros	248-3586212
CTA-0295	Nequi	Ahorros	3256056101
CTA-0296	Davivienda	Corriente	964-8244164
CTA-0297	BBVA Colombia	Corriente	660-1177469
CTA-0298	Bancolombia	Ahorros	713-3043299
CTA-0299	Banco Popular	Ahorros	808-6425820
CTA-0300	BBVA Colombia	Corriente	211-3413781
CTA-CLI-001	Itaú Colombia	Ahorros	04332181960
CTA-CLI-002	Bancolombia	Ahorros	33890838637
CTA-CLI-003	AV Villas	Corriente	02654235116
CTA-CLI-004	Davivienda	Corriente	59407816184
CTA-CLI-005	Daviplata	Corriente	93103413164
CTA-CLI-006	Colpatria	Corriente	25534192832
CTA-CLI-007	Colpatria	Corriente	48350305641
CTA-CLI-008	Banco de Bogotá	Corriente	37672423884
CTA-CLI-009	Banco W	Corriente	96532871012
CTA-CLI-010	Itaú Colombia	Ahorros	69166978480
CTA-CLI-011	Itaú Colombia	Ahorros	84514627048
CTA-CLI-012	Nequi	Ahorros	81489325288
CTA-CLI-013	Bancoomeva	Ahorros	95701543039
CTA-CLI-014	Davivienda	Ahorros	71822782489
CTA-CLI-015	Banco Agrario	Ahorros	83465787133
CTA-CLI-016	Davivienda	Corriente	09839301031
CTA-CLI-017	Bancoomeva	Ahorros	51834738299
CTA-CLI-018	Colpatria	Ahorros	76311656670
CTA-CLI-019	Itaú Colombia	Ahorros	06513338726
CTA-CLI-020	BBVA Colombia	Corriente	73178108013
CTA-CLI-021	BBVA Colombia	Corriente	77360260647
CTA-CLI-022	Banco de Occidente	Corriente	87234309805
CTA-CLI-023	Bancolombia	Ahorros	97882081219
CTA-CLI-024	Davivienda	Ahorros	61939909169
CTA-CLI-025	AV Villas	Corriente	43534624751
CTA-CLI-026	Bancolombia	Corriente	99118384251
CTA-CLI-027	Bancoomeva	Ahorros	54278498084
CTA-CLI-028	Bancoomeva	Ahorros	24118244935
CTA-CLI-029	Banco de Bogotá	Corriente	87401640052
CTA-CLI-030	Itaú Colombia	Corriente	27868011280
CTA-CLI-031	Daviplata	Corriente	98262045053
CTA-CLI-032	Itaú Colombia	Ahorros	15869232260
CTA-CLI-033	BBVA Colombia	Corriente	63421607337
CTA-CLI-034	Banco Popular	Corriente	33036541458
CTA-CLI-035	Banco Agrario	Corriente	01429401965
CTA-CLI-036	Banco W	Corriente	69816934060
CTA-CLI-037	Banco Caja Social	Ahorros	56159514846
CTA-CLI-038	Banco Popular	Corriente	48236629946
CTA-CLI-039	Banco Caja Social	Ahorros	44369957773
CTA-CLI-040	Banco Caja Social	Corriente	21489513433
CTA-CLI-041	BBVA Colombia	Ahorros	03791769367
CTA-CLI-042	Banco Agrario	Ahorros	20163287083
CTA-CLI-043	Bancoomeva	Ahorros	72788957986
CTA-CLI-044	Daviplata	Corriente	27743487347
CTA-CLI-045	Davivienda	Corriente	34558122362
CTA-CLI-046	Banco W	Ahorros	16658760366
CTA-CLI-047	Bancoomeva	Ahorros	96705466889
CTA-CLI-048	Bancoomeva	Ahorros	73467065627
CTA-CLI-049	Bancoomeva	Ahorros	98069901627
CTA-CLI-050	BBVA Colombia	Ahorros	46537556464
CTA-CLI-051	Daviplata	Ahorros	70805310033
CTA-CLI-052	Daviplata	Ahorros	92327193745
CTA-CLI-053	BBVA Colombia	Ahorros	24190496631
CTA-CLI-054	AV Villas	Ahorros	14919058651
CTA-CLI-055	Banco Caja Social	Corriente	06716572628
CTA-CLI-056	Itaú Colombia	Corriente	98776945314
CTA-CLI-057	Bancoomeva	Corriente	37996507527
CTA-CLI-058	Banco de Bogotá	Corriente	45494808313
CTA-CLI-059	Banco W	Corriente	78377701436
CTA-CLI-060	Banco W	Ahorros	49578856855
CTA-CLI-061	Banco W	Corriente	44431351823
CTA-CLI-062	Banco de Bogotá	Corriente	49894134352
CTA-CLI-063	Banco de Occidente	Ahorros	82400842710
CTA-CLI-064	AV Villas	Corriente	77752047116
CTA-CLI-065	Colpatria	Ahorros	90229413186
CTA-CLI-066	AV Villas	Ahorros	86774964990
CTA-CLI-067	AV Villas	Ahorros	33412328120
CTA-CLI-068	Banco Agrario	Corriente	97403447134
CTA-CLI-069	Nequi	Ahorros	61832421024
CTA-CLI-070	AV Villas	Corriente	71746488771
CTA-CLI-071	AV Villas	Ahorros	65940139904
CTA-CLI-072	AV Villas	Ahorros	27874296717
CTA-CLI-073	Banco Popular	Corriente	55125674680
CTA-CLI-074	Colpatria	Ahorros	54516808760
CTA-CLI-075	Banco de Bogotá	Corriente	97703482477
CTA-CLI-076	Davivienda	Ahorros	93248086131
CTA-CLI-077	Colpatria	Ahorros	27484677378
CTA-CLI-078	BBVA Colombia	Corriente	39821465840
CTA-CLI-079	Banco de Occidente	Corriente	99727875588
CTA-CLI-080	Banco Agrario	Corriente	53396360576
CTA-CLI-081	Banco Agrario	Ahorros	70289517187
CTA-CLI-082	Bancolombia	Ahorros	62174596158
CTA-CLI-083	Banco Agrario	Corriente	78091343161
CTA-CLI-084	Nequi	Ahorros	72400504556
CTA-CLI-085	BBVA Colombia	Ahorros	86922219693
CTA-CLI-086	Colpatria	Ahorros	37474074821
CTA-CLI-087	Colpatria	Corriente	94647436713
CTA-CLI-088	Banco Agrario	Corriente	94406409097
CTA-CLI-089	Daviplata	Corriente	39533942104
CTA-CLI-090	Nequi	Corriente	09521456232
CTA-CLI-091	Nequi	Corriente	88424745171
CTA-CLI-092	BBVA Colombia	Ahorros	68516048175
CTA-CLI-093	Itaú Colombia	Corriente	96513709859
CTA-CLI-094	Banco de Bogotá	Ahorros	74612004711
CTA-CLI-095	Banco de Bogotá	Ahorros	67586926179
CTA-CLI-096	Banco Agrario	Corriente	05377351585
CTA-CLI-097	Bancolombia	Corriente	43171390053
CTA-CLI-098	BBVA Colombia	Ahorros	18393352904
CTA-CLI-099	Daviplata	Ahorros	28421020539
CTA-CLI-100	Banco Popular	Ahorros	24026811775
CTA-CLI-101	Banco Caja Social	Ahorros	78390847007
CTA-CLI-102	Daviplata	Corriente	61771159212
CTA-CLI-103	Banco de Occidente	Corriente	69847896118
CTA-CLI-104	Banco W	Ahorros	67365766156
CTA-CLI-105	Banco Popular	Corriente	52711116152
CTA-CLI-106	Banco Caja Social	Ahorros	98851656049
CTA-CLI-107	Banco de Occidente	Corriente	19832731585
CTA-CLI-108	Davivienda	Corriente	93689980940
CTA-CLI-109	BBVA Colombia	Corriente	45502296120
CTA-CLI-110	Davivienda	Ahorros	66752545991
CTA-CLI-111	Bancoomeva	Ahorros	22901476797
CTA-CLI-112	Banco Agrario	Corriente	38156149784
CTA-CLI-113	Bancolombia	Ahorros	69003432445
CTA-CLI-114	Davivienda	Ahorros	76226838851
CTA-CLI-115	Banco Agrario	Ahorros	60715969664
CTA-CLI-116	Davivienda	Corriente	05297516136
CTA-CLI-117	AV Villas	Corriente	81645352181
CTA-CLI-118	Banco Caja Social	Ahorros	55231243292
CTA-CLI-119	Nequi	Ahorros	27799799552
CTA-CLI-120	Colpatria	Ahorros	77449058147
CTA-CLI-121	Colpatria	Ahorros	05411998679
CTA-CLI-122	Banco Caja Social	Ahorros	79359782071
CTA-CLI-123	Nequi	Corriente	18203778892
CTA-CLI-124	Banco Popular	Corriente	46659051518
CTA-CLI-125	Itaú Colombia	Corriente	44925192546
CTA-CLI-126	BBVA Colombia	Ahorros	48652816850
CTA-CLI-127	Banco Popular	Corriente	23573322141
CTA-CLI-128	Banco Caja Social	Ahorros	59296222927
CTA-CLI-129	Bancolombia	Corriente	53794738347
CTA-CLI-130	Bancoomeva	Ahorros	59774688623
CTA-CLI-131	Nequi	Ahorros	40758181412
CTA-CLI-132	Banco de Occidente	Corriente	82613750606
CTA-CLI-133	Banco Caja Social	Corriente	36153051522
CTA-CLI-134	Bancolombia	Corriente	72779010432
CTA-CLI-135	Banco Caja Social	Corriente	14341036971
CTA-CLI-136	Davivienda	Corriente	98089324609
CTA-CLI-137	Banco Popular	Ahorros	96218518888
CTA-CLI-138	Banco Caja Social	Ahorros	67065405153
CTA-CLI-139	Banco W	Ahorros	95205852772
CTA-CLI-140	Nequi	Ahorros	17043030548
CTA-CLI-141	Banco Agrario	Corriente	40345054156
CTA-CLI-142	Bancoomeva	Corriente	76527758416
CTA-CLI-143	Davivienda	Corriente	92845115447
CTA-CLI-144	AV Villas	Corriente	27570596401
CTA-CLI-145	Itaú Colombia	Corriente	58202970213
CTA-CLI-146	Nequi	Corriente	56909275571
CTA-CLI-147	AV Villas	Ahorros	85654310278
CTA-CLI-148	Banco Agrario	Ahorros	44739473121
CTA-CLI-149	Colpatria	Ahorros	71551884422
CTA-CLI-150	Nequi	Corriente	83132370589
CTA-CLI-151	Banco Popular	Corriente	82911467866
CTA-CLI-152	Daviplata	Ahorros	25177852892
CTA-CLI-153	Nequi	Ahorros	68018242253
CTA-CLI-154	Banco Popular	Corriente	14384249818
CTA-CLI-155	Itaú Colombia	Ahorros	99229959001
CTA-CLI-156	Bancolombia	Corriente	39690784473
CTA-CLI-157	Nequi	Corriente	47102767735
CTA-CLI-158	AV Villas	Ahorros	55562588153
CTA-CLI-159	Colpatria	Ahorros	47321046963
CTA-CLI-160	Daviplata	Ahorros	59532787747
CTA-CLI-161	Bancolombia	Ahorros	68733950047
CTA-CLI-162	AV Villas	Corriente	48016245650
CTA-CLI-163	Banco Agrario	Ahorros	98358416878
CTA-CLI-164	Banco de Occidente	Ahorros	21655852398
CTA-CLI-165	Banco Agrario	Ahorros	00257872982
CTA-CLI-166	Banco Popular	Corriente	26949588879
CTA-CLI-167	Banco de Occidente	Corriente	05516940974
CTA-CLI-168	Itaú Colombia	Ahorros	09728962309
CTA-CLI-169	Banco W	Ahorros	30756263689
CTA-CLI-170	Bancoomeva	Corriente	02838578652
CTA-CLI-171	Colpatria	Corriente	85497334843
CTA-CLI-172	Banco de Occidente	Corriente	37575844198
CTA-CLI-173	Banco Agrario	Corriente	52404157473
CTA-CLI-174	Banco de Bogotá	Corriente	84219933083
CTA-CLI-175	Itaú Colombia	Ahorros	01657120826
CTA-CLI-176	Itaú Colombia	Corriente	73454019380
CTA-CLI-177	Bancoomeva	Ahorros	62067240049
CTA-CLI-178	AV Villas	Ahorros	54788728743
CTA-CLI-179	Nequi	Ahorros	52742054932
CTA-CLI-180	AV Villas	Corriente	68516122753
CTA-CLI-181	Bancolombia	Corriente	63745499045
CTA-CLI-182	Banco W	Ahorros	01742684145
CTA-CLI-183	AV Villas	Ahorros	32727956878
CTA-CLI-184	Nequi	Ahorros	39187851910
CTA-CLI-185	Daviplata	Ahorros	98225871397
CTA-CLI-186	Davivienda	Corriente	07286790874
CTA-CLI-187	Banco W	Ahorros	64039106518
CTA-CLI-188	Bancolombia	Ahorros	70462265676
CTA-CLI-189	Banco Agrario	Ahorros	82512868230
CTA-CLI-190	Nequi	Ahorros	47868633752
CTA-CLI-191	Banco de Occidente	Ahorros	10690331190
CTA-CLI-192	Colpatria	Ahorros	30673830284
CTA-CLI-193	Banco de Bogotá	Corriente	99534283644
CTA-CLI-194	Bancolombia	Ahorros	68705685662
CTA-CLI-195	Banco de Occidente	Corriente	28733427086
CTA-CLI-196	Banco Agrario	Ahorros	63435175183
CTA-CLI-197	Bancolombia	Corriente	69901398373
CTA-CLI-198	Daviplata	Corriente	40331739363
CTA-CLI-199	Banco Caja Social	Corriente	46785445877
CTA-CLI-200	Davivienda	Corriente	53556093204
CTA-CLI-201	Banco Caja Social	Corriente	42353693785
CTA-CLI-202	Banco de Occidente	Corriente	77252287280
CTA-CLI-203	Banco Caja Social	Ahorros	10062312038
CTA-CLI-204	Colpatria	Corriente	09977008860
CTA-CLI-205	Bancolombia	Corriente	84086211823
CTA-CLI-206	Banco de Bogotá	Corriente	54615679334
CTA-CLI-207	Itaú Colombia	Ahorros	01666870021
CTA-CLI-208	Colpatria	Corriente	59180339740
CTA-CLI-209	Bancoomeva	Ahorros	48902503926
CTA-CLI-210	Bancoomeva	Ahorros	42939685621
CTA-CLI-211	Banco Caja Social	Corriente	01631599965
CTA-CLI-212	Bancolombia	Corriente	77358662961
CTA-CLI-213	Nequi	Corriente	31142626551
CTA-CLI-214	Davivienda	Ahorros	47541212678
CTA-CLI-215	Banco Caja Social	Corriente	10158199560
CTA-CLI-216	Banco de Occidente	Corriente	61839826224
CTA-CLI-217	Banco de Occidente	Corriente	72126464715
CTA-CLI-218	Banco de Occidente	Ahorros	79937124065
CTA-CLI-219	Daviplata	Corriente	57569245937
CTA-CLI-220	Banco Popular	Ahorros	65479356465
CTA-CLI-221	Davivienda	Ahorros	98280737416
CTA-CLI-222	Itaú Colombia	Corriente	24342661797
CTA-CLI-223	AV Villas	Corriente	88680589113
CTA-CLI-224	Itaú Colombia	Corriente	29096561014
CTA-CLI-225	Banco de Bogotá	Ahorros	75679825071
CTA-CLI-226	Banco de Occidente	Corriente	11254573875
CTA-CLI-227	Colpatria	Ahorros	77514010512
CTA-CLI-228	Bancoomeva	Ahorros	82825867362
CTA-CLI-229	BBVA Colombia	Corriente	60937966033
CTA-CLI-230	Banco de Occidente	Ahorros	91825537147
CTA-CLI-231	Banco Caja Social	Corriente	96969155792
CTA-CLI-232	Daviplata	Corriente	99125134125
CTA-CLI-233	Banco W	Ahorros	86692966278
CTA-CLI-234	Banco W	Ahorros	82742257905
CTA-CLI-235	Bancolombia	Corriente	23688767677
CTA-CLI-236	BBVA Colombia	Ahorros	90340438427
CTA-CLI-237	AV Villas	Corriente	88191485807
CTA-CLI-238	Banco Caja Social	Ahorros	61340745171
CTA-CLI-239	Nequi	Ahorros	39596292330
CTA-CLI-240	AV Villas	Corriente	84982544948
CTA-CLI-241	Bancoomeva	Ahorros	26042232536
CTA-CLI-242	Colpatria	Ahorros	94667116845
CTA-CLI-243	Colpatria	Corriente	59017518636
CTA-CLI-244	Daviplata	Ahorros	74545892975
CTA-CLI-245	Bancoomeva	Ahorros	01701277063
CTA-CLI-246	Banco W	Ahorros	42415415206
CTA-CLI-247	Itaú Colombia	Corriente	36110371293
CTA-CLI-248	Banco Caja Social	Corriente	00516271361
CTA-CLI-249	Banco W	Ahorros	15542622189
CTA-CLI-250	Bancolombia	Ahorros	75326973112
CTA-CLI-251	Nequi	Ahorros	96565234138
CTA-CLI-252	AV Villas	Corriente	04389836403
CTA-CLI-253	Colpatria	Corriente	13791805526
CTA-CLI-254	Daviplata	Corriente	58271091043
CTA-CLI-255	Bancolombia	Ahorros	68486661889
CTA-CLI-256	BBVA Colombia	Corriente	14183285691
CTA-CLI-257	Banco de Occidente	Corriente	30316179904
CTA-CLI-258	Itaú Colombia	Ahorros	10202758842
CTA-CLI-259	Banco Popular	Ahorros	41056481491
CTA-CLI-260	Colpatria	Corriente	85079252419
CTA-CLI-261	Itaú Colombia	Ahorros	38000307562
CTA-CLI-262	BBVA Colombia	Ahorros	86353654195
CTA-CLI-263	Davivienda	Ahorros	23806174451
CTA-CLI-264	Banco Caja Social	Corriente	05349493759
CTA-CLI-265	Colpatria	Ahorros	83206038505
CTA-CLI-266	Bancolombia	Corriente	41383670241
CTA-CLI-267	Bancolombia	Ahorros	86571918261
CTA-CLI-268	AV Villas	Ahorros	62344565574
CTA-CLI-269	Banco de Bogotá	Ahorros	32912127756
CTA-CLI-270	Davivienda	Corriente	37474112490
CTA-CLI-271	Banco de Bogotá	Corriente	21356804420
CTA-CLI-272	Banco Agrario	Corriente	88317121003
CTA-CLI-273	BBVA Colombia	Ahorros	65199410137
CTA-CLI-274	Nequi	Ahorros	15107029667
CTA-CLI-275	Bancolombia	Corriente	62532447209
CTA-CLI-276	AV Villas	Ahorros	47687014626
CTA-CLI-277	Banco de Bogotá	Ahorros	80657875985
CTA-CLI-278	Banco Agrario	Corriente	20593040785
CTA-CLI-279	Nequi	Ahorros	21334803965
CTA-CLI-280	Bancoomeva	Ahorros	23955905992
CTA-CLI-281	AV Villas	Ahorros	78427010393
CTA-CLI-282	Bancolombia	Corriente	05932525002
CTA-CLI-283	AV Villas	Ahorros	18515691545
CTA-CLI-284	BBVA Colombia	Ahorros	67528953926
CTA-CLI-285	Banco de Occidente	Corriente	22096902959
CTA-CLI-286	Banco de Bogotá	Ahorros	72513552157
CTA-CLI-287	Bancolombia	Corriente	33154100676
CTA-CLI-288	BBVA Colombia	Corriente	76586179327
CTA-CLI-289	Davivienda	Ahorros	40541152621
CTA-CLI-290	Banco Caja Social	Ahorros	59970629620
CTA-CLI-291	Davivienda	Corriente	33688444310
CTA-CLI-292	Banco Agrario	Corriente	20506149731
CTA-CLI-293	Bancolombia	Ahorros	24171467741
CTA-CLI-294	Itaú Colombia	Corriente	25652704774
CTA-CLI-295	Banco de Bogotá	Corriente	90211586938
CTA-CLI-296	Bancolombia	Corriente	86879374160
CTA-CLI-297	Banco Caja Social	Ahorros	17223320616
CTA-CLI-298	Banco de Bogotá	Ahorros	94511686854
CTA-CLI-299	Banco Caja Social	Corriente	09986162299
CTA-CLI-300	AV Villas	Ahorros	19148564679
CTA-PROV-001	AV Villas	Corriente	02462996065
CTA-PROV-002	Banco W	Ahorros	07450544471
CTA-PROV-003	Daviplata	Ahorros	24754691373
CTA-PROV-004	Bancoomeva	Corriente	78508214862
CTA-PROV-005	Nequi	Ahorros	23303070534
CTA-PROV-006	Banco Popular	Corriente	86103579727
CTA-PROV-007	AV Villas	Corriente	52414060293
CTA-PROV-008	Daviplata	Ahorros	33468007229
CTA-PROV-009	Nequi	Ahorros	34944665743
CTA-PROV-010	Colpatria	Corriente	89691085899
CTA-PROV-011	Banco de Occidente	Corriente	17154544432
CTA-PROV-012	Banco Caja Social	Ahorros	09652074466
CTA-PROV-013	Banco Agrario	Ahorros	99353875842
CTA-PROV-014	Daviplata	Ahorros	41724825135
CTA-PROV-015	Banco de Bogotá	Corriente	65549471709
CTA-PROV-016	AV Villas	Ahorros	73816846022
CTA-PROV-017	Banco de Bogotá	Corriente	69725217525
CTA-PROV-018	Itaú Colombia	Ahorros	07432927129
CTA-PROV-019	Banco Agrario	Corriente	66760083505
CTA-PROV-020	Nequi	Ahorros	00335421689
CTA-PROV-021	Banco de Occidente	Ahorros	10447898562
CTA-PROV-022	Banco Popular	Corriente	53260332309
CTA-PROV-023	Banco Caja Social	Ahorros	15064890901
CTA-PROV-024	Itaú Colombia	Ahorros	01676184723
CTA-PROV-025	Banco W	Ahorros	46184992618
CTA-PROV-026	Banco W	Ahorros	41173934835
CTA-PROV-027	Banco W	Corriente	42087375300
CTA-PROV-028	Itaú Colombia	Ahorros	19721811437
CTA-PROV-029	Banco de Occidente	Corriente	70120455611
CTA-PROV-030	Daviplata	Ahorros	02255794155
\.


--
-- TOC entry 3576 (class 0 OID 16661)
-- Dependencies: 238
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, tipo_id, nombres, apellidos, habeas_data, ciudad, direccion_op, direccion_res, telefono, email, representante, tipo_regimen, id_cuenta) FROM stdin;
305486874-0	NIT	Minimercado Gómez & Cia.	-	t	Buga	Cr. 67 # 13-39 Sur	Cr. 67 # 13-39 Sur	3345054156	minimercado.gomez762@hotmail.com	Luz Blanca Gómez Orozco	Responsable	CTA-CLI-001
410564814-9	NIT	Restaurante Arango S.A.	-	t	Cartago	Avenida Ana Arboleda # 55D-8 Este	Avenida Ana Arboleda # 55D-8 Este	3177850792	restaurante.arango162@hotmail.com	Juan Velásquez Torres	Responsable	CTA-CLI-002
7558556659	CC	Sebastián	Montoya	t	Bucaramanga	Calle 136M # 22C-33 Sur	Calle 136M # 22C-33 Sur	3398368457	sebastian.montoya983@hotmail.com	Sebastián Montoya	No responsable	CTA-CLI-003
1406029333	CC	Antonio	Pérez	t	Pereira	Diagonal 134S # 1-45	Diagonal 134S # 1-45	3346800722	antonio.perez821@outlook.com	Antonio Pérez	No responsable	CTA-CLI-004
713493618-3	NIT	Hotel Ríos S.A.S.	-	t	Barranquilla	Dg. 4ª # 5S-6 Sur	Dg. 4ª # 5S-6 Sur	3242102499	hotel.rios450@hotmail.com	Andrea Leal	Responsable	CTA-CLI-005
90600780	CC	Paola	Serna	t	Bogota	Tr. 6ª # 60-98	Tr. 6ª # 60-98	3686717731	paola.serna772@outlook.com	Paola Serna	No responsable	CTA-CLI-006
29276637	CC	Victoria	Valencia	t	Neiva	Tr. 48 # 59-9	Tr. 48 # 59-9	3239504102	victoria.valencia409@hotmail.com	Victoria Valencia	No responsable	CTA-CLI-007
956046618-3	NIT	Tienda Benavides S.A.S.	-	t	Cali	Cr. 159X # 10Z-8 Sur	Cr. 159X # 10Z-8 Sur	3982622444	tienda.benavides150@hotmail.com	Ivonne María García	Responsable	CTA-CLI-008
128639174	CC	Cecilia	Cerón	t	Popayan	Av. Alzate # 6-4	Av. Alzate # 6-4	3101194707	cecilia.ceron669@gmail.com	Cecilia Cerón	No responsable	CTA-CLI-009
5436459701	CC	Enrique	Rodríguez	t	Cartago	Calle 7ª # 69B-71 Sur	Calle 7ª # 69B-71 Sur	3082207811	enrique.rodriguez739@gmail.com	Enrique Rodríguez	No responsable	CTA-CLI-010
2075011024	CC	Ángel	Morales	t	Ibague	Calle 90 # 7-1	Calle 90 # 7-1	3819346676	angel.morales324@hotmail.com	Ángel Morales	No responsable	CTA-CLI-011
8857448906	CC	Héctor	Perdomo	t	Cali	Avenida calle 43 # 83-54 Este	Avenida calle 43 # 83-54 Este	3120347175	hector.perdomo370@hotmail.com	Héctor Perdomo	No responsable	CTA-CLI-012
785477725-2	NIT	Distribuidora Beltrán Ltda.	-	t	Bucaramanga	Carrera 10 # 60-89 Este	Carrera 10 # 60-89 Este	3287280801	distribuidora.beltran50@outlook.com	Ester María Moreno Morales	Responsable	CTA-CLI-013
181960013-3	NIT	Tienda Vargas S.A.	-	t	Cali	Tr. 73 # 9T-10 Sur	Tr. 73 # 9T-10 Sur	3890838637	tienda.vargas285@outlook.com	Rafael Sebastián Flórez Guzmán	Responsable	CTA-CLI-014
726490827	CC	Gladys	Acosta	t	Pasto	Avenida La Guadalupe # 98R-6 Sur	Avenida La Guadalupe # 98R-6 Sur	3718129826	gladys.acosta332@hotmail.com	Gladys Acosta	No responsable	CTA-CLI-015
462704828-1	NIT	Tienda Camacho S.A.	-	t	Villavicencio	Cr. 1 Bis Z # 72-11	Cr. 1 Bis Z # 72-11	3489325288	tienda.camacho614@gmail.com	Andrés Bustamante Rojas	No responsable	CTA-CLI-016
54780774	CC	Jhon	Pacheco	t	Cali	Avenida calle 122 # 6-85 Este	Avenida calle 122 # 6-85 Este	3064930853	jhon.pacheco904@hotmail.com	Jhon Pacheco	No responsable	CTA-CLI-017
772459928	CC	Marco	Fuentes	t	Armenia	Avenida calle 4ª # 44-9 Sur	Avenida calle 4ª # 44-9 Sur	3161581487	marco.fuentes605@hotmail.com	Marco Fuentes	No responsable	CTA-CLI-018
7350208021	CC	Miguel	León	t	Pasto	Cr. 70 # 9-9 Sur	Cr. 70 # 9-9 Sur	3442703120	miguel.leon223@hotmail.com	Miguel León	No responsable	CTA-CLI-019
843443757-5	NIT	Panaderia Méndez & Cia.	-	t	Medellin	Cl. 16G # 41-83 Sur	Cl. 16G # 41-83 Sur	3844198665	panaderia.mendez298@gmail.com	Yenny Liliana Velásquez Gaviria	Responsable	CTA-CLI-020
0552818325	CC	Yeny	Muñoz	t	Palmira	Transversal 39 Sur # 3K-85 Este	Transversal 39 Sur # 3K-85 Este	3381793355	yeny.munoz516@hotmail.com	Yeny Muñoz	No responsable	CTA-CLI-021
121277561-8	NIT	Distribuidora Pulido Ltda.	-	t	Buga	Av. calle 123 # 1V-2 Este	Av. calle 123 # 1V-2 Este	3537474112	distribuidora.pulido312@outlook.com	Cecilia Estrada López	Responsable	CTA-CLI-022
02203173	CC	José	Paz	t	Bucaramanga	Avenida Viviana Carmona Ruiz # 2-1	Avenida Viviana Carmona Ruiz # 2-1	3109678994	jose.paz376@gmail.com	José Paz	No responsable	CTA-CLI-023
31819588	CC	Milena	Camacho	t	Barranquilla	Carrera 6 Bis M # 30G-7 Sur	Carrera 6 Bis M # 30G-7 Sur	3373403127	milena.camacho181@hotmail.com	Milena Camacho	No responsable	CTA-CLI-024
2997968845	CC	Julio	Méndez	t	Pasto	Calle 6 Bis C # 5-2 Este	Calle 6 Bis C # 5-2 Este	3783174564	julio.mendez311@gmail.com	Julio Méndez	No responsable	CTA-CLI-025
654051531-9	NIT	Colegio Sánchez S.A.S.	-	t	Villavicencio	Cr. 176 # 6-28	Cr. 176 # 6-28	3520585277	colegio.sanchez187@outlook.com	Claudia Loaiza Montoya	Responsable	CTA-CLI-026
892687056-8	NIT	Minimercado Espitia Ltda.	-	t	Neiva	Avenida Funza # 9-10	Avenida Funza # 9-10	3566246287	minimercado.espitia870@gmail.com	Yamid Serna Pineda	Responsable	CTA-CLI-027
265511047-5	NIT	Restaurante Ortiz S.A.S.	-	t	Bogota	Diagonal 151 # 4J-79	Diagonal 151 # 4J-79	3412126788	restaurante.ortiz418@outlook.com	Rosa Sánchez Silva	Responsable	CTA-CLI-028
758416169-2	NIT	Hotel Martínez S.A.	-	t	Manizales	Cr. 103H Sur # 7-25	Cr. 103H Sur # 7-25	3845115447	hotel.martinez735@outlook.com	Antonio Prada Gutiérrez	No responsable	CTA-CLI-029
6368157981	CC	Enrique	Arango	t	Pereira	Cl. 31 # 9-59 Este	Cl. 31 # 9-59 Este	3238780038	enrique.arango342@hotmail.com	Enrique Arango	No responsable	CTA-CLI-030
084958803	CC	Marco	Calderón	t	Villavicencio	Calle 35K # 9-23 Este	Calle 35K # 9-23 Este	3955124056	marco.calderon548@outlook.com	Marco Calderón	No responsable	CTA-CLI-031
329451168	CC	Consuelo	Osorio	f	Palmira	Dg. 3C Bis # 1-3	Dg. 3C Bis # 1-3	3685487099	consuelo.osorio801@outlook.com	Consuelo Osorio	No responsable	CTA-CLI-032
107622683-8	NIT	Restaurante Hernández Ltda.	-	t	Popayan	Tr. 2V # 20-5 Este	Tr. 2V # 20-5 Este	3851606071	restaurante.hernandez590@hotmail.com	Cristina Magnolia Marín López	No responsable	CTA-CLI-033
71705865	CC	Antonio	Palacios	t	Bogota	Calle 144R # 6M-82	Calle 144R # 6M-82	3094801413	antonio.palacios100@outlook.com	Antonio Palacios	No responsable	CTA-CLI-034
4672324876	CE	Elver	Rodríguez	t	Cartago	Av. carrera 9ª # 9-7	Av. carrera 9ª # 9-7	3329092791	elver.rodriguez847@outlook.com	Elver Rodríguez	No responsable	CTA-CLI-035
826773454-0	NIT	Panaderia Guzmán S.A.S.	-	t	Armenia	Avenida Santiago Sebastián Leal # 20-1 Este	Avenida Santiago Sebastián Leal # 20-1 Este	3193802620	panaderia.guzman807@hotmail.com	Esperanza Buitrago Pérez	Responsable	CTA-CLI-036
03924051	CC	Rafael	Sánchez	t	Buenaventura	Transversal 177Q # 78-39 Este	Transversal 177Q # 78-39 Este	3477053833	rafael.sanchez536@outlook.com	Rafael Sánchez	No responsable	CTA-CLI-037
579887749	CC	María	Alzate	t	Neiva	Cl. 36 # 81-91 Sur	Cl. 36 # 81-91 Sur	3242437540	maria.alzate362@gmail.com	María Alzate	No responsable	CTA-CLI-038
8515832818	CC	Luz	Ramos	t	Cucuta	Carrera 43 # 63-57 Sur	Carrera 43 # 63-57 Sur	3268861533	luz.ramos340@outlook.com	Luz Ramos	No responsable	CTA-CLI-039
3733343333	CC	Diana	Montoya	t	Santa Marta	Carrera 44 # 8-96	Carrera 44 # 8-96	3952111790	diana.montoya981@outlook.com	Diana Montoya	No responsable	CTA-CLI-040
9141173934	CC	Jerson	Torres	t	Buenaventura	Transversal 93 # 14-4 Este	Transversal 93 # 14-4 Este	3835642087	jerson.torres705@gmail.com	Jerson Torres	No responsable	CTA-CLI-041
214562328-5	NIT	Supermercado Gómez & Cia.	-	t	Barranquilla	Cr. 175 # 9M-52	Cr. 175 # 9M-52	3884247451	supermercado.gomez987@hotmail.com	Jesús Eduardo Palacios Cruz	Responsable	CTA-CLI-042
176936763-2	NIT	Supermercado Cardozo Ltda.	-	t	Palmira	Avenida carrera 175 # 7-5 Este	Avenida carrera 175 # 7-5 Este	3016328708	supermercado.cardozo940@gmail.com	Liliana Estela Torres	No responsable	CTA-CLI-043
0016761847	CE	Marcela	Jiménez	t	Cucuta	Diagonal 171P Bis L # 4-49 Este	Diagonal 171P Bis L # 4-49 Este	3230461849	marcela.jimenez718@outlook.com	Marcela Jiménez	No responsable	CTA-CLI-044
908240433	CC	Israel	Gómez	t	Manizales	Diagonal 186 # 88-58 Este	Diagonal 186 # 88-58 Este	3504888992	israel.gomez39@gmail.com	Israel Gómez	No responsable	CTA-CLI-045
570512046	CC	Jesús	Álvarez	t	Bucaramanga	Cr. 1K # 3D-75	Cr. 1K # 3D-75	3187234601	jesus.alvarez255@outlook.com	Jesús Álvarez	No responsable	CTA-CLI-046
554781376	CC	Esteban	Jiménez	t	Ibague	Cr. 44V # 61-91	Cr. 44V # 61-91	3742662991	esteban.jimenez213@gmail.com	Esteban Jiménez	No responsable	CTA-CLI-047
05566139	CC	Viviana	Bernal	t	Palmira	Cr. 198 Sur # 4-9 Sur	Cr. 198 Sur # 4-9 Sur	3060480589	viviana.bernal335@gmail.com	Viviana Bernal	No responsable	CTA-CLI-048
881658039	CC	José	Acosta	t	Santa Marta	Carrera 1ª # 6-5 Sur	Carrera 1ª # 6-5 Sur	3282722992	jose.acosta750@outlook.com	José Acosta	No responsable	CTA-CLI-049
02255794	CC	Eliecer	Rodríguez	t	Bucaramanga	Diagonal 4L Bis K # 15-65 Sur	Diagonal 4L Bis K # 15-65 Sur	3155216674	eliecer.rodriguez707@hotmail.com	Eliecer Rodríguez	No responsable	CTA-CLI-050
149368998-0	NIT	Hotel Cortés S.A.S.	-	t	Bogota	Av. carrera 7ª # 8-69 Sur	Av. carrera 7ª # 8-69 Sur	3940244550	hotel.cortes891@gmail.com	Harold Nel Valencia	Responsable	CTA-CLI-051
622023413	CC	Alberto	Cano	t	Pereira	Dg. 48 # 3-1 Sur	Dg. 48 # 3-1 Sur	3261117800	alberto.cano537@hotmail.com	Alberto Cano	No responsable	CTA-CLI-052
53153136	CC	Humberto	Hernández	t	Pasto	Diagonal 109 # 9-93	Diagonal 109 # 9-93	3363179706	humberto.hernandez222@gmail.com	Humberto Hernández	No responsable	CTA-CLI-053
016668700-2	NIT	Distribuidora Arévalo S.A.S.	-	t	Barranquilla	Carrera 135 Bis B # 7-8 Sur	Carrera 135 Bis B # 7-8 Sur	3176591803	distribuidora.arevalo923@gmail.com	Luz Portilla Molina	Responsable	CTA-CLI-054
553559042	CC	Armando	Hernández	t	Santa Marta	Carrera 10 # 35-40 Sur	Carrera 10 # 35-40 Sur	3597927033	armando.hernandez383@outlook.com	Armando Hernández	No responsable	CTA-CLI-055
578729825-9	NIT	Colegio Granados S.A.S.	-	t	Manizales	Av. El Copey # 84P-63 Sur	Av. El Copey # 84P-63 Sur	3526949588	colegio.granados502@outlook.com	Claudia Nelly Rojas	Responsable	CTA-CLI-056
1832192855	CC	María	Castillo	t	Pereira	Cl. 127P # 95-2 Sur	Cl. 127P # 95-2 Sur	3445189520	maria.castillo531@gmail.com	María Castillo	No responsable	CTA-CLI-057
1197218114	CC	Jorge	Estrada	t	Armenia	Cl. 48 # 7-7 Este	Cl. 48 # 7-7 Este	3374470120	jorge.estrada369@hotmail.com	Jorge Estrada	No responsable	CTA-CLI-058
740748217-5	NIT	Hotel Medina Ltda.	-	t	Santa Marta	Cr. 3T # 96-28	Cr. 3T # 96-28	3946474367	hotel.medina243@gmail.com	Michel Victoria Prieto	Responsable	CTA-CLI-059
9988081770	CC	Johana	Sánchez	t	Manizales	Transversal 72 # 69-2 Sur	Transversal 72 # 69-2 Sur	3388608680	johana.sanchez299@gmail.com	Johana Sánchez	No responsable	CTA-CLI-060
991547887-2	NIT	Hotel Hurtado S.A.	-	t	Cartago	Tr. 72 # 1-50	Tr. 72 # 1-50	3874315274	hotel.hurtado191@outlook.com	Leandro Rodríguez Ocampo	No responsable	CTA-CLI-061
473210469-6	NIT	Panaderia Portilla S.A.S.	-	t	Neiva	Carrera 2ª # 51-59 Sur	Carrera 2ª # 51-59 Sur	3325953278	panaderia.portilla511@hotmail.com	Óscar Elkin Espitia	Responsable	CTA-CLI-062
9499939330	CC	Andrés	Sánchez	t	Popayan	Calle 17 # 41-5 Este	Calle 17 # 41-5 Este	3517289752	andres.sanchez504@hotmail.com	Andrés Sánchez	No responsable	CTA-CLI-063
961143519	CC	Álvaro	Rodríguez	t	Cali	Calle 111U # 39-8	Calle 111U # 39-8	3066984902	alvaro.rodriguez507@outlook.com	Álvaro Rodríguez	No responsable	CTA-CLI-064
133387262-4	NIT	Tienda Martínez & Cia.	-	t	Palmira	Avenida calle 124 # 3R-5 Este	Avenida calle 124 # 3R-5 Este	3731781080	tienda.martinez949@gmail.com	Guillermo Vélez Olaya	No responsable	CTA-CLI-065
203875099-7	NIT	Supermercado Jiménez Ltda.	-	t	Ibague	Av. calle 106 # 33-5 Sur	Av. calle 106 # 33-5 Sur	3700886008	supermercado.jimenez282@outlook.com	John Antonio Páez	No responsable	CTA-CLI-066
658404499-7	NIT	Distribuidora Carvajal Ltda.	-	t	Cucuta	Transversal 12E # 2-33 Sur	Transversal 12E # 2-33 Sur	3278755886	distribuidora.carvajal956@hotmail.com	Gloria Díaz Rojas	No responsable	CTA-CLI-067
1450461735	CC	Jesús	Perdomo	t	Cartago	Carrera 6ª # 31-3 Este	Carrera 6ª # 31-3 Este	3743842150	jesus.perdomo936@gmail.com	Jesús Perdomo	No responsable	CTA-CLI-068
506159399	CC	Johanna	Gómez	t	Pereira	Carrera 54 # 25-9 Este	Carrera 54 # 25-9 Este	3824558771	johanna.gomez629@hotmail.com	Johanna Gómez	No responsable	CTA-CLI-069
218515691-5	NIT	Minimercado Moreno S.A.S.	-	t	Bucaramanga	Calle 170J Bis # 3-3	Calle 170J Bis # 3-3	3452267528	minimercado.moreno911@outlook.com	Sofía Fernanda Velasco Hernández	Responsable	CTA-CLI-070
122362316-6	NIT	Restaurante Trujillo S.A.	-	t	Bogota	Calle 166 # 6D-4	Calle 166 # 6D-4	3587603669	restaurante.trujillo21@outlook.com	Ángel Andrés Blanco	Responsable	CTA-CLI-071
038505064-1	NIT	Hotel Ortiz Ltda.	-	t	Popayan	Avenida Guaviare # 35-70 Este	Avenida Guaviare # 35-70 Este	3383670241	hotel.ortiz944@gmail.com	Ángel Ramírez	Responsable	CTA-CLI-072
7937416089	CC	Iván	Díaz	t	Manizales	Av. calle 170 # 10-4	Av. calle 170 # 10-4	3899217223	ivan.diaz130@gmail.com	Iván Díaz	No responsable	CTA-CLI-073
340745171-3	NIT	Colegio Pérez & Cia.	-	t	Popayan	Cr. 81 # 44-4	Cr. 81 # 44-4	3395962923	colegio.perez825@gmail.com	Beatriz Jazmín Rojas Daza	Responsable	CTA-CLI-074
430391171-8	NIT	Panaderia Ortega S.A.S.	-	t	Armenia	Cl. 81E # 7-95 Sur	Cl. 81E # 7-95 Sur	3227824896	panaderia.ortega952@gmail.com	Mauricio Castañeda	Responsable	CTA-CLI-075
346247510-7	NIT	Colegio González S.A.	-	t	Bucaramanga	Transversal 52T # 62-18 Este	Transversal 52T # 62-18 Este	3991183842	colegio.gonzalez903@hotmail.com	Jesús Pérez	Responsable	CTA-CLI-076
199410137-2	NIT	Distribuidora Montoya Ltda.	-	t	Buenaventura	Cr. 5ª # 39-61 Este	Cr. 5ª # 39-61 Este	3151070296	distribuidora.montoya405@outlook.com	Nelson Jhon Medina Díaz	No responsable	CTA-CLI-077
784270103-9	NIT	Panaderia Ramírez Ltda.	-	t	Santa Marta	Cr. 70 # 56E-3 Sur	Cr. 70 # 56E-3 Sur	3308705932	panaderia.ramirez735@hotmail.com	José Moreno Córdoba	Responsable	CTA-CLI-078
57828410	CC	María	Jaimes	f	Palmira	Calle 33 # 1J-2 Este	Calle 33 # 1J-2 Este	3672752088	maria.jaimes663@hotmail.com	María Jaimes	No responsable	CTA-CLI-079
74654214	CC	José	Bravo	t	Cartago	Tr. 5B Bis D # 47-5	Tr. 5B Bis D # 47-5	3066504427	jose.bravo504@gmail.com	José Bravo	No responsable	CTA-CLI-080
376137918-0	NIT	Colegio Manrique & Cia.	-	t	Popayan	Carrera 93 Bis U # 26-76 Este	Carrera 93 Bis U # 26-76 Este	3552696582	colegio.manrique978@hotmail.com	Ferney García Méndez	Responsable	CTA-CLI-081
964990913-3	NIT	Colegio Carmona & Cia.	-	t	Manizales	Carrera 134 # 20-79 Este	Carrera 134 # 20-79 Este	3412328120	colegio.carmona462@hotmail.com	Delia Melissa Álvarez	No responsable	CTA-CLI-082
422096902-9	NIT	Panaderia González Ltda.	-	t	Bogota	Cl. 181A # 53B-8 Este	Cl. 181A # 53B-8 Este	3593917251	panaderia.gonzalez356@gmail.com	Fabiola Torres	Responsable	CTA-CLI-083
115542622-1	NIT	Cafeteria Sarmiento & Cia.	-	t	Buenaventura	Av. Atlántico # 3-4 Sur	Av. Atlántico # 3-4 Sur	3890927532	cafeteria.sarmiento631@hotmail.com	María Claudia Sánchez Galeano	Responsable	CTA-CLI-084
0028772175	CC	Rubén	Montoya	t	Manizales	Calle 46 # 45G-6 Sur	Calle 46 # 45G-6 Sur	3354083866	ruben.montoya81@gmail.com	Rubén Montoya	No responsable	CTA-CLI-085
595148465-6	NIT	Colegio Bedoya S.A.	-	t	Popayan	Cl. 70 # 9-93	Cl. 70 # 9-93	3482366299	colegio.bedoya416@hotmail.com	Sindy Márquez	Responsable	CTA-CLI-086
489025039-2	NIT	Hotel Sánchez S.A.S.	-	t	Medellin	Cl. 91 # 9Q-1 Sur	Cl. 91 # 9Q-1 Sur	3614293968	hotel.sanchez394@hotmail.com	Darío Cristian Rodríguez Gómez	No responsable	CTA-CLI-087
781891371	CC	Óscar	Hoyos	t	Buga	Carrera 18M # 65-3 Este	Carrera 18M # 65-3 Este	3894905807	oscar.hoyos525@hotmail.com	Óscar Hoyos	No responsable	CTA-CLI-088
281685054-2	NIT	Tienda Silva & Cia.	-	t	Barranquilla	Carrera 7ª # 2V-89	Carrera 7ª # 2V-89	3357332214	tienda.silva520@gmail.com	Jennifer Gómez Fernández	Responsable	CTA-CLI-089
314530385	CE	Natalia	Cabrera	t	Armenia	Dg. 2ª # 6-66 Este	Dg. 2ª # 6-66 Este	3677005184	natalia.cabrera270@outlook.com	Natalia Cabrera	No responsable	CTA-CLI-090
27837693	CC	Norberto	Morales	t	Manizales	Calle 199I # 13T-9	Calle 199I # 13T-9	3898331465	norberto.morales947@outlook.com	Norberto Morales	No responsable	CTA-CLI-091
473384842-1	NIT	Supermercado Benavides S.A.S.	-	t	Barranquilla	Tr. 7B # 2-2	Tr. 7B # 2-2	3993308330	supermercado.benavides424@gmail.com	Lina Martha Rodríguez Arias	Responsable	CTA-CLI-092
429444019	CC	Paola	Medina	t	Buenaventura	Cr. 8ª # 8A-41 Este	Cr. 8ª # 8A-41 Este	3292752437	paola.medina819@gmail.com	Paola Medina	No responsable	CTA-CLI-093
9162473149	CC	César	Ramírez	t	Manizales	Avenida Caldas # 2-21 Sur	Avenida Caldas # 2-21 Sur	3864300981	cesar.ramirez8@outlook.com	César Ramírez	No responsable	CTA-CLI-094
17993136	CC	Álvaro	López	t	Cucuta	Diagonal 181N # 70-47 Sur	Diagonal 181N # 70-47 Sur	3565198253	alvaro.lopez608@gmail.com	Álvaro López	No responsable	CTA-CLI-095
694097499-3	NIT	Restaurante Murillo S.A.S.	-	t	Armenia	Calle 17 # 94-7 Este	Calle 17 # 94-7 Este	3097289623	restaurante.murillo587@gmail.com	Lina Villamil	Responsable	CTA-CLI-096
778817884	CC	Adriana	Rojas	t	Ibague	Av. Velásquez # 86D-7	Av. Velásquez # 86D-7	3795137116	adriana.rojas296@gmail.com	Adriana Rojas	No responsable	CTA-CLI-097
09376184	CC	Enrique	González	t	Pasto	Av. carrera 4ª # 94-1 Sur	Av. carrera 4ª # 94-1 Sur	3787005050	enrique.gonzalez122@hotmail.com	Enrique González	No responsable	CTA-CLI-098
01071396	CC	Luis	Daza	t	Cucuta	Avenida Nocaima # 7-7	Avenida Nocaima # 7-7	3605583034	luis.daza810@hotmail.com	Luis Daza	No responsable	CTA-CLI-099
620153368-8	NIT	Hotel Santos & Cia.	-	t	Cali	Calle 174G # 79-8 Este	Calle 174G # 79-8 Este	3444310698	hotel.santos158@hotmail.com	Mariela Lozano	No responsable	CTA-CLI-100
65307450	CC	Cristian	Chacón	t	Cucuta	Cl. 67 # 17-25 Sur	Cl. 67 # 17-25 Sur	3544471324	cristian.chacon454@outlook.com	Cristian Chacón	No responsable	CTA-CLI-101
718707286-7	NIT	Colegio Murillo S.A.S.	-	t	Pasto	Cl. 80T # 9-3 Sur	Cl. 80T # 9-3 Sur	3908740640	colegio.murillo224@outlook.com	Marcela Moreno Rangel	Responsable	CTA-CLI-102
921717477	CC	Germán	Londoño	t	Villavicencio	Transversal 160 # 12-99	Transversal 160 # 12-99	3332945625	german.londono465@hotmail.com	Germán Londoño	No responsable	CTA-CLI-103
967175655-1	NIT	Minimercado Gómez & Cia.	-	t	Armenia	Tr. 153Y # 6-1	Tr. 153Y # 6-1	3256746807	minimercado.gomez323@gmail.com	Wilmar Carlos Barrera	No responsable	CTA-CLI-104
929622292-7	NIT	Colegio Ortega S.A.S.	-	t	Neiva	Cl. 14 # 2-79 Este	Cl. 14 # 2-79 Este	3065379473	colegio.ortega245@outlook.com	Yuri Lorena Pérez	Responsable	CTA-CLI-105
140369656	CC	Sofía	Ángel	t	Palmira	Cl. 149H # 10-94 Sur	Cl. 149H # 10-94 Sur	3666832723	sofia.angel394@outlook.com	Sofía Ángel	No responsable	CTA-CLI-106
503758997	CC	Xiomara	Martínez	t	Popayan	Avenida calle 47 # 41E-32 Este	Avenida calle 47 # 41E-32 Este	3571130554	xiomara.martinez535@outlook.com	Xiomara Martínez	No responsable	CTA-CLI-107
246191965	CC	Diana	Figueroa	t	Pasto	Cr. 9I # 4-22	Cr. 9I # 4-22	3701329022	diana.figueroa545@hotmail.com	Diana Figueroa	No responsable	CTA-CLI-108
7704358112	CC	Miguel	Ordóñez	t	Neiva	Carrera 47 # 5-7	Carrera 47 # 5-7	3880133613	miguel.ordonez849@outlook.com	Miguel Ordóñez	No responsable	CTA-CLI-109
92518812	CC	Jhon	Ramírez	t	Neiva	Cl. 44E # 3-53 Este	Cl. 44E # 3-53 Este	3520566474	jhon.ramirez798@gmail.com	Jhon Ramírez	No responsable	CTA-CLI-110
26033230	CE	Alberto	González	t	Bucaramanga	Cr. 47 # 2-9 Este	Cr. 47 # 2-9 Este	3982150648	alberto.gonzalez50@outlook.com	Alberto González	No responsable	CTA-CLI-111
6799813646	CC	Eliana	Amaya	t	Neiva	Avenida carrera 161 # 59-4 Sur	Avenida carrera 161 # 59-4 Sur	3225179086	eliana.amaya88@hotmail.com	Eliana Amaya	No responsable	CTA-CLI-112
182992299-5	NIT	Colegio Muñoz Ltda.	-	t	Medellin	Calle 137 # 57-14 Sur	Calle 137 # 57-14 Sur	3900109439	colegio.munoz633@hotmail.com	Jorge Edgar Castellanos Mantilla	Responsable	CTA-CLI-113
225790507-2	NIT	Minimercado Moreno Ltda.	-	t	Armenia	Calle 13 # 8C-59 Sur	Calle 13 # 8C-59 Sur	3368876767	minimercado.moreno172@hotmail.com	Carlos Pedro Rendón Rodríguez	Responsable	CTA-CLI-114
6591846386	CC	Paulina	Arroyo	t	Santa Marta	Diagonal 111 # 7-6 Sur	Diagonal 111 # 7-6 Sur	3557790827	paulina.arroyo236@gmail.com	Paulina Arroyo	No responsable	CTA-CLI-115
7500369155	CC	María	Aguirre	t	Cartago	Cl. 148 Bis # 74-51 Sur	Cl. 148 Bis # 74-51 Sur	3942843479	maria.aguirre375@hotmail.com	María Aguirre	No responsable	CTA-CLI-116
2288515879	CC	Rubiela	Gómez	t	Cucuta	Av. Pérez # 4-93 Sur	Av. Pérez # 4-93 Sur	3968460810	rubiela.gomez149@hotmail.com	Rubiela Gómez	No responsable	CTA-CLI-117
3714521117	CC	Marisol	Castro	t	Pasto	Avenida carrera 8ª # 9B-8 Este	Avenida carrera 8ª # 9B-8 Este	3518689268	marisol.castro45@hotmail.com	Marisol Castro	No responsable	CTA-CLI-118
2984257991	CC	Edgar	Sepúlveda	t	Bogota	Cl. 40 # 91-48 Este	Cl. 40 # 91-48 Este	3366210388	edgar.sepulveda430@outlook.com	Edgar Sepúlveda	No responsable	CTA-CLI-119
499125134-1	NIT	Tienda Caicedo S.A.	-	t	Pereira	Av. Risaralda # 98-18 Este	Av. Risaralda # 98-18 Este	3252866929	tienda.caicedo434@hotmail.com	Martha Laura Pardo	No responsable	CTA-CLI-120
254494812-6	NIT	Supermercado Osorio S.A.	-	t	Santa Marta	Cr. 3P # 8-17	Cr. 3P # 8-17	3042232536	supermercado.osorio146@hotmail.com	Rocío Patricia Rodríguez	Responsable	CTA-CLI-121
065787598-5	NIT	Cafeteria López Ltda.	-	t	Popayan	Calle 92 Sur # 8Y-7 Este	Calle 92 Sur # 8Y-7 Este	3642059304	cafeteria.lopez829@gmail.com	Rafael Gómez	Responsable	CTA-CLI-122
849808412-4	NIT	Tienda Alfonso S.A.	-	t	Bogota	Carrera 119 Bis A # 2X-1 Sur	Carrera 119 Bis A # 2X-1 Sur	3118244935	tienda.alfonso704@gmail.com	Clara María Vélez	Responsable	CTA-CLI-123
892268018-2	NIT	Tienda Estrada & Cia.	-	t	Pasto	Avenida carrera 103 # 3-8 Este	Avenida carrera 103 # 3-8 Este	3422535841	tienda.estrada202@hotmail.com	Oliva Mary Pulido	Responsable	CTA-CLI-124
49673938	CC	Gisela	Valencia	t	Medellin	Cr. 7H # 4-44	Cr. 7H # 4-44	3525800106	gisela.valencia538@gmail.com	Gisela Valencia	No responsable	CTA-CLI-125
873928557	CC	Andrea	Moreno	t	Palmira	Carrera 132K # 83-13 Este	Carrera 132K # 83-13 Este	3498218274	andrea.moreno555@hotmail.com	Andrea Moreno	No responsable	CTA-CLI-126
339776719	CC	Cecilia	Espitia	t	Armenia	Avenida Nariño # 45-75	Avenida Nariño # 45-75	3903849830	cecilia.espitia152@gmail.com	Cecilia Espitia	No responsable	CTA-CLI-127
808760385-9	NIT	Restaurante Rojas S.A.S.	-	t	Bucaramanga	Carrera 64 # 56-5 Este	Carrera 64 # 56-5 Este	3770348247	restaurante.rojas497@outlook.com	María Sofía Álvarez Sánchez	No responsable	CTA-CLI-128
554384046	CC	Augusto	Vargas	t	Armenia	Carrera 8E # 3V-4 Sur	Carrera 8E # 3V-4 Sur	3084325621	augusto.vargas392@outlook.com	Augusto Vargas	No responsable	CTA-CLI-129
466574374	CC	Alejandra	Gómez	t	Cali	Calle 72 # 71S-3 Sur	Calle 72 # 71S-3 Sur	3896910858	alejandra.gomez609@outlook.com	Alejandra Gómez	No responsable	CTA-CLI-130
70160166	CC	Amanda	Moreno	t	Bucaramanga	Calle 2W # 95Z-5 Sur	Calle 2W # 95Z-5 Sur	3299795453	amanda.moreno777@outlook.com	Amanda Moreno	No responsable	CTA-CLI-131
621182339-8	NIT	Colegio Triana S.A.S.	-	t	Barranquilla	Carrera 198 # 60-79 Este	Carrera 198 # 60-79 Este	3454615679	colegio.triana714@gmail.com	Iván Diego Herrera	Responsable	CTA-CLI-132
193149190-5	NIT	Restaurante Ríos & Cia.	-	t	Santa Marta	Cr. 61 # 1-4 Este	Cr. 61 # 1-4 Este	3865185067	restaurante.rios444@gmail.com	José Cabrera	Responsable	CTA-CLI-133
068486661-8	NIT	Tienda Rodríguez S.A.S.	-	t	Cali	Calle 20 # 47-38	Calle 20 # 47-38	3892414183	tienda.rodriguez550@gmail.com	Hugo Bedoya	Responsable	CTA-CLI-134
495621372	CC	Albeiro	Rosero	t	Cartago	Cl. 86 # 3-45 Este	Cl. 86 # 3-45 Este	3138658902	albeiro.rosero988@hotmail.com	Albeiro Rosero	No responsable	CTA-CLI-135
685160481-7	NIT	Tienda Salamanca Ltda.	-	t	Buenaventura	Cr. 167 # 65W-7 Este	Cr. 167 # 65W-7 Este	3549651370	tienda.salamanca906@outlook.com	Humberto Castro	No responsable	CTA-CLI-136
030673830-2	NIT	Distribuidora Restrepo S.A.S.	-	t	Buga	Dg. 14 # 84-8 Este	Dg. 14 # 84-8 Este	3843959953	distribuidora.restrepo898@hotmail.com	Iván Posada	Responsable	CTA-CLI-137
4245088210	CC	María	Martínez	t	Villavicencio	Carrera 56 # 98-9 Sur	Carrera 56 # 98-9 Sur	3099688143	maria.martinez760@outlook.com	María Martínez	No responsable	CTA-CLI-138
5564729293	CC	William	Hernández	t	Cartago	Avenida Pore # 77Y-9	Avenida Pore # 77Y-9	3143866322	william.hernandez826@hotmail.com	William Hernández	No responsable	CTA-CLI-139
931839335-2	NIT	Supermercado Pacheco S.A.	-	t	Palmira	Av. Barrera # 50-49 Sur	Av. Barrera # 50-49 Sur	3904228421	supermercado.pacheco888@outlook.com	Denis Lucía Rojas Ortiz	Responsable	CTA-CLI-140
416724342-6	NIT	Colegio Flórez & Cia.	-	t	Cali	Cr. 3ª # 4-26 Este	Cr. 3ª # 4-26 Este	3617979688	colegio.florez429@outlook.com	Liliana Torres	No responsable	CTA-CLI-141
589578291-1	NIT	Tienda Gutiérrez Ltda.	-	t	Popayan	Calle 43G # 87-6 Este	Calle 43G # 87-6 Este	3467866912	tienda.gutierrez658@hotmail.com	Antonio Sánchez Castillo	Responsable	CTA-CLI-142
14508993	CC	María	Rodríguez	t	Armenia	Cr. 122 # 83-5 Este	Cr. 122 # 83-5 Este	3588916375	maria.rodriguez693@outlook.com	María Rodríguez	No responsable	CTA-CLI-143
570433154-1	NIT	Panaderia Sánchez S.A.S.	-	t	Cartago	Cr. 140B Sur # 63J-92 Este	Cr. 140B Sur # 63J-92 Este	3006762676	panaderia.sanchez560@hotmail.com	Martha Ana Rojas Jiménez	No responsable	CTA-CLI-144
160529751-6	NIT	Cafeteria Morales & Cia.	-	t	Santa Marta	Cr. 104C Bis # 5-7 Sur	Cr. 104C Bis # 5-7 Sur	3136968164	cafeteria.morales348@outlook.com	Isabel Quintero	No responsable	CTA-CLI-145
442094940	CC	Néstor	Sierra	t	Armenia	Tr. 8ª # 4O-28	Tr. 8ª # 4O-28	3792904904	nestor.sierra85@hotmail.com	Néstor Sierra	No responsable	CTA-CLI-146
84222231	CC	Jesús	Corredor	t	Barranquilla	Diagonal 64 # 4-76	Diagonal 64 # 4-76	3059274523	jesus.corredor725@outlook.com	Jesús Corredor	No responsable	CTA-CLI-147
2201027621	CC	Milena	Trujillo	t	Pereira	Calle 147 # 2-1 Este	Calle 147 # 2-1 Este	3267969278	milena.trujillo566@hotmail.com	Milena Trujillo	No responsable	CTA-CLI-148
715890429	CC	Fernando	Garcés	t	Pereira	Cl. 65 # 6-9 Este	Cl. 65 # 6-9 Este	3025725204	fernando.garces430@hotmail.com	Fernando Garcés	No responsable	CTA-CLI-149
771753556-0	NIT	Colegio Flórez S.A.	-	t	Pereira	Cl. 8 Este # 1-44 Sur	Cl. 8 Este # 1-44 Sur	3932048996	colegio.florez157@hotmail.com	Johana Sánchez Pérez	Responsable	CTA-CLI-150
885685574-4	NIT	Cafeteria García S.A.	-	t	Bogota	Cr. 71 # 6-3 Sur	Cr. 71 # 6-3 Sur	3431351823	cafeteria.garcia757@gmail.com	Jhon Jiménez Padilla	Responsable	CTA-CLI-151
29666676	CC	Raquel	Gil	t	Cartago	Carrera 29 # 49S-12 Sur	Carrera 29 # 49S-12 Sur	3008350583	raquel.gil693@gmail.com	Raquel Gil	No responsable	CTA-CLI-152
301871863	CC	Angélica	Marín	t	Popayan	Carrera 126 # 8N-78	Carrera 126 # 8N-78	3759980562	angelica.marin875@outlook.com	Angélica Marín	No responsable	CTA-CLI-153
895798687-2	NIT	Tienda Londoño Ltda.	-	t	Pasto	Cl. 22 # 7-8	Cl. 22 # 7-8	3774348734	tienda.londono80@hotmail.com	Eduardo Rodríguez	No responsable	CTA-CLI-154
99451016	CC	Gustavo	Ávila	t	Palmira	Av. carrera 91 # 5-1 Este	Av. carrera 91 # 5-1 Este	3224999827	gustavo.avila593@outlook.com	Gustavo Ávila	No responsable	CTA-CLI-155
327104054-1	NIT	Cafeteria Gómez & Cia.	-	t	Tulua	Cl. 6 Bis M # 8N-29 Sur	Cl. 6 Bis M # 8N-29 Sur	3152621815	cafeteria.gomez629@outlook.com	Luz Jackeline Vásquez Díaz	No responsable	CTA-CLI-156
731217271-5	NIT	Restaurante Cárdenas Ltda.	-	t	Pasto	Cl. 9E Este # 63-6 Sur	Cl. 9E Este # 63-6 Sur	3518844225	restaurante.cardenas230@outlook.com	Pablo Londoño	No responsable	CTA-CLI-157
017046226-5	NIT	Tienda Ortiz & Cia.	-	t	Palmira	Cr. 19 # 6-67	Cr. 19 # 6-67	3676618251	tienda.ortiz551@gmail.com	Joaquín Edwar Yepes Castillo	Responsable	CTA-CLI-158
303161799-0	NIT	Panaderia Arboleda S.A.S.	-	t	Manizales	Tr. 34 # 4-4 Sur	Tr. 34 # 4-4 Sur	3421020275	panaderia.arboleda530@outlook.com	Norbey Hoyos	Responsable	CTA-CLI-159
887719065-9	NIT	Tienda Rivera S.A.	-	t	Pasto	Dg. 86E # 10-6 Sur	Dg. 86E # 10-6 Sur	3401399049	tienda.rivera782@gmail.com	Pedro Pineda Murillo	Responsable	CTA-CLI-160
568044206-7	NIT	Supermercado Gil S.A.	-	t	Popayan	Cl. 127 # 2-64 Este	Cl. 127 # 2-64 Este	3883171210	supermercado.gil851@gmail.com	Armando Harold Ruiz	Responsable	CTA-CLI-161
12021697	CC	Andrea	Arias	t	Armenia	Cl. 90 Bis R # 9X-1	Cl. 90 Bis R # 9X-1	3972965902	andrea.arias943@hotmail.com	Andrea Arias	No responsable	CTA-CLI-162
168457759-0	NIT	Restaurante Rodríguez & Cia.	-	t	Ibague	Av. Cardona # 29-8 Sur	Av. Cardona # 29-8 Sur	3175186363	restaurante.rodriguez275@hotmail.com	Nilson Juan Navarro Vásquez	Responsable	CTA-CLI-163
38392886	CC	Diego	Montoya	t	Tulua	Transversal 93 # 2-55 Sur	Transversal 93 # 2-55 Sur	3195761228	diego.montoya517@hotmail.com	Diego Montoya	No responsable	CTA-CLI-164
841687849-9	NIT	Supermercado Riascos S.A.S.	-	t	Manizales	Diagonal 1ª # 5-56	Diagonal 1ª # 5-56	3121655852	supermercado.riascos617@gmail.com	Johana Rodríguez Rodríguez	Responsable	CTA-CLI-165
823578452	CC	Gisela	Ramos	t	Buga	Calle 73A # 57-44 Sur	Calle 73A # 57-44 Sur	3182307681	gisela.ramos319@gmail.com	Gisela Ramos	No responsable	CTA-CLI-166
159996504-7	NIT	Minimercado Bermúdez S.A.	-	t	Buga	Calle 9ª # 51-6 Sur	Calle 9ª # 51-6 Sur	3735866296	minimercado.bermudez791@gmail.com	José Cortés Castro	Responsable	CTA-CLI-167
9298316873	CC	Cristian	Pabón	t	Barranquilla	Cl. 157 # 4F-3 Este	Cl. 157 # 4F-3 Este	3977406335	cristian.pabon594@hotmail.com	Cristian Pabón	No responsable	CTA-CLI-168
60463331	CC	María	Núñez	t	Armenia	Calle 105W # 47-6	Calle 105W # 47-6	3279757366	maria.nunez623@gmail.com	María Núñez	No responsable	CTA-CLI-169
31491357	CC	Darwin	Rodríguez	t	Santa Marta	Cr. 93B # 18-36 Este	Cr. 93B # 18-36 Este	3759492995	darwin.rodriguez982@hotmail.com	Darwin Rodríguez	No responsable	CTA-CLI-170
752654793-5	NIT	Minimercado Perea S.A.	-	t	Barranquilla	Carrera 63 # 52-15 Este	Carrera 63 # 52-15 Este	3646519398	minimercado.perea699@gmail.com	Aurora Ruby Delgado	Responsable	CTA-CLI-171
837354033-1	NIT	Supermercado Rodríguez Ltda.	-	t	Buga	Carrera 20 # 2F-9 Sur	Carrera 20 # 2F-9 Sur	3739363854	supermercado.rodriguez478@hotmail.com	Ricardo Mercado	No responsable	CTA-CLI-172
56996112	CC	Edilson	Morales	t	Barranquilla	Transversal 2T # 78-2 Sur	Transversal 2T # 78-2 Sur	3535544964	edilson.morales800@hotmail.com	Edilson Morales	No responsable	CTA-CLI-173
746120047-1	NIT	Colegio Calderón Ltda.	-	t	Bucaramanga	Carrera 6ª # 8-2 Este	Carrera 6ª # 8-2 Este	3138267586	colegio.calderon761@outlook.com	Mario Garcés Meza	Responsable	CTA-CLI-174
2222064474	CC	Luz	Rivera	t	Cartago	Calle 54 # 60-2	Calle 54 # 60-2	3212309407	luz.rivera876@hotmail.com	Luz Rivera	No responsable	CTA-CLI-175
693465472	CC	César	Rojas	t	Cucuta	Av. carrera 2ª # 73-87	Av. carrera 2ª # 73-87	3269848583	cesar.rojas215@gmail.com	César Rojas	No responsable	CTA-CLI-176
105123828-2	NIT	Tienda Gómez & Cia.	-	t	Pasto	Carrera 89 # 2-35 Este	Carrera 89 # 2-35 Este	3586736226	tienda.gomez30@hotmail.com	Yasmín Parra	Responsable	CTA-CLI-177
005281273	CC	Yeimy	Valencia	t	Cartago	Calle 18 # 7L-3 Sur	Calle 18 # 7L-3 Sur	3585730652	yeimy.valencia921@hotmail.com	Yeimy Valencia	No responsable	CTA-CLI-178
6209593518	CC	Fernando	Escobar	t	Pereira	Carrera 191 Bis # 4-1 Este	Carrera 191 Bis # 4-1 Este	3638782945	fernando.escobar657@hotmail.com	Fernando Escobar	No responsable	CTA-CLI-179
829310270	CC	Jesús	Sánchez	t	Popayan	Avenida carrera 31 # 57-91 Este	Avenida carrera 31 # 57-91 Este	3790320204	jesus.sanchez468@gmail.com	Jesús Sánchez	No responsable	CTA-CLI-180
004786863-3	NIT	Cafeteria Torres Ltda.	-	t	Neiva	Carrera 61 Bis # 8-52	Carrera 61 Bis # 8-52	3752431069	cafeteria.torres247@gmail.com	Rubiela Luz García	No responsable	CTA-CLI-181
064361103-7	NIT	Restaurante Barrios S.A.	-	t	Buga	Cl. 3G # 6-1 Sur	Cl. 3G # 6-1 Sur	3129387005	restaurante.barrios881@gmail.com	Viviana Ríos	Responsable	CTA-CLI-182
91901581	CC	Lucía	Barrios	t	Cali	Carrera 33 # 6-36 Sur	Carrera 33 # 6-36 Sur	3449147660	lucia.barrios161@hotmail.com	Lucía Barrios	No responsable	CTA-CLI-183
3565880434	CC	Carlos	Vargas	f	Manizales	Cl. 160Z # 61-90 Sur	Cl. 160Z # 61-90 Sur	3165182755	carlos.vargas916@gmail.com	Carlos Vargas	No responsable	CTA-CLI-184
018366752-5	NIT	Minimercado Montoya & Cia.	-	t	Santa Marta	Transversal 162G Este # 97-5 Este	Transversal 162G Este # 97-5 Este	3459910229	minimercado.montoya691@gmail.com	Carlos Antonio García	Responsable	CTA-CLI-185
7300244714	CC	Luz	Murcia	t	Barranquilla	Av. carrera 26 # 79-40 Este	Av. carrera 26 # 79-40 Este	3627301471	luz.murcia764@outlook.com	Luz Murcia	No responsable	CTA-CLI-186
15851743	CC	Luz	Palacios	t	Pereira	Carrera 9ª # 6-54 Este	Carrera 9ª # 6-54 Este	3280634615	luz.palacios87@hotmail.com	Luz Palacios	No responsable	CTA-CLI-187
511615594-0	NIT	Supermercado Bohórquez & Cia.	-	t	Cartago	Diagonal 55 # 54-1 Este	Diagonal 55 # 54-1 Este	3781618495	supermercado.bohorquez197@outlook.com	Liliana Gloria Ospina Carmona	Responsable	CTA-CLI-188
213348039-6	NIT	Hotel Orozco S.A.	-	f	Neiva	Tr. 6ª # 8-3 Sur	Tr. 6ª # 8-3 Sur	3522395590	hotel.orozco718@outlook.com	Nora Forero Prada	No responsable	CTA-CLI-189
406409097-4	NIT	Cafeteria Valderrama S.A.	-	f	Santa Marta	Calle 6 Bis R # 4F-76 Este	Calle 6 Bis R # 4F-76 Este	3395339421	cafeteria.valderrama662@outlook.com	Héctor Jesús Hernández Orozco	Responsable	CTA-CLI-190
909738468	CC	Yésica	Zapata	t	Pasto	Avenida carrera 6ª # 15-21 Este	Avenida carrera 6ª # 15-21 Este	3950097519	yesica.zapata985@hotmail.com	Yésica Zapata	No responsable	CTA-CLI-191
950240268-1	NIT	Supermercado Caicedo S.A.S.	-	t	Buenaventura	Av. carrera 42 # 21-4	Av. carrera 42 # 21-4	3177589178	supermercado.caicedo969@gmail.com	Alex Cárdenas Luna	Responsable	CTA-CLI-192
2223943129	CC	Yazmín	Galeano	t	Pereira	Av. carrera 10 # 63-16 Sur	Av. carrera 10 # 63-16 Sur	3087814141	yazmin.galeano744@gmail.com	Yazmín Galeano	No responsable	CTA-CLI-193
764381561-4	NIT	Tienda Portilla & Cia.	-	t	Medellin	Cr. 65 # 17V-6 Sur	Cr. 65 # 17V-6 Sur	3978403690	tienda.portilla210@gmail.com	Alberto Martínez	Responsable	CTA-CLI-194
324472099-9	NIT	Hotel Cardona & Cia.	-	t	Cali	Cl. 50 # 63-24 Este	Cl. 50 # 63-24 Este	3347687014	hotel.cardona141@hotmail.com	Paola Esther Jiménez	Responsable	CTA-CLI-195
305641395-3	NIT	Colegio Camacho S.A.	-	t	Bogota	Calle 3S Bis Y # 67-71	Calle 3S Bis Y # 67-71	3767242388	colegio.camacho765@hotmail.com	Carlos Ariel Ramírez Montes	No responsable	CTA-CLI-196
09881385	CC	Carlos	Fonseca	t	Tulua	Calle 163 # 12-99 Este	Calle 163 # 12-99 Este	3854249321	carlos.fonseca628@hotmail.com	Carlos Fonseca	No responsable	CTA-CLI-197
196106462	CC	María	Pérez	t	Barranquilla	Cl. 133 # 61-2	Cl. 133 # 61-2	3879232648	maria.perez44@hotmail.com	María Pérez	No responsable	CTA-CLI-198
092327193-7	NIT	Tienda Jaimes S.A.S.	-	t	Palmira	Transversal 1ª # 72-6 Sur	Transversal 1ª # 72-6 Sur	3452991241	tienda.jaimes27@outlook.com	David Fabio Camacho	No responsable	CTA-CLI-199
294019655-6	NIT	Colegio López S.A.S.	-	f	Bucaramanga	Cl. 61 # 4-55 Este	Cl. 61 # 4-55 Este	3981693406	colegio.lopez533@gmail.com	Luz Alba Escobar	Responsable	CTA-CLI-200
047743490	CC	María	Quintero	t	Pereira	Carrera 3Q # 7-2 Sur	Carrera 3Q # 7-2 Sur	3211586938	maria.quintero861@gmail.com	María Quintero	No responsable	CTA-CLI-201
061744518-7	NIT	Tienda Ojeda S.A.S.	-	t	Neiva	Cr. 61 # 6-2 Este	Cr. 61 # 6-2 Este	3053494937	tienda.ojeda606@hotmail.com	Lida Marlene Rincón Duarte	Responsable	CTA-CLI-202
905151864-4	NIT	Panaderia Moreno S.A.	-	t	Pereira	Cl. 86 # 9-3 Sur	Cl. 86 # 9-3 Sur	3925192546	panaderia.moreno610@gmail.com	Alexander González	Responsable	CTA-CLI-203
46554947	CC	Jesús	Zuluaga	t	Bucaramanga	Tr. 35 # 3H-36	Tr. 35 # 3H-36	3170999173	jesus.zuluaga123@outlook.com	Jesús Zuluaga	No responsable	CTA-CLI-204
1108099693	CC	Gustavo	Flórez	t	Villavicencio	Calle 5ª # 4-6 Este	Calle 5ª # 4-6 Este	3084887256	gustavo.florez913@gmail.com	Gustavo Flórez	No responsable	CTA-CLI-205
18489554	CC	Johanna	Bastidas	t	Popayan	Cr. 49 # 8-5 Este	Cr. 49 # 8-5 Este	3393769042	johanna.bastidas519@hotmail.com	Johanna Bastidas	No responsable	CTA-CLI-206
003075622-0	NIT	Restaurante Cardozo S.A.S.	-	t	Tulua	Avenida carrera 1ª # 95-4	Avenida carrera 1ª # 95-4	3863536541	restaurante.cardozo382@outlook.com	Juan Carlos Sánchez	Responsable	CTA-CLI-207
050455623-8	NIT	Tienda Roa Ltda.	-	t	Pasto	Av. calle 152 # 46-67 Este	Av. calle 152 # 46-67 Este	3692221969	tienda.roa247@outlook.com	María Gutiérrez	Responsable	CTA-CLI-208
339187851-9	NIT	Panaderia Salgado & Cia.	-	t	Ibague	Carrera 85 # 3-1	Carrera 85 # 3-1	3108839822	panaderia.salgado875@hotmail.com	Néstor Alexander Bonilla	No responsable	CTA-CLI-209
0371837645	CC	José	Palacios	t	Manizales	Avenida Busbanzá # 1-8	Avenida Busbanzá # 1-8	3208814743	jose.palacios909@hotmail.com	José Palacios	No responsable	CTA-CLI-210
9911914856	CC	María	López	t	Ibague	Transversal 61U Este # 6N-4 Sur	Transversal 61U Este # 6N-4 Sur	3467997024	maria.lopez148@hotmail.com	María López	No responsable	CTA-CLI-211
25431074	CC	Mariana	Calderón	t	Cali	Tr. 9 Bis Q # 77S-82	Tr. 9 Bis Q # 77S-82	3279907726	mariana.calderon809@gmail.com	Mariana Calderón	No responsable	CTA-CLI-212
8092024286	CC	Andrés	Martínez	t	Buenaventura	Cr. 76 # 4-29	Cr. 76 # 4-29	3990413797	andres.martinez175@hotmail.com	Andrés Martínez	No responsable	CTA-CLI-213
086131712-7	NIT	Tienda Cáceres Ltda.	-	t	Cali	Carrera 23 # 5-3 Este	Carrera 23 # 5-3 Este	3484677378	tienda.caceres393@gmail.com	Herney Carlos Gutiérrez	No responsable	CTA-CLI-214
668893734-6	NIT	Cafeteria Gaitán S.A.S.	-	t	Armenia	Avenida calle 53 # 9C-82 Este	Avenida calle 53 # 9C-82 Este	3706562729	cafeteria.gaitan28@outlook.com	Paulina Cabrera Quintero	No responsable	CTA-CLI-215
578713315-0	NIT	Colegio Espinosa S.A.	-	t	Popayan	Dg. 59 # 8-35	Dg. 59 # 8-35	3983930103	colegio.espinosa928@gmail.com	Rodolfo Martínez Guerrero	Responsable	CTA-CLI-216
301742684-1	NIT	Panaderia Mendoza S.A.S.	-	t	Barranquilla	Cr. 116E Bis # 46-73	Cr. 116E Bis # 46-73	3459332727	panaderia.mendoza621@outlook.com	Tania Pulido Martínez	Responsable	CTA-CLI-217
982708086	CC	Aida	Herrera	t	Santa Marta	Diagonal 5ª # 77-1 Este	Diagonal 5ª # 77-1 Este	3978292216	aida.herrera615@outlook.com	Aida Herrera	No responsable	CTA-CLI-218
405377351-5	NIT	Minimercado Cano S.A.S.	-	t	Ibague	Cr. 180 # 7-41	Cr. 180 # 7-41	3850643171	minimercado.cano218@outlook.com	Elizabeth Milena Salazar Vega	No responsable	CTA-CLI-219
183673657-6	NIT	Colegio Cabrera & Cia.	-	t	Barranquilla	Dg. 99 # 47N-5	Dg. 99 # 47N-5	3615654527	colegio.cabrera94@gmail.com	David Jesús Bohórquez Bautista	Responsable	CTA-CLI-220
1373678508	CC	Elsa	Vergara	t	Bucaramanga	Calle 73I # 99I-47 Este	Calle 73I # 99I-47 Este	3214862890	elsa.vergara198@gmail.com	Elsa Vergara	No responsable	CTA-CLI-221
2975170281	CC	Marcela	López	t	Barranquilla	Dg. 74 # 84-1 Este	Dg. 74 # 84-1 Este	3406937515	marcela.lopez623@gmail.com	Marcela López	No responsable	CTA-CLI-222
154544432	CC	Carmen	Patiño	t	Cucuta	Cl. 3S # 9-9 Este	Cl. 3S # 9-9 Este	3830965207	carmen.patino266@hotmail.com	Carmen Patiño	No responsable	CTA-CLI-223
711671902-2	NIT	Hotel Gómez Ltda.	-	t	Bucaramanga	Calle 9ª # 57-87	Calle 9ª # 57-87	3941318699	hotel.gomez232@outlook.com	Lucía Nancy Sánchez Jaramillo	No responsable	CTA-CLI-224
57018409	CC	Andrés	Bernal	t	Palmira	Transversal 79 # 9-9 Este	Transversal 79 # 9-9 Este	3435334485	andres.bernal688@hotmail.com	Andrés Bernal	No responsable	CTA-CLI-225
720465375-5	NIT	Cafeteria Ortiz S.A.S.	-	t	Santa Marta	Calle 3L Este # 7-15	Calle 3L Este # 7-15	3646417080	cafeteria.ortiz230@hotmail.com	Eliana Paula Vargas Navarro	Responsable	CTA-CLI-226
1794695489	CC	Luis	Bohórquez	f	Tulua	Cl. 32 # 5-59 Este	Cl. 32 # 5-59 Este	3952997877	luis.bohorquez905@gmail.com	Luis Bohórquez	No responsable	CTA-CLI-227
316475255-3	NIT	Tienda González Ltda.	-	f	Palmira	Av. carrera 7ª # 8-1	Av. carrera 7ª # 8-1	3419283276	tienda.gonzalez948@hotmail.com	Felipe Silva Zapata	No responsable	CTA-CLI-228
72614933	CC	Margarita	Muñoz	t	Pereira	Cl. 95 # 6-18	Cl. 95 # 6-18	3163735160	margarita.munoz858@outlook.com	Margarita Muñoz	No responsable	CTA-CLI-229
364710276-7	NIT	Supermercado Salazar S.A.	-	t	Armenia	Cr. 198C # 93-18	Cr. 198C # 93-18	3735925556	supermercado.salazar779@gmail.com	Martha Leydi Lozano	Responsable	CTA-CLI-230
073375433-0	NIT	Distribuidora Reyes Ltda.	-	t	Medellin	Cl. 183F # 4-1	Cl. 183F # 4-1	3365414586	distribuidora.reyes864@outlook.com	Leidy Álvarez Soto	No responsable	CTA-CLI-231
820812191-3	NIT	Panaderia Arboleda S.A.S.	-	t	Palmira	Cl. 79 # 14-1 Este	Cl. 79 # 14-1 Este	3619399091	panaderia.arboleda674@hotmail.com	Albeiro Díaz	Responsable	CTA-CLI-232
35494651	CC	Gerson	López	t	Barranquilla	Cr. 45 # 5-55 Este	Cr. 45 # 5-55 Este	3909862405	gerson.lopez992@outlook.com	Gerson López	No responsable	CTA-CLI-233
06980420	CC	Natalia	Contreras	t	Medellin	Tr. 59 # 4-39 Sur	Tr. 59 # 4-39 Sur	3439407016	natalia.contreras278@outlook.com	Natalia Contreras	No responsable	CTA-CLI-234
435240824-0	NIT	Hotel Pulido S.A.	-	t	Medellin	Cr. 111 # 47-8 Este	Cr. 111 # 47-8 Este	3084271094	hotel.pulido491@hotmail.com	Joaquín David Moreno Velandia	No responsable	CTA-CLI-235
750017012-7	NIT	Panaderia Pineda S.A.	-	t	Barranquilla	Dg. 4U # 25-2	Dg. 4U # 25-2	3706324241	panaderia.pineda370@outlook.com	Juan Jaime Murillo	Responsable	CTA-CLI-236
505331586-9	NIT	Panaderia Carmona Ltda.	-	t	Santa Marta	Cl. 7G # 48P-8 Sur	Cl. 7G # 48P-8 Sur	3232260256	panaderia.carmona885@outlook.com	Milena María Zapata Aguilar	Responsable	CTA-CLI-237
053457861	CC	Gloria	Herrera	t	Popayan	Cl. 124O # 6-5 Sur	Cl. 124O # 6-5 Sur	3035797279	gloria.herrera359@outlook.com	Gloria Herrera	No responsable	CTA-CLI-238
191826199-0	NIT	Distribuidora Mesa & Cia.	-	t	Neiva	Carrera 104 # 82-5	Carrera 104 # 82-5	3623445655	distribuidora.mesa279@hotmail.com	Fredy Felipe Romero	No responsable	CTA-CLI-239
77517016	CC	César	Orjuela	t	Pasto	Carrera 4F # 69Y-69 Sur	Carrera 4F # 69Y-69 Sur	3608801994	cesar.orjuela576@outlook.com	César Orjuela	No responsable	CTA-CLI-240
794728463	CC	Juan	Pabón	t	Palmira	Calle 28 # 5-50 Este	Calle 28 # 5-50 Este	3920867808	juan.pabon404@hotmail.com	Juan Pabón	No responsable	CTA-CLI-241
62582739	CC	Antonio	García	t	Cartago	Calle 163N Bis N # 8-2 Sur	Calle 163N Bis N # 8-2 Sur	3021962071	antonio.garcia8@gmail.com	Antonio García	No responsable	CTA-CLI-242
498776945-3	NIT	Panaderia Marín Ltda.	-	t	Pasto	Calle 40 # 6-3 Sur	Calle 40 # 6-3 Sur	3147379965	panaderia.marin507@gmail.com	Lorena Dora Vergara	Responsable	CTA-CLI-243
076617711-5	NIT	Supermercado Calderón S.A.	-	f	Neiva	Cr. 8Q Sur # 5-7 Este	Cr. 8Q Sur # 5-7 Este	3921249985	supermercado.calderon612@hotmail.com	Martha Vásquez	Responsable	CTA-CLI-244
602606474-6	NIT	Distribuidora Pérez & Cia.	-	t	Cartago	Carrera 4V # 4-69	Carrera 4V # 4-69	3872343098	distribuidora.perez766@gmail.com	Lina Fanny Cruz Arenas	Responsable	CTA-CLI-245
911352909-6	NIT	Colegio Díaz S.A.	-	t	Palmira	Calle 67 Bis # 81-6 Sur	Calle 67 Bis # 81-6 Sur	3561014388	colegio.diaz595@outlook.com	Fidel Medina Pérez	No responsable	CTA-CLI-246
9088117298	CC	Carlos	Pineda	t	Buenaventura	Carrera 4ª # 91H-6 Este	Carrera 4ª # 91H-6 Este	3068650863	carlos.pineda809@hotmail.com	Carlos Pineda	No responsable	CTA-CLI-247
196565234-1	NIT	Hotel Guzmán S.A.S.	-	t	Popayan	Cr. 52G # 2F-60 Sur	Cr. 52G # 2F-60 Sur	3389994043	hotel.guzman622@outlook.com	Amparo Álvarez Pinzón	No responsable	CTA-CLI-248
4309883920	CC	Jessica	Núñez	t	Pasto	Calle 44K # 10O-7	Calle 44K # 10O-7	3530214656	jessica.nunez601@hotmail.com	Jessica Núñez	No responsable	CTA-CLI-249
287101226-9	NIT	Cafeteria Ramírez & Cia.	-	f	Santa Marta	Cl. 131 # 3-95 Sur	Cl. 131 # 3-95 Sur	3166978480	cafeteria.ramirez739@outlook.com	Andrés José Arango Escobar	Responsable	CTA-CLI-250
995777387-2	NIT	Colegio Vásquez S.A.	-	t	Cali	Calle 3Y # 5-3 Sur	Calle 3Y # 5-3 Sur	3148951343	colegio.vasquez151@gmail.com	María Ángela Sierra	Responsable	CTA-CLI-251
549480831-3	NIT	Panaderia Ortiz & Cia.	-	t	Cartago	Calle 4ª # 5-72	Calle 4ª # 5-72	3678377701	panaderia.ortiz227@hotmail.com	Julieth Andrea Romero Bravo	Responsable	CTA-CLI-252
184894769	CC	Myriam	Castillo	t	Tulua	Av. calle 187 # 3-3	Av. calle 187 # 3-3	3735779071	myriam.castillo70@hotmail.com	Myriam Castillo	No responsable	CTA-CLI-253
651269448	CC	Yina	Peña	t	Manizales	Cl. 84J # 75-11 Este	Cl. 84J # 75-11 Este	3695946368	yina.pena495@outlook.com	Yina Peña	No responsable	CTA-CLI-254
1606484229	CC	Antonio	Beltrán	t	Buga	Cl. 5ª # 2S-38	Cl. 5ª # 2S-38	3405720259	antonio.beltran793@gmail.com	Antonio Beltrán	No responsable	CTA-CLI-255
36502491	CC	Daniel	Andrade	t	Palmira	Cl. 161P # 8J-45 Este	Cl. 161P # 8J-45 Este	3630097925	daniel.andrade255@gmail.com	Daniel Andrade	No responsable	CTA-CLI-256
596158657-8	NIT	Cafeteria Ramírez S.A.S.	-	f	Buenaventura	Cl. 115W # 4-3	Cl. 115W # 4-3	3091343161	cafeteria.ramirez721@outlook.com	Andrea Rodríguez	Responsable	CTA-CLI-257
727790104-3	NIT	Panaderia Bermúdez Ltda.	-	t	Buenaventura	Cr. 2F # 79-40 Este	Cr. 2F # 79-40 Este	3289861434	panaderia.bermudez49@gmail.com	Pablo Martínez Díaz	Responsable	CTA-CLI-258
154379937-1	NIT	Tienda Muñoz & Cia.	-	t	Cartago	Cr. 176F Bis L # 48-57 Sur	Cr. 176F Bis L # 48-57 Sur	3240659657	tienda.munoz441@hotmail.com	Augusto José González	Responsable	CTA-CLI-259
774688623-9	NIT	Restaurante Muñoz Ltda.	-	t	Armenia	Cr. 41 # 5-2	Cr. 41 # 5-2	3240758181	restaurante.munoz86@hotmail.com	Jimena Adriana Ruiz Rodríguez	Responsable	CTA-CLI-260
23569725	CC	Yeferson	Bernal	t	Manizales	Carrera 52 # 1-94	Carrera 52 # 1-94	3217525007	yeferson.bernal215@hotmail.com	Yeferson Bernal	No responsable	CTA-CLI-261
043842797-8	NIT	Tienda Gómez S.A.S.	-	t	Santa Marta	Av. calle 5ª # 9-1 Este	Av. calle 5ª # 9-1 Este	3819148580	tienda.gomez452@outlook.com	Carmen Paola Hernández González	No responsable	CTA-CLI-262
571928565-4	NIT	Supermercado Guevara Ltda.	-	t	Cucuta	Av. calle 180 # 6-4	Av. calle 180 # 6-4	3310278681	supermercado.guevara794@hotmail.com	Norma Myriam Mosquera	Responsable	CTA-CLI-263
613750606-8	NIT	Minimercado Trujillo & Cia.	-	t	Medellin	Transversal 47 Bis Y # 6-1	Transversal 47 Bis Y # 6-1	3536153051	minimercado.trujillo666@outlook.com	Sandra Hernández Salcedo	No responsable	CTA-CLI-264
2723804682	CC	Fernando	Figueroa	t	Buga	Cl. 89D # 22-8	Cl. 89D # 22-8	3756704310	fernando.figueroa855@gmail.com	Fernando Figueroa	No responsable	CTA-CLI-265
359782071-5	NIT	Colegio García & Cia.	-	t	Palmira	Transversal 199H # 6J-96 Sur	Transversal 199H # 6J-96 Sur	3182037788	colegio.garcia163@outlook.com	Paula Rodríguez Meneses	No responsable	CTA-CLI-266
016400524-2	NIT	Restaurante Suárez & Cia.	-	t	Neiva	Carrera 199W # 4Q-8 Sur	Carrera 199W # 4Q-8 Sur	3786801128	restaurante.suarez855@gmail.com	Rosa Esther Pineda	Responsable	CTA-CLI-267
9353875842	CC	Alejandra	García	t	Ibague	Av. calle 71 # 43-6 Este	Av. calle 71 # 43-6 Este	3824172482	alejandra.garcia922@outlook.com	Alejandra García	No responsable	CTA-CLI-268
296685161-2	NIT	Supermercado Rodríguez S.A.	-	t	Bucaramanga	Cr. 126D Sur # 1-61	Cr. 126D Sur # 1-61	3275304637	supermercado.rodriguez977@hotmail.com	Fabiola Derly Castro Vargas	Responsable	CTA-CLI-269
665800439	CC	Ana	Cardona	t	Barranquilla	Carrera 136H # 51-2	Carrera 136H # 51-2	3735989334	ana.cardona182@hotmail.com	Ana Cardona	No responsable	CTA-CLI-270
3667428604	CC	Dary	Nieto	t	Armenia	Tr. 177 # 69-6 Este	Tr. 177 # 69-6 Este	3765801856	dary.nieto941@outlook.com	Dary Nieto	No responsable	CTA-CLI-271
933441969	CC	Doris	Pérez	t	Pasto	Cr. 89 # 36-5 Sur	Cr. 89 # 36-5 Sur	3315727919	doris.perez308@outlook.com	Doris Pérez	No responsable	CTA-CLI-272
596401658-2	NIT	Cafeteria Fernández & Cia.	-	t	Cartago	Cl. 2ª # 28-8 Sur	Cl. 2ª # 28-8 Sur	3029702135	cafeteria.fernandez393@hotmail.com	Astrid Herrera	Responsable	CTA-CLI-273
64525777	CC	Andrés	Álvarez	t	Ibague	Cl. 46 # 2G-8 Este	Cl. 46 # 2G-8 Este	3547812914	andres.alvarez913@gmail.com	Andrés Álvarez	No responsable	CTA-CLI-274
5421689421	CC	Alfredo	Díaz	t	Cali	Av. Rodríguez # 2-12 Este	Av. Rodríguez # 2-12 Este	3044789856	alfredo.diaz138@outlook.com	Alfredo Díaz	No responsable	CTA-CLI-275
8780157399	CC	José	Burgos	t	Bucaramanga	Avenida calle 3ª # 89-7 Este	Avenida calle 3ª # 89-7 Este	3305616484	jose.burgos934@gmail.com	José Burgos	No responsable	CTA-CLI-276
556168147	CE	Laura	Gómez	t	Pereira	Carrera 145 # 49-70 Este	Carrera 145 # 49-70 Este	3214586833	laura.gomez60@outlook.com	Laura Gómez	No responsable	CTA-CLI-277
738299737-6	NIT	Supermercado Mosquera S.A.S.	-	t	Bucaramanga	Cl. 8ª # 43-32 Sur	Cl. 8ª # 43-32 Sur	3311656670	supermercado.mosquera670@outlook.com	Stella Guerrero López	Responsable	CTA-CLI-278
798089324-6	NIT	Distribuidora Alvarado & Cia.	-	t	Ibague	Transversal 193 # 47-6	Transversal 193 # 47-6	3095396218	distribuidora.alvarado70@hotmail.com	Antonio Díaz	Responsable	CTA-CLI-279
449058147-7	NIT	Panaderia Correa Ltda.	-	t	Bucaramanga	Dg. 197 # 66-1 Sur	Dg. 197 # 66-1 Sur	3005411998	panaderia.correa474@hotmail.com	Felipe Eduardo Moreno Cardona	Responsable	CTA-CLI-280
605766270-2	NIT	Panaderia Gómez Ltda.	-	t	Popayan	Dg. 24 # 5-39 Este	Dg. 24 # 5-39 Este	3895171870	panaderia.gomez148@outlook.com	Mercedes María Mosquera Torres	Responsable	CTA-CLI-281
3639264957	CE	Viviana	Murillo	t	Neiva	Cr. 162 # 2-3 Este	Cr. 162 # 2-3 Este	3823298324	viviana.murillo723@outlook.com	Viviana Murillo	No responsable	CTA-CLI-282
6634163894	CC	María	Torres	t	Villavicencio	Avenida carrera 74 # 91-1 Este	Avenida carrera 74 # 91-1 Este	3484631224	maria.torres653@gmail.com	María Torres	No responsable	CTA-CLI-283
883552312-4	NIT	Distribuidora Romero Ltda.	-	t	Bucaramanga	Av. carrera 33 # 7-68 Este	Av. carrera 33 # 7-68 Este	3329212779	distribuidora.romero460@outlook.com	Sandra Lucía Riascos Sandoval	Responsable	CTA-CLI-284
73543520	CC	Alonso	Mosquera	t	Cucuta	Cl. 119X Bis Y # 73-97 Sur	Cl. 119X Bis Y # 73-97 Sur	3904217762	alonso.mosquera226@hotmail.com	Alonso Mosquera	No responsable	CTA-CLI-285
256908776	CE	Miryam	Martínez	t	Cali	Av. calle 9ª # 90-6	Av. calle 9ª # 90-6	3618306719	miryam.martinez958@outlook.com	Miryam Martínez	No responsable	CTA-CLI-286
4430091093	CC	Guillermo	Blanco	t	Tulua	Cl. 50 # 64-66 Este	Cl. 50 # 64-66 Este	3911192692	guillermo.blanco713@gmail.com	Guillermo Blanco	No responsable	CTA-CLI-287
16580464	CC	Patricia	Bermúdez	t	Pereira	Carrera 144A # 36-85 Sur	Carrera 144A # 36-85 Sur	3989319508	patricia.bermudez373@outlook.com	Patricia Bermúdez	No responsable	CTA-CLI-288
866882634-3	NIT	Distribuidora Pardo Ltda.	-	t	Barranquilla	Carrera 7Y # 60-64 Este	Carrera 7Y # 60-64 Este	3517518304	distribuidora.pardo690@hotmail.com	Leandro Alexander Gómez	No responsable	CTA-CLI-289
341918255-3	NIT	Distribuidora Londoño & Cia.	-	t	Pasto	Avenida Orozco # 2-1	Avenida Orozco # 2-1	3714785969	distribuidora.londono602@hotmail.com	Diego Iván Quintero	Responsable	CTA-CLI-290
76153966	CC	Horacio	Acevedo	t	Ibague	Transversal 1ª # 7-94 Este	Transversal 1ª # 7-94 Este	3958321971	horacio.acevedo611@outlook.com	Horacio Acevedo	No responsable	CTA-CLI-291
733950047-9	NIT	Restaurante Gutiérrez S.A.S.	-	t	Armenia	Av. calle 139 # 3-9	Av. calle 139 # 3-9	3748016245	restaurante.gutierrez375@hotmail.com	María Omaira Hernández Giraldo	Responsable	CTA-CLI-292
982507146-1	NIT	Distribuidora Chaparro S.A.	-	t	Pasto	Calle 128 # 12-42	Calle 128 # 12-42	3125457387	distribuidora.chaparro488@hotmail.com	Leidy Bermúdez Moreno	Responsable	CTA-CLI-293
280988516-5	NIT	Tienda Mantilla & Cia.	-	t	Buga	Cr. 183 # 8-13 Este	Cr. 183 # 8-13 Este	3604945198	tienda.mantilla159@gmail.com	Diana Blanco Suárez	Responsable	CTA-CLI-294
636897028-3	NIT	Tienda Pacheco S.A.S.	-	t	Popayan	Calle 16 # 39R-10	Calle 16 # 39R-10	3857865278	tienda.pacheco560@hotmail.com	Andrés Rangel	Responsable	CTA-CLI-295
44204380	CC	Roberto	Franco	t	Palmira	Diagonal 136 # 55-7	Diagonal 136 # 55-7	3571983863	roberto.franco804@outlook.com	Roberto Franco	No responsable	CTA-CLI-296
64334722	CC	Edgar	González	t	Buga	Av. carrera 168 # 50-5 Este	Av. carrera 168 # 50-5 Este	3820055778	edgar.gonzalez562@hotmail.com	Edgar González	No responsable	CTA-CLI-297
015569902	CC	Arley	Pérez	t	Buga	Diagonal 175 # 5-58 Sur	Diagonal 175 # 5-58 Sur	3355770272	arley.perez472@outlook.com	Arley Pérez	No responsable	CTA-CLI-298
22591365	CC	Alfonso	Bastidas	t	Buga	Cr. 7B # 45-66 Sur	Cr. 7B # 45-66 Sur	3177739260	alfonso.bastidas45@gmail.com	Alfonso Bastidas	No responsable	CTA-CLI-299
973103241	CC	David	Gaitán	t	Palmira	Carrera 121 # 9U-4 Sur	Carrera 121 # 9U-4 Sur	3714677418	david.gaitan190@hotmail.com	David Gaitán	No responsable	CTA-CLI-300
\.


--
-- TOC entry 3578 (class 0 OID 16667)
-- Dependencies: 240
-- Data for Name: factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factura (id_factura, nit, razon_social, direccion, numero_factura, fecha_hora_emision, metodo_pago, id_cliente) FROM stdin;
1	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5001	2025-06-23 11:42:14	Tarjeta debito	911352909-6
2	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5002	2025-06-23 18:00:47	Efectivo	826773454-0
3	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5003	2025-06-23 14:58:53	Tarjeta de credito	2222064474
4	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5004	2025-06-25 13:05:52	Tarjeta de credito	881658039
5	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5005	2025-06-25 11:56:37	Transferencia	571928565-4
6	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5006	2025-06-25 10:19:24	Transferencia	346247510-7
7	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5007	2025-06-25 11:54:50	Tarjeta de credito	435240824-0
8	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5008	2025-06-27 15:44:40	Tarjeta de credito	570433154-1
9	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5009	2025-06-27 14:59:35	Transferencia	499125134-1
10	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5010	2025-06-28 11:33:18	Transferencia	950240268-1
11	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5011	2025-06-28 10:11:18	Efectivo	473384842-1
12	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5012	2025-06-29 18:43:37	Efectivo	0552818325
13	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5013	2025-06-30 16:07:25	Efectivo	621182339-8
14	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5014	2025-07-01 13:29:14	Efectivo	826773454-0
15	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5015	2025-07-01 14:43:53	Tarjeta de credito	303161799-0
16	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5016	2025-07-01 08:31:33	Efectivo	181960013-3
17	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5017	2025-07-01 15:44:21	Tarjeta de credito	473384842-1
18	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5018	2025-07-02 09:29:11	Tarjeta debito	849808412-4
19	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5019	2025-07-02 10:40:00	Efectivo	473210469-6
20	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5020	2025-07-02 18:13:45	PSE	715890429
21	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5021	2025-07-02 10:48:48	PSE	176936763-2
22	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5022	2025-07-03 11:04:12	Transferencia	2984257991
23	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5023	2025-07-03 12:56:56	Tarjeta debito	91901581
24	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5024	2025-07-03 11:17:56	Transferencia	016668700-2
25	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5025	2025-07-03 14:21:39	Efectivo	12021697
26	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5026	2025-07-04 17:53:22	Efectivo	9088117298
27	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5027	2025-07-04 12:22:04	Transferencia	602606474-6
28	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5028	2025-07-05 12:28:39	Tarjeta debito	685160481-7
29	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5029	2025-07-05 10:30:16	Efectivo	2723804682
30	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5030	2025-07-05 14:09:31	Tarjeta debito	826773454-0
31	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5031	2025-07-07 16:28:34	Transferencia	489025039-2
32	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5032	2025-07-08 17:02:00	PSE	90600780
33	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5033	2025-07-08 08:24:52	Transferencia	168457759-0
34	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5034	2025-07-08 12:34:40	Efectivo	718707286-7
35	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5035	2025-07-09 12:13:53	Efectivo	364710276-7
36	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5036	2025-07-09 13:56:16	Efectivo	2997968845
37	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5037	2025-07-10 12:02:25	Tarjeta de credito	084958803
38	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5038	2025-07-11 15:14:41	Transferencia	620153368-8
39	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5039	2025-07-11 11:37:07	Transferencia	416724342-6
40	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5040	2025-07-11 08:42:08	Transferencia	047743490
41	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5041	2025-07-11 19:28:30	Tarjeta de credito	2222064474
42	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5042	2025-07-11 13:07:03	Transferencia	327104054-1
43	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5043	2025-07-13 15:56:49	Tarjeta debito	06980420
44	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5044	2025-07-14 12:47:22	Tarjeta debito	4309883920
45	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5045	2025-07-14 11:36:44	Transferencia	8857448906
46	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5046	2025-07-16 18:38:59	Tarjeta debito	02203173
47	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5047	2025-07-16 16:39:20	Tarjeta de credito	092327193-7
48	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5048	2025-07-16 18:09:23	Transferencia	9298316873
49	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5049	2025-07-16 12:06:08	Tarjeta de credito	0016761847
50	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5050	2025-07-17 11:12:43	Transferencia	499125134-1
51	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5051	2025-07-18 13:46:32	PSE	596401658-2
52	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5052	2025-07-18 10:19:45	Transferencia	8515832818
53	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5053	2025-07-19 15:11:34	Transferencia	849808412-4
54	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5054	2025-07-19 09:18:27	Transferencia	849808412-4
55	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5055	2025-07-20 15:15:22	Transferencia	14508993
56	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5056	2025-07-23 11:47:53	Tarjeta de credito	410564814-9
57	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5057	2025-07-24 14:30:59	Transferencia	56996112
58	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5058	2025-07-25 07:51:33	Tarjeta debito	449058147-7
59	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5059	2025-07-25 16:07:41	Efectivo	9499939330
60	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5060	2025-07-25 07:58:49	Tarjeta de credito	931839335-2
61	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5061	2025-07-26 10:13:03	Tarjeta debito	340745171-3
62	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5062	2025-07-26 12:45:59	Efectivo	050455623-8
63	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5063	2025-07-26 14:23:32	Transferencia	26033230
64	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5064	2025-07-26 15:58:57	Tarjeta debito	498776945-3
65	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5065	2025-07-28 07:18:31	Tarjeta de credito	214562328-5
66	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5066	2025-07-29 17:16:06	Tarjeta de credito	46554947
67	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5067	2025-07-29 18:48:01	Tarjeta de credito	950240268-1
68	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5068	2025-07-30 16:25:15	Tarjeta de credito	905151864-4
69	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5069	2025-07-30 16:33:29	Efectivo	084958803
70	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5070	2025-07-30 15:52:28	PSE	658404499-7
71	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5071	2025-07-31 12:36:23	Transferencia	265511047-5
72	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5072	2025-07-31 17:21:20	Efectivo	826773454-0
73	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5073	2025-07-31 11:46:43	Transferencia	621182339-8
74	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5074	2025-08-01 12:07:17	Tarjeta debito	340745171-3
75	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5075	2025-08-01 08:46:42	Tarjeta de credito	265511047-5
76	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5076	2025-08-01 11:48:41	Transferencia	620153368-8
77	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5077	2025-08-01 08:04:09	Transferencia	5421689421
78	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5078	2025-08-02 08:30:38	Tarjeta debito	218515691-5
79	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5079	2025-08-02 12:51:30	Tarjeta debito	808760385-9
80	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5080	2025-08-02 15:42:41	Transferencia	553559042
81	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5081	2025-08-04 16:13:49	Transferencia	6368157981
82	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5082	2025-08-04 15:36:52	Tarjeta de credito	621182339-8
83	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5083	2025-08-04 14:01:41	PSE	605766270-2
84	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5084	2025-08-05 12:19:52	Tarjeta debito	065787598-5
85	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5085	2025-08-06 08:27:29	Efectivo	499125134-1
86	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5086	2025-08-07 07:51:19	PSE	621182339-8
87	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5087	2025-08-07 12:08:54	Efectivo	6209593518
88	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5088	2025-08-07 08:27:43	Tarjeta debito	91901581
89	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5089	2025-08-07 16:34:22	Transferencia	733950047-9
90	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5090	2025-08-07 08:02:58	Tarjeta de credito	149368998-0
91	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5091	2025-08-08 16:52:15	Transferencia	887719065-9
92	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5092	2025-08-08 08:16:04	Efectivo	820812191-3
93	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5093	2025-08-08 09:53:17	PSE	57828410
94	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5094	2025-08-08 09:37:39	Tarjeta debito	784270103-9
95	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5095	2025-08-09 12:00:55	Efectivo	281685054-2
96	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5096	2025-08-09 14:54:22	Transferencia	050455623-8
97	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5097	2025-08-12 08:00:33	Efectivo	826773454-0
98	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5098	2025-08-12 11:48:35	Efectivo	764381561-4
99	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5099	2025-08-15 11:52:35	PSE	826773454-0
100	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5100	2025-08-15 17:18:44	Efectivo	043842797-8
101	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5101	2025-08-15 09:28:53	Tarjeta de credito	905151864-4
102	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5102	2025-08-16 10:32:50	Efectivo	905151864-4
103	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5103	2025-08-16 18:05:23	Tarjeta debito	287101226-9
104	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5104	2025-08-16 10:26:01	Transferencia	843443757-5
105	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5105	2025-08-16 12:30:05	Transferencia	503758997
106	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5106	2025-08-17 13:52:51	Transferencia	62582739
107	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5107	2025-08-17 15:53:22	Efectivo	218515691-5
108	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5108	2025-08-19 07:33:14	PSE	99451016
109	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5109	2025-08-19 17:30:54	Tarjeta de credito	883552312-4
110	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5110	2025-08-19 17:41:52	Tarjeta de credito	931839335-2
111	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5111	2025-08-20 11:13:57	Tarjeta debito	887719065-9
112	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5112	2025-08-20 12:55:45	Tarjeta de credito	1197218114
113	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5113	2025-08-21 13:23:05	Transferencia	826773454-0
114	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5114	2025-08-21 15:23:42	Transferencia	549480831-3
115	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5115	2025-08-21 14:38:42	Tarjeta debito	668893734-6
116	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5116	2025-08-22 08:12:37	Tarjeta de credito	176936763-2
117	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5117	2025-08-23 14:41:38	Transferencia	7704358112
118	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5118	2025-08-23 12:52:30	Transferencia	91901581
119	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5119	2025-08-23 11:54:16	Transferencia	435240824-0
120	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5120	2025-08-25 11:54:16	Tarjeta de credito	621182339-8
121	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5121	2025-08-25 10:51:39	Tarjeta de credito	154379937-1
122	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5122	2025-08-25 11:54:28	Efectivo	843443757-5
123	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5123	2025-08-26 10:35:14	Tarjeta de credito	579887749
124	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5124	2025-08-27 11:56:25	Tarjeta debito	416724342-6
125	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5125	2025-08-27 18:55:59	Tarjeta de credito	605766270-2
126	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5126	2025-08-27 10:09:52	Tarjeta debito	449058147-7
127	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5127	2025-08-28 12:29:39	Transferencia	287101226-9
128	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5128	2025-08-29 17:51:11	Tarjeta de credito	176936763-2
129	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5129	2025-08-29 14:26:38	PSE	781891371
130	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5130	2025-08-29 14:47:35	Tarjeta de credito	3667428604
131	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5131	2025-08-29 14:31:07	PSE	160529751-6
132	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5132	2025-08-29 08:35:48	Efectivo	0016761847
133	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5133	2025-08-29 18:15:01	PSE	64525777
134	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5134	2025-08-30 15:26:15	PSE	636897028-3
135	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5135	2025-08-30 18:55:22	PSE	651269448
136	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5136	2025-08-30 14:33:11	Tarjeta de credito	621182339-8
137	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5137	2025-08-30 16:55:25	Transferencia	6368157981
138	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5138	2025-08-31 12:14:03	Transferencia	214562328-5
139	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5139	2025-08-31 11:33:31	Tarjeta de credito	740748217-5
140	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5140	2025-09-01 09:51:11	Tarjeta de credito	0016761847
141	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5141	2025-09-01 12:05:11	Tarjeta de credito	826773454-0
142	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5142	2025-09-01 09:29:33	Tarjeta debito	329451168
143	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5143	2025-09-02 17:45:55	Transferencia	160529751-6
144	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5144	2025-09-04 14:26:27	Transferencia	364710276-7
145	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5145	2025-09-04 09:29:48	Transferencia	621182339-8
146	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5146	2025-09-04 10:38:14	Transferencia	435240824-0
147	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5147	2025-09-04 13:41:46	Tarjeta de credito	995777387-2
148	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5148	2025-09-05 17:49:33	Transferencia	595148465-6
149	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5149	2025-09-05 08:17:15	Efectivo	016400524-2
150	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5150	2025-09-06 17:40:43	Tarjeta de credito	668893734-6
151	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5151	2025-09-07 09:13:29	Transferencia	065787598-5
152	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5152	2025-09-10 17:16:58	Tarjeta de credito	1606484229
153	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5153	2025-09-11 13:50:09	Efectivo	303161799-0
154	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5154	2025-09-11 10:16:40	Transferencia	570433154-1
155	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5155	2025-09-11 08:35:17	Transferencia	6209593518
156	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5156	2025-09-11 14:41:56	Efectivo	4430091093
157	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5157	2025-09-12 16:36:27	Tarjeta debito	05566139
158	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5158	2025-09-12 15:40:34	Tarjeta debito	329451168
159	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5159	2025-09-12 10:18:46	Transferencia	764381561-4
160	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5160	2025-09-12 14:15:39	PSE	556168147
161	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5161	2025-09-13 15:48:47	Efectivo	843443757-5
162	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5162	2025-09-13 16:53:01	Tarjeta debito	340745171-3
163	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5163	2025-09-15 10:55:38	Transferencia	621182339-8
164	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5164	2025-09-15 08:06:04	Transferencia	733950047-9
165	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5165	2025-09-16 13:17:56	Transferencia	602606474-6
166	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5166	2025-09-17 18:24:35	Transferencia	473384842-1
167	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5167	2025-09-19 12:54:02	Efectivo	105123828-2
168	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5168	2025-09-19 11:26:36	Tarjeta debito	2723804682
169	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5169	2025-09-19 13:37:53	Transferencia	107622683-8
170	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5170	2025-09-19 15:34:45	Tarjeta de credito	214562328-5
171	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5171	2025-09-19 18:44:26	Transferencia	758416169-2
172	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5172	2025-09-19 11:22:22	Transferencia	303161799-0
173	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5173	2025-09-20 09:00:09	Tarjeta debito	668893734-6
174	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5174	2025-09-20 09:38:37	Transferencia	191826199-0
175	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5175	2025-09-20 15:34:54	Transferencia	499125134-1
176	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5176	2025-09-20 15:12:28	Tarjeta de credito	015569902
177	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5177	2025-09-20 12:11:04	Tarjeta de credito	772459928
178	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5178	2025-09-21 15:55:48	Efectivo	176936763-2
179	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5179	2025-09-21 13:18:25	Transferencia	02203173
180	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5180	2025-09-22 15:41:46	Tarjeta debito	364710276-7
181	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5181	2025-09-22 08:33:24	Tarjeta de credito	826773454-0
182	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5182	2025-09-23 10:53:12	Efectivo	449058147-7
183	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5183	2025-09-23 15:55:45	Tarjeta debito	449058147-7
184	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5184	2025-09-24 15:50:27	Efectivo	191826199-0
185	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5185	2025-09-24 09:27:35	PSE	004786863-3
186	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5186	2025-09-25 15:46:45	Tarjeta de credito	909738468
187	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5187	2025-09-26 17:51:06	Efectivo	91901581
188	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5188	2025-09-26 10:16:57	Efectivo	967175655-1
189	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5189	2025-09-26 13:05:27	Efectivo	826773454-0
190	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5190	2025-09-27 10:37:35	Efectivo	826773454-0
191	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5191	2025-09-27 08:23:51	PSE	5421689421
192	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5192	2025-09-27 12:02:39	Tarjeta de credito	713493618-3
193	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5193	2025-09-27 10:06:49	Efectivo	0016761847
194	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5194	2025-09-28 14:08:04	PSE	2984257991
195	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5195	2025-09-29 17:26:15	Transferencia	016400524-2
196	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5196	2025-09-30 10:50:43	PSE	764381561-4
197	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5197	2025-10-01 13:44:51	Tarjeta de credito	908240433
198	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5198	2025-10-01 08:19:52	Efectivo	02203173
199	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5199	2025-10-01 14:04:16	Transferencia	4430091093
200	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5200	2025-10-02 10:23:35	Tarjeta debito	693465472
201	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5201	2025-10-02 14:03:15	Transferencia	595148465-6
202	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5202	2025-10-02 16:50:42	Efectivo	017046226-5
203	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5203	2025-10-02 18:49:38	Efectivo	5436459701
204	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5204	2025-10-03 16:36:59	Efectivo	950240268-1
205	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5205	2025-10-03 09:11:40	Tarjeta de credito	064361103-7
206	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5206	2025-10-03 12:37:09	Tarjeta debito	9298316873
207	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5207	2025-10-03 10:02:37	Transferencia	9988081770
208	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5208	2025-10-03 14:55:16	Tarjeta de credito	505331586-9
209	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5209	2025-10-04 16:26:48	Transferencia	061744518-7
210	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5210	2025-10-05 17:56:04	Transferencia	764381561-4
211	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5211	2025-10-06 10:49:20	Transferencia	5564729293
212	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5212	2025-10-07 10:42:53	Transferencia	849808412-4
213	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5213	2025-10-07 10:23:34	Tarjeta de credito	8515832818
214	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5214	2025-10-07 12:34:12	Efectivo	636897028-3
215	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5215	2025-10-08 18:17:50	Transferencia	02203173
216	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5216	2025-10-08 14:10:40	PSE	733950047-9
217	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5217	2025-10-09 17:59:44	Transferencia	931839335-2
218	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5218	2025-10-09 15:06:33	Efectivo	549480831-3
219	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5219	2025-10-09 16:05:37	Tarjeta debito	281685054-2
220	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5220	2025-10-09 15:46:01	Transferencia	694097499-3
221	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5221	2025-10-10 13:28:20	Tarjeta debito	154544432
222	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5222	2025-10-10 16:18:18	Efectivo	905151864-4
223	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5223	2025-10-10 15:33:13	Efectivo	849808412-4
224	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5224	2025-10-10 16:59:49	Tarjeta de credito	596158657-8
225	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5225	2025-10-10 08:34:46	Transferencia	654051531-9
226	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5226	2025-10-10 08:38:27	Efectivo	2723804682
227	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5227	2025-10-10 12:46:41	Transferencia	713493618-3
228	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5228	2025-10-11 12:00:01	PSE	738299737-6
229	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5229	2025-10-11 10:49:05	Tarjeta debito	9162473149
230	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5230	2025-10-11 11:07:01	Tarjeta debito	620153368-8
231	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5231	2025-10-11 15:41:54	Tarjeta de credito	605766270-2
232	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5232	2025-10-11 10:12:51	Transferencia	895798687-2
233	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5233	2025-10-12 13:33:51	Efectivo	621182339-8
234	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5234	2025-10-12 14:39:20	PSE	991547887-2
235	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5235	2025-10-13 13:50:21	Tarjeta debito	2222064474
236	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5236	2025-10-13 13:12:29	Transferencia	305486874-0
237	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5237	2025-10-13 15:03:02	Tarjeta de credito	843443757-5
238	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5238	2025-10-14 10:47:25	Transferencia	061744518-7
239	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5239	2025-10-15 16:55:16	Efectivo	589578291-1
240	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5240	2025-10-15 10:10:22	Efectivo	820812191-3
241	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5241	2025-10-16 12:18:40	Tarjeta debito	140369656
242	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5242	2025-10-16 13:50:33	Transferencia	7500369155
243	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5243	2025-10-17 19:28:31	Tarjeta debito	115542622-1
244	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5244	2025-10-17 11:10:55	PSE	499125134-1
245	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5245	2025-10-17 12:37:22	Efectivo	183673657-6
246	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5246	2025-10-17 12:20:27	Tarjeta debito	849808412-4
247	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5247	2025-10-18 14:17:14	Tarjeta de credito	18489554
248	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5248	2025-10-18 09:15:14	Tarjeta debito	826773454-0
249	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5249	2025-10-19 12:48:31	Transferencia	159996504-7
250	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5250	2025-10-21 12:32:57	Transferencia	621182339-8
251	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5251	2025-10-21 15:58:00	Tarjeta de credito	218515691-5
252	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5252	2025-10-22 17:52:26	Efectivo	711671902-2
253	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5253	2025-10-23 09:38:12	Tarjeta de credito	56996112
254	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5254	2025-10-23 13:19:42	Transferencia	771753556-0
255	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5255	2025-10-23 08:00:58	Efectivo	621182339-8
256	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5256	2025-10-23 15:38:12	Tarjeta debito	09376184
257	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5257	2025-10-24 17:27:13	Tarjeta de credito	196106462
258	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5258	2025-10-24 11:55:33	Efectivo	967175655-1
259	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5259	2025-10-24 14:27:55	PSE	764381561-4
260	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5260	2025-10-25 14:24:46	Transferencia	798089324-6
261	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5261	2025-10-25 16:54:06	Tarjeta de credito	376137918-0
262	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5262	2025-10-25 15:34:05	Efectivo	140369656
263	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5263	2025-10-25 16:26:44	Tarjeta de credito	422096902-9
264	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5264	2025-10-25 18:36:09	Transferencia	6209593518
265	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5265	2025-10-25 15:12:33	PSE	105123828-2
266	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5266	2025-10-25 13:15:18	Tarjeta de credito	837354033-1
267	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5267	2025-10-25 13:54:28	Efectivo	073375433-0
268	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5268	2025-10-26 15:02:24	Tarjeta de credito	9499939330
269	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5269	2025-10-26 14:35:21	Tarjeta debito	621182339-8
270	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5270	2025-10-27 17:32:18	Efectivo	931839335-2
271	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5271	2025-10-27 09:15:00	Transferencia	826773454-0
272	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5272	2025-10-28 10:55:46	Efectivo	849808412-4
273	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5273	2025-10-28 09:49:18	PSE	005281273
274	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5274	2025-10-28 09:18:43	PSE	91901581
275	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5275	2025-10-28 09:41:52	Transferencia	964990913-3
276	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5276	2025-10-28 15:10:28	Tarjeta de credito	798089324-6
277	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5277	2025-10-29 07:00:32	Transferencia	191826199-0
278	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5278	2025-10-29 09:45:58	Transferencia	883552312-4
279	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5279	2025-10-29 07:53:01	Transferencia	621182339-8
280	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5280	2025-10-30 08:44:50	Tarjeta de credito	176936763-2
281	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5281	2025-10-30 08:12:53	Tarjeta de credito	774688623-9
282	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5282	2025-10-30 10:19:55	Transferencia	905151864-4
283	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5283	2025-10-30 08:45:41	PSE	964990913-3
284	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5284	2025-10-30 16:54:10	Tarjeta de credito	931839335-2
285	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5285	2025-10-31 13:16:06	Tarjeta de credito	296685161-2
286	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5286	2025-10-31 11:56:10	Tarjeta de credito	133387262-4
287	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5287	2025-11-01 14:45:21	Transferencia	499125134-1
288	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5288	2025-11-01 15:49:43	Efectivo	076617711-5
289	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5289	2025-11-01 12:37:05	Efectivo	91901581
290	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5290	2025-11-02 13:37:02	Transferencia	621182339-8
291	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5291	2025-11-02 08:47:26	Tarjeta debito	785477725-2
292	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5292	2025-11-02 12:22:32	Tarjeta debito	505331586-9
293	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5293	2025-11-02 15:40:46	PSE	808760385-9
294	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5294	2025-11-02 16:33:23	Transferencia	571928565-4
295	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5295	2025-11-03 14:28:07	Efectivo	774688623-9
296	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5296	2025-11-03 16:28:28	Efectivo	121277561-8
297	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5297	2025-11-04 14:43:03	Efectivo	047743490
298	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5298	2025-11-04 10:36:32	Tarjeta debito	092327193-7
299	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5299	2025-11-06 17:28:23	Transferencia	613750606-8
300	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5300	2025-11-06 16:26:47	Transferencia	133387262-4
301	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5301	2025-11-07 16:14:34	PSE	495621372
302	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5302	2025-11-07 13:50:54	Efectivo	892268018-2
303	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5303	2025-11-07 12:22:03	Transferencia	213348039-6
304	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5304	2025-11-07 14:46:30	Efectivo	9499939330
305	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5305	2025-11-08 12:01:13	Transferencia	092327193-7
306	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5306	2025-11-08 10:14:27	Transferencia	726490827
307	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5307	2025-11-08 12:52:21	PSE	668893734-6
308	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5308	2025-11-09 16:31:01	Transferencia	727790104-3
309	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5309	2025-11-10 08:47:56	Tarjeta debito	073375433-0
310	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5310	2025-11-10 09:21:36	Efectivo	785477725-2
311	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5311	2025-11-10 14:15:03	Efectivo	405377351-5
312	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5312	2025-11-11 10:36:16	Tarjeta debito	849808412-4
313	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5313	2025-11-11 11:15:06	Efectivo	31819588
314	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5314	2025-11-11 15:37:32	Efectivo	621182339-8
315	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5315	2025-11-11 12:32:40	PSE	15851743
316	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5316	2025-11-12 15:01:42	Tarjeta de credito	826773454-0
317	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5317	2025-11-13 10:07:19	Efectivo	849808412-4
318	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5318	2025-11-13 14:04:06	Tarjeta de credito	570433154-1
319	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5319	2025-11-13 16:16:21	Tarjeta de credito	964990913-3
320	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5320	2025-11-14 14:35:38	Tarjeta debito	160529751-6
321	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5321	2025-11-14 11:03:23	Efectivo	713493618-3
322	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5322	2025-11-15 14:22:18	Tarjeta debito	685160481-7
323	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5323	2025-11-15 09:39:42	Tarjeta de credito	316475255-3
324	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5324	2025-11-15 11:31:49	Efectivo	715890429
325	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5325	2025-11-15 14:11:44	Efectivo	621182339-8
326	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5326	2025-11-16 15:34:45	Transferencia	950240268-1
327	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5327	2025-11-16 09:15:42	Efectivo	303161799-0
328	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5328	2025-11-17 12:36:48	Tarjeta de credito	621182339-8
329	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5329	2025-11-17 08:45:31	Tarjeta de credito	499125134-1
330	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5330	2025-11-18 18:26:11	Transferencia	605766270-2
331	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5331	2025-11-19 10:08:09	Transferencia	9353875842
332	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5332	2025-11-19 11:12:31	Transferencia	752654793-5
333	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5333	2025-11-20 17:04:13	Transferencia	613750606-8
334	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5334	2025-11-20 15:35:52	Efectivo	91901581
335	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5335	2025-11-20 10:25:09	PSE	303161799-0
336	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5336	2025-11-21 10:03:46	Transferencia	061744518-7
337	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5337	2025-11-21 15:17:18	Tarjeta debito	694097499-3
338	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5338	2025-11-22 19:17:55	Transferencia	6209593518
339	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5339	2025-11-22 14:25:28	PSE	718707286-7
340	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5340	2025-11-22 19:12:05	Tarjeta de credito	71705865
341	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5341	2025-11-22 13:33:45	Tarjeta de credito	121277561-8
342	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5342	2025-11-22 11:59:06	Transferencia	571928565-4
343	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5343	2025-11-23 16:16:16	Tarjeta de credito	203875099-7
344	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5344	2025-11-23 14:14:49	Transferencia	499125134-1
345	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5345	2025-11-24 17:57:20	Transferencia	429444019
346	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5346	2025-11-25 13:14:40	Transferencia	665800439
347	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5347	2025-11-25 14:18:16	Efectivo	621182339-8
348	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5348	2025-11-25 12:30:56	Transferencia	193149190-5
349	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5349	2025-11-27 12:19:11	Transferencia	621182339-8
350	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5350	2025-11-27 10:30:53	Efectivo	168457759-0
351	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5351	2025-11-27 18:33:24	PSE	621182339-8
352	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5352	2025-11-28 08:16:57	Transferencia	176936763-2
353	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5353	2025-11-28 13:46:01	Transferencia	214562328-5
354	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5354	2025-11-28 17:07:07	Efectivo	713493618-3
355	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5355	2025-11-28 13:33:50	Transferencia	182992299-5
356	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5356	2025-11-28 17:13:40	PSE	422096902-9
357	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5357	2025-11-28 13:26:44	Efectivo	621182339-8
358	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5358	2025-11-29 14:47:33	Tarjeta de credito	826773454-0
359	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5359	2025-11-30 10:00:58	PSE	6209593518
360	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5360	2025-11-30 10:16:23	Efectivo	784270103-9
361	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5361	2025-12-01 17:48:27	Efectivo	339187851-9
362	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5362	2025-12-01 14:00:30	Transferencia	327104054-1
363	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5363	2025-12-02 16:57:33	Tarjeta debito	3565880434
364	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5364	2025-12-02 13:45:18	PSE	203875099-7
365	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5365	2025-12-02 15:55:59	Efectivo	578713315-0
366	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5366	2025-12-02 11:55:09	Tarjeta de credito	964990913-3
367	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5367	2025-12-02 10:33:34	PSE	406409097-4
368	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5368	2025-12-02 15:19:51	Transferencia	621182339-8
369	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5369	2025-12-03 09:09:25	Transferencia	570433154-1
370	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5370	2025-12-03 18:02:13	Tarjeta de credito	44204380
371	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5371	2025-12-03 14:38:14	Transferencia	909738468
372	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5372	2025-12-03 16:09:14	Transferencia	950240268-1
373	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5373	2025-12-04 07:23:23	Transferencia	359782071-5
374	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5374	2025-12-04 12:24:52	Efectivo	176936763-2
375	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5375	2025-12-04 17:13:03	Tarjeta de credito	449058147-7
376	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5376	2025-12-04 11:32:21	Tarjeta debito	003075622-0
377	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5377	2025-12-04 10:31:46	Transferencia	931839335-2
378	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5378	2025-12-04 11:56:38	Transferencia	694097499-3
379	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5379	2025-12-05 16:59:40	Tarjeta de credito	613750606-8
380	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5380	2025-12-05 19:28:31	Transferencia	668893734-6
381	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5381	2025-12-05 09:28:42	Tarjeta debito	866882634-3
382	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5382	2025-12-05 09:20:44	Transferencia	4430091093
383	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5383	2025-12-05 07:14:37	Tarjeta de credito	2997968845
384	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5384	2025-12-06 11:38:04	Transferencia	254494812-6
385	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5385	2025-12-06 16:42:41	Tarjeta de credito	030673830-2
386	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5386	2025-12-06 07:34:55	Transferencia	16580464
387	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5387	2025-12-06 09:44:37	Efectivo	061744518-7
388	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5388	2025-12-06 11:14:56	Efectivo	964990913-3
389	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5389	2025-12-08 14:31:16	Tarjeta de credito	1794695489
390	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5390	2025-12-11 15:33:58	PSE	182992299-5
391	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5391	2025-12-11 17:24:55	Tarjeta debito	549480831-3
392	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5392	2025-12-12 09:42:26	Tarjeta debito	2075011024
393	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5393	2025-12-12 17:40:46	Efectivo	01071396
394	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5394	2025-12-12 10:41:37	Tarjeta debito	061744518-7
395	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5395	2025-12-12 10:06:18	Transferencia	837354033-1
396	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5396	2025-12-12 12:46:05	Efectivo	199410137-2
397	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5397	2025-12-12 13:00:39	Tarjeta de credito	7500369155
398	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5398	2025-12-13 11:03:15	Efectivo	826773454-0
399	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5399	2025-12-13 09:07:48	Efectivo	121277561-8
400	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5400	2025-12-13 15:12:26	Tarjeta debito	31819588
401	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5401	2025-12-13 15:22:56	Efectivo	3714521117
402	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5402	2025-12-13 11:57:36	Efectivo	133387262-4
403	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5403	2025-12-13 16:53:02	Efectivo	636897028-3
404	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5404	2025-12-15 10:11:08	Efectivo	549480831-3
405	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5405	2025-12-15 13:25:34	Efectivo	168457759-0
406	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5406	2025-12-15 11:30:46	Efectivo	092327193-7
407	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5407	2025-12-16 16:19:09	Tarjeta debito	849808412-4
408	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5408	2025-12-16 13:41:50	Efectivo	798089324-6
409	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5409	2025-12-16 11:25:53	Tarjeta debito	621182339-8
410	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5410	2025-12-16 15:34:00	Tarjeta debito	568044206-7
411	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5411	2025-12-16 14:23:31	Efectivo	22591365
412	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5412	2025-12-16 15:51:54	Transferencia	084958803
413	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5413	2025-12-16 13:13:25	Tarjeta debito	193149190-5
414	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5414	2025-12-16 10:44:08	Tarjeta de credito	018366752-5
415	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5415	2025-12-17 11:07:03	Tarjeta de credito	105123828-2
416	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5416	2025-12-18 14:15:56	Tarjeta de credito	578713315-0
417	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5417	2025-12-18 12:48:15	Efectivo	8092024286
418	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5418	2025-12-18 14:01:47	Efectivo	7500369155
419	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5419	2025-12-18 11:46:53	PSE	191826199-0
420	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5420	2025-12-18 14:18:29	Efectivo	929622292-7
421	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5421	2025-12-18 12:11:09	Tarjeta de credito	931839335-2
422	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5422	2025-12-18 11:59:58	Transferencia	733950047-9
423	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5423	2025-12-19 17:25:14	Transferencia	866882634-3
424	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5424	2025-12-19 07:08:09	Transferencia	214562328-5
425	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5425	2025-12-19 10:24:05	Efectivo	061744518-7
426	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5426	2025-12-20 07:53:08	Tarjeta de credito	613750606-8
427	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5427	2025-12-20 18:40:29	Efectivo	176936763-2
428	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5428	2025-12-20 15:55:44	Transferencia	77517016
429	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5429	2025-12-20 13:55:18	Tarjeta de credito	826773454-0
430	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5430	2025-12-20 11:59:13	PSE	72614933
431	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5431	2025-12-21 10:04:15	Tarjeta de credito	115542622-1
432	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5432	2025-12-21 14:19:24	Transferencia	781891371
433	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5433	2025-12-22 15:25:41	Tarjeta debito	849808412-4
434	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5434	2025-12-24 19:39:45	Transferencia	068486661-8
435	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5435	2025-12-24 15:27:58	Efectivo	764381561-4
436	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5436	2025-12-25 10:47:02	Tarjeta de credito	964990913-3
437	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5437	2025-12-25 11:18:07	Transferencia	798089324-6
438	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5438	2025-12-25 14:30:41	Transferencia	064361103-7
439	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5439	2025-12-26 19:07:52	Transferencia	866882634-3
440	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5440	2025-12-26 10:32:27	Efectivo	133387262-4
441	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5441	2025-12-26 17:40:55	Transferencia	685160481-7
442	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5442	2025-12-27 17:40:47	Transferencia	511615594-0
443	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5443	2025-12-29 14:16:57	Transferencia	340745171-3
444	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5444	2025-12-30 10:22:55	PSE	596401658-2
445	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5445	2025-12-30 11:26:29	Transferencia	826773454-0
446	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5446	2025-12-30 10:11:43	Efectivo	772459928
447	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5447	2025-12-30 14:56:23	PSE	685160481-7
448	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5448	2025-12-30 15:15:03	Tarjeta de credito	176936763-2
449	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5449	2025-12-31 13:47:04	Tarjeta de credito	128639174
450	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5450	2025-12-31 14:11:55	Transferencia	843443757-5
451	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5451	2025-12-31 12:35:55	Transferencia	929622292-7
452	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5452	2025-12-31 09:52:33	Tarjeta debito	571928565-4
453	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5453	2025-12-31 14:44:37	Transferencia	549480831-3
454	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5454	2025-12-31 12:03:58	Transferencia	621182339-8
455	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5455	2025-12-31 11:56:34	Transferencia	931839335-2
456	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5456	2026-01-01 13:42:20	Tarjeta de credito	931839335-2
457	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5457	2026-01-01 16:15:13	PSE	905151864-4
458	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5458	2026-01-01 11:15:50	PSE	193149190-5
459	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5459	2026-01-01 11:17:10	Efectivo	168457759-0
460	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5460	2026-01-01 09:17:05	Efectivo	499125134-1
461	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5461	2026-01-01 13:05:32	Efectivo	159996504-7
462	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5462	2026-01-01 08:09:14	Transferencia	305486874-0
463	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5463	2026-01-01 18:04:22	Tarjeta debito	826773454-0
464	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5464	2026-01-01 11:58:05	Efectivo	931839335-2
465	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5465	2026-01-01 12:11:02	Transferencia	065787598-5
466	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5466	2026-01-02 12:35:36	Efectivo	199410137-2
467	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5467	2026-01-02 14:31:43	Tarjeta de credito	339187851-9
468	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5468	2026-01-02 15:53:53	Efectivo	339187851-9
469	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5469	2026-01-02 11:56:19	Transferencia	225790507-2
470	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5470	2026-01-02 14:50:24	Tarjeta debito	218515691-5
471	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5471	2026-01-03 10:17:37	PSE	849808412-4
472	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5472	2026-01-03 10:31:15	Tarjeta de credito	422096902-9
473	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5473	2026-01-03 15:12:12	Transferencia	84222231
474	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5474	2026-01-03 15:48:04	Transferencia	8515832818
475	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5475	2026-01-03 16:14:18	Efectivo	182992299-5
476	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5476	2026-01-03 12:10:41	Tarjeta de credito	740748217-5
477	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5477	2026-01-04 10:18:08	Transferencia	105123828-2
478	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5478	2026-01-05 13:23:18	Tarjeta de credito	287101226-9
479	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5479	2026-01-05 15:12:21	Transferencia	798089324-6
480	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5480	2026-01-05 12:47:17	Efectivo	808760385-9
481	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5481	2026-01-05 17:41:55	Tarjeta debito	254494812-6
482	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5482	2026-01-06 11:45:10	Efectivo	047743490
483	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5483	2026-01-07 15:06:21	Efectivo	254494812-6
484	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5484	2026-01-08 16:16:13	Transferencia	092327193-7
485	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5485	2026-01-08 12:32:54	Tarjeta de credito	570512046
486	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5486	2026-01-08 12:03:17	Efectivo	973103241
487	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5487	2026-01-09 16:18:36	Tarjeta de credito	449058147-7
488	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5488	2026-01-09 14:13:55	Efectivo	991547887-2
489	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5489	2026-01-09 16:41:35	Tarjeta de credito	346247510-7
490	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5490	2026-01-09 15:02:28	PSE	964990913-3
491	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5491	2026-01-09 12:00:44	PSE	91901581
492	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5492	2026-01-10 13:16:12	Efectivo	57828410
493	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5493	2026-01-10 16:31:00	Transferencia	826773454-0
494	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5494	2026-01-11 16:33:19	Efectivo	176936763-2
495	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5495	2026-01-11 08:12:50	Tarjeta de credito	176936763-2
496	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5496	2026-01-12 11:34:21	Transferencia	2723804682
497	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5497	2026-01-13 11:49:11	Efectivo	602606474-6
498	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5498	2026-01-14 14:27:12	Transferencia	579887749
499	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5499	2026-01-14 11:04:23	Transferencia	2984257991
500	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5500	2026-01-14 10:59:40	Transferencia	843443757-5
501	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5501	2026-01-15 10:08:16	Transferencia	121277561-8
502	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5502	2026-01-15 18:21:59	Efectivo	218515691-5
503	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5503	2026-01-15 16:33:40	Transferencia	017046226-5
504	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5504	2026-01-15 19:35:55	Tarjeta debito	018366752-5
505	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5505	2026-01-15 14:18:35	Tarjeta de credito	064361103-7
506	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5506	2026-01-16 12:33:19	Tarjeta de credito	621182339-8
507	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5507	2026-01-16 16:00:26	Tarjeta debito	892268018-2
508	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5508	2026-01-16 12:29:59	Tarjeta debito	731217271-5
509	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5509	2026-01-16 08:00:18	Efectivo	296685161-2
510	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5510	2026-01-16 15:07:08	Transferencia	931839335-2
511	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5511	2026-01-17 11:55:47	Efectivo	1197218114
512	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5512	2026-01-19 15:10:15	Efectivo	929622292-7
513	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5513	2026-01-19 08:46:40	Efectivo	764381561-4
514	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5514	2026-01-19 12:42:39	PSE	764381561-4
515	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5515	2026-01-19 10:37:10	Efectivo	092327193-7
516	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5516	2026-01-19 16:12:52	Efectivo	964990913-3
517	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5517	2026-01-20 14:28:32	Tarjeta debito	376137918-0
518	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5518	2026-01-20 15:51:55	Tarjeta de credito	473384842-1
519	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5519	2026-01-20 15:44:28	Efectivo	826773454-0
520	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5520	2026-01-20 15:20:50	Tarjeta debito	841687849-9
521	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5521	2026-01-21 10:01:48	PSE	294019655-6
522	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5522	2026-01-21 10:26:34	PSE	193149190-5
523	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5523	2026-01-22 18:34:51	Tarjeta de credito	620153368-8
524	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5524	2026-01-22 09:10:04	Efectivo	621182339-8
525	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5525	2026-01-22 16:17:39	Transferencia	115542622-1
526	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5526	2026-01-23 09:07:26	Transferencia	0016761847
527	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5527	2026-01-23 09:40:59	PSE	5436459701
528	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5528	2026-01-23 18:22:42	Tarjeta debito	621182339-8
529	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5529	2026-01-23 15:08:09	Tarjeta de credito	498776945-3
530	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5530	2026-01-23 14:25:16	Tarjeta debito	092327193-7
531	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5531	2026-01-23 19:16:51	Efectivo	84222231
532	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5532	2026-01-23 17:37:51	Transferencia	115542622-1
533	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5533	2026-01-24 10:34:55	Efectivo	376137918-0
534	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5534	2026-01-24 16:50:07	Transferencia	2723804682
535	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5535	2026-01-24 07:52:20	Transferencia	91901581
536	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5536	2026-01-24 09:58:47	Efectivo	065787598-5
537	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5537	2026-01-24 14:22:41	PSE	694097499-3
538	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5538	2026-01-25 13:28:48	PSE	061744518-7
539	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5539	2026-01-26 11:33:51	Transferencia	296685161-2
540	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5540	2026-01-26 09:16:01	Tarjeta de credito	752654793-5
541	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5541	2026-01-26 14:16:08	Tarjeta debito	8515832818
542	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5542	2026-01-26 17:24:59	PSE	176936763-2
543	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5543	2026-01-27 12:28:22	Transferencia	473210469-6
544	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5544	2026-01-28 08:18:13	Transferencia	46554947
545	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5545	2026-01-28 17:35:14	PSE	570433154-1
546	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5546	2026-01-28 16:23:16	Efectivo	738299737-6
547	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5547	2026-01-29 15:21:00	Efectivo	602606474-6
548	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5548	2026-01-29 09:50:36	PSE	843443757-5
549	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5549	2026-01-29 18:51:21	Efectivo	820812191-3
550	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5550	2026-01-30 15:48:46	Transferencia	911352909-6
551	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5551	2026-01-30 08:33:21	Tarjeta de credito	571928565-4
552	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5552	2026-01-30 11:25:22	PSE	084958803
553	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5553	2026-01-30 10:05:50	Efectivo	16580464
554	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5554	2026-01-30 12:17:56	Transferencia	694097499-3
555	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5555	2026-01-30 12:36:56	Tarjeta debito	176936763-2
556	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5556	2026-01-30 11:56:28	Tarjeta de credito	061744518-7
557	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5557	2026-01-30 11:57:51	Efectivo	841687849-9
558	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5558	2026-01-30 10:45:33	Efectivo	973103241
559	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5559	2026-01-30 12:11:00	Efectivo	798089324-6
560	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5560	2026-01-30 15:09:47	Tarjeta de credito	798089324-6
561	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5561	2026-01-30 15:55:14	Transferencia	6634163894
562	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5562	2026-01-30 10:38:17	Efectivo	061744518-7
563	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5563	2026-01-31 13:08:45	Transferencia	159996504-7
564	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5564	2026-01-31 15:43:45	PSE	9499939330
565	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5565	2026-01-31 17:05:21	Tarjeta debito	826773454-0
566	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5566	2026-01-31 11:05:27	Transferencia	280988516-5
567	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5567	2026-01-31 10:06:39	Efectivo	892268018-2
568	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5568	2026-01-31 09:57:09	Transferencia	718707286-7
569	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5569	2026-01-31 12:46:34	Efectivo	6209593518
570	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5570	2026-01-31 09:23:14	Transferencia	956046618-3
571	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5571	2026-02-01 08:47:27	Efectivo	246191965
572	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5572	2026-02-02 14:46:07	Tarjeta de credito	4245088210
573	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5573	2026-02-02 15:34:18	Tarjeta debito	621182339-8
574	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5574	2026-02-03 11:13:55	Transferencia	991547887-2
575	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5575	2026-02-03 07:11:50	Tarjeta de credito	203875099-7
576	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5576	2026-02-04 17:06:39	PSE	764381561-4
577	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5577	2026-02-04 16:35:58	Transferencia	9162473149
578	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5578	2026-02-05 13:06:49	Tarjeta de credito	931839335-2
579	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5579	2026-02-05 14:22:03	Transferencia	086131712-7
580	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5580	2026-02-06 17:37:34	Tarjeta de credito	849808412-4
581	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5581	2026-02-06 16:45:45	Tarjeta de credito	160529751-6
582	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5582	2026-02-07 13:34:58	Transferencia	3714521117
583	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5583	2026-02-07 14:47:52	Transferencia	364710276-7
584	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5584	2026-02-07 08:44:58	Transferencia	086131712-7
585	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5585	2026-02-07 18:13:57	Tarjeta debito	578729825-9
586	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5586	2026-02-07 13:13:09	Tarjeta de credito	406409097-4
587	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5587	2026-02-08 16:17:46	Transferencia	956046618-3
588	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5588	2026-02-10 15:54:34	Efectivo	658404499-7
589	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5589	2026-02-10 13:22:15	PSE	589578291-1
590	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5590	2026-02-10 14:16:54	Transferencia	359782071-5
591	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5591	2026-02-10 13:17:23	Transferencia	303161799-0
592	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5592	2026-02-12 15:49:38	Transferencia	554781376
593	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5593	2026-02-12 09:53:46	Transferencia	359782071-5
594	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5594	2026-02-13 10:15:21	Tarjeta de credito	881658039
595	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5595	2026-02-13 16:27:22	Transferencia	556168147
596	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5596	2026-02-13 09:03:14	Efectivo	71705865
597	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5597	2026-02-13 11:19:11	Transferencia	621182339-8
598	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5598	2026-02-13 14:14:44	Efectivo	849808412-4
599	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5599	2026-02-14 09:42:33	Efectivo	225790507-2
600	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5600	2026-02-14 11:32:27	Efectivo	084958803
601	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5601	2026-02-14 09:40:22	PSE	23569725
602	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5602	2026-02-14 15:33:12	PSE	826773454-0
603	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5603	2026-02-15 11:26:29	Transferencia	841687849-9
604	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5604	2026-02-15 16:45:25	Efectivo	340745171-3
605	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5605	2026-02-16 13:41:06	Transferencia	636897028-3
606	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5606	2026-02-16 17:34:30	Tarjeta debito	8515832818
607	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5607	2026-02-16 18:21:34	Transferencia	2984257991
608	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5608	2026-02-16 14:12:18	Efectivo	061744518-7
609	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5609	2026-02-16 10:26:20	Tarjeta debito	324472099-9
610	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5610	2026-02-16 11:22:17	Efectivo	621182339-8
611	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5611	2026-02-19 18:57:30	Transferencia	341918255-3
612	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5612	2026-02-19 13:52:29	Efectivo	866882634-3
613	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5613	2026-02-19 19:48:58	Tarjeta debito	3714521117
614	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5614	2026-02-19 19:20:38	PSE	296685161-2
615	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5615	2026-02-20 14:58:54	Tarjeta debito	327104054-1
616	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5616	2026-02-20 13:56:06	Tarjeta de credito	17993136
617	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5617	2026-02-20 14:59:29	Tarjeta debito	473384842-1
618	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5618	2026-02-21 18:18:23	Transferencia	160529751-6
619	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5619	2026-02-21 18:22:06	Transferencia	084958803
620	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5620	2026-02-21 13:32:21	Efectivo	05566139
621	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5621	2026-02-21 14:41:11	Transferencia	843443757-5
622	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5622	2026-02-21 16:12:05	PSE	073375433-0
623	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5623	2026-02-21 15:42:30	Tarjeta de credito	549480831-3
624	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5624	2026-02-21 14:36:12	PSE	176936763-2
625	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5625	2026-02-21 13:49:58	Tarjeta debito	964990913-3
626	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5626	2026-02-21 11:00:50	Tarjeta de credito	843443757-5
627	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5627	2026-02-23 16:22:55	Tarjeta debito	182992299-5
628	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5628	2026-02-23 18:19:22	Efectivo	91901581
629	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5629	2026-02-23 08:59:40	Transferencia	176936763-2
630	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5630	2026-02-23 17:01:04	Transferencia	91901581
631	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5631	2026-02-24 11:52:35	Tarjeta de credito	764381561-4
632	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5632	2026-02-25 13:30:20	Transferencia	092327193-7
633	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5633	2026-02-25 18:17:34	PSE	1832192855
634	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5634	2026-02-26 19:27:48	PSE	064361103-7
635	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5635	2026-02-26 14:17:23	Efectivo	254494812-6
636	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5636	2026-02-26 09:26:59	Tarjeta de credito	287101226-9
637	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5637	2026-02-27 11:19:04	Tarjeta de credito	02203173
638	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5638	2026-02-28 15:11:31	Transferencia	107622683-8
639	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5639	2026-02-28 12:43:54	Transferencia	182992299-5
640	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5640	2026-02-28 12:45:21	Efectivo	950240268-1
641	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5641	2026-02-28 14:24:55	Transferencia	621182339-8
642	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5642	2026-02-28 17:52:14	PSE	084958803
643	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5643	2026-02-28 11:16:42	Efectivo	549480831-3
644	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5644	2026-02-28 15:46:03	Efectivo	084958803
645	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5645	2026-03-02 13:31:24	Tarjeta de credito	0016761847
646	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5646	2026-03-02 17:14:55	Transferencia	346247510-7
647	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5647	2026-03-02 13:00:24	Tarjeta de credito	605766270-2
648	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5648	2026-03-02 12:27:26	Efectivo	8515832818
649	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5649	2026-03-04 11:52:09	Transferencia	991547887-2
650	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5650	2026-03-04 09:49:21	Efectivo	4309883920
651	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5651	2026-03-04 16:50:02	Tarjeta de credito	176936763-2
652	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5652	2026-03-05 08:51:45	Transferencia	964990913-3
653	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5653	2026-03-05 12:10:31	Transferencia	473384842-1
654	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5654	2026-03-07 15:02:20	Tarjeta debito	91901581
655	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5655	2026-03-07 13:38:38	Efectivo	764381561-4
656	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5656	2026-03-07 15:19:51	Transferencia	91901581
657	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5657	2026-03-07 12:33:39	PSE	982507146-1
658	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5658	2026-03-07 17:48:23	Transferencia	02203173
659	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5659	2026-03-07 14:59:09	Tarjeta de credito	892687056-8
660	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5660	2026-03-07 09:33:45	Efectivo	995777387-2
661	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5661	2026-03-07 09:23:28	Tarjeta de credito	91901581
662	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5662	2026-03-08 09:41:24	Efectivo	3733343333
663	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5663	2026-03-09 11:38:13	Efectivo	149368998-0
664	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5664	2026-03-09 13:24:06	Tarjeta debito	06980420
665	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5665	2026-03-09 08:57:36	Efectivo	46554947
666	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5666	2026-03-09 16:57:06	Transferencia	294019655-6
667	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5667	2026-03-09 10:31:26	Transferencia	176936763-2
668	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5668	2026-03-10 18:32:48	Tarjeta debito	02203173
669	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5669	2026-03-10 08:15:46	Efectivo	203875099-7
670	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5670	2026-03-11 08:38:17	Transferencia	280988516-5
671	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5671	2026-03-11 12:37:19	Transferencia	91901581
672	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5672	2026-03-11 13:46:18	Efectivo	733950047-9
673	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5673	2026-03-13 13:18:44	Efectivo	733950047-9
674	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5674	2026-03-13 12:17:21	Transferencia	931839335-2
675	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5675	2026-03-13 16:06:01	Efectivo	7937416089
676	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5676	2026-03-13 15:33:08	Efectivo	176936763-2
677	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5677	2026-03-14 11:11:46	Tarjeta debito	12021697
678	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5678	2026-03-14 07:17:01	Tarjeta debito	849808412-4
679	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5679	2026-03-15 14:40:56	Transferencia	556168147
680	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5680	2026-03-16 16:44:39	Efectivo	182992299-5
681	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5681	2026-03-16 14:58:05	Transferencia	2075011024
682	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5682	2026-03-16 09:27:25	Efectivo	718707286-7
683	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5683	2026-03-16 10:13:30	Efectivo	4430091093
684	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5684	2026-03-16 18:35:51	Efectivo	578713315-0
685	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5685	2026-03-17 08:38:01	Transferencia	826773454-0
686	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5686	2026-03-17 09:27:39	Transferencia	570433154-1
687	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5687	2026-03-18 14:21:49	Tarjeta debito	073375433-0
688	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5688	2026-03-18 10:08:49	Efectivo	64334722
689	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5689	2026-03-19 11:41:24	PSE	2223943129
690	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5690	2026-03-19 19:30:14	Tarjeta de credito	784270103-9
691	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5691	2026-03-19 09:21:20	Transferencia	168457759-0
692	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5692	2026-03-19 10:26:11	Transferencia	44204380
693	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5693	2026-03-20 13:48:11	Tarjeta de credito	60463331
694	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5694	2026-03-20 16:20:58	Transferencia	668893734-6
695	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5695	2026-03-22 16:55:32	Tarjeta de credito	826773454-0
696	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5696	2026-03-22 17:34:57	Tarjeta debito	176936763-2
697	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5697	2026-03-22 09:24:57	Tarjeta de credito	506159399
698	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5698	2026-03-22 11:41:25	Efectivo	301871863
699	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5699	2026-03-23 12:15:36	Tarjeta de credito	7704358112
700	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5700	2026-03-23 14:54:40	Tarjeta de credito	57828410
701	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5701	2026-03-23 16:45:58	Transferencia	03924051
702	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5702	2026-03-24 12:14:55	Transferencia	995777387-2
703	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5703	2026-03-24 07:18:07	Efectivo	061744518-7
704	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5704	2026-03-24 15:47:55	Transferencia	280988516-5
705	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5705	2026-03-24 09:01:18	Transferencia	621182339-8
706	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5706	2026-03-24 09:42:25	PSE	196565234-1
707	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5707	2026-03-25 14:49:03	Efectivo	91901581
708	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5708	2026-03-25 15:24:39	Tarjeta debito	62582739
709	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5709	2026-03-26 14:36:38	Transferencia	849808412-4
710	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5710	2026-03-27 09:07:55	Tarjeta debito	964990913-3
711	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5711	2026-03-28 11:34:11	Tarjeta de credito	128639174
712	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5712	2026-03-28 13:58:56	Tarjeta debito	3714521117
713	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5713	2026-03-29 15:49:54	Tarjeta debito	6209593518
714	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5714	2026-03-30 14:57:03	Transferencia	885685574-4
715	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5715	2026-03-31 16:57:34	Tarjeta de credito	571928565-4
716	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5716	2026-03-31 10:48:30	Efectivo	406409097-4
717	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5717	2026-03-31 10:53:13	Transferencia	764381561-4
718	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5718	2026-03-31 11:39:42	PSE	57018409
719	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5719	2026-03-31 11:07:05	Tarjeta debito	620153368-8
720	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5720	2026-04-01 15:39:39	Transferencia	746120047-1
721	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5721	2026-04-01 10:54:36	Transferencia	287101226-9
722	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5722	2026-04-02 17:59:37	PSE	820812191-3
723	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5723	2026-04-02 15:38:55	Efectivo	950240268-1
724	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5724	2026-04-02 07:05:09	Efectivo	287101226-9
725	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5725	2026-04-02 17:02:01	Tarjeta de credito	435240824-0
726	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5726	2026-04-02 10:53:04	Transferencia	498776945-3
727	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5727	2026-04-02 12:17:57	Transferencia	06980420
728	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5728	2026-04-03 10:27:42	Efectivo	499125134-1
729	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5729	2026-04-03 18:42:48	PSE	620153368-8
730	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5730	2026-04-03 11:12:05	Efectivo	738299737-6
731	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5731	2026-04-03 08:48:43	Transferencia	982507146-1
732	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5732	2026-04-04 10:29:07	Efectivo	7500369155
733	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5733	2026-04-04 15:54:19	Transferencia	092327193-7
734	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5734	2026-04-04 15:46:42	Efectivo	16580464
735	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5735	2026-04-04 10:49:08	PSE	280988516-5
736	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5736	2026-04-05 11:28:52	Efectivo	359782071-5
737	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5737	2026-04-05 16:32:19	Tarjeta de credito	176936763-2
738	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5738	2026-04-05 07:31:23	Tarjeta de credito	214562328-5
739	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5739	2026-04-06 14:49:10	Transferencia	49673938
740	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5740	2026-04-06 14:14:55	Efectivo	294019655-6
741	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5741	2026-04-07 15:12:39	Transferencia	359782071-5
742	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5742	2026-04-08 17:31:26	Transferencia	829310270
743	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5743	2026-04-08 14:26:00	Transferencia	549480831-3
744	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5744	2026-04-08 11:40:21	Tarjeta de credito	2984257991
745	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5745	2026-04-09 17:51:34	Transferencia	064361103-7
746	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5746	2026-04-09 15:55:14	Efectivo	301742684-1
747	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5747	2026-04-10 08:17:25	Transferencia	578713315-0
748	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5748	2026-04-10 17:53:13	Tarjeta de credito	887719065-9
749	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5749	2026-04-10 11:15:57	Transferencia	964990913-3
750	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5750	2026-04-10 12:09:18	Tarjeta debito	9141173934
751	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5751	2026-04-10 18:15:10	Tarjeta debito	56996112
752	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5752	2026-04-11 16:01:37	PSE	466574374
753	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5753	2026-04-11 09:24:27	Tarjeta debito	199410137-2
754	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5754	2026-04-12 08:57:00	Tarjeta de credito	826773454-0
755	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5755	2026-04-12 15:25:14	Efectivo	005281273
756	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5756	2026-04-13 11:03:48	Efectivo	931839335-2
757	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5757	2026-04-13 17:29:21	Transferencia	71705865
758	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5758	2026-04-13 10:22:37	Tarjeta debito	931839335-2
759	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5759	2026-04-13 15:22:40	Transferencia	160529751-6
760	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5760	2026-04-13 09:13:09	PSE	16580464
761	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5761	2026-04-14 19:44:48	Transferencia	713493618-3
762	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5762	2026-04-14 11:01:38	Tarjeta debito	911352909-6
763	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5763	2026-04-15 10:01:01	Efectivo	92518812
764	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5764	2026-04-16 10:27:25	Transferencia	794728463
765	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5765	2026-04-16 13:39:31	PSE	964990913-3
766	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5766	2026-04-16 13:26:52	Efectivo	64525777
767	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5767	2026-04-16 13:40:06	Transferencia	772459928
768	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5768	2026-04-16 15:14:43	Transferencia	9499939330
769	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5769	2026-04-17 14:08:24	Efectivo	826773454-0
770	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5770	2026-04-17 11:58:33	PSE	02203173
771	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5771	2026-04-17 14:19:42	Efectivo	061744518-7
772	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5772	2026-04-17 16:22:37	Tarjeta debito	176936763-2
773	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5773	2026-04-17 13:43:46	Transferencia	499125134-1
774	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5774	2026-04-17 15:04:50	Tarjeta de credito	107622683-8
775	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5775	2026-04-17 13:30:17	Efectivo	621182339-8
776	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5776	2026-04-18 13:16:31	Transferencia	340745171-3
777	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5777	2026-04-18 13:39:41	Tarjeta de credito	849808412-4
778	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5778	2026-04-18 18:22:04	Efectivo	7350208021
779	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5779	2026-04-18 17:08:13	PSE	738299737-6
780	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5780	2026-04-19 10:20:41	Transferencia	764381561-4
781	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5781	2026-04-20 12:38:29	Transferencia	578729825-9
782	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5782	2026-04-20 10:48:35	Efectivo	613750606-8
783	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5783	2026-04-20 18:58:17	Tarjeta debito	578729825-9
784	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5784	2026-04-21 08:33:46	Tarjeta de credito	376137918-0
785	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5785	2026-04-21 12:11:43	Transferencia	693465472
786	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5786	2026-04-21 14:25:08	Efectivo	764381561-4
787	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5787	2026-04-22 13:35:09	Tarjeta de credito	621182339-8
788	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5788	2026-04-22 14:52:56	PSE	3565880434
789	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5789	2026-04-22 11:45:05	Transferencia	9298316873
790	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5790	2026-04-22 14:24:35	Transferencia	549480831-3
791	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5791	2026-04-22 11:06:13	Tarjeta de credito	199410137-2
792	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5792	2026-04-24 14:45:32	Transferencia	430391171-8
793	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5793	2026-04-24 18:21:43	Efectivo	964990913-3
794	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5794	2026-04-24 14:14:27	Tarjeta de credito	764381561-4
795	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5795	2026-04-24 10:28:06	Transferencia	191826199-0
796	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5796	2026-04-24 15:16:41	Tarjeta de credito	785477725-2
797	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5797	2026-04-25 14:11:43	Transferencia	881658039
798	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5798	2026-04-25 18:15:53	Transferencia	191826199-0
799	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5799	2026-04-25 15:12:06	Tarjeta de credito	06980420
800	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5800	2026-04-26 16:28:05	Tarjeta de credito	092327193-7
801	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5801	2026-04-26 12:14:45	Efectivo	826773454-0
802	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5802	2026-04-26 12:38:42	Tarjeta debito	931839335-2
803	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5803	2026-04-27 15:35:33	Efectivo	1373678508
804	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5804	2026-04-27 11:36:09	Tarjeta de credito	49673938
805	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5805	2026-04-28 10:07:50	Tarjeta de credito	956046618-3
806	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5806	2026-04-29 15:18:32	Tarjeta de credito	60463331
807	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5807	2026-04-30 09:32:21	Transferencia	084958803
808	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5808	2026-04-30 09:11:41	Tarjeta debito	778817884
809	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5809	2026-05-01 14:28:09	Tarjeta debito	826773454-0
810	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5810	2026-05-01 08:38:22	Transferencia	018366752-5
811	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5811	2026-05-01 16:30:42	Transferencia	016400524-2
812	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5812	2026-05-01 11:03:45	Transferencia	1606484229
813	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5813	2026-05-01 14:02:56	Efectivo	159996504-7
814	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5814	2026-05-01 09:13:05	Tarjeta de credito	4245088210
815	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5815	2026-05-01 11:19:14	Transferencia	140369656
816	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5816	2026-05-02 09:03:37	Tarjeta de credito	589578291-1
817	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5817	2026-05-02 14:28:14	Transferencia	60463331
818	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5818	2026-05-02 19:44:25	Transferencia	2222064474
819	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5819	2026-05-02 12:38:25	Tarjeta debito	621182339-8
820	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5820	2026-05-02 13:59:35	Efectivo	168457759-0
821	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5821	2026-05-03 11:32:34	Transferencia	866882634-3
822	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5822	2026-05-04 11:40:37	Tarjeta debito	473210469-6
823	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5823	2026-05-04 14:25:41	Tarjeta de credito	294019655-6
824	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5824	2026-05-04 10:05:34	Efectivo	764381561-4
825	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5825	2026-05-06 13:59:18	Tarjeta debito	685160481-7
826	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5826	2026-05-06 11:18:07	Transferencia	004786863-3
827	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5827	2026-05-06 18:22:50	Efectivo	22591365
828	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5828	2026-05-06 09:03:28	Transferencia	084958803
829	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5829	2026-05-06 15:29:15	Tarjeta debito	991547887-2
830	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5830	2026-05-08 08:55:27	Transferencia	866882634-3
831	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5831	2026-05-08 12:12:30	PSE	499125134-1
832	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5832	2026-05-08 08:44:34	Tarjeta de credito	605766270-2
833	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5833	2026-05-08 09:53:57	Transferencia	364710276-7
834	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5834	2026-05-09 13:04:17	Efectivo	909738468
835	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5835	2026-05-09 07:24:01	Efectivo	70160166
836	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5836	2026-05-09 15:39:00	Transferencia	218515691-5
837	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5837	2026-05-09 15:55:36	Tarjeta de credito	654051531-9
838	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5838	2026-05-09 11:33:34	Tarjeta de credito	84222231
839	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5839	2026-05-09 12:24:53	Transferencia	296685161-2
840	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5840	2026-05-10 18:48:30	Transferencia	91901581
841	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5841	2026-05-10 09:57:52	PSE	176936763-2
842	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5842	2026-05-10 16:37:16	Transferencia	56996112
843	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5843	2026-05-10 11:48:05	Transferencia	621182339-8
844	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5844	2026-05-11 13:26:23	PSE	826773454-0
845	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5845	2026-05-11 15:44:27	Tarjeta debito	176936763-2
846	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5846	2026-05-11 11:21:45	Transferencia	499125134-1
847	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5847	2026-05-12 11:20:19	PSE	0552818325
848	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5848	2026-05-13 11:43:55	Efectivo	621182339-8
849	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5849	2026-05-14 12:07:43	Transferencia	047743490
850	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5850	2026-05-14 09:43:22	Efectivo	620153368-8
851	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5851	2026-05-14 10:01:41	Tarjeta de credito	176936763-2
852	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5852	2026-05-14 12:16:20	Transferencia	731217271-5
853	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5853	2026-05-15 09:23:10	Efectivo	738299737-6
854	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5854	2026-05-15 15:18:29	Transferencia	246191965
855	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5855	2026-05-15 10:55:46	Efectivo	225790507-2
856	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5856	2026-05-16 14:36:14	Transferencia	9499939330
857	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5857	2026-05-16 15:42:55	Tarjeta debito	341918255-3
858	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5858	2026-05-16 08:08:35	Tarjeta debito	364710276-7
859	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5859	2026-05-16 13:08:33	PSE	911352909-6
860	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5860	2026-05-17 17:33:21	Tarjeta de credito	556168147
861	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5861	2026-05-17 11:08:06	Transferencia	621182339-8
862	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5862	2026-05-17 16:01:58	Tarjeta de credito	31819588
863	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5863	2026-05-18 11:21:20	Transferencia	764381561-4
864	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5864	2026-05-18 13:20:00	Tarjeta debito	376137918-0
865	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5865	2026-05-19 15:11:46	PSE	196106462
866	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5866	2026-05-19 09:30:16	Efectivo	2223943129
867	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5867	2026-05-19 16:30:23	Transferencia	2984257991
868	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5868	2026-05-20 13:37:00	Transferencia	016668700-2
869	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5869	2026-05-20 13:04:35	Tarjeta debito	956046618-3
870	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5870	2026-05-20 11:09:55	Transferencia	892687056-8
871	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5871	2026-05-20 15:31:30	Efectivo	84222231
872	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5872	2026-05-21 13:58:46	Efectivo	327104054-1
873	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5873	2026-05-21 11:55:19	Tarjeta debito	964990913-3
874	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5874	2026-05-21 12:42:15	Transferencia	6368157981
875	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5875	2026-05-21 11:13:57	Transferencia	140369656
876	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5876	2026-05-21 12:53:25	Tarjeta de credito	092327193-7
877	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5877	2026-05-21 14:37:58	Transferencia	005281273
878	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5878	2026-05-21 07:52:10	Tarjeta de credito	866882634-3
879	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5879	2026-05-21 14:05:03	Tarjeta de credito	621182339-8
880	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5880	2026-05-21 17:00:04	Transferencia	4430091093
881	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5881	2026-05-23 10:51:05	PSE	406409097-4
882	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5882	2026-05-23 15:55:56	Tarjeta debito	499125134-1
883	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5883	2026-05-23 14:14:44	Transferencia	621182339-8
884	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5884	2026-05-23 12:27:19	Tarjeta debito	866882634-3
885	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5885	2026-05-24 13:35:54	Transferencia	553559042
886	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5886	2026-05-24 17:32:06	Transferencia	064361103-7
887	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5887	2026-05-24 18:44:48	Tarjeta de credito	654051531-9
888	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5888	2026-05-25 18:24:22	Transferencia	596158657-8
889	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5889	2026-05-25 18:51:56	Tarjeta de credito	931839335-2
890	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5890	2026-05-27 14:42:44	Tarjeta de credito	982708086
891	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5891	2026-05-27 15:00:31	Tarjeta de credito	061744518-7
892	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5892	2026-05-28 11:31:34	Tarjeta de credito	159996504-7
893	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5893	2026-05-28 18:23:18	Tarjeta debito	122362316-6
894	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5894	2026-05-28 12:22:30	Efectivo	050455623-8
895	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5895	2026-05-29 16:53:34	Transferencia	654051531-9
896	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5896	2026-05-29 15:13:02	Transferencia	91901581
897	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5897	2026-05-29 18:17:04	Tarjeta de credito	213348039-6
898	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5898	2026-05-29 17:55:25	Tarjeta debito	301742684-1
899	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5899	2026-05-29 11:00:03	Transferencia	826773454-0
900	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5900	2026-05-29 10:04:03	Tarjeta debito	121277561-8
901	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5901	2026-05-29 12:29:36	Transferencia	6209593518
902	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5902	2026-05-29 18:34:19	Tarjeta de credito	718707286-7
903	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5903	2026-05-30 11:04:39	Tarjeta de credito	596401658-2
904	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5904	2026-05-30 17:48:50	Tarjeta debito	499125134-1
905	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5905	2026-05-30 09:34:05	Transferencia	160529751-6
906	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5906	2026-05-30 11:52:09	Tarjeta debito	967175655-1
907	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5907	2026-05-30 11:23:08	Efectivo	91901581
908	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5908	2026-05-31 16:15:45	Transferencia	711671902-2
909	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5909	2026-05-31 08:59:18	Tarjeta de credito	887719065-9
910	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5910	2026-05-31 11:00:18	Efectivo	133387262-4
911	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5911	2026-05-31 14:59:48	Transferencia	030673830-2
912	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5912	2026-06-01 17:24:22	Efectivo	084958803
913	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5913	2026-06-01 14:06:50	Transferencia	301742684-1
914	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5914	2026-06-01 16:35:12	Tarjeta de credito	621182339-8
915	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5915	2026-06-01 08:56:00	Efectivo	571928565-4
916	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5916	2026-06-02 09:39:34	Tarjeta de credito	203875099-7
917	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5917	2026-06-02 18:43:46	Tarjeta debito	596401658-2
918	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5918	2026-06-02 16:13:10	Transferencia	892268018-2
919	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5919	2026-06-02 12:50:13	PSE	1108099693
920	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5920	2026-06-02 13:09:21	Transferencia	182992299-5
921	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5921	2026-06-02 12:06:26	Transferencia	808760385-9
922	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5922	2026-06-03 11:37:30	Efectivo	4430091093
923	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5923	2026-06-03 14:33:50	Tarjeta de credito	621182339-8
924	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5924	2026-06-03 14:27:57	PSE	549480831-3
925	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5925	2026-06-03 15:22:03	Tarjeta debito	49673938
926	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5926	2026-06-04 15:52:34	Tarjeta debito	826773454-0
927	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5927	2026-06-04 14:27:49	Transferencia	964990913-3
928	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5928	2026-06-04 13:17:20	Tarjeta debito	265511047-5
929	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5929	2026-06-05 09:47:23	Tarjeta de credito	305641395-3
930	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5930	2026-06-05 09:31:36	Transferencia	406409097-4
931	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5931	2026-06-05 07:45:02	Efectivo	950240268-1
932	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5932	2026-06-05 13:20:32	Transferencia	91901581
933	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5933	2026-06-05 16:48:28	Transferencia	499125134-1
934	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5934	2026-06-05 15:36:43	Efectivo	621182339-8
935	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5935	2026-06-05 10:25:05	Tarjeta debito	826773454-0
936	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5936	2026-06-06 10:52:15	Tarjeta debito	764381561-4
937	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5937	2026-06-06 12:42:59	PSE	254494812-6
938	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5938	2026-06-06 14:34:51	Tarjeta de credito	064361103-7
939	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5939	2026-06-06 15:36:02	Efectivo	133387262-4
940	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5940	2026-06-06 18:55:07	Tarjeta de credito	843443757-5
941	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5941	2026-06-06 15:25:53	Transferencia	798089324-6
942	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5942	2026-06-08 12:39:53	Transferencia	503758997
943	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5943	2026-06-08 08:51:31	Transferencia	621182339-8
944	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5944	2026-06-08 12:17:11	Efectivo	549480831-3
945	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5945	2026-06-08 18:34:45	Tarjeta de credito	931839335-2
946	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5946	2026-06-08 16:40:40	Transferencia	473384842-1
947	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5947	2026-06-10 10:43:30	Efectivo	199410137-2
948	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5948	2026-06-11 13:00:01	Tarjeta debito	018366752-5
949	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5949	2026-06-11 08:47:21	Tarjeta de credito	107622683-8
950	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5950	2026-06-11 11:10:33	Efectivo	602606474-6
951	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5951	2026-06-11 18:41:42	Transferencia	571928565-4
952	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5952	2026-06-11 09:11:03	Tarjeta debito	405377351-5
953	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5953	2026-06-11 13:47:50	Efectivo	511615594-0
954	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5954	2026-06-11 16:05:22	Tarjeta de credito	061744518-7
955	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5955	2026-06-12 16:58:14	Efectivo	203875099-7
956	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5956	2026-06-12 16:54:03	Transferencia	176936763-2
957	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5957	2026-06-12 16:51:53	Tarjeta de credito	4430091093
958	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5958	2026-06-12 10:45:54	Transferencia	589578291-1
959	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5959	2026-06-12 10:18:05	Tarjeta de credito	589578291-1
960	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5960	2026-06-12 14:08:02	Efectivo	2723804682
961	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5961	2026-06-13 14:20:26	Tarjeta de credito	568044206-7
962	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5962	2026-06-13 19:15:15	Transferencia	265511047-5
963	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5963	2026-06-13 16:59:21	Transferencia	764381561-4
964	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5964	2026-06-13 09:20:25	Efectivo	191826199-0
965	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5965	2026-06-13 10:57:00	Tarjeta de credito	176936763-2
966	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5966	2026-06-13 15:54:52	Efectivo	764381561-4
967	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5967	2026-06-14 09:02:02	Efectivo	621182339-8
968	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5968	2026-06-15 13:13:22	Transferencia	995777387-2
969	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5969	2026-06-15 17:16:46	Transferencia	621182339-8
970	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5970	2026-06-15 13:24:40	PSE	931839335-2
971	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5971	2026-06-15 14:32:52	Efectivo	359782071-5
972	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5972	2026-06-15 16:39:53	Tarjeta de credito	214562328-5
973	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5973	2026-06-15 10:26:38	Efectivo	159996504-7
974	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5974	2026-06-16 14:37:45	PSE	4430091093
975	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5975	2026-06-16 16:19:11	Efectivo	931839335-2
976	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5976	2026-06-16 13:55:17	Tarjeta de credito	406409097-4
977	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5977	2026-06-16 07:53:01	Tarjeta debito	376137918-0
978	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5978	2026-06-16 19:34:18	Tarjeta debito	826773454-0
979	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5979	2026-06-16 18:36:23	Transferencia	91901581
980	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5980	2026-06-17 18:51:18	Efectivo	658404499-7
981	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5981	2026-06-18 14:41:54	PSE	1373678508
982	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5982	2026-06-18 09:34:02	Efectivo	798089324-6
983	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5983	2026-06-19 16:59:50	Transferencia	193149190-5
984	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5984	2026-06-19 08:59:01	Tarjeta debito	1450461735
985	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5985	2026-06-19 11:43:15	Tarjeta de credito	03924051
986	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5986	2026-06-19 12:12:28	Transferencia	168457759-0
987	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5987	2026-06-19 12:55:15	Efectivo	613750606-8
988	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5988	2026-06-19 17:44:11	Transferencia	621182339-8
989	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5989	2026-06-20 14:56:42	Tarjeta de credito	505331586-9
990	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5990	2026-06-20 14:41:50	Transferencia	826773454-0
991	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5991	2026-06-20 17:33:28	Efectivo	149368998-0
992	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5992	2026-06-20 17:44:38	Efectivo	820812191-3
993	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5993	2026-06-20 13:13:41	Transferencia	115542622-1
994	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5994	2026-06-20 10:47:27	Efectivo	7704358112
995	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5995	2026-06-21 11:19:01	Tarjeta debito	849808412-4
996	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5996	2026-06-21 12:11:01	Transferencia	449058147-7
997	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5997	2026-06-21 08:29:03	Efectivo	764381561-4
998	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5998	2026-06-22 17:26:22	Efectivo	570433154-1
999	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	5999	2026-06-22 13:13:46	Efectivo	050455623-8
1000	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	6000	2026-06-22 13:00:24	PSE	720465375-5
1001	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	1	2026-07-13 22:07:00	Transferencia	305486874-0
1002	860005224-6	Alpina Productos Alimenticios S.A.	Km 3 via Sopo-Briceno, Sopo, Cundinamarca	3	2026-07-13 17:59:00	Efectivo	54780774
\.


--
-- TOC entry 3588 (class 0 OID 16837)
-- Dependencies: 250
-- Data for Name: iva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.iva (id_iva, categoria_iva, porcentaje) FROM stdin;
1	GRAVADO	19.00
2	DIFERENCIAL	5.00
3	EXENTO	0.00
4	EXCLUIDO	0.00
\.


--
-- TOC entry 3554 (class 0 OID 16465)
-- Dependencies: 216
-- Data for Name: marca_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marca_producto (id_marca, nombre_marca) FROM stdin;
1	Leche
2	Bon Yurt
3	Yogo Yogo
4	Yox
5	Yogurt
6	Finesse
\.


--
-- TOC entry 3560 (class 0 OID 16496)
-- Dependencies: 222
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (id_producto, nombre, descripcion, contenido_neto, unidad_contenido, id_marca, id_iva, activo) FROM stdin;
ALP-LEC-001	Leche Entera Alpina Bolsa 1L	Leche entera pasteurizada y homogeneizada, fuente natural de calcio y proteínas para toda la familia. Ideal para el desayuno y la preparación de recetas.	1000.0	ml	1	4	t
ALP-BON-001	Bon Yurt Zucaritas Vaso 170ml	Alimento lácteo fermentado especial para mezclar con el cereal de maíz azucarado Zucaritas Kellogg's. Aporta calcio, proteína y carbohidratos en un mismo vaso.	170.0	ml	2	1	t
ALP-BON-002	Bon Yurt Choco Krispis Vaso 170ml	Base láctea fermentada para disfrutar con cereal de arroz sabor chocolate Choco Krispis. Rico en calcio y proteína, ideal para el desayuno de los más jóvenes.	170.0	ml	2	1	t
ALP-BON-003	Bon Yurt Froot Loops Vaso 170ml	Alimento lácteo fermentado para mezclar con el cereal multicolor Froot Loops. Aporta los nutrientes de los lácteos combinados con la diversión del cereal.	170.0	ml	2	1	t
ALP-BON-004	Bon Yurt Müsli Vaso 170ml	Base láctea fermentada premium para acompañar con granola tipo müsli. Combinación nutritiva de lácteos con avena, frutas y semillas en un mismo momento.	170.0	ml	2	1	t
ALP-BON-005	Mini Bon Yurt Natural 100g	Alimento lácteo fermentado entero en porción individual de 100 g. Versión compacta del clásico Bon Yurt, perfecta para mezclar con el cereal favorito en cualquier momento.	100.0	g	2	1	t
ALP-LEC-006	Alpin Chocolate Tetra Pack 200ml	Deliciosa leche saborizada con chocolate, enriquecida con vitaminas A, D y calcio. Perfecta para la lonchera escolar o como merienda energizante.	200.0	ml	1	1	t
ALP-LEC-007	Alpin Fresa Tetra Pack 200ml	Leche saborizada con sabor a fresa, con calcio y vitaminas esenciales para una lonchera nutritiva y deliciosa. Apta para todos los miembros de la familia.	200.0	ml	1	1	t
ALP-YGY-001	Yogo Yogo Fresa Vaso 150ml	Bebida láctea fermentada sabor fresa con cultivos probióticos activos. Nutritiva y divertida para los niños, aporta calcio y proteína de alta calidad.	150.0	ml	3	1	t
ALP-YGY-002	Yogo Yogo Melocotón Vaso 150ml	Deliciosa bebida láctea con sabor a melocotón y cultivos vivos activos. Fuente de calcio para niños activos que necesitan energía y diversión en cada sorbo.	150.0	ml	3	1	t
ALP-YGY-003	Yogo Yogo Mora Vaso 150ml	Bebida láctea fermentada de sabor mora con probióticos. Perfecta para la lonchera escolar o la merienda, combina lo nutritivo de los lácteos con un sabor irresistible.	150.0	ml	3	1	t
ALP-YOX-001	Yox Defensis Multifrutas 100g	Bebida láctea acidificada con probióticos Lactobacillus gasseri y Lactobacillus coryniformis. Tomada cada mañana ayuda a reforzar las defensas naturales del organismo.	100.0	g	4	1	t
ALP-YOX-002	Yox Defensis Fresa 100g	Bebida funcional sabor fresa con probióticos clínicamente estudiados para fortalecer el sistema inmune. Pequeña porción con gran impacto en el bienestar diario.	100.0	g	4	1	t
ALP-YOX-003	Yox Defensis Frutos Rojos 800g	Bebida láctea probiótica sabor frutos rojos en presentación familiar. Contiene microorganismos que contribuyen al mantenimiento de las defensas naturales del cuerpo.	800.0	g	4	1	t
ALP-YOX-004	Yox Mentalis Durazno 100g	Bebida láctea funcional sabor durazno formulada para apoyar el bienestar mental y el equilibrio emocional. Una innovación de Alpina en el segmento de alimentos funcionales.	100.0	g	4	1	t
ALP-YOG-001	Yogurt Original Fresa Vaso 200g	Yogurt entero con trozos de fresa real y cultivos probióticos activos. Aporta las 10 bondades nutricionales del yogurt: proteínas, calcio, vitaminas y más.	200.0	g	5	1	t
ALP-YOG-002	Yogurt Original Mora Vaso 200g	Yogurt entero con trozos de mora y cultivos vivos activos. Fuente natural de calcio y proteínas, ideal para disfrutar a cualquier hora del día en familia.	200.0	g	5	1	t
ALP-YOG-003	Yogurt Griego Bebible Natural 180g	Yogurt griego estilo bebible con mayor concentración de proteína y textura cremosa suave. Sin saborizantes artificiales, versátil para acompañar frutas o granola.	180.0	g	5	1	t
ALP-YOG-004	Yogurt Griego Natural Cuchareable 150g	Yogurt griego espeso para cucharear, con alto contenido de proteína y textura densa auténtica. Opción gourmet ideal para desayunos saludables y bowls nutritivos.	150.0	g	5	1	t
ALP-FIN-001	Yogurt Finesse con Cereal Vaso 170ml	Yogurt bajo en grasa con granola crujiente incluida en tapa separada. Ideal para quienes buscan una merienda nutritiva y ligera sin sacrificar el sabor ni la textura.	170.0	ml	6	1	t
ALP-FIN-002	Avena Finesse 200ml	Bebida de avena con leche y bajo contenido de grasa. Opción saludable para el desayuno o la merienda, aporta fibra y energía duradera para el día a día.	200.0	ml	6	1	t
ALP-FIN-003	Yogurt Finesse Griego Tres Ceros 150g	Yogurt griego sin azúcar, sin grasa y sin lactosa añadida. Alto en proteínas y ganador de medalla de oro Monde Selection 2025 por su excelencia en calidad y sabor.	150.0	g	6	1	t
ALP-LEC-002	Leche Deslactosada Alpina Caja 1L	Leche deslactosada apta para personas con intolerancia a la lactosa. Conserva todo el sabor y valor nutricional de la leche entera sin causar molestias digestivas.	1000.0	ml	1	4	t
ALP-LEC-003	Leche Descremada Alpina Caja 1L	Leche con bajo contenido de grasa, ideal para quienes cuidan su alimentación sin renunciar al calcio ni a las proteínas propias de la leche de vaca.	1000.0	ml	1	4	t
ALP-LEC-004	Leche Semidescremada Alpina Caja 1L	Leche con reducción parcial de grasa que conserva sus propiedades nutricionales esenciales. Una opción equilibrada para el bienestar de toda la familia.	1000.0	ml	1	4	t
ALP-LEC-005	Leche Actilife Deslactosada Alpina 1L	Leche deslactosada enriquecida con vitaminas y minerales para apoyar la vitalidad diaria. Formulada para personas activas que buscan un plus nutricional.	1000.0	ml	1	4	t
ALP-YGY-004	Yogo Yogo Lulo Vaso 150ml	Bebida láctea refrescante sabor lulo, parte de la línea Yogo Yogo Fresh. Textura más ligera con el toque tropical del lulo colombiano y cultivos vivos activos.	150.0	ml	3	1	t
ALP-YGY-005	Yogo Yogo Maracuyá Vaso 150ml	Bebida láctea tropical sabor maracuyá con probióticos. Alternativa refrescante y nutritiva de la línea Fresh, ideal para después del juego o la actividad física.	150.0	ml	3	1	t
ALP-YGY-006	Yogo Yogo Uva Vaso 150ml	Bebida láctea fermentada con sabor a uva dulce y cultivos activos. Divertida opción de merienda que aporta calcio y proteína para el crecimiento de los más pequeños.	150.0	ml	3	1	t
ALP-YOG-005	Avena Alpina Original Vaso 250ml	Bebida de leche con avena ultrapasteurizada rica en fibra, proteína y calcio. No requiere refrigeración antes de abrir, perfecta para llevar a cualquier lugar.	250.0	ml	5	2	t
\.


--
-- TOC entry 3579 (class 0 OID 16683)
-- Dependencies: 241
-- Data for Name: detalle_factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_factura (id_detalle_factura, cantidad, precio_unitario, id_factura, id_producto) FROM stdin;
DET-00001	5	3145.98	1	ALP-LEC-001
DET-00002	2	1165.91	1	ALP-LEC-007
DET-00003	5	1210.79	1	ALP-LEC-006
DET-00004	8	1762.79	2	ALP-YGY-003
DET-00005	2	2376.47	2	ALP-YOG-001
DET-00006	5	2433.08	3	ALP-YOG-002
DET-00007	4	4133.20	4	ALP-LEC-002
DET-00008	3	1181.63	4	ALP-LEC-007
DET-00009	4	1775.15	4	ALP-YGY-004
DET-00010	1	3135.00	4	ALP-YOG-003
DET-00011	5	2770.48	4	ALP-BON-002
DET-00012	3	4380.10	4	ALP-LEC-005
DET-00013	4	3258.57	4	ALP-LEC-001
DET-00014	2	3144.82	5	ALP-YOG-004
DET-00015	2	1763.28	6	ALP-YGY-005
DET-00016	3	3821.98	6	ALP-LEC-003
DET-00017	2	2212.66	6	ALP-YOX-004
DET-00018	4	1773.15	6	ALP-YGY-002
DET-00019	2	2976.98	6	ALP-BON-004
DET-00020	1	3070.27	7	ALP-YOG-003
DET-00021	5	3124.43	8	ALP-LEC-001
DET-00022	2	2245.10	8	ALP-YOX-002
DET-00023	2	2798.09	9	ALP-BON-002
DET-00024	4	3867.94	9	ALP-LEC-004
DET-00025	5	1201.99	10	ALP-LEC-006
DET-00026	6	1850.15	10	ALP-YGY-003
DET-00027	4	4162.80	10	ALP-LEC-002
DET-00028	2	9925.21	10	ALP-YOX-003
DET-00029	1	2834.92	11	ALP-BON-002
DET-00030	1	3116.94	11	ALP-YOG-004
DET-00031	3	1484.74	11	ALP-BON-005
DET-00032	4	1797.08	12	ALP-YGY-001
DET-00033	4	1756.19	12	ALP-YGY-002
DET-00034	3	2838.34	13	ALP-BON-003
DET-00035	3	2343.73	13	ALP-YOG-002
DET-00036	1	3809.25	14	ALP-LEC-003
DET-00037	3	4390.18	14	ALP-LEC-005
DET-00038	3	1476.27	14	ALP-BON-005
DET-00039	6	2433.19	15	ALP-YOG-002
DET-00040	2	3231.08	15	ALP-YOG-004
DET-00041	1	3827.44	15	ALP-LEC-004
DET-00042	2	9535.48	16	ALP-YOX-003
DET-00043	2	1780.17	17	ALP-YGY-002
DET-00044	4	3232.59	17	ALP-LEC-001
DET-00045	2	1774.69	17	ALP-YGY-001
DET-00046	4	2420.95	17	ALP-YOG-002
DET-00047	4	2872.08	17	ALP-BON-003
DET-00048	2	1804.06	18	ALP-YGY-004
DET-00049	3	2763.88	19	ALP-BON-001
DET-00050	6	2760.43	20	ALP-BON-001
DET-00051	1	2840.73	20	ALP-FIN-002
DET-00052	3	2368.57	20	ALP-YOG-001
DET-00053	5	2217.73	21	ALP-YOX-001
DET-00054	4	2334.35	21	ALP-YOG-002
DET-00055	2	2834.55	22	ALP-FIN-002
DET-00056	3	3402.57	23	ALP-YOG-005
DET-00057	8	3211.50	24	ALP-LEC-001
DET-00058	7	2841.91	24	ALP-BON-002
DET-00059	5	3600.00	24	ALP-YOG-005
DET-00060	3	9977.71	25	ALP-YOX-003
DET-00061	4	2394.28	26	ALP-YOG-001
DET-00062	3	4032.99	26	ALP-LEC-002
DET-00063	1	3167.58	27	ALP-LEC-001
DET-00064	5	2365.61	27	ALP-YOG-001
DET-00065	11	1793.13	28	ALP-YGY-003
DET-00066	3	3245.51	29	ALP-LEC-001
DET-00067	6	1540.40	29	ALP-BON-005
DET-00068	8	4070.27	30	ALP-LEC-002
DET-00069	4	3161.78	30	ALP-YOG-004
DET-00070	6	1768.70	30	ALP-YGY-001
DET-00071	2	1514.30	31	ALP-BON-005
DET-00072	1	2215.74	31	ALP-YOX-001
DET-00073	3	2845.11	32	ALP-BON-001
DET-00074	6	2410.90	32	ALP-YOG-001
DET-00075	5	3735.90	33	ALP-LEC-003
DET-00076	4	2195.32	33	ALP-YOX-001
DET-00077	3	3813.43	34	ALP-LEC-003
DET-00078	3	2448.94	35	ALP-YOG-001
DET-00079	1	3097.14	35	ALP-YOG-003
DET-00080	1	2937.16	35	ALP-BON-004
DET-00081	3	4118.62	36	ALP-LEC-002
DET-00082	3	3754.08	36	ALP-LEC-003
DET-00083	4	2856.40	36	ALP-BON-002
DET-00084	8	1221.59	36	ALP-LEC-006
DET-00085	2	2761.85	36	ALP-BON-003
DET-00086	4	2340.09	37	ALP-YOG-001
DET-00087	1	2157.99	37	ALP-YOX-002
DET-00088	4	2393.48	37	ALP-YOG-002
DET-00089	4	3184.06	38	ALP-FIN-001
DET-00090	2	2820.00	38	ALP-BON-004
DET-00091	8	1215.72	39	ALP-LEC-006
DET-00092	1	1757.67	39	ALP-YGY-001
DET-00093	8	4143.63	39	ALP-LEC-002
DET-00094	3	4068.16	40	ALP-LEC-002
DET-00095	7	2246.14	40	ALP-YOX-001
DET-00096	3	1814.64	40	ALP-YGY-004
DET-00097	6	2390.71	40	ALP-YOG-001
DET-00098	10	2450.65	41	ALP-YOG-001
DET-00099	3	1772.34	41	ALP-YGY-002
DET-00100	7	3273.02	42	ALP-LEC-001
DET-00101	5	2402.39	42	ALP-YOG-002
DET-00102	4	2411.74	43	ALP-YOG-001
DET-00103	5	2190.17	43	ALP-YOX-001
DET-00104	2	1821.91	43	ALP-YGY-005
DET-00105	3	2765.77	44	ALP-BON-001
DET-00106	2	2227.46	44	ALP-YOX-004
DET-00107	4	3109.92	44	ALP-FIN-001
DET-00108	3	2147.54	44	ALP-YOX-001
DET-00109	2	4405.28	45	ALP-LEC-005
DET-00110	2	3294.83	45	ALP-LEC-001
DET-00111	8	3522.33	45	ALP-YOG-005
DET-00112	1	3288.34	46	ALP-YOG-004
DET-00113	3	1209.04	46	ALP-LEC-007
DET-00114	6	3239.74	47	ALP-LEC-001
DET-00115	6	1516.86	47	ALP-BON-005
DET-00116	3	1779.22	48	ALP-YGY-006
DET-00117	2	3455.61	48	ALP-YOG-005
DET-00118	4	2934.75	48	ALP-BON-004
DET-00119	8	4210.89	49	ALP-LEC-002
DET-00120	1	3155.75	49	ALP-LEC-001
DET-00121	2	2894.87	49	ALP-BON-004
DET-00122	5	1818.37	50	ALP-YGY-003
DET-00123	1	1820.92	50	ALP-YGY-004
DET-00124	5	1785.07	51	ALP-YGY-002
DET-00125	2	1523.40	51	ALP-BON-005
DET-00126	3	2871.85	51	ALP-BON-001
DET-00127	4	3029.59	51	ALP-FIN-001
DET-00128	1	3890.98	52	ALP-LEC-004
DET-00129	4	1799.82	52	ALP-YGY-002
DET-00130	8	2401.19	53	ALP-YOG-002
DET-00131	3	2762.41	53	ALP-FIN-002
DET-00132	7	1821.33	54	ALP-YGY-001
DET-00133	6	2334.29	54	ALP-YOG-002
DET-00134	3	1222.42	54	ALP-LEC-007
DET-00135	8	1834.64	54	ALP-YGY-003
DET-00136	2	3500.00	54	ALP-FIN-003
DET-00137	8	2421.58	55	ALP-YOG-002
DET-00138	3	1532.34	55	ALP-BON-005
DET-00139	6	1823.62	55	ALP-YGY-001
DET-00140	1	2138.74	55	ALP-YOX-002
DET-00141	4	3614.24	56	ALP-FIN-003
DET-00142	2	2214.45	56	ALP-YOX-004
DET-00143	7	1499.79	56	ALP-BON-005
DET-00144	4	4039.48	56	ALP-LEC-002
DET-00145	4	1843.33	56	ALP-YGY-004
DET-00146	1	2782.50	57	ALP-FIN-002
DET-00147	8	1220.04	57	ALP-LEC-007
DET-00148	3	3145.60	57	ALP-FIN-001
DET-00149	2	2236.40	57	ALP-YOX-001
DET-00150	5	1474.71	57	ALP-BON-005
DET-00151	5	2160.50	58	ALP-YOX-001
DET-00152	4	3769.42	58	ALP-LEC-003
DET-00153	5	4040.21	58	ALP-LEC-002
DET-00154	3	1833.10	58	ALP-YGY-004
DET-00155	3	3166.99	59	ALP-FIN-001
DET-00156	6	2767.13	60	ALP-BON-002
DET-00157	4	2347.54	60	ALP-YOG-001
DET-00158	10	3246.68	60	ALP-LEC-001
DET-00159	2	1826.17	60	ALP-YGY-002
DET-00160	3	1463.91	60	ALP-BON-005
DET-00161	1	1848.76	60	ALP-YGY-006
DET-00162	8	1793.89	60	ALP-YGY-003
DET-00163	6	2342.31	60	ALP-YOG-002
DET-00164	3	3218.43	61	ALP-LEC-001
DET-00165	4	1235.10	61	ALP-LEC-007
DET-00166	5	3027.45	61	ALP-FIN-001
DET-00167	2	3560.90	61	ALP-YOG-005
DET-00168	2	2353.09	61	ALP-YOG-002
DET-00169	5	4106.42	61	ALP-LEC-002
DET-00170	8	1220.02	61	ALP-LEC-006
DET-00171	4	1749.36	62	ALP-YGY-004
DET-00172	1	2190.27	62	ALP-YOX-002
DET-00173	2	3061.85	63	ALP-YOG-003
DET-00174	2	2849.24	63	ALP-BON-001
DET-00175	4	3886.12	63	ALP-LEC-003
DET-00176	3	3134.75	64	ALP-YOG-003
DET-00177	1	2731.66	64	ALP-BON-003
DET-00178	5	2444.89	64	ALP-YOG-002
DET-00179	7	2775.08	65	ALP-BON-001
DET-00180	5	4095.62	65	ALP-LEC-002
DET-00181	3	2809.45	65	ALP-BON-002
DET-00182	1	2376.93	66	ALP-YOG-002
DET-00183	5	3112.34	66	ALP-FIN-001
DET-00184	1	1850.96	66	ALP-YGY-004
DET-00185	4	1786.63	66	ALP-YGY-005
DET-00186	2	2436.71	67	ALP-YOG-001
DET-00187	4	1776.59	67	ALP-YGY-003
DET-00188	1	4141.11	67	ALP-LEC-002
DET-00189	1	3219.07	67	ALP-LEC-001
DET-00190	4	3772.69	68	ALP-LEC-003
DET-00191	11	1224.00	68	ALP-LEC-006
DET-00192	5	3214.55	69	ALP-LEC-001
DET-00193	4	4036.86	70	ALP-LEC-002
DET-00194	4	3179.99	70	ALP-LEC-001
DET-00195	2	2771.96	70	ALP-BON-001
DET-00196	8	1824.56	71	ALP-YGY-001
DET-00197	3	3862.21	72	ALP-LEC-003
DET-00198	2	4570.17	72	ALP-LEC-005
DET-00199	2	1752.07	73	ALP-YGY-005
DET-00200	1	1794.81	73	ALP-YGY-004
DET-00201	8	2339.05	73	ALP-YOG-002
DET-00202	4	1797.37	74	ALP-YGY-001
DET-00203	5	1527.99	74	ALP-BON-005
DET-00204	7	1755.11	74	ALP-YGY-002
DET-00205	4	1513.26	75	ALP-BON-005
DET-00206	3	1787.75	75	ALP-YGY-001
DET-00207	3	4008.67	75	ALP-LEC-004
DET-00208	5	3866.50	76	ALP-LEC-003
DET-00209	5	2855.27	76	ALP-BON-001
DET-00210	2	3104.91	76	ALP-FIN-001
DET-00211	1	2739.11	77	ALP-BON-002
DET-00212	3	3806.67	77	ALP-LEC-004
DET-00213	6	3158.71	78	ALP-LEC-001
DET-00214	3	2805.71	78	ALP-BON-001
DET-00215	8	2395.54	78	ALP-YOG-001
DET-00216	8	3901.95	78	ALP-LEC-003
DET-00217	3	2763.34	78	ALP-BON-002
DET-00218	4	2378.34	79	ALP-YOG-001
DET-00219	4	3771.26	79	ALP-LEC-003
DET-00220	10	1166.03	79	ALP-LEC-006
DET-00221	5	1816.20	79	ALP-YGY-005
DET-00222	4	2460.11	79	ALP-YOG-002
DET-00223	3	1827.95	79	ALP-YGY-002
DET-00224	5	3206.92	80	ALP-LEC-001
DET-00225	5	1215.74	80	ALP-LEC-006
DET-00226	3	3740.85	80	ALP-LEC-003
DET-00227	11	3412.98	80	ALP-YOG-005
DET-00228	5	1804.76	80	ALP-YGY-003
DET-00229	6	2381.76	81	ALP-YOG-002
DET-00230	8	1205.90	82	ALP-LEC-006
DET-00231	4	2393.91	83	ALP-YOG-001
DET-00232	1	3990.27	83	ALP-LEC-004
DET-00233	5	1490.84	83	ALP-BON-005
DET-00234	4	1751.16	84	ALP-YGY-005
DET-00235	2	2729.88	85	ALP-BON-003
DET-00236	3	1544.56	85	ALP-BON-005
DET-00237	2	3021.89	85	ALP-FIN-001
DET-00238	1	2977.94	86	ALP-BON-004
DET-00239	5	2181.96	86	ALP-YOX-001
DET-00240	2	2876.07	86	ALP-BON-001
DET-00241	4	3205.66	87	ALP-LEC-001
DET-00242	2	2363.94	87	ALP-YOG-001
DET-00243	3	2799.84	87	ALP-BON-002
DET-00244	2	1774.27	87	ALP-YGY-003
DET-00245	8	2163.60	88	ALP-YOX-001
DET-00246	2	3543.14	88	ALP-FIN-003
DET-00247	2	4519.51	88	ALP-LEC-005
DET-00248	8	3715.59	88	ALP-LEC-003
DET-00249	6	3295.92	88	ALP-LEC-001
DET-00250	5	3962.98	88	ALP-LEC-004
DET-00251	2	2218.79	88	ALP-YOX-002
DET-00252	2	3176.39	89	ALP-YOG-003
DET-00253	3	2371.79	89	ALP-YOG-001
DET-00254	4	3452.63	90	ALP-YOG-005
DET-00255	5	1756.09	90	ALP-YGY-001
DET-00256	4	3963.42	91	ALP-LEC-004
DET-00257	2	1790.99	91	ALP-YGY-004
DET-00258	1	3224.42	91	ALP-YOG-004
DET-00259	6	2373.01	92	ALP-YOG-001
DET-00260	10	2247.62	92	ALP-YOX-001
DET-00261	3	1201.08	92	ALP-LEC-007
DET-00262	3	1226.30	93	ALP-LEC-006
DET-00263	3	4119.11	93	ALP-LEC-002
DET-00264	5	1751.46	94	ALP-YGY-001
DET-00265	3	2825.92	94	ALP-BON-001
DET-00266	4	3266.66	94	ALP-LEC-001
DET-00267	12	2345.11	95	ALP-YOG-001
DET-00268	3	2849.54	95	ALP-BON-002
DET-00269	1	2842.83	95	ALP-BON-003
DET-00270	3	1800.01	95	ALP-YGY-003
DET-00271	5	1798.90	96	ALP-YGY-001
DET-00272	5	3689.79	96	ALP-LEC-003
DET-00273	3	3115.57	96	ALP-YOG-003
DET-00274	1	3539.49	96	ALP-YOG-005
DET-00275	4	1781.11	97	ALP-YGY-003
DET-00276	1	2175.42	97	ALP-YOX-002
DET-00277	2	3863.10	97	ALP-LEC-004
DET-00278	2	1823.86	97	ALP-YGY-004
DET-00279	6	2415.85	97	ALP-YOG-002
DET-00280	6	3754.06	97	ALP-LEC-003
DET-00281	4	2235.80	97	ALP-YOX-001
DET-00282	4	3197.89	97	ALP-LEC-001
DET-00283	6	2162.25	98	ALP-YOX-002
DET-00284	2	1214.12	98	ALP-LEC-007
DET-00285	2	1809.38	98	ALP-YGY-003
DET-00286	6	1803.35	98	ALP-YGY-002
DET-00287	2	3068.43	98	ALP-YOG-003
DET-00288	3	3128.44	99	ALP-FIN-001
DET-00289	10	2333.37	100	ALP-YOG-001
DET-00290	8	1224.31	100	ALP-LEC-007
DET-00291	3	3255.29	100	ALP-LEC-001
DET-00292	5	1183.64	101	ALP-LEC-007
DET-00293	5	3244.37	101	ALP-LEC-001
DET-00294	6	1747.52	101	ALP-YGY-003
DET-00295	2	3554.03	101	ALP-YOG-005
DET-00296	7	2422.13	102	ALP-YOG-002
DET-00297	3	1796.26	102	ALP-YGY-001
DET-00298	6	4204.08	102	ALP-LEC-002
DET-00299	2	1820.55	102	ALP-YGY-006
DET-00300	1	4464.24	102	ALP-LEC-005
DET-00301	4	1516.23	103	ALP-BON-005
DET-00302	2	2804.29	103	ALP-FIN-002
DET-00303	2	2870.10	103	ALP-BON-002
DET-00304	6	1212.44	104	ALP-LEC-006
DET-00305	5	1834.18	104	ALP-YGY-002
DET-00306	2	3793.60	104	ALP-LEC-004
DET-00307	2	2462.58	104	ALP-YOG-002
DET-00308	3	1457.86	104	ALP-BON-005
DET-00309	1	2774.43	105	ALP-FIN-002
DET-00310	4	1803.11	105	ALP-YGY-005
DET-00311	4	2944.58	105	ALP-BON-004
DET-00312	3	2836.81	105	ALP-BON-002
DET-00313	4	1514.42	106	ALP-BON-005
DET-00314	5	3888.70	106	ALP-LEC-003
DET-00315	4	1825.98	107	ALP-YGY-003
DET-00316	4	2403.06	108	ALP-YOG-001
DET-00317	4	3748.74	108	ALP-LEC-003
DET-00318	3	2815.40	108	ALP-FIN-002
DET-00319	5	1176.61	108	ALP-LEC-006
DET-00320	3	3207.28	109	ALP-LEC-001
DET-00321	5	2753.86	109	ALP-BON-001
DET-00322	2	1761.59	109	ALP-YGY-005
DET-00323	1	2781.25	110	ALP-BON-003
DET-00324	4	4069.78	111	ALP-LEC-002
DET-00325	1	1458.56	111	ALP-BON-005
DET-00326	4	1844.76	112	ALP-YGY-003
DET-00327	2	1822.01	112	ALP-YGY-006
DET-00328	4	1181.23	112	ALP-LEC-006
DET-00329	2	3158.35	112	ALP-YOG-004
DET-00330	1	2768.57	113	ALP-BON-001
DET-00331	5	2861.17	113	ALP-BON-002
DET-00332	2	3010.02	113	ALP-YOG-003
DET-00333	2	2234.76	114	ALP-YOX-002
DET-00334	5	1216.10	114	ALP-LEC-007
DET-00335	3	4489.42	114	ALP-LEC-005
DET-00336	5	3805.46	115	ALP-LEC-003
DET-00337	5	1754.03	115	ALP-YGY-002
DET-00338	3	3117.05	116	ALP-LEC-001
DET-00339	4	1456.42	117	ALP-BON-005
DET-00340	1	3182.98	117	ALP-LEC-001
DET-00341	5	1784.28	118	ALP-YGY-002
DET-00342	8	1169.69	118	ALP-LEC-007
DET-00343	3	1795.57	118	ALP-YGY-001
DET-00344	2	2226.04	118	ALP-YOX-001
DET-00345	8	4058.49	119	ALP-LEC-002
DET-00346	3	2879.61	119	ALP-FIN-002
DET-00347	1	1845.27	119	ALP-YGY-005
DET-00348	6	3277.04	119	ALP-LEC-001
DET-00349	2	1178.92	120	ALP-LEC-007
DET-00350	5	3567.35	120	ALP-YOG-005
DET-00351	2	2256.61	120	ALP-YOX-001
DET-00352	3	1826.51	121	ALP-YGY-003
DET-00353	3	2342.07	121	ALP-YOG-002
DET-00354	4	2144.03	121	ALP-YOX-001
DET-00355	4	1766.06	122	ALP-YGY-003
DET-00356	3	3077.69	122	ALP-FIN-001
DET-00357	2	2765.62	122	ALP-BON-001
DET-00358	3	1175.11	123	ALP-LEC-007
DET-00359	4	4083.02	124	ALP-LEC-002
DET-00360	2	3502.61	124	ALP-YOG-005
DET-00361	1	1839.28	125	ALP-YGY-002
DET-00362	2	2366.65	126	ALP-YOG-001
DET-00363	1	2156.07	126	ALP-YOX-002
DET-00364	5	1778.37	126	ALP-YGY-002
DET-00365	3	3396.42	127	ALP-YOG-005
DET-00366	2	2245.09	127	ALP-YOX-002
DET-00367	4	1521.14	128	ALP-BON-005
DET-00368	3	2981.39	128	ALP-BON-004
DET-00369	3	2374.93	128	ALP-YOG-002
DET-00370	2	1830.87	128	ALP-YGY-005
DET-00371	1	4446.76	129	ALP-LEC-005
DET-00372	2	3525.29	129	ALP-FIN-003
DET-00373	2	3871.22	129	ALP-LEC-004
DET-00374	5	2414.10	129	ALP-YOG-001
DET-00375	10	3206.60	129	ALP-LEC-001
DET-00376	2	2911.00	130	ALP-BON-004
DET-00377	12	3228.17	130	ALP-LEC-001
DET-00378	3	3068.68	130	ALP-FIN-001
DET-00379	1	2147.98	130	ALP-YOX-001
DET-00380	2	2223.70	131	ALP-YOX-004
DET-00381	8	1762.28	131	ALP-YGY-002
DET-00382	1	1189.08	132	ALP-LEC-007
DET-00383	3	3546.62	132	ALP-YOG-005
DET-00384	1	3993.52	132	ALP-LEC-002
DET-00385	3	3224.91	133	ALP-LEC-001
DET-00386	3	2826.43	133	ALP-BON-001
DET-00387	6	4158.40	133	ALP-LEC-002
DET-00388	4	2392.74	133	ALP-YOG-001
DET-00389	5	1221.31	134	ALP-LEC-006
DET-00390	2	1795.45	135	ALP-YGY-002
DET-00391	5	2829.16	135	ALP-BON-002
DET-00392	2	4613.04	135	ALP-LEC-005
DET-00393	3	4142.34	135	ALP-LEC-002
DET-00394	3	4081.07	136	ALP-LEC-002
DET-00395	6	2806.28	136	ALP-BON-002
DET-00396	2	3949.17	137	ALP-LEC-004
DET-00397	4	1176.04	137	ALP-LEC-007
DET-00398	1	4579.89	137	ALP-LEC-005
DET-00399	3	2332.71	137	ALP-YOG-002
DET-00400	3	1777.18	137	ALP-YGY-004
DET-00401	4	2437.44	138	ALP-YOG-001
DET-00402	4	1769.60	138	ALP-YGY-001
DET-00403	4	1825.49	138	ALP-YGY-003
DET-00404	3	3028.83	139	ALP-YOG-003
DET-00405	6	3144.30	139	ALP-LEC-001
DET-00406	3	2413.95	140	ALP-YOG-002
DET-00407	1	1851.73	140	ALP-YGY-004
DET-00408	4	2912.66	140	ALP-BON-004
DET-00409	1	3129.48	141	ALP-YOG-004
DET-00410	3	2374.38	141	ALP-YOG-001
DET-00411	3	3878.33	141	ALP-LEC-003
DET-00412	3	1754.16	142	ALP-YGY-004
DET-00413	3	2833.14	143	ALP-BON-003
DET-00414	4	2442.58	143	ALP-YOG-001
DET-00415	5	2261.79	143	ALP-YOX-001
DET-00416	1	3099.02	143	ALP-YOG-003
DET-00417	4	1750.96	144	ALP-YGY-002
DET-00418	1	3876.77	144	ALP-LEC-003
DET-00419	2	3795.12	145	ALP-LEC-004
DET-00420	5	1520.34	145	ALP-BON-005
DET-00421	1	2788.11	145	ALP-FIN-002
DET-00422	1	2829.56	145	ALP-BON-004
DET-00423	2	3508.83	145	ALP-FIN-003
DET-00424	2	1527.54	146	ALP-BON-005
DET-00425	3	3174.57	146	ALP-LEC-001
DET-00426	5	2780.30	146	ALP-BON-001
DET-00427	3	1769.46	147	ALP-YGY-005
DET-00428	2	2152.48	147	ALP-YOX-001
DET-00429	4	3244.16	147	ALP-LEC-001
DET-00430	5	1792.37	147	ALP-YGY-002
DET-00431	3	1748.90	148	ALP-YGY-005
DET-00432	3	1227.06	148	ALP-LEC-006
DET-00433	3	4384.17	149	ALP-LEC-005
DET-00434	2	2718.03	149	ALP-BON-003
DET-00435	2	1780.18	149	ALP-YGY-005
DET-00436	3	2862.85	150	ALP-BON-004
DET-00437	3	1828.85	150	ALP-YGY-002
DET-00438	2	3877.13	150	ALP-LEC-004
DET-00439	3	1804.07	150	ALP-YGY-001
DET-00440	3	4015.22	151	ALP-LEC-002
DET-00441	5	2344.70	152	ALP-YOG-001
DET-00442	2	1751.94	152	ALP-YGY-005
DET-00443	2	2826.55	152	ALP-BON-001
DET-00444	3	3765.05	153	ALP-LEC-003
DET-00445	3	1209.18	154	ALP-LEC-007
DET-00446	1	2801.81	154	ALP-BON-002
DET-00447	3	2451.75	154	ALP-YOG-001
DET-00448	6	2350.65	154	ALP-YOG-002
DET-00449	2	2163.64	155	ALP-YOX-001
DET-00450	3	4202.30	155	ALP-LEC-002
DET-00451	2	9991.69	155	ALP-YOX-003
DET-00452	5	3126.92	155	ALP-LEC-001
DET-00453	3	2335.58	155	ALP-YOG-002
DET-00454	6	3159.99	156	ALP-LEC-001
DET-00455	1	2840.25	156	ALP-BON-003
DET-00456	4	3075.50	156	ALP-YOG-003
DET-00457	4	10071.18	157	ALP-YOX-003
DET-00458	2	1761.38	157	ALP-YGY-002
DET-00459	3	2334.32	157	ALP-YOG-001
DET-00460	3	3878.77	157	ALP-LEC-003
DET-00461	3	3583.07	157	ALP-YOG-005
DET-00462	5	3247.60	157	ALP-LEC-001
DET-00463	3	1788.44	158	ALP-YGY-005
DET-00464	2	2770.81	158	ALP-BON-003
DET-00465	6	1771.23	158	ALP-YGY-003
DET-00466	4	2392.74	159	ALP-YOG-001
DET-00467	5	2793.84	160	ALP-BON-002
DET-00468	3	2414.88	161	ALP-YOG-001
DET-00469	2	3707.60	162	ALP-LEC-003
DET-00470	1	2238.78	162	ALP-YOX-002
DET-00471	3	3018.47	162	ALP-FIN-001
DET-00472	1	2753.34	162	ALP-BON-003
DET-00473	1	2240.83	163	ALP-YOX-001
DET-00474	5	3572.93	163	ALP-YOG-005
DET-00475	6	4007.14	163	ALP-LEC-002
DET-00476	3	3499.19	164	ALP-YOG-005
DET-00477	3	2864.31	165	ALP-BON-002
DET-00478	2	3120.84	165	ALP-YOG-004
DET-00479	4	1194.18	165	ALP-LEC-007
DET-00480	5	1165.88	166	ALP-LEC-006
DET-00481	3	3498.33	166	ALP-FIN-003
DET-00482	5	1776.34	166	ALP-YGY-002
DET-00483	4	3194.56	166	ALP-LEC-001
DET-00484	12	1205.45	167	ALP-LEC-006
DET-00485	4	3873.89	167	ALP-LEC-004
DET-00486	2	1853.09	167	ALP-YGY-002
DET-00487	2	2811.37	168	ALP-BON-001
DET-00488	3	10063.64	168	ALP-YOX-003
DET-00489	3	3040.01	169	ALP-FIN-001
DET-00490	1	1839.77	169	ALP-YGY-002
DET-00491	3	3817.56	169	ALP-LEC-004
DET-00492	2	3131.20	169	ALP-LEC-001
DET-00493	4	2789.39	170	ALP-BON-002
DET-00494	4	3197.54	170	ALP-LEC-001
DET-00495	2	2227.35	170	ALP-YOX-002
DET-00496	3	1780.37	171	ALP-YGY-004
DET-00497	4	2818.71	171	ALP-BON-002
DET-00498	2	1757.24	171	ALP-YGY-006
DET-00499	2	2375.69	171	ALP-YOG-001
DET-00500	1	9709.92	171	ALP-YOX-003
DET-00501	3	3153.39	172	ALP-FIN-001
DET-00502	4	2334.93	172	ALP-YOG-002
DET-00503	1	1791.32	172	ALP-YGY-006
DET-00504	1	3155.65	173	ALP-YOG-003
DET-00505	2	2719.37	173	ALP-BON-001
DET-00506	3	2733.59	173	ALP-BON-002
DET-00507	2	3878.77	174	ALP-LEC-004
DET-00508	5	3281.71	174	ALP-LEC-001
DET-00509	2	3533.73	174	ALP-YOG-005
DET-00510	2	2732.11	174	ALP-FIN-002
DET-00511	3	2808.34	174	ALP-BON-001
DET-00512	5	3224.02	175	ALP-LEC-001
DET-00513	2	1198.10	176	ALP-LEC-006
DET-00514	3	1806.94	177	ALP-YGY-001
DET-00515	1	3136.54	177	ALP-YOG-003
DET-00516	5	1212.11	177	ALP-LEC-007
DET-00517	3	1790.71	177	ALP-YGY-005
DET-00518	3	3213.96	178	ALP-LEC-001
DET-00519	3	2766.21	178	ALP-BON-002
DET-00520	2	3112.19	179	ALP-LEC-001
DET-00521	2	1819.78	179	ALP-YGY-003
DET-00522	2	1834.84	179	ALP-YGY-001
DET-00523	1	2815.97	179	ALP-FIN-002
DET-00524	5	2349.55	180	ALP-YOG-001
DET-00525	8	4120.34	180	ALP-LEC-002
DET-00526	2	1756.82	180	ALP-YGY-002
DET-00527	6	2440.25	180	ALP-YOG-002
DET-00528	2	3170.49	181	ALP-YOG-003
DET-00529	3	1167.55	181	ALP-LEC-007
DET-00530	2	1775.01	181	ALP-YGY-006
DET-00531	5	1782.49	181	ALP-YGY-003
DET-00532	6	2435.10	182	ALP-YOG-002
DET-00533	5	2176.35	182	ALP-YOX-001
DET-00534	4	3993.14	183	ALP-LEC-002
DET-00535	5	1491.30	183	ALP-BON-005
DET-00536	2	3204.66	183	ALP-YOG-004
DET-00537	2	3044.03	184	ALP-YOG-003
DET-00538	2	4490.34	184	ALP-LEC-005
DET-00539	2	2236.94	185	ALP-YOX-001
DET-00540	3	1179.94	185	ALP-LEC-006
DET-00541	5	1768.33	185	ALP-YGY-001
DET-00542	5	1501.20	185	ALP-BON-005
DET-00543	2	3186.89	185	ALP-FIN-001
DET-00544	5	3890.17	186	ALP-LEC-003
DET-00545	1	3890.41	186	ALP-LEC-004
DET-00546	5	2371.51	186	ALP-YOG-001
DET-00547	3	1798.03	187	ALP-YGY-003
DET-00548	4	3157.08	187	ALP-LEC-001
DET-00549	2	3551.81	187	ALP-FIN-003
DET-00550	2	1825.57	188	ALP-YGY-005
DET-00551	3	4633.58	188	ALP-LEC-005
DET-00552	6	1783.06	188	ALP-YGY-001
DET-00553	5	1213.41	188	ALP-LEC-006
DET-00554	10	3195.34	188	ALP-LEC-001
DET-00555	5	1217.35	189	ALP-LEC-007
DET-00556	4	3913.81	189	ALP-LEC-004
DET-00557	1	3194.67	190	ALP-YOG-004
DET-00558	2	1758.94	190	ALP-YGY-006
DET-00559	4	1202.15	190	ALP-LEC-006
DET-00560	3	2453.40	190	ALP-YOG-002
DET-00561	1	2985.67	190	ALP-BON-004
DET-00562	5	3807.70	191	ALP-LEC-003
DET-00563	8	2464.81	191	ALP-YOG-002
DET-00564	2	3960.10	191	ALP-LEC-004
DET-00565	1	3981.41	191	ALP-LEC-002
DET-00566	2	2839.25	191	ALP-BON-001
DET-00567	1	2863.33	191	ALP-FIN-002
DET-00568	5	3123.72	191	ALP-LEC-001
DET-00569	6	3187.26	192	ALP-LEC-001
DET-00570	8	3423.10	192	ALP-YOG-005
DET-00571	2	2400.67	193	ALP-YOG-001
DET-00572	3	3949.40	193	ALP-LEC-004
DET-00573	2	3176.04	193	ALP-YOG-004
DET-00574	1	1820.06	194	ALP-YGY-004
DET-00575	2	1791.45	194	ALP-YGY-003
DET-00576	5	3203.90	194	ALP-LEC-001
DET-00577	3	4149.38	194	ALP-LEC-002
DET-00578	3	1797.91	195	ALP-YGY-001
DET-00579	1	1747.38	195	ALP-YGY-004
DET-00580	4	1171.95	195	ALP-LEC-007
DET-00581	10	2399.15	195	ALP-YOG-001
DET-00582	1	1830.19	195	ALP-YGY-003
DET-00583	3	3126.25	196	ALP-YOG-004
DET-00584	1	1842.15	196	ALP-YGY-005
DET-00585	4	1467.46	196	ALP-BON-005
DET-00586	3	2771.22	196	ALP-FIN-002
DET-00587	5	1234.67	197	ALP-LEC-007
DET-00588	4	9566.98	197	ALP-YOX-003
DET-00589	4	2797.09	197	ALP-BON-002
DET-00590	4	2789.61	197	ALP-BON-001
DET-00591	4	4168.67	197	ALP-LEC-002
DET-00592	3	3145.31	198	ALP-YOG-003
DET-00593	4	2163.57	198	ALP-YOX-002
DET-00594	5	1840.30	198	ALP-YGY-001
DET-00595	4	1516.94	198	ALP-BON-005
DET-00596	2	2257.34	199	ALP-YOX-002
DET-00597	5	1796.68	199	ALP-YGY-001
DET-00598	3	1763.86	199	ALP-YGY-006
DET-00599	3	2729.24	200	ALP-BON-001
DET-00600	1	1205.26	200	ALP-LEC-007
DET-00601	4	2877.81	201	ALP-BON-001
DET-00602	2	2865.54	201	ALP-FIN-002
DET-00603	2	2220.41	201	ALP-YOX-004
DET-00604	4	2431.20	202	ALP-YOG-002
DET-00605	2	2393.16	202	ALP-YOG-001
DET-00606	6	3261.79	203	ALP-LEC-001
DET-00607	2	2784.75	203	ALP-BON-002
DET-00608	1	1767.16	203	ALP-YGY-004
DET-00609	12	1200.30	204	ALP-LEC-006
DET-00610	6	2328.62	204	ALP-YOG-002
DET-00611	2	4514.37	204	ALP-LEC-005
DET-00612	6	2814.30	204	ALP-BON-001
DET-00613	2	3151.66	205	ALP-YOG-004
DET-00614	2	2179.26	205	ALP-YOX-001
DET-00615	1	3971.32	205	ALP-LEC-004
DET-00616	8	2414.76	205	ALP-YOG-001
DET-00617	2	2460.65	206	ALP-YOG-002
DET-00618	8	1822.72	206	ALP-YGY-002
DET-00619	4	2745.87	206	ALP-BON-001
DET-00620	2	2249.83	207	ALP-YOX-002
DET-00621	2	2329.84	207	ALP-YOG-001
DET-00622	1	1787.13	207	ALP-YGY-002
DET-00623	2	1213.20	208	ALP-LEC-007
DET-00624	4	2379.65	209	ALP-YOG-001
DET-00625	3	2140.20	210	ALP-YOX-001
DET-00626	5	1790.99	210	ALP-YGY-002
DET-00627	12	1213.33	210	ALP-LEC-006
DET-00628	2	2247.58	211	ALP-YOX-004
DET-00629	1	1824.29	212	ALP-YGY-004
DET-00630	4	2193.24	212	ALP-YOX-002
DET-00631	1	3014.56	213	ALP-FIN-001
DET-00632	2	4000.30	214	ALP-LEC-004
DET-00633	5	2439.41	214	ALP-YOG-002
DET-00634	6	1189.16	215	ALP-LEC-007
DET-00635	4	2423.52	215	ALP-YOG-001
DET-00636	8	1777.71	215	ALP-YGY-002
DET-00637	4	3222.71	215	ALP-LEC-001
DET-00638	4	2455.54	216	ALP-YOG-001
DET-00639	1	1831.99	216	ALP-YGY-005
DET-00640	5	4040.12	216	ALP-LEC-002
DET-00641	5	1800.94	217	ALP-YGY-001
DET-00642	2	1803.59	218	ALP-YGY-005
DET-00643	4	2751.41	218	ALP-BON-001
DET-00644	5	2191.45	219	ALP-YOX-001
DET-00645	6	2338.39	219	ALP-YOG-002
DET-00646	1	2157.49	220	ALP-YOX-002
DET-00647	4	2392.96	221	ALP-YOG-002
DET-00648	5	2723.65	222	ALP-BON-002
DET-00649	3	4064.99	222	ALP-LEC-002
DET-00650	2	2138.07	223	ALP-YOX-001
DET-00651	5	1769.75	223	ALP-YGY-003
DET-00652	5	2334.02	224	ALP-YOG-002
DET-00653	4	1192.37	224	ALP-LEC-007
DET-00654	1	1755.19	224	ALP-YGY-004
DET-00655	3	3144.91	224	ALP-YOG-003
DET-00656	2	3126.01	225	ALP-YOG-004
DET-00657	2	2409.69	225	ALP-YOG-002
DET-00658	1	2763.90	226	ALP-FIN-002
DET-00659	3	1766.90	226	ALP-YGY-002
DET-00660	2	1781.46	226	ALP-YGY-005
DET-00661	3	3237.14	226	ALP-LEC-001
DET-00662	4	2425.86	227	ALP-YOG-001
DET-00663	2	3096.27	227	ALP-FIN-001
DET-00664	2	3964.30	227	ALP-LEC-004
DET-00665	3	1835.26	228	ALP-YGY-005
DET-00666	2	9983.83	229	ALP-YOX-003
DET-00667	1	1829.07	229	ALP-YGY-004
DET-00668	2	1211.08	230	ALP-LEC-007
DET-00669	1	3074.68	231	ALP-YOG-003
DET-00670	8	1771.80	231	ALP-YGY-003
DET-00671	3	3905.00	232	ALP-LEC-004
DET-00672	3	1836.17	232	ALP-YGY-001
DET-00673	2	1503.99	232	ALP-BON-005
DET-00674	3	3532.27	232	ALP-YOG-005
DET-00675	3	1816.56	232	ALP-YGY-006
DET-00676	2	3103.10	232	ALP-FIN-001
DET-00677	2	10039.46	232	ALP-YOX-003
DET-00678	5	2775.29	232	ALP-BON-002
DET-00679	6	1785.12	233	ALP-YGY-001
DET-00680	2	1758.78	233	ALP-YGY-003
DET-00681	5	3870.95	233	ALP-LEC-003
DET-00682	5	1750.23	234	ALP-YGY-001
DET-00683	3	1168.03	234	ALP-LEC-006
DET-00684	4	3825.13	234	ALP-LEC-004
DET-00685	5	1764.42	235	ALP-YGY-002
DET-00686	6	3219.36	235	ALP-LEC-001
DET-00687	1	2242.30	235	ALP-YOX-002
DET-00688	3	1225.89	236	ALP-LEC-007
DET-00689	1	2189.41	236	ALP-YOX-002
DET-00690	3	2732.18	236	ALP-BON-001
DET-00691	5	3252.78	237	ALP-LEC-001
DET-00692	4	2403.17	237	ALP-YOG-001
DET-00693	5	1750.69	237	ALP-YGY-001
DET-00694	2	2428.33	238	ALP-YOG-001
DET-00695	3	2738.49	238	ALP-BON-002
DET-00696	5	2441.68	239	ALP-YOG-002
DET-00697	1	1172.48	239	ALP-LEC-007
DET-00698	4	2170.37	240	ALP-YOX-001
DET-00699	3	2842.84	240	ALP-BON-001
DET-00700	3	2847.68	240	ALP-BON-002
DET-00701	4	1838.34	241	ALP-YGY-002
DET-00702	4	1217.84	241	ALP-LEC-006
DET-00703	1	3784.24	242	ALP-LEC-004
DET-00704	10	1174.46	242	ALP-LEC-006
DET-00705	1	2789.14	242	ALP-BON-003
DET-00706	4	4152.06	243	ALP-LEC-002
DET-00707	8	3285.58	243	ALP-LEC-001
DET-00708	1	1470.25	244	ALP-BON-005
DET-00709	1	1181.23	244	ALP-LEC-006
DET-00710	4	1763.00	244	ALP-YGY-006
DET-00711	4	2762.45	245	ALP-BON-002
DET-00712	4	2748.68	245	ALP-BON-003
DET-00713	2	1808.09	245	ALP-YGY-003
DET-00714	2	1789.97	245	ALP-YGY-001
DET-00715	6	1232.88	246	ALP-LEC-007
DET-00716	4	1753.30	247	ALP-YGY-003
DET-00717	4	2265.23	247	ALP-YOX-001
DET-00718	1	3049.77	247	ALP-FIN-001
DET-00719	3	1849.19	247	ALP-YGY-002
DET-00720	8	2425.01	248	ALP-YOG-002
DET-00721	2	3582.81	249	ALP-YOG-005
DET-00722	5	2215.03	250	ALP-YOX-001
DET-00723	1	3207.96	250	ALP-YOG-004
DET-00724	5	1798.09	250	ALP-YGY-001
DET-00725	4	4497.93	250	ALP-LEC-005
DET-00726	3	10033.44	250	ALP-YOX-003
DET-00727	2	2800.42	251	ALP-FIN-002
DET-00728	1	3235.78	251	ALP-YOG-004
DET-00729	4	1234.31	251	ALP-LEC-007
DET-00730	4	2196.22	252	ALP-YOX-001
DET-00731	5	3174.26	252	ALP-LEC-001
DET-00732	6	1179.16	252	ALP-LEC-006
DET-00733	3	2342.38	253	ALP-YOG-002
DET-00734	3	1180.98	253	ALP-LEC-007
DET-00735	5	3912.99	254	ALP-LEC-003
DET-00736	3	3103.16	254	ALP-FIN-001
DET-00737	6	1204.35	255	ALP-LEC-007
DET-00738	1	1773.83	255	ALP-YGY-002
DET-00739	5	1759.09	255	ALP-YGY-003
DET-00740	1	2877.80	255	ALP-BON-003
DET-00741	2	1776.94	256	ALP-YGY-005
DET-00742	1	3816.89	256	ALP-LEC-004
DET-00743	4	2444.31	256	ALP-YOG-001
DET-00744	3	1775.29	257	ALP-YGY-003
DET-00745	4	2452.24	257	ALP-YOG-002
DET-00746	12	3216.69	257	ALP-LEC-001
DET-00747	3	4382.22	258	ALP-LEC-005
DET-00748	1	3209.30	258	ALP-LEC-001
DET-00749	3	2186.41	258	ALP-YOX-002
DET-00750	3	1227.75	259	ALP-LEC-007
DET-00751	3	1225.95	260	ALP-LEC-007
DET-00752	4	1797.42	260	ALP-YGY-004
DET-00753	4	1201.69	261	ALP-LEC-007
DET-00754	3	1482.87	261	ALP-BON-005
DET-00755	3	3107.38	261	ALP-FIN-001
DET-00756	6	2870.91	262	ALP-BON-002
DET-00757	1	1198.35	262	ALP-LEC-007
DET-00758	2	2788.31	262	ALP-BON-001
DET-00759	4	3245.53	263	ALP-LEC-001
DET-00760	2	2779.56	263	ALP-BON-002
DET-00761	3	1225.45	264	ALP-LEC-006
DET-00762	5	2369.70	264	ALP-YOG-001
DET-00763	1	3222.60	264	ALP-YOG-004
DET-00764	1	4427.86	265	ALP-LEC-005
DET-00765	4	3198.77	265	ALP-LEC-001
DET-00766	5	1779.65	265	ALP-YGY-002
DET-00767	4	2146.40	266	ALP-YOX-001
DET-00768	4	3144.02	266	ALP-LEC-001
DET-00769	6	4213.46	266	ALP-LEC-002
DET-00770	6	2350.84	266	ALP-YOG-001
DET-00771	4	3855.80	266	ALP-LEC-003
DET-00772	3	1172.79	266	ALP-LEC-007
DET-00773	2	2766.20	266	ALP-BON-003
DET-00774	1	1792.89	267	ALP-YGY-006
DET-00775	8	1782.55	268	ALP-YGY-003
DET-00776	1	2843.61	268	ALP-BON-003
DET-00777	3	1189.60	268	ALP-LEC-006
DET-00778	1	3106.76	268	ALP-FIN-001
DET-00779	1	2758.12	269	ALP-BON-001
DET-00780	4	1822.32	269	ALP-YGY-002
DET-00781	2	1804.62	269	ALP-YGY-005
DET-00782	4	1834.50	270	ALP-YGY-002
DET-00783	5	2792.29	270	ALP-BON-001
DET-00784	6	1800.64	270	ALP-YGY-001
DET-00785	1	1817.16	271	ALP-YGY-004
DET-00786	2	2873.55	271	ALP-BON-002
DET-00787	2	2721.25	271	ALP-BON-001
DET-00788	1	3140.79	271	ALP-LEC-001
DET-00789	2	3126.37	271	ALP-FIN-001
DET-00790	2	1835.86	272	ALP-YGY-004
DET-00791	3	1815.00	272	ALP-YGY-003
DET-00792	8	3246.75	272	ALP-LEC-001
DET-00793	5	2355.81	273	ALP-YOG-001
DET-00794	10	3213.45	273	ALP-LEC-001
DET-00795	2	1806.31	273	ALP-YGY-004
DET-00796	5	1826.58	273	ALP-YGY-002
DET-00797	6	2213.19	274	ALP-YOX-001
DET-00798	2	2970.03	274	ALP-BON-004
DET-00799	5	4222.23	274	ALP-LEC-002
DET-00800	4	1794.86	275	ALP-YGY-004
DET-00801	1	2328.03	275	ALP-YOG-002
DET-00802	1	2763.79	275	ALP-BON-001
DET-00803	1	3046.96	276	ALP-YOG-003
DET-00804	3	3448.81	277	ALP-YOG-005
DET-00805	5	2410.15	277	ALP-YOG-002
DET-00806	2	1769.48	277	ALP-YGY-001
DET-00807	3	1781.07	277	ALP-YGY-003
DET-00808	1	3178.47	278	ALP-YOG-003
DET-00809	3	2250.13	278	ALP-YOX-001
DET-00810	2	2461.96	278	ALP-YOG-002
DET-00811	4	2222.92	279	ALP-YOX-004
DET-00812	6	2467.83	279	ALP-YOG-002
DET-00813	1	3515.80	279	ALP-YOG-005
DET-00814	3	1792.65	279	ALP-YGY-004
DET-00815	2	2808.09	280	ALP-BON-001
DET-00816	4	1506.42	281	ALP-BON-005
DET-00817	4	2265.61	281	ALP-YOX-001
DET-00818	2	1190.30	282	ALP-LEC-007
DET-00819	2	2872.95	282	ALP-BON-004
DET-00820	1	3956.06	283	ALP-LEC-004
DET-00821	2	2820.33	283	ALP-BON-001
DET-00822	3	2447.87	283	ALP-YOG-002
DET-00823	8	2377.43	283	ALP-YOG-001
DET-00824	5	1805.27	284	ALP-YGY-001
DET-00825	4	2882.71	284	ALP-BON-001
DET-00826	1	2874.79	285	ALP-BON-002
DET-00827	2	3230.79	285	ALP-YOG-004
DET-00828	4	1844.59	285	ALP-YGY-001
DET-00829	3	1234.55	286	ALP-LEC-007
DET-00830	1	3246.92	287	ALP-YOG-004
DET-00831	4	1819.91	287	ALP-YGY-001
DET-00832	8	1778.65	287	ALP-YGY-003
DET-00833	2	4217.73	287	ALP-LEC-002
DET-00834	10	1235.31	288	ALP-LEC-006
DET-00835	5	1173.49	289	ALP-LEC-006
DET-00836	4	2813.61	289	ALP-BON-001
DET-00837	1	2749.99	289	ALP-BON-003
DET-00838	6	3842.99	289	ALP-LEC-003
DET-00839	2	10040.82	289	ALP-YOX-003
DET-00840	8	2435.37	290	ALP-YOG-001
DET-00841	3	1814.78	290	ALP-YGY-006
DET-00842	2	1762.41	290	ALP-YGY-002
DET-00843	1	3813.78	290	ALP-LEC-004
DET-00844	5	3293.30	290	ALP-LEC-001
DET-00845	1	1816.15	291	ALP-YGY-004
DET-00846	3	1787.85	291	ALP-YGY-003
DET-00847	3	1175.79	291	ALP-LEC-006
DET-00848	2	3088.71	292	ALP-FIN-001
DET-00849	5	3539.45	292	ALP-YOG-005
DET-00850	4	1227.91	292	ALP-LEC-006
DET-00851	6	1840.80	293	ALP-YGY-003
DET-00852	5	2363.38	293	ALP-YOG-002
DET-00853	1	2263.87	293	ALP-YOX-002
DET-00854	3	2781.08	293	ALP-BON-003
DET-00855	3	1193.78	294	ALP-LEC-007
DET-00856	2	2746.05	294	ALP-BON-003
DET-00857	2	2835.72	294	ALP-BON-001
DET-00858	3	2393.47	294	ALP-YOG-002
DET-00859	6	1517.25	294	ALP-BON-005
DET-00860	3	2951.59	294	ALP-BON-004
DET-00861	3	4105.86	295	ALP-LEC-002
DET-00862	4	1791.31	296	ALP-YGY-001
DET-00863	2	3149.97	296	ALP-FIN-001
DET-00864	2	2821.24	296	ALP-BON-002
DET-00865	3	2346.95	296	ALP-YOG-001
DET-00866	2	1193.53	297	ALP-LEC-006
DET-00867	2	1509.01	297	ALP-BON-005
DET-00868	5	2406.82	297	ALP-YOG-002
DET-00869	1	2460.54	298	ALP-YOG-002
DET-00870	3	3184.06	298	ALP-LEC-001
DET-00871	4	3839.24	298	ALP-LEC-003
DET-00872	1	1786.93	299	ALP-YGY-003
DET-00873	5	2389.53	299	ALP-YOG-001
DET-00874	1	3851.52	299	ALP-LEC-004
DET-00875	4	1198.82	300	ALP-LEC-007
DET-00876	12	1846.86	300	ALP-YGY-001
DET-00877	4	2171.91	300	ALP-YOX-001
DET-00878	5	1814.24	301	ALP-YGY-001
DET-00879	2	3530.86	301	ALP-FIN-003
DET-00880	1	2717.90	302	ALP-FIN-002
DET-00881	6	3158.07	302	ALP-LEC-001
DET-00882	2	1779.24	302	ALP-YGY-004
DET-00883	1	4056.69	302	ALP-LEC-002
DET-00884	4	2849.94	303	ALP-BON-001
DET-00885	2	2197.56	303	ALP-YOX-002
DET-00886	2	1842.34	303	ALP-YGY-004
DET-00887	5	2373.43	304	ALP-YOG-001
DET-00888	2	2750.99	304	ALP-BON-003
DET-00889	3	3146.79	305	ALP-YOG-003
DET-00890	1	2768.84	305	ALP-BON-002
DET-00891	2	3083.98	305	ALP-FIN-001
DET-00892	3	1181.11	305	ALP-LEC-007
DET-00893	8	1174.32	306	ALP-LEC-006
DET-00894	6	2854.12	306	ALP-BON-001
DET-00895	2	4143.47	306	ALP-LEC-002
DET-00896	4	2432.34	306	ALP-YOG-001
DET-00897	2	3241.03	306	ALP-YOG-004
DET-00898	3	3413.29	307	ALP-YOG-005
DET-00899	4	1808.38	308	ALP-YGY-001
DET-00900	2	2834.33	309	ALP-BON-001
DET-00901	1	4431.10	309	ALP-LEC-005
DET-00902	3	1208.15	309	ALP-LEC-007
DET-00903	2	1494.93	309	ALP-BON-005
DET-00904	4	4092.80	309	ALP-LEC-002
DET-00905	5	3218.46	310	ALP-LEC-001
DET-00906	3	2255.40	311	ALP-YOX-001
DET-00907	2	1795.20	311	ALP-YGY-004
DET-00908	3	2835.32	311	ALP-BON-001
DET-00909	3	2361.36	311	ALP-YOG-001
DET-00910	3	1764.45	312	ALP-YGY-004
DET-00911	1	3220.05	312	ALP-YOG-004
DET-00912	3	2733.29	312	ALP-BON-003
DET-00913	3	2239.17	312	ALP-YOX-001
DET-00914	5	2445.20	313	ALP-YOG-001
DET-00915	3	1830.71	313	ALP-YGY-002
DET-00916	2	2848.27	313	ALP-BON-003
DET-00917	2	1795.99	314	ALP-YGY-006
DET-00918	2	4179.22	314	ALP-LEC-002
DET-00919	4	3206.00	315	ALP-LEC-001
DET-00920	2	4119.17	315	ALP-LEC-002
DET-00921	4	2426.14	315	ALP-YOG-001
DET-00922	6	2811.81	315	ALP-BON-002
DET-00923	10	1778.89	315	ALP-YGY-001
DET-00924	1	2808.21	316	ALP-FIN-002
DET-00925	5	2834.16	316	ALP-BON-001
DET-00926	5	4065.37	316	ALP-LEC-002
DET-00927	3	1224.48	317	ALP-LEC-006
DET-00928	4	2265.66	317	ALP-YOX-001
DET-00929	1	2738.56	317	ALP-BON-003
DET-00930	5	2718.64	317	ALP-BON-001
DET-00931	3	1471.18	318	ALP-BON-005
DET-00932	2	2808.74	318	ALP-FIN-002
DET-00933	2	4064.41	318	ALP-LEC-002
DET-00934	2	1822.13	319	ALP-YGY-003
DET-00935	6	2397.34	319	ALP-YOG-002
DET-00936	6	1174.23	319	ALP-LEC-006
DET-00937	1	1481.03	320	ALP-BON-005
DET-00938	5	4204.02	320	ALP-LEC-002
DET-00939	2	3142.22	320	ALP-YOG-003
DET-00940	4	1752.63	320	ALP-YGY-001
DET-00941	1	9605.42	320	ALP-YOX-003
DET-00942	3	3191.21	320	ALP-FIN-001
DET-00943	1	1813.43	320	ALP-YGY-004
DET-00944	3	1760.31	321	ALP-YGY-001
DET-00945	2	3169.83	322	ALP-LEC-001
DET-00946	6	4012.69	322	ALP-LEC-002
DET-00947	2	3819.07	322	ALP-LEC-004
DET-00948	5	1853.31	322	ALP-YGY-003
DET-00949	2	1522.99	323	ALP-BON-005
DET-00950	2	1764.10	323	ALP-YGY-005
DET-00951	3	2153.16	324	ALP-YOX-004
DET-00952	10	2329.71	324	ALP-YOG-001
DET-00953	3	2247.30	325	ALP-YOX-001
DET-00954	1	3056.68	325	ALP-FIN-001
DET-00955	4	3229.63	325	ALP-LEC-001
DET-00956	4	2342.96	326	ALP-YOG-001
DET-00957	1	9635.02	326	ALP-YOX-003
DET-00958	1	1766.85	326	ALP-YGY-003
DET-00959	4	4389.82	326	ALP-LEC-005
DET-00960	12	2409.51	327	ALP-YOG-002
DET-00961	2	3173.66	327	ALP-FIN-001
DET-00962	2	1773.36	327	ALP-YGY-005
DET-00963	2	1793.58	328	ALP-YGY-005
DET-00964	4	3590.00	328	ALP-YOG-005
DET-00965	3	1176.85	328	ALP-LEC-007
DET-00966	3	2838.03	328	ALP-BON-004
DET-00967	2	3145.93	328	ALP-YOG-004
DET-00968	4	2202.03	329	ALP-YOX-002
DET-00969	3	4097.71	329	ALP-LEC-002
DET-00970	6	3266.06	329	ALP-LEC-001
DET-00971	4	1830.82	329	ALP-YGY-003
DET-00972	10	1164.24	329	ALP-LEC-006
DET-00973	6	1795.64	330	ALP-YGY-001
DET-00974	2	1815.96	330	ALP-YGY-003
DET-00975	3	3403.26	330	ALP-YOG-005
DET-00976	4	2748.09	330	ALP-BON-002
DET-00977	4	1794.53	331	ALP-YGY-004
DET-00978	1	2722.22	331	ALP-BON-002
DET-00979	1	4170.79	331	ALP-LEC-002
DET-00980	3	9575.49	331	ALP-YOX-003
DET-00981	3	3838.15	331	ALP-LEC-003
DET-00982	3	3015.52	332	ALP-YOG-003
DET-00983	2	3715.76	332	ALP-LEC-003
DET-00984	3	1751.40	332	ALP-YGY-003
DET-00985	3	1516.06	333	ALP-BON-005
DET-00986	2	4011.35	333	ALP-LEC-004
DET-00987	5	1760.83	333	ALP-YGY-003
DET-00988	6	2442.21	333	ALP-YOG-002
DET-00989	5	2732.79	334	ALP-BON-001
DET-00990	5	4127.66	334	ALP-LEC-002
DET-00991	3	3689.56	334	ALP-LEC-003
DET-00992	2	3990.54	335	ALP-LEC-004
DET-00993	6	2418.32	336	ALP-YOG-001
DET-00994	1	2179.92	336	ALP-YOX-001
DET-00995	2	1180.97	336	ALP-LEC-006
DET-00996	1	1803.26	336	ALP-YGY-005
DET-00997	6	2355.90	337	ALP-YOG-001
DET-00998	8	1820.01	337	ALP-YGY-002
DET-00999	3	3793.14	338	ALP-LEC-004
DET-01000	1	1845.89	338	ALP-YGY-006
DET-01001	5	3254.81	338	ALP-LEC-001
DET-01002	1	3067.63	339	ALP-YOG-003
DET-01003	6	2797.38	340	ALP-BON-001
DET-01004	10	2348.87	340	ALP-YOG-001
DET-01005	3	4088.93	340	ALP-LEC-002
DET-01006	1	2160.69	341	ALP-YOX-002
DET-01007	5	3226.50	342	ALP-LEC-001
DET-01008	8	3724.75	342	ALP-LEC-003
DET-01009	2	2451.12	342	ALP-YOG-002
DET-01010	5	1762.09	343	ALP-YGY-001
DET-01011	4	3493.10	343	ALP-FIN-003
DET-01012	3	1750.33	343	ALP-YGY-003
DET-01013	1	2438.68	343	ALP-YOG-002
DET-01014	3	1760.33	344	ALP-YGY-001
DET-01015	2	2421.26	344	ALP-YOG-001
DET-01016	4	2397.09	344	ALP-YOG-002
DET-01017	8	2338.18	345	ALP-YOG-002
DET-01018	1	2177.94	345	ALP-YOX-004
DET-01019	3	3185.77	345	ALP-LEC-001
DET-01020	4	1540.15	345	ALP-BON-005
DET-01021	5	2353.24	346	ALP-YOG-001
DET-01022	4	3993.48	346	ALP-LEC-002
DET-01023	4	3045.08	346	ALP-YOG-003
DET-01024	1	9646.32	346	ALP-YOX-003
DET-01025	1	3453.20	347	ALP-YOG-005
DET-01026	3	1783.28	347	ALP-YGY-003
DET-01027	1	3104.96	347	ALP-FIN-001
DET-01028	2	2252.53	348	ALP-YOX-001
DET-01029	2	1849.32	348	ALP-YGY-002
DET-01030	4	1183.87	348	ALP-LEC-007
DET-01031	3	1799.60	348	ALP-YGY-004
DET-01032	3	1752.80	349	ALP-YGY-004
DET-01033	6	1180.73	349	ALP-LEC-007
DET-01034	2	3126.91	349	ALP-FIN-001
DET-01035	1	1778.84	350	ALP-YGY-005
DET-01036	2	2848.61	350	ALP-BON-001
DET-01037	10	1763.97	351	ALP-YGY-001
DET-01038	1	3139.40	351	ALP-FIN-001
DET-01039	8	2231.48	352	ALP-YOX-001
DET-01040	3	1781.78	352	ALP-YGY-006
DET-01041	2	3794.05	352	ALP-LEC-003
DET-01042	12	1231.97	352	ALP-LEC-006
DET-01043	2	3214.16	352	ALP-LEC-001
DET-01044	6	2810.96	352	ALP-BON-001
DET-01045	4	1195.83	352	ALP-LEC-007
DET-01046	4	4562.54	352	ALP-LEC-005
DET-01047	3	1836.81	353	ALP-YGY-002
DET-01048	10	3146.65	354	ALP-LEC-001
DET-01049	4	3141.33	355	ALP-LEC-001
DET-01050	6	1811.35	355	ALP-YGY-002
DET-01051	8	2851.35	356	ALP-BON-002
DET-01052	6	3782.63	356	ALP-LEC-003
DET-01053	5	2348.10	356	ALP-YOG-002
DET-01054	2	1170.20	356	ALP-LEC-007
DET-01055	5	2795.74	356	ALP-BON-001
DET-01056	2	3550.37	357	ALP-YOG-005
DET-01057	2	1831.45	357	ALP-YGY-003
DET-01058	4	2766.43	357	ALP-BON-002
DET-01059	2	3226.22	357	ALP-LEC-001
DET-01060	1	1817.92	357	ALP-YGY-005
DET-01061	6	1176.91	357	ALP-LEC-007
DET-01062	12	3235.70	358	ALP-LEC-001
DET-01063	4	2445.83	358	ALP-YOG-001
DET-01064	1	1825.16	358	ALP-YGY-001
DET-01065	4	1785.01	359	ALP-YGY-003
DET-01066	1	3903.78	359	ALP-LEC-003
DET-01067	1	1764.05	360	ALP-YGY-005
DET-01068	5	4054.79	360	ALP-LEC-002
DET-01069	3	1179.69	361	ALP-LEC-007
DET-01070	5	2243.77	361	ALP-YOX-001
DET-01071	4	2809.85	361	ALP-BON-002
DET-01072	5	1848.87	361	ALP-YGY-002
DET-01073	8	2203.05	362	ALP-YOX-001
DET-01074	4	2352.80	362	ALP-YOG-001
DET-01075	1	2942.54	362	ALP-BON-004
DET-01076	2	3128.71	362	ALP-YOG-004
DET-01077	1	2748.99	363	ALP-BON-001
DET-01078	5	1211.50	363	ALP-LEC-006
DET-01079	4	2794.81	363	ALP-FIN-002
DET-01080	4	1172.91	364	ALP-LEC-007
DET-01081	2	4575.82	365	ALP-LEC-005
DET-01082	1	1800.53	365	ALP-YGY-006
DET-01083	6	3261.36	365	ALP-LEC-001
DET-01084	2	2196.66	366	ALP-YOX-002
DET-01085	2	3041.43	366	ALP-FIN-001
DET-01086	3	3808.11	366	ALP-LEC-004
DET-01087	2	1177.59	367	ALP-LEC-006
DET-01088	3	4183.90	367	ALP-LEC-002
DET-01089	1	2830.09	367	ALP-FIN-002
DET-01090	3	3913.71	367	ALP-LEC-003
DET-01091	4	2343.14	367	ALP-YOG-001
DET-01092	1	2220.93	367	ALP-YOX-002
DET-01093	3	1761.48	367	ALP-YGY-002
DET-01094	5	4183.17	368	ALP-LEC-002
DET-01095	4	3453.49	368	ALP-YOG-005
DET-01096	1	2813.76	368	ALP-FIN-002
DET-01097	1	1760.54	369	ALP-YGY-005
DET-01098	1	2724.88	369	ALP-BON-003
DET-01099	12	1819.24	369	ALP-YGY-001
DET-01100	4	1787.32	369	ALP-YGY-003
DET-01101	2	1767.81	370	ALP-YGY-004
DET-01102	2	4097.60	370	ALP-LEC-002
DET-01103	4	2383.24	371	ALP-YOG-002
DET-01104	3	1786.64	371	ALP-YGY-002
DET-01105	3	1822.25	372	ALP-YGY-002
DET-01106	2	2223.10	373	ALP-YOX-002
DET-01107	3	1851.60	374	ALP-YGY-003
DET-01108	1	1749.04	374	ALP-YGY-001
DET-01109	4	2448.52	374	ALP-YOG-002
DET-01110	4	3116.58	375	ALP-LEC-001
DET-01111	1	3069.79	375	ALP-YOG-003
DET-01112	3	2770.79	375	ALP-BON-001
DET-01113	4	4189.39	375	ALP-LEC-002
DET-01114	3	1190.16	376	ALP-LEC-007
DET-01115	5	2199.60	376	ALP-YOX-001
DET-01116	5	1831.01	376	ALP-YGY-003
DET-01117	1	2806.02	376	ALP-FIN-002
DET-01118	8	2723.99	376	ALP-BON-002
DET-01119	6	1179.10	377	ALP-LEC-006
DET-01120	1	2220.00	377	ALP-YOX-004
DET-01121	3	4174.82	377	ALP-LEC-002
DET-01122	1	4520.75	378	ALP-LEC-005
DET-01123	3	2877.64	378	ALP-BON-003
DET-01124	4	1796.47	378	ALP-YGY-004
DET-01125	1	1820.01	379	ALP-YGY-004
DET-01126	4	2390.70	379	ALP-YOG-001
DET-01127	1	2957.46	379	ALP-BON-004
DET-01128	1	2735.08	380	ALP-BON-003
DET-01129	8	2363.36	380	ALP-YOG-002
DET-01130	5	1765.01	381	ALP-YGY-002
DET-01131	3	1541.74	381	ALP-BON-005
DET-01132	3	1748.15	381	ALP-YGY-005
DET-01133	3	1789.96	382	ALP-YGY-003
DET-01134	6	4210.62	383	ALP-LEC-002
DET-01135	6	3447.88	383	ALP-YOG-005
DET-01136	1	2165.43	383	ALP-YOX-002
DET-01137	3	2798.38	384	ALP-BON-001
DET-01138	3	1848.46	384	ALP-YGY-003
DET-01139	2	2787.20	384	ALP-BON-003
DET-01140	3	2261.16	384	ALP-YOX-004
DET-01141	5	2776.96	385	ALP-BON-002
DET-01142	3	2150.11	385	ALP-YOX-002
DET-01143	4	2451.50	385	ALP-YOG-002
DET-01144	4	3278.68	385	ALP-LEC-001
DET-01145	1	3188.91	385	ALP-FIN-001
DET-01146	10	2456.20	386	ALP-YOG-002
DET-01147	3	3163.46	387	ALP-YOG-003
DET-01148	8	2454.25	387	ALP-YOG-001
DET-01149	2	2854.50	387	ALP-BON-003
DET-01150	2	2848.89	388	ALP-BON-001
DET-01151	4	1789.27	388	ALP-YGY-003
DET-01152	2	2373.18	388	ALP-YOG-001
DET-01153	4	1831.61	389	ALP-YGY-001
DET-01154	3	3095.98	389	ALP-FIN-001
DET-01155	6	2249.68	390	ALP-YOX-001
DET-01156	3	2455.35	390	ALP-YOG-002
DET-01157	3	3545.90	391	ALP-YOG-005
DET-01158	2	1845.36	391	ALP-YGY-005
DET-01159	1	1818.75	391	ALP-YGY-004
DET-01160	1	3241.00	391	ALP-YOG-004
DET-01161	3	3167.32	391	ALP-FIN-001
DET-01162	4	1819.14	392	ALP-YGY-001
DET-01163	2	3779.14	392	ALP-LEC-003
DET-01164	2	1164.74	393	ALP-LEC-007
DET-01165	2	1780.91	393	ALP-YGY-004
DET-01166	4	2265.57	394	ALP-YOX-002
DET-01167	2	10074.72	394	ALP-YOX-003
DET-01168	1	1217.87	394	ALP-LEC-006
DET-01169	1	1808.69	395	ALP-YGY-004
DET-01170	6	2800.63	395	ALP-BON-001
DET-01171	4	3885.94	396	ALP-LEC-003
DET-01172	2	2843.94	396	ALP-BON-001
DET-01173	6	1779.81	396	ALP-YGY-002
DET-01174	8	4054.62	396	ALP-LEC-002
DET-01175	1	3897.40	397	ALP-LEC-003
DET-01176	6	2379.34	397	ALP-YOG-002
DET-01177	2	1798.40	397	ALP-YGY-006
DET-01178	8	2449.80	397	ALP-YOG-001
DET-01179	3	4018.40	398	ALP-LEC-002
DET-01180	1	3084.45	399	ALP-YOG-003
DET-01181	4	1828.97	399	ALP-YGY-003
DET-01182	5	3290.20	400	ALP-LEC-001
DET-01183	3	2259.52	400	ALP-YOX-001
DET-01184	3	2838.90	400	ALP-BON-003
DET-01185	4	1849.40	400	ALP-YGY-003
DET-01186	1	3046.31	400	ALP-FIN-001
DET-01187	5	2730.98	401	ALP-BON-001
DET-01188	6	3135.28	401	ALP-LEC-001
DET-01189	3	3060.00	401	ALP-FIN-001
DET-01190	3	4103.11	402	ALP-LEC-002
DET-01191	4	1841.62	402	ALP-YGY-001
DET-01192	2	2910.97	402	ALP-BON-004
DET-01193	3	2403.55	403	ALP-YOG-001
DET-01194	4	1793.23	403	ALP-YGY-004
DET-01195	2	1497.99	403	ALP-BON-005
DET-01196	4	2835.24	403	ALP-BON-004
DET-01197	5	1754.83	404	ALP-YGY-001
DET-01198	4	1172.20	404	ALP-LEC-007
DET-01199	3	3138.47	404	ALP-LEC-001
DET-01200	1	4073.67	404	ALP-LEC-002
DET-01201	2	1226.76	405	ALP-LEC-007
DET-01202	1	1803.71	405	ALP-YGY-003
DET-01203	2	1465.50	405	ALP-BON-005
DET-01204	2	1797.53	405	ALP-YGY-006
DET-01205	1	3027.82	406	ALP-FIN-001
DET-01206	5	1850.82	406	ALP-YGY-003
DET-01207	5	1768.60	406	ALP-YGY-001
DET-01208	2	1816.17	406	ALP-YGY-004
DET-01209	4	2466.80	407	ALP-YOG-001
DET-01210	2	4597.15	407	ALP-LEC-005
DET-01211	4	1178.50	407	ALP-LEC-007
DET-01212	5	3217.48	408	ALP-LEC-001
DET-01213	3	1819.30	408	ALP-YGY-004
DET-01214	3	2198.40	408	ALP-YOX-002
DET-01215	2	2804.76	408	ALP-FIN-002
DET-01216	6	3170.58	409	ALP-LEC-001
DET-01217	1	3010.87	409	ALP-YOG-003
DET-01218	4	2857.53	410	ALP-BON-001
DET-01219	3	1173.44	410	ALP-LEC-006
DET-01220	2	3044.10	411	ALP-FIN-001
DET-01221	4	2342.53	411	ALP-YOG-002
DET-01222	3	2265.18	411	ALP-YOX-001
DET-01223	1	9629.15	411	ALP-YOX-003
DET-01224	3	3161.00	412	ALP-YOG-003
DET-01225	3	3127.17	413	ALP-LEC-001
DET-01226	3	2831.94	414	ALP-BON-001
DET-01227	4	2828.47	414	ALP-BON-002
DET-01228	3	1481.29	415	ALP-BON-005
DET-01229	6	2400.85	415	ALP-YOG-002
DET-01230	4	4001.43	415	ALP-LEC-002
DET-01231	1	1782.14	415	ALP-YGY-004
DET-01232	4	2450.20	415	ALP-YOG-001
DET-01233	3	2423.76	416	ALP-YOG-001
DET-01234	4	1218.25	416	ALP-LEC-006
DET-01235	5	2754.33	416	ALP-BON-001
DET-01236	1	2874.53	417	ALP-BON-003
DET-01237	8	1483.33	417	ALP-BON-005
DET-01238	2	2351.66	417	ALP-YOG-002
DET-01239	3	1778.87	418	ALP-YGY-006
DET-01240	1	1844.20	418	ALP-YGY-005
DET-01241	2	3157.72	418	ALP-YOG-004
DET-01242	6	3280.73	418	ALP-LEC-001
DET-01243	1	1185.71	419	ALP-LEC-006
DET-01244	5	1782.13	419	ALP-YGY-002
DET-01245	2	2434.57	419	ALP-YOG-001
DET-01246	1	1205.22	420	ALP-LEC-006
DET-01247	3	1782.61	420	ALP-YGY-001
DET-01248	4	2841.29	420	ALP-BON-001
DET-01249	4	1823.18	420	ALP-YGY-005
DET-01250	8	3231.78	420	ALP-LEC-001
DET-01251	1	3050.49	420	ALP-YOG-003
DET-01252	5	1818.03	420	ALP-YGY-002
DET-01253	3	3783.06	421	ALP-LEC-003
DET-01254	3	2731.50	421	ALP-BON-002
DET-01255	1	9582.48	421	ALP-YOX-003
DET-01256	6	2236.80	422	ALP-YOX-001
DET-01257	4	1795.43	423	ALP-YGY-005
DET-01258	2	3602.85	423	ALP-FIN-003
DET-01259	3	2225.67	423	ALP-YOX-001
DET-01260	5	3713.08	424	ALP-LEC-003
DET-01261	3	2735.78	425	ALP-BON-002
DET-01262	2	1185.97	426	ALP-LEC-007
DET-01263	6	3139.15	426	ALP-LEC-001
DET-01264	3	1797.97	427	ALP-YGY-002
DET-01265	5	2741.03	428	ALP-BON-001
DET-01266	4	2731.00	428	ALP-BON-002
DET-01267	4	2417.80	428	ALP-YOG-002
DET-01268	5	2807.03	429	ALP-BON-001
DET-01269	5	3287.80	429	ALP-LEC-001
DET-01270	2	1827.06	429	ALP-YGY-006
DET-01271	4	1456.68	429	ALP-BON-005
DET-01272	8	1202.29	429	ALP-LEC-007
DET-01273	5	1187.07	430	ALP-LEC-006
DET-01274	10	2398.77	430	ALP-YOG-002
DET-01275	1	3909.78	431	ALP-LEC-004
DET-01276	6	3139.07	431	ALP-LEC-001
DET-01277	1	3062.43	432	ALP-FIN-001
DET-01278	6	2152.80	432	ALP-YOX-001
DET-01279	3	3501.81	433	ALP-YOG-005
DET-01280	1	3286.28	433	ALP-YOG-004
DET-01281	4	1805.84	434	ALP-YGY-002
DET-01282	6	3123.49	434	ALP-LEC-001
DET-01283	8	4037.31	435	ALP-LEC-002
DET-01284	4	1849.83	435	ALP-YGY-003
DET-01285	5	1458.76	435	ALP-BON-005
DET-01286	4	1186.92	436	ALP-LEC-007
DET-01287	1	3070.73	436	ALP-FIN-001
DET-01288	4	3248.52	436	ALP-LEC-001
DET-01289	8	3446.64	436	ALP-YOG-005
DET-01290	4	1782.90	436	ALP-YGY-001
DET-01291	1	1810.75	436	ALP-YGY-003
DET-01292	5	2427.63	436	ALP-YOG-002
DET-01293	3	2716.34	436	ALP-BON-002
DET-01294	2	1835.37	437	ALP-YGY-006
DET-01295	3	2745.77	437	ALP-BON-003
DET-01296	1	3136.65	437	ALP-YOG-003
DET-01297	6	2195.08	437	ALP-YOX-001
DET-01298	3	2392.02	437	ALP-YOG-001
DET-01299	4	1170.48	438	ALP-LEC-007
DET-01300	1	2227.32	439	ALP-YOX-002
DET-01301	8	1178.12	439	ALP-LEC-006
DET-01302	5	2426.26	440	ALP-YOG-002
DET-01303	2	1753.06	440	ALP-YGY-003
DET-01304	5	1201.66	441	ALP-LEC-007
DET-01305	6	2193.92	442	ALP-YOX-001
DET-01306	4	2823.68	442	ALP-FIN-002
DET-01307	4	3452.55	443	ALP-YOG-005
DET-01308	6	2328.74	444	ALP-YOG-001
DET-01309	7	3157.23	444	ALP-YOG-003
DET-01310	5	3224.25	445	ALP-LEC-001
DET-01311	10	1198.10	445	ALP-LEC-006
DET-01312	3	3975.26	445	ALP-LEC-004
DET-01313	1	1793.73	446	ALP-YGY-004
DET-01314	5	2337.47	446	ALP-YOG-001
DET-01315	5	1777.85	446	ALP-YGY-003
DET-01316	4	4034.35	446	ALP-LEC-002
DET-01317	3	2820.03	447	ALP-BON-002
DET-01318	4	1520.22	448	ALP-BON-005
DET-01319	3	2726.16	448	ALP-BON-001
DET-01320	3	4624.13	448	ALP-LEC-005
DET-01321	7	4194.76	448	ALP-LEC-002
DET-01322	8	1188.75	449	ALP-LEC-007
DET-01323	3	3044.43	449	ALP-FIN-001
DET-01324	12	1821.04	449	ALP-YGY-001
DET-01325	2	1831.23	450	ALP-YGY-003
DET-01326	2	3125.81	450	ALP-FIN-001
DET-01327	3	1835.22	451	ALP-YGY-001
DET-01328	3	2332.32	451	ALP-YOG-001
DET-01329	3	3151.23	452	ALP-YOG-004
DET-01330	1	2868.99	452	ALP-BON-002
DET-01331	4	2779.66	452	ALP-FIN-002
DET-01332	9	1227.48	453	ALP-LEC-006
DET-01333	5	2455.11	453	ALP-YOG-001
DET-01334	4	2747.77	454	ALP-BON-002
DET-01335	1	1781.39	454	ALP-YGY-003
DET-01336	4	2399.80	455	ALP-YOG-002
DET-01337	2	3076.54	455	ALP-FIN-001
DET-01338	1	3099.03	455	ALP-YOG-003
DET-01339	6	1230.33	455	ALP-LEC-006
DET-01340	3	1485.27	456	ALP-BON-005
DET-01341	6	1190.46	456	ALP-LEC-006
DET-01342	1	2844.24	456	ALP-BON-004
DET-01343	1	2776.33	456	ALP-BON-002
DET-01344	4	3802.92	456	ALP-LEC-003
DET-01345	3	4201.45	457	ALP-LEC-002
DET-01346	4	3254.36	457	ALP-LEC-001
DET-01347	2	4521.59	457	ALP-LEC-005
DET-01348	7	2802.12	457	ALP-BON-001
DET-01349	7	2360.77	457	ALP-YOG-001
DET-01350	4	2358.18	458	ALP-YOG-001
DET-01351	5	2183.46	458	ALP-YOX-002
DET-01352	5	1455.87	458	ALP-BON-005
DET-01353	3	2817.04	459	ALP-BON-004
DET-01354	8	2154.29	459	ALP-YOX-001
DET-01355	3	1807.51	460	ALP-YGY-003
DET-01356	2	2341.43	460	ALP-YOG-002
DET-01357	2	2721.39	460	ALP-FIN-002
DET-01358	7	3115.03	461	ALP-LEC-001
DET-01359	6	3079.75	461	ALP-FIN-001
DET-01360	5	3284.32	462	ALP-LEC-001
DET-01361	2	3134.38	462	ALP-FIN-001
DET-01362	8	2392.19	462	ALP-YOG-002
DET-01363	6	2824.58	463	ALP-BON-001
DET-01364	5	1837.01	463	ALP-YGY-003
DET-01365	8	2350.74	464	ALP-YOG-002
DET-01366	1	2828.00	464	ALP-BON-003
DET-01367	4	3994.12	464	ALP-LEC-004
DET-01368	1	1828.28	464	ALP-YGY-004
DET-01369	4	1767.00	465	ALP-YGY-001
DET-01370	4	2460.07	465	ALP-YOG-001
DET-01371	1	2797.44	465	ALP-BON-003
DET-01372	6	3839.70	465	ALP-LEC-004
DET-01373	5	3791.06	466	ALP-LEC-004
DET-01374	5	3113.17	466	ALP-LEC-001
DET-01375	7	4139.98	466	ALP-LEC-002
DET-01376	3	1186.20	466	ALP-LEC-007
DET-01377	4	3569.39	467	ALP-YOG-005
DET-01378	5	2802.10	467	ALP-BON-002
DET-01379	5	1209.13	467	ALP-LEC-006
DET-01380	4	4074.19	467	ALP-LEC-002
DET-01381	2	3973.73	468	ALP-LEC-004
DET-01382	1	2727.31	468	ALP-BON-003
DET-01383	2	2832.98	469	ALP-FIN-002
DET-01384	3	4147.66	469	ALP-LEC-002
DET-01385	3	1841.47	469	ALP-YGY-002
DET-01386	6	2819.55	470	ALP-BON-001
DET-01387	5	1825.69	470	ALP-YGY-003
DET-01388	4	2726.07	470	ALP-BON-002
DET-01389	1	1760.50	471	ALP-YGY-005
DET-01390	6	1166.85	471	ALP-LEC-006
DET-01391	3	2403.09	472	ALP-YOG-001
DET-01392	5	1168.65	472	ALP-LEC-006
DET-01393	4	9536.64	472	ALP-YOX-003
DET-01394	2	2737.09	472	ALP-BON-001
DET-01395	5	1226.09	473	ALP-LEC-006
DET-01396	4	1784.83	473	ALP-YGY-001
DET-01397	2	2886.55	473	ALP-BON-004
DET-01398	4	3819.48	473	ALP-LEC-004
DET-01399	4	2870.98	474	ALP-BON-004
DET-01400	5	3978.03	474	ALP-LEC-002
DET-01401	2	3175.86	474	ALP-YOG-004
DET-01402	5	1192.41	474	ALP-LEC-007
DET-01403	3	2743.28	475	ALP-FIN-002
DET-01404	6	3252.08	475	ALP-LEC-001
DET-01405	2	1761.97	476	ALP-YGY-004
DET-01406	2	2740.76	476	ALP-BON-002
DET-01407	4	3231.22	476	ALP-LEC-001
DET-01408	4	2925.13	476	ALP-BON-004
DET-01409	1	3177.50	477	ALP-YOG-004
DET-01410	9	1840.65	477	ALP-YGY-001
DET-01411	3	4519.61	477	ALP-LEC-005
DET-01412	6	1170.97	478	ALP-LEC-006
DET-01413	1	2189.02	478	ALP-YOX-004
DET-01414	1	4422.39	479	ALP-LEC-005
DET-01415	2	3870.49	479	ALP-LEC-003
DET-01416	2	1455.86	480	ALP-BON-005
DET-01417	4	3231.74	480	ALP-YOG-004
DET-01418	1	4105.49	480	ALP-LEC-002
DET-01419	3	1852.58	480	ALP-YGY-005
DET-01420	3	2725.62	481	ALP-BON-001
DET-01421	2	2830.43	481	ALP-BON-004
DET-01422	9	2837.84	481	ALP-BON-002
DET-01423	3	1772.84	482	ALP-YGY-002
DET-01424	6	1798.33	483	ALP-YGY-001
DET-01425	4	1783.62	483	ALP-YGY-006
DET-01426	5	3195.42	483	ALP-LEC-001
DET-01427	2	1756.85	483	ALP-YGY-005
DET-01428	5	2465.53	484	ALP-YOG-002
DET-01429	1	3052.26	484	ALP-YOG-003
DET-01430	2	2428.79	484	ALP-YOG-001
DET-01431	4	2137.86	484	ALP-YOX-002
DET-01432	4	1230.44	485	ALP-LEC-007
DET-01433	4	2239.01	485	ALP-YOX-002
DET-01434	1	1755.47	486	ALP-YGY-003
DET-01435	5	1847.22	486	ALP-YGY-005
DET-01436	3	2737.41	486	ALP-BON-002
DET-01437	1	2231.27	486	ALP-YOX-002
DET-01438	5	2827.51	487	ALP-BON-002
DET-01439	4	2906.66	487	ALP-BON-004
DET-01440	4	1822.30	488	ALP-YGY-001
DET-01441	4	1499.55	488	ALP-BON-005
DET-01442	3	1851.96	488	ALP-YGY-003
DET-01443	5	3734.02	488	ALP-LEC-003
DET-01444	6	3294.14	489	ALP-LEC-001
DET-01445	3	2404.01	489	ALP-YOG-002
DET-01446	3	3828.65	489	ALP-LEC-004
DET-01447	6	1760.14	489	ALP-YGY-001
DET-01448	5	2432.54	490	ALP-YOG-002
DET-01449	1	2264.48	490	ALP-YOX-002
DET-01450	5	1493.44	490	ALP-BON-005
DET-01451	5	3805.48	490	ALP-LEC-004
DET-01452	7	1762.05	491	ALP-YGY-001
DET-01453	5	1831.90	492	ALP-YGY-001
DET-01454	7	2248.17	492	ALP-YOX-001
DET-01455	2	3237.20	493	ALP-LEC-001
DET-01456	8	4071.45	493	ALP-LEC-002
DET-01457	1	1778.22	493	ALP-YGY-005
DET-01458	9	2421.84	494	ALP-YOG-002
DET-01459	2	1842.94	494	ALP-YGY-002
DET-01460	2	2746.23	494	ALP-BON-003
DET-01461	3	2150.24	494	ALP-YOX-001
DET-01462	3	1172.98	495	ALP-LEC-006
DET-01463	4	2765.29	496	ALP-FIN-002
DET-01464	2	1821.07	496	ALP-YGY-006
DET-01465	5	1778.37	497	ALP-YGY-002
DET-01466	3	1207.35	497	ALP-LEC-006
DET-01467	4	1787.23	498	ALP-YGY-004
DET-01468	2	1202.59	499	ALP-LEC-006
DET-01469	1	1851.78	500	ALP-YGY-005
DET-01470	1	2237.32	500	ALP-YOX-002
DET-01471	4	1840.56	500	ALP-YGY-002
DET-01472	4	1756.32	500	ALP-YGY-001
DET-01473	2	3848.99	500	ALP-LEC-004
DET-01474	10	2352.59	500	ALP-YOG-002
DET-01475	5	2773.99	500	ALP-BON-001
DET-01476	5	2404.56	500	ALP-YOG-001
DET-01477	7	3908.19	501	ALP-LEC-003
DET-01478	4	3184.30	501	ALP-LEC-001
DET-01479	6	1784.23	501	ALP-YGY-001
DET-01480	4	2144.12	502	ALP-YOX-002
DET-01481	5	3407.06	502	ALP-YOG-005
DET-01482	8	1199.49	502	ALP-LEC-006
DET-01483	6	1844.38	503	ALP-YGY-001
DET-01484	6	9919.12	503	ALP-YOX-003
DET-01485	4	3634.81	503	ALP-FIN-003
DET-01486	4	2178.61	504	ALP-YOX-001
DET-01487	10	3267.35	504	ALP-LEC-001
DET-01488	2	1481.42	504	ALP-BON-005
DET-01489	1	3916.11	504	ALP-LEC-004
DET-01490	4	3590.95	504	ALP-YOG-005
DET-01491	4	1487.02	505	ALP-BON-005
DET-01492	6	3120.27	506	ALP-LEC-001
DET-01493	1	3176.84	506	ALP-YOG-003
DET-01494	5	1852.85	507	ALP-YGY-001
DET-01495	8	2739.50	507	ALP-BON-002
DET-01496	2	4418.73	508	ALP-LEC-005
DET-01497	4	3155.03	508	ALP-LEC-001
DET-01498	6	2200.00	509	ALP-YOX-002
DET-01499	3	2855.41	509	ALP-BON-001
DET-01500	6	2329.16	509	ALP-YOG-001
DET-01501	4	3148.53	509	ALP-YOG-003
DET-01502	8	1198.12	510	ALP-LEC-007
DET-01503	2	4100.57	510	ALP-LEC-002
DET-01504	2	1751.50	511	ALP-YGY-004
DET-01505	3	1209.60	511	ALP-LEC-006
DET-01506	3	3795.26	511	ALP-LEC-003
DET-01507	1	1166.94	512	ALP-LEC-007
DET-01508	3	2751.61	512	ALP-BON-001
DET-01509	4	4447.18	513	ALP-LEC-005
DET-01510	1	3823.22	514	ALP-LEC-003
DET-01511	7	2864.52	514	ALP-BON-002
DET-01512	2	2461.27	514	ALP-YOG-001
DET-01513	3	2179.26	514	ALP-YOX-004
DET-01514	4	2246.65	515	ALP-YOX-002
DET-01515	4	3275.82	515	ALP-LEC-001
DET-01516	15	3271.09	516	ALP-LEC-001
DET-01517	3	2879.84	516	ALP-BON-004
DET-01518	3	3452.01	516	ALP-YOG-005
DET-01519	1	1809.95	516	ALP-YGY-001
DET-01520	3	1801.38	516	ALP-YGY-003
DET-01521	5	2370.03	517	ALP-YOG-002
DET-01522	2	1184.00	517	ALP-LEC-007
DET-01523	2	2735.52	518	ALP-FIN-002
DET-01524	6	4137.84	519	ALP-LEC-002
DET-01525	5	2206.72	519	ALP-YOX-002
DET-01526	4	1768.02	519	ALP-YGY-002
DET-01527	2	2782.44	519	ALP-BON-003
DET-01528	1	1792.86	519	ALP-YGY-004
DET-01529	3	2799.32	519	ALP-BON-001
DET-01530	5	3137.81	519	ALP-LEC-001
DET-01531	3	1174.33	520	ALP-LEC-007
DET-01532	3	2824.38	520	ALP-BON-001
DET-01533	5	2383.29	521	ALP-YOG-001
DET-01534	3	3871.93	522	ALP-LEC-003
DET-01535	8	2363.11	522	ALP-YOG-001
DET-01536	7	1172.86	522	ALP-LEC-007
DET-01537	6	3416.54	522	ALP-YOG-005
DET-01538	4	1746.13	522	ALP-YGY-003
DET-01539	3	1787.55	523	ALP-YGY-006
DET-01540	2	4006.67	524	ALP-LEC-004
DET-01541	2	3521.95	525	ALP-YOG-005
DET-01542	5	2257.14	526	ALP-YOX-001
DET-01543	1	3703.41	526	ALP-LEC-003
DET-01544	2	1762.05	526	ALP-YGY-006
DET-01545	1	2170.76	527	ALP-YOX-002
DET-01546	4	2354.19	527	ALP-YOG-001
DET-01547	4	2204.46	528	ALP-YOX-001
DET-01548	2	2780.62	528	ALP-BON-003
DET-01549	6	2411.21	528	ALP-YOG-001
DET-01550	2	1185.22	529	ALP-LEC-006
DET-01551	11	3290.59	529	ALP-LEC-001
DET-01552	1	3504.07	529	ALP-FIN-003
DET-01553	5	1822.03	529	ALP-YGY-002
DET-01554	4	2182.21	530	ALP-YOX-001
DET-01555	2	1835.76	530	ALP-YGY-006
DET-01556	4	3699.68	531	ALP-LEC-003
DET-01557	3	1764.75	531	ALP-YGY-001
DET-01558	6	3483.96	531	ALP-YOG-005
DET-01559	5	1192.24	532	ALP-LEC-007
DET-01560	1	1811.35	532	ALP-YGY-003
DET-01561	4	2796.21	532	ALP-BON-001
DET-01562	2	1191.39	532	ALP-LEC-006
DET-01563	7	1164.79	533	ALP-LEC-007
DET-01564	4	4134.04	533	ALP-LEC-002
DET-01565	4	2810.89	533	ALP-BON-002
DET-01566	2	2775.92	534	ALP-BON-001
DET-01567	2	2434.77	535	ALP-YOG-001
DET-01568	2	2153.82	535	ALP-YOX-002
DET-01569	9	2422.21	536	ALP-YOG-002
DET-01570	5	1201.17	536	ALP-LEC-007
DET-01571	3	3898.09	536	ALP-LEC-003
DET-01572	5	2751.08	537	ALP-BON-002
DET-01573	13	2409.63	537	ALP-YOG-002
DET-01574	4	2440.53	538	ALP-YOG-002
DET-01575	8	1197.17	539	ALP-LEC-007
DET-01576	4	3250.52	539	ALP-LEC-001
DET-01577	1	3191.37	540	ALP-FIN-001
DET-01578	6	1752.16	540	ALP-YGY-001
DET-01579	4	2810.21	540	ALP-BON-002
DET-01580	5	1175.39	540	ALP-LEC-007
DET-01581	2	2862.86	540	ALP-BON-003
DET-01582	3	1752.96	541	ALP-YGY-002
DET-01583	8	2358.62	541	ALP-YOG-002
DET-01584	2	3986.42	541	ALP-LEC-002
DET-01585	8	2861.83	542	ALP-BON-001
DET-01586	6	3155.81	542	ALP-LEC-001
DET-01587	1	1775.58	542	ALP-YGY-003
DET-01588	4	2847.56	543	ALP-BON-004
DET-01589	6	1202.56	543	ALP-LEC-006
DET-01590	4	3088.24	543	ALP-YOG-003
DET-01591	6	1842.82	544	ALP-YGY-002
DET-01592	3	3065.85	544	ALP-YOG-003
DET-01593	3	4435.96	544	ALP-LEC-005
DET-01594	3	2258.52	544	ALP-YOX-002
DET-01595	4	1766.65	545	ALP-YGY-003
DET-01596	4	3175.09	545	ALP-LEC-001
DET-01597	5	2174.52	545	ALP-YOX-004
DET-01598	4	1470.92	546	ALP-BON-005
DET-01599	3	2780.10	546	ALP-BON-003
DET-01600	2	2789.50	546	ALP-BON-002
DET-01601	3	2388.57	547	ALP-YOG-002
DET-01602	1	3574.31	547	ALP-FIN-003
DET-01603	12	2345.92	547	ALP-YOG-001
DET-01604	5	4078.58	547	ALP-LEC-002
DET-01605	1	1826.04	547	ALP-YGY-005
DET-01606	6	1181.39	548	ALP-LEC-007
DET-01607	1	3009.89	548	ALP-YOG-003
DET-01608	5	2346.56	549	ALP-YOG-002
DET-01609	6	1764.76	549	ALP-YGY-003
DET-01610	1	2789.48	549	ALP-BON-001
DET-01611	2	3100.79	549	ALP-FIN-001
DET-01612	2	1754.51	550	ALP-YGY-004
DET-01613	3	1173.40	550	ALP-LEC-007
DET-01614	2	1784.68	550	ALP-YGY-002
DET-01615	6	3457.35	550	ALP-YOG-005
DET-01616	2	1756.02	551	ALP-YGY-006
DET-01617	3	1224.36	551	ALP-LEC-007
DET-01618	1	3399.61	551	ALP-YOG-005
DET-01619	2	1754.24	551	ALP-YGY-004
DET-01620	1	3220.48	552	ALP-YOG-004
DET-01621	5	2471.10	552	ALP-YOG-001
DET-01622	1	3809.86	553	ALP-LEC-004
DET-01623	3	9635.22	553	ALP-YOX-003
DET-01624	3	3451.19	553	ALP-YOG-005
DET-01625	2	1766.85	554	ALP-YGY-002
DET-01626	2	1227.89	554	ALP-LEC-007
DET-01627	5	2417.70	555	ALP-YOG-001
DET-01628	3	2811.28	555	ALP-BON-001
DET-01629	4	3018.95	555	ALP-FIN-001
DET-01630	3	2735.26	556	ALP-BON-003
DET-01631	4	1766.08	556	ALP-YGY-003
DET-01632	8	2442.51	557	ALP-YOG-001
DET-01633	4	4071.86	557	ALP-LEC-002
DET-01634	1	1225.91	558	ALP-LEC-007
DET-01635	4	2352.64	559	ALP-YOG-001
DET-01636	2	2812.84	559	ALP-BON-001
DET-01637	4	4596.15	559	ALP-LEC-005
DET-01638	2	2338.00	560	ALP-YOG-002
DET-01639	1	2837.51	560	ALP-BON-003
DET-01640	5	1786.38	561	ALP-YGY-002
DET-01641	2	2854.68	561	ALP-BON-001
DET-01642	4	1839.03	561	ALP-YGY-004
DET-01643	5	3153.86	562	ALP-YOG-004
DET-01644	3	2728.61	562	ALP-BON-002
DET-01645	4	1201.99	563	ALP-LEC-007
DET-01646	1	4011.47	563	ALP-LEC-004
DET-01647	3	3737.49	563	ALP-LEC-003
DET-01648	8	1486.77	563	ALP-BON-005
DET-01649	6	1225.81	564	ALP-LEC-006
DET-01650	2	4088.69	564	ALP-LEC-002
DET-01651	1	3177.03	564	ALP-FIN-001
DET-01652	8	3291.21	564	ALP-LEC-001
DET-01653	2	4372.72	565	ALP-LEC-005
DET-01654	8	1183.12	565	ALP-LEC-007
DET-01655	2	3832.62	565	ALP-LEC-004
DET-01656	3	2772.07	565	ALP-BON-001
DET-01657	5	2747.83	566	ALP-BON-002
DET-01658	1	2830.58	567	ALP-BON-004
DET-01659	6	2228.49	567	ALP-YOX-001
DET-01660	2	1835.00	567	ALP-YGY-005
DET-01661	5	1229.36	568	ALP-LEC-006
DET-01662	5	1838.08	568	ALP-YGY-005
DET-01663	2	4368.44	569	ALP-LEC-005
DET-01664	4	1205.99	570	ALP-LEC-007
DET-01665	1	3988.11	570	ALP-LEC-002
DET-01666	5	1188.17	571	ALP-LEC-006
DET-01667	7	1804.94	571	ALP-YGY-001
DET-01668	5	2846.12	572	ALP-BON-002
DET-01669	5	4037.11	573	ALP-LEC-002
DET-01670	7	2181.44	573	ALP-YOX-001
DET-01671	4	2218.31	573	ALP-YOX-002
DET-01672	4	3191.87	574	ALP-YOG-003
DET-01673	7	1518.17	574	ALP-BON-005
DET-01674	3	3112.40	574	ALP-FIN-001
DET-01675	8	3234.74	575	ALP-LEC-001
DET-01676	6	2788.29	576	ALP-BON-001
DET-01677	6	1173.92	576	ALP-LEC-007
DET-01678	10	2400.29	576	ALP-YOG-001
DET-01679	1	2212.81	577	ALP-YOX-002
DET-01680	6	3885.71	577	ALP-LEC-003
DET-01681	4	9653.01	577	ALP-YOX-003
DET-01682	2	2827.89	577	ALP-BON-004
DET-01683	3	3509.62	577	ALP-YOG-005
DET-01684	4	3692.31	578	ALP-LEC-003
DET-01685	5	1492.88	578	ALP-BON-005
DET-01686	2	2766.80	578	ALP-BON-001
DET-01687	3	1827.58	579	ALP-YGY-002
DET-01688	2	2335.83	580	ALP-YOG-001
DET-01689	5	2724.91	581	ALP-BON-001
DET-01690	2	4214.95	581	ALP-LEC-002
DET-01691	2	1210.06	581	ALP-LEC-007
DET-01692	8	3477.05	582	ALP-YOG-005
DET-01693	8	2469.51	582	ALP-YOG-001
DET-01694	3	1805.05	582	ALP-YGY-004
DET-01695	2	4597.01	582	ALP-LEC-005
DET-01696	2	4623.95	583	ALP-LEC-005
DET-01697	8	2384.33	583	ALP-YOG-002
DET-01698	2	1833.86	583	ALP-YGY-006
DET-01699	3	3242.83	584	ALP-LEC-001
DET-01700	5	2776.10	584	ALP-BON-001
DET-01701	3	1783.67	584	ALP-YGY-005
DET-01702	3	1782.64	585	ALP-YGY-006
DET-01703	5	2395.93	586	ALP-YOG-001
DET-01704	5	2871.81	586	ALP-BON-001
DET-01705	6	2819.74	587	ALP-BON-001
DET-01706	6	4175.90	588	ALP-LEC-002
DET-01707	3	3547.91	588	ALP-YOG-005
DET-01708	8	3198.29	589	ALP-LEC-001
DET-01709	8	1175.67	589	ALP-LEC-006
DET-01710	5	2355.69	589	ALP-YOG-001
DET-01711	2	1515.18	589	ALP-BON-005
DET-01712	3	2866.07	589	ALP-BON-002
DET-01713	5	3171.60	590	ALP-LEC-001
DET-01714	1	4402.23	590	ALP-LEC-005
DET-01715	4	9727.16	590	ALP-YOX-003
DET-01716	2	4203.88	591	ALP-LEC-002
DET-01717	8	1168.89	591	ALP-LEC-006
DET-01718	6	1800.01	592	ALP-YGY-003
DET-01719	5	1799.30	593	ALP-YGY-003
DET-01720	5	3523.10	593	ALP-YOG-005
DET-01721	1	2774.10	593	ALP-FIN-002
DET-01722	4	1825.84	593	ALP-YGY-005
DET-01723	2	3195.92	593	ALP-LEC-001
DET-01724	6	1797.58	594	ALP-YGY-001
DET-01725	1	3538.55	595	ALP-YOG-005
DET-01726	7	3178.33	595	ALP-LEC-001
DET-01727	2	3820.20	596	ALP-LEC-003
DET-01728	5	1534.95	596	ALP-BON-005
DET-01729	1	3191.31	596	ALP-YOG-003
DET-01730	4	4038.55	597	ALP-LEC-002
DET-01731	3	3853.63	597	ALP-LEC-003
DET-01732	3	3834.55	597	ALP-LEC-004
DET-01733	3	3253.80	597	ALP-LEC-001
DET-01734	11	1173.87	598	ALP-LEC-007
DET-01735	2	2206.99	598	ALP-YOX-001
DET-01736	3	1831.10	598	ALP-YGY-001
DET-01737	3	1509.88	599	ALP-BON-005
DET-01738	2	4071.63	599	ALP-LEC-002
DET-01739	5	1817.27	599	ALP-YGY-001
DET-01740	4	2436.64	600	ALP-YOG-001
DET-01741	10	2440.70	601	ALP-YOG-001
DET-01742	5	1222.13	601	ALP-LEC-006
DET-01743	8	1235.91	602	ALP-LEC-007
DET-01744	2	2782.29	602	ALP-FIN-002
DET-01745	5	1817.20	602	ALP-YGY-002
DET-01746	1	2918.79	602	ALP-BON-004
DET-01747	3	2176.37	602	ALP-YOX-002
DET-01748	5	3226.45	603	ALP-LEC-001
DET-01749	2	4032.95	604	ALP-LEC-002
DET-01750	1	3129.01	604	ALP-YOG-003
DET-01751	3	1765.90	604	ALP-YGY-002
DET-01752	5	1837.25	605	ALP-YGY-002
DET-01753	6	1167.22	605	ALP-LEC-006
DET-01754	6	1781.27	606	ALP-YGY-001
DET-01755	5	1193.39	606	ALP-LEC-006
DET-01756	5	2879.55	606	ALP-BON-001
DET-01757	5	3855.19	607	ALP-LEC-003
DET-01758	3	1847.51	607	ALP-YGY-003
DET-01759	7	3853.34	608	ALP-LEC-003
DET-01760	5	2442.94	608	ALP-YOG-001
DET-01761	4	1802.20	608	ALP-YGY-005
DET-01762	3	1172.31	609	ALP-LEC-006
DET-01763	4	2454.75	609	ALP-YOG-001
DET-01764	2	3253.08	610	ALP-YOG-004
DET-01765	3	1760.92	610	ALP-YGY-005
DET-01766	3	1758.74	610	ALP-YGY-003
DET-01767	6	1765.43	611	ALP-YGY-001
DET-01768	8	1820.53	612	ALP-YGY-002
DET-01769	5	3422.80	612	ALP-YOG-005
DET-01770	2	3182.50	613	ALP-YOG-004
DET-01771	2	2856.25	613	ALP-BON-002
DET-01772	1	2796.15	613	ALP-BON-003
DET-01773	5	1765.81	613	ALP-YGY-002
DET-01774	4	2254.96	613	ALP-YOX-002
DET-01775	2	3127.79	614	ALP-YOG-003
DET-01776	4	1837.16	615	ALP-YGY-001
DET-01777	3	1780.86	615	ALP-YGY-003
DET-01778	2	3432.47	615	ALP-YOG-005
DET-01779	4	9675.63	616	ALP-YOX-003
DET-01780	3	2882.12	616	ALP-FIN-002
DET-01781	5	1230.57	616	ALP-LEC-006
DET-01782	3	1761.23	616	ALP-YGY-001
DET-01783	5	2433.42	617	ALP-YOG-001
DET-01784	3	3263.56	617	ALP-LEC-001
DET-01785	3	3125.05	617	ALP-YOG-004
DET-01786	2	3164.12	617	ALP-FIN-001
DET-01787	3	1187.55	618	ALP-LEC-007
DET-01788	5	2367.76	618	ALP-YOG-002
DET-01789	3	2802.16	618	ALP-FIN-002
DET-01790	3	2738.99	619	ALP-BON-001
DET-01791	4	3593.06	619	ALP-YOG-005
DET-01792	1	2859.16	619	ALP-BON-004
DET-01793	6	2445.20	619	ALP-YOG-001
DET-01794	2	4383.16	620	ALP-LEC-005
DET-01795	1	3045.79	620	ALP-YOG-003
DET-01796	3	1185.03	621	ALP-LEC-007
DET-01797	3	2849.85	621	ALP-BON-002
DET-01798	3	1784.57	621	ALP-YGY-003
DET-01799	8	4047.67	622	ALP-LEC-002
DET-01800	3	1822.12	623	ALP-YGY-006
DET-01801	5	4096.00	623	ALP-LEC-002
DET-01802	2	2769.36	624	ALP-BON-003
DET-01803	4	1195.82	624	ALP-LEC-006
DET-01804	2	1229.69	624	ALP-LEC-007
DET-01805	5	2719.35	625	ALP-BON-001
DET-01806	2	2443.55	625	ALP-YOG-002
DET-01807	4	2834.39	625	ALP-BON-003
DET-01808	4	1828.82	625	ALP-YGY-003
DET-01809	3	1781.80	626	ALP-YGY-001
DET-01810	6	2839.20	626	ALP-BON-002
DET-01811	1	4374.74	626	ALP-LEC-005
DET-01812	1	3997.89	627	ALP-LEC-002
DET-01813	3	2837.31	627	ALP-BON-003
DET-01814	1	1790.86	627	ALP-YGY-001
DET-01815	4	3875.30	627	ALP-LEC-003
DET-01816	5	1174.93	627	ALP-LEC-007
DET-01817	4	4390.13	628	ALP-LEC-005
DET-01818	3	1806.59	628	ALP-YGY-003
DET-01819	4	2868.49	628	ALP-BON-001
DET-01820	1	1772.42	628	ALP-YGY-001
DET-01821	2	2810.61	629	ALP-BON-003
DET-01822	5	2771.85	629	ALP-BON-002
DET-01823	1	1851.39	629	ALP-YGY-002
DET-01824	5	2432.12	630	ALP-YOG-002
DET-01825	6	1771.10	630	ALP-YGY-001
DET-01826	4	2716.94	631	ALP-BON-001
DET-01827	5	3858.15	631	ALP-LEC-003
DET-01828	3	2833.47	632	ALP-BON-001
DET-01829	1	1827.74	632	ALP-YGY-005
DET-01830	1	2232.76	632	ALP-YOX-002
DET-01831	2	3062.20	633	ALP-FIN-001
DET-01832	10	3160.49	633	ALP-LEC-001
DET-01833	2	2930.74	633	ALP-BON-004
DET-01834	6	2793.76	634	ALP-BON-002
DET-01835	3	1846.12	634	ALP-YGY-005
DET-01836	2	3880.35	634	ALP-LEC-003
DET-01837	4	2405.43	635	ALP-YOG-002
DET-01838	4	3115.73	635	ALP-LEC-001
DET-01839	2	2840.22	635	ALP-BON-004
DET-01840	3	1193.04	636	ALP-LEC-006
DET-01841	2	1804.43	636	ALP-YGY-004
DET-01842	2	3411.27	636	ALP-YOG-005
DET-01843	3	1212.13	637	ALP-LEC-007
DET-01844	5	4018.35	637	ALP-LEC-002
DET-01845	2	2470.43	637	ALP-YOG-001
DET-01846	2	1832.76	637	ALP-YGY-003
DET-01847	1	3130.66	638	ALP-YOG-003
DET-01848	2	2800.06	638	ALP-BON-001
DET-01849	5	2874.84	639	ALP-BON-002
DET-01850	8	1822.83	639	ALP-YGY-001
DET-01851	3	2810.16	639	ALP-BON-001
DET-01852	3	2258.00	640	ALP-YOX-001
DET-01853	5	1765.33	640	ALP-YGY-002
DET-01854	3	1455.96	640	ALP-BON-005
DET-01855	1	2804.37	640	ALP-BON-001
DET-01856	3	4044.64	641	ALP-LEC-002
DET-01857	4	2723.38	641	ALP-BON-002
DET-01858	2	1814.28	642	ALP-YGY-004
DET-01859	3	3095.06	642	ALP-FIN-001
DET-01860	2	2336.97	643	ALP-YOG-001
DET-01861	12	3208.46	643	ALP-LEC-001
DET-01862	2	3043.12	643	ALP-YOG-003
DET-01863	5	3689.80	643	ALP-LEC-003
DET-01864	5	2800.26	644	ALP-BON-001
DET-01865	2	2145.08	644	ALP-YOX-002
DET-01866	1	3156.90	644	ALP-YOG-004
DET-01867	2	1800.59	644	ALP-YGY-003
DET-01868	5	2354.73	645	ALP-YOG-002
DET-01869	6	3289.43	645	ALP-LEC-001
DET-01870	2	1220.79	645	ALP-LEC-007
DET-01871	1	2778.92	645	ALP-BON-001
DET-01872	3	1180.27	646	ALP-LEC-006
DET-01873	3	2455.23	646	ALP-YOG-002
DET-01874	2	1777.85	646	ALP-YGY-005
DET-01875	2	3154.79	646	ALP-YOG-004
DET-01876	4	2751.39	647	ALP-BON-001
DET-01877	3	1783.47	647	ALP-YGY-005
DET-01878	2	1526.66	647	ALP-BON-005
DET-01879	3	1817.10	648	ALP-YGY-001
DET-01880	5	2348.13	648	ALP-YOG-002
DET-01881	4	2381.61	648	ALP-YOG-001
DET-01882	4	3279.32	649	ALP-LEC-001
DET-01883	2	2195.62	649	ALP-YOX-001
DET-01884	3	1748.35	649	ALP-YGY-004
DET-01885	6	1850.84	650	ALP-YGY-003
DET-01886	6	1523.69	650	ALP-BON-005
DET-01887	2	2801.17	650	ALP-BON-003
DET-01888	4	3068.97	651	ALP-FIN-001
DET-01889	1	2879.01	651	ALP-BON-003
DET-01890	8	3251.04	651	ALP-LEC-001
DET-01891	3	1795.54	651	ALP-YGY-001
DET-01892	2	3704.33	652	ALP-LEC-003
DET-01893	3	4061.80	653	ALP-LEC-002
DET-01894	6	1213.45	653	ALP-LEC-006
DET-01895	3	1798.74	654	ALP-YGY-006
DET-01896	3	2412.45	654	ALP-YOG-002
DET-01897	3	2214.32	654	ALP-YOX-002
DET-01898	4	2381.16	654	ALP-YOG-001
DET-01899	4	4179.52	654	ALP-LEC-002
DET-01900	4	3110.69	655	ALP-YOG-004
DET-01901	1	1791.55	655	ALP-YGY-005
DET-01902	5	3841.57	655	ALP-LEC-003
DET-01903	1	4490.53	655	ALP-LEC-005
DET-01904	3	4213.14	656	ALP-LEC-002
DET-01905	4	2439.08	656	ALP-YOG-002
DET-01906	5	2365.25	656	ALP-YOG-001
DET-01907	4	2404.57	657	ALP-YOG-001
DET-01908	2	1515.72	657	ALP-BON-005
DET-01909	6	2772.64	657	ALP-BON-002
DET-01910	2	4605.07	658	ALP-LEC-005
DET-01911	4	2364.34	658	ALP-YOG-001
DET-01912	3	2173.09	658	ALP-YOX-002
DET-01913	1	3841.18	659	ALP-LEC-004
DET-01914	5	2731.89	659	ALP-BON-002
DET-01915	4	3225.52	659	ALP-LEC-001
DET-01916	2	3104.38	660	ALP-FIN-001
DET-01917	3	2144.10	660	ALP-YOX-001
DET-01918	4	2780.16	661	ALP-FIN-002
DET-01919	8	3399.70	662	ALP-YOG-005
DET-01920	1	1774.19	663	ALP-YGY-005
DET-01921	3	3102.61	663	ALP-YOG-003
DET-01922	3	2440.08	664	ALP-YOG-001
DET-01923	4	2828.80	664	ALP-BON-002
DET-01924	5	2227.99	665	ALP-YOX-001
DET-01925	4	1206.33	665	ALP-LEC-007
DET-01926	2	2771.23	665	ALP-BON-003
DET-01927	1	3282.54	665	ALP-LEC-001
DET-01928	3	3763.66	665	ALP-LEC-003
DET-01929	4	1511.82	666	ALP-BON-005
DET-01930	1	2179.58	666	ALP-YOX-004
DET-01931	4	1234.91	666	ALP-LEC-006
DET-01932	8	2788.50	667	ALP-BON-001
DET-01933	8	2137.09	667	ALP-YOX-001
DET-01934	3	1807.64	668	ALP-YGY-001
DET-01935	6	1175.46	668	ALP-LEC-006
DET-01936	3	3549.24	668	ALP-YOG-005
DET-01937	5	2373.76	669	ALP-YOG-001
DET-01938	3	2881.24	669	ALP-BON-004
DET-01939	3	1799.44	669	ALP-YGY-003
DET-01940	4	1491.93	670	ALP-BON-005
DET-01941	2	3524.96	670	ALP-YOG-005
DET-01942	4	3928.06	670	ALP-LEC-004
DET-01943	5	1207.17	670	ALP-LEC-007
DET-01944	6	2745.44	671	ALP-BON-001
DET-01945	4	1230.34	671	ALP-LEC-006
DET-01946	6	1777.64	671	ALP-YGY-003
DET-01947	4	1768.36	671	ALP-YGY-001
DET-01948	4	4037.28	671	ALP-LEC-002
DET-01949	1	3140.17	672	ALP-FIN-001
DET-01950	5	1829.87	672	ALP-YGY-001
DET-01951	1	4108.41	672	ALP-LEC-002
DET-01952	5	1797.93	672	ALP-YGY-003
DET-01953	3	2765.22	672	ALP-BON-001
DET-01954	5	3567.69	672	ALP-YOG-005
DET-01955	3	2168.65	673	ALP-YOX-002
DET-01956	2	1827.39	673	ALP-YGY-001
DET-01957	1	2823.86	674	ALP-BON-003
DET-01958	3	2867.06	674	ALP-BON-001
DET-01959	5	1206.80	675	ALP-LEC-007
DET-01960	2	1468.32	675	ALP-BON-005
DET-01961	3	2795.85	676	ALP-BON-002
DET-01962	5	1185.23	676	ALP-LEC-007
DET-01963	5	3850.42	677	ALP-LEC-003
DET-01964	3	1235.72	677	ALP-LEC-007
DET-01965	2	2819.90	677	ALP-BON-002
DET-01966	4	3724.56	678	ALP-LEC-003
DET-01967	8	2353.26	678	ALP-YOG-002
DET-01968	2	3442.11	679	ALP-YOG-005
DET-01969	4	2423.65	680	ALP-YOG-001
DET-01970	1	1756.67	680	ALP-YGY-005
DET-01971	4	2727.29	680	ALP-BON-002
DET-01972	5	1503.13	680	ALP-BON-005
DET-01973	2	3120.30	681	ALP-FIN-001
DET-01974	3	3121.54	681	ALP-LEC-001
DET-01975	1	1835.71	681	ALP-YGY-003
DET-01976	5	1229.03	681	ALP-LEC-006
DET-01977	5	1197.43	682	ALP-LEC-006
DET-01978	6	2734.74	683	ALP-BON-001
DET-01979	1	1829.96	683	ALP-YGY-004
DET-01980	2	4582.56	683	ALP-LEC-005
DET-01981	1	4089.24	683	ALP-LEC-002
DET-01982	8	1793.52	684	ALP-YGY-003
DET-01983	5	1848.14	684	ALP-YGY-001
DET-01984	4	3857.69	684	ALP-LEC-004
DET-01985	1	3094.51	684	ALP-FIN-001
DET-01986	2	2890.12	685	ALP-BON-004
DET-01987	2	4529.57	686	ALP-LEC-005
DET-01988	3	2350.26	686	ALP-YOG-001
DET-01989	6	1219.18	686	ALP-LEC-006
DET-01990	1	1761.66	687	ALP-YGY-004
DET-01991	5	3766.70	687	ALP-LEC-003
DET-01992	2	3090.65	687	ALP-FIN-001
DET-01993	2	2782.12	687	ALP-FIN-002
DET-01994	3	2770.07	688	ALP-BON-003
DET-01995	2	3067.58	688	ALP-FIN-001
DET-01996	2	2749.51	688	ALP-BON-002
DET-01997	8	2400.42	688	ALP-YOG-001
DET-01998	4	1215.93	689	ALP-LEC-006
DET-01999	8	2446.70	690	ALP-YOG-001
DET-02000	2	2815.09	690	ALP-BON-003
DET-02001	2	3111.50	690	ALP-FIN-001
DET-02002	2	2177.28	690	ALP-YOX-002
DET-02003	5	1211.57	690	ALP-LEC-006
DET-02004	2	2853.31	690	ALP-FIN-002
DET-02005	10	2434.42	691	ALP-YOG-001
DET-02006	12	2356.65	692	ALP-YOG-001
DET-02007	2	2168.19	692	ALP-YOX-004
DET-02008	3	3750.44	693	ALP-LEC-003
DET-02009	1	1753.25	693	ALP-YGY-005
DET-02010	2	2829.03	693	ALP-BON-004
DET-02011	3	2344.18	693	ALP-YOG-001
DET-02012	8	2401.94	693	ALP-YOG-002
DET-02013	4	1762.44	694	ALP-YGY-001
DET-02014	2	1765.62	694	ALP-YGY-005
DET-02015	3	4487.59	694	ALP-LEC-005
DET-02016	4	3506.80	695	ALP-YOG-005
DET-02017	3	3044.26	695	ALP-YOG-003
DET-02018	3	2871.46	695	ALP-BON-003
DET-02019	4	1215.47	695	ALP-LEC-007
DET-02020	3	3715.03	696	ALP-LEC-003
DET-02021	6	2727.64	696	ALP-BON-001
DET-02022	1	1768.53	697	ALP-YGY-006
DET-02023	3	1195.58	697	ALP-LEC-006
DET-02024	2	3963.41	697	ALP-LEC-004
DET-02025	4	2736.94	697	ALP-FIN-002
DET-02026	4	3501.41	697	ALP-YOG-005
DET-02027	2	3901.62	698	ALP-LEC-004
DET-02028	10	1200.63	698	ALP-LEC-006
DET-02029	3	3398.39	698	ALP-YOG-005
DET-02030	3	3127.98	699	ALP-FIN-001
DET-02031	1	4192.48	699	ALP-LEC-002
DET-02032	5	2877.99	699	ALP-BON-002
DET-02033	5	3137.53	700	ALP-LEC-001
DET-02034	8	2349.80	700	ALP-YOG-002
DET-02035	2	3939.47	700	ALP-LEC-004
DET-02036	6	1845.90	700	ALP-YGY-001
DET-02037	2	3692.84	700	ALP-LEC-003
DET-02038	4	2784.49	701	ALP-BON-002
DET-02039	6	2437.80	701	ALP-YOG-002
DET-02040	1	1764.33	701	ALP-YGY-004
DET-02041	4	1228.67	702	ALP-LEC-006
DET-02042	3	2962.10	702	ALP-BON-004
DET-02043	5	1780.87	703	ALP-YGY-001
DET-02044	3	1773.07	704	ALP-YGY-006
DET-02045	4	4051.07	704	ALP-LEC-002
DET-02046	5	1795.91	704	ALP-YGY-001
DET-02047	12	2402.43	704	ALP-YOG-002
DET-02048	6	1774.81	704	ALP-YGY-003
DET-02049	5	2822.16	705	ALP-BON-002
DET-02050	1	3909.33	705	ALP-LEC-003
DET-02051	12	2386.41	706	ALP-YOG-002
DET-02052	3	1196.63	706	ALP-LEC-006
DET-02053	3	2789.90	706	ALP-BON-003
DET-02054	6	1838.47	707	ALP-YGY-001
DET-02055	5	2760.16	707	ALP-BON-001
DET-02056	1	3584.13	707	ALP-FIN-003
DET-02057	8	4208.13	708	ALP-LEC-002
DET-02058	1	2879.24	708	ALP-FIN-002
DET-02059	8	2446.08	708	ALP-YOG-002
DET-02060	4	3696.71	709	ALP-LEC-003
DET-02061	4	2205.21	709	ALP-YOX-001
DET-02062	3	2471.59	709	ALP-YOG-001
DET-02063	8	2205.39	710	ALP-YOX-001
DET-02064	1	1791.79	710	ALP-YGY-004
DET-02065	2	3104.05	711	ALP-FIN-001
DET-02066	5	2727.22	712	ALP-BON-001
DET-02067	2	2152.52	712	ALP-YOX-002
DET-02068	8	1175.54	712	ALP-LEC-007
DET-02069	2	2803.46	713	ALP-BON-003
DET-02070	2	3963.57	713	ALP-LEC-004
DET-02071	2	2853.40	713	ALP-BON-004
DET-02072	4	1834.80	713	ALP-YGY-003
DET-02073	3	1207.92	713	ALP-LEC-006
DET-02074	5	2863.88	713	ALP-BON-001
DET-02075	1	3104.25	714	ALP-YOG-003
DET-02076	8	3548.67	714	ALP-YOG-005
DET-02077	3	3270.10	714	ALP-LEC-001
DET-02078	5	2450.40	714	ALP-YOG-002
DET-02079	3	2815.25	715	ALP-BON-004
DET-02080	5	3197.23	715	ALP-LEC-001
DET-02081	3	4031.46	715	ALP-LEC-002
DET-02082	12	2366.27	715	ALP-YOG-001
DET-02083	3	1850.41	716	ALP-YGY-001
DET-02084	4	1808.65	716	ALP-YGY-003
DET-02085	5	1811.21	716	ALP-YGY-002
DET-02086	1	2431.43	716	ALP-YOG-002
DET-02087	2	1474.44	717	ALP-BON-005
DET-02088	4	2418.80	717	ALP-YOG-002
DET-02089	4	3160.12	717	ALP-LEC-001
DET-02090	3	1516.47	718	ALP-BON-005
DET-02091	5	1464.12	719	ALP-BON-005
DET-02092	4	3226.77	719	ALP-LEC-001
DET-02093	1	2799.53	719	ALP-FIN-002
DET-02094	2	1191.55	719	ALP-LEC-007
DET-02095	4	2429.87	719	ALP-YOG-001
DET-02096	8	1222.02	719	ALP-LEC-006
DET-02097	8	1827.52	719	ALP-YGY-002
DET-02098	3	4109.41	720	ALP-LEC-002
DET-02099	2	1821.13	720	ALP-YGY-003
DET-02100	4	1774.44	721	ALP-YGY-003
DET-02101	2	2883.91	722	ALP-BON-003
DET-02102	4	3403.56	722	ALP-YOG-005
DET-02103	2	4141.21	722	ALP-LEC-002
DET-02104	8	2416.16	723	ALP-YOG-002
DET-02105	2	2785.64	723	ALP-FIN-002
DET-02106	4	1204.90	723	ALP-LEC-006
DET-02107	3	1780.58	724	ALP-YGY-003
DET-02108	1	1849.47	724	ALP-YGY-004
DET-02109	4	3166.95	724	ALP-YOG-003
DET-02110	2	2757.48	724	ALP-FIN-002
DET-02111	1	2795.92	725	ALP-FIN-002
DET-02112	2	1848.94	726	ALP-YGY-003
DET-02113	2	2207.91	726	ALP-YOX-002
DET-02114	1	1752.21	726	ALP-YGY-005
DET-02115	2	1839.70	726	ALP-YGY-002
DET-02116	3	3293.35	727	ALP-LEC-001
DET-02117	2	2193.68	727	ALP-YOX-002
DET-02118	3	1818.86	727	ALP-YGY-003
DET-02119	1	3073.65	728	ALP-YOG-003
DET-02120	4	3600.24	728	ALP-YOG-005
DET-02121	5	3806.79	728	ALP-LEC-003
DET-02122	4	1191.90	729	ALP-LEC-006
DET-02123	2	1821.21	729	ALP-YGY-003
DET-02124	2	2377.43	729	ALP-YOG-001
DET-02125	3	3866.11	729	ALP-LEC-004
DET-02126	4	1752.39	730	ALP-YGY-001
DET-02127	4	4410.50	730	ALP-LEC-005
DET-02128	1	2804.89	730	ALP-BON-003
DET-02129	1	1191.70	730	ALP-LEC-006
DET-02130	2	1765.17	731	ALP-YGY-002
DET-02131	1	2445.94	731	ALP-YOG-002
DET-02132	2	3014.21	731	ALP-FIN-001
DET-02133	4	4623.67	731	ALP-LEC-005
DET-02134	1	1833.18	731	ALP-YGY-004
DET-02135	6	2883.55	732	ALP-BON-001
DET-02136	4	4002.45	732	ALP-LEC-004
DET-02137	3	2783.92	733	ALP-BON-002
DET-02138	6	1537.49	733	ALP-BON-005
DET-02139	6	4176.48	733	ALP-LEC-002
DET-02140	3	2392.50	734	ALP-YOG-002
DET-02141	3	4209.28	734	ALP-LEC-002
DET-02142	2	1792.99	734	ALP-YGY-001
DET-02143	1	1748.57	734	ALP-YGY-006
DET-02144	4	1779.17	735	ALP-YGY-003
DET-02145	4	2867.25	735	ALP-BON-001
DET-02146	3	2823.68	735	ALP-FIN-002
DET-02147	4	3138.23	736	ALP-LEC-001
DET-02148	6	2833.46	736	ALP-BON-001
DET-02149	4	4391.64	736	ALP-LEC-005
DET-02150	3	2264.30	737	ALP-YOX-002
DET-02151	8	3175.38	737	ALP-LEC-001
DET-02152	2	1167.22	737	ALP-LEC-006
DET-02153	2	1772.59	737	ALP-YGY-005
DET-02154	3	3580.21	737	ALP-YOG-005
DET-02155	10	2368.04	738	ALP-YOG-002
DET-02156	2	1834.21	738	ALP-YGY-004
DET-02157	5	1207.21	738	ALP-LEC-006
DET-02158	3	2253.09	739	ALP-YOX-001
DET-02159	3	1471.50	739	ALP-BON-005
DET-02160	4	1235.68	740	ALP-LEC-006
DET-02161	2	2148.43	740	ALP-YOX-001
DET-02162	2	3569.95	740	ALP-YOG-005
DET-02163	3	2844.11	740	ALP-BON-003
DET-02164	4	1772.11	740	ALP-YGY-002
DET-02165	3	3902.28	741	ALP-LEC-003
DET-02166	6	1848.64	741	ALP-YGY-003
DET-02167	3	3171.22	741	ALP-LEC-001
DET-02168	1	2727.66	742	ALP-BON-003
DET-02169	4	3806.51	742	ALP-LEC-003
DET-02170	8	1174.32	742	ALP-LEC-007
DET-02171	2	2215.65	743	ALP-YOX-001
DET-02172	4	2873.45	744	ALP-BON-002
DET-02173	4	3750.40	744	ALP-LEC-003
DET-02174	5	4087.62	744	ALP-LEC-002
DET-02175	5	1213.17	744	ALP-LEC-006
DET-02176	8	1783.28	744	ALP-YGY-002
DET-02177	3	3580.21	745	ALP-YOG-005
DET-02178	5	3690.77	745	ALP-LEC-003
DET-02179	3	1761.55	745	ALP-YGY-002
DET-02180	3	1781.21	746	ALP-YGY-002
DET-02181	3	1216.08	746	ALP-LEC-006
DET-02182	1	2752.45	746	ALP-BON-003
DET-02183	8	2356.02	746	ALP-YOG-002
DET-02184	1	1816.44	747	ALP-YGY-004
DET-02185	3	3263.91	747	ALP-YOG-004
DET-02186	1	1813.35	747	ALP-YGY-002
DET-02187	3	1820.95	748	ALP-YGY-002
DET-02188	2	3838.07	748	ALP-LEC-003
DET-02189	5	1812.13	749	ALP-YGY-002
DET-02190	4	3885.71	749	ALP-LEC-003
DET-02191	1	2848.21	749	ALP-BON-003
DET-02192	8	2329.25	749	ALP-YOG-001
DET-02193	3	2357.23	750	ALP-YOG-002
DET-02194	3	2429.32	751	ALP-YOG-002
DET-02195	4	2733.05	751	ALP-BON-002
DET-02196	3	3716.92	752	ALP-LEC-003
DET-02197	1	2879.01	752	ALP-BON-004
DET-02198	4	1748.16	752	ALP-YGY-002
DET-02199	4	1834.34	752	ALP-YGY-004
DET-02200	1	3919.86	752	ALP-LEC-004
DET-02201	3	3066.65	753	ALP-FIN-001
DET-02202	1	3594.24	753	ALP-YOG-005
DET-02203	5	1811.10	753	ALP-YGY-003
DET-02204	3	3009.97	753	ALP-YOG-003
DET-02205	1	2786.18	753	ALP-FIN-002
DET-02206	3	4567.50	754	ALP-LEC-005
DET-02207	1	1196.98	754	ALP-LEC-007
DET-02208	2	1805.54	754	ALP-YGY-001
DET-02209	2	3291.82	754	ALP-YOG-004
DET-02210	10	3169.69	755	ALP-LEC-001
DET-02211	4	2836.81	755	ALP-BON-002
DET-02212	1	3197.86	755	ALP-YOG-004
DET-02213	4	1844.64	755	ALP-YGY-006
DET-02214	3	1758.26	756	ALP-YGY-006
DET-02215	4	4015.44	757	ALP-LEC-002
DET-02216	4	3271.30	757	ALP-LEC-001
DET-02217	5	2862.73	757	ALP-BON-002
DET-02218	2	3710.13	757	ALP-LEC-003
DET-02219	1	4493.53	758	ALP-LEC-005
DET-02220	2	2264.41	758	ALP-YOX-004
DET-02221	2	4022.77	758	ALP-LEC-002
DET-02222	3	3132.77	758	ALP-FIN-001
DET-02223	1	4418.38	759	ALP-LEC-005
DET-02224	2	3117.17	760	ALP-FIN-001
DET-02225	2	2200.88	760	ALP-YOX-001
DET-02226	5	4081.92	760	ALP-LEC-002
DET-02227	4	1828.56	761	ALP-YGY-002
DET-02228	3	1747.30	761	ALP-YGY-006
DET-02229	2	3023.41	761	ALP-FIN-001
DET-02230	4	1229.98	761	ALP-LEC-006
DET-02231	8	2175.38	762	ALP-YOX-001
DET-02232	5	3140.53	762	ALP-LEC-001
DET-02233	3	1167.07	762	ALP-LEC-007
DET-02234	1	1492.76	763	ALP-BON-005
DET-02235	3	3424.28	763	ALP-YOG-005
DET-02236	5	2470.53	763	ALP-YOG-002
DET-02237	4	3122.21	764	ALP-LEC-001
DET-02238	4	2349.59	764	ALP-YOG-001
DET-02239	1	2808.29	765	ALP-BON-003
DET-02240	1	2196.92	766	ALP-YOX-002
DET-02241	4	2853.92	766	ALP-BON-004
DET-02242	3	3563.76	766	ALP-YOG-005
DET-02243	3	2830.92	767	ALP-BON-001
DET-02244	5	3870.02	768	ALP-LEC-003
DET-02245	3	3050.42	769	ALP-FIN-001
DET-02246	10	3164.01	769	ALP-LEC-001
DET-02247	6	1811.08	770	ALP-YGY-002
DET-02248	2	1849.49	770	ALP-YGY-003
DET-02249	5	2791.51	770	ALP-BON-001
DET-02250	1	4578.65	770	ALP-LEC-005
DET-02251	5	3718.62	770	ALP-LEC-003
DET-02252	1	1752.37	770	ALP-YGY-004
DET-02253	1	3124.75	770	ALP-FIN-001
DET-02254	6	1825.21	771	ALP-YGY-001
DET-02255	5	3730.45	771	ALP-LEC-003
DET-02256	5	1184.34	771	ALP-LEC-007
DET-02257	5	2787.06	771	ALP-BON-001
DET-02258	5	1210.92	772	ALP-LEC-007
DET-02259	4	1511.33	773	ALP-BON-005
DET-02260	8	2345.84	774	ALP-YOG-001
DET-02261	3	4112.93	774	ALP-LEC-002
DET-02262	5	1186.70	774	ALP-LEC-007
DET-02263	1	1841.39	775	ALP-YGY-004
DET-02264	1	1823.47	775	ALP-YGY-005
DET-02265	1	2726.73	775	ALP-BON-003
DET-02266	6	1790.57	776	ALP-YGY-001
DET-02267	4	3498.42	776	ALP-YOG-005
DET-02268	2	1771.84	777	ALP-YGY-005
DET-02269	1	2809.69	777	ALP-BON-003
DET-02270	2	3878.18	777	ALP-LEC-003
DET-02271	5	1226.67	778	ALP-LEC-006
DET-02272	5	2428.39	779	ALP-YOG-001
DET-02273	2	1750.33	779	ALP-YGY-006
DET-02274	2	1763.73	780	ALP-YGY-003
DET-02275	10	3206.96	780	ALP-LEC-001
DET-02276	4	1207.44	781	ALP-LEC-007
DET-02277	3	1801.27	781	ALP-YGY-002
DET-02278	1	1765.96	781	ALP-YGY-001
DET-02279	3	3971.28	781	ALP-LEC-004
DET-02280	2	4433.13	782	ALP-LEC-005
DET-02281	2	1779.47	782	ALP-YGY-003
DET-02282	1	2157.88	782	ALP-YOX-004
DET-02283	6	2399.94	782	ALP-YOG-002
DET-02284	1	1457.81	783	ALP-BON-005
DET-02285	1	2717.88	783	ALP-BON-003
DET-02286	4	2328.00	783	ALP-YOG-001
DET-02287	8	3548.04	783	ALP-YOG-005
DET-02288	3	2840.63	784	ALP-BON-002
DET-02289	4	1846.68	785	ALP-YGY-005
DET-02290	2	1229.85	785	ALP-LEC-007
DET-02291	1	3136.25	786	ALP-FIN-001
DET-02292	5	2331.25	786	ALP-YOG-001
DET-02293	2	3018.77	786	ALP-YOG-003
DET-02294	3	2718.23	787	ALP-BON-003
DET-02295	8	2826.31	787	ALP-BON-002
DET-02296	2	2247.12	788	ALP-YOX-002
DET-02297	6	1214.61	788	ALP-LEC-006
DET-02298	5	1215.52	788	ALP-LEC-007
DET-02299	1	1776.94	788	ALP-YGY-006
DET-02300	5	2374.18	789	ALP-YOG-002
DET-02301	4	1789.96	789	ALP-YGY-002
DET-02302	4	2784.51	790	ALP-FIN-002
DET-02303	3	2340.45	790	ALP-YOG-001
DET-02304	4	3508.23	791	ALP-YOG-005
DET-02305	4	2882.40	792	ALP-BON-001
DET-02306	4	3504.11	792	ALP-YOG-005
DET-02307	2	2758.79	792	ALP-FIN-002
DET-02308	5	3900.84	792	ALP-LEC-003
DET-02309	3	1819.87	792	ALP-YGY-004
DET-02310	2	2842.26	793	ALP-BON-001
DET-02311	4	2420.23	793	ALP-YOG-002
DET-02312	6	2856.17	793	ALP-BON-002
DET-02313	3	3286.42	794	ALP-LEC-001
DET-02314	8	2386.48	794	ALP-YOG-001
DET-02315	3	4210.95	795	ALP-LEC-002
DET-02316	4	2379.48	795	ALP-YOG-001
DET-02317	4	3237.98	795	ALP-LEC-001
DET-02318	1	1199.38	796	ALP-LEC-006
DET-02319	1	2868.62	796	ALP-BON-004
DET-02320	4	2458.45	797	ALP-YOG-002
DET-02321	1	2807.35	797	ALP-BON-002
DET-02322	4	1824.22	797	ALP-YGY-002
DET-02323	3	4203.89	797	ALP-LEC-002
DET-02324	4	1231.36	798	ALP-LEC-006
DET-02325	2	2800.35	798	ALP-FIN-002
DET-02326	4	3237.85	798	ALP-LEC-001
DET-02327	4	2871.40	798	ALP-BON-001
DET-02328	2	1843.44	799	ALP-YGY-003
DET-02329	1	1199.01	800	ALP-LEC-007
DET-02330	5	2846.32	800	ALP-BON-001
DET-02331	4	2391.09	801	ALP-YOG-001
DET-02332	1	3238.19	801	ALP-LEC-001
DET-02333	2	4506.80	801	ALP-LEC-005
DET-02334	2	2822.65	801	ALP-BON-001
DET-02335	2	2196.52	801	ALP-YOX-001
DET-02336	1	2834.06	802	ALP-BON-004
DET-02337	5	3213.52	802	ALP-LEC-001
DET-02338	8	1196.12	802	ALP-LEC-007
DET-02339	2	1180.72	803	ALP-LEC-007
DET-02340	6	3129.58	803	ALP-LEC-001
DET-02341	5	3231.85	804	ALP-LEC-001
DET-02342	3	3167.07	805	ALP-YOG-003
DET-02343	2	1832.82	806	ALP-YGY-001
DET-02344	3	4008.23	806	ALP-LEC-002
DET-02345	6	3271.17	807	ALP-LEC-001
DET-02346	5	1748.99	807	ALP-YGY-001
DET-02347	2	2872.37	807	ALP-FIN-002
DET-02348	5	1811.50	807	ALP-YGY-003
DET-02349	1	3701.12	808	ALP-LEC-003
DET-02350	1	1842.30	808	ALP-YGY-004
DET-02351	4	2420.36	808	ALP-YOG-001
DET-02352	2	3080.15	808	ALP-YOG-003
DET-02353	2	3220.20	809	ALP-YOG-004
DET-02354	3	2812.43	809	ALP-BON-001
DET-02355	3	1755.83	809	ALP-YGY-002
DET-02356	3	3466.91	809	ALP-YOG-005
DET-02357	4	1189.09	810	ALP-LEC-006
DET-02358	3	1223.45	810	ALP-LEC-007
DET-02359	3	1790.45	810	ALP-YGY-001
DET-02360	3	1780.68	811	ALP-YGY-006
DET-02361	3	2411.77	811	ALP-YOG-001
DET-02362	3	3141.77	811	ALP-YOG-003
DET-02363	5	1204.91	812	ALP-LEC-006
DET-02364	5	2349.07	812	ALP-YOG-001
DET-02365	12	2364.37	812	ALP-YOG-002
DET-02366	4	2787.85	813	ALP-FIN-002
DET-02367	4	3218.29	813	ALP-LEC-001
DET-02368	1	4469.46	813	ALP-LEC-005
DET-02369	3	3433.03	813	ALP-YOG-005
DET-02370	5	3168.82	814	ALP-LEC-001
DET-02371	4	2367.91	814	ALP-YOG-002
DET-02372	4	1180.60	814	ALP-LEC-007
DET-02373	2	1807.63	814	ALP-YGY-002
DET-02374	2	2465.44	815	ALP-YOG-002
DET-02375	8	3854.82	815	ALP-LEC-003
DET-02376	3	1775.13	815	ALP-YGY-002
DET-02377	3	2351.85	816	ALP-YOG-002
DET-02378	2	4029.49	817	ALP-LEC-002
DET-02379	6	1169.90	817	ALP-LEC-006
DET-02380	1	9814.07	818	ALP-YOX-003
DET-02381	4	2799.84	818	ALP-BON-002
DET-02382	2	1836.53	818	ALP-YGY-004
DET-02383	3	2175.48	819	ALP-YOX-001
DET-02384	2	1772.87	819	ALP-YGY-003
DET-02385	5	1794.84	820	ALP-YGY-003
DET-02386	4	1788.00	820	ALP-YGY-001
DET-02387	12	1785.59	821	ALP-YGY-001
DET-02388	1	2197.17	821	ALP-YOX-002
DET-02389	4	1754.56	822	ALP-YGY-005
DET-02390	2	1794.93	822	ALP-YGY-003
DET-02391	3	2451.62	822	ALP-YOG-001
DET-02392	3	2459.90	822	ALP-YOG-002
DET-02393	10	1849.01	823	ALP-YGY-001
DET-02394	5	1176.67	823	ALP-LEC-006
DET-02395	1	3052.69	824	ALP-YOG-003
DET-02396	6	1225.59	824	ALP-LEC-006
DET-02397	1	2401.91	824	ALP-YOG-001
DET-02398	1	4501.22	824	ALP-LEC-005
DET-02399	1	2151.81	824	ALP-YOX-002
DET-02400	2	3725.93	825	ALP-LEC-003
DET-02401	5	2363.74	825	ALP-YOG-002
DET-02402	5	3171.96	826	ALP-LEC-001
DET-02403	5	2836.68	826	ALP-BON-002
DET-02404	4	1522.65	826	ALP-BON-005
DET-02405	5	2386.71	826	ALP-YOG-001
DET-02406	3	2373.29	827	ALP-YOG-001
DET-02407	4	1165.15	827	ALP-LEC-006
DET-02408	2	1814.95	827	ALP-YGY-003
DET-02409	4	2394.72	828	ALP-YOG-001
DET-02410	4	1751.55	828	ALP-YGY-005
DET-02411	6	2866.70	828	ALP-BON-001
DET-02412	2	1185.27	828	ALP-LEC-006
DET-02413	3	2796.55	829	ALP-BON-002
DET-02414	4	1766.90	829	ALP-YGY-005
DET-02415	4	2841.87	829	ALP-BON-004
DET-02416	2	2162.87	830	ALP-YOX-002
DET-02417	1	2820.46	831	ALP-BON-003
DET-02418	6	1798.65	832	ALP-YGY-001
DET-02419	12	2337.69	833	ALP-YOG-001
DET-02420	5	2786.15	834	ALP-BON-002
DET-02421	2	1762.38	834	ALP-YGY-006
DET-02422	6	1477.96	834	ALP-BON-005
DET-02423	1	2134.07	834	ALP-YOX-002
DET-02424	2	1225.84	834	ALP-LEC-007
DET-02425	8	3292.06	835	ALP-LEC-001
DET-02426	3	1849.21	835	ALP-YGY-001
DET-02427	3	2809.84	835	ALP-FIN-002
DET-02428	6	2761.73	836	ALP-BON-001
DET-02429	4	1778.46	836	ALP-YGY-006
DET-02430	2	1853.06	836	ALP-YGY-001
DET-02431	8	2413.20	836	ALP-YOG-002
DET-02432	2	2350.07	837	ALP-YOG-002
DET-02433	3	1804.56	837	ALP-YGY-002
DET-02434	1	2895.33	838	ALP-BON-004
DET-02435	2	2873.52	838	ALP-BON-001
DET-02436	6	4034.98	838	ALP-LEC-002
DET-02437	4	3898.10	838	ALP-LEC-004
DET-02438	3	2729.79	839	ALP-BON-003
DET-02439	5	2329.22	839	ALP-YOG-002
DET-02440	1	1199.47	839	ALP-LEC-007
DET-02441	2	1810.08	840	ALP-YGY-005
DET-02442	3	2804.38	840	ALP-FIN-002
DET-02443	2	3158.61	840	ALP-LEC-001
DET-02444	1	3924.84	840	ALP-LEC-004
DET-02445	4	3832.71	840	ALP-LEC-003
DET-02446	4	2732.15	840	ALP-BON-002
DET-02447	1	2224.95	840	ALP-YOX-001
DET-02448	5	2450.71	840	ALP-YOG-002
DET-02449	4	2372.54	841	ALP-YOG-001
DET-02450	2	2756.43	841	ALP-BON-002
DET-02451	2	1762.76	841	ALP-YGY-001
DET-02452	2	4084.09	842	ALP-LEC-002
DET-02453	6	1512.99	842	ALP-BON-005
DET-02454	4	3811.88	842	ALP-LEC-003
DET-02455	4	1173.57	843	ALP-LEC-006
DET-02456	4	1850.40	843	ALP-YGY-001
DET-02457	10	3164.44	843	ALP-LEC-001
DET-02458	4	3815.18	843	ALP-LEC-003
DET-02459	3	4367.01	843	ALP-LEC-005
DET-02460	1	2877.91	844	ALP-BON-004
DET-02461	8	1798.14	844	ALP-YGY-001
DET-02462	1	2800.18	844	ALP-FIN-002
DET-02463	4	3761.81	844	ALP-LEC-003
DET-02464	2	3144.00	844	ALP-YOG-003
DET-02465	2	3108.76	845	ALP-YOG-003
DET-02466	1	2842.97	845	ALP-FIN-002
DET-02467	2	1781.92	845	ALP-YGY-004
DET-02468	4	2392.70	846	ALP-YOG-001
DET-02469	1	1816.42	846	ALP-YGY-001
DET-02470	4	3049.68	846	ALP-YOG-003
DET-02471	8	1194.96	847	ALP-LEC-007
DET-02472	2	1832.66	847	ALP-YGY-002
DET-02473	2	1777.06	848	ALP-YGY-002
DET-02474	4	2853.86	848	ALP-BON-004
DET-02475	4	1806.56	848	ALP-YGY-001
DET-02476	1	3108.38	848	ALP-FIN-001
DET-02477	6	4079.23	849	ALP-LEC-002
DET-02478	1	1768.04	849	ALP-YGY-005
DET-02479	6	3415.50	849	ALP-YOG-005
DET-02480	2	1746.36	850	ALP-YGY-002
DET-02481	6	3253.50	850	ALP-LEC-001
DET-02482	3	3182.76	851	ALP-FIN-001
DET-02483	4	4201.09	851	ALP-LEC-002
DET-02484	5	1542.25	851	ALP-BON-005
DET-02485	3	2470.87	851	ALP-YOG-001
DET-02486	2	1782.95	851	ALP-YGY-006
DET-02487	1	4584.19	852	ALP-LEC-005
DET-02488	2	2747.94	852	ALP-FIN-002
DET-02489	6	2439.38	852	ALP-YOG-001
DET-02490	2	2869.36	853	ALP-FIN-002
DET-02491	5	2878.89	854	ALP-BON-002
DET-02492	3	1755.20	854	ALP-YGY-005
DET-02493	2	4525.56	854	ALP-LEC-005
DET-02494	2	3126.37	854	ALP-LEC-001
DET-02495	3	3555.39	855	ALP-FIN-003
DET-02496	1	2141.25	855	ALP-YOX-002
DET-02497	2	2877.97	855	ALP-BON-001
DET-02498	3	2728.62	856	ALP-BON-002
DET-02499	1	3754.36	856	ALP-LEC-003
DET-02500	3	4617.51	857	ALP-LEC-005
DET-02501	6	4111.33	857	ALP-LEC-002
DET-02502	2	3836.00	857	ALP-LEC-003
DET-02503	10	1789.59	857	ALP-YGY-001
DET-02504	6	1779.68	857	ALP-YGY-003
DET-02505	1	3024.29	857	ALP-FIN-001
DET-02506	2	2434.72	857	ALP-YOG-001
DET-02507	5	3403.93	858	ALP-YOG-005
DET-02508	5	4002.55	859	ALP-LEC-002
DET-02509	3	3893.05	859	ALP-LEC-004
DET-02510	5	3421.60	859	ALP-YOG-005
DET-02511	5	2185.27	860	ALP-YOX-001
DET-02512	2	1185.07	860	ALP-LEC-006
DET-02513	2	2879.59	860	ALP-BON-003
DET-02514	1	3114.57	860	ALP-YOG-003
DET-02515	3	3114.25	861	ALP-YOG-003
DET-02516	4	2210.59	861	ALP-YOX-002
DET-02517	6	1181.91	861	ALP-LEC-006
DET-02518	1	1172.11	862	ALP-LEC-006
DET-02519	2	3144.36	862	ALP-LEC-001
DET-02520	1	2803.17	863	ALP-BON-003
DET-02521	5	2827.40	863	ALP-BON-001
DET-02522	3	1468.13	863	ALP-BON-005
DET-02523	2	1746.33	864	ALP-YGY-006
DET-02524	6	3407.89	864	ALP-YOG-005
DET-02525	2	1534.32	865	ALP-BON-005
DET-02526	2	2925.10	866	ALP-BON-004
DET-02527	3	3236.18	866	ALP-LEC-001
DET-02528	4	2801.63	867	ALP-BON-003
DET-02529	3	3808.70	867	ALP-LEC-004
DET-02530	6	1201.59	867	ALP-LEC-006
DET-02531	1	1772.05	868	ALP-YGY-006
DET-02532	6	2444.60	868	ALP-YOG-001
DET-02533	5	1829.00	869	ALP-YGY-002
DET-02534	1	1791.33	869	ALP-YGY-004
DET-02535	3	2397.27	869	ALP-YOG-001
DET-02536	1	2166.32	870	ALP-YOX-002
DET-02537	2	2871.49	870	ALP-BON-004
DET-02538	3	2165.83	870	ALP-YOX-001
DET-02539	8	1180.39	870	ALP-LEC-007
DET-02540	1	4078.04	871	ALP-LEC-002
DET-02541	1	1749.95	872	ALP-YGY-002
DET-02542	1	9851.45	872	ALP-YOX-003
DET-02543	4	4045.98	872	ALP-LEC-002
DET-02544	6	1167.18	873	ALP-LEC-006
DET-02545	4	2806.90	873	ALP-BON-001
DET-02546	1	4148.18	873	ALP-LEC-002
DET-02547	1	2428.22	874	ALP-YOG-001
DET-02548	5	1171.02	874	ALP-LEC-006
DET-02549	1	2719.59	874	ALP-BON-003
DET-02550	2	2744.91	874	ALP-BON-001
DET-02551	1	10023.54	875	ALP-YOX-003
DET-02552	1	4550.43	875	ALP-LEC-005
DET-02553	10	1168.56	875	ALP-LEC-006
DET-02554	1	3794.01	875	ALP-LEC-003
DET-02555	2	1762.60	876	ALP-YGY-002
DET-02556	5	2164.26	876	ALP-YOX-001
DET-02557	12	1845.05	877	ALP-YGY-001
DET-02558	2	1841.73	877	ALP-YGY-002
DET-02559	2	1788.62	878	ALP-YGY-006
DET-02560	8	1215.30	878	ALP-LEC-006
DET-02561	2	1459.75	878	ALP-BON-005
DET-02562	3	3987.94	878	ALP-LEC-004
DET-02563	2	2362.63	878	ALP-YOG-002
DET-02564	4	2860.19	878	ALP-BON-001
DET-02565	4	1754.01	878	ALP-YGY-003
DET-02566	4	3412.55	878	ALP-YOG-005
DET-02567	3	1167.17	879	ALP-LEC-007
DET-02568	3	3912.35	880	ALP-LEC-003
DET-02569	1	2332.77	880	ALP-YOG-001
DET-02570	4	2137.61	880	ALP-YOX-001
DET-02571	5	3982.95	880	ALP-LEC-002
DET-02572	1	2814.42	881	ALP-BON-001
DET-02573	2	3146.22	882	ALP-FIN-001
DET-02574	8	4153.93	882	ALP-LEC-002
DET-02575	1	1804.94	883	ALP-YGY-006
DET-02576	5	2424.21	883	ALP-YOG-001
DET-02577	4	1750.59	884	ALP-YGY-001
DET-02578	4	2333.82	884	ALP-YOG-001
DET-02579	3	1772.53	885	ALP-YGY-003
DET-02580	2	2741.08	886	ALP-BON-002
DET-02581	4	1770.61	886	ALP-YGY-001
DET-02582	5	2784.91	887	ALP-BON-002
DET-02583	5	2408.39	887	ALP-YOG-002
DET-02584	1	2441.26	887	ALP-YOG-001
DET-02585	1	1836.17	888	ALP-YGY-005
DET-02586	4	3511.72	888	ALP-YOG-005
DET-02587	2	4366.34	888	ALP-LEC-005
DET-02588	6	2382.44	889	ALP-YOG-002
DET-02589	1	3906.63	889	ALP-LEC-004
DET-02590	4	3816.28	890	ALP-LEC-003
DET-02591	4	3244.27	890	ALP-LEC-001
DET-02592	4	1179.40	891	ALP-LEC-006
DET-02593	1	2948.42	891	ALP-BON-004
DET-02594	6	2376.95	892	ALP-YOG-002
DET-02595	8	1185.16	892	ALP-LEC-007
DET-02596	1	2869.12	892	ALP-FIN-002
DET-02597	3	2730.21	892	ALP-BON-002
DET-02598	3	1204.04	893	ALP-LEC-007
DET-02599	8	1765.27	893	ALP-YGY-003
DET-02600	12	2375.74	893	ALP-YOG-001
DET-02601	6	2358.09	894	ALP-YOG-002
DET-02602	8	3172.17	894	ALP-LEC-001
DET-02603	3	2168.02	894	ALP-YOX-001
DET-02604	2	2815.68	895	ALP-BON-003
DET-02605	3	1178.26	895	ALP-LEC-006
DET-02606	3	3778.34	895	ALP-LEC-003
DET-02607	6	4032.53	895	ALP-LEC-002
DET-02608	3	2248.05	896	ALP-YOX-002
DET-02609	1	3008.98	896	ALP-FIN-001
DET-02610	4	3261.51	896	ALP-YOG-004
DET-02611	1	1749.18	896	ALP-YGY-004
DET-02612	3	4155.30	897	ALP-LEC-002
DET-02613	4	3686.70	897	ALP-LEC-003
DET-02614	3	1769.08	897	ALP-YGY-003
DET-02615	2	3561.34	897	ALP-YOG-005
DET-02616	5	2804.36	898	ALP-BON-001
DET-02617	3	1827.70	899	ALP-YGY-002
DET-02618	6	1176.28	899	ALP-LEC-006
DET-02619	5	1814.09	900	ALP-YGY-003
DET-02620	5	1782.45	900	ALP-YGY-001
DET-02621	4	3179.94	900	ALP-LEC-001
DET-02622	1	1526.17	900	ALP-BON-005
DET-02623	2	2832.54	900	ALP-BON-001
DET-02624	12	2355.78	901	ALP-YOG-001
DET-02625	2	1217.65	902	ALP-LEC-006
DET-02626	1	2745.49	902	ALP-BON-003
DET-02627	2	3173.93	902	ALP-YOG-003
DET-02628	2	1850.02	903	ALP-YGY-001
DET-02629	2	4447.08	903	ALP-LEC-005
DET-02630	8	1831.73	903	ALP-YGY-003
DET-02631	4	2440.36	903	ALP-YOG-002
DET-02632	5	2420.90	904	ALP-YOG-002
DET-02633	1	3127.83	904	ALP-YOG-004
DET-02634	2	2142.56	905	ALP-YOX-001
DET-02635	10	3214.22	905	ALP-LEC-001
DET-02636	4	1529.73	906	ALP-BON-005
DET-02637	6	1218.68	906	ALP-LEC-006
DET-02638	6	2425.33	906	ALP-YOG-001
DET-02639	1	2859.51	906	ALP-BON-003
DET-02640	4	3888.31	907	ALP-LEC-003
DET-02641	8	2442.09	907	ALP-YOG-001
DET-02642	6	1848.96	907	ALP-YGY-003
DET-02643	6	2440.40	908	ALP-YOG-002
DET-02644	6	1791.11	909	ALP-YGY-002
DET-02645	1	3126.40	909	ALP-FIN-001
DET-02646	5	3145.45	909	ALP-LEC-001
DET-02647	5	1821.08	910	ALP-YGY-001
DET-02648	5	1188.58	910	ALP-LEC-006
DET-02649	1	1837.69	910	ALP-YGY-006
DET-02650	3	1809.78	910	ALP-YGY-003
DET-02651	3	2829.66	910	ALP-BON-002
DET-02652	3	3056.48	910	ALP-FIN-001
DET-02653	4	2787.56	911	ALP-BON-002
DET-02654	1	2831.19	911	ALP-BON-003
DET-02655	4	1774.84	912	ALP-YGY-002
DET-02656	5	1771.98	912	ALP-YGY-003
DET-02657	1	1770.16	913	ALP-YGY-001
DET-02658	2	1838.04	913	ALP-YGY-004
DET-02659	2	3020.96	914	ALP-YOG-003
DET-02660	4	3260.35	914	ALP-LEC-001
DET-02661	5	3174.73	915	ALP-LEC-001
DET-02662	8	1775.17	915	ALP-YGY-001
DET-02663	2	1793.59	915	ALP-YGY-004
DET-02664	1	1192.13	915	ALP-LEC-007
DET-02665	6	1847.84	915	ALP-YGY-003
DET-02666	6	2432.55	915	ALP-YOG-002
DET-02667	2	3696.87	916	ALP-LEC-003
DET-02668	5	3238.26	916	ALP-LEC-001
DET-02669	3	2438.75	916	ALP-YOG-001
DET-02670	10	1847.22	917	ALP-YGY-001
DET-02671	4	1779.93	917	ALP-YGY-002
DET-02672	6	2858.72	918	ALP-BON-001
DET-02673	1	3037.55	918	ALP-FIN-001
DET-02674	2	3170.23	919	ALP-LEC-001
DET-02675	1	4030.69	919	ALP-LEC-002
DET-02676	3	2424.17	919	ALP-YOG-001
DET-02677	12	3201.97	920	ALP-LEC-001
DET-02678	1	3024.58	920	ALP-FIN-001
DET-02679	2	1464.21	921	ALP-BON-005
DET-02680	8	2202.56	921	ALP-YOX-001
DET-02681	5	2352.71	921	ALP-YOG-002
DET-02682	2	2839.40	921	ALP-BON-003
DET-02683	4	1824.97	921	ALP-YGY-002
DET-02684	3	3444.11	921	ALP-YOG-005
DET-02685	2	3153.12	922	ALP-YOG-003
DET-02686	3	1823.67	922	ALP-YGY-002
DET-02687	12	2426.03	922	ALP-YOG-002
DET-02688	3	3889.14	922	ALP-LEC-004
DET-02689	5	3412.71	923	ALP-YOG-005
DET-02690	5	1176.99	923	ALP-LEC-006
DET-02691	1	2771.09	923	ALP-BON-003
DET-02692	8	2440.80	924	ALP-YOG-002
DET-02693	2	2876.12	924	ALP-BON-002
DET-02694	8	2460.28	924	ALP-YOG-001
DET-02695	8	1832.23	924	ALP-YGY-002
DET-02696	2	1517.26	924	ALP-BON-005
DET-02697	3	4184.07	924	ALP-LEC-002
DET-02698	4	1215.78	924	ALP-LEC-007
DET-02699	8	1773.08	924	ALP-YGY-003
DET-02700	8	1200.54	925	ALP-LEC-007
DET-02701	1	1827.13	925	ALP-YGY-003
DET-02702	2	2422.30	925	ALP-YOG-002
DET-02703	5	1207.95	926	ALP-LEC-006
DET-02704	5	1804.53	926	ALP-YGY-002
DET-02705	3	1506.71	926	ALP-BON-005
DET-02706	8	1799.70	926	ALP-YGY-001
DET-02707	1	3162.69	926	ALP-FIN-001
DET-02708	1	4429.12	927	ALP-LEC-005
DET-02709	1	3550.17	927	ALP-FIN-003
DET-02710	4	3275.79	927	ALP-LEC-001
DET-02711	3	2224.23	928	ALP-YOX-002
DET-02712	5	2858.25	928	ALP-BON-001
DET-02713	2	1529.73	928	ALP-BON-005
DET-02714	5	3284.60	928	ALP-LEC-001
DET-02715	4	2253.00	928	ALP-YOX-001
DET-02716	2	3807.13	928	ALP-LEC-004
DET-02717	2	3154.06	928	ALP-YOG-004
DET-02718	3	4392.60	929	ALP-LEC-005
DET-02719	2	2463.30	929	ALP-YOG-001
DET-02720	2	2227.80	929	ALP-YOX-002
DET-02721	4	3400.39	929	ALP-YOG-005
DET-02722	4	3904.43	929	ALP-LEC-004
DET-02723	3	1797.97	930	ALP-YGY-002
DET-02724	5	3113.00	930	ALP-LEC-001
DET-02725	4	2834.39	930	ALP-BON-001
DET-02726	1	1775.07	930	ALP-YGY-001
DET-02727	2	2244.69	930	ALP-YOX-001
DET-02728	6	2777.51	931	ALP-BON-001
DET-02729	3	1528.58	931	ALP-BON-005
DET-02730	1	1831.59	932	ALP-YGY-001
DET-02731	4	1189.48	932	ALP-LEC-006
DET-02732	4	2920.14	932	ALP-BON-004
DET-02733	5	2345.57	932	ALP-YOG-002
DET-02734	3	3170.88	933	ALP-LEC-001
DET-02735	1	9586.47	933	ALP-YOX-003
DET-02736	5	3870.47	933	ALP-LEC-003
DET-02737	4	3198.60	934	ALP-LEC-001
DET-02738	5	2772.66	934	ALP-BON-001
DET-02739	5	2424.38	934	ALP-YOG-001
DET-02740	2	1765.20	935	ALP-YGY-003
DET-02741	4	3185.19	935	ALP-FIN-001
DET-02742	1	2909.67	936	ALP-BON-004
DET-02743	3	2732.86	936	ALP-BON-001
DET-02744	4	3880.06	936	ALP-LEC-003
DET-02745	5	2383.16	936	ALP-YOG-002
DET-02746	2	3192.09	936	ALP-YOG-003
DET-02747	8	3199.92	936	ALP-LEC-001
DET-02748	3	2470.63	936	ALP-YOG-001
DET-02749	4	2791.43	936	ALP-BON-002
DET-02750	8	3438.92	937	ALP-YOG-005
DET-02751	3	1802.79	937	ALP-YGY-005
DET-02752	4	3725.42	937	ALP-LEC-003
DET-02753	1	9649.91	938	ALP-YOX-003
DET-02754	3	4408.24	938	ALP-LEC-005
DET-02755	1	3192.93	938	ALP-LEC-001
DET-02756	3	3723.63	938	ALP-LEC-003
DET-02757	3	4096.02	939	ALP-LEC-002
DET-02758	6	1532.65	939	ALP-BON-005
DET-02759	5	2374.86	939	ALP-YOG-001
DET-02760	2	2391.29	940	ALP-YOG-001
DET-02761	1	1796.63	940	ALP-YGY-006
DET-02762	2	1516.87	940	ALP-BON-005
DET-02763	4	2250.37	941	ALP-YOX-002
DET-02764	5	3548.89	941	ALP-YOG-005
DET-02765	2	1816.98	941	ALP-YGY-006
DET-02766	1	3126.11	941	ALP-FIN-001
DET-02767	4	1186.18	942	ALP-LEC-006
DET-02768	2	3897.45	942	ALP-LEC-004
DET-02769	3	1825.61	942	ALP-YGY-005
DET-02770	6	2444.75	943	ALP-YOG-001
DET-02771	5	1208.01	943	ALP-LEC-007
DET-02772	1	1461.29	944	ALP-BON-005
DET-02773	10	2363.49	944	ALP-YOG-002
DET-02774	2	1772.25	945	ALP-YGY-001
DET-02775	5	4176.83	945	ALP-LEC-002
DET-02776	3	3025.33	945	ALP-YOG-003
DET-02777	5	2407.81	946	ALP-YOG-001
DET-02778	8	2463.32	946	ALP-YOG-002
DET-02779	4	1814.84	947	ALP-YGY-001
DET-02780	5	1752.58	947	ALP-YGY-003
DET-02781	8	2842.10	947	ALP-BON-001
DET-02782	6	1179.12	948	ALP-LEC-006
DET-02783	5	1228.69	948	ALP-LEC-007
DET-02784	2	2719.84	948	ALP-BON-001
DET-02785	5	3516.21	948	ALP-YOG-005
DET-02786	2	1796.77	949	ALP-YGY-003
DET-02787	1	2815.71	949	ALP-BON-001
DET-02788	2	3289.74	949	ALP-LEC-001
DET-02789	3	1751.23	949	ALP-YGY-001
DET-02790	2	1211.53	950	ALP-LEC-006
DET-02791	5	4126.04	950	ALP-LEC-002
DET-02792	2	4021.45	951	ALP-LEC-002
DET-02793	4	1485.36	952	ALP-BON-005
DET-02794	2	2221.16	952	ALP-YOX-002
DET-02795	3	1840.70	952	ALP-YGY-006
DET-02796	2	3558.10	952	ALP-YOG-005
DET-02797	2	1184.64	953	ALP-LEC-007
DET-02798	4	4183.64	953	ALP-LEC-002
DET-02799	4	2428.89	953	ALP-YOG-001
DET-02800	5	2261.73	953	ALP-YOX-001
DET-02801	2	3290.03	954	ALP-LEC-001
DET-02802	2	9667.97	954	ALP-YOX-003
DET-02803	1	1784.77	954	ALP-YGY-006
DET-02804	4	2380.80	954	ALP-YOG-001
DET-02805	6	1168.43	955	ALP-LEC-006
DET-02806	4	3289.09	955	ALP-LEC-001
DET-02807	1	3576.01	955	ALP-YOG-005
DET-02808	1	3049.45	955	ALP-YOG-003
DET-02809	5	2368.52	955	ALP-YOG-001
DET-02810	4	2869.59	956	ALP-BON-001
DET-02811	6	1190.54	956	ALP-LEC-007
DET-02812	2	2372.39	956	ALP-YOG-002
DET-02813	4	2192.45	956	ALP-YOX-001
DET-02814	2	1853.79	956	ALP-YGY-005
DET-02815	3	3962.98	957	ALP-LEC-004
DET-02816	1	1201.02	957	ALP-LEC-006
DET-02817	10	1748.88	957	ALP-YGY-001
DET-02818	1	1762.00	958	ALP-YGY-002
DET-02819	8	4154.07	958	ALP-LEC-002
DET-02820	2	2834.32	958	ALP-BON-003
DET-02821	1	2356.15	958	ALP-YOG-001
DET-02822	8	1185.62	959	ALP-LEC-006
DET-02823	4	1470.75	959	ALP-BON-005
DET-02824	4	3983.10	959	ALP-LEC-002
DET-02825	2	1749.21	960	ALP-YGY-002
DET-02826	3	1746.59	960	ALP-YGY-001
DET-02827	2	2446.54	961	ALP-YOG-002
DET-02828	2	4522.99	961	ALP-LEC-005
DET-02829	2	2855.56	961	ALP-BON-003
DET-02830	5	3113.71	962	ALP-LEC-001
DET-02831	1	2827.98	962	ALP-FIN-002
DET-02832	1	2758.39	962	ALP-BON-003
DET-02833	2	1746.33	963	ALP-YGY-003
DET-02834	1	1853.73	963	ALP-YGY-002
DET-02835	1	3559.74	963	ALP-YOG-005
DET-02836	5	1815.00	964	ALP-YGY-001
DET-02837	5	2356.61	964	ALP-YOG-001
DET-02838	5	1213.33	964	ALP-LEC-007
DET-02839	1	1776.96	965	ALP-YGY-002
DET-02840	2	1198.55	965	ALP-LEC-007
DET-02841	2	3922.26	966	ALP-LEC-004
DET-02842	8	2869.21	966	ALP-BON-001
DET-02843	8	3202.99	967	ALP-LEC-001
DET-02844	1	2205.35	967	ALP-YOX-002
DET-02845	1	3121.09	967	ALP-YOG-004
DET-02846	4	1847.14	968	ALP-YGY-006
DET-02847	3	3257.44	968	ALP-LEC-001
DET-02848	6	2466.60	969	ALP-YOG-001
DET-02849	4	1804.05	969	ALP-YGY-003
DET-02850	4	3186.41	969	ALP-YOG-003
DET-02851	4	2454.75	970	ALP-YOG-001
DET-02852	10	2401.89	970	ALP-YOG-002
DET-02853	2	3113.22	970	ALP-FIN-001
DET-02854	5	1530.83	971	ALP-BON-005
DET-02855	2	3177.01	971	ALP-LEC-001
DET-02856	1	3922.39	971	ALP-LEC-004
DET-02857	5	4014.01	972	ALP-LEC-002
DET-02858	4	3874.75	972	ALP-LEC-004
DET-02859	3	3131.67	972	ALP-YOG-003
DET-02860	8	3112.45	973	ALP-LEC-001
DET-02861	2	2823.91	973	ALP-BON-002
DET-02862	3	2171.50	973	ALP-YOX-002
DET-02863	4	1765.63	974	ALP-YGY-002
DET-02864	6	2864.64	974	ALP-BON-001
DET-02865	2	2833.94	974	ALP-BON-002
DET-02866	2	2810.22	975	ALP-BON-002
DET-02867	12	1174.25	975	ALP-LEC-006
DET-02868	5	1189.60	975	ALP-LEC-007
DET-02869	1	2739.09	976	ALP-BON-003
DET-02870	8	1797.79	976	ALP-YGY-002
DET-02871	3	4162.21	976	ALP-LEC-002
DET-02872	4	1808.18	976	ALP-YGY-001
DET-02873	8	3219.14	977	ALP-LEC-001
DET-02874	6	1235.90	977	ALP-LEC-007
DET-02875	2	1215.46	977	ALP-LEC-006
DET-02876	1	2207.43	978	ALP-YOX-002
DET-02877	3	3068.84	978	ALP-YOG-003
DET-02878	1	3853.69	979	ALP-LEC-004
DET-02879	2	4024.54	980	ALP-LEC-002
DET-02880	3	1827.61	981	ALP-YGY-003
DET-02881	2	2169.75	982	ALP-YOX-004
DET-02882	6	2471.32	982	ALP-YOG-001
DET-02883	4	3877.46	982	ALP-LEC-003
DET-02884	4	1230.18	982	ALP-LEC-007
DET-02885	4	1848.30	982	ALP-YGY-002
DET-02886	6	1779.73	983	ALP-YGY-002
DET-02887	4	2341.00	983	ALP-YOG-001
DET-02888	4	1182.81	983	ALP-LEC-006
DET-02889	4	4070.85	984	ALP-LEC-002
DET-02890	1	1783.94	984	ALP-YGY-004
DET-02891	2	2144.38	984	ALP-YOX-002
DET-02892	3	2444.28	985	ALP-YOG-002
DET-02893	2	2725.38	986	ALP-BON-003
DET-02894	2	2140.49	986	ALP-YOX-002
DET-02895	5	1220.56	987	ALP-LEC-007
DET-02896	3	3812.94	987	ALP-LEC-003
DET-02897	1	1799.73	987	ALP-YGY-002
DET-02898	2	1186.96	988	ALP-LEC-007
DET-02899	8	3254.00	988	ALP-LEC-001
DET-02900	2	2332.16	988	ALP-YOG-001
DET-02901	3	2859.98	988	ALP-BON-001
DET-02902	2	3136.23	989	ALP-YOG-003
DET-02903	3	2351.08	989	ALP-YOG-001
DET-02904	3	2353.19	989	ALP-YOG-002
DET-02905	3	4625.09	989	ALP-LEC-005
DET-02906	1	3138.90	990	ALP-YOG-003
DET-02907	8	2183.17	990	ALP-YOX-001
DET-02908	10	1800.36	990	ALP-YGY-001
DET-02909	12	1822.78	991	ALP-YGY-001
DET-02910	6	2737.48	991	ALP-BON-002
DET-02911	5	3137.19	991	ALP-LEC-001
DET-02912	5	1475.59	992	ALP-BON-005
DET-02913	3	2396.94	992	ALP-YOG-001
DET-02914	5	3170.38	992	ALP-LEC-001
DET-02915	3	3575.35	992	ALP-FIN-003
DET-02916	2	2724.08	992	ALP-BON-003
DET-02917	4	3828.29	993	ALP-LEC-004
DET-02918	1	2881.43	993	ALP-FIN-002
DET-02919	5	3507.83	993	ALP-YOG-005
DET-02920	3	3852.66	993	ALP-LEC-003
DET-02921	3	1847.53	993	ALP-YGY-006
DET-02922	3	2263.79	993	ALP-YOX-001
DET-02923	4	1228.88	993	ALP-LEC-006
DET-02924	4	2750.66	993	ALP-BON-001
DET-02925	1	2180.68	994	ALP-YOX-001
DET-02926	3	3910.04	994	ALP-LEC-004
DET-02927	3	4383.16	994	ALP-LEC-005
DET-02928	2	1171.48	995	ALP-LEC-006
DET-02929	2	2249.18	995	ALP-YOX-002
DET-02930	2	4501.39	995	ALP-LEC-005
DET-02931	3	2727.25	995	ALP-BON-002
DET-02932	1	3705.60	995	ALP-FIN-003
DET-02933	2	2758.74	995	ALP-FIN-002
DET-02934	4	1198.21	996	ALP-LEC-007
DET-02935	6	3190.46	996	ALP-LEC-001
DET-02936	1	1824.41	997	ALP-YGY-005
DET-02937	4	4220.09	998	ALP-LEC-002
DET-02938	6	1829.85	998	ALP-YGY-002
DET-02939	2	3149.17	998	ALP-FIN-001
DET-02940	1	2830.41	999	ALP-FIN-002
DET-02941	8	1771.12	999	ALP-YGY-001
DET-02942	1	2849.11	1000	ALP-FIN-002
DET-02943	4	1758.17	1000	ALP-YGY-002
DET-02944	1	3109.25	1000	ALP-FIN-001
DET-02945	1	2255.43	1000	ALP-YOX-002
4fe4c881bc72490da8cf9e8ff75fe5	1	3000.00	1001	ALP-BON-002
a5aad8170491497facb8c104fd54f8	4	3190.46	1002	ALP-LEC-001
\.


--
-- TOC entry 3584 (class 0 OID 16789)
-- Dependencies: 246
-- Data for Name: info_nutricional; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.info_nutricional (id_info_nutricional, id_producto, "tamaño_porcion", unidad_porcion, numero_porciones) FROM stdin;
INFO-001	ALP-LEC-001	1000.00	ml	240
INFO-002	ALP-LEC-002	1000.00	ml	240
INFO-003	ALP-LEC-003	1000.00	ml	240
INFO-004	ALP-LEC-004	1000.00	ml	240
INFO-005	ALP-LEC-005	1000.00	ml	240
INFO-006	ALP-LEC-006	200.00	ml	200
INFO-007	ALP-LEC-007	200.00	ml	200
INFO-008	ALP-BON-001	170.00	ml	170
INFO-009	ALP-BON-002	170.00	ml	170
INFO-010	ALP-BON-003	170.00	ml	170
INFO-011	ALP-BON-004	170.00	ml	170
INFO-012	ALP-BON-005	100.00	g	100
INFO-013	ALP-YGY-001	150.00	ml	150
INFO-014	ALP-YGY-002	150.00	ml	150
INFO-015	ALP-YGY-003	150.00	ml	150
INFO-016	ALP-YGY-004	150.00	ml	150
INFO-017	ALP-YGY-005	150.00	ml	150
INFO-018	ALP-YGY-006	150.00	ml	150
INFO-019	ALP-YOX-001	100.00	g	100
INFO-020	ALP-YOX-002	100.00	g	100
INFO-021	ALP-YOX-003	200.00	g	800
INFO-022	ALP-YOX-004	100.00	g	100
INFO-023	ALP-YOG-001	200.00	g	200
INFO-024	ALP-YOG-002	200.00	g	200
INFO-025	ALP-YOG-003	180.00	g	180
INFO-026	ALP-YOG-004	150.00	g	150
INFO-027	ALP-YOG-005	250.00	ml	250
INFO-028	ALP-FIN-001	170.00	ml	170
INFO-029	ALP-FIN-002	200.00	ml	200
INFO-030	ALP-FIN-003	150.00	g	150
\.


--
-- TOC entry 3583 (class 0 OID 16781)
-- Dependencies: 245
-- Data for Name: nutriente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nutriente (id_nutriente, nombre, unidad_medida) FROM stdin;
1	Calorias	kcal
2	Grasa total	g
3	Grasa saturada	g
4	Grasa trans	g
5	Carbohidratos totales	g
6	Azucares totales	g
7	Azucares adicionados	g
8	Fibra	g
9	Proteina	g
10	Sodio	mg
11	Vitamina A	mcg
12	Vitamina D	mcg
13	Hierro	mg
14	Calcio	mg
15	Zinc	mg
\.


--
-- TOC entry 3586 (class 0 OID 16800)
-- Dependencies: 248
-- Data for Name: detalle_info_nutricional; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_info_nutricional (id_detalle_nutricional, id_info_nutricional, id_nutriente, valor_100) FROM stdin;
1	INFO-001	1	60.71
2	INFO-001	2	3.32
3	INFO-001	3	2.08
4	INFO-001	4	0.00
5	INFO-001	5	4.68
6	INFO-001	6	4.70
7	INFO-001	7	0.00
8	INFO-001	8	0.00
9	INFO-001	9	3.13
10	INFO-001	10	38.74
11	INFO-001	11	28.03
12	INFO-001	12	1.01
13	INFO-001	13	0.05
14	INFO-001	14	108.41
15	INFO-001	15	0.39
16	INFO-002	1	59.46
17	INFO-002	2	3.40
18	INFO-002	3	2.04
19	INFO-002	4	0.00
20	INFO-002	5	4.68
21	INFO-002	6	5.14
22	INFO-002	7	0.00
23	INFO-002	8	0.00
24	INFO-002	9	3.24
25	INFO-002	10	42.65
26	INFO-002	11	28.32
27	INFO-002	12	0.97
28	INFO-002	13	0.05
29	INFO-002	14	113.32
30	INFO-002	15	0.38
31	INFO-003	1	33.92
32	INFO-003	2	0.10
33	INFO-003	3	0.10
34	INFO-003	4	0.00
35	INFO-003	5	4.98
36	INFO-003	6	4.97
37	INFO-003	7	0.00
38	INFO-003	8	0.00
39	INFO-003	9	3.52
40	INFO-003	10	42.08
41	INFO-003	11	20.28
42	INFO-003	12	1.00
43	INFO-003	13	0.04
44	INFO-003	14	119.49
45	INFO-003	15	0.39
46	INFO-004	1	48.29
47	INFO-004	2	1.57
48	INFO-004	3	1.03
49	INFO-004	4	0.00
50	INFO-004	5	5.00
51	INFO-004	6	4.81
52	INFO-004	7	0.00
53	INFO-004	8	0.00
54	INFO-004	9	3.11
55	INFO-004	10	40.14
56	INFO-004	11	22.97
57	INFO-004	12	1.03
58	INFO-004	13	0.04
59	INFO-004	14	118.99
60	INFO-004	15	0.40
61	INFO-005	1	65.89
62	INFO-005	2	3.41
63	INFO-005	3	1.90
64	INFO-005	4	0.00
65	INFO-005	5	4.76
66	INFO-005	6	5.10
67	INFO-005	7	0.00
68	INFO-005	8	0.00
69	INFO-005	9	3.19
70	INFO-005	10	44.02
71	INFO-005	11	49.49
72	INFO-005	12	1.91
73	INFO-005	13	1.01
74	INFO-005	14	123.34
75	INFO-005	15	1.17
76	INFO-006	1	81.49
77	INFO-006	2	2.46
78	INFO-006	3	1.57
79	INFO-006	4	0.00
80	INFO-006	5	12.31
81	INFO-006	6	10.58
82	INFO-006	7	7.80
83	INFO-006	8	0.19
84	INFO-006	9	2.87
85	INFO-006	10	56.63
86	INFO-006	11	29.03
87	INFO-006	12	1.21
88	INFO-006	13	0.30
89	INFO-006	14	106.60
90	INFO-006	15	0.41
91	INFO-007	1	81.86
92	INFO-007	2	2.54
93	INFO-007	3	1.44
94	INFO-007	4	0.00
95	INFO-007	5	11.90
96	INFO-007	6	10.68
97	INFO-007	7	7.82
98	INFO-007	8	0.21
99	INFO-007	9	3.09
100	INFO-007	10	53.92
101	INFO-007	11	31.15
102	INFO-007	12	1.17
103	INFO-007	13	0.30
104	INFO-007	14	113.90
105	INFO-007	15	0.41
106	INFO-008	1	96.00
107	INFO-008	2	2.10
108	INFO-008	3	1.26
109	INFO-008	4	0.00
110	INFO-008	5	15.61
111	INFO-008	6	14.38
112	INFO-008	7	9.83
113	INFO-008	8	0.49
114	INFO-008	9	2.87
115	INFO-008	10	47.95
116	INFO-008	11	15.12
117	INFO-008	12	0.49
118	INFO-008	13	0.20
119	INFO-008	14	98.72
120	INFO-008	15	0.40
121	INFO-009	1	104.59
122	INFO-009	2	2.00
123	INFO-009	3	1.31
124	INFO-009	4	0.00
125	INFO-009	5	16.59
126	INFO-009	6	13.56
127	INFO-009	7	9.65
128	INFO-009	8	0.52
129	INFO-009	9	3.10
130	INFO-009	10	48.75
131	INFO-009	11	14.53
132	INFO-009	12	0.51
133	INFO-009	13	0.21
134	INFO-009	14	96.97
135	INFO-009	15	0.42
136	INFO-010	1	103.82
137	INFO-010	2	2.02
138	INFO-010	3	1.29
139	INFO-010	4	0.00
140	INFO-010	5	15.37
141	INFO-010	6	13.35
142	INFO-010	7	10.46
143	INFO-010	8	0.49
144	INFO-010	9	3.06
145	INFO-010	10	48.78
146	INFO-010	11	15.49
147	INFO-010	12	0.50
148	INFO-010	13	0.20
149	INFO-010	14	96.75
150	INFO-010	15	0.41
151	INFO-011	1	95.69
152	INFO-011	2	1.95
153	INFO-011	3	1.31
154	INFO-011	4	0.00
155	INFO-011	5	16.56
156	INFO-011	6	14.16
157	INFO-011	7	9.78
158	INFO-011	8	0.52
159	INFO-011	9	2.91
160	INFO-011	10	47.58
161	INFO-011	11	14.65
162	INFO-011	12	0.50
163	INFO-011	13	0.19
164	INFO-011	14	96.76
165	INFO-011	15	0.39
166	INFO-012	1	100.72
167	INFO-012	2	1.93
168	INFO-012	3	1.28
169	INFO-012	4	0.00
170	INFO-012	5	16.63
171	INFO-012	6	14.67
172	INFO-012	7	10.16
173	INFO-012	8	0.51
174	INFO-012	9	3.03
175	INFO-012	10	48.20
176	INFO-012	11	14.30
177	INFO-012	12	0.48
178	INFO-012	13	0.21
179	INFO-012	14	102.01
180	INFO-012	15	0.42
181	INFO-013	1	71.41
182	INFO-013	2	1.52
183	INFO-013	3	1.00
184	INFO-013	4	0.00
185	INFO-013	5	12.28
186	INFO-013	6	10.80
187	INFO-013	7	9.45
188	INFO-013	8	0.00
189	INFO-013	9	2.68
190	INFO-013	10	45.21
191	INFO-013	11	12.28
192	INFO-013	12	0.42
193	INFO-013	13	0.10
194	INFO-013	14	91.83
195	INFO-013	15	0.31
196	INFO-014	1	78.11
197	INFO-014	2	1.48
198	INFO-014	3	1.02
199	INFO-014	4	0.00
200	INFO-014	5	12.48
201	INFO-014	6	11.41
202	INFO-014	7	8.93
203	INFO-014	8	0.00
204	INFO-014	9	2.88
205	INFO-014	10	46.64
206	INFO-014	11	12.09
207	INFO-014	12	0.40
208	INFO-014	13	0.10
209	INFO-014	14	90.74
210	INFO-014	15	0.30
211	INFO-015	1	71.85
212	INFO-015	2	1.52
213	INFO-015	3	1.05
214	INFO-015	4	0.00
215	INFO-015	5	12.46
216	INFO-015	6	11.25
217	INFO-015	7	8.90
218	INFO-015	8	0.00
219	INFO-015	9	2.87
220	INFO-015	10	45.36
221	INFO-015	11	11.93
222	INFO-015	12	0.41
223	INFO-015	13	0.10
224	INFO-015	14	92.25
225	INFO-015	15	0.29
226	INFO-016	1	75.76
227	INFO-016	2	1.50
228	INFO-016	3	0.97
229	INFO-016	4	0.00
230	INFO-016	5	12.24
231	INFO-016	6	11.00
232	INFO-016	7	9.10
233	INFO-016	8	0.00
234	INFO-016	9	2.92
235	INFO-016	10	43.90
236	INFO-016	11	11.41
237	INFO-016	12	0.39
238	INFO-016	13	0.10
239	INFO-016	14	87.32
240	INFO-016	15	0.29
241	INFO-017	1	78.04
242	INFO-017	2	1.52
243	INFO-017	3	0.99
244	INFO-017	4	0.00
245	INFO-017	5	12.47
246	INFO-017	6	10.81
247	INFO-017	7	9.15
248	INFO-017	8	0.00
249	INFO-017	9	2.72
250	INFO-017	10	44.69
251	INFO-017	11	12.37
252	INFO-017	12	0.42
253	INFO-017	13	0.10
254	INFO-017	14	88.96
255	INFO-017	15	0.30
256	INFO-018	1	73.62
257	INFO-018	2	1.45
258	INFO-018	3	1.00
259	INFO-018	4	0.00
260	INFO-018	5	12.40
261	INFO-018	6	11.38
262	INFO-018	7	9.19
263	INFO-018	8	0.00
264	INFO-018	9	2.93
265	INFO-018	10	44.00
266	INFO-018	11	11.60
267	INFO-018	12	0.40
268	INFO-018	13	0.10
269	INFO-018	14	87.43
270	INFO-018	15	0.30
271	INFO-019	1	65.82
272	INFO-019	2	1.20
273	INFO-019	3	0.79
274	INFO-019	4	0.00
275	INFO-019	5	10.34
276	INFO-019	6	9.43
277	INFO-019	7	5.97
278	INFO-019	8	0.00
279	INFO-019	9	2.87
280	INFO-019	10	38.13
281	INFO-019	11	10.37
282	INFO-019	12	0.38
283	INFO-019	13	0.10
284	INFO-019	14	95.67
285	INFO-019	15	0.39
286	INFO-020	1	66.89
287	INFO-020	2	1.14
288	INFO-020	3	0.77
289	INFO-020	4	0.00
290	INFO-020	5	9.95
291	INFO-020	6	8.57
292	INFO-020	7	6.20
293	INFO-020	8	0.00
294	INFO-020	9	2.92
295	INFO-020	10	38.56
296	INFO-020	11	9.55
297	INFO-020	12	0.41
298	INFO-020	13	0.10
299	INFO-020	14	96.23
300	INFO-020	15	0.41
301	INFO-021	1	67.00
302	INFO-021	2	1.26
303	INFO-021	3	0.81
304	INFO-021	4	0.00
305	INFO-021	5	9.70
306	INFO-021	6	8.98
307	INFO-021	7	5.81
308	INFO-021	8	0.00
309	INFO-021	9	2.85
310	INFO-021	10	39.89
311	INFO-021	11	10.21
312	INFO-021	12	0.39
313	INFO-021	13	0.10
314	INFO-021	14	93.53
315	INFO-021	15	0.41
316	INFO-022	1	65.13
317	INFO-022	2	1.21
318	INFO-022	3	0.82
319	INFO-022	4	0.00
320	INFO-022	5	9.89
321	INFO-022	6	9.26
322	INFO-022	7	6.24
323	INFO-022	8	0.00
324	INFO-022	9	2.88
325	INFO-022	10	41.73
326	INFO-022	11	10.22
327	INFO-022	12	0.39
328	INFO-022	13	0.10
329	INFO-022	14	96.19
330	INFO-022	15	0.42
331	INFO-023	1	79.01
332	INFO-023	2	2.52
333	INFO-023	3	1.66
334	INFO-023	4	0.00
335	INFO-023	5	11.33
336	INFO-023	6	10.44
337	INFO-023	7	6.97
338	INFO-023	8	0.30
339	INFO-023	9	3.11
340	INFO-023	10	46.00
341	INFO-023	11	18.57
342	INFO-023	12	0.51
343	INFO-023	13	0.10
344	INFO-023	14	106.85
345	INFO-023	15	0.42
346	INFO-024	1	83.84
347	INFO-024	2	2.62
348	INFO-024	3	1.61
349	INFO-024	4	0.00
350	INFO-024	5	11.32
351	INFO-024	6	9.82
352	INFO-024	7	7.29
353	INFO-024	8	0.31
354	INFO-024	9	3.15
355	INFO-024	10	43.12
356	INFO-024	11	17.89
357	INFO-024	12	0.50
358	INFO-024	13	0.10
359	INFO-024	14	109.86
360	INFO-024	15	0.38
361	INFO-025	1	72.16
362	INFO-025	2	1.91
363	INFO-025	3	1.34
364	INFO-025	4	0.00
365	INFO-025	5	3.87
366	INFO-025	6	3.44
367	INFO-025	7	0.00
368	INFO-025	8	0.00
369	INFO-025	9	8.23
370	INFO-025	10	48.20
371	INFO-025	11	9.65
372	INFO-025	12	0.30
373	INFO-025	13	0.10
374	INFO-025	14	103.40
375	INFO-025	15	0.51
376	INFO-026	1	73.12
377	INFO-026	2	2.00
378	INFO-026	3	1.36
379	INFO-026	4	0.00
380	INFO-026	5	3.83
381	INFO-026	6	3.40
382	INFO-026	7	0.00
383	INFO-026	8	0.00
384	INFO-026	9	8.02
385	INFO-026	10	48.95
386	INFO-026	11	10.23
387	INFO-026	12	0.30
388	INFO-026	13	0.10
389	INFO-026	14	103.44
390	INFO-026	15	0.50
391	INFO-027	1	73.59
392	INFO-027	2	1.48
393	INFO-027	3	0.31
394	INFO-027	4	0.00
395	INFO-027	5	13.52
396	INFO-027	6	5.82
397	INFO-027	7	3.11
398	INFO-027	8	1.26
399	INFO-027	9	2.51
400	INFO-027	10	40.29
401	INFO-027	11	7.76
402	INFO-027	12	0.30
403	INFO-027	13	0.40
404	INFO-027	14	90.95
405	INFO-027	15	0.29
406	INFO-028	1	94.22
407	INFO-028	2	1.50
408	INFO-028	3	0.79
409	INFO-028	4	0.00
410	INFO-028	5	14.42
411	INFO-028	6	9.06
412	INFO-028	7	5.99
413	INFO-028	8	1.02
414	INFO-028	9	3.83
415	INFO-028	10	50.19
416	INFO-028	11	11.90
417	INFO-028	12	0.42
418	INFO-028	13	0.31
419	INFO-028	14	97.69
420	INFO-028	15	0.40
421	INFO-029	1	52.95
422	INFO-029	2	0.79
423	INFO-029	3	0.21
424	INFO-029	4	0.00
425	INFO-029	5	9.36
426	INFO-029	6	3.99
427	INFO-029	7	0.98
428	INFO-029	8	0.97
429	INFO-029	9	2.02
430	INFO-029	10	36.49
431	INFO-029	11	5.78
432	INFO-029	12	0.21
433	INFO-029	13	0.29
434	INFO-029	14	77.55
435	INFO-029	15	0.19
436	INFO-030	1	56.03
437	INFO-030	2	0.00
438	INFO-030	3	0.00
439	INFO-030	4	0.00
440	INFO-030	5	3.93
441	INFO-030	6	0.00
442	INFO-030	7	0.00
443	INFO-030	8	0.00
444	INFO-030	9	9.86
445	INFO-030	10	55.66
446	INFO-030	11	4.80
447	INFO-030	12	0.20
448	INFO-030	13	0.10
449	INFO-030	14	110.12
450	INFO-030	15	0.49
\.


--
-- TOC entry 3571 (class 0 OID 16610)
-- Dependencies: 233
-- Data for Name: materia_prima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materia_prima (id_insumo, nombre, unidad_medida, demanda_diaria) FROM stdin;
MP-LAC-001	Leche cruda entera	L	45000
MP-LAC-002	Leche en polvo entera	kg	4500
MP-LAC-003	Leche en polvo descremada	kg	3800
MP-LAC-004	Crema de leche (grasa butírica)	kg	2200
MP-LAC-005	Suero de leche en polvo	kg	1800
MP-LAC-006	Caseína en polvo	kg	1200
MP-LAC-007	Lactosa en polvo	kg	900
MP-LAC-008	Enzima lactasa líquida	L	600
MP-CUL-001	Cultivo Streptococcus thermophilus	g	180
MP-CUL-002	Cultivo Lactobacillus bulgaricus	g	160
MP-CUL-003	Cultivo Lactobacillus gasseri	g	140
MP-CUL-004	Cultivo Lactobacillus coryniformis	g	130
MP-CUL-005	Cultivo Bifidobacterium lactis Bb12	g	120
MP-AZU-001	Azúcar refinada blanca	kg	6000
MP-AZU-002	Jarabe de fructosa 55%	kg	2500
MP-AZU-003	Estevia en polvo	kg	300
MP-AZU-004	Sucralosa	kg	150
MP-AZU-005	Dextrosa monohidrato	kg	800
MP-EST-001	Almidón modificado de maíz	kg	1400
MP-EST-002	Gelatina sin sabor en polvo	kg	550
MP-EST-003	Pectina cítrica	kg	400
MP-EST-004	Carragenina Kappa	kg	300
MP-EST-005	Goma xantana	kg	220
MP-EST-006	Sorbato de potasio	kg	190
MP-FRU-001	Pulpa de fresa congelada	kg	1200
MP-FRU-002	Pulpa de mora congelada	kg	1000
MP-FRU-003	Pulpa de melocotón congelada	kg	850
MP-FRU-004	Pulpa de maracuyá congelada	kg	700
MP-FRU-005	Pulpa de lulo congelada	kg	620
MP-FRU-006	Pulpa de uva concentrada	kg	550
MP-FRU-007	Pulpa de durazno congelada	kg	500
MP-FRU-008	Mezcla frutos rojos congelada	kg	750
MP-SAB-001	Saborizante de vainilla	kg	200
MP-SAB-002	Saborizante de chocolate	kg	270
MP-SAB-003	Saborizante de multifrutas	kg	170
MP-SAB-004	Colorante rojo Allura No. 40	kg	100
MP-VIT-001	Vitamina A (acetato de retinol)	g	90
MP-VIT-002	Vitamina D3 (colecalciferol)	g	75
MP-VIT-003	Carbonato de calcio	kg	800
MP-VIT-004	Vitamina B2 (riboflavina)	g	60
MP-CER-001	Avena en hojuelas	kg	2500
MP-CER-002	Fibra soluble inulina	kg	550
MP-CER-003	Granola tostada	kg	1000
MP-CER-004	Mezcla de cereales Müsli	kg	850
MP-EMP-001	Bolsa polietileno leche 1L	unid	180000
MP-EMP-002	Envase Tetra Pack 200ml	unid	220000
MP-EMP-003	Envase Tetra Pack 1L	unid	110000
MP-EMP-004	Vaso PET 150ml con tapa	unid	150000
MP-EMP-005	Vaso PET 170ml con tapa	unid	130000
MP-EMP-006	Etiqueta autoadhesiva BOPP	unid	380000
\.


--
-- TOC entry 3552 (class 0 OID 16399)
-- Dependencies: 214
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor (id_proveedor, tipo_id, nombre, habeas_data, ciudad, direccion_op, direccion_res, telefono, email, representante, tipo_regimen, rut, tiempo_entrega, persona_comercial, tipo_proveedor, persona_cartera, persona_logistica, num_dias_pago, calificacion, id_cuenta) FROM stdin;
PROV-001	NIT	Lácteos y Derivados del Norte S.A.S.	t	Bogotá	Calle 80 #68-15, Zona Industrial Puente Aranda	Carrera 50 #120-30, Usaquén	+57 1 4521300	contacto@lacteosnorte.com.co	Roberto Gómez Herrera	Régimen común	RUT-800123456-1	3	Sandra Milena Torres	Proveedor de materias primas	Carlos Andrés Mejía	Juliana Ríos Vargas	30	4	CTA-PROV-001
PROV-002	NIT	Empaques Flexibles Andinos Ltda.	t	Medellín	Calle 10 Sur #43-12, Industriales	Cra 65 #32B-20, Laureles	+57 4 4442210	ventas@empaquesandinos.com	Miguel Ángel Restrepo	Régimen común	RUT-900234567-2	5	Viviana Castillo	Proveedor de empaques	Jorge Iván Duque	Lorena Patiño Ortiz	45	5	CTA-PROV-002
PROV-003	NIT	Azúcar Refinada del Valle S.A.	t	Cali	Autopista Sur #15-40, Parque Industrial Acopi	Av. 6N #23-40, Santa Mónica	+57 2 6612500	pedidos@azucarvallesur.com	Luisa Fernanda Caicedo	Gran contribuyente	RUT-860045678-3	2	Hernán Morales	Proveedor de insumos	Diana Ospina	Mauricio Salazar Ríos	60	5	CTA-PROV-003
PROV-004	NIT	Grasas Vegetales Colombianas S.A.	t	Bogotá	Cra 68D #17-45, Fontibón	Calle 134 #9-24, Cedritos	+57 1 4108700	info@grasvecol.com.co	Felipe Rojas Arango	Régimen común	RUT-830056789-4	4	Pilar Montoya	Proveedor de materias primas	Andrés Felipe León	Sandra Bohórquez	30	4	CTA-PROV-004
PROV-005	NIT	Plásticos Técnicos de Colombia S.A.S.	t	Bogotá	Calle 13 #50-15, Zona Franca Fontibón	Carrera 11 #93-52, Chicó Norte	+57 1 4225980	comercial@plasticostecnicos.com	Alejandro Martínez Vela	Régimen común	RUT-900167890-5	7	Carolina Suárez	Proveedor de empaques	Ramiro Cárdenas	María Eugenia Vargas	30	3	CTA-PROV-005
PROV-006	NIT	Frutas y Pulpas del Huila S.A.S.	t	Neiva	Cra 3 #20-10, Zona Industrial	Calle 17 #4-25, El Paraíso	+57 8 8710234	gerencia@frutashuila.com	Claudia Patricia Fierro	Régimen simplificado	RUT-901278901-6	1	David Camargo	Proveedor de materias primas	Sofía Trujillo	Edgar Polanco Peña	15	4	CTA-PROV-006
PROV-007	NIT	Cartones y Papeles del Pacífico S.A.	t	Cali	Diagonal 36 #3-49, Acopi Yumbo	Av. 8N #14-35, Granada	+57 2 6524112	contacto@cartonpacifico.com	Bernardo Lozano Ángel	Régimen común	RUT-800389012-7	6	Natalia Gómez	Proveedor de empaques	Hugo Pedraza	Viviana Ríos Castro	45	4	CTA-PROV-007
PROV-008	NIT	Servicios Logísticos Integrados S.A.S.	t	Bogotá	Calle 24 #68C-55, Zona Industrial Puente Aranda	Cra 7 #145-20, Toberín	+57 1 5920108	logistica@sli-col.com	Patricia Herrera Mendoza	Régimen común	RUT-900490123-8	1	Gustavo Alvarado	Proveedor de servicios	Isabel Córdoba	Fabio Mosquera Palomino	30	5	CTA-PROV-008
PROV-009	NIT	Suministros Industriales del Eje Cafetero S.A.S.	t	Manizales	Cra 23 #74-52, La Enea	Calle 50 #23-15, Palermo	+57 6 8812345	pedidos@sumieje.com.co	Álvaro Toro Muñoz	Régimen simplificado	RUT-800501234-9	3	Camila Hincapié	Proveedor de insumos	Ricardo Soto	Beatriz Elena Arrubla	30	3	CTA-PROV-009
PROV-010	NIT	Aditivos Alimentarios Andinos S.A.	t	Bogotá	Cra 50 #22-15, Álamos	Calle 116 #15-12, Usaquén	+57 1 4107654	ventas@addfoods.com.co	Marcela Fuentes Nieto	Régimen común	RUT-830612345-0	5	Luis Enrique Aya	Proveedor de materias primas	Constanza Navarro	Jairo Rojas Espinosa	45	4	CTA-PROV-010
PROV-011	NIT	Agropecuaria Los Nevados S.A.S.	t	Pereira	Vereda El Manzano Km 3, vía La Virginia	Calle 15 #8-40, Centro	+57 6 3214589	leche@nevados.com.co	Jorge Hernán Echeverry	Régimen simplificado	RUT-901723456-1	1	Manuela Tobón	Proveedor de materias primas	Felipe Ospina	Ana Lucía Bedoya	15	5	CTA-PROV-011
PROV-012	NIT	Ferroviaria y Transporte del Norte S.A.	t	Bucaramanga	Calle 44 #26-33, Zona Industrial Rionegro	Cra 27 #100-15, Lagos 2	+57 7 6454321	gerencia@ferronorte.com	Luis Gabriel Mantilla	Régimen común	RUT-891834567-2	2	Milena García	Proveedor de servicios	Oscar Carvajal	Laura Alejandra Pinzón	30	3	CTA-PROV-012
PROV-013	NIT	Etiquetas y Rotulados Industriales S.A.S.	t	Medellín	Cra 52 #12-20, Guayabal Industrial	Calle 34 #70-15, Envigado	+57 4 4441127	info@etiquetascol.com	Susana Oquendo Jaramillo	Régimen común	RUT-900945678-3	4	Sebastián Cano	Proveedor de empaques	Alejandra Upegui	Nicolás Velásquez	30	4	CTA-PROV-013
PROV-014	NIT	Consultora en Calidad e Inocuidad S.A.S.	t	Bogotá	Calle 93 #13-24, Oficina 501, Chico	Cra 15 #88-64, Rosales	+57 1 6217890	contacto@calidad-col.com	Ximena Pedraza Rondón	Régimen común	RUT-900056789-4	0	Johanna Méndez	Proveedor de servicios	Carlos Lleras	María Victoria Bonilla	30	5	CTA-PROV-014
PROV-015	NIT	Mantenimiento y Montajes Industriales S.A.	t	Bogotá	Calle 26 #96-60, Centro Empresarial La Esperanza	Cra 9 #76-49, Quinta Camacho	+57 1 4284567	mm@mmi-col.com.co	Gonzalo Castaño Ríos	Régimen común	RUT-800167890-5	0	Valentina Cruz	Proveedor de servicios	Rodrigo Montaño	Claudia Beatriz Gómez	45	4	CTA-PROV-015
PROV-016	NIT	Cultivos Orgánicos de Boyacá S.A.S.	t	Tunja	Vereda Toca, vía Paipa Km 7	Calle 18 #10-35, Centro	+57 8 7402134	ventas@organicoboyaca.com	Yolanda Castellanos Caro	Régimen simplificado	RUT-901278902-6	2	Diego Quintero	Proveedor de materias primas	Hernando Acosta	Marta Cecilia Duarte	15	5	CTA-PROV-016
PROV-017	NIT	Químicos Especiales de Colombia S.A.	t	Bogotá	Carrera 68B #14-09, Puente Aranda	Calle 109 #15-57, Multicentro	+57 1 4232010	pedidos@quimcol.com	Ernesto Varón Castillo	Gran contribuyente	RUT-800289003-7	5	Nubia Romero	Proveedor de insumos	Germán Quiroz	Ingrid Carolina Blanco	60	4	CTA-PROV-017
PROV-018	NIT	Refrigeración y Frío Industrial del Caribe S.A.S.	t	Barranquilla	Cra 46 #74-55, Riomar Industrial	Calle 84 #46-30, El Prado	+57 5 3581220	contacto@friocaribe.com	Enrique de la Hoz Meza	Régimen común	RUT-891390124-8	3	Liliana Barros	Proveedor de servicios	Iván Díaz Pertuz	Claudia Insignares	30	3	CTA-PROV-018
PROV-019	NIT	Agropecuaria La Sabana S.A.	t	Cajicá	Km 8 vía Cajicá-Chía, Finca La Esperanza	Calle 5 #3-20, Centro Cajicá	+57 1 8586210	sabana@agrosabanacol.com	Marleny Rodríguez Pérez	Régimen simplificado	RUT-901501235-9	1	Paula Cifuentes	Proveedor de materias primas	Arturo Vargas	Libia Serrano Mora	15	5	CTA-PROV-019
PROV-020	NIT	Tecnología y Automatización Industrial S.A.S.	t	Bogotá	Cra 30 #17-32, Parque Ind. Montevideo	Calle 127 #20-26, Santa Bárbara	+57 1 6430087	info@tecautocol.com	Juan Pablo Forero Vélez	Régimen común	RUT-901612346-0	10	Stephany Leal	Proveedor de servicios	Nelson Cardozo	Paola Andrea Guerrero	45	4	CTA-PROV-020
PROV-021	NIT	Productora Láctea de Nariño S.A.S.	t	Pasto	Cra 27 #18-50, Parque Industrial Jamondino	Calle 14 #32-18, El Dorado	+57 2 7234890	leche@prodlacnari.com	Carmen Rosa Bravo Muñoz	Régimen simplificado	RUT-901723457-1	1	Eliana Chaves	Proveedor de materias primas	Freddy Bastidas	Sandra Patricia Guerrero	15	4	CTA-PROV-021
PROV-022	NIT	Corchos y Tapas del Magdalena S.A.S.	t	Barranquilla	Cra 53 #68-45, Zona Industrial Barranquilla	Cra 53 #75-10, Alto Prado	+57 5 3692810	ventas@tapamag.com	Rafael Obregón Padilla	Régimen común	RUT-890834568-2	6	Lorena De La Cruz	Proveedor de empaques	William Sarmiento	Camila Orozco Amador	30	3	CTA-PROV-022
PROV-023	NIT	Distribuidora de Almidones S.A.	t	Bogotá	Cra 80 #36A-50, Zona Industrial Kennedy	Cra 19 #104-22, Chicó Norte	+57 1 4156730	almidones@distalma.com.co	Inés Amparo Caro Torres	Régimen común	RUT-800445679-3	4	Julián Sandoval	Proveedor de materias primas	Ernesto Zamudio	Pilar Andrea Herrera	45	4	CTA-PROV-023
PROV-024	NIT	Publicidad y Señalización Visual S.A.S.	t	Medellín	Calle 44 #79-65, Castilla	Cra 43A #34-95, El Poblado	+57 4 4449900	info@publivis.com	Tatiana Moreno Ríos	Régimen simplificado	RUT-901056780-4	8	Mariana Betancur	Proveedor de servicios	Jhon Edier Mejía	Yolanda Agudelo	30	3	CTA-PROV-024
PROV-025	NIT	Laboratorios Microbiológicos del Centro S.A.	t	Bogotá	Calle 72 #9-71, Oficina 404, Quinta Camacho	Cra 7 #145-75, Multicentro	+57 1 3175640	laboratorio@labmicro.com.co	Adriana Milena Castro	Régimen común	RUT-830567891-5	0	Fabián Montoya	Proveedor de servicios	Alfredo Gutiérrez	Patricia Escobar Villamil	30	5	CTA-PROV-025
PROV-026	NIT	Transporte Especializado en Cadena de Frío S.A.	t	Bogotá	Calle 170 #19-60, Zona Industrial Suba	Av. Boyacá #129-43, Suba	+57 1 6665432	frio@transportefrio.com.co	Édgar Murillo Castro	Régimen común	RUT-800678902-6	1	Diana Fonseca	Proveedor de servicios	Fabio Niño	Esperanza Romero Leal	30	5	CTA-PROV-026
PROV-027	NIT	Nutrición Animal y Bienestar Bovino S.A.S.	t	Villavicencio	Km 12 vía Villavicencio-Cumaral, Parque Agroind.	Calle 37 #32-60, La Grama	+57 8 6630912	nutribov@nabcol.com	Nelson García Plazas	Régimen simplificado	RUT-901689013-7	3	Mónica Rincón	Proveedor de insumos	Henry Granados	Cecilia Burgos Morales	15	4	CTA-PROV-027
PROV-028	NIT	Tintas y Pigmentos de Colombia S.A.	t	Cali	Cra 1 #36-60, Parque Industrial Acopi	Av. 4N #22-12, Santa Teresita	+57 2 6677080	tintas@tipicol.com.co	Cristina Aragón Salcedo	Régimen común	RUT-830790124-8	7	Samuel Medina	Proveedor de insumos	Orlando Caicedo	Ximena Andrade Molina	45	4	CTA-PROV-028
PROV-029	NIT	Seguridad Industrial y EPP Colombia S.A.S.	t	Bogotá	Cra 65 #12B-40, Zona Ind. Álamos Norte	Calle 90 #11-23, Chicó Reservado	+57 1 5548901	epp@seguridadepp.com.co	Guillermo Pinto Montoya	Régimen común	RUT-901801235-9	5	Lina Pachón	Proveedor de insumos	Rubén Muñoz	Diana Paola Castañeda	30	4	CTA-PROV-029
PROV-030	NIT	Cooperativa Lechera de Cundinamarca - Coolechera	t	Facatativá	Cra 5 #3-10, Zona Rural Vereda Tierra Grata	Calle 10 #8-22, Centro Facatativá	+57 1 8920456	gerencia@coolechera.coop	Jorge Alirio Vargas Fajardo	Régimen especial	RUT-860901236-0	1	Nohora Espitia	Proveedor de materias primas	Luis Fernando Roa	Alba Stella Quiroga	15	5	CTA-PROV-030
\.


--
-- TOC entry 3573 (class 0 OID 16617)
-- Dependencies: 235
-- Data for Name: orden_pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orden_pedido (num_orden, id_proveedor, fecha_pedido, lugar_entrega, estado) FROM stdin;
1	PROV-001	2026-01-05	Planta Alpina Sopo	Aprobado
2	PROV-003	2026-01-08	Planta Alpina Caloto	Entregado
3	PROV-006	2026-01-12	Planta Alpina Entrerríos	En proceso
4	PROV-001	2026-01-15	Planta Alpina Sopo	Entregado
5	PROV-010	2026-01-18	Planta Alpina Facatativá	Pendiente
6	PROV-011	2026-01-22	Planta Alpina Sopo	Aprobado
7	PROV-016	2026-01-25	Planta Alpina Caloto	Entregado
8	PROV-019	2026-02-01	Planta Alpina Sopo	En proceso
9	PROV-021	2026-02-04	Planta Alpina Facatativa	Pendiente
10	PROV-023	2026-02-07	Planta Alpina Caloto	Aprobado
11	PROV-030	2026-02-10	Planta Alpina Sopo	Entregado
12	PROV-004	2026-02-14	Planta Alpina Entrerrios	Cancelado
13	PROV-017	2026-02-18	Planta Alpina Facatativa	En proceso
14	PROV-009	2026-02-21	Planta Alpina Caloto	Aprobado
15	PROV-027	2026-02-25	Planta Alpina Sopo	Pendiente
16	PROV-005	2026-03-02	Planta Alpina Facatativa	Entregado
17	PROV-007	2026-03-05	Planta Alpina Caloto	En proceso
18	PROV-013	2026-03-09	Planta Alpina Sopo	Aprobado
19	PROV-022	2026-03-13	Planta Alpina Entrerrios	Pendiente
20	PROV-026	2026-03-18	Planta Alpina Facatativa	Entregado
\.


--
-- TOC entry 3574 (class 0 OID 16630)
-- Dependencies: 236
-- Data for Name: detalle_pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_pedido (num_orden, id_insumo, cantidad, precio_unitario) FROM stdin;
1	MP-CER-001	487	4250.50
2	MP-LAC-008	132	7850.00
3	MP-LAC-002	745	3120.75
4	MP-AZU-005	268	9650.20
5	MP-AZU-003	591	5480.90
6	MP-AZU-002	324	2875.40
7	MP-CUL-001	879	11200.00
8	MP-LAC-007	456	6340.15
9	MP-SAB-003	213	4510.80
10	MP-LAC-006	667	7290.60
11	MP-VIT-002	389	3985.25
12	MP-FRU-004	924	8450.75
13	MP-LAC-003	178	2760.30
14	MP-EMP-004	532	5890.10
15	MP-EMP-006	301	9180.45
16	MP-AZU-001	798	3375.65
17	MP-EMP-001	244	6625.00
18	MP-SAB-001	615	4815.90
19	MP-VIT-001	352	7560.35
20	MP-EMP-003	941	5230.55
\.


--
-- TOC entry 3580 (class 0 OID 16700)
-- Dependencies: 242
-- Data for Name: transporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transporte (id_transporte, placa, tipo_vehiculo, capacidad_carga, conductor) FROM stdin;
TRANS-001	MUB181	Camioneta	1447.87	Gilberto Leonel Sánchez
TRANS-002	QGB166	Camioneta	1082.79	Alberto Gómez Forero
TRANS-003	RNB913	Camion	4203.32	Jefferson Carlos Salas
TRANS-004	SSM030	Furgon refrigerado	3869.27	Karen Gutiérrez Cruz
TRANS-005	JNE819	Furgon refrigerado	3646.17	Flor Carmen Rodríguez Serna
TRANS-006	VFD993	Camioneta	1060.26	Camila Paola Mejía Sanabria
TRANS-007	WCS093	Camioneta	597.43	Laura Medina Rivera
TRANS-008	NYK797	Tracto-camion	16164.80	Miguel Muñoz
TRANS-009	ZFW319	Camioneta	799.77	Rosario Nora Suárez
TRANS-010	KXO491	Camioneta	1025.20	Cecilia María Londoño Morales
TRANS-011	FYK276	Camion	5559.66	María Mora
TRANS-012	CYR955	Camion	7810.10	Julio Geovanny Ruiz Rodríguez
TRANS-013	SZO114	Camioneta	1094.37	Consuelo Bravo
TRANS-014	CBX497	Tracto-camion	16364.50	José Pinto González
TRANS-015	VLA752	Camioneta	1216.63	Luz Paula Prieto
TRANS-016	BGY423	Furgon refrigerado	1792.74	Álvaro Fernando Arias Díaz
TRANS-017	PCF768	Tracto-camion	12691.40	Fernando Mendoza Yepes
TRANS-018	NRI656	Camioneta	1383.38	Jeison Gustavo Rodríguez Pérez
\.


--
-- TOC entry 3581 (class 0 OID 16707)
-- Dependencies: 243
-- Data for Name: distribucion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.distribucion (id_distribucion, fecha_salida, fecha_entrega, estado, ruta, id_transporte, id_factura) FROM stdin;
DIST-00001	2025-06-23 11:15:00	2025-06-23 12:55:00	Entregado	Sopó → Cajicá	TRANS-013	1
DIST-00002	2025-06-23 17:49:00	2025-06-23 19:31:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	2
DIST-00003	2025-06-24 05:38:00	2025-06-24 07:26:00	Entregado	Sopó → Tocancipá	TRANS-001	3
DIST-00004	2025-06-24 13:11:00	2025-06-24 18:25:00	Entregado	Sopó → Medellín	TRANS-007	4
DIST-00005	2025-06-24 21:07:00	2025-06-25 04:49:00	Entregado	Sopó → Cali	TRANS-012	5
DIST-00006	2025-06-25 04:17:00	2025-06-25 12:08:00	Entregado	Sopó → Manizales	TRANS-005	6
DIST-00007	2025-06-25 12:50:00	2025-06-25 14:50:00	Entregado	Sopó → Chía	TRANS-004	7
DIST-00008	2025-06-26 00:13:00	2025-06-26 02:50:00	Entregado	Sopó → Briceño	TRANS-015	8
DIST-00009	2025-06-26 07:16:00	2025-06-26 15:08:00	Entregado	Sopó → Manizales	TRANS-013	9
DIST-00010	2025-06-26 17:51:00	2025-06-27 07:01:00	Entregado	Sopó → Santa Marta	TRANS-017	10
DIST-00011	2025-06-27 04:14:00	2025-06-27 06:47:00	Entregado	Sopó → Briceño	TRANS-006	11
DIST-00012	2025-06-27 11:48:00	2025-06-27 14:47:00	Entregado	Sopó → Briceño	TRANS-010	12
DIST-00013	2025-06-27 21:48:00	2025-06-28 05:10:00	Entregado	Sopó → Villavicencio	TRANS-004	13
DIST-00014	2025-06-28 04:43:00	2025-06-28 07:55:00	Entregado	Sopó → La Calera	TRANS-005	14
DIST-00015	2025-06-28 10:42:00	2025-06-28 18:00:00	Entregado	Sopó → Manizales	TRANS-016	15
DIST-00016	2025-06-28 23:11:00	2025-06-29 01:00:00	Entregado	Sopó → Bogotá D.C.	TRANS-007	16
DIST-00017	2025-06-29 04:56:00	2025-06-29 07:26:00	Entregado	Sopó → Gachancipá	TRANS-002	17
DIST-00018	2025-06-29 14:15:00	2025-06-29 16:47:00	Entregado	Sopó → Tocancipá	TRANS-018	18
DIST-00019	2025-06-29 22:02:00	2025-06-30 12:27:00	Entregado	Sopó → Cartagena	TRANS-014	19
DIST-00020	2025-06-30 07:47:00	2025-06-30 09:38:00	Entregado	Sopó → Cajicá	TRANS-009	20
DIST-00021	2025-06-30 18:35:00	2025-07-01 02:09:00	Entregado	Sopó → Bucaramanga	TRANS-005	21
DIST-00022	2025-07-01 04:23:00	2025-07-01 13:16:00	Entregado	Sopó → Medellín	TRANS-002	22
DIST-00023	2025-07-01 10:38:00	2025-07-01 16:09:00	Entregado	Sopó → Ibagué	TRANS-001	23
DIST-00024	2025-07-01 19:36:00	2025-07-01 21:22:00	Entregado	Sopó → Chía	TRANS-007	24
DIST-00025	2025-07-02 02:40:00	2025-07-02 05:04:00	En camino	Sopó → Cajicá	TRANS-018	25
DIST-00026	2025-07-02 11:39:00	2025-07-03 03:41:00	Entregado	Sopó → Pasto	TRANS-003	26
DIST-00027	2025-07-02 23:55:00	2025-07-03 03:53:00	Entregado	Sopó → Chía	TRANS-002	27
DIST-00028	2025-07-03 04:56:00	2025-07-03 11:38:00	Entregado	Sopó → Medellín	TRANS-005	28
DIST-00029	2025-07-03 13:18:00	2025-07-04 16:30:00	Entregado	Sopó → Cartagena	TRANS-011	29
DIST-00030	2025-07-03 23:26:00	2025-07-04 02:32:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	30
DIST-00031	2025-07-04 11:14:00	2025-07-05 04:55:00	Entregado	Sopó → Pasto	TRANS-017	31
DIST-00032	2025-07-04 18:38:00	2025-07-05 02:41:00	Entregado	Sopó → Pereira	TRANS-016	32
DIST-00033	2025-07-05 01:24:00	2025-07-05 08:24:00	Entregado	Sopó → Cali	TRANS-013	33
DIST-00034	2025-07-05 12:37:00	2025-07-05 16:35:00	Entregado	Sopó → Gachancipá	TRANS-010	34
DIST-00035	2025-07-05 20:45:00	2025-07-06 03:28:00	Entregado	Sopó → Cali	TRANS-010	35
DIST-00036	2025-07-06 02:53:00	2025-07-06 08:23:00	Entregado	Sopó → Bucaramanga	TRANS-016	36
DIST-00037	2025-07-06 16:10:00	2025-07-06 19:11:00	En camino	Sopó → Gachancipá	TRANS-004	37
DIST-00038	2025-07-06 20:25:00	2025-07-07 18:59:00	Entregado	Sopó → Cúcuta	TRANS-012	38
DIST-00039	2025-07-07 07:08:00	2025-07-07 13:01:00	Entregado	Sopó → Villavicencio	TRANS-011	39
DIST-00040	2025-07-07 15:31:00	2025-07-07 19:23:00	Entregado	Sopó → Tocancipá	TRANS-015	40
DIST-00041	2025-07-07 23:01:00	2025-07-08 02:46:00	Entregado	Sopó → Cajicá	TRANS-001	41
DIST-00042	2025-07-08 11:42:00	2025-07-08 13:35:00	Entregado	Sopó → Gachancipá	TRANS-005	42
DIST-00043	2025-07-08 19:31:00	2025-07-08 21:21:00	Entregado	Sopó → Chía	TRANS-018	43
DIST-00044	2025-07-09 01:47:00	2025-07-09 04:00:00	Entregado	Sopó → Zipaquirá	TRANS-001	44
DIST-00045	2025-07-09 11:23:00	2025-07-09 17:02:00	Entregado	Sopó → Bucaramanga	TRANS-006	45
DIST-00046	2025-07-09 20:58:00	2025-07-10 00:43:00	Entregado	Sopó → Gachancipá	TRANS-005	46
DIST-00047	2025-07-10 05:28:00	2025-07-11 01:50:00	En camino	Sopó → Pasto	TRANS-014	47
DIST-00048	2025-07-10 11:35:00	2025-07-10 15:04:00	Entregado	Sopó → Cajicá	TRANS-004	48
DIST-00049	2025-07-10 23:06:00	2025-07-11 05:43:00	Entregado	Sopó → Manizales	TRANS-004	49
DIST-00050	2025-07-11 05:36:00	2025-07-11 13:24:00	Entregado	Sopó → Villavicencio	TRANS-013	50
DIST-00051	2025-07-11 16:05:00	2025-07-11 17:39:00	Entregado	Sopó → Chía	TRANS-018	51
DIST-00052	2025-07-12 03:27:00	2025-07-12 06:27:00	Entregado	Sopó → Briceño	TRANS-004	52
DIST-00053	2025-07-12 12:03:00	2025-07-12 15:17:00	Entregado	Sopó → Gachancipá	TRANS-018	53
DIST-00054	2025-07-12 20:34:00	2025-07-13 11:48:00	Entregado	Sopó → Cúcuta	TRANS-011	54
DIST-00055	2025-07-13 02:26:00	2025-07-13 05:36:00	Entregado	Sopó → Tocancipá	TRANS-015	55
DIST-00056	2025-07-13 14:06:00	2025-07-13 15:59:00	Entregado	Sopó → La Calera	TRANS-002	56
DIST-00057	2025-07-13 22:47:00	2025-07-14 08:37:00	Entregado	Sopó → Cali	TRANS-012	57
DIST-00058	2025-07-14 03:56:00	2025-07-15 02:37:00	Entregado	Sopó → Santa Marta	TRANS-003	58
DIST-00059	2025-07-14 13:35:00	2025-07-14 19:33:00	Entregado	Sopó → Pereira	TRANS-001	59
DIST-00060	2025-07-14 23:25:00	2025-07-15 06:37:00	En camino	Sopó → Medellín	TRANS-016	60
DIST-00061	2025-07-15 10:12:00	2025-07-15 11:58:00	Entregado	Sopó → La Calera	TRANS-018	61
DIST-00062	2025-07-15 15:29:00	2025-07-15 17:04:00	Entregado	Sopó → Chía	TRANS-002	62
DIST-00063	2025-07-16 03:10:00	2025-07-16 06:21:00	Entregado	Sopó → Cajicá	TRANS-013	63
DIST-00064	2025-07-16 09:18:00	2025-07-16 11:29:00	Entregado	Sopó → Gachancipá	TRANS-016	64
DIST-00065	2025-07-16 21:07:00	2025-07-17 00:12:00	Entregado	Sopó → Chía	TRANS-009	65
DIST-00066	2025-07-17 02:30:00	2025-07-17 04:18:00	En camino	Sopó → Zipaquirá	TRANS-002	66
DIST-00067	2025-07-17 13:03:00	2025-07-18 01:44:00	Entregado	Sopó → Santa Marta	TRANS-017	67
DIST-00068	2025-07-17 18:57:00	2025-07-18 10:10:00	Entregado	Sopó → Cartagena	TRANS-017	68
DIST-00069	2025-07-18 05:41:00	2025-07-18 08:51:00	Entregado	Sopó → Zipaquirá	TRANS-009	69
DIST-00070	2025-07-18 12:17:00	2025-07-19 12:00:00	Entregado	Sopó → Cúcuta	TRANS-008	70
DIST-00071	2025-07-19 01:38:00	2025-07-19 03:23:00	Entregado	Sopó → Gachancipá	TRANS-007	71
DIST-00072	2025-07-19 09:54:00	2025-07-19 12:22:00	Entregado	Sopó → Gachancipá	TRANS-018	72
DIST-00073	2025-07-19 15:28:00	2025-07-20 00:52:00	Entregado	Sopó → Cali	TRANS-016	73
DIST-00074	2025-07-20 03:25:00	2025-07-20 04:57:00	Entregado	Sopó → Briceño	TRANS-001	74
DIST-00075	2025-07-20 08:16:00	2025-07-21 06:54:00	Entregado	Sopó → Santa Marta	TRANS-014	75
DIST-00076	2025-07-20 17:58:00	2025-07-21 00:25:00	Entregado	Sopó → Bucaramanga	TRANS-007	76
DIST-00077	2025-07-21 02:49:00	2025-07-21 06:43:00	Entregado	Sopó → Gachancipá	TRANS-001	77
DIST-00078	2025-07-21 15:05:00	2025-07-21 21:37:00	Entregado	Sopó → Cali	TRANS-003	78
DIST-00079	2025-07-21 21:24:00	2025-07-22 00:09:00	Entregado	Sopó → Tocancipá	TRANS-002	79
DIST-00080	2025-07-22 05:06:00	2025-07-22 10:32:00	Entregado	Sopó → Medellín	TRANS-004	80
DIST-00081	2025-07-22 14:03:00	2025-07-22 16:07:00	Entregado	Sopó → Bogotá D.C.	TRANS-009	81
DIST-00082	2025-07-23 00:35:00	2025-07-23 09:09:00	Entregado	Sopó → Villavicencio	TRANS-005	82
DIST-00083	2025-07-23 10:58:00	2025-07-23 12:50:00	Entregado	Sopó → Briceño	TRANS-016	83
DIST-00084	2025-07-23 18:59:00	2025-07-24 04:26:00	Entregado	Sopó → Medellín	TRANS-015	84
DIST-00085	2025-07-24 00:15:00	2025-07-24 07:52:00	Entregado	Sopó → Villavicencio	TRANS-006	85
DIST-00086	2025-07-24 11:14:00	2025-07-25 13:31:00	Entregado	Sopó → Barranquilla	TRANS-012	86
DIST-00087	2025-07-24 17:14:00	2025-07-24 22:53:00	Entregado	Sopó → Cali	TRANS-004	87
DIST-00088	2025-07-25 02:05:00	2025-07-25 03:37:00	Entregado	Sopó → Gachancipá	TRANS-018	88
DIST-00089	2025-07-25 12:52:00	2025-07-25 14:32:00	Entregado	Sopó → La Calera	TRANS-001	89
DIST-00090	2025-07-25 21:58:00	2025-07-26 21:53:00	Entregado	Sopó → Barranquilla	TRANS-012	90
DIST-00091	2025-07-26 07:45:00	2025-07-26 23:02:00	Entregado	Sopó → Cúcuta	TRANS-014	91
DIST-00092	2025-07-26 13:14:00	2025-07-27 15:48:00	Entregado	Sopó → Santa Marta	TRANS-003	92
DIST-00093	2025-07-27 00:37:00	2025-07-27 02:56:00	Entregado	Sopó → Zipaquirá	TRANS-002	93
DIST-00094	2025-07-27 07:02:00	2025-07-27 14:26:00	Entregado	Sopó → Pereira	TRANS-007	94
DIST-00095	2025-07-27 16:13:00	2025-07-28 12:03:00	Entregado	Sopó → Barranquilla	TRANS-012	95
DIST-00096	2025-07-28 03:43:00	2025-07-28 07:41:00	Entregado	Sopó → Gachancipá	TRANS-015	96
DIST-00097	2025-07-28 08:44:00	2025-07-28 11:22:00	Entregado	Sopó → Chía	TRANS-015	97
DIST-00098	2025-07-28 19:20:00	2025-07-29 21:59:00	Entregado	Sopó → Santa Marta	TRANS-017	98
DIST-00099	2025-07-29 05:53:00	2025-07-29 08:02:00	Entregado	Sopó → Chía	TRANS-006	99
DIST-00100	2025-07-29 12:19:00	2025-07-29 17:52:00	Entregado	Sopó → Manizales	TRANS-006	100
DIST-00101	2025-07-29 19:47:00	2025-07-30 00:48:00	Entregado	Sopó → Ibagué	TRANS-001	101
DIST-00102	2025-07-30 05:08:00	2025-07-30 11:51:00	Entregado	Sopó → Bucaramanga	TRANS-010	102
DIST-00103	2025-07-30 16:56:00	2025-07-31 18:21:00	Entregado	Sopó → Barranquilla	TRANS-017	103
DIST-00104	2025-07-30 23:23:00	2025-07-31 17:20:00	Entregado	Sopó → Barranquilla	TRANS-012	104
DIST-00105	2025-07-31 08:30:00	2025-08-01 03:20:00	Entregado	Sopó → Pasto	TRANS-008	105
DIST-00106	2025-07-31 19:37:00	2025-07-31 21:49:00	Entregado	Sopó → Chía	TRANS-001	106
DIST-00107	2025-08-01 02:46:00	2025-08-01 04:44:00	Entregado	Sopó → La Calera	TRANS-013	107
DIST-00108	2025-08-01 10:58:00	2025-08-02 12:58:00	Entregado	Sopó → Barranquilla	TRANS-012	108
DIST-00109	2025-08-01 22:23:00	2025-08-02 00:54:00	Entregado	Sopó → Chía	TRANS-001	109
DIST-00110	2025-08-02 02:43:00	2025-08-02 06:32:00	Entregado	Sopó → La Calera	TRANS-015	110
DIST-00111	2025-08-02 12:43:00	2025-08-02 21:24:00	Entregado	Sopó → Bucaramanga	TRANS-012	111
DIST-00112	2025-08-02 22:24:00	2025-08-03 01:34:00	Entregado	Sopó → Zipaquirá	TRANS-009	112
DIST-00113	2025-08-03 07:15:00	2025-08-03 16:18:00	Entregado	Sopó → Medellín	TRANS-011	113
DIST-00114	2025-08-03 15:45:00	2025-08-03 21:26:00	Entregado	Sopó → Bucaramanga	TRANS-013	114
DIST-00115	2025-08-03 22:43:00	2025-08-04 00:48:00	Entregado	Sopó → Briceño	TRANS-018	115
DIST-00116	2025-08-04 11:22:00	2025-08-04 18:16:00	Entregado	Sopó → Medellín	TRANS-010	116
DIST-00117	2025-08-04 19:32:00	2025-08-04 22:16:00	Entregado	Sopó → La Calera	TRANS-010	117
DIST-00118	2025-08-05 01:53:00	2025-08-05 04:00:00	Entregado	Sopó → Zipaquirá	TRANS-002	118
DIST-00119	2025-08-05 09:56:00	2025-08-05 12:29:00	Entregado	Sopó → La Calera	TRANS-001	119
DIST-00120	2025-08-05 18:03:00	2025-08-06 12:18:00	Entregado	Sopó → Pasto	TRANS-003	120
DIST-00121	2025-08-06 04:03:00	2025-08-06 17:47:00	Entregado	Sopó → Santa Marta	TRANS-003	121
DIST-00122	2025-08-06 16:16:00	2025-08-07 00:52:00	Entregado	Sopó → Manizales	TRANS-004	122
DIST-00123	2025-08-06 23:04:00	2025-08-07 04:15:00	Entregado	Sopó → Ibagué	TRANS-004	123
DIST-00124	2025-08-07 08:39:00	2025-08-07 12:33:00	Entregado	Sopó → Bogotá D.C.	TRANS-005	124
DIST-00125	2025-08-07 17:39:00	2025-08-07 23:08:00	Entregado	Sopó → Ibagué	TRANS-010	125
DIST-00126	2025-08-07 23:53:00	2025-08-09 00:31:00	En camino	Sopó → Cartagena	TRANS-003	126
DIST-00127	2025-08-08 12:08:00	2025-08-08 20:21:00	Entregado	Sopó → Ibagué	TRANS-012	127
DIST-00128	2025-08-08 17:20:00	2025-08-09 03:08:00	Entregado	Sopó → Cali	TRANS-006	128
DIST-00129	2025-08-09 03:21:00	2025-08-09 06:32:00	Entregado	Sopó → Bogotá D.C.	TRANS-007	129
DIST-00130	2025-08-09 10:45:00	2025-08-09 12:20:00	Entregado	Sopó → Tocancipá	TRANS-010	130
DIST-00131	2025-08-09 18:24:00	2025-08-09 20:37:00	Entregado	Sopó → Tocancipá	TRANS-007	131
DIST-00132	2025-08-10 04:41:00	2025-08-10 08:14:00	Entregado	Sopó → Gachancipá	TRANS-007	132
DIST-00133	2025-08-10 16:39:00	2025-08-10 19:23:00	Entregado	Sopó → La Calera	TRANS-002	133
DIST-00134	2025-08-10 20:55:00	2025-08-10 23:54:00	Entregado	Sopó → Tocancipá	TRANS-005	134
DIST-00135	2025-08-11 06:06:00	2025-08-11 07:43:00	Entregado	Sopó → Bogotá D.C.	TRANS-004	135
DIST-00136	2025-08-11 14:43:00	2025-08-11 16:24:00	Entregado	Sopó → Briceño	TRANS-016	136
DIST-00137	2025-08-12 00:28:00	2025-08-12 03:46:00	Entregado	Sopó → Gachancipá	TRANS-001	137
DIST-00138	2025-08-12 08:13:00	2025-08-12 21:28:00	Entregado	Sopó → Santa Marta	TRANS-014	138
DIST-00139	2025-08-12 21:15:00	2025-08-12 23:16:00	Entregado	Sopó → Chía	TRANS-018	139
DIST-00140	2025-08-13 01:26:00	2025-08-13 21:00:00	Entregado	Sopó → Santa Marta	TRANS-008	140
DIST-00141	2025-08-13 11:46:00	2025-08-14 14:07:00	En camino	Sopó → Cartagena	TRANS-017	141
DIST-00142	2025-08-13 20:34:00	2025-08-13 23:13:00	Entregado	Sopó → Tocancipá	TRANS-001	142
DIST-00143	2025-08-14 03:46:00	2025-08-14 06:46:00	Entregado	Sopó → Zipaquirá	TRANS-016	143
DIST-00144	2025-08-14 15:56:00	2025-08-14 19:09:00	Entregado	Sopó → Bogotá D.C.	TRANS-009	144
DIST-00145	2025-08-15 01:06:00	2025-08-15 02:52:00	Entregado	Sopó → Chía	TRANS-001	145
DIST-00146	2025-08-15 09:40:00	2025-08-15 19:14:00	Entregado	Sopó → Villavicencio	TRANS-001	146
DIST-00147	2025-08-15 14:31:00	2025-08-15 18:20:00	Entregado	Sopó → Gachancipá	TRANS-006	147
DIST-00148	2025-08-16 00:25:00	2025-08-16 09:43:00	Entregado	Sopó → Cali	TRANS-007	148
DIST-00149	2025-08-16 10:33:00	2025-08-16 17:30:00	Entregado	Sopó → Pereira	TRANS-004	149
DIST-00150	2025-08-16 19:31:00	2025-08-16 21:49:00	Entregado	Sopó → Bogotá D.C.	TRANS-015	150
DIST-00151	2025-08-17 04:38:00	2025-08-17 19:58:00	Entregado	Sopó → Barranquilla	TRANS-017	151
DIST-00152	2025-08-17 11:26:00	2025-08-18 06:06:00	Entregado	Sopó → Santa Marta	TRANS-014	152
DIST-00153	2025-08-17 23:15:00	2025-08-18 07:34:00	Entregado	Sopó → Manizales	TRANS-006	153
DIST-00154	2025-08-18 06:37:00	2025-08-19 00:35:00	Entregado	Sopó → Cúcuta	TRANS-017	154
DIST-00155	2025-08-18 13:46:00	2025-08-18 15:38:00	Entregado	Sopó → Zipaquirá	TRANS-006	155
DIST-00156	2025-08-18 23:16:00	2025-08-19 09:13:00	Entregado	Sopó → Bucaramanga	TRANS-004	156
DIST-00157	2025-08-19 08:22:00	2025-08-19 09:57:00	En camino	Sopó → Chía	TRANS-005	157
DIST-00158	2025-08-19 19:22:00	2025-08-20 08:00:00	Entregado	Sopó → Cartagena	TRANS-003	158
DIST-00159	2025-08-20 04:25:00	2025-08-20 07:22:00	Entregado	Sopó → Zipaquirá	TRANS-004	159
DIST-00160	2025-08-20 11:20:00	2025-08-20 14:46:00	Entregado	Sopó → Cajicá	TRANS-015	160
DIST-00161	2025-08-20 17:16:00	2025-08-20 19:37:00	En camino	Sopó → Briceño	TRANS-007	161
DIST-00162	2025-08-21 05:29:00	2025-08-22 08:06:00	Entregado	Sopó → Barranquilla	TRANS-011	162
DIST-00163	2025-08-21 12:27:00	2025-08-22 10:23:00	Entregado	Sopó → Santa Marta	TRANS-012	163
DIST-00164	2025-08-21 21:46:00	2025-08-22 00:17:00	Entregado	Sopó → Gachancipá	TRANS-018	164
DIST-00165	2025-08-22 06:46:00	2025-08-22 15:01:00	Entregado	Sopó → Cali	TRANS-009	165
DIST-00166	2025-08-22 14:24:00	2025-08-22 18:16:00	Entregado	Sopó → La Calera	TRANS-005	166
DIST-00167	2025-08-22 23:42:00	2025-08-23 09:01:00	Entregado	Sopó → Bucaramanga	TRANS-001	167
DIST-00168	2025-08-23 10:01:00	2025-08-23 12:01:00	En camino	Sopó → Zipaquirá	TRANS-013	168
DIST-00169	2025-08-23 19:14:00	2025-08-24 13:43:00	Entregado	Sopó → Santa Marta	TRANS-008	169
DIST-00170	2025-08-23 23:57:00	2025-08-24 07:42:00	Entregado	Sopó → Cali	TRANS-005	170
DIST-00171	2025-08-24 11:45:00	2025-08-25 05:41:00	Entregado	Sopó → Barranquilla	TRANS-011	171
DIST-00172	2025-08-24 20:00:00	2025-08-24 23:48:00	Entregado	Sopó → La Calera	TRANS-006	172
DIST-00173	2025-08-25 06:59:00	2025-08-25 12:58:00	Entregado	Sopó → Villavicencio	TRANS-013	173
DIST-00174	2025-08-25 11:11:00	2025-08-26 14:00:00	Entregado	Sopó → Santa Marta	TRANS-017	174
DIST-00175	2025-08-25 23:47:00	2025-08-26 14:20:00	Entregado	Sopó → Pasto	TRANS-012	175
DIST-00176	2025-08-26 08:39:00	2025-08-26 12:13:00	Entregado	Sopó → Tocancipá	TRANS-004	176
DIST-00177	2025-08-26 13:58:00	2025-08-26 16:21:00	Entregado	Sopó → Tocancipá	TRANS-018	177
DIST-00178	2025-08-27 02:21:00	2025-08-28 03:49:00	Entregado	Sopó → Cartagena	TRANS-008	178
DIST-00179	2025-08-27 08:39:00	2025-08-27 15:55:00	Entregado	Sopó → Bucaramanga	TRANS-004	179
DIST-00180	2025-08-27 17:00:00	2025-08-27 23:14:00	Entregado	Sopó → Manizales	TRANS-001	180
DIST-00181	2025-08-28 00:19:00	2025-08-28 03:21:00	Entregado	Sopó → Gachancipá	TRANS-006	181
DIST-00182	2025-08-28 13:01:00	2025-08-28 15:31:00	Entregado	Sopó → Gachancipá	TRANS-006	182
DIST-00183	2025-08-28 21:44:00	2025-08-29 00:29:00	Entregado	Sopó → Briceño	TRANS-002	183
DIST-00184	2025-08-29 07:05:00	2025-08-29 09:22:00	Entregado	Sopó → Cajicá	TRANS-002	184
DIST-00185	2025-08-29 15:59:00	2025-08-29 17:49:00	Entregado	Sopó → Tocancipá	TRANS-005	185
DIST-00186	2025-08-29 20:39:00	2025-08-30 22:49:00	Entregado	Sopó → Barranquilla	TRANS-014	186
DIST-00187	2025-08-30 08:41:00	2025-08-31 11:34:00	Entregado	Sopó → Cartagena	TRANS-012	187
DIST-00188	2025-08-30 15:07:00	2025-08-30 18:09:00	Entregado	Sopó → La Calera	TRANS-006	188
DIST-00189	2025-08-31 03:05:00	2025-08-31 10:29:00	Entregado	Sopó → Bucaramanga	TRANS-006	189
DIST-00190	2025-08-31 08:53:00	2025-08-31 14:52:00	Entregado	Sopó → Cali	TRANS-016	190
DIST-00191	2025-08-31 17:25:00	2025-09-01 00:18:00	Entregado	Sopó → Bucaramanga	TRANS-009	191
DIST-00192	2025-09-01 04:49:00	2025-09-01 08:43:00	Entregado	Sopó → Bogotá D.C.	TRANS-005	192
DIST-00193	2025-09-01 13:46:00	2025-09-01 20:01:00	Entregado	Sopó → Manizales	TRANS-018	193
DIST-00194	2025-09-01 19:55:00	2025-09-02 13:49:00	Entregado	Sopó → Cúcuta	TRANS-017	194
DIST-00195	2025-09-02 03:57:00	2025-09-02 06:59:00	Entregado	Sopó → Chía	TRANS-015	195
DIST-00196	2025-09-02 14:45:00	2025-09-02 18:42:00	Entregado	Sopó → La Calera	TRANS-009	196
DIST-00197	2025-09-02 20:19:00	2025-09-03 01:29:00	Entregado	Sopó → Bucaramanga	TRANS-010	197
DIST-00198	2025-09-03 07:38:00	2025-09-03 17:06:00	Entregado	Sopó → Ibagué	TRANS-001	198
DIST-00199	2025-09-03 14:06:00	2025-09-03 17:01:00	Entregado	Sopó → Bogotá D.C.	TRANS-001	199
DIST-00200	2025-09-04 00:39:00	2025-09-04 07:09:00	Entregado	Sopó → Pereira	TRANS-011	200
DIST-00201	2025-09-04 08:01:00	2025-09-04 11:51:00	Entregado	Sopó → Gachancipá	TRANS-006	201
DIST-00202	2025-09-04 19:17:00	2025-09-04 22:57:00	Entregado	Sopó → Chía	TRANS-002	202
DIST-00203	2025-09-05 01:08:00	2025-09-05 04:41:00	Entregado	Sopó → La Calera	TRANS-001	203
DIST-00204	2025-09-05 12:37:00	2025-09-05 20:12:00	Entregado	Sopó → Pereira	TRANS-002	204
DIST-00205	2025-09-05 18:41:00	2025-09-05 20:14:00	Entregado	Sopó → Bogotá D.C.	TRANS-001	205
DIST-00206	2025-09-06 06:11:00	2025-09-06 09:19:00	Entregado	Sopó → Chía	TRANS-001	206
DIST-00207	2025-09-06 12:45:00	2025-09-06 15:01:00	Entregado	Sopó → Tocancipá	TRANS-004	207
DIST-00208	2025-09-06 23:20:00	2025-09-07 01:46:00	Entregado	Sopó → Gachancipá	TRANS-016	208
DIST-00209	2025-09-07 08:40:00	2025-09-07 23:28:00	Entregado	Sopó → Barranquilla	TRANS-012	209
DIST-00210	2025-09-07 15:50:00	2025-09-07 19:12:00	Entregado	Sopó → Bogotá D.C.	TRANS-002	210
DIST-00211	2025-09-08 02:05:00	2025-09-09 00:57:00	Entregado	Sopó → Barranquilla	TRANS-017	211
DIST-00212	2025-09-08 10:53:00	2025-09-09 14:19:00	Entregado	Sopó → Cúcuta	TRANS-017	212
DIST-00213	2025-09-08 17:44:00	2025-09-09 09:30:00	Entregado	Sopó → Barranquilla	TRANS-014	213
DIST-00214	2025-09-09 05:35:00	2025-09-09 22:50:00	Entregado	Sopó → Cúcuta	TRANS-014	214
DIST-00215	2025-09-09 12:18:00	2025-09-10 08:47:00	En camino	Sopó → Pasto	TRANS-003	215
DIST-00216	2025-09-09 23:07:00	2025-09-10 02:35:00	Entregado	Sopó → Zipaquirá	TRANS-004	216
DIST-00217	2025-09-10 04:19:00	2025-09-10 09:28:00	Entregado	Sopó → Pereira	TRANS-018	217
DIST-00218	2025-09-10 17:06:00	2025-09-11 01:36:00	En camino	Sopó → Cali	TRANS-016	218
DIST-00219	2025-09-10 21:18:00	2025-09-10 22:55:00	Entregado	Sopó → Bogotá D.C.	TRANS-016	219
DIST-00220	2025-09-11 10:30:00	2025-09-11 18:10:00	Entregado	Sopó → Cali	TRANS-015	220
DIST-00221	2025-09-11 15:43:00	2025-09-12 06:58:00	En camino	Sopó → Santa Marta	TRANS-008	221
DIST-00222	2025-09-12 02:24:00	2025-09-12 22:02:00	Entregado	Sopó → Barranquilla	TRANS-012	222
DIST-00223	2025-09-12 09:28:00	2025-09-12 16:08:00	Entregado	Sopó → Manizales	TRANS-011	223
DIST-00224	2025-09-12 20:20:00	2025-09-12 22:45:00	Entregado	Sopó → La Calera	TRANS-001	224
DIST-00225	2025-09-13 05:46:00	2025-09-14 03:39:00	En camino	Sopó → Pasto	TRANS-003	225
DIST-00226	2025-09-13 14:08:00	2025-09-13 16:30:00	Entregado	Sopó → Tocancipá	TRANS-018	226
DIST-00227	2025-09-13 23:20:00	2025-09-14 04:47:00	Entregado	Sopó → Cali	TRANS-010	227
DIST-00228	2025-09-14 04:47:00	2025-09-14 08:11:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	228
DIST-00229	2025-09-14 14:59:00	2025-09-14 18:28:00	Entregado	Sopó → Gachancipá	TRANS-002	229
DIST-00230	2025-09-14 23:52:00	2025-09-15 07:45:00	Entregado	Sopó → Bucaramanga	TRANS-015	230
DIST-00231	2025-09-15 06:52:00	2025-09-16 09:53:00	Entregado	Sopó → Cartagena	TRANS-003	231
DIST-00232	2025-09-15 18:44:00	2025-09-16 02:52:00	Entregado	Sopó → Manizales	TRANS-006	232
DIST-00233	2025-09-15 23:59:00	2025-09-16 03:42:00	En camino	Sopó → Tocancipá	TRANS-016	233
DIST-00234	2025-09-16 12:49:00	2025-09-16 15:34:00	Entregado	Sopó → La Calera	TRANS-013	234
DIST-00235	2025-09-16 17:42:00	2025-09-17 15:12:00	Entregado	Sopó → Cartagena	TRANS-003	235
DIST-00236	2025-09-17 04:44:00	2025-09-17 12:20:00	Entregado	Sopó → Medellín	TRANS-016	236
DIST-00237	2025-09-17 12:12:00	2025-09-17 19:30:00	Entregado	Sopó → Pereira	TRANS-010	237
DIST-00238	2025-09-17 21:01:00	2025-09-18 00:07:00	Entregado	Sopó → Zipaquirá	TRANS-006	238
DIST-00239	2025-09-18 07:52:00	2025-09-18 16:59:00	Entregado	Sopó → Bucaramanga	TRANS-012	239
DIST-00240	2025-09-18 14:29:00	2025-09-18 22:05:00	Entregado	Sopó → Cali	TRANS-010	240
DIST-00241	2025-09-19 02:29:00	2025-09-19 05:48:00	Entregado	Sopó → Zipaquirá	TRANS-009	241
DIST-00242	2025-09-19 08:17:00	2025-09-20 12:01:00	Entregado	Sopó → Barranquilla	TRANS-014	242
DIST-00243	2025-09-19 16:06:00	2025-09-20 00:17:00	Entregado	Sopó → Ibagué	TRANS-012	243
DIST-00244	2025-09-20 00:03:00	2025-09-20 02:32:00	Entregado	Sopó → Tocancipá	TRANS-015	244
DIST-00245	2025-09-20 10:07:00	2025-09-20 15:13:00	Entregado	Sopó → Pereira	TRANS-009	245
DIST-00246	2025-09-20 18:37:00	2025-09-21 03:52:00	Entregado	Sopó → Medellín	TRANS-010	246
DIST-00247	2025-09-21 06:23:00	2025-09-21 14:43:00	Entregado	Sopó → Manizales	TRANS-001	247
DIST-00248	2025-09-21 14:19:00	2025-09-22 12:34:00	Entregado	Sopó → Pasto	TRANS-014	248
DIST-00249	2025-09-21 20:53:00	2025-09-21 23:23:00	Entregado	Sopó → Chía	TRANS-013	249
DIST-00250	2025-09-22 06:42:00	2025-09-22 09:45:00	Entregado	Sopó → Tocancipá	TRANS-015	250
DIST-00251	2025-09-22 17:39:00	2025-09-23 00:17:00	En camino	Sopó → Villavicencio	TRANS-005	251
DIST-00252	2025-09-22 23:12:00	2025-09-23 14:41:00	Entregado	Sopó → Barranquilla	TRANS-008	252
DIST-00253	2025-09-23 08:26:00	2025-09-24 09:59:00	Entregado	Sopó → Cartagena	TRANS-011	253
DIST-00254	2025-09-23 15:32:00	2025-09-23 19:00:00	Entregado	Sopó → Gachancipá	TRANS-018	254
DIST-00255	2025-09-24 05:10:00	2025-09-24 07:07:00	Entregado	Sopó → Gachancipá	TRANS-007	255
DIST-00256	2025-09-24 12:09:00	2025-09-25 04:11:00	Entregado	Sopó → Pasto	TRANS-017	256
DIST-00257	2025-09-24 22:18:00	2025-09-25 01:22:00	Entregado	Sopó → Chía	TRANS-013	257
DIST-00258	2025-09-25 04:00:00	2025-09-25 11:00:00	Entregado	Sopó → Medellín	TRANS-011	258
DIST-00259	2025-09-25 12:18:00	2025-09-26 02:22:00	Entregado	Sopó → Santa Marta	TRANS-003	259
DIST-00260	2025-09-25 23:12:00	2025-09-26 22:43:00	Entregado	Sopó → Cartagena	TRANS-003	260
DIST-00261	2025-09-26 09:44:00	2025-09-26 13:07:00	Entregado	Sopó → Tocancipá	TRANS-015	261
DIST-00262	2025-09-26 17:25:00	2025-09-26 23:34:00	Entregado	Sopó → Ibagué	TRANS-016	262
DIST-00263	2025-09-26 23:11:00	2025-09-27 04:11:00	Entregado	Sopó → Ibagué	TRANS-009	263
DIST-00264	2025-09-27 08:32:00	2025-09-27 11:13:00	Entregado	Sopó → Zipaquirá	TRANS-005	264
DIST-00265	2025-09-27 17:35:00	2025-09-28 03:13:00	Entregado	Sopó → Manizales	TRANS-018	265
DIST-00266	2025-09-28 03:11:00	2025-09-28 05:32:00	Entregado	Sopó → Briceño	TRANS-006	266
DIST-00267	2025-09-28 12:34:00	2025-09-28 18:49:00	Entregado	Sopó → Cali	TRANS-004	267
DIST-00268	2025-09-28 21:56:00	2025-09-29 00:17:00	Entregado	Sopó → Zipaquirá	TRANS-006	268
DIST-00269	2025-09-29 05:51:00	2025-09-30 04:51:00	Entregado	Sopó → Pasto	TRANS-014	269
DIST-00270	2025-09-29 14:02:00	2025-09-29 16:03:00	Entregado	Sopó → La Calera	TRANS-007	270
DIST-00271	2025-09-29 20:54:00	2025-09-30 15:36:00	Entregado	Sopó → Barranquilla	TRANS-011	271
DIST-00272	2025-09-30 07:30:00	2025-09-30 17:01:00	Entregado	Sopó → Pereira	TRANS-003	272
DIST-00273	2025-09-30 16:50:00	2025-09-30 20:10:00	Entregado	Sopó → Cajicá	TRANS-018	273
DIST-00274	2025-10-01 00:04:00	2025-10-01 02:43:00	Entregado	Sopó → Gachancipá	TRANS-005	274
DIST-00275	2025-10-01 10:32:00	2025-10-02 08:42:00	En camino	Sopó → Barranquilla	TRANS-014	275
DIST-00276	2025-10-01 20:45:00	2025-10-02 03:24:00	Entregado	Sopó → Manizales	TRANS-010	276
DIST-00277	2025-10-02 05:21:00	2025-10-02 10:31:00	Entregado	Sopó → Ibagué	TRANS-013	277
DIST-00278	2025-10-02 13:55:00	2025-10-02 20:44:00	Entregado	Sopó → Bucaramanga	TRANS-004	278
DIST-00279	2025-10-02 19:25:00	2025-10-03 02:35:00	Entregado	Sopó → Villavicencio	TRANS-018	279
DIST-00280	2025-10-03 04:35:00	2025-10-03 13:43:00	Entregado	Sopó → Villavicencio	TRANS-012	280
DIST-00281	2025-10-03 14:25:00	2025-10-04 00:17:00	Entregado	Sopó → Bucaramanga	TRANS-015	281
DIST-00282	2025-10-03 22:14:00	2025-10-04 04:43:00	Entregado	Sopó → Bucaramanga	TRANS-011	282
DIST-00283	2025-10-04 07:23:00	2025-10-04 15:09:00	Entregado	Sopó → Villavicencio	TRANS-003	283
DIST-00284	2025-10-04 14:42:00	2025-10-04 19:55:00	Entregado	Sopó → Ibagué	TRANS-012	284
DIST-00285	2025-10-04 23:13:00	2025-10-05 06:43:00	Entregado	Sopó → Villavicencio	TRANS-009	285
DIST-00286	2025-10-05 11:02:00	2025-10-05 14:15:00	Entregado	Sopó → Cajicá	TRANS-005	286
DIST-00287	2025-10-05 19:36:00	2025-10-05 22:39:00	Entregado	Sopó → Bogotá D.C.	TRANS-005	287
DIST-00288	2025-10-06 03:17:00	2025-10-06 08:47:00	Entregado	Sopó → Villavicencio	TRANS-003	288
DIST-00289	2025-10-06 12:45:00	2025-10-06 14:53:00	Entregado	Sopó → Cajicá	TRANS-009	289
DIST-00290	2025-10-06 20:51:00	2025-10-06 23:57:00	Entregado	Sopó → Briceño	TRANS-001	290
DIST-00291	2025-10-07 07:19:00	2025-10-07 09:52:00	Entregado	Sopó → Bogotá D.C.	TRANS-002	291
DIST-00292	2025-10-07 15:36:00	2025-10-07 18:35:00	Entregado	Sopó → Chía	TRANS-001	292
DIST-00293	2025-10-08 00:49:00	2025-10-08 08:33:00	Entregado	Sopó → Cali	TRANS-002	293
DIST-00294	2025-10-08 05:48:00	2025-10-08 10:49:00	Entregado	Sopó → Cali	TRANS-009	294
DIST-00295	2025-10-08 18:50:00	2025-10-08 20:39:00	En camino	Sopó → Chía	TRANS-007	295
DIST-00296	2025-10-09 02:54:00	2025-10-09 08:50:00	Entregado	Sopó → Cali	TRANS-002	296
DIST-00297	2025-10-09 12:16:00	2025-10-09 20:54:00	Entregado	Sopó → Manizales	TRANS-010	297
DIST-00298	2025-10-09 19:03:00	2025-10-10 04:42:00	Entregado	Sopó → Manizales	TRANS-002	298
DIST-00299	2025-10-10 01:48:00	2025-10-11 03:55:00	Entregado	Sopó → Barranquilla	TRANS-008	299
DIST-00300	2025-10-10 11:49:00	2025-10-10 19:49:00	Entregado	Sopó → Ibagué	TRANS-012	300
DIST-00301	2025-10-10 20:36:00	2025-10-11 23:46:00	Entregado	Sopó → Pasto	TRANS-008	301
DIST-00302	2025-10-11 08:36:00	2025-10-11 14:11:00	Entregado	Sopó → Cali	TRANS-005	302
DIST-00303	2025-10-11 14:28:00	2025-10-11 17:55:00	Entregado	Sopó → Tocancipá	TRANS-015	303
DIST-00304	2025-10-11 22:45:00	2025-10-12 04:03:00	Entregado	Sopó → Pereira	TRANS-016	304
DIST-00305	2025-10-12 07:42:00	2025-10-12 15:43:00	Entregado	Sopó → Villavicencio	TRANS-007	305
DIST-00306	2025-10-12 17:44:00	2025-10-13 21:21:00	Entregado	Sopó → Pasto	TRANS-017	306
DIST-00307	2025-10-13 03:25:00	2025-10-13 05:30:00	Entregado	Sopó → Tocancipá	TRANS-004	307
DIST-00308	2025-10-13 09:39:00	2025-10-13 15:26:00	Entregado	Sopó → Bucaramanga	TRANS-012	308
DIST-00309	2025-10-13 18:31:00	2025-10-14 00:13:00	Entregado	Sopó → Villavicencio	TRANS-003	309
DIST-00310	2025-10-14 06:42:00	2025-10-15 07:27:00	Entregado	Sopó → Cartagena	TRANS-017	310
DIST-00311	2025-10-14 13:16:00	2025-10-14 20:57:00	Entregado	Sopó → Ibagué	TRANS-016	311
DIST-00312	2025-10-14 22:23:00	2025-10-15 01:34:00	Entregado	Sopó → Zipaquirá	TRANS-009	312
DIST-00313	2025-10-15 07:51:00	2025-10-15 11:19:00	Entregado	Sopó → La Calera	TRANS-004	313
DIST-00314	2025-10-15 14:01:00	2025-10-15 16:57:00	Entregado	Sopó → Briceño	TRANS-002	314
DIST-00315	2025-10-16 00:00:00	2025-10-16 21:25:00	Entregado	Sopó → Pasto	TRANS-017	315
DIST-00316	2025-10-16 07:49:00	2025-10-16 10:45:00	Entregado	Sopó → Cajicá	TRANS-016	316
DIST-00317	2025-10-16 16:21:00	2025-10-17 01:57:00	Entregado	Sopó → Villavicencio	TRANS-005	317
DIST-00318	2025-10-17 02:12:00	2025-10-17 15:30:00	Entregado	Sopó → Cúcuta	TRANS-012	318
DIST-00319	2025-10-17 11:41:00	2025-10-17 13:25:00	Entregado	Sopó → La Calera	TRANS-018	319
DIST-00320	2025-10-17 20:20:00	2025-10-18 11:45:00	Entregado	Sopó → Pasto	TRANS-003	320
DIST-00321	2025-10-18 05:59:00	2025-10-18 09:31:00	Entregado	Sopó → Chía	TRANS-015	321
DIST-00322	2025-10-18 11:55:00	2025-10-18 13:52:00	Entregado	Sopó → Bogotá D.C.	TRANS-010	322
DIST-00323	2025-10-18 21:58:00	2025-10-19 01:50:00	Entregado	Sopó → Briceño	TRANS-016	323
DIST-00324	2025-10-19 07:57:00	2025-10-19 09:40:00	Entregado	Sopó → Tocancipá	TRANS-002	324
DIST-00325	2025-10-19 15:43:00	2025-10-19 17:40:00	Entregado	Sopó → Chía	TRANS-005	325
DIST-00326	2025-10-19 23:03:00	2025-10-20 00:38:00	Entregado	Sopó → Zipaquirá	TRANS-016	326
DIST-00327	2025-10-20 07:59:00	2025-10-20 10:46:00	Entregado	Sopó → Bogotá D.C.	TRANS-001	327
DIST-00328	2025-10-20 15:57:00	2025-10-20 22:32:00	En camino	Sopó → Ibagué	TRANS-003	328
DIST-00329	2025-10-21 03:10:00	2025-10-21 06:33:00	Entregado	Sopó → La Calera	TRANS-004	329
DIST-00330	2025-10-21 09:35:00	2025-10-21 12:17:00	Entregado	Sopó → La Calera	TRANS-013	330
DIST-00331	2025-10-21 22:11:00	2025-10-22 00:51:00	Entregado	Sopó → Cajicá	TRANS-005	331
DIST-00332	2025-10-22 06:39:00	2025-10-22 12:02:00	Entregado	Sopó → Cali	TRANS-018	332
DIST-00333	2025-10-22 16:01:00	2025-10-22 19:49:00	Entregado	Sopó → Cajicá	TRANS-015	333
DIST-00334	2025-10-23 00:51:00	2025-10-23 03:09:00	Entregado	Sopó → Chía	TRANS-015	334
DIST-00335	2025-10-23 06:24:00	2025-10-23 09:44:00	Entregado	Sopó → Briceño	TRANS-006	335
DIST-00336	2025-10-23 17:52:00	2025-10-24 00:11:00	Entregado	Sopó → Cali	TRANS-002	336
DIST-00337	2025-10-24 02:28:00	2025-10-24 04:48:00	Entregado	Sopó → La Calera	TRANS-004	337
DIST-00338	2025-10-24 11:32:00	2025-10-24 17:06:00	Entregado	Sopó → Bucaramanga	TRANS-002	338
DIST-00339	2025-10-24 18:10:00	2025-10-24 20:22:00	Entregado	Sopó → Zipaquirá	TRANS-018	339
DIST-00340	2025-10-25 05:29:00	2025-10-25 09:28:00	Entregado	Sopó → Briceño	TRANS-013	340
DIST-00341	2025-10-25 13:46:00	2025-10-25 15:24:00	Entregado	Sopó → La Calera	TRANS-013	341
DIST-00342	2025-10-25 22:05:00	2025-10-26 00:26:00	Entregado	Sopó → Bogotá D.C.	TRANS-015	342
DIST-00343	2025-10-26 04:36:00	2025-10-26 06:12:00	Entregado	Sopó → La Calera	TRANS-006	343
DIST-00344	2025-10-26 15:47:00	2025-10-26 18:35:00	Entregado	Sopó → Cajicá	TRANS-006	344
DIST-00345	2025-10-27 00:46:00	2025-10-27 04:05:00	Entregado	Sopó → Chía	TRANS-002	345
DIST-00346	2025-10-27 08:25:00	2025-10-27 11:29:00	Entregado	Sopó → Cajicá	TRANS-004	346
DIST-00347	2025-10-27 17:17:00	2025-10-27 20:04:00	Entregado	Sopó → Bogotá D.C.	TRANS-002	347
DIST-00348	2025-10-28 00:16:00	2025-10-29 01:44:00	Entregado	Sopó → Pasto	TRANS-017	348
DIST-00349	2025-10-28 11:54:00	2025-10-28 19:16:00	Entregado	Sopó → Medellín	TRANS-001	349
DIST-00350	2025-10-28 20:15:00	2025-10-28 22:40:00	Entregado	Sopó → Cajicá	TRANS-004	350
DIST-00351	2025-10-29 03:27:00	2025-10-29 06:03:00	Entregado	Sopó → Bogotá D.C.	TRANS-010	351
DIST-00352	2025-10-29 13:31:00	2025-10-29 17:11:00	Entregado	Sopó → Zipaquirá	TRANS-010	352
DIST-00353	2025-10-29 23:08:00	2025-10-30 19:03:00	Entregado	Sopó → Cúcuta	TRANS-008	353
DIST-00354	2025-10-30 03:14:00	2025-10-30 13:04:00	Entregado	Sopó → Pereira	TRANS-005	354
DIST-00355	2025-10-30 13:08:00	2025-10-30 16:40:00	En camino	Sopó → Chía	TRANS-009	355
DIST-00356	2025-10-30 20:44:00	2025-10-30 23:43:00	Entregado	Sopó → Zipaquirá	TRANS-009	356
DIST-00357	2025-10-31 05:55:00	2025-10-31 15:15:00	Entregado	Sopó → Manizales	TRANS-002	357
DIST-00358	2025-10-31 16:37:00	2025-10-31 19:22:00	Entregado	Sopó → Chía	TRANS-015	358
DIST-00359	2025-11-01 01:37:00	2025-11-01 03:41:00	Entregado	Sopó → Tocancipá	TRANS-006	359
DIST-00360	2025-11-01 09:39:00	2025-11-01 19:23:00	En camino	Sopó → Ibagué	TRANS-010	360
DIST-00361	2025-11-01 19:25:00	2025-11-02 03:25:00	En camino	Sopó → Manizales	TRANS-001	361
DIST-00362	2025-11-02 02:52:00	2025-11-02 18:42:00	Entregado	Sopó → Barranquilla	TRANS-017	362
DIST-00363	2025-11-02 14:11:00	2025-11-02 15:49:00	Entregado	Sopó → Briceño	TRANS-013	363
DIST-00364	2025-11-02 23:03:00	2025-11-03 21:39:00	En camino	Sopó → Cúcuta	TRANS-014	364
DIST-00365	2025-11-03 05:04:00	2025-11-03 07:04:00	Entregado	Sopó → Cajicá	TRANS-002	365
DIST-00366	2025-11-03 16:05:00	2025-11-03 19:55:00	Entregado	Sopó → Tocancipá	TRANS-013	366
DIST-00367	2025-11-04 01:18:00	2025-11-04 23:14:00	Entregado	Sopó → Barranquilla	TRANS-008	367
DIST-00368	2025-11-04 09:45:00	2025-11-04 14:55:00	Entregado	Sopó → Manizales	TRANS-006	368
DIST-00369	2025-11-04 15:40:00	2025-11-04 17:15:00	Entregado	Sopó → Bogotá D.C.	TRANS-013	369
DIST-00370	2025-11-04 23:32:00	2025-11-05 03:25:00	Entregado	Sopó → Cajicá	TRANS-002	370
DIST-00371	2025-11-05 10:57:00	2025-11-06 13:51:00	Entregado	Sopó → Barranquilla	TRANS-003	371
DIST-00372	2025-11-05 18:47:00	2025-11-06 01:13:00	Entregado	Sopó → Bucaramanga	TRANS-018	372
DIST-00373	2025-11-06 04:33:00	2025-11-06 07:28:00	Entregado	Sopó → La Calera	TRANS-015	373
DIST-00374	2025-11-06 14:43:00	2025-11-06 16:58:00	Entregado	Sopó → Briceño	TRANS-015	374
DIST-00375	2025-11-06 20:41:00	2025-11-07 11:42:00	Entregado	Sopó → Barranquilla	TRANS-014	375
DIST-00376	2025-11-07 08:24:00	2025-11-07 22:59:00	Entregado	Sopó → Santa Marta	TRANS-008	376
DIST-00377	2025-11-07 13:53:00	2025-11-07 17:34:00	Entregado	Sopó → Briceño	TRANS-015	377
DIST-00378	2025-11-08 00:03:00	2025-11-08 03:03:00	Entregado	Sopó → Bogotá D.C.	TRANS-006	378
DIST-00379	2025-11-08 10:13:00	2025-11-08 16:59:00	Entregado	Sopó → Pereira	TRANS-001	379
DIST-00380	2025-11-08 19:28:00	2025-11-09 02:33:00	Entregado	Sopó → Manizales	TRANS-010	380
DIST-00381	2025-11-09 02:37:00	2025-11-09 04:48:00	Entregado	Sopó → Zipaquirá	TRANS-004	381
DIST-00382	2025-11-09 12:14:00	2025-11-09 15:30:00	Entregado	Sopó → Gachancipá	TRANS-009	382
DIST-00383	2025-11-09 19:07:00	2025-11-09 21:59:00	Entregado	Sopó → Chía	TRANS-001	383
DIST-00384	2025-11-10 06:05:00	2025-11-10 08:16:00	Entregado	Sopó → Cajicá	TRANS-013	384
DIST-00385	2025-11-10 12:53:00	2025-11-10 16:11:00	Entregado	Sopó → Gachancipá	TRANS-016	385
DIST-00386	2025-11-10 20:57:00	2025-11-11 00:25:00	Entregado	Sopó → Tocancipá	TRANS-005	386
DIST-00387	2025-11-11 05:01:00	2025-11-11 11:32:00	Entregado	Sopó → Ibagué	TRANS-012	387
DIST-00388	2025-11-11 13:18:00	2025-11-11 22:54:00	Entregado	Sopó → Pereira	TRANS-011	388
DIST-00389	2025-11-11 22:38:00	2025-11-12 17:27:00	Entregado	Sopó → Cartagena	TRANS-017	389
DIST-00390	2025-11-12 09:12:00	2025-11-12 11:56:00	Entregado	Sopó → Bogotá D.C.	TRANS-009	390
DIST-00391	2025-11-12 20:07:00	2025-11-13 03:42:00	Entregado	Sopó → Pereira	TRANS-007	391
DIST-00392	2025-11-13 01:40:00	2025-11-13 09:38:00	Entregado	Sopó → Ibagué	TRANS-002	392
DIST-00393	2025-11-13 09:47:00	2025-11-14 04:20:00	Entregado	Sopó → Barranquilla	TRANS-011	393
DIST-00394	2025-11-13 21:48:00	2025-11-14 07:37:00	Entregado	Sopó → Pereira	TRANS-005	394
DIST-00395	2025-11-14 04:48:00	2025-11-14 08:20:00	Entregado	Sopó → Briceño	TRANS-016	395
DIST-00396	2025-11-14 13:28:00	2025-11-14 15:14:00	Entregado	Sopó → Chía	TRANS-009	396
DIST-00397	2025-11-15 00:37:00	2025-11-15 10:03:00	Entregado	Sopó → Villavicencio	TRANS-018	397
DIST-00398	2025-11-15 05:28:00	2025-11-15 09:11:00	Entregado	Sopó → La Calera	TRANS-018	398
DIST-00399	2025-11-15 16:02:00	2025-11-15 19:06:00	Entregado	Sopó → Chía	TRANS-010	399
DIST-00400	2025-11-15 21:57:00	2025-11-16 06:30:00	Entregado	Sopó → Medellín	TRANS-013	400
DIST-00401	2025-11-16 09:38:00	2025-11-17 08:19:00	Entregado	Sopó → Santa Marta	TRANS-008	401
DIST-00402	2025-11-16 16:47:00	2025-11-17 01:01:00	Entregado	Sopó → Pereira	TRANS-007	402
DIST-00403	2025-11-17 02:16:00	2025-11-17 16:12:00	Entregado	Sopó → Pasto	TRANS-014	403
DIST-00404	2025-11-17 09:28:00	2025-11-17 15:19:00	Entregado	Sopó → Medellín	TRANS-003	404
DIST-00405	2025-11-17 21:45:00	2025-11-18 10:44:00	En camino	Sopó → Pasto	TRANS-003	405
DIST-00406	2025-11-18 06:03:00	2025-11-18 12:49:00	Entregado	Sopó → Bucaramanga	TRANS-005	406
DIST-00407	2025-11-18 11:33:00	2025-11-18 13:31:00	Entregado	Sopó → Chía	TRANS-004	407
DIST-00408	2025-11-18 22:54:00	2025-11-19 02:47:00	Entregado	Sopó → Zipaquirá	TRANS-013	408
DIST-00409	2025-11-19 04:58:00	2025-11-19 14:37:00	Entregado	Sopó → Cali	TRANS-011	409
DIST-00410	2025-11-19 15:36:00	2025-11-19 17:43:00	Entregado	Sopó → Gachancipá	TRANS-009	410
DIST-00411	2025-11-20 01:39:00	2025-11-21 00:26:00	Entregado	Sopó → Barranquilla	TRANS-014	411
DIST-00412	2025-11-20 09:26:00	2025-11-20 12:54:00	Entregado	Sopó → Tocancipá	TRANS-016	412
DIST-00413	2025-11-20 16:42:00	2025-11-20 20:37:00	Entregado	Sopó → Briceño	TRANS-013	413
DIST-00414	2025-11-21 03:12:00	2025-11-21 10:07:00	Entregado	Sopó → Medellín	TRANS-016	414
DIST-00415	2025-11-21 13:25:00	2025-11-21 15:47:00	Entregado	Sopó → Chía	TRANS-013	415
DIST-00416	2025-11-21 19:14:00	2025-11-21 20:49:00	Entregado	Sopó → La Calera	TRANS-010	416
DIST-00417	2025-11-22 06:20:00	2025-11-22 08:03:00	Entregado	Sopó → Cajicá	TRANS-007	417
DIST-00418	2025-11-22 13:47:00	2025-11-23 15:09:00	Entregado	Sopó → Cartagena	TRANS-011	418
DIST-00419	2025-11-22 23:56:00	2025-11-23 02:22:00	Entregado	Sopó → Briceño	TRANS-007	419
DIST-00420	2025-11-23 06:06:00	2025-11-23 09:44:00	Entregado	Sopó → Gachancipá	TRANS-018	420
DIST-00421	2025-11-23 18:20:00	2025-11-24 15:44:00	Entregado	Sopó → Cúcuta	TRANS-011	421
DIST-00422	2025-11-24 02:57:00	2025-11-24 04:45:00	Entregado	Sopó → Zipaquirá	TRANS-006	422
DIST-00423	2025-11-24 11:12:00	2025-11-24 18:07:00	Entregado	Sopó → Bucaramanga	TRANS-010	423
DIST-00424	2025-11-24 18:03:00	2025-11-24 23:28:00	Entregado	Sopó → Bucaramanga	TRANS-003	424
DIST-00425	2025-11-25 04:10:00	2025-11-25 17:54:00	Entregado	Sopó → Cúcuta	TRANS-014	425
DIST-00426	2025-11-25 09:57:00	2025-11-25 12:13:00	Entregado	Sopó → La Calera	TRANS-007	426
DIST-00427	2025-11-25 20:09:00	2025-11-25 23:45:00	Entregado	Sopó → Tocancipá	TRANS-009	427
DIST-00428	2025-11-26 07:27:00	2025-11-26 17:08:00	Entregado	Sopó → Manizales	TRANS-015	428
DIST-00429	2025-11-26 12:01:00	2025-11-26 15:16:00	Entregado	Sopó → Briceño	TRANS-013	429
DIST-00430	2025-11-27 01:10:00	2025-11-27 14:43:00	Entregado	Sopó → Santa Marta	TRANS-017	430
DIST-00431	2025-11-27 08:47:00	2025-11-27 11:17:00	Entregado	Sopó → Zipaquirá	TRANS-016	431
DIST-00432	2025-11-27 16:03:00	2025-11-27 17:38:00	Entregado	Sopó → La Calera	TRANS-006	432
DIST-00433	2025-11-28 03:06:00	2025-11-28 10:57:00	Entregado	Sopó → Cali	TRANS-007	433
DIST-00434	2025-11-28 11:05:00	2025-11-28 13:27:00	En camino	Sopó → Tocancipá	TRANS-005	434
DIST-00435	2025-11-28 20:48:00	2025-11-29 18:09:00	Entregado	Sopó → Cúcuta	TRANS-008	435
DIST-00436	2025-11-29 05:08:00	2025-11-29 20:29:00	Entregado	Sopó → Barranquilla	TRANS-008	436
DIST-00437	2025-11-29 13:25:00	2025-11-29 20:23:00	Entregado	Sopó → Medellín	TRANS-001	437
DIST-00438	2025-11-29 19:09:00	2025-11-30 22:17:00	Entregado	Sopó → Cúcuta	TRANS-011	438
DIST-00439	2025-11-30 06:54:00	2025-12-01 08:19:00	Entregado	Sopó → Pasto	TRANS-012	439
DIST-00440	2025-11-30 13:14:00	2025-11-30 21:35:00	Entregado	Sopó → Manizales	TRANS-010	440
DIST-00441	2025-11-30 21:55:00	2025-12-01 07:40:00	Entregado	Sopó → Ibagué	TRANS-013	441
DIST-00442	2025-12-01 06:32:00	2025-12-01 15:26:00	Entregado	Sopó → Cali	TRANS-006	442
DIST-00443	2025-12-01 16:16:00	2025-12-01 18:47:00	Entregado	Sopó → Bogotá D.C.	TRANS-006	443
DIST-00444	2025-12-02 02:46:00	2025-12-02 05:56:00	Entregado	Sopó → Cajicá	TRANS-005	444
DIST-00445	2025-12-02 12:40:00	2025-12-02 15:02:00	Entregado	Sopó → Gachancipá	TRANS-006	445
DIST-00446	2025-12-02 19:34:00	2025-12-03 12:54:00	Entregado	Sopó → Cartagena	TRANS-011	446
DIST-00447	2025-12-03 04:53:00	2025-12-03 10:39:00	Entregado	Sopó → Villavicencio	TRANS-005	447
DIST-00448	2025-12-03 10:50:00	2025-12-04 03:27:00	Entregado	Sopó → Santa Marta	TRANS-014	448
DIST-00449	2025-12-03 20:32:00	2025-12-03 22:18:00	Entregado	Sopó → Bogotá D.C.	TRANS-009	449
DIST-00450	2025-12-04 06:00:00	2025-12-05 03:06:00	Entregado	Sopó → Cartagena	TRANS-017	450
DIST-00451	2025-12-04 14:52:00	2025-12-05 00:45:00	Entregado	Sopó → Medellín	TRANS-003	451
DIST-00452	2025-12-05 00:06:00	2025-12-05 05:38:00	Entregado	Sopó → Bucaramanga	TRANS-010	452
DIST-00453	2025-12-05 07:39:00	2025-12-05 10:02:00	Entregado	Sopó → Zipaquirá	TRANS-018	453
DIST-00454	2025-12-05 16:02:00	2025-12-05 17:52:00	En camino	Sopó → La Calera	TRANS-005	454
DIST-00455	2025-12-06 01:02:00	2025-12-06 06:57:00	Entregado	Sopó → Villavicencio	TRANS-005	455
DIST-00456	2025-12-06 12:14:00	2025-12-07 13:31:00	Entregado	Sopó → Cartagena	TRANS-008	456
DIST-00457	2025-12-06 21:12:00	2025-12-06 23:30:00	Entregado	Sopó → Cajicá	TRANS-005	457
DIST-00458	2025-12-07 05:59:00	2025-12-07 12:10:00	En camino	Sopó → Bucaramanga	TRANS-015	458
DIST-00459	2025-12-07 14:41:00	2025-12-07 23:12:00	Entregado	Sopó → Manizales	TRANS-018	459
DIST-00460	2025-12-07 21:50:00	2025-12-08 12:21:00	Entregado	Sopó → Santa Marta	TRANS-003	460
DIST-00461	2025-12-08 07:32:00	2025-12-08 13:21:00	Entregado	Sopó → Medellín	TRANS-005	461
DIST-00462	2025-12-08 17:07:00	2025-12-09 12:47:00	Entregado	Sopó → Barranquilla	TRANS-008	462
DIST-00463	2025-12-09 01:53:00	2025-12-09 05:21:00	Entregado	Sopó → Bogotá D.C.	TRANS-004	463
DIST-00464	2025-12-09 09:55:00	2025-12-09 13:38:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	464
DIST-00465	2025-12-09 15:57:00	2025-12-09 18:11:00	Entregado	Sopó → Cajicá	TRANS-016	465
DIST-00466	2025-12-10 00:52:00	2025-12-10 06:17:00	Entregado	Sopó → Bucaramanga	TRANS-007	466
DIST-00467	2025-12-10 11:46:00	2025-12-10 17:32:00	Entregado	Sopó → Pereira	TRANS-018	467
DIST-00468	2025-12-10 21:27:00	2025-12-11 06:03:00	Entregado	Sopó → Medellín	TRANS-013	468
DIST-00469	2025-12-11 04:16:00	2025-12-11 11:06:00	Entregado	Sopó → Pereira	TRANS-007	469
DIST-00470	2025-12-11 15:20:00	2025-12-11 16:54:00	Entregado	Sopó → Briceño	TRANS-018	470
DIST-00471	2025-12-11 20:06:00	2025-12-12 04:24:00	Entregado	Sopó → Ibagué	TRANS-010	471
DIST-00472	2025-12-12 07:04:00	2025-12-12 14:53:00	Entregado	Sopó → Ibagué	TRANS-016	472
DIST-00473	2025-12-12 15:55:00	2025-12-12 17:41:00	Entregado	Sopó → Cajicá	TRANS-007	473
DIST-00474	2025-12-13 00:35:00	2025-12-13 02:42:00	Entregado	Sopó → Chía	TRANS-007	474
DIST-00475	2025-12-13 09:33:00	2025-12-13 15:06:00	Entregado	Sopó → Cali	TRANS-006	475
DIST-00476	2025-12-13 17:29:00	2025-12-13 22:51:00	Entregado	Sopó → Medellín	TRANS-015	476
DIST-00477	2025-12-14 03:47:00	2025-12-15 03:53:00	Entregado	Sopó → Pasto	TRANS-011	477
DIST-00478	2025-12-14 11:16:00	2025-12-15 10:14:00	Entregado	Sopó → Pasto	TRANS-008	478
DIST-00479	2025-12-14 20:06:00	2025-12-15 09:35:00	Entregado	Sopó → Cartagena	TRANS-011	479
DIST-00480	2025-12-15 02:43:00	2025-12-15 07:55:00	Entregado	Sopó → Ibagué	TRANS-011	480
DIST-00481	2025-12-15 11:50:00	2025-12-16 02:00:00	Entregado	Sopó → Santa Marta	TRANS-017	481
DIST-00482	2025-12-15 20:34:00	2025-12-15 23:53:00	Entregado	Sopó → Zipaquirá	TRANS-004	482
DIST-00483	2025-12-16 08:09:00	2025-12-16 11:42:00	Entregado	Sopó → Briceño	TRANS-016	483
DIST-00484	2025-12-16 15:57:00	2025-12-16 19:29:00	Entregado	Sopó → Briceño	TRANS-016	484
DIST-00485	2025-12-16 22:50:00	2025-12-17 02:38:00	Entregado	Sopó → Briceño	TRANS-004	485
DIST-00486	2025-12-17 09:15:00	2025-12-17 12:50:00	Entregado	Sopó → Zipaquirá	TRANS-016	486
DIST-00487	2025-12-17 16:20:00	2025-12-17 19:50:00	Entregado	Sopó → Bogotá D.C.	TRANS-015	487
DIST-00488	2025-12-18 03:58:00	2025-12-18 10:52:00	Entregado	Sopó → Bucaramanga	TRANS-015	488
DIST-00489	2025-12-18 13:06:00	2025-12-19 05:23:00	Entregado	Sopó → Pasto	TRANS-012	489
DIST-00490	2025-12-18 20:33:00	2025-12-19 00:13:00	Entregado	Sopó → Cajicá	TRANS-015	490
DIST-00491	2025-12-19 06:54:00	2025-12-19 10:05:00	Entregado	Sopó → Cajicá	TRANS-004	491
DIST-00492	2025-12-19 15:47:00	2025-12-19 22:45:00	Entregado	Sopó → Cali	TRANS-010	492
DIST-00493	2025-12-19 21:58:00	2025-12-20 04:02:00	Entregado	Sopó → Medellín	TRANS-016	493
DIST-00494	2025-12-20 05:55:00	2025-12-20 12:43:00	Entregado	Sopó → Medellín	TRANS-011	494
DIST-00495	2025-12-20 15:36:00	2025-12-20 20:37:00	Entregado	Sopó → Ibagué	TRANS-018	495
DIST-00496	2025-12-21 00:53:00	2025-12-21 04:50:00	En camino	Sopó → Bogotá D.C.	TRANS-007	496
DIST-00497	2025-12-21 09:16:00	2025-12-21 10:55:00	Entregado	Sopó → Cajicá	TRANS-009	497
DIST-00498	2025-12-21 16:16:00	2025-12-21 19:10:00	Entregado	Sopó → Cajicá	TRANS-016	498
DIST-00499	2025-12-22 03:43:00	2025-12-22 17:18:00	Entregado	Sopó → Santa Marta	TRANS-012	499
DIST-00500	2025-12-22 13:36:00	2025-12-22 19:18:00	Entregado	Sopó → Cali	TRANS-015	500
DIST-00501	2025-12-22 20:11:00	2025-12-23 21:50:00	Entregado	Sopó → Cúcuta	TRANS-012	501
DIST-00502	2025-12-23 03:26:00	2025-12-23 20:49:00	Entregado	Sopó → Santa Marta	TRANS-017	502
DIST-00503	2025-12-23 13:43:00	2025-12-24 05:36:00	Entregado	Sopó → Santa Marta	TRANS-011	503
DIST-00504	2025-12-23 20:41:00	2025-12-24 00:21:00	Entregado	Sopó → Cajicá	TRANS-007	504
DIST-00505	2025-12-24 08:20:00	2025-12-24 10:11:00	Entregado	Sopó → La Calera	TRANS-006	505
DIST-00506	2025-12-24 18:46:00	2025-12-24 21:43:00	Entregado	Sopó → Briceño	TRANS-002	506
DIST-00507	2025-12-25 00:42:00	2025-12-25 04:08:00	Entregado	Sopó → Briceño	TRANS-015	507
DIST-00508	2025-12-25 09:16:00	2025-12-26 00:04:00	Entregado	Sopó → Barranquilla	TRANS-003	508
DIST-00509	2025-12-25 19:33:00	2025-12-26 01:44:00	En camino	Sopó → Villavicencio	TRANS-005	509
DIST-00510	2025-12-26 05:39:00	2025-12-26 07:51:00	Entregado	Sopó → Gachancipá	TRANS-007	510
DIST-00511	2025-12-26 10:13:00	2025-12-26 12:02:00	En camino	Sopó → Zipaquirá	TRANS-016	511
DIST-00512	2025-12-26 19:23:00	2025-12-26 21:21:00	Entregado	Sopó → Briceño	TRANS-016	512
DIST-00513	2025-12-27 04:31:00	2025-12-27 21:44:00	Entregado	Sopó → Cúcuta	TRANS-008	513
DIST-00514	2025-12-27 15:36:00	2025-12-27 22:17:00	Entregado	Sopó → Ibagué	TRANS-007	514
DIST-00515	2025-12-28 00:06:00	2025-12-28 02:26:00	Entregado	Sopó → Bogotá D.C.	TRANS-002	515
DIST-00516	2025-12-28 10:05:00	2025-12-28 15:12:00	Entregado	Sopó → Bucaramanga	TRANS-002	516
DIST-00517	2025-12-28 16:33:00	2025-12-29 01:06:00	Entregado	Sopó → Bucaramanga	TRANS-003	517
DIST-00518	2025-12-29 00:17:00	2025-12-29 03:06:00	Entregado	Sopó → Bogotá D.C.	TRANS-006	518
DIST-00519	2025-12-29 09:43:00	2025-12-29 12:55:00	Entregado	Sopó → Briceño	TRANS-013	519
DIST-00520	2025-12-29 20:27:00	2025-12-29 22:35:00	Entregado	Sopó → Briceño	TRANS-007	520
DIST-00521	2025-12-30 03:03:00	2025-12-30 11:54:00	Entregado	Sopó → Villavicencio	TRANS-009	521
DIST-00522	2025-12-30 12:53:00	2025-12-30 22:35:00	Entregado	Sopó → Bucaramanga	TRANS-016	522
DIST-00523	2025-12-30 22:18:00	2025-12-31 01:44:00	Entregado	Sopó → Gachancipá	TRANS-002	523
DIST-00524	2025-12-31 07:34:00	2025-12-31 21:00:00	En camino	Sopó → Cartagena	TRANS-003	524
DIST-00525	2025-12-31 15:02:00	2025-12-31 17:55:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	525
DIST-00526	2025-12-31 22:02:00	2026-01-01 12:52:00	Entregado	Sopó → Cúcuta	TRANS-012	526
DIST-00527	2026-01-01 06:11:00	2026-01-02 06:37:00	Entregado	Sopó → Cartagena	TRANS-011	527
DIST-00528	2026-01-01 17:59:00	2026-01-02 11:29:00	Entregado	Sopó → Santa Marta	TRANS-014	528
DIST-00529	2026-01-02 04:05:00	2026-01-02 09:37:00	Entregado	Sopó → Bucaramanga	TRANS-013	529
DIST-00530	2026-01-02 12:38:00	2026-01-02 14:16:00	Entregado	Sopó → Tocancipá	TRANS-005	530
DIST-00531	2026-01-02 20:13:00	2026-01-02 22:16:00	Entregado	Sopó → Tocancipá	TRANS-005	531
DIST-00532	2026-01-03 02:59:00	2026-01-03 04:59:00	Entregado	Sopó → Tocancipá	TRANS-007	532
DIST-00533	2026-01-03 15:33:00	2026-01-03 21:37:00	Entregado	Sopó → Bucaramanga	TRANS-018	533
DIST-00534	2026-01-03 23:27:00	2026-01-04 01:39:00	Entregado	Sopó → La Calera	TRANS-006	534
DIST-00535	2026-01-04 05:42:00	2026-01-04 13:45:00	Entregado	Sopó → Cali	TRANS-005	535
DIST-00536	2026-01-04 17:07:00	2026-01-04 20:27:00	En camino	Sopó → Bogotá D.C.	TRANS-007	536
DIST-00537	2026-01-04 23:47:00	2026-01-05 05:28:00	Entregado	Sopó → Ibagué	TRANS-005	537
DIST-00538	2026-01-05 07:08:00	2026-01-05 16:41:00	Entregado	Sopó → Villavicencio	TRANS-004	538
DIST-00539	2026-01-05 18:53:00	2026-01-05 21:32:00	Entregado	Sopó → Briceño	TRANS-002	539
DIST-00540	2026-01-06 04:47:00	2026-01-06 06:21:00	Entregado	Sopó → Tocancipá	TRANS-010	540
DIST-00541	2026-01-06 08:50:00	2026-01-06 16:21:00	Entregado	Sopó → Manizales	TRANS-003	541
DIST-00542	2026-01-06 17:30:00	2026-01-06 21:28:00	Entregado	Sopó → Chía	TRANS-016	542
DIST-00543	2026-01-07 07:00:00	2026-01-08 03:24:00	En camino	Sopó → Barranquilla	TRANS-003	543
DIST-00544	2026-01-07 14:36:00	2026-01-07 17:21:00	Entregado	Sopó → Cajicá	TRANS-005	544
DIST-00545	2026-01-07 21:25:00	2026-01-07 23:27:00	Entregado	Sopó → Gachancipá	TRANS-002	545
DIST-00546	2026-01-08 07:57:00	2026-01-08 20:11:00	Entregado	Sopó → Barranquilla	TRANS-017	546
DIST-00547	2026-01-08 13:25:00	2026-01-09 14:02:00	Entregado	Sopó → Cartagena	TRANS-011	547
DIST-00548	2026-01-08 22:09:00	2026-01-09 00:47:00	Entregado	Sopó → Briceño	TRANS-016	548
DIST-00549	2026-01-09 10:17:00	2026-01-09 12:46:00	Entregado	Sopó → Tocancipá	TRANS-016	549
DIST-00550	2026-01-09 19:15:00	2026-01-09 22:57:00	Entregado	Sopó → Cajicá	TRANS-013	550
DIST-00551	2026-01-10 03:15:00	2026-01-11 06:04:00	Entregado	Sopó → Barranquilla	TRANS-014	551
DIST-00552	2026-01-10 13:06:00	2026-01-10 21:25:00	Entregado	Sopó → Ibagué	TRANS-011	552
DIST-00553	2026-01-10 21:18:00	2026-01-11 04:19:00	Entregado	Sopó → Medellín	TRANS-018	553
DIST-00554	2026-01-11 05:49:00	2026-01-11 13:05:00	Entregado	Sopó → Ibagué	TRANS-006	554
DIST-00555	2026-01-11 13:35:00	2026-01-11 20:17:00	Entregado	Sopó → Manizales	TRANS-015	555
DIST-00556	2026-01-11 23:33:00	2026-01-12 02:02:00	Entregado	Sopó → Tocancipá	TRANS-010	556
DIST-00557	2026-01-12 06:22:00	2026-01-12 14:30:00	Entregado	Sopó → Manizales	TRANS-015	557
DIST-00558	2026-01-12 18:03:00	2026-01-12 20:43:00	Entregado	Sopó → La Calera	TRANS-009	558
DIST-00559	2026-01-12 23:22:00	2026-01-13 05:04:00	Entregado	Sopó → Ibagué	TRANS-007	559
DIST-00560	2026-01-13 09:39:00	2026-01-13 18:43:00	Entregado	Sopó → Pereira	TRANS-011	560
DIST-00561	2026-01-13 18:59:00	2026-01-13 22:33:00	Entregado	Sopó → Gachancipá	TRANS-006	561
DIST-00562	2026-01-14 02:26:00	2026-01-15 03:44:00	Entregado	Sopó → Barranquilla	TRANS-017	562
DIST-00563	2026-01-14 10:33:00	2026-01-14 12:18:00	Entregado	Sopó → Cajicá	TRANS-016	563
DIST-00564	2026-01-14 20:19:00	2026-01-15 09:43:00	Entregado	Sopó → Pasto	TRANS-017	564
DIST-00565	2026-01-15 05:59:00	2026-01-16 05:40:00	Entregado	Sopó → Barranquilla	TRANS-003	565
DIST-00566	2026-01-15 12:13:00	2026-01-15 19:39:00	Entregado	Sopó → Medellín	TRANS-009	566
DIST-00567	2026-01-16 00:19:00	2026-01-16 06:34:00	Entregado	Sopó → Pereira	TRANS-016	567
DIST-00568	2026-01-16 08:02:00	2026-01-16 10:17:00	Entregado	Sopó → La Calera	TRANS-001	568
DIST-00569	2026-01-16 15:09:00	2026-01-17 10:09:00	Entregado	Sopó → Cúcuta	TRANS-014	569
DIST-00570	2026-01-16 23:14:00	2026-01-17 09:01:00	Entregado	Sopó → Medellín	TRANS-011	570
DIST-00571	2026-01-17 09:33:00	2026-01-17 16:23:00	Entregado	Sopó → Medellín	TRANS-010	571
DIST-00572	2026-01-17 19:20:00	2026-01-17 22:51:00	Entregado	Sopó → Tocancipá	TRANS-013	572
DIST-00573	2026-01-18 01:49:00	2026-01-18 05:44:00	Entregado	Sopó → Cajicá	TRANS-004	573
DIST-00574	2026-01-18 13:55:00	2026-01-18 15:36:00	Entregado	Sopó → Zipaquirá	TRANS-010	574
DIST-00575	2026-01-18 23:03:00	2026-01-19 02:09:00	Entregado	Sopó → Tocancipá	TRANS-015	575
DIST-00576	2026-01-19 06:38:00	2026-01-19 09:13:00	Entregado	Sopó → Gachancipá	TRANS-015	576
DIST-00577	2026-01-19 13:52:00	2026-01-19 15:42:00	Entregado	Sopó → Chía	TRANS-015	577
DIST-00578	2026-01-19 21:38:00	2026-01-20 00:29:00	Entregado	Sopó → Zipaquirá	TRANS-016	578
DIST-00579	2026-01-20 09:15:00	2026-01-20 11:02:00	Entregado	Sopó → Briceño	TRANS-013	579
DIST-00580	2026-01-20 16:38:00	2026-01-20 20:15:00	Entregado	Sopó → Bogotá D.C.	TRANS-002	580
DIST-00581	2026-01-20 23:55:00	2026-01-21 06:35:00	Entregado	Sopó → Villavicencio	TRANS-009	581
DIST-00582	2026-01-21 11:53:00	2026-01-21 17:35:00	Entregado	Sopó → Manizales	TRANS-001	582
DIST-00583	2026-01-21 18:06:00	2026-01-21 20:53:00	En camino	Sopó → Cajicá	TRANS-010	583
DIST-00584	2026-01-22 02:30:00	2026-01-22 19:30:00	Entregado	Sopó → Cúcuta	TRANS-011	584
DIST-00585	2026-01-22 12:30:00	2026-01-23 07:13:00	Entregado	Sopó → Pasto	TRANS-003	585
DIST-00586	2026-01-22 22:59:00	2026-01-23 01:07:00	Entregado	Sopó → Tocancipá	TRANS-013	586
DIST-00587	2026-01-23 06:44:00	2026-01-23 10:00:00	Entregado	Sopó → Briceño	TRANS-015	587
DIST-00588	2026-01-23 14:29:00	2026-01-24 13:47:00	Entregado	Sopó → Cúcuta	TRANS-014	588
DIST-00589	2026-01-23 21:18:00	2026-01-24 07:03:00	Entregado	Sopó → Medellín	TRANS-006	589
DIST-00590	2026-01-24 07:11:00	2026-01-24 10:27:00	Entregado	Sopó → Zipaquirá	TRANS-015	590
DIST-00591	2026-01-24 19:09:00	2026-01-25 02:22:00	Entregado	Sopó → Ibagué	TRANS-001	591
DIST-00592	2026-01-24 23:51:00	2026-01-25 01:41:00	Entregado	Sopó → Tocancipá	TRANS-005	592
DIST-00593	2026-01-25 08:04:00	2026-01-26 07:36:00	Entregado	Sopó → Santa Marta	TRANS-014	593
DIST-00594	2026-01-25 20:21:00	2026-01-25 23:43:00	Entregado	Sopó → Zipaquirá	TRANS-005	594
DIST-00595	2026-01-26 05:24:00	2026-01-26 13:58:00	Entregado	Sopó → Cali	TRANS-005	595
DIST-00596	2026-01-26 10:43:00	2026-01-26 15:58:00	Entregado	Sopó → Cali	TRANS-013	596
DIST-00597	2026-01-26 21:08:00	2026-01-27 23:01:00	Entregado	Sopó → Santa Marta	TRANS-012	597
DIST-00598	2026-01-27 05:15:00	2026-01-27 07:19:00	Entregado	Sopó → Cajicá	TRANS-015	598
DIST-00599	2026-01-27 17:06:00	2026-01-27 19:24:00	Entregado	Sopó → Cajicá	TRANS-009	599
DIST-00600	2026-01-28 02:10:00	2026-01-28 04:29:00	Entregado	Sopó → Zipaquirá	TRANS-013	600
DIST-00601	2026-01-28 08:22:00	2026-01-28 11:41:00	Entregado	Sopó → Chía	TRANS-007	601
DIST-00602	2026-01-28 18:57:00	2026-01-29 00:33:00	Entregado	Sopó → Medellín	TRANS-003	602
DIST-00603	2026-01-28 23:55:00	2026-01-29 19:45:00	En camino	Sopó → Pasto	TRANS-011	603
DIST-00604	2026-01-29 10:44:00	2026-01-29 20:03:00	Entregado	Sopó → Medellín	TRANS-011	604
DIST-00605	2026-01-29 17:46:00	2026-01-30 00:07:00	Entregado	Sopó → Medellín	TRANS-011	605
DIST-00606	2026-01-30 06:27:00	2026-01-30 18:58:00	Entregado	Sopó → Cartagena	TRANS-011	606
DIST-00607	2026-01-30 15:18:00	2026-01-31 13:48:00	Entregado	Sopó → Cúcuta	TRANS-014	607
DIST-00608	2026-01-30 20:35:00	2026-01-30 23:56:00	Entregado	Sopó → Gachancipá	TRANS-015	608
DIST-00609	2026-01-31 04:27:00	2026-01-31 12:14:00	Entregado	Sopó → Bucaramanga	TRANS-013	609
DIST-00610	2026-01-31 15:50:00	2026-01-31 23:08:00	En camino	Sopó → Villavicencio	TRANS-005	610
DIST-00611	2026-02-01 00:51:00	2026-02-01 06:30:00	Entregado	Sopó → Medellín	TRANS-001	611
DIST-00612	2026-02-01 09:41:00	2026-02-01 11:35:00	Entregado	Sopó → Briceño	TRANS-016	612
DIST-00613	2026-02-01 19:20:00	2026-02-02 21:18:00	Entregado	Sopó → Cúcuta	TRANS-008	613
DIST-00614	2026-02-02 04:17:00	2026-02-02 06:04:00	Entregado	Sopó → Chía	TRANS-002	614
DIST-00615	2026-02-02 10:59:00	2026-02-02 16:48:00	Entregado	Sopó → Medellín	TRANS-016	615
DIST-00616	2026-02-02 18:49:00	2026-02-03 02:35:00	Entregado	Sopó → Bucaramanga	TRANS-011	616
DIST-00617	2026-02-03 03:21:00	2026-02-03 16:52:00	Entregado	Sopó → Pasto	TRANS-011	617
DIST-00618	2026-02-03 14:38:00	2026-02-03 16:21:00	Entregado	Sopó → Zipaquirá	TRANS-016	618
DIST-00619	2026-02-03 21:38:00	2026-02-04 17:55:00	Entregado	Sopó → Barranquilla	TRANS-003	619
DIST-00620	2026-02-04 07:19:00	2026-02-04 23:03:00	Entregado	Sopó → Barranquilla	TRANS-012	620
DIST-00621	2026-02-04 13:29:00	2026-02-04 19:42:00	Entregado	Sopó → Manizales	TRANS-015	621
DIST-00622	2026-02-05 01:02:00	2026-02-06 00:06:00	Entregado	Sopó → Barranquilla	TRANS-014	622
DIST-00623	2026-02-05 11:18:00	2026-02-05 12:49:00	Entregado	Sopó → Gachancipá	TRANS-004	623
DIST-00624	2026-02-05 15:53:00	2026-02-05 17:59:00	Entregado	Sopó → Tocancipá	TRANS-001	624
DIST-00625	2026-02-06 01:56:00	2026-02-06 07:38:00	Entregado	Sopó → Cali	TRANS-013	625
DIST-00626	2026-02-06 13:51:00	2026-02-06 17:50:00	Entregado	Sopó → Briceño	TRANS-016	626
DIST-00627	2026-02-06 21:37:00	2026-02-07 07:09:00	Entregado	Sopó → Ibagué	TRANS-006	627
DIST-00628	2026-02-07 05:36:00	2026-02-07 14:49:00	Entregado	Sopó → Cali	TRANS-015	628
DIST-00629	2026-02-07 12:03:00	2026-02-07 15:57:00	Entregado	Sopó → Briceño	TRANS-004	629
DIST-00630	2026-02-08 00:08:00	2026-02-08 09:49:00	Entregado	Sopó → Cali	TRANS-012	630
DIST-00631	2026-02-08 08:46:00	2026-02-08 16:43:00	Entregado	Sopó → Villavicencio	TRANS-013	631
DIST-00632	2026-02-08 17:15:00	2026-02-09 14:44:00	Entregado	Sopó → Pasto	TRANS-017	632
DIST-00633	2026-02-09 02:12:00	2026-02-09 08:27:00	Entregado	Sopó → Medellín	TRANS-013	633
DIST-00634	2026-02-09 09:18:00	2026-02-09 11:23:00	Entregado	Sopó → Zipaquirá	TRANS-004	634
DIST-00635	2026-02-09 19:06:00	2026-02-10 13:25:00	Entregado	Sopó → Barranquilla	TRANS-003	635
DIST-00636	2026-02-10 02:26:00	2026-02-10 12:10:00	Entregado	Sopó → Bucaramanga	TRANS-015	636
DIST-00637	2026-02-10 12:36:00	2026-02-10 22:07:00	Entregado	Sopó → Villavicencio	TRANS-016	637
DIST-00638	2026-02-10 21:04:00	2026-02-11 00:56:00	Entregado	Sopó → La Calera	TRANS-015	638
DIST-00639	2026-02-11 04:18:00	2026-02-11 10:01:00	Entregado	Sopó → Ibagué	TRANS-007	639
DIST-00640	2026-02-11 14:39:00	2026-02-11 16:52:00	Entregado	Sopó → Tocancipá	TRANS-015	640
DIST-00641	2026-02-11 23:37:00	2026-02-12 03:08:00	Entregado	Sopó → Gachancipá	TRANS-013	641
DIST-00642	2026-02-12 09:11:00	2026-02-12 15:06:00	Entregado	Sopó → Medellín	TRANS-001	642
DIST-00643	2026-02-12 14:57:00	2026-02-13 17:11:00	Entregado	Sopó → Cúcuta	TRANS-014	643
DIST-00644	2026-02-13 01:05:00	2026-02-14 04:22:00	Entregado	Sopó → Santa Marta	TRANS-017	644
DIST-00645	2026-02-13 09:18:00	2026-02-13 21:26:00	Entregado	Sopó → Cartagena	TRANS-014	645
DIST-00646	2026-02-13 18:56:00	2026-02-13 22:04:00	Entregado	Sopó → Zipaquirá	TRANS-015	646
DIST-00647	2026-02-14 05:10:00	2026-02-14 12:44:00	Entregado	Sopó → Pereira	TRANS-010	647
DIST-00648	2026-02-14 11:42:00	2026-02-15 07:55:00	Entregado	Sopó → Cúcuta	TRANS-012	648
DIST-00649	2026-02-14 19:54:00	2026-02-14 23:10:00	Entregado	Sopó → La Calera	TRANS-010	649
DIST-00650	2026-02-15 05:37:00	2026-02-15 23:26:00	Entregado	Sopó → Barranquilla	TRANS-012	650
DIST-00651	2026-02-15 13:46:00	2026-02-15 16:02:00	Entregado	Sopó → Chía	TRANS-018	651
DIST-00652	2026-02-16 01:23:00	2026-02-16 04:05:00	En camino	Sopó → Gachancipá	TRANS-001	652
DIST-00653	2026-02-16 06:20:00	2026-02-17 09:01:00	Entregado	Sopó → Cúcuta	TRANS-014	653
DIST-00654	2026-02-16 17:06:00	2026-02-17 20:48:00	Entregado	Sopó → Cartagena	TRANS-012	654
DIST-00655	2026-02-17 01:39:00	2026-02-17 04:10:00	Entregado	Sopó → Bogotá D.C.	TRANS-013	655
DIST-00656	2026-02-17 12:29:00	2026-02-18 11:50:00	Entregado	Sopó → Santa Marta	TRANS-003	656
DIST-00657	2026-02-17 18:54:00	2026-02-17 20:31:00	Entregado	Sopó → Cajicá	TRANS-004	657
DIST-00658	2026-02-18 05:13:00	2026-02-18 18:12:00	Entregado	Sopó → Cartagena	TRANS-011	658
DIST-00659	2026-02-18 14:29:00	2026-02-18 22:25:00	Entregado	Sopó → Manizales	TRANS-012	659
DIST-00660	2026-02-18 19:38:00	2026-02-19 02:10:00	Entregado	Sopó → Bucaramanga	TRANS-010	660
DIST-00661	2026-02-19 05:28:00	2026-02-19 08:40:00	Entregado	Sopó → Briceño	TRANS-015	661
DIST-00662	2026-02-19 12:46:00	2026-02-19 16:34:00	Entregado	Sopó → Gachancipá	TRANS-009	662
DIST-00663	2026-02-19 21:46:00	2026-02-20 07:13:00	En camino	Sopó → Ibagué	TRANS-009	663
DIST-00664	2026-02-20 08:31:00	2026-02-20 11:41:00	Entregado	Sopó → Gachancipá	TRANS-005	664
DIST-00665	2026-02-20 19:04:00	2026-02-20 21:53:00	Entregado	Sopó → Briceño	TRANS-016	665
DIST-00666	2026-02-21 03:06:00	2026-02-21 08:18:00	Entregado	Sopó → Bucaramanga	TRANS-002	666
DIST-00667	2026-02-21 12:41:00	2026-02-21 19:00:00	Entregado	Sopó → Bucaramanga	TRANS-007	667
DIST-00668	2026-02-21 20:08:00	2026-02-21 22:39:00	Entregado	Sopó → Chía	TRANS-004	668
DIST-00669	2026-02-22 04:44:00	2026-02-22 08:39:00	Entregado	Sopó → La Calera	TRANS-006	669
DIST-00670	2026-02-22 12:14:00	2026-02-22 21:56:00	Entregado	Sopó → Villavicencio	TRANS-001	670
DIST-00671	2026-02-22 23:03:00	2026-02-23 01:25:00	Entregado	Sopó → Tocancipá	TRANS-015	671
DIST-00672	2026-02-23 06:23:00	2026-02-24 05:05:00	Entregado	Sopó → Pasto	TRANS-012	672
DIST-00673	2026-02-23 12:52:00	2026-02-23 15:23:00	Entregado	Sopó → Briceño	TRANS-005	673
DIST-00674	2026-02-23 23:27:00	2026-02-24 14:52:00	Entregado	Sopó → Cartagena	TRANS-011	674
DIST-00675	2026-02-24 10:19:00	2026-02-24 15:58:00	Entregado	Sopó → Manizales	TRANS-013	675
DIST-00676	2026-02-24 15:26:00	2026-02-25 07:57:00	En camino	Sopó → Cartagena	TRANS-011	676
DIST-00677	2026-02-25 00:13:00	2026-02-25 23:28:00	Entregado	Sopó → Santa Marta	TRANS-017	677
DIST-00678	2026-02-25 08:39:00	2026-02-25 16:40:00	Entregado	Sopó → Bucaramanga	TRANS-010	678
DIST-00679	2026-02-25 18:37:00	2026-02-25 21:00:00	Entregado	Sopó → Zipaquirá	TRANS-007	679
DIST-00680	2026-02-26 01:57:00	2026-02-26 22:13:00	Entregado	Sopó → Barranquilla	TRANS-017	680
DIST-00681	2026-02-26 12:52:00	2026-02-27 13:05:00	Entregado	Sopó → Cartagena	TRANS-008	681
DIST-00682	2026-02-26 22:07:00	2026-02-27 07:09:00	En camino	Sopó → Ibagué	TRANS-007	682
DIST-00683	2026-02-27 05:13:00	2026-02-28 03:17:00	Entregado	Sopó → Barranquilla	TRANS-003	683
DIST-00684	2026-02-27 15:38:00	2026-02-27 19:11:00	Entregado	Sopó → Zipaquirá	TRANS-007	684
DIST-00685	2026-02-28 01:11:00	2026-02-28 16:45:00	Entregado	Sopó → Pasto	TRANS-011	685
DIST-00686	2026-02-28 08:15:00	2026-03-01 11:31:00	Entregado	Sopó → Cúcuta	TRANS-003	686
DIST-00687	2026-02-28 17:05:00	2026-02-28 20:58:00	Entregado	Sopó → Chía	TRANS-013	687
DIST-00688	2026-03-01 01:44:00	2026-03-01 09:23:00	Entregado	Sopó → Medellín	TRANS-013	688
DIST-00689	2026-03-01 09:19:00	2026-03-01 11:57:00	Entregado	Sopó → Gachancipá	TRANS-004	689
DIST-00690	2026-03-01 19:06:00	2026-03-02 01:02:00	Entregado	Sopó → Ibagué	TRANS-011	690
DIST-00691	2026-03-02 05:50:00	2026-03-02 08:37:00	Entregado	Sopó → Zipaquirá	TRANS-002	691
DIST-00692	2026-03-02 11:55:00	2026-03-02 15:18:00	Entregado	Sopó → Zipaquirá	TRANS-009	692
DIST-00693	2026-03-02 23:17:00	2026-03-03 02:34:00	Entregado	Sopó → Bogotá D.C.	TRANS-016	693
DIST-00694	2026-03-03 08:02:00	2026-03-03 11:06:00	Entregado	Sopó → Bogotá D.C.	TRANS-005	694
DIST-00695	2026-03-03 16:21:00	2026-03-03 20:19:00	Entregado	Sopó → Cajicá	TRANS-004	695
DIST-00696	2026-03-03 23:43:00	2026-03-04 03:27:00	Entregado	Sopó → Cajicá	TRANS-016	696
DIST-00697	2026-03-04 07:14:00	2026-03-04 13:00:00	Entregado	Sopó → Medellín	TRANS-016	697
DIST-00698	2026-03-04 17:08:00	2026-03-04 23:43:00	Entregado	Sopó → Medellín	TRANS-018	698
DIST-00699	2026-03-05 03:01:00	2026-03-05 23:08:00	Entregado	Sopó → Barranquilla	TRANS-011	699
DIST-00700	2026-03-05 12:31:00	2026-03-05 16:22:00	Entregado	Sopó → Bogotá D.C.	TRANS-007	700
DIST-00701	2026-03-05 21:47:00	2026-03-06 01:23:00	Entregado	Sopó → Tocancipá	TRANS-006	701
DIST-00702	2026-03-06 05:24:00	2026-03-06 07:50:00	En camino	Sopó → Zipaquirá	TRANS-016	702
DIST-00703	2026-03-06 15:08:00	2026-03-07 06:23:00	Entregado	Sopó → Barranquilla	TRANS-003	703
DIST-00704	2026-03-06 23:07:00	2026-03-08 01:16:00	Entregado	Sopó → Cúcuta	TRANS-017	704
DIST-00705	2026-03-07 05:58:00	2026-03-07 15:29:00	Entregado	Sopó → Cali	TRANS-003	705
DIST-00706	2026-03-07 15:42:00	2026-03-07 18:37:00	Entregado	Sopó → Cajicá	TRANS-007	706
DIST-00707	2026-03-07 22:36:00	2026-03-08 07:13:00	Entregado	Sopó → Ibagué	TRANS-013	707
DIST-00708	2026-03-08 10:23:00	2026-03-08 18:57:00	Entregado	Sopó → Ibagué	TRANS-009	708
DIST-00709	2026-03-08 18:08:00	2026-03-08 23:50:00	Entregado	Sopó → Manizales	TRANS-018	709
DIST-00710	2026-03-09 01:44:00	2026-03-09 11:40:00	Entregado	Sopó → Medellín	TRANS-010	710
DIST-00711	2026-03-09 12:59:00	2026-03-09 16:06:00	Entregado	Sopó → Zipaquirá	TRANS-005	711
DIST-00712	2026-03-09 18:14:00	2026-03-10 07:00:00	Entregado	Sopó → Cartagena	TRANS-008	712
DIST-00713	2026-03-10 03:01:00	2026-03-10 23:54:00	Entregado	Sopó → Cartagena	TRANS-012	713
DIST-00714	2026-03-10 13:54:00	2026-03-10 16:35:00	Entregado	Sopó → Bogotá D.C.	TRANS-006	714
DIST-00715	2026-03-10 21:15:00	2026-03-11 06:17:00	Entregado	Sopó → Manizales	TRANS-004	715
DIST-00716	2026-03-11 09:00:00	2026-03-11 18:26:00	Entregado	Sopó → Medellín	TRANS-006	716
DIST-00717	2026-03-11 17:04:00	2026-03-11 18:46:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	717
DIST-00718	2026-03-12 01:16:00	2026-03-12 09:47:00	Entregado	Sopó → Villavicencio	TRANS-013	718
DIST-00719	2026-03-12 10:42:00	2026-03-12 18:29:00	Entregado	Sopó → Ibagué	TRANS-001	719
DIST-00720	2026-03-12 16:43:00	2026-03-12 19:50:00	Entregado	Sopó → Gachancipá	TRANS-007	720
DIST-00721	2026-03-13 05:44:00	2026-03-13 08:35:00	Entregado	Sopó → Chía	TRANS-004	721
DIST-00722	2026-03-13 10:04:00	2026-03-13 12:15:00	Entregado	Sopó → Zipaquirá	TRANS-002	722
DIST-00723	2026-03-13 21:15:00	2026-03-13 23:35:00	Entregado	Sopó → Gachancipá	TRANS-004	723
DIST-00724	2026-03-14 06:32:00	2026-03-14 09:57:00	Entregado	Sopó → Bogotá D.C.	TRANS-002	724
DIST-00725	2026-03-14 14:45:00	2026-03-14 16:46:00	Entregado	Sopó → Tocancipá	TRANS-004	725
DIST-00726	2026-03-14 20:45:00	2026-03-15 02:02:00	Entregado	Sopó → Medellín	TRANS-018	726
DIST-00727	2026-03-15 09:57:00	2026-03-15 18:57:00	Entregado	Sopó → Cali	TRANS-015	727
DIST-00728	2026-03-15 15:26:00	2026-03-15 21:06:00	Entregado	Sopó → Bucaramanga	TRANS-002	728
DIST-00729	2026-03-16 00:49:00	2026-03-16 15:24:00	Entregado	Sopó → Barranquilla	TRANS-017	729
DIST-00730	2026-03-16 11:51:00	2026-03-17 15:45:00	Entregado	Sopó → Santa Marta	TRANS-011	730
DIST-00731	2026-03-16 18:29:00	2026-03-16 20:02:00	Entregado	Sopó → Zipaquirá	TRANS-001	731
DIST-00732	2026-03-17 05:02:00	2026-03-18 05:25:00	Entregado	Sopó → Cúcuta	TRANS-008	732
DIST-00733	2026-03-17 10:28:00	2026-03-17 19:35:00	Entregado	Sopó → Pereira	TRANS-005	733
DIST-00734	2026-03-17 21:23:00	2026-03-18 07:12:00	Entregado	Sopó → Bucaramanga	TRANS-004	734
DIST-00735	2026-03-18 06:09:00	2026-03-18 15:50:00	Entregado	Sopó → Manizales	TRANS-009	735
DIST-00736	2026-03-18 13:16:00	2026-03-19 05:51:00	Entregado	Sopó → Barranquilla	TRANS-012	736
DIST-00737	2026-03-19 00:33:00	2026-03-19 04:31:00	Entregado	Sopó → La Calera	TRANS-013	737
DIST-00738	2026-03-19 10:28:00	2026-03-19 12:40:00	Entregado	Sopó → Cajicá	TRANS-016	738
DIST-00739	2026-03-19 17:56:00	2026-03-19 19:57:00	Entregado	Sopó → Bogotá D.C.	TRANS-002	739
DIST-00740	2026-03-20 02:31:00	2026-03-21 00:04:00	Entregado	Sopó → Pasto	TRANS-014	740
DIST-00741	2026-03-20 08:20:00	2026-03-20 09:52:00	Entregado	Sopó → Chía	TRANS-016	741
DIST-00742	2026-03-20 19:13:00	2026-03-20 23:08:00	Entregado	Sopó → Chía	TRANS-016	742
DIST-00743	2026-03-21 06:00:00	2026-03-21 08:08:00	Entregado	Sopó → Gachancipá	TRANS-006	743
DIST-00744	2026-03-21 15:13:00	2026-03-22 00:36:00	Entregado	Sopó → Cali	TRANS-002	744
DIST-00745	2026-03-21 20:03:00	2026-03-22 02:59:00	Entregado	Sopó → Bucaramanga	TRANS-015	745
DIST-00746	2026-03-22 07:08:00	2026-03-22 09:19:00	En camino	Sopó → Zipaquirá	TRANS-010	746
DIST-00747	2026-03-22 16:27:00	2026-03-22 19:36:00	Entregado	Sopó → Chía	TRANS-006	747
DIST-00748	2026-03-22 23:42:00	2026-03-23 03:17:00	Entregado	Sopó → Bogotá D.C.	TRANS-006	748
DIST-00749	2026-03-23 08:58:00	2026-03-23 10:37:00	Entregado	Sopó → Chía	TRANS-004	749
DIST-00750	2026-03-23 16:37:00	2026-03-23 19:55:00	Entregado	Sopó → Cajicá	TRANS-010	750
DIST-00751	2026-03-24 01:23:00	2026-03-24 08:59:00	Entregado	Sopó → Bucaramanga	TRANS-016	751
DIST-00752	2026-03-24 12:07:00	2026-03-24 15:56:00	En camino	Sopó → Cajicá	TRANS-009	752
DIST-00753	2026-03-24 19:00:00	2026-03-25 01:49:00	Entregado	Sopó → Cali	TRANS-013	753
DIST-00754	2026-03-25 02:05:00	2026-03-25 10:24:00	Entregado	Sopó → Villavicencio	TRANS-003	754
DIST-00755	2026-03-25 12:47:00	2026-03-25 14:34:00	Entregado	Sopó → Bogotá D.C.	TRANS-015	755
DIST-00756	2026-03-25 19:56:00	2026-03-26 03:19:00	Entregado	Sopó → Medellín	TRANS-001	756
DIST-00757	2026-03-26 04:41:00	2026-03-26 06:21:00	Entregado	Sopó → Gachancipá	TRANS-001	757
DIST-00758	2026-03-26 13:09:00	2026-03-26 20:41:00	Entregado	Sopó → Bucaramanga	TRANS-006	758
DIST-00759	2026-03-26 21:55:00	2026-03-27 00:29:00	Entregado	Sopó → Tocancipá	TRANS-002	759
DIST-00760	2026-03-27 07:57:00	2026-03-27 13:27:00	Entregado	Sopó → Pereira	TRANS-015	760
DIST-00761	2026-03-27 18:47:00	2026-03-28 00:09:00	Entregado	Sopó → Ibagué	TRANS-013	761
DIST-00762	2026-03-28 03:12:00	2026-03-28 05:36:00	Entregado	Sopó → Zipaquirá	TRANS-009	762
DIST-00763	2026-03-28 09:32:00	2026-03-28 21:42:00	Entregado	Sopó → Santa Marta	TRANS-017	763
DIST-00764	2026-03-28 19:45:00	2026-03-29 04:27:00	Entregado	Sopó → Medellín	TRANS-009	764
DIST-00765	2026-03-29 05:11:00	2026-03-29 08:18:00	Entregado	Sopó → Gachancipá	TRANS-005	765
DIST-00766	2026-03-29 11:07:00	2026-03-30 12:50:00	Entregado	Sopó → Cúcuta	TRANS-012	766
DIST-00767	2026-03-29 19:45:00	2026-03-30 03:02:00	Entregado	Sopó → Manizales	TRANS-011	767
DIST-00768	2026-03-30 06:37:00	2026-03-30 08:28:00	Entregado	Sopó → Bogotá D.C.	TRANS-009	768
DIST-00769	2026-03-30 17:53:00	2026-03-31 00:53:00	Entregado	Sopó → Pereira	TRANS-011	769
DIST-00770	2026-03-30 22:16:00	2026-03-31 00:42:00	Entregado	Sopó → Gachancipá	TRANS-007	770
DIST-00771	2026-03-31 09:48:00	2026-03-31 15:52:00	Entregado	Sopó → Manizales	TRANS-011	771
DIST-00772	2026-03-31 16:35:00	2026-03-31 20:29:00	Entregado	Sopó → Gachancipá	TRANS-009	772
DIST-00773	2026-04-01 03:33:00	2026-04-01 05:06:00	Entregado	Sopó → Briceño	TRANS-013	773
DIST-00774	2026-04-01 12:00:00	2026-04-01 14:08:00	Entregado	Sopó → Bogotá D.C.	TRANS-006	774
DIST-00775	2026-04-01 18:25:00	2026-04-02 00:37:00	Entregado	Sopó → Manizales	TRANS-001	775
DIST-00776	2026-04-02 07:28:00	2026-04-02 21:37:00	Entregado	Sopó → Cartagena	TRANS-014	776
DIST-00777	2026-04-02 13:21:00	2026-04-02 18:45:00	Entregado	Sopó → Cali	TRANS-011	777
DIST-00778	2026-04-02 22:51:00	2026-04-03 04:57:00	Entregado	Sopó → Bucaramanga	TRANS-018	778
DIST-00779	2026-04-03 05:13:00	2026-04-03 12:23:00	Entregado	Sopó → Manizales	TRANS-001	779
DIST-00780	2026-04-03 14:57:00	2026-04-04 18:25:00	Entregado	Sopó → Cúcuta	TRANS-008	780
DIST-00781	2026-04-04 02:18:00	2026-04-04 05:26:00	Entregado	Sopó → Tocancipá	TRANS-009	781
DIST-00782	2026-04-04 10:19:00	2026-04-04 13:16:00	Entregado	Sopó → Zipaquirá	TRANS-015	782
DIST-00783	2026-04-04 17:57:00	2026-04-05 15:25:00	Entregado	Sopó → Pasto	TRANS-014	783
DIST-00784	2026-04-05 01:43:00	2026-04-05 04:07:00	Entregado	Sopó → La Calera	TRANS-005	784
DIST-00785	2026-04-05 13:00:00	2026-04-05 21:07:00	Entregado	Sopó → Medellín	TRANS-010	785
DIST-00786	2026-04-05 18:06:00	2026-04-06 01:28:00	Entregado	Sopó → Villavicencio	TRANS-018	786
DIST-00787	2026-04-06 03:42:00	2026-04-06 13:29:00	Entregado	Sopó → Manizales	TRANS-018	787
DIST-00788	2026-04-06 16:21:00	2026-04-06 18:22:00	Entregado	Sopó → Tocancipá	TRANS-002	788
DIST-00789	2026-04-07 00:00:00	2026-04-07 17:45:00	Entregado	Sopó → Cartagena	TRANS-017	789
DIST-00790	2026-04-07 08:16:00	2026-04-07 17:39:00	Entregado	Sopó → Cali	TRANS-011	790
DIST-00791	2026-04-07 15:56:00	2026-04-07 21:19:00	Entregado	Sopó → Ibagué	TRANS-007	791
DIST-00792	2026-04-08 00:22:00	2026-04-08 23:38:00	Entregado	Sopó → Pasto	TRANS-011	792
DIST-00793	2026-04-08 07:26:00	2026-04-08 10:37:00	Entregado	Sopó → Gachancipá	TRANS-016	793
DIST-00794	2026-04-08 19:19:00	2026-04-08 22:24:00	Entregado	Sopó → La Calera	TRANS-018	794
DIST-00795	2026-04-09 04:41:00	2026-04-09 21:29:00	Entregado	Sopó → Cartagena	TRANS-017	795
DIST-00796	2026-04-09 13:52:00	2026-04-10 15:52:00	Entregado	Sopó → Pasto	TRANS-003	796
DIST-00797	2026-04-09 21:03:00	2026-04-10 00:21:00	Entregado	Sopó → Bogotá D.C.	TRANS-004	797
DIST-00798	2026-04-10 03:33:00	2026-04-10 05:40:00	Entregado	Sopó → Bogotá D.C.	TRANS-006	798
DIST-00799	2026-04-10 12:00:00	2026-04-10 13:42:00	Entregado	Sopó → Zipaquirá	TRANS-001	799
DIST-00800	2026-04-10 21:00:00	2026-04-10 23:22:00	Entregado	Sopó → Gachancipá	TRANS-010	800
DIST-00801	2026-04-11 07:04:00	2026-04-11 16:42:00	Entregado	Sopó → Villavicencio	TRANS-012	801
DIST-00802	2026-04-11 14:25:00	2026-04-11 18:21:00	Entregado	Sopó → Chía	TRANS-004	802
DIST-00803	2026-04-12 01:25:00	2026-04-12 15:40:00	Entregado	Sopó → Cúcuta	TRANS-017	803
DIST-00804	2026-04-12 11:52:00	2026-04-13 06:37:00	Entregado	Sopó → Barranquilla	TRANS-014	804
DIST-00805	2026-04-12 20:26:00	2026-04-12 22:10:00	Entregado	Sopó → La Calera	TRANS-002	805
DIST-00806	2026-04-13 05:08:00	2026-04-13 07:12:00	Entregado	Sopó → Gachancipá	TRANS-015	806
DIST-00807	2026-04-13 10:38:00	2026-04-13 16:35:00	Entregado	Sopó → Pereira	TRANS-001	807
DIST-00808	2026-04-13 22:27:00	2026-04-14 01:12:00	Entregado	Sopó → Gachancipá	TRANS-007	808
DIST-00809	2026-04-14 04:36:00	2026-04-14 06:09:00	Entregado	Sopó → Bogotá D.C.	TRANS-001	809
DIST-00810	2026-04-14 13:10:00	2026-04-14 15:07:00	Entregado	Sopó → Gachancipá	TRANS-004	810
DIST-00811	2026-04-14 21:45:00	2026-04-15 13:22:00	Entregado	Sopó → Cúcuta	TRANS-014	811
DIST-00812	2026-04-15 07:18:00	2026-04-16 06:50:00	Entregado	Sopó → Cúcuta	TRANS-003	812
DIST-00813	2026-04-15 14:43:00	2026-04-15 22:17:00	Entregado	Sopó → Medellín	TRANS-012	813
DIST-00814	2026-04-15 23:23:00	2026-04-16 16:30:00	Entregado	Sopó → Cartagena	TRANS-003	814
DIST-00815	2026-04-16 11:25:00	2026-04-16 18:47:00	Entregado	Sopó → Villavicencio	TRANS-016	815
DIST-00816	2026-04-16 18:41:00	2026-04-16 21:23:00	Entregado	Sopó → Chía	TRANS-004	816
DIST-00817	2026-04-17 03:06:00	2026-04-17 10:29:00	Entregado	Sopó → Cali	TRANS-002	817
DIST-00818	2026-04-17 12:30:00	2026-04-17 22:08:00	Entregado	Sopó → Bucaramanga	TRANS-006	818
DIST-00819	2026-04-17 21:18:00	2026-04-18 05:29:00	Entregado	Sopó → Medellín	TRANS-013	819
DIST-00820	2026-04-18 06:06:00	2026-04-18 09:08:00	Entregado	Sopó → Cajicá	TRANS-002	820
DIST-00821	2026-04-18 15:08:00	2026-04-18 16:59:00	Entregado	Sopó → Briceño	TRANS-013	821
DIST-00822	2026-04-18 21:27:00	2026-04-19 06:59:00	Entregado	Sopó → Manizales	TRANS-003	822
DIST-00823	2026-04-19 07:38:00	2026-04-19 16:43:00	Entregado	Sopó → Manizales	TRANS-004	823
DIST-00824	2026-04-19 16:44:00	2026-04-19 20:15:00	Entregado	Sopó → Zipaquirá	TRANS-006	824
DIST-00825	2026-04-20 04:25:00	2026-04-20 06:12:00	Entregado	Sopó → Zipaquirá	TRANS-015	825
DIST-00826	2026-04-20 10:15:00	2026-04-20 16:22:00	Entregado	Sopó → Manizales	TRANS-018	826
DIST-00827	2026-04-20 20:39:00	2026-04-21 20:23:00	Entregado	Sopó → Santa Marta	TRANS-003	827
DIST-00828	2026-04-21 06:10:00	2026-04-21 08:56:00	Entregado	Sopó → Gachancipá	TRANS-002	828
DIST-00829	2026-04-21 11:20:00	2026-04-21 14:58:00	Entregado	Sopó → Gachancipá	TRANS-016	829
DIST-00830	2026-04-21 20:17:00	2026-04-21 22:49:00	Entregado	Sopó → Briceño	TRANS-005	830
DIST-00831	2026-04-22 04:09:00	2026-04-23 04:21:00	Entregado	Sopó → Pasto	TRANS-017	831
DIST-00832	2026-04-22 17:06:00	2026-04-23 18:12:00	Entregado	Sopó → Cúcuta	TRANS-014	832
DIST-00833	2026-04-22 23:23:00	2026-04-23 01:49:00	Entregado	Sopó → Briceño	TRANS-004	833
DIST-00834	2026-04-23 10:13:00	2026-04-23 13:08:00	Entregado	Sopó → Tocancipá	TRANS-005	834
DIST-00835	2026-04-23 15:59:00	2026-04-24 06:23:00	Entregado	Sopó → Barranquilla	TRANS-012	835
DIST-00836	2026-04-24 02:04:00	2026-04-24 08:36:00	Entregado	Sopó → Bucaramanga	TRANS-001	836
DIST-00837	2026-04-24 08:55:00	2026-04-24 18:23:00	Entregado	Sopó → Manizales	TRANS-015	837
DIST-00838	2026-04-24 21:46:00	2026-04-25 00:37:00	Entregado	Sopó → Cajicá	TRANS-016	838
DIST-00839	2026-04-25 07:03:00	2026-04-25 16:46:00	Entregado	Sopó → Villavicencio	TRANS-006	839
DIST-00840	2026-04-25 15:06:00	2026-04-25 23:44:00	Entregado	Sopó → Manizales	TRANS-015	840
DIST-00841	2026-04-26 00:06:00	2026-04-26 03:51:00	En camino	Sopó → Chía	TRANS-010	841
DIST-00842	2026-04-26 08:08:00	2026-04-26 10:07:00	Entregado	Sopó → Chía	TRANS-015	842
DIST-00843	2026-04-26 14:44:00	2026-04-26 17:48:00	Entregado	Sopó → Gachancipá	TRANS-013	843
DIST-00844	2026-04-27 02:08:00	2026-04-27 10:49:00	Entregado	Sopó → Bucaramanga	TRANS-010	844
DIST-00845	2026-04-27 11:41:00	2026-04-28 14:01:00	Entregado	Sopó → Pasto	TRANS-011	845
DIST-00846	2026-04-27 16:35:00	2026-04-27 18:36:00	Entregado	Sopó → Bogotá D.C.	TRANS-005	846
DIST-00847	2026-04-28 04:47:00	2026-04-28 17:20:00	Entregado	Sopó → Barranquilla	TRANS-012	847
DIST-00848	2026-04-28 13:57:00	2026-04-28 15:54:00	Entregado	Sopó → Cajicá	TRANS-013	848
DIST-00849	2026-04-28 18:14:00	2026-04-29 03:12:00	Entregado	Sopó → Manizales	TRANS-016	849
DIST-00850	2026-04-29 04:39:00	2026-04-29 07:06:00	Entregado	Sopó → Briceño	TRANS-016	850
DIST-00851	2026-04-29 12:45:00	2026-04-30 06:00:00	Entregado	Sopó → Cartagena	TRANS-017	851
DIST-00852	2026-04-30 00:21:00	2026-04-30 03:21:00	Entregado	Sopó → Bogotá D.C.	TRANS-005	852
DIST-00853	2026-04-30 04:50:00	2026-05-01 03:13:00	Entregado	Sopó → Cartagena	TRANS-014	853
DIST-00854	2026-04-30 18:08:00	2026-04-30 20:09:00	En camino	Sopó → Briceño	TRANS-001	854
DIST-00855	2026-05-01 01:49:00	2026-05-01 07:53:00	Entregado	Sopó → Manizales	TRANS-018	855
DIST-00856	2026-05-01 07:47:00	2026-05-01 10:22:00	En camino	Sopó → Zipaquirá	TRANS-006	856
DIST-00857	2026-05-01 17:09:00	2026-05-01 19:42:00	Entregado	Sopó → La Calera	TRANS-004	857
DIST-00858	2026-05-02 00:34:00	2026-05-02 07:16:00	Entregado	Sopó → Medellín	TRANS-013	858
DIST-00859	2026-05-02 10:34:00	2026-05-02 18:09:00	Entregado	Sopó → Cali	TRANS-006	859
DIST-00860	2026-05-02 22:56:00	2026-05-03 07:32:00	Entregado	Sopó → Villavicencio	TRANS-011	860
DIST-00861	2026-05-03 03:53:00	2026-05-03 13:03:00	Entregado	Sopó → Pereira	TRANS-010	861
DIST-00862	2026-05-03 13:46:00	2026-05-03 19:11:00	Entregado	Sopó → Ibagué	TRANS-003	862
DIST-00863	2026-05-03 21:02:00	2026-05-04 04:19:00	Entregado	Sopó → Manizales	TRANS-001	863
DIST-00864	2026-05-04 08:54:00	2026-05-05 00:49:00	Entregado	Sopó → Cúcuta	TRANS-003	864
DIST-00865	2026-05-04 16:55:00	2026-05-04 19:10:00	Entregado	Sopó → Tocancipá	TRANS-010	865
DIST-00866	2026-05-04 23:33:00	2026-05-05 01:50:00	Entregado	Sopó → Chía	TRANS-006	866
DIST-00867	2026-05-05 11:11:00	2026-05-05 14:09:00	Entregado	Sopó → Gachancipá	TRANS-015	867
DIST-00868	2026-05-05 19:04:00	2026-05-05 20:55:00	Entregado	Sopó → Zipaquirá	TRANS-015	868
DIST-00869	2026-05-06 02:52:00	2026-05-06 05:15:00	Entregado	Sopó → Tocancipá	TRANS-002	869
DIST-00870	2026-05-06 10:22:00	2026-05-06 14:01:00	Entregado	Sopó → Tocancipá	TRANS-005	870
DIST-00871	2026-05-06 20:55:00	2026-05-07 00:11:00	Entregado	Sopó → Gachancipá	TRANS-010	871
DIST-00872	2026-05-07 03:55:00	2026-05-08 02:21:00	Entregado	Sopó → Pasto	TRANS-017	872
DIST-00873	2026-05-07 13:43:00	2026-05-07 17:20:00	Entregado	Sopó → Cajicá	TRANS-005	873
DIST-00874	2026-05-07 22:20:00	2026-05-08 08:03:00	Entregado	Sopó → Manizales	TRANS-011	874
DIST-00875	2026-05-08 05:58:00	2026-05-08 09:42:00	Entregado	Sopó → Cajicá	TRANS-009	875
DIST-00876	2026-05-08 16:21:00	2026-05-08 18:32:00	Entregado	Sopó → Briceño	TRANS-015	876
DIST-00877	2026-05-09 03:36:00	2026-05-09 05:23:00	Entregado	Sopó → Briceño	TRANS-005	877
DIST-00878	2026-05-09 11:57:00	2026-05-09 17:02:00	Entregado	Sopó → Pereira	TRANS-013	878
DIST-00879	2026-05-09 20:53:00	2026-05-09 23:06:00	Entregado	Sopó → Bogotá D.C.	TRANS-009	879
DIST-00880	2026-05-10 01:34:00	2026-05-10 16:55:00	Entregado	Sopó → Santa Marta	TRANS-008	880
DIST-00881	2026-05-10 11:02:00	2026-05-10 13:37:00	Entregado	Sopó → La Calera	TRANS-007	881
DIST-00882	2026-05-10 21:27:00	2026-05-12 00:12:00	Entregado	Sopó → Barranquilla	TRANS-014	882
DIST-00883	2026-05-11 03:39:00	2026-05-11 23:35:00	Entregado	Sopó → Santa Marta	TRANS-014	883
DIST-00884	2026-05-11 12:50:00	2026-05-11 15:05:00	Entregado	Sopó → Cajicá	TRANS-004	884
DIST-00885	2026-05-11 22:36:00	2026-05-12 01:50:00	Entregado	Sopó → Bogotá D.C.	TRANS-001	885
DIST-00886	2026-05-12 06:43:00	2026-05-12 13:30:00	Entregado	Sopó → Medellín	TRANS-005	886
DIST-00887	2026-05-12 16:06:00	2026-05-12 18:37:00	Entregado	Sopó → Chía	TRANS-013	887
DIST-00888	2026-05-13 02:46:00	2026-05-13 08:38:00	Entregado	Sopó → Medellín	TRANS-009	888
DIST-00889	2026-05-13 11:41:00	2026-05-13 13:19:00	Entregado	Sopó → Briceño	TRANS-005	889
DIST-00890	2026-05-13 18:57:00	2026-05-14 03:54:00	Entregado	Sopó → Medellín	TRANS-013	890
DIST-00891	2026-05-14 04:40:00	2026-05-14 12:58:00	Entregado	Sopó → Medellín	TRANS-007	891
DIST-00892	2026-05-14 12:51:00	2026-05-14 15:35:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	892
DIST-00893	2026-05-14 23:02:00	2026-05-15 02:29:00	Entregado	Sopó → Bogotá D.C.	TRANS-018	893
DIST-00894	2026-05-15 07:18:00	2026-05-15 09:16:00	Entregado	Sopó → Briceño	TRANS-013	894
DIST-00895	2026-05-15 17:19:00	2026-05-16 02:57:00	Entregado	Sopó → Bucaramanga	TRANS-002	895
DIST-00896	2026-05-15 22:38:00	2026-05-16 02:23:00	Entregado	Sopó → Tocancipá	TRANS-007	896
DIST-00897	2026-05-16 11:00:00	2026-05-16 19:26:00	Entregado	Sopó → Villavicencio	TRANS-003	897
DIST-00898	2026-05-16 17:51:00	2026-05-16 23:38:00	Entregado	Sopó → Bucaramanga	TRANS-013	898
DIST-00899	2026-05-17 04:10:00	2026-05-17 09:34:00	Entregado	Sopó → Bucaramanga	TRANS-015	899
DIST-00900	2026-05-17 12:07:00	2026-05-17 19:58:00	Entregado	Sopó → Cali	TRANS-001	900
DIST-00901	2026-05-17 21:44:00	2026-05-18 03:10:00	Entregado	Sopó → Ibagué	TRANS-010	901
DIST-00902	2026-05-18 04:52:00	2026-05-18 07:27:00	Entregado	Sopó → La Calera	TRANS-002	902
DIST-00903	2026-05-18 12:50:00	2026-05-19 06:43:00	En camino	Sopó → Barranquilla	TRANS-012	903
DIST-00904	2026-05-18 19:40:00	2026-05-19 11:47:00	Entregado	Sopó → Cúcuta	TRANS-014	904
DIST-00905	2026-05-19 07:34:00	2026-05-19 10:41:00	Entregado	Sopó → Tocancipá	TRANS-004	905
DIST-00906	2026-05-19 16:16:00	2026-05-20 00:45:00	Entregado	Sopó → Bucaramanga	TRANS-001	906
DIST-00907	2026-05-19 23:05:00	2026-05-20 02:05:00	Entregado	Sopó → Cajicá	TRANS-005	907
DIST-00908	2026-05-20 09:33:00	2026-05-20 16:25:00	Entregado	Sopó → Cali	TRANS-016	908
DIST-00909	2026-05-20 17:31:00	2026-05-21 06:54:00	Entregado	Sopó → Barranquilla	TRANS-003	909
DIST-00910	2026-05-21 02:12:00	2026-05-21 21:42:00	Entregado	Sopó → Barranquilla	TRANS-014	910
DIST-00911	2026-05-21 13:18:00	2026-05-21 19:13:00	Entregado	Sopó → Bucaramanga	TRANS-015	911
DIST-00912	2026-05-21 18:20:00	2026-05-22 14:20:00	Entregado	Sopó → Barranquilla	TRANS-012	912
DIST-00913	2026-05-22 06:26:00	2026-05-22 08:29:00	Entregado	Sopó → Zipaquirá	TRANS-015	913
DIST-00914	2026-05-22 12:25:00	2026-05-22 16:24:00	Entregado	Sopó → Cajicá	TRANS-004	914
DIST-00915	2026-05-22 20:10:00	2026-05-22 23:57:00	Entregado	Sopó → Gachancipá	TRANS-007	915
DIST-00916	2026-05-23 05:35:00	2026-05-23 12:53:00	Entregado	Sopó → Manizales	TRANS-001	916
DIST-00917	2026-05-23 15:47:00	2026-05-24 05:41:00	Entregado	Sopó → Cúcuta	TRANS-014	917
DIST-00918	2026-05-24 00:17:00	2026-05-25 03:12:00	Entregado	Sopó → Cartagena	TRANS-003	918
DIST-00919	2026-05-24 08:20:00	2026-05-24 10:41:00	Entregado	Sopó → Gachancipá	TRANS-004	919
DIST-00920	2026-05-24 17:57:00	2026-05-24 20:09:00	Entregado	Sopó → Chía	TRANS-006	920
DIST-00921	2026-05-25 04:04:00	2026-05-25 10:39:00	Entregado	Sopó → Cali	TRANS-016	921
DIST-00922	2026-05-25 10:49:00	2026-05-26 11:15:00	Entregado	Sopó → Santa Marta	TRANS-012	922
DIST-00923	2026-05-25 20:53:00	2026-05-26 04:35:00	Entregado	Sopó → Ibagué	TRANS-018	923
DIST-00924	2026-05-26 05:30:00	2026-05-26 12:00:00	Entregado	Sopó → Bucaramanga	TRANS-011	924
DIST-00925	2026-05-26 11:17:00	2026-05-26 14:09:00	Entregado	Sopó → Chía	TRANS-013	925
DIST-00926	2026-05-27 00:11:00	2026-05-27 08:31:00	Entregado	Sopó → Medellín	TRANS-013	926
DIST-00927	2026-05-27 07:39:00	2026-05-28 06:19:00	Entregado	Sopó → Cartagena	TRANS-012	927
DIST-00928	2026-05-27 15:04:00	2026-05-28 12:09:00	En camino	Sopó → Barranquilla	TRANS-017	928
DIST-00929	2026-05-28 01:08:00	2026-05-28 05:06:00	Entregado	Sopó → Cajicá	TRANS-001	929
DIST-00930	2026-05-28 08:21:00	2026-05-28 12:03:00	Entregado	Sopó → Zipaquirá	TRANS-002	930
DIST-00931	2026-05-28 20:44:00	2026-05-28 22:18:00	Entregado	Sopó → Tocancipá	TRANS-013	931
DIST-00932	2026-05-29 04:41:00	2026-05-29 14:08:00	Entregado	Sopó → Ibagué	TRANS-004	932
DIST-00933	2026-05-29 14:16:00	2026-05-29 18:15:00	Entregado	Sopó → Bogotá D.C.	TRANS-001	933
DIST-00934	2026-05-29 21:41:00	2026-05-30 05:26:00	Entregado	Sopó → Cali	TRANS-016	934
DIST-00935	2026-05-30 03:31:00	2026-05-30 18:02:00	Entregado	Sopó → Cúcuta	TRANS-011	935
DIST-00936	2026-05-30 12:22:00	2026-05-30 19:52:00	Entregado	Sopó → Villavicencio	TRANS-004	936
DIST-00937	2026-05-30 23:02:00	2026-05-31 04:06:00	Entregado	Sopó → Ibagué	TRANS-002	937
DIST-00938	2026-05-31 06:17:00	2026-05-31 09:50:00	Entregado	Sopó → Zipaquirá	TRANS-001	938
DIST-00939	2026-05-31 15:46:00	2026-05-31 18:06:00	Entregado	Sopó → Gachancipá	TRANS-004	939
DIST-00940	2026-06-01 03:32:00	2026-06-01 05:37:00	En camino	Sopó → Bogotá D.C.	TRANS-015	940
DIST-00941	2026-06-01 08:39:00	2026-06-02 09:02:00	Entregado	Sopó → Cartagena	TRANS-008	941
DIST-00942	2026-06-01 19:52:00	2026-06-01 21:33:00	Entregado	Sopó → Chía	TRANS-013	942
DIST-00943	2026-06-02 02:23:00	2026-06-02 04:41:00	Entregado	Sopó → Cajicá	TRANS-006	943
DIST-00944	2026-06-02 10:27:00	2026-06-02 15:40:00	Entregado	Sopó → Ibagué	TRANS-018	944
DIST-00945	2026-06-02 22:19:00	2026-06-03 14:52:00	En camino	Sopó → Cartagena	TRANS-012	945
DIST-00946	2026-06-03 05:09:00	2026-06-03 07:13:00	Entregado	Sopó → Zipaquirá	TRANS-018	946
DIST-00947	2026-06-03 13:05:00	2026-06-03 15:45:00	Entregado	Sopó → Gachancipá	TRANS-002	947
DIST-00948	2026-06-03 22:41:00	2026-06-04 06:21:00	Entregado	Sopó → Medellín	TRANS-011	948
DIST-00949	2026-06-04 08:42:00	2026-06-04 11:01:00	En camino	Sopó → Zipaquirá	TRANS-009	949
DIST-00950	2026-06-04 14:56:00	2026-06-04 16:36:00	Entregado	Sopó → Tocancipá	TRANS-002	950
DIST-00951	2026-06-05 01:25:00	2026-06-05 21:13:00	Entregado	Sopó → Barranquilla	TRANS-003	951
DIST-00952	2026-06-05 11:43:00	2026-06-05 18:10:00	Entregado	Sopó → Ibagué	TRANS-007	952
DIST-00953	2026-06-05 17:08:00	2026-06-06 12:52:00	Entregado	Sopó → Santa Marta	TRANS-014	953
DIST-00954	2026-06-06 04:04:00	2026-06-06 13:56:00	En camino	Sopó → Manizales	TRANS-005	954
DIST-00955	2026-06-06 10:30:00	2026-06-06 17:06:00	Entregado	Sopó → Villavicencio	TRANS-004	955
DIST-00956	2026-06-06 20:26:00	2026-06-07 04:54:00	Entregado	Sopó → Manizales	TRANS-012	956
DIST-00957	2026-06-07 08:21:00	2026-06-07 15:32:00	En camino	Sopó → Bucaramanga	TRANS-005	957
DIST-00958	2026-06-07 15:23:00	2026-06-07 17:16:00	Entregado	Sopó → Tocancipá	TRANS-007	958
DIST-00959	2026-06-07 22:52:00	2026-06-08 07:13:00	En camino	Sopó → Medellín	TRANS-013	959
DIST-00960	2026-06-08 10:06:00	2026-06-08 14:05:00	Entregado	Sopó → Briceño	TRANS-002	960
DIST-00961	2026-06-08 16:41:00	2026-06-09 19:56:00	Entregado	Sopó → Pasto	TRANS-011	961
DIST-00962	2026-06-09 00:47:00	2026-06-09 16:03:00	Entregado	Sopó → Pasto	TRANS-014	962
DIST-00963	2026-06-09 10:47:00	2026-06-09 14:45:00	Entregado	Sopó → Briceño	TRANS-018	963
DIST-00964	2026-06-09 16:52:00	2026-06-10 00:00:00	Entregado	Sopó → Cali	TRANS-006	964
DIST-00965	2026-06-10 02:06:00	2026-06-10 05:10:00	Entregado	Sopó → La Calera	TRANS-009	965
DIST-00966	2026-06-10 13:47:00	2026-06-10 17:27:00	Entregado	Sopó → Gachancipá	TRANS-007	966
DIST-00967	2026-06-10 23:10:00	2026-06-11 04:19:00	Entregado	Sopó → Bucaramanga	TRANS-001	967
DIST-00968	2026-06-11 06:02:00	2026-06-11 08:25:00	Entregado	Sopó → Zipaquirá	TRANS-016	968
DIST-00969	2026-06-11 15:48:00	2026-06-11 19:21:00	Entregado	Sopó → Briceño	TRANS-016	969
DIST-00970	2026-06-11 23:07:00	2026-06-12 00:39:00	Entregado	Sopó → La Calera	TRANS-005	970
DIST-00971	2026-06-12 08:14:00	2026-06-12 11:15:00	Entregado	Sopó → Tocancipá	TRANS-001	971
DIST-00972	2026-06-12 16:30:00	2026-06-13 12:03:00	Entregado	Sopó → Cúcuta	TRANS-014	972
DIST-00973	2026-06-13 00:04:00	2026-06-13 06:03:00	Entregado	Sopó → Cali	TRANS-002	973
DIST-00974	2026-06-13 12:34:00	2026-06-13 16:14:00	Entregado	Sopó → Cajicá	TRANS-010	974
DIST-00975	2026-06-13 21:57:00	2026-06-13 23:54:00	Entregado	Sopó → Briceño	TRANS-006	975
DIST-00976	2026-06-14 02:01:00	2026-06-14 03:56:00	Entregado	Sopó → Zipaquirá	TRANS-010	976
DIST-00977	2026-06-14 13:08:00	2026-06-14 14:54:00	Entregado	Sopó → Cajicá	TRANS-010	977
DIST-00978	2026-06-15 00:17:00	2026-06-15 07:14:00	Pendiente	Sopó → Pereira	TRANS-012	978
DIST-00979	2026-06-15 04:40:00	2026-06-15 11:16:00	Pendiente	Sopó → Manizales	TRANS-016	979
DIST-00980	2026-06-15 12:58:00	2026-06-15 16:09:00	Entregado	Sopó → Zipaquirá	TRANS-007	980
DIST-00981	2026-06-16 01:53:00	2026-06-16 05:39:00	En camino	Sopó → Zipaquirá	TRANS-016	981
DIST-00982	2026-06-16 07:59:00	2026-06-16 13:09:00	En camino	Sopó → Pereira	TRANS-018	982
DIST-00983	2026-06-16 17:41:00	2026-06-16 23:17:00	En camino	Sopó → Pereira	TRANS-004	983
DIST-00984	2026-06-16 23:58:00	2026-06-17 02:02:00	En camino	Sopó → Tocancipá	TRANS-010	984
DIST-00985	2026-06-17 10:18:00	2026-06-17 12:24:00	Entregado	Sopó → Tocancipá	TRANS-007	985
DIST-00986	2026-06-17 18:55:00	2026-06-18 02:15:00	Entregado	Sopó → Pereira	TRANS-013	986
DIST-00987	2026-06-18 05:28:00	2026-06-18 12:46:00	Entregado	Sopó → Medellín	TRANS-003	987
DIST-00988	2026-06-18 15:42:00	2026-06-18 17:35:00	Entregado	Sopó → Gachancipá	TRANS-018	988
DIST-00989	2026-06-18 21:13:00	2026-06-19 23:09:00	Entregado	Sopó → Santa Marta	TRANS-008	989
DIST-00990	2026-06-19 06:16:00	2026-06-19 08:50:00	En camino	Sopó → Chía	TRANS-006	990
DIST-00991	2026-06-19 15:01:00	2026-06-19 18:17:00	Pendiente	Sopó → Briceño	TRANS-018	991
DIST-00992	2026-06-19 23:23:00	2026-06-20 07:05:00	En camino	Sopó → Medellín	TRANS-016	992
DIST-00993	2026-06-20 09:46:00	2026-06-20 12:40:00	En camino	Sopó → Briceño	TRANS-004	993
DIST-00994	2026-06-20 17:17:00	2026-06-20 21:14:00	Entregado	Sopó → Briceño	TRANS-002	994
DIST-00995	2026-06-21 01:01:00	2026-06-21 02:34:00	Entregado	Sopó → Chía	TRANS-010	995
DIST-00996	2026-06-21 13:57:00	2026-06-21 15:56:00	En camino	Sopó → Bogotá D.C.	TRANS-006	996
DIST-00997	2026-06-21 18:35:00	2026-06-21 21:50:00	Pendiente	Sopó → La Calera	TRANS-007	997
DIST-00998	2026-06-22 04:22:00	2026-06-23 06:33:00	Pendiente	Sopó → Barranquilla	TRANS-008	998
DIST-00999	2026-06-22 13:58:00	2026-06-22 17:28:00	Pendiente	Sopó → Bogotá D.C.	TRANS-015	999
DIST-01000	2026-06-22 20:55:00	2026-06-23 00:26:00	Pendiente	Sopó → Cajicá	TRANS-016	1000
\.


--
-- TOC entry 3563 (class 0 OID 16525)
-- Dependencies: 225
-- Data for Name: eps; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.eps (id_eps, nombre_eps) FROM stdin;
1	Sura EPS
2	Sanitas EPS
3	Nueva EPS
4	Compensar EPS
5	Famisanar EPS
\.


--
-- TOC entry 3565 (class 0 OID 16534)
-- Dependencies: 227
-- Data for Name: fondo_pensiones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fondo_pensiones (id_fondo, nombre_fondo) FROM stdin;
1	Porvenir
2	Protección
3	Colfondos
4	Old Mutual
5	Colpensiones
\.


--
-- TOC entry 3569 (class 0 OID 16554)
-- Dependencies: 231
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleado (id_empleado, nombres, apellidos, documento, fecha_nacimiento, estado_empleado, telefono, correo, direccion, fecha_contratacion, salario, id_cargo, id_sede, id_eps, id_fondo, id_cuenta) FROM stdin;
1	Fanny	Nelly Calderón	1041552957	1978-07-09	Activo	3092022698	f.nelly001@alpina.com.co	Av 8 # 7-75 Barranquilla	2011-08-28	2400000.00	13	2	5	5	CTA-0001
2	Julián	Barros Parra	1032181816	1995-07-22	Activo	3202375453	j.barros002@alpina.com.co	Tv 75 # 73-67 Entrerríos	2019-01-28	2900000.00	13	4	3	2	CTA-0002
3	Liseth	Posada Bedoya	1019473144	1970-06-02	Activo	3212229110	l.posada003@alpina.com.co	Diagonal 28 # 65-34 Chinchiná	2015-04-13	5200000.00	8	1	3	1	CTA-0003
4	Cecilia	Varela Lara	1002099999	1999-12-17	Activo	3213253031	c.varela004@alpina.com.co	Av 15 # 14-96 Barranquilla	2024-03-06	2300000.00	14	2	2	3	CTA-0004
5	Leonardo	Granados Ariza	1131139270	1981-04-07	Activo	3065641923	l.granados005@alpina.com.co	Calle 1 # 43-99 Chinchiná	2023-12-24	5900000.00	8	1	3	2	CTA-0005
6	Marco Aurelio	Bernal Nieto	1009671229	1986-07-25	Activo	3063138181	m.bernal006@alpina.com.co	Calle 40 # 47-6 Facatativá	2018-01-24	4700000.00	18	5	3	2	CTA-0006
7	Olga	Quintero Barros	1043621235	1977-12-10	Activo	3026573147	o.quintero007@alpina.com.co	Tv 32 # 35-21 Entrerríos	2024-10-08	2600000.00	16	4	1	4	CTA-0007
8	Iván Darío	Palomino Sierra	1006352373	1999-08-10	Activo	3142164686	i.palomino008@alpina.com.co	Av 45 # 83-66 Sopó	2019-10-10	1900000.00	13	3	5	3	CTA-0008
9	Alexis	Arboleda Arenas	1195567325	1984-01-27	Activo	3217462506	a.arboleda009@alpina.com.co	Diagonal 25 # 33-6 Chinchiná	2014-10-15	3000000.00	15	1	4	1	CTA-0009
10	Samuel	Cardona Bedoya	1178076718	1975-08-04	Activo	3247851696	s.cardona010@alpina.com.co	Av 52 # 90-38 Entrerríos	2021-02-22	2500000.00	14	4	2	2	CTA-0010
11	Carlos Andrés	Varela Urrego	1056420484	1989-04-14	Activo	3258801207	c.varela011@alpina.com.co	Tv 57 # 87-28 Chinchiná	2024-11-26	2100000.00	13	1	4	2	CTA-0011
12	Beatriz	Pinzón Salcedo	1006556640	1972-01-28	Activo	3218640615	b.pinzon012@alpina.com.co	Tv 74 # 25-92 Facatativá	2010-06-29	2800000.00	15	5	4	4	CTA-0012
13	Tatiana	Gutiérrez Vergara	1058744720	1977-11-21	Vacaciones	3271842524	t.gutierrez013@alpina.com.co	Diagonal 32 # 16-59 Barranquilla	2023-01-14	6200000.00	8	2	4	5	CTA-0013
14	Rosario	Ariza Orozco	1147068257	1990-01-01	Inactivo	3175348512	r.ariza014@alpina.com.co	Cra 36 # 99-67 Entrerríos	2011-07-27	3300000.00	13	4	2	3	CTA-0014
15	Jairo	Cárdenas Toro	1040488297	1980-05-16	Vacaciones	3032077581	j.cardenas015@alpina.com.co	Tv 53 # 43-70 Entrerríos	2013-08-04	2500000.00	13	4	4	1	CTA-0015
16	Lena	Garzon Alzate	1128038272	1970-04-07	Activo	3164700025	l.garzon016@alpina.com.co	Tv 29 # 35-56 Facatativá	2012-11-21	2900000.00	13	5	1	4	CTA-0016
17	Astrid Milena	Gallon Sánchez	1105769006	1996-07-20	Activo	3018190929	a.gallon017@alpina.com.co	Cra 60 # 24-7 Facatativá	2020-11-16	4400000.00	12	5	4	3	CTA-0017
18	Silvestre	Rangel Cárdenas	1126247030	1970-11-14	Activo	3054761823	s.rangel018@alpina.com.co	Calle 6 # 97-4 Chinchiná	2021-10-20	8100000.00	20	1	2	2	CTA-0018
19	Tomás	Chaparro Cano	1124831609	1981-06-30	Activo	3092921542	t.chaparro019@alpina.com.co	Cra 40 # 14-75 Sopó	2022-03-15	9100000.00	3	3	3	5	CTA-0019
20	Marco Aurelio	Acosta Londoño	1187151321	1983-07-13	Activo	3211689025	m.acosta020@alpina.com.co	Av 69 # 55-85 Sopó	2024-01-27	2900000.00	13	3	1	5	CTA-0020
21	Rodrigo Alonso	Posada Quintero	1116900190	1977-11-25	Activo	3249111742	r.posada021@alpina.com.co	Tv 56 # 94-76 Facatativá	2021-06-17	4000000.00	12	5	3	2	CTA-0021
22	Luisa Fernanda	Alzate Restrepo	1007704096	1992-03-04	Activo	3136952975	l.alzate022@alpina.com.co	Av 44 # 36-77 Chinchiná	2017-06-17	2200000.00	15	1	3	5	CTA-0022
23	Adriana	Nelly Cotes	1185384033	1991-05-11	Vacaciones	3171289293	a.nelly023@alpina.com.co	Calle 38 # 29-52 Entrerríos	2023-11-05	3200000.00	15	4	2	3	CTA-0023
24	Jimmy	Mora Cardona	1094438418	1990-05-10	Activo	3133024269	j.mora024@alpina.com.co	Cra 41 # 16-96 Facatativá	2014-06-07	2200000.00	14	5	2	2	CTA-0024
25	Adriana	Cruz Serrano	1061064547	1986-03-10	Activo	3083123709	a.cruz025@alpina.com.co	Av 6 # 7-71 Sopó	2009-01-09	4100000.00	12	3	2	4	CTA-0025
26	Gilberto	Vargas Rangel	1128239453	1975-02-13	Activo	3172242892	g.vargas026@alpina.com.co	Diagonal 7 # 20-20 Sopó	2023-06-10	3200000.00	17	3	5	3	CTA-0026
27	Luz Dary	Sierra Cuervo	1102106949	1990-03-18	Activo	3266123430	l.sierra027@alpina.com.co	Diagonal 80 # 8-79 Facatativá	2018-02-20	3100000.00	16	5	1	2	CTA-0027
28	Alejandro	Varela Ramírez	1109660600	1990-03-18	Activo	3141547605	a.varela028@alpina.com.co	Cra 37 # 91-37 Entrerríos	2023-09-03	3200000.00	15	4	4	1	CTA-0028
29	Jairo	Sierra Bernal	1071305173	1976-05-19	Activo	3045842082	j.sierra029@alpina.com.co	Tv 16 # 60-89 Barranquilla	2006-08-08	3500000.00	13	2	4	3	CTA-0029
30	Pilar	Leal Vélez	1162058147	1981-03-26	Activo	3091348050	p.leal030@alpina.com.co	Av 74 # 6-98 Chinchiná	2005-07-31	3900000.00	16	1	2	4	CTA-0030
31	Adriana	Castaño Cifuentes	1093405085	1988-04-26	Activo	3213698193	a.castano031@alpina.com.co	Av 53 # 89-64 Facatativá	2013-10-16	3900000.00	12	5	4	5	CTA-0031
32	Wilson Andrés	Parra Orrego	1000308986	1999-07-03	Activo	3104147112	w.parra032@alpina.com.co	Diagonal 47 # 80-97 Sopó	2023-08-03	2500000.00	13	3	4	1	CTA-0032
33	Adriana	Ponce Moreno	1169120316	1997-04-24	Activo	3226213522	a.ponce033@alpina.com.co	Diagonal 2 # 71-53 Entrerríos	2024-04-09	8400000.00	6	4	2	1	CTA-0033
34	Edwin	Pulido Becerra	1126760532	1980-12-07	Activo	3064197911	e.pulido034@alpina.com.co	Diagonal 66 # 96-18 Chinchiná	2015-03-31	5300000.00	18	1	1	3	CTA-0034
35	Omar	Espitia Hoyos	1039888278	1990-01-12	Activo	3157328534	o.espitia035@alpina.com.co	Tv 42 # 25-90 Entrerríos	2020-02-10	5200000.00	11	4	5	4	CTA-0035
36	Yeny	Alzate Serna	1178157613	1999-04-01	Activo	3029427047	y.alzate036@alpina.com.co	Diagonal 43 # 13-57 Entrerríos	2018-12-15	7000000.00	7	4	5	4	CTA-0036
37	Héctor	Granados Restrepo	1167304921	1987-10-31	Activo	3187375499	h.granados037@alpina.com.co	Av 63 # 70-5 Facatativá	2020-05-28	2900000.00	14	5	1	2	CTA-0037
38	Daniel	Morales Poveda	1044658206	1983-06-08	Activo	3105921894	d.morales038@alpina.com.co	Av 48 # 56-19 Barranquilla	2005-08-26	4300000.00	12	2	5	4	CTA-0038
39	Sandra Milena	Plazas Marín	1062327610	1990-09-08	Activo	3141157662	s.plazas039@alpina.com.co	Tv 37 # 87-70 Barranquilla	2022-12-29	5600000.00	9	2	1	4	CTA-0039
40	Rocío	Varela Pinzón	1103265306	1991-09-04	Activo	3197022335	r.varela040@alpina.com.co	Diagonal 38 # 90-38 Chinchiná	2012-01-25	10000000.00	2	1	4	3	CTA-0040
41	Karina	Palomino Zuluaga	1058788582	1998-07-23	Activo	3122630140	k.palomino041@alpina.com.co	Calle 40 # 57-5 Facatativá	2018-09-09	2000000.00	14	5	3	2	CTA-0041
42	Gustavo	Aguilar Valencia	1142499599	1992-07-05	Activo	3175951651	g.aguilar042@alpina.com.co	Av 15 # 60-10 Facatativá	2016-08-14	6200000.00	8	5	2	4	CTA-0042
43	Hernando	Ponce Berrio	1098941459	2000-03-07	Activo	3152817745	h.ponce043@alpina.com.co	Cra 61 # 4-80 Facatativá	2021-02-12	5900000.00	18	5	5	3	CTA-0043
44	Liseth	Barragan Soto	1037521107	1972-01-13	Activo	3112630611	l.barragan044@alpina.com.co	Cra 69 # 18-50 Barranquilla	2005-11-01	3200000.00	13	2	3	5	CTA-0044
45	Marta Inés	Barragan Fajardo	1008782211	2000-12-18	Activo	3174961312	m.barragan045@alpina.com.co	Av 13 # 88-48 Facatativá	2023-02-12	2500000.00	14	5	3	1	CTA-0045
46	Wilmar	Martínez Mendoza	1089525682	1980-12-04	Activo	3014475523	w.martinez046@alpina.com.co	Diagonal 28 # 30-43 Barranquilla	2007-10-29	2500000.00	16	2	2	5	CTA-0046
47	Sandra	Sánchez Galeano	1003989038	1986-01-26	Activo	3251264762	s.sanchez047@alpina.com.co	Cra 34 # 7-17 Facatativá	2022-09-20	2800000.00	16	5	4	5	CTA-0047
48	Iván	Salinas Perdomo	1059471808	1997-08-04	Vacaciones	3286060517	i.salinas048@alpina.com.co	Tv 4 # 8-62 Sopó	2016-01-28	4300000.00	18	3	4	4	CTA-0048
49	Álvaro	Torres Duque	1073824044	1998-01-02	Activo	3257390515	a.torres049@alpina.com.co	Diagonal 68 # 38-59 Entrerríos	2023-02-07	2200000.00	13	4	5	4	CTA-0049
50	Yolanda	Restrepo Berrio	1107033318	1988-08-29	Activo	3166243275	y.restrepo050@alpina.com.co	Av 48 # 20-88 Chinchiná	2023-01-08	5700000.00	20	1	4	1	CTA-0050
51	Milena	Galeano Nelly	1016101021	1996-04-22	Activo	3117892225	m.galeano051@alpina.com.co	Av 55 # 93-7 Chinchiná	2020-08-08	4900000.00	12	1	5	3	CTA-0051
52	Iván	Florez Nelly	1098666418	1975-02-26	Activo	3238199311	i.florez052@alpina.com.co	Diagonal 80 # 79-87 Facatativá	2022-02-08	2800000.00	14	5	5	1	CTA-0052
53	Keyla	Restrepo Florez	1001639010	1978-02-20	Activo	3262167449	k.restrepo053@alpina.com.co	Cra 4 # 12-96 Chinchiná	2024-07-05	3200000.00	13	1	2	4	CTA-0053
54	Óscar	Castro Aguilar	1014122074	1976-12-24	Inactivo	3202368710	o.castro054@alpina.com.co	Av 57 # 85-55 Entrerríos	2008-07-13	3200000.00	13	4	5	4	CTA-0054
55	Amado	Arias Hernández	1182057728	2000-06-08	Activo	3241761976	a.arias055@alpina.com.co	Cra 51 # 77-8 Barranquilla	2023-11-22	10600000.00	2	2	2	3	CTA-0055
56	Rosendo	Leal Cardona	1034678023	1987-01-21	Vacaciones	3086941939	r.leal056@alpina.com.co	Calle 51 # 95-6 Sopó	2016-12-31	2100000.00	13	3	1	4	CTA-0056
57	Nohemy	Carrillo Soto	1108725032	1970-12-08	Activo	3277070880	n.carrillo057@alpina.com.co	Calle 56 # 14-32 Sopó	2012-04-14	3500000.00	13	3	5	4	CTA-0057
58	Beatriz	Taborda Villanueva	1020502932	1992-11-24	Activo	3236861544	b.taborda058@alpina.com.co	Av 19 # 31-14 Barranquilla	2013-06-15	5000000.00	8	2	3	2	CTA-0058
59	Wilson Andrés	Medina Rojas	1151326590	1995-12-30	Activo	3296422534	w.medina059@alpina.com.co	Av 20 # 57-9 Facatativá	2019-01-11	2700000.00	13	5	4	3	CTA-0059
60	Reinel	Salinas García	1015271307	1986-07-17	Activo	3019507186	r.salinas060@alpina.com.co	Tv 60 # 75-71 Entrerríos	2023-08-28	8400000.00	20	4	1	4	CTA-0060
61	Felipe	Salinas Londoño	1092190875	1973-10-13	Activo	3005156449	f.salinas061@alpina.com.co	Tv 57 # 68-67 Entrerríos	2016-04-26	2400000.00	14	4	2	3	CTA-0061
62	Camila	Taborda Torres	1088500689	1974-03-29	Activo	3145227787	c.taborda062@alpina.com.co	Diagonal 20 # 43-11 Facatativá	2017-07-07	2300000.00	14	5	2	3	CTA-0062
63	Lorenzo	Cardona Duque	1179883001	2000-09-29	Activo	3269531021	l.cardona063@alpina.com.co	Av 3 # 47-40 Chinchiná	2024-08-24	6000000.00	9	1	2	3	CTA-0063
64	Héctor	Morales Ariza	1144893609	1993-08-14	Activo	3193198638	h.morales064@alpina.com.co	Diagonal 49 # 20-21 Facatativá	2012-06-18	5900000.00	9	5	5	2	CTA-0064
65	Marta Inés	Hernández Quiroga	1062814687	1993-12-15	Activo	3137171347	m.hernandez065@alpina.com.co	Diagonal 57 # 60-99 Entrerríos	2017-04-26	5400000.00	12	4	4	5	CTA-0065
66	Claudia	Rangel Vargas	1172115186	1991-07-23	Activo	3083091745	c.rangel066@alpina.com.co	Av 11 # 98-21 Entrerríos	2017-11-18	4200000.00	12	4	4	5	CTA-0066
67	Valentina	Pulido Vargas	1106422300	1992-07-08	Activo	3117289990	v.pulido067@alpina.com.co	Cra 4 # 41-13 Entrerríos	2018-11-26	4400000.00	18	4	3	2	CTA-0067
68	Claudia	Cifuentes Quiroga	1165181290	1970-03-28	Activo	3133508522	c.cifuentes068@alpina.com.co	Diagonal 78 # 68-55 Sopó	2006-10-12	7900000.00	7	3	3	2	CTA-0068
69	Astrid Milena	Posada Torres	1029758188	1992-06-03	Activo	3085059048	a.posada069@alpina.com.co	Cra 38 # 55-1 Barranquilla	2023-10-21	2800000.00	14	2	3	2	CTA-0069
70	Deisy	Jiménez Tabares	1146050889	1992-10-04	Activo	3068887557	d.jimenez070@alpina.com.co	Calle 50 # 48-33 Entrerríos	2022-02-21	2700000.00	16	4	1	3	CTA-0070
71	Yuri	Taborda Palacio	1011901270	1985-10-21	Activo	3228795078	y.taborda071@alpina.com.co	Tv 24 # 18-9 Chinchiná	2017-03-31	3400000.00	16	1	4	1	CTA-0071
72	Yadira	Reyes Orrego	1106897455	1994-05-12	Activo	3035800144	y.reyes072@alpina.com.co	Av 7 # 84-43 Sopó	2022-12-24	5100000.00	12	3	1	3	CTA-0072
73	Soraya	Plazas Pizarro	1139392050	1981-12-18	Activo	3262324175	s.plazas073@alpina.com.co	Tv 78 # 24-70 Facatativá	2022-12-21	4000000.00	12	5	3	1	CTA-0073
74	Blanca Nubia	Vásquez Poveda	1094367675	1990-01-21	Vacaciones	3198297090	b.vasquez074@alpina.com.co	Av 8 # 10-86 Facatativá	2009-01-01	2700000.00	14	5	4	3	CTA-0074
75	Julián	Barros Valencia	1097214057	1987-03-05	Activo	3228548448	j.barros075@alpina.com.co	Av 48 # 57-98 Entrerríos	2017-11-23	8600000.00	5	4	5	2	CTA-0075
76	Tomás	Sánchez Mejía	1133961093	1993-03-23	Activo	3045366937	t.sanchez076@alpina.com.co	Tv 28 # 79-37 Chinchiná	2019-11-26	2300000.00	15	1	4	2	CTA-0076
77	Marcela	Bermúdez Osorio	1179271878	1985-08-02	Activo	3285871470	m.bermudez077@alpina.com.co	Av 21 # 92-91 Sopó	2020-11-30	7100000.00	20	3	2	3	CTA-0077
78	Rosendo	Sánchez Betancur	1148718997	1995-09-03	Activo	3222446455	r.sanchez078@alpina.com.co	Calle 40 # 51-92 Barranquilla	2021-12-12	3800000.00	16	2	4	5	CTA-0078
79	Mónica	Montes Porras	1092479982	1975-10-04	Suspendido	3294052834	m.montes079@alpina.com.co	Cra 56 # 65-8 Facatativá	2024-09-10	4400000.00	18	5	1	5	CTA-0079
80	Beatriz	Arenas Porras	1076248637	1973-07-16	Activo	3285604524	b.arenas080@alpina.com.co	Cra 39 # 79-69 Sopó	2010-08-15	8800000.00	6	3	5	2	CTA-0080
81	Yanira	Restrepo Moreno	1021803094	1972-01-15	Suspendido	3244536777	y.restrepo081@alpina.com.co	Diagonal 54 # 80-82 Facatativá	2019-05-22	7900000.00	3	5	4	5	CTA-0081
82	Alejandro	Rincón Varela	1118005702	1988-08-23	Activo	3053410360	a.rincon082@alpina.com.co	Av 41 # 94-45 Sopó	2017-07-02	3500000.00	13	3	2	3	CTA-0082
83	Edwin	Salinas Blanco	1037816553	1974-05-06	Activo	3198015136	e.salinas083@alpina.com.co	Cra 21 # 42-74 Sopó	2006-02-19	3000000.00	16	3	3	2	CTA-0083
84	Rodrigo	Torres Ariza	1122736914	1980-10-19	Activo	3101847927	r.torres084@alpina.com.co	Av 64 # 77-84 Entrerríos	2009-10-29	3000000.00	15	4	4	3	CTA-0084
85	Fanny	Valencia Parra	1098230560	1972-01-12	Activo	3284265774	f.valencia085@alpina.com.co	Av 71 # 37-10 Sopó	2013-12-26	2700000.00	13	3	5	4	CTA-0085
86	Iván Darío	Restrepo Nelly	1098141713	1976-06-21	Activo	3269389915	i.restrepo086@alpina.com.co	Calle 6 # 5-18 Entrerríos	2009-06-19	3900000.00	16	4	3	4	CTA-0086
87	Rubén Darío	Largo Restrepo	1136181329	1992-11-12	Activo	3296029651	r.largo087@alpina.com.co	Tv 3 # 48-43 Chinchiná	2022-10-20	3100000.00	15	1	1	4	CTA-0087
88	Michael	Espitia Garzon	1061080669	1972-04-21	Activo	3087378535	m.espitia088@alpina.com.co	Cra 32 # 5-74 Facatativá	2018-02-02	5500000.00	20	5	1	2	CTA-0088
89	Franklin	Granados Perdomo	1164142391	1991-02-26	Vacaciones	3084478616	f.granados089@alpina.com.co	Diagonal 42 # 85-62 Facatativá	2010-07-21	2400000.00	13	5	4	3	CTA-0089
90	Beatriz	Granados Becerra	1051610519	1981-01-21	Activo	3135993143	b.granados090@alpina.com.co	Av 27 # 89-91 Barranquilla	2011-04-05	3000000.00	13	2	3	4	CTA-0090
91	Fernanda	Alzate Guzmán	1092646383	1976-07-27	Activo	3116811015	f.alzate091@alpina.com.co	Tv 33 # 96-62 Sopó	2011-07-08	5300000.00	10	3	2	5	CTA-0091
92	Isabel Cristina	Cotes Acosta	1013627240	2000-01-18	Activo	3231880654	i.cotes092@alpina.com.co	Calle 53 # 43-92 Facatativá	2024-01-02	1900000.00	13	5	1	2	CTA-0092
93	Darwin	Urrego Vélez	1076615597	1998-12-22	Suspendido	3094896008	d.urrego093@alpina.com.co	Diagonal 5 # 23-54 Entrerríos	2017-08-21	5200000.00	18	4	2	1	CTA-0093
94	Alexander	Gutiérrez Taborda	1076386436	1990-05-20	Activo	3273251501	a.gutierrez094@alpina.com.co	Diagonal 60 # 35-25 Barranquilla	2022-10-07	3500000.00	17	2	1	3	CTA-0094
95	Luz Dary	Serrano Castro	1181033177	1978-08-31	Activo	3268175669	l.serrano095@alpina.com.co	Diagonal 42 # 12-52 Chinchiná	2008-12-08	2400000.00	15	1	1	2	CTA-0095
96	Oscar	Quiroga Cifuentes	1088483118	1983-07-19	Vacaciones	3205388133	o.quiroga096@alpina.com.co	Av 31 # 8-86 Sopó	2018-01-24	5000000.00	8	3	4	3	CTA-0096
97	Kelly	Pizarro Zapata	1058821885	1975-12-29	Activo	3197268384	k.pizarro097@alpina.com.co	Tv 71 # 61-97 Barranquilla	2015-09-23	2900000.00	14	2	2	2	CTA-0097
98	Deisy	Salazar Chaparro	1030120819	1972-10-08	Activo	3233514105	d.salazar098@alpina.com.co	Cra 42 # 67-57 Facatativá	2023-08-04	6000000.00	8	5	2	5	CTA-0098
99	Evelio	Pulido Berrio	1151373757	1972-08-03	Activo	3241365247	e.pulido099@alpina.com.co	Tv 33 # 1-96 Barranquilla	2017-07-14	4600000.00	10	2	5	1	CTA-0099
100	Natalia	Jiménez Cifuentes	1008518765	1982-11-17	Activo	3067282411	n.jimenez100@alpina.com.co	Tv 58 # 49-49 Sopó	2014-03-04	9000000.00	5	3	5	2	CTA-0100
101	Fanny	Sierra Ramírez	1006102966	1983-05-21	Activo	3288115687	f.sierra101@alpina.com.co	Diagonal 49 # 30-32 Barranquilla	2015-05-21	2700000.00	13	2	3	2	CTA-0101
102	Pilar	Castro Cotes	1055319614	1973-01-07	Activo	3071816653	p.castro102@alpina.com.co	Cra 6 # 52-57 Entrerríos	2007-04-07	4600000.00	11	4	5	2	CTA-0102
103	Mónica Lorena	Vélez Barros	1081004273	1976-06-05	Activo	3066041569	m.velez103@alpina.com.co	Av 8 # 72-76 Entrerríos	2019-10-23	5700000.00	18	4	2	4	CTA-0103
104	Yadira	Pulido Barragan	1040055297	1983-06-15	Activo	3275042775	y.pulido104@alpina.com.co	Cra 39 # 91-19 Entrerríos	2013-06-11	4700000.00	17	4	4	1	CTA-0104
105	Luis Enrique	Pacheco Montoya	1088654296	1999-01-04	Activo	3119986473	l.pacheco105@alpina.com.co	Cra 7 # 35-49 Barranquilla	2017-11-23	2200000.00	15	2	5	5	CTA-0105
106	Germán	Varela Herrera	1056856715	1978-07-11	Activo	3275070038	g.varela106@alpina.com.co	Diagonal 27 # 51-31 Sopó	2021-08-19	2500000.00	14	3	3	3	CTA-0106
107	Rosendo	Montes Morales	1193921416	1991-01-23	Activo	3157944595	r.montes107@alpina.com.co	Calle 73 # 29-95 Chinchiná	2016-03-30	6200000.00	8	1	1	3	CTA-0107
108	Giovanni	Alzate Castro	1065962648	1992-05-25	Activo	3255317226	g.alzate108@alpina.com.co	Tv 63 # 59-22 Chinchiná	2022-09-29	2900000.00	16	1	3	2	CTA-0108
109	Rocío	Salazar Mendoza	1001713645	1988-07-01	Activo	3013533857	r.salazar109@alpina.com.co	Calle 28 # 65-59 Barranquilla	2009-07-31	3400000.00	13	2	1	5	CTA-0109
110	Luisa Valentina	Castro Lara	1193862133	1982-04-29	Activo	3088223819	l.castro110@alpina.com.co	Cra 14 # 13-68 Barranquilla	2017-01-06	6400000.00	8	2	2	2	CTA-0110
111	Víctor Hugo	Cárdenas Montaño	1108992152	1990-08-04	Activo	3236032739	v.cardenas111@alpina.com.co	Calle 5 # 12-52 Barranquilla	2021-04-06	3400000.00	13	2	4	5	CTA-0111
112	Amado	Cardona Chaparro	1025598497	1993-09-10	Activo	3098977571	a.cardona112@alpina.com.co	Av 6 # 10-88 Sopó	2012-08-23	7300000.00	20	3	3	5	CTA-0112
113	Franklin	Marín Guzmán	1020652750	1983-06-05	Activo	3097528964	f.marin113@alpina.com.co	Diagonal 43 # 50-97 Entrerríos	2008-08-23	3600000.00	16	4	2	1	CTA-0113
114	Lina María	Guzmán Gómez	1007952577	1998-06-12	Activo	3136969521	l.guzman114@alpina.com.co	Diagonal 49 # 56-24 Entrerríos	2019-07-06	2300000.00	15	4	5	4	CTA-0114
115	Ximena	Cifuentes Quintero	1102005470	1998-06-08	Vacaciones	3157051545	x.cifuentes115@alpina.com.co	Calle 12 # 1-40 Sopó	2018-03-01	2200000.00	13	3	3	3	CTA-0115
116	Álvaro Enrique	Orrego Barragan	1027727484	1971-03-07	Activo	3216443037	a.orrego116@alpina.com.co	Tv 2 # 38-53 Facatativá	2007-01-05	2600000.00	13	5	1	5	CTA-0116
117	Edwin	Varela Cifuentes	1132371950	1976-07-18	Activo	3148064924	e.varela117@alpina.com.co	Av 62 # 10-47 Entrerríos	2006-06-03	4400000.00	12	4	2	4	CTA-0117
118	Víctor Hugo	Taborda Alzate	1088460680	1989-09-30	Activo	3293283789	v.taborda118@alpina.com.co	Av 42 # 78-89 Barranquilla	2015-04-03	5000000.00	10	2	4	3	CTA-0118
119	Maribel	Acosta Gómez	1100946576	1982-07-29	Activo	3114352088	m.acosta119@alpina.com.co	Diagonal 70 # 24-88 Entrerríos	2023-04-25	3900000.00	16	4	5	1	CTA-0119
120	Marcela	Barragan Plazas	1037360610	1998-05-30	Activo	3128098909	m.barragan120@alpina.com.co	Tv 10 # 58-77 Facatativá	2019-10-22	3500000.00	13	5	5	4	CTA-0120
121	Yeny	Pabón Aguilar	1029358631	1981-02-19	Activo	3121743175	y.pabon121@alpina.com.co	Diagonal 52 # 97-43 Sopó	2019-10-02	3000000.00	17	3	4	1	CTA-0121
122	Milena	Espitia Garzon	1059332755	1989-12-30	Activo	3199396422	m.espitia122@alpina.com.co	Cra 45 # 4-62 Chinchiná	2016-05-20	7200000.00	7	1	3	4	CTA-0122
123	Héctor	Montoya Cuervo	1129634461	1985-08-16	Activo	3176350413	h.montoya123@alpina.com.co	Calle 39 # 6-91 Sopó	2015-09-06	6500000.00	8	3	1	3	CTA-0123
124	Édgar	Varela Cardona	1150283309	1989-02-15	Activo	3124127053	e.varela124@alpina.com.co	Tv 51 # 4-95 Barranquilla	2017-06-27	2800000.00	14	2	2	4	CTA-0124
125	Eder	Torres Garzon	1027313856	1994-01-31	Activo	3138676422	e.torres125@alpina.com.co	Calle 34 # 86-63 Facatativá	2016-04-10	3100000.00	13	5	3	5	CTA-0125
126	Alirio	Cardona Largo	1164949431	1996-06-22	Activo	3052977390	a.cardona126@alpina.com.co	Cra 40 # 15-24 Chinchiná	2015-06-04	3100000.00	13	1	2	5	CTA-0126
127	Ibar	Pabón Cardona	1148958211	1977-06-26	Activo	3026277776	i.pabon127@alpina.com.co	Tv 80 # 7-46 Chinchiná	2015-12-26	5900000.00	20	1	1	4	CTA-0127
128	Yolanda	Hoyos Pulido	1190627391	1989-11-29	Activo	3091517756	y.hoyos128@alpina.com.co	Cra 38 # 5-36 Barranquilla	2018-11-14	5000000.00	11	2	5	3	CTA-0128
129	Tomás	Cifuentes Nieto	1098478707	1994-04-25	Inactivo	3274666525	t.cifuentes129@alpina.com.co	Tv 14 # 95-84 Barranquilla	2013-03-31	2600000.00	16	2	2	3	CTA-0129
130	Hernán	Barros Flórez	1198001476	1996-05-16	Activo	3298183451	h.barros130@alpina.com.co	Cra 79 # 18-27 Sopó	2022-02-05	4800000.00	17	3	2	1	CTA-0130
131	Sigifredo	Carrillo Forero	1071764356	1993-01-28	Activo	3105652716	s.carrillo131@alpina.com.co	Cra 17 # 32-19 Entrerríos	2013-03-18	3700000.00	16	4	3	2	CTA-0131
132	Leidy	Salinas Salazar	1170088157	1974-03-06	Activo	3247191986	l.salinas132@alpina.com.co	Tv 63 # 42-75 Chinchiná	2014-01-14	14000000.00	1	1	1	4	CTA-0132
133	Emilio	Correa Medina	1072084808	1984-06-25	Activo	3183191007	e.correa133@alpina.com.co	Diagonal 63 # 44-88 Facatativá	2023-07-31	2800000.00	16	5	1	1	CTA-0133
134	Carlos Andrés	Orozco Escobar	1184842474	1975-12-02	Activo	3125597283	c.orozco134@alpina.com.co	Calle 47 # 33-11 Barranquilla	2024-10-14	3100000.00	13	2	2	1	CTA-0134
135	María Fernanda	Correa Cubides	1020921517	1975-12-15	Activo	3271155809	m.correa135@alpina.com.co	Calle 44 # 16-55 Facatativá	2018-04-26	2300000.00	15	5	2	4	CTA-0135
136	Augusto	Largo Toro	1102735899	1975-12-22	Activo	3019900451	a.largo136@alpina.com.co	Diagonal 2 # 79-84 Facatativá	2019-05-23	5100000.00	9	5	4	3	CTA-0136
137	Cristina	Morales Toro	1033059764	1996-06-12	Activo	3166276495	c.morales137@alpina.com.co	Cra 32 # 36-83 Facatativá	2022-08-19	8900000.00	6	5	2	5	CTA-0137
138	Nelly	Varela Montoya	1138982223	1997-03-23	Activo	3265958372	n.varela138@alpina.com.co	Calle 31 # 64-50 Barranquilla	2020-12-08	9000000.00	7	2	2	4	CTA-0138
139	Yadira	Galeano Acosta	1152573449	1988-11-17	Activo	3228902314	y.galeano139@alpina.com.co	Calle 3 # 76-9 Sopó	2015-01-27	10100000.00	2	3	3	2	CTA-0139
140	Amparo	Pulido Vergara	1188390858	1988-01-17	Activo	3283561552	a.pulido140@alpina.com.co	Av 11 # 40-11 Chinchiná	2007-11-23	2900000.00	13	1	2	2	CTA-0140
141	Nelly	Cotes Gómez	1065627035	1973-11-13	Activo	3191923227	n.cotes141@alpina.com.co	Av 23 # 16-2 Facatativá	2014-09-30	2400000.00	15	5	2	1	CTA-0141
142	Rosario	Causado Vásquez	1099822941	1975-09-11	Suspendido	3111492516	r.causado142@alpina.com.co	Av 55 # 35-68 Barranquilla	2021-10-26	9000000.00	5	2	3	5	CTA-0142
143	Rosendo	Castro Vásquez	1098700437	1977-01-21	Suspendido	3092934976	r.castro143@alpina.com.co	Cra 66 # 1-6 Chinchiná	2010-09-21	4100000.00	18	1	1	2	CTA-0143
144	Sebastián	Castellanos Silva	1060267871	1984-06-08	Activo	3255550953	s.castellanos144@alpina.com.co	Calle 74 # 48-16 Sopó	2010-07-27	2600000.00	13	3	1	2	CTA-0144
145	Tatiana	Hernández Reyes	1087859173	1973-11-16	Activo	3054366703	t.hernandez145@alpina.com.co	Av 73 # 39-95 Chinchiná	2017-05-28	2400000.00	14	1	2	4	CTA-0145
146	Fernanda	Acosta Bernal	1001712048	1988-05-24	Activo	3251160974	f.acosta146@alpina.com.co	Av 1 # 98-85 Sopó	2006-12-05	2500000.00	13	3	3	1	CTA-0146
147	Yessica	Fajardo Castaño	1011784387	1980-05-20	Activo	3158691649	y.fajardo147@alpina.com.co	Calle 75 # 13-65 Facatativá	2023-12-19	6300000.00	8	5	4	1	CTA-0147
148	Milton	Bedoya Torres	1188099597	1984-08-20	Activo	3132253047	m.bedoya148@alpina.com.co	Cra 18 # 99-75 Chinchiná	2012-02-19	7500000.00	7	1	2	1	CTA-0148
149	Baldomero	Flórez Salinas	1082760722	1990-10-14	Activo	3026103880	b.florez149@alpina.com.co	Diagonal 6 # 28-42 Entrerríos	2014-09-23	5600000.00	8	4	1	2	CTA-0149
150	Fredy	Moreno Parra	1121386826	1994-12-09	Activo	3113345338	f.moreno150@alpina.com.co	Calle 2 # 8-29 Sopó	2018-07-17	5600000.00	8	3	2	4	CTA-0150
151	Julián	Pinzón Poveda	1034572218	1974-02-15	Activo	3008734211	j.pinzon151@alpina.com.co	Calle 22 # 74-56 Facatativá	2024-01-02	3000000.00	17	5	4	4	CTA-0151
152	Gilberto	Chávez Fajardo	1119725281	1976-09-01	Activo	3295123584	g.chavez152@alpina.com.co	Av 64 # 53-71 Barranquilla	2005-10-11	2700000.00	13	2	1	1	CTA-0152
153	Ingrid	Tabares Blanco	1169316841	1994-05-22	Activo	3259047769	i.tabares153@alpina.com.co	Diagonal 63 # 45-73 Entrerríos	2012-10-28	2700000.00	13	4	3	4	CTA-0153
154	Germán Alejo	Fajardo Gómez	1126616813	1993-10-01	Suspendido	3233678059	g.fajardo154@alpina.com.co	Calle 32 # 85-31 Barranquilla	2019-10-07	4500000.00	12	2	5	1	CTA-0154
155	Andrés Mauricio	Osorio Hurtado	1158796349	1971-04-08	Vacaciones	3193384080	a.osorio155@alpina.com.co	Diagonal 25 # 64-70 Entrerríos	2020-10-11	2000000.00	13	4	2	4	CTA-0155
156	Ciro	Ramírez Cardona	1164855547	1979-01-14	Activo	3126428919	c.ramirez156@alpina.com.co	Calle 3 # 19-76 Entrerríos	2023-02-02	3500000.00	15	4	2	1	CTA-0156
157	Nelly	Guzmán Morales	1090344924	1983-07-16	Activo	3069173859	n.guzman157@alpina.com.co	Av 23 # 91-72 Chinchiná	2012-03-27	2500000.00	15	1	5	3	CTA-0157
158	Kelly	Duque Ocampo	1195644070	1970-01-30	Activo	3191543292	k.duque158@alpina.com.co	Cra 78 # 41-79 Chinchiná	2020-09-29	6000000.00	10	1	5	1	CTA-0158
159	Jhon Fredy	Vásquez Bermúdez	1190311560	2000-01-21	Activo	3044517918	j.vasquez159@alpina.com.co	Cra 9 # 45-33 Sopó	2021-10-27	2600000.00	16	3	1	1	CTA-0159
160	Pilar	Granados Medina	1101659883	1985-10-03	Activo	3074784650	p.granados160@alpina.com.co	Cra 58 # 10-5 Barranquilla	2017-04-01	4600000.00	12	2	1	3	CTA-0160
161	Catalina	Salazar Mora	1024992598	1985-02-27	Activo	3108236404	c.salazar161@alpina.com.co	Cra 78 # 56-21 Facatativá	2018-04-29	7600000.00	4	5	1	3	CTA-0161
162	Liseth	Barros Nieto	1013323913	1987-08-17	Activo	3121914439	l.barros162@alpina.com.co	Av 1 # 55-12 Facatativá	2018-06-13	4400000.00	12	5	5	4	CTA-0162
163	Ximena	Triana Soto	1082772984	1987-10-31	Activo	3242529023	x.triana163@alpina.com.co	Diagonal 50 # 24-48 Sopó	2016-05-23	4500000.00	18	3	4	3	CTA-0163
164	Edinson	Cifuentes Chaparro	1016546193	1976-10-12	Vacaciones	3212437930	e.cifuentes164@alpina.com.co	Av 70 # 53-97 Facatativá	2021-11-15	1900000.00	14	5	2	5	CTA-0164
165	Sandra Milena	Triana Largo	1021194335	1987-09-17	Vacaciones	3089670757	s.triana165@alpina.com.co	Diagonal 80 # 19-16 Barranquilla	2024-11-11	8500000.00	20	2	4	2	CTA-0165
166	Emilio	Cárdenas Arboleda	1054202293	1998-02-19	Activo	3152124274	e.cardenas166@alpina.com.co	Calle 50 # 72-51 Entrerríos	2017-10-16	2700000.00	14	4	3	3	CTA-0166
167	Sandra	Pulido Bernal	1039782064	1995-06-02	Activo	3215799841	s.pulido167@alpina.com.co	Diagonal 45 # 53-34 Sopó	2015-08-31	3400000.00	13	3	4	5	CTA-0167
168	Rubén	González García	1106244805	1984-11-14	Activo	3075506097	r.gonzalez168@alpina.com.co	Av 3 # 44-39 Barranquilla	2020-06-27	2200000.00	13	2	3	4	CTA-0168
169	Yuliana	Cifuentes Pulido	1162397848	1998-12-16	Activo	3137831185	y.cifuentes169@alpina.com.co	Tv 67 # 48-8 Facatativá	2017-12-16	2800000.00	13	5	2	1	CTA-0169
170	Valentina	Cardona Cruz	1053882183	1972-08-02	Activo	3107046090	v.cardona170@alpina.com.co	Cra 36 # 48-60 Sopó	2010-08-06	1900000.00	13	3	4	1	CTA-0170
171	Tobías	Castellanos Florez	1092408639	1977-05-03	Activo	3215782670	t.castellanos171@alpina.com.co	Calle 50 # 7-21 Chinchiná	2023-10-16	4700000.00	18	1	5	2	CTA-0171
172	Germán Alejo	Peña Triana	1035517792	1999-01-15	Activo	3035234408	g.pena172@alpina.com.co	Diagonal 40 # 92-91 Chinchiná	2018-12-25	2500000.00	14	1	3	4	CTA-0172
173	Johan	Cuervo Guzmán	1156897077	1974-08-04	Activo	3255742531	j.cuervo173@alpina.com.co	Av 14 # 62-9 Facatativá	2005-03-02	2700000.00	13	5	3	3	CTA-0173
174	Oscar	Gómez Parra	1177309759	1984-05-03	Activo	3209344531	o.gomez174@alpina.com.co	Av 34 # 54-52 Chinchiná	2020-04-08	2500000.00	13	1	1	5	CTA-0174
175	Gladys	Hurtado Ariza	1080582934	1977-08-17	Activo	3225928878	g.hurtado175@alpina.com.co	Calle 61 # 17-95 Sopó	2023-11-09	4800000.00	12	3	5	2	CTA-0175
176	Keyla	Silva Cardona	1099772742	1981-09-09	Activo	3118894293	k.silva176@alpina.com.co	Calle 75 # 75-80 Sopó	2018-02-18	8600000.00	5	3	4	2	CTA-0176
177	Santiago	Toro Escobar	1091984747	1988-05-10	Activo	3054025884	s.toro177@alpina.com.co	Calle 63 # 43-81 Entrerríos	2019-02-15	4500000.00	9	4	3	1	CTA-0177
178	Catalina	Hoyos Bermúdez	1034737147	1997-07-25	Activo	3168197852	c.hoyos178@alpina.com.co	Tv 50 # 1-5 Entrerríos	2020-06-04	1900000.00	13	4	2	3	CTA-0178
179	Rosa	Sierra Arenas	1083776628	1975-10-14	Activo	3296135759	r.sierra179@alpina.com.co	Cra 9 # 6-39 Barranquilla	2007-04-22	7800000.00	20	2	3	4	CTA-0179
180	Ibar	Hurtado Suárez	1044260579	1988-02-05	Activo	3024543184	i.hurtado180@alpina.com.co	Calle 76 # 65-22 Entrerríos	2006-07-11	5700000.00	8	4	3	1	CTA-0180
181	Norela	Martínez Mendoza	1185153288	1975-03-13	Activo	3115240244	n.martinez181@alpina.com.co	Tv 20 # 27-89 Entrerríos	2014-05-08	2800000.00	15	4	1	3	CTA-0181
182	Iván	Gallón Giraldo	1075888520	1975-02-11	Activo	3134351238	i.gallon182@alpina.com.co	Av 67 # 26-46 Barranquilla	2022-08-08	2400000.00	15	2	4	3	CTA-0182
183	Carlos Andrés	Herrera Bermúdez	1029643573	1995-10-03	Activo	3082259100	c.herrera183@alpina.com.co	Calle 33 # 83-30 Sopó	2024-11-01	3300000.00	13	3	3	3	CTA-0183
184	Esperanza	Carrillo Betancur	1181668132	1984-01-11	Vacaciones	3011769891	e.carrillo184@alpina.com.co	Calle 18 # 85-83 Entrerríos	2014-07-22	5900000.00	9	4	3	3	CTA-0184
185	Walter	Henao Soto	1107582895	1987-12-15	Activo	3178075620	w.henao185@alpina.com.co	Cra 15 # 17-90 Sopó	2016-03-11	2800000.00	16	3	1	2	CTA-0185
186	Lorenzo	Hurtado Moreno	1183734441	1975-11-11	Activo	3068393515	l.hurtado186@alpina.com.co	Calle 9 # 34-84 Sopó	2015-11-02	2600000.00	13	3	1	5	CTA-0186
187	Brayan	Serna Bernal	1149879389	1997-06-29	Activo	3229482016	b.serna187@alpina.com.co	Tv 64 # 22-10 Facatativá	2016-02-07	3200000.00	16	5	4	3	CTA-0187
188	Freddy	Muñoz Parra	1063082333	1973-07-15	Activo	3272476728	f.munoz188@alpina.com.co	Tv 58 # 41-16 Chinchiná	2015-04-19	3100000.00	13	1	1	1	CTA-0188
189	Luz Dary	Varela Gallón	1150950000	1979-04-13	Activo	3157095875	l.varela189@alpina.com.co	Calle 29 # 59-43 Barranquilla	2019-09-07	2600000.00	14	2	5	5	CTA-0189
190	Beatriz	Ramírez Molina	1095331893	1998-06-04	Activo	3252783791	b.ramirez190@alpina.com.co	Calle 22 # 64-18 Chinchiná	2019-09-12	3800000.00	17	1	4	1	CTA-0190
191	Constanza	Cano Posada	1051158097	1985-02-27	Inactivo	3103067274	c.cano191@alpina.com.co	Tv 59 # 85-76 Barranquilla	2007-06-02	8500000.00	20	2	5	2	CTA-0191
192	Consuelo	Becerra Gallón	1047567417	1995-12-15	Vacaciones	3017499587	c.becerra192@alpina.com.co	Diagonal 78 # 42-65 Sopó	2015-11-26	5900000.00	18	3	4	4	CTA-0192
193	Mónica	Palacio Toro	1110795519	1997-01-10	Inactivo	3246266549	m.palacio193@alpina.com.co	Diagonal 28 # 26-27 Facatativá	2022-11-16	2900000.00	14	5	3	3	CTA-0193
194	Lena	Zuluaga Herrera	1128948319	1996-02-22	Activo	3269957402	l.zuluaga194@alpina.com.co	Av 55 # 2-67 Sopó	2020-07-17	7400000.00	7	3	1	4	CTA-0194
195	Catalina	Urrego Rangel	1039306571	1972-10-13	Activo	3081542011	c.urrego195@alpina.com.co	Av 58 # 14-79 Sopó	2020-06-28	6000000.00	18	3	5	2	CTA-0195
196	Ingrid	Urrego Mendoza	1102430307	1987-05-21	Activo	3181902651	i.urrego196@alpina.com.co	Calle 33 # 26-80 Entrerríos	2014-09-23	6000000.00	18	4	4	2	CTA-0196
197	Fredy	Salazar Mejía	1046652774	1993-01-18	Activo	3065682726	f.salazar197@alpina.com.co	Diagonal 34 # 17-21 Entrerríos	2013-09-21	2400000.00	14	4	3	1	CTA-0197
198	Mileidy	Vargas Varela	1131681265	1995-09-09	Activo	3259814666	m.vargas198@alpina.com.co	Cra 24 # 67-9 Facatativá	2021-09-20	3800000.00	16	5	5	2	CTA-0198
199	Wilmar	Cardona Betancur	1078805767	1979-10-20	Activo	3271147701	w.cardona199@alpina.com.co	Calle 45 # 58-31 Sopó	2021-11-18	4700000.00	18	3	5	5	CTA-0199
200	Jairo	Hernández Sánchez	1138745648	1986-10-27	Activo	3171735708	j.hernandez200@alpina.com.co	Av 25 # 42-66 Chinchiná	2016-07-15	8700000.00	6	1	1	2	CTA-0200
201	Octavio	Correa Vergara	1027897641	1979-03-23	Vacaciones	3262209981	o.correa201@alpina.com.co	Cra 4 # 59-92 Facatativá	2017-01-23	2100000.00	13	5	1	1	CTA-0201
202	Marleidy	Palomino Causado	1109423090	1987-05-29	Activo	3166308382	m.palomino202@alpina.com.co	Calle 50 # 87-16 Facatativá	2015-07-11	2100000.00	13	5	1	5	CTA-0202
203	Rogelio	Gutiérrez Carrillo	1184114151	1983-07-09	Activo	3177399057	r.gutierrez203@alpina.com.co	Tv 4 # 61-21 Barranquilla	2018-08-09	3100000.00	13	2	2	2	CTA-0203
204	Iván Darío	Montaño Peña	1148585516	1994-11-25	Activo	3007611593	i.montano204@alpina.com.co	Diagonal 71 # 11-40 Barranquilla	2016-01-27	5800000.00	10	2	3	2	CTA-0204
205	Fabio	Cruz Soto	1048682912	2000-02-06	Activo	3272227162	f.cruz205@alpina.com.co	Av 9 # 33-13 Chinchiná	2024-06-17	5500000.00	10	1	5	4	CTA-0205
206	Víctor	Jiménez Cruz	1085305012	1991-10-18	Activo	3243556763	v.jimenez206@alpina.com.co	Diagonal 73 # 47-41 Facatativá	2019-11-26	2900000.00	13	5	2	1	CTA-0206
207	Rodrigo Alonso	Palacio Cardona	1128836662	1990-10-06	Activo	3172825908	r.palacio207@alpina.com.co	Cra 78 # 11-36 Chinchiná	2018-10-02	4600000.00	18	1	2	5	CTA-0207
208	Nelly	Ariza Moreno	1156200039	1995-12-20	Suspendido	3231614990	n.ariza208@alpina.com.co	Diagonal 34 # 70-70 Entrerríos	2018-07-06	3100000.00	13	4	2	3	CTA-0208
209	Rodrigo	Guzmán Valencia	1134799501	1970-06-23	Activo	3229625782	r.guzman209@alpina.com.co	Cra 58 # 21-23 Entrerríos	2019-11-12	3000000.00	14	4	5	2	CTA-0209
210	Patricia	Torres Granados	1099169502	1980-07-01	Activo	3087060792	p.torres210@alpina.com.co	Tv 61 # 59-6 Barranquilla	2005-12-17	9200000.00	3	2	3	1	CTA-0210
211	Yanira	Cardona Muñoz	1175469631	1986-12-24	Activo	3219668165	y.cardona211@alpina.com.co	Av 49 # 29-67 Sopó	2013-03-12	3400000.00	13	3	3	3	CTA-0211
212	Giovanni	Salazar Orrego	1172732043	1982-08-06	Activo	3027077092	g.salazar212@alpina.com.co	Diagonal 16 # 85-30 Chinchiná	2009-09-29	3400000.00	13	1	3	1	CTA-0212
213	Yolanda	Martínez Acosta	1011581469	1975-09-27	Activo	3029600719	y.martinez213@alpina.com.co	Calle 74 # 19-8 Facatativá	2017-11-12	6100000.00	9	5	3	2	CTA-0213
214	Gladys	Quiroga Cifuentes	1129296876	1977-08-26	Activo	3224051509	g.quiroga214@alpina.com.co	Diagonal 66 # 34-22 Facatativá	2009-12-03	2700000.00	16	5	3	4	CTA-0214
215	Darwin	Cuervo Ariza	1183708591	1988-10-30	Activo	3028983760	d.cuervo215@alpina.com.co	Diagonal 77 # 5-69 Sopó	2010-03-08	3400000.00	13	3	1	1	CTA-0215
216	Milena	Díaz Lara	1115147071	1980-04-17	Activo	3152639417	m.diaz216@alpina.com.co	Tv 18 # 33-62 Barranquilla	2022-12-30	3400000.00	16	2	2	1	CTA-0216
217	Jimmy	Ospina Garzon	1140268433	1975-04-15	Activo	3136299951	j.ospina217@alpina.com.co	Tv 47 # 14-20 Facatativá	2016-08-28	2700000.00	13	5	5	3	CTA-0217
218	Leonor	Guzmán Montoya	1110925088	1994-10-07	Activo	3189116148	l.guzman218@alpina.com.co	Av 40 # 74-45 Barranquilla	2023-08-03	2800000.00	16	2	4	2	CTA-0218
219	Evelio	González Restrepo	1147794176	1997-07-18	Activo	3203696736	e.gonzalez219@alpina.com.co	Tv 1 # 12-19 Entrerríos	2023-05-12	2100000.00	13	4	5	4	CTA-0219
220	Sebastián	Serna González	1164810132	1999-06-08	Activo	3291964069	s.serna220@alpina.com.co	Cra 64 # 57-2 Barranquilla	2023-04-12	5100000.00	10	2	5	3	CTA-0220
221	Deisy	Cotes Ramírez	1042263757	1973-11-23	Suspendido	3157629401	d.cotes221@alpina.com.co	Tv 76 # 26-67 Entrerríos	2011-03-11	11700000.00	2	4	1	1	CTA-0221
222	Ariel	Berrio Parra	1154325348	1970-03-18	Activo	3182786185	a.berrio222@alpina.com.co	Diagonal 10 # 65-38 Sopó	2010-11-09	2700000.00	13	3	1	5	CTA-0222
223	Yanira	Becerra Acosta	1091176990	1990-08-01	Activo	3209086117	y.becerra223@alpina.com.co	Calle 34 # 9-49 Chinchiná	2023-11-14	3100000.00	14	1	2	2	CTA-0223
224	Silvia Janeth	Granados Blanco	1077118710	1974-03-04	Activo	3252275551	s.granados224@alpina.com.co	Diagonal 23 # 61-41 Entrerríos	2013-12-13	2700000.00	13	4	2	5	CTA-0224
225	Oscar	Granados Montoya	1061527428	1979-02-05	Activo	3253617171	o.granados225@alpina.com.co	Calle 16 # 11-87 Sopó	2023-09-23	5500000.00	20	3	4	5	CTA-0225
226	Jhon Fredy	Medina Garzon	1073748087	1992-01-07	Inactivo	3247675310	j.medina226@alpina.com.co	Cra 74 # 17-7 Chinchiná	2014-02-13	2000000.00	13	1	4	4	CTA-0226
227	Hernán	Porras Posada	1084731991	2000-12-01	Activo	3237365745	h.porras227@alpina.com.co	Diagonal 13 # 42-47 Sopó	2019-01-04	2700000.00	14	3	3	2	CTA-0227
228	Lina María	Valencia Mejía	1133887557	1989-01-06	Activo	3257124992	l.valencia228@alpina.com.co	Tv 36 # 58-24 Facatativá	2011-09-26	2900000.00	14	5	2	5	CTA-0228
229	Milena	Leal Alzate	1052630319	1976-07-17	Vacaciones	3071163448	m.leal229@alpina.com.co	Cra 54 # 64-18 Sopó	2022-12-11	5000000.00	18	3	5	5	CTA-0229
230	Marco Aurelio	Rueda Rincón	1057839068	1981-05-29	Activo	3076614605	m.rueda230@alpina.com.co	Av 47 # 47-72 Barranquilla	2015-09-09	1900000.00	14	2	3	3	CTA-0230
231	Norela	Pabón Cardona	1076399074	1985-12-06	Activo	3278498243	n.pabon231@alpina.com.co	Calle 49 # 79-37 Sopó	2012-04-17	2900000.00	13	3	2	2	CTA-0231
232	Walter	Palomino Bedoya	1085061355	1999-04-17	Vacaciones	3197634639	w.palomino232@alpina.com.co	Av 57 # 47-96 Chinchiná	2020-07-23	2500000.00	14	1	5	4	CTA-0232
233	Oscar	Rangel Cárdenas	1056524854	1977-06-27	Activo	3018938740	o.rangel233@alpina.com.co	Diagonal 7 # 4-99 Barranquilla	2013-11-27	2200000.00	13	2	5	1	CTA-0233
234	Luis Enrique	Hernández Poveda	1168169629	1975-09-03	Activo	3001589802	l.hernandez234@alpina.com.co	Av 42 # 61-60 Barranquilla	2007-12-12	5700000.00	18	2	5	3	CTA-0234
235	Rocío	Chaparro Arboleda	1140515171	1998-09-13	Activo	3159080774	r.chaparro235@alpina.com.co	Diagonal 30 # 12-57 Chinchiná	2023-11-15	2700000.00	13	1	3	4	CTA-0235
236	Lena	Palacio Arenas	1076977155	1991-01-18	Activo	3279003857	l.palacio236@alpina.com.co	Av 2 # 99-56 Barranquilla	2021-01-18	3700000.00	17	2	3	5	CTA-0236
237	Consuelo	Guzmán Blanco	1043827320	1998-12-23	Activo	3042328918	c.guzman237@alpina.com.co	Tv 31 # 67-98 Entrerríos	2021-05-07	3900000.00	17	4	5	3	CTA-0237
238	Consuelo	Palacio Carrillo	1029623556	1998-07-27	Activo	3149254323	c.palacio238@alpina.com.co	Cra 42 # 3-20 Sopó	2021-09-04	7500000.00	4	3	5	1	CTA-0238
239	Fanny	Peña Ospina	1024212069	1976-10-04	Activo	3058050508	f.pena239@alpina.com.co	Av 64 # 48-60 Barranquilla	2005-05-01	2300000.00	15	2	1	3	CTA-0239
240	Tobías	Henao Cruz	1067130195	1987-02-12	Activo	3037455837	t.henao240@alpina.com.co	Tv 32 # 95-5 Facatativá	2023-09-11	6100000.00	10	5	4	1	CTA-0240
241	Catalina	Restrepo Mora	1139835077	1975-06-25	Activo	3244334029	c.restrepo241@alpina.com.co	Av 7 # 86-28 Barranquilla	2010-09-07	8000000.00	7	2	2	4	CTA-0241
242	Constanza	Acosta Peña	1011272509	1996-01-25	Vacaciones	3193600333	c.acosta242@alpina.com.co	Av 12 # 32-21 Chinchiná	2022-11-08	2900000.00	13	1	1	5	CTA-0242
243	Luz Dary	Gutiérrez Duque	1130954326	1980-06-09	Activo	3258360481	l.gutierrez243@alpina.com.co	Cra 3 # 89-49 Entrerríos	2012-02-08	2000000.00	13	4	2	3	CTA-0243
244	Adriana	Suárez Castro	1050097230	1994-05-21	Activo	3275619177	a.suarez244@alpina.com.co	Diagonal 71 # 21-9 Chinchiná	2020-03-08	2800000.00	13	1	2	4	CTA-0244
245	Amparo	Alzate Mejía	1005025072	1997-10-19	Suspendido	3236380354	a.alzate245@alpina.com.co	Calle 69 # 50-25 Entrerríos	2019-11-18	2300000.00	13	4	4	5	CTA-0245
246	Sandra	Nieto Cuervo	1176869715	1972-12-28	Activo	3004390323	s.nieto246@alpina.com.co	Calle 63 # 25-13 Chinchiná	2005-12-25	9100000.00	3	1	5	4	CTA-0246
247	Augusto César	Patiño Herrera	1056032704	1999-06-01	Activo	3107055334	a.patino247@alpina.com.co	Diagonal 54 # 48-91 Barranquilla	2022-12-04	8600000.00	4	2	5	3	CTA-0247
248	Wilmar	Porras Nieto	1027172410	1980-05-12	Activo	3039828037	w.porras248@alpina.com.co	Cra 73 # 81-23 Entrerríos	2016-12-04	3000000.00	14	4	5	4	CTA-0248
249	Blanca Nubia	Londoño Vásquez	1048424826	1994-09-02	Activo	3129957363	b.londono249@alpina.com.co	Diagonal 57 # 46-41 Chinchiná	2021-09-04	2500000.00	14	1	3	3	CTA-0249
250	Gladys	Muñoz Mora	1199871228	1981-05-25	Activo	3161003282	g.munoz250@alpina.com.co	Calle 37 # 77-3 Sopó	2013-01-28	1900000.00	13	3	2	3	CTA-0250
251	Marco Aurelio	Chávez Castellanos	1137243394	1994-12-15	Activo	3076966913	m.chavez251@alpina.com.co	Cra 18 # 34-47 Chinchiná	2016-06-04	4700000.00	18	1	5	2	CTA-0251
252	Gladys	Salazar Gómez	1129529012	1977-10-03	Vacaciones	3292599943	g.salazar252@alpina.com.co	Diagonal 39 # 5-94 Chinchiná	2015-12-14	3200000.00	17	1	5	4	CTA-0252
253	Hernán	Palomino Peña	1170157773	1998-05-11	Activo	3181690923	h.palomino253@alpina.com.co	Av 70 # 73-20 Entrerríos	2020-08-24	2300000.00	13	4	5	2	CTA-0253
254	Amado	Carrillo Torres	1039731776	1975-12-06	Activo	3191827302	a.carrillo254@alpina.com.co	Diagonal 52 # 34-11 Facatativá	2012-07-16	2300000.00	13	5	5	4	CTA-0254
255	Michael	Forero Pinzón	1150637283	1997-08-19	Activo	3032201986	m.forero255@alpina.com.co	Av 56 # 42-88 Sopó	2023-11-18	5800000.00	20	3	5	1	CTA-0255
256	Israel	Sánchez López	1045434112	1985-09-08	Activo	3228389750	i.sanchez256@alpina.com.co	Calle 30 # 26-88 Entrerríos	2018-10-28	2200000.00	13	4	2	1	CTA-0256
257	Yurany	Urrego Herrera	1092146207	1974-12-29	Activo	3106567967	y.urrego257@alpina.com.co	Cra 69 # 28-27 Sopó	2011-11-05	2700000.00	14	3	5	3	CTA-0257
258	Nelly	Tabares Díaz	1068573540	1977-08-22	Activo	3095551347	n.tabares258@alpina.com.co	Calle 60 # 84-2 Chinchiná	2006-05-08	8100000.00	5	1	4	3	CTA-0258
259	Lorenzo	Gallón Morales	1084679567	1991-09-28	Activo	3024336572	l.gallon259@alpina.com.co	Diagonal 59 # 72-92 Entrerríos	2023-02-18	11600000.00	2	4	1	2	CTA-0259
260	Sofía Isabel	Arenas Zuluaga	1095396091	1998-01-17	Activo	3242040350	s.arenas260@alpina.com.co	Av 50 # 4-72 Barranquilla	2019-06-08	5900000.00	20	2	3	2	CTA-0260
261	Lorenzo	Cuervo Palomino	1112027064	1980-10-13	Activo	3146524481	l.cuervo261@alpina.com.co	Tv 70 # 17-27 Entrerríos	2017-11-07	3000000.00	15	4	2	5	CTA-0261
262	Consuelo	Salcedo Chaparro	1042425664	1984-03-29	Activo	3214089276	c.salcedo262@alpina.com.co	Av 19 # 94-4 Chinchiná	2006-07-10	3800000.00	16	1	3	4	CTA-0262
263	Ariel	Gutiérrez Galeano	1049592510	1971-03-06	Activo	3244874049	a.gutierrez263@alpina.com.co	Diagonal 30 # 30-88 Sopó	2022-02-06	9200000.00	3	3	3	1	CTA-0263
264	Milena	Mejía Acosta	1131921423	1991-04-04	Activo	3031540722	m.mejia264@alpina.com.co	Tv 2 # 35-53 Sopó	2012-05-04	4700000.00	10	3	2	2	CTA-0264
265	Tatiana	Posada Blanco	1114771104	1988-02-29	Activo	3266249548	t.posada265@alpina.com.co	Tv 79 # 96-74 Entrerríos	2023-07-27	2900000.00	14	4	5	5	CTA-0265
266	Paola Andrea	Acosta Porras	1144383149	1987-09-30	Activo	3269659168	p.acosta266@alpina.com.co	Calle 25 # 38-57 Chinchiná	2022-03-27	3300000.00	13	1	3	3	CTA-0266
267	Yessica	Rojas Salinas	1024277519	1992-06-16	Activo	3283270069	y.rojas267@alpina.com.co	Tv 53 # 42-58 Entrerríos	2012-12-29	8800000.00	3	4	2	4	CTA-0267
268	Michael	Rueda Ponce	1024478962	1975-02-14	Activo	3252431206	m.rueda268@alpina.com.co	Diagonal 50 # 94-66 Facatativá	2020-11-03	2700000.00	14	5	2	4	CTA-0268
269	Yanira	Bernal Rueda	1038817746	1978-01-09	Vacaciones	3066168426	y.bernal269@alpina.com.co	Av 58 # 37-81 Facatativá	2022-04-02	5100000.00	9	5	1	2	CTA-0269
270	Rosendo	Nieto Ospina	1163204442	1992-02-19	Activo	3278612468	r.nieto270@alpina.com.co	Tv 57 # 11-77 Sopó	2015-06-21	2700000.00	14	3	1	2	CTA-0270
271	Michael	Florez García	1039023646	1971-06-16	Activo	3246555122	m.florez271@alpina.com.co	Calle 7 # 14-54 Barranquilla	2019-12-18	6400000.00	9	2	2	3	CTA-0271
272	Cristina	Largo Vélez	1098937100	1986-12-31	Activo	3182089275	c.largo272@alpina.com.co	Av 61 # 18-16 Barranquilla	2023-05-26	3000000.00	15	2	3	3	CTA-0272
273	Verónica	Forero Lara	1023533667	1991-09-12	Vacaciones	3166309796	v.forero273@alpina.com.co	Av 68 # 74-80 Facatativá	2023-04-06	3400000.00	13	5	2	5	CTA-0273
274	Patricia	Carrillo Cruz	1000424374	1975-04-21	Activo	3214478434	p.carrillo274@alpina.com.co	Diagonal 54 # 53-6 Sopó	2005-07-16	2500000.00	13	3	3	5	CTA-0274
275	Julián	López Largo	1136013461	1994-09-03	Suspendido	3016591559	j.lopez275@alpina.com.co	Av 51 # 93-73 Facatativá	2019-12-09	2200000.00	14	5	1	2	CTA-0275
276	Ingrid	García Palacio	1129250471	1976-12-20	Activo	3258758960	i.garcia276@alpina.com.co	Tv 8 # 67-39 Barranquilla	2019-01-26	2700000.00	14	2	3	5	CTA-0276
277	Pilar	Zuluaga Torres	1040078731	1982-08-01	Activo	3169963616	p.zuluaga277@alpina.com.co	Cra 74 # 78-50 Chinchiná	2023-11-10	5400000.00	9	1	5	1	CTA-0277
278	Oscar	Montaño Salinas	1081236274	1979-09-12	Activo	3017278297	o.montano278@alpina.com.co	Calle 26 # 12-57 Sopó	2016-10-11	3500000.00	13	3	1	4	CTA-0278
279	Judith	Reyes Gómez	1038465470	1974-05-29	Activo	3224442468	j.reyes279@alpina.com.co	Calle 59 # 50-92 Entrerríos	2023-06-10	4000000.00	18	4	5	1	CTA-0279
280	Juan Pablo	Londoño Cuervo	1176894746	1984-01-07	Activo	3136383479	j.londono280@alpina.com.co	Cra 25 # 37-36 Barranquilla	2005-07-04	2200000.00	13	2	3	4	CTA-0280
281	Víctor	Herrera Orrego	1027481159	1979-04-08	Activo	3255547499	v.herrera281@alpina.com.co	Cra 37 # 74-32 Entrerríos	2017-03-03	6400000.00	9	4	1	3	CTA-0281
282	Johan	Mendoza Gutiérrez	1102971744	1972-05-31	Activo	3128479891	j.mendoza282@alpina.com.co	Diagonal 46 # 40-43 Facatativá	2006-12-07	3200000.00	17	5	2	5	CTA-0282
283	Adolfo	Montes Cifuentes	1062194941	1980-01-15	Activo	3157577959	a.montes283@alpina.com.co	Cra 43 # 42-59 Barranquilla	2008-03-23	3400000.00	13	2	1	1	CTA-0283
284	Karina	Florez Garzon	1034197066	1992-10-14	Activo	3216467186	k.florez284@alpina.com.co	Diagonal 10 # 39-69 Chinchiná	2013-02-03	3200000.00	13	1	4	5	CTA-0284
285	Nubia	Torres Molina	1055898500	1996-07-05	Activo	3254962012	n.torres285@alpina.com.co	Cra 10 # 95-92 Facatativá	2019-05-05	2800000.00	14	5	4	1	CTA-0285
286	Johanna	López Parra	1018685157	1996-11-01	Activo	3266492998	j.lopez286@alpina.com.co	Tv 8 # 12-28 Barranquilla	2016-01-20	5400000.00	17	2	2	5	CTA-0286
287	Wilson	Acosta Garzon	1120033537	1978-10-11	Activo	3146109503	w.acosta287@alpina.com.co	Tv 45 # 12-75 Barranquilla	2009-08-12	11200000.00	2	2	5	5	CTA-0287
288	Camila	Ramírez Herrera	1096433996	1974-12-03	Activo	3038242984	c.ramirez288@alpina.com.co	Diagonal 51 # 81-41 Chinchiná	2024-04-26	3700000.00	16	1	4	4	CTA-0288
289	Ariel	Nelly Serna	1096714043	1988-09-18	Activo	3223252801	a.nelly289@alpina.com.co	Calle 10 # 83-3 Chinchiná	2010-03-04	4900000.00	8	1	4	4	CTA-0289
290	Claudia	Vergara Henao	1121975556	1992-11-07	Activo	3166961066	c.vergara290@alpina.com.co	Cra 24 # 55-78 Chinchiná	2020-05-12	12300000.00	2	1	5	4	CTA-0290
291	Sebastián	Castro Becerra	1189215467	1986-07-14	Activo	3113383832	s.castro291@alpina.com.co	Diagonal 36 # 60-67 Entrerríos	2007-07-17	7200000.00	5	4	5	5	CTA-0291
292	Fernanda	Espitia Reyes	1164561435	1972-05-14	Activo	3078617439	f.espitia292@alpina.com.co	Diagonal 61 # 74-94 Chinchiná	2012-09-15	2800000.00	13	1	4	3	CTA-0292
293	Yanira	Causado Rincón	1168926446	1991-03-24	Activo	3205894806	y.causado293@alpina.com.co	Diagonal 4 # 37-63 Facatativá	2022-03-12	7200000.00	6	5	2	5	CTA-0293
294	Fabio	Herrera Arias	1162087110	1977-10-31	Vacaciones	3077203657	f.herrera294@alpina.com.co	Cra 34 # 90-31 Chinchiná	2018-04-10	2000000.00	13	1	2	5	CTA-0294
295	Diana Milena	Granados Serna	1063873528	1999-08-21	Vacaciones	3224537589	d.granados295@alpina.com.co	Diagonal 45 # 7-83 Barranquilla	2022-07-28	4300000.00	12	2	1	1	CTA-0295
296	Eder	Gallon Ospina	1101951999	2000-08-29	Activo	3129899342	e.gallon296@alpina.com.co	Tv 2 # 37-58 Barranquilla	2023-01-12	2000000.00	13	2	3	5	CTA-0296
297	Norela	Roa Taborda	1072565115	1981-12-24	Activo	3197562471	n.roa297@alpina.com.co	Tv 31 # 94-87 Sopó	2022-12-30	2400000.00	14	3	2	5	CTA-0297
298	Isabel	Jiménez Herrera	1110393751	1974-05-20	Activo	3276897466	i.jimenez298@alpina.com.co	Cra 37 # 33-25 Sopó	2016-10-12	7200000.00	3	3	1	5	CTA-0298
299	Pilar	Bermúdez Galeano	1100920574	1999-06-12	Activo	3014091420	p.bermudez299@alpina.com.co	Av 38 # 60-85 Chinchiná	2024-09-16	8400000.00	20	1	1	4	CTA-0299
300	Germán Alejo	Patiño Chávez	1016746984	1987-03-04	Activo	3045440339	g.patino300@alpina.com.co	Cra 57 # 9-63 Chinchiná	2013-11-20	6700000.00	20	1	2	5	CTA-0300
\.


--
-- TOC entry 3575 (class 0 OID 16646)
-- Dependencies: 237
-- Data for Name: inventario_materia_prima; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario_materia_prima (id_inventario_materia, stock_actual, stock_minimo, fecha_actualizacion, id_insumo, id_bodega) FROM stdin;
INV-MP-001	112500.00	36000.00	2026-01-07	MP-LAC-001	1
INV-MP-002	14400.00	4500.00	2026-01-15	MP-LAC-002	3
INV-MP-003	14820.00	4560.00	2026-01-23	MP-LAC-003	4
INV-MP-004	10120.00	1760.00	2026-02-04	MP-LAC-004	5
INV-MP-005	9540.00	1800.00	2026-02-11	MP-LAC-005	9
INV-MP-006	3000.00	1440.00	2026-02-19	MP-LAC-006	10
INV-MP-007	2880.00	720.00	2026-03-02	MP-LAC-007	11
INV-MP-008	2340.00	600.00	2026-03-14	MP-LAC-008	13
INV-MP-009	828.00	216.00	2026-03-27	MP-CUL-001	14
INV-MP-010	848.00	128.00	2026-04-03	MP-CUL-002	15
INV-MP-011	350.00	140.00	2026-04-18	MP-CUL-003	17
INV-MP-012	416.00	156.00	2026-04-26	MP-CUL-004	18
INV-MP-013	468.00	96.00	2026-05-05	MP-CUL-005	19
INV-MP-014	27600.00	6000.00	2026-05-17	MP-AZU-001	1
INV-MP-015	13250.00	3000.00	2026-05-29	MP-AZU-002	3
INV-MP-016	750.00	240.00	2026-06-08	MP-AZU-003	4
INV-MP-017	480.00	150.00	2026-06-21	MP-AZU-004	5
INV-MP-018	3120.00	960.00	2026-07-02	MP-AZU-005	9
INV-MP-019	6440.00	1120.00	2026-07-16	MP-EST-001	10
INV-MP-020	2915.00	550.00	2026-07-30	MP-EST-002	11
INV-MP-021	1000.00	480.00	2026-08-06	MP-EST-003	13
INV-MP-022	960.00	240.00	2026-08-19	MP-EST-004	14
INV-MP-023	858.00	220.00	2026-09-01	MP-EST-005	15
INV-MP-024	874.00	228.00	2026-09-13	MP-EST-006	17
INV-MP-025	6360.00	960.00	2026-09-28	MP-FRU-001	18
INV-MP-026	2500.00	1000.00	2026-10-07	MP-FRU-002	19
INV-MP-027	2720.00	1020.00	2026-10-18	MP-FRU-003	1
INV-MP-028	2730.00	560.00	2026-10-29	MP-FRU-004	3
INV-MP-029	2852.00	620.00	2026-11-04	MP-FRU-005	4
INV-MP-030	2915.00	660.00	2026-11-17	MP-FRU-006	5
INV-MP-031	1250.00	400.00	2026-11-26	MP-FRU-007	9
INV-MP-032	2400.00	750.00	2026-12-03	MP-FRU-008	10
INV-MP-033	780.00	240.00	2026-12-15	MP-SAB-001	11
INV-MP-034	1242.00	216.00	2026-12-28	MP-SAB-002	13
INV-MP-035	901.00	170.00	2026-01-10	MP-SAB-003	14
INV-MP-036	250.00	120.00	2026-02-08	MP-SAB-004	15
INV-MP-037	288.00	72.00	2026-03-11	MP-VIT-001	17
INV-MP-038	292.50	75.00	2026-04-09	MP-VIT-002	18
INV-MP-039	3680.00	960.00	2026-05-12	MP-VIT-003	19
INV-MP-040	318.00	48.00	2026-06-14	MP-VIT-004	1
INV-MP-041	6250.00	2500.00	2026-07-08	MP-CER-001	3
INV-MP-042	1760.00	660.00	2026-08-11	MP-CER-002	4
INV-MP-043	3900.00	800.00	2026-09-09	MP-CER-003	5
INV-MP-044	3910.00	850.00	2026-10-12	MP-CER-004	9
INV-MP-045	954000.00	216000.00	2026-11-09	MP-EMP-001	10
INV-MP-046	550000.00	176000.00	2026-12-11	MP-EMP-002	11
INV-MP-047	352000.00	110000.00	2026-03-21	MP-EMP-003	13
INV-MP-048	585000.00	180000.00	2026-05-24	MP-EMP-004	14
INV-MP-049	598000.00	104000.00	2026-08-24	MP-EMP-005	15
INV-MP-050	2014000.00	380000.00	2026-10-24	MP-EMP-006	17
\.


--
-- TOC entry 3561 (class 0 OID 16508)
-- Dependencies: 223
-- Data for Name: inventario_producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario_producto (id_bodega, id_producto, stock) FROM stdin;
5	ALP-LEC-002	920.00
10	ALP-LEC-003	780.00
4	ALP-LEC-004	730.00
5	ALP-LEC-005	640.00
10	ALP-LEC-006	1200.00
4	ALP-LEC-007	1150.00
5	ALP-BON-001	950.00
4	ALP-BON-003	870.00
5	ALP-BON-004	1100.00
10	ALP-BON-005	1400.00
4	ALP-YGY-001	1250.00
5	ALP-YGY-002	1180.00
10	ALP-YGY-003	1120.00
4	ALP-YGY-004	1090.00
5	ALP-YGY-005	980.00
10	ALP-YGY-006	760.00
4	ALP-YOX-001	740.00
5	ALP-YOX-002	520.00
10	ALP-YOX-003	610.00
4	ALP-YOX-004	890.00
5	ALP-YOG-001	910.00
10	ALP-YOG-002	860.00
4	ALP-YOG-003	700.00
5	ALP-YOG-004	1300.00
10	ALP-YOG-005	680.00
2	ALP-FIN-001	720.00
6	ALP-FIN-002	650.00
12	ALP-FIN-003	600.00
10	ALP-BON-002	979.00
4	ALP-LEC-001	846.00
\.


--
-- TOC entry 3570 (class 0 OID 16593)
-- Dependencies: 232
-- Data for Name: produccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produccion (id_produccion, fecha_produccion, cant_producida, lote, id_producto, id_sede, fecha_vencimiento) FROM stdin;
PROD-0001	2026-06-20	20866	L260620-001-001	ALP-LEC-001	3	2026-09-01
PROD-0002	2026-06-12	19380	L260612-001-002	ALP-LEC-001	3	2026-08-15
PROD-0003	2026-05-16	29772	L260516-001-003	ALP-LEC-001	5	2026-07-29
PROD-0004	2026-05-14	21901	L260514-001-004	ALP-LEC-001	5	2026-07-13
PROD-0005	2026-04-08	27029	L260408-001-005	ALP-LEC-001	3	2026-06-07
PROD-0006	2026-06-18	10816	L260618-002-006	ALP-LEC-002	3	2026-09-04
PROD-0007	2026-06-15	13943	L260615-002-007	ALP-LEC-002	3	2026-09-02
PROD-0008	2026-05-27	14040	L260527-002-008	ALP-LEC-002	3	2026-08-13
PROD-0009	2026-05-08	13150	L260508-002-009	ALP-LEC-002	3	2026-07-25
PROD-0010	2026-04-28	10910	L260428-002-010	ALP-LEC-002	4	2026-07-15
PROD-0011	2026-04-26	16742	L260426-003-011	ALP-LEC-003	4	2026-06-30
PROD-0012	2026-04-22	16520	L260422-003-012	ALP-LEC-003	3	2026-07-01
PROD-0013	2026-04-08	9348	L260408-003-013	ALP-LEC-003	3	2026-06-13
PROD-0014	2026-04-01	17306	L260401-003-014	ALP-LEC-003	3	2026-06-03
PROD-0015	2026-03-28	12597	L260328-003-015	ALP-LEC-003	3	2026-06-04
PROD-0016	2026-06-09	15450	L260609-004-016	ALP-LEC-004	3	2026-08-25
PROD-0017	2026-05-17	10449	L260517-004-017	ALP-LEC-004	3	2026-08-02
PROD-0018	2026-05-11	9956	L260511-004-018	ALP-LEC-004	3	2026-07-13
PROD-0019	2026-05-06	16937	L260506-004-019	ALP-LEC-004	3	2026-07-20
PROD-0020	2026-04-08	17710	L260408-004-020	ALP-LEC-004	3	2026-06-11
PROD-0021	2026-06-18	8222	L260618-005-021	ALP-LEC-005	3	2026-08-13
PROD-0022	2026-06-10	10629	L260610-005-022	ALP-LEC-005	4	2026-08-04
PROD-0023	2026-06-01	11594	L260601-005-023	ALP-LEC-005	3	2026-07-26
PROD-0024	2026-05-04	8646	L260504-005-024	ALP-LEC-005	3	2026-06-29
PROD-0025	2026-04-26	11457	L260426-005-025	ALP-LEC-005	3	2026-06-22
PROD-0026	2026-06-18	13221	L260618-006-026	ALP-LEC-006	4	2026-09-24
PROD-0027	2026-06-13	14843	L260613-006-027	ALP-LEC-006	4	2026-10-05
PROD-0028	2026-05-29	18907	L260529-006-028	ALP-LEC-006	3	2026-09-02
PROD-0029	2026-05-05	14146	L260505-006-029	ALP-LEC-006	4	2026-08-20
PROD-0030	2026-04-21	10192	L260421-006-030	ALP-LEC-006	4	2026-07-23
PROD-0031	2026-06-01	16760	L260601-007-031	ALP-LEC-007	4	2026-09-27
PROD-0032	2026-05-10	13906	L260510-007-032	ALP-LEC-007	4	2026-08-10
PROD-0033	2026-04-30	16711	L260430-007-033	ALP-LEC-007	4	2026-08-15
PROD-0034	2026-04-27	19127	L260427-007-034	ALP-LEC-007	4	2026-08-04
PROD-0035	2026-03-30	14667	L260330-007-035	ALP-LEC-007	4	2026-07-17
PROD-0036	2026-06-19	9526	L260619-001-036	ALP-BON-001	1	2026-07-27
PROD-0037	2026-06-09	8767	L260609-001-037	ALP-BON-001	3	2026-07-12
PROD-0038	2026-06-05	6930	L260605-001-038	ALP-BON-001	1	2026-07-13
PROD-0039	2026-05-11	13844	L260511-001-039	ALP-BON-001	1	2026-06-13
PROD-0040	2026-04-03	11884	L260403-001-040	ALP-BON-001	1	2026-05-10
PROD-0041	2026-06-22	9291	L260622-002-041	ALP-BON-002	1	2026-07-24
PROD-0042	2026-06-19	6247	L260619-002-042	ALP-BON-002	1	2026-07-22
PROD-0043	2026-05-19	12109	L260519-002-043	ALP-BON-002	1	2026-06-20
PROD-0044	2026-05-10	9440	L260510-002-044	ALP-BON-002	1	2026-06-15
PROD-0045	2026-05-05	11644	L260505-002-045	ALP-BON-002	1	2026-06-08
PROD-0046	2026-05-31	6707	L260531-003-046	ALP-BON-003	1	2026-07-04
PROD-0047	2026-04-16	13073	L260416-003-047	ALP-BON-003	1	2026-05-19
PROD-0048	2026-04-15	6146	L260415-003-048	ALP-BON-003	1	2026-05-22
PROD-0049	2026-04-14	9373	L260414-003-049	ALP-BON-003	1	2026-05-24
PROD-0050	2026-04-12	9337	L260412-003-050	ALP-BON-003	1	2026-05-16
PROD-0051	2026-06-02	12192	L260602-004-051	ALP-BON-004	3	2026-07-08
PROD-0052	2026-05-18	10413	L260518-004-052	ALP-BON-004	1	2026-06-25
PROD-0053	2026-05-15	9145	L260515-004-053	ALP-BON-004	1	2026-06-18
PROD-0054	2026-05-10	12981	L260510-004-054	ALP-BON-004	1	2026-06-12
PROD-0055	2026-05-09	6904	L260509-004-055	ALP-BON-004	1	2026-06-10
PROD-0056	2026-06-07	8123	L260607-005-056	ALP-BON-005	3	2026-07-14
PROD-0057	2026-05-18	10619	L260518-005-057	ALP-BON-005	1	2026-06-18
PROD-0058	2026-04-24	9332	L260424-005-058	ALP-BON-005	1	2026-06-03
PROD-0059	2026-04-11	8967	L260411-005-059	ALP-BON-005	1	2026-05-12
PROD-0060	2026-04-04	7477	L260404-005-060	ALP-BON-005	3	2026-05-13
PROD-0061	2026-05-07	11117	L260507-001-061	ALP-YGY-001	1	2026-06-08
PROD-0062	2026-05-03	13469	L260503-001-062	ALP-YGY-001	3	2026-06-02
PROD-0063	2026-04-18	7114	L260418-001-063	ALP-YGY-001	1	2026-05-18
PROD-0064	2026-04-05	8412	L260405-001-064	ALP-YGY-001	1	2026-05-05
PROD-0065	2026-03-28	8416	L260328-001-065	ALP-YGY-001	1	2026-05-02
PROD-0066	2026-06-17	7098	L260617-002-066	ALP-YGY-002	1	2026-07-16
PROD-0067	2026-06-16	7688	L260616-002-067	ALP-YGY-002	3	2026-07-19
PROD-0068	2026-04-11	12205	L260411-002-068	ALP-YGY-002	1	2026-05-15
PROD-0069	2026-04-08	13037	L260408-002-069	ALP-YGY-002	1	2026-05-09
PROD-0070	2026-04-06	10355	L260406-002-070	ALP-YGY-002	1	2026-05-10
PROD-0071	2026-05-25	12340	L260525-003-071	ALP-YGY-003	1	2026-06-24
PROD-0072	2026-05-14	6323	L260514-003-072	ALP-YGY-003	1	2026-06-15
PROD-0073	2026-04-25	11932	L260425-003-073	ALP-YGY-003	1	2026-05-30
PROD-0074	2026-04-12	10383	L260412-003-074	ALP-YGY-003	1	2026-05-13
PROD-0075	2026-03-31	9332	L260331-003-075	ALP-YGY-003	1	2026-04-30
PROD-0076	2026-06-17	9394	L260617-004-076	ALP-YGY-004	1	2026-07-17
PROD-0077	2026-06-15	8582	L260615-004-077	ALP-YGY-004	1	2026-07-18
PROD-0078	2026-05-13	9649	L260513-004-078	ALP-YGY-004	1	2026-06-10
PROD-0079	2026-04-29	9009	L260429-004-079	ALP-YGY-004	1	2026-05-29
PROD-0080	2026-04-23	10394	L260423-004-080	ALP-YGY-004	1	2026-05-28
PROD-0081	2026-05-30	11414	L260530-005-081	ALP-YGY-005	1	2026-07-04
PROD-0082	2026-04-29	9738	L260429-005-082	ALP-YGY-005	1	2026-06-02
PROD-0083	2026-04-06	9133	L260406-005-083	ALP-YGY-005	1	2026-05-04
PROD-0084	2026-04-04	9451	L260404-005-084	ALP-YGY-005	3	2026-05-06
PROD-0085	2026-04-03	13725	L260403-005-085	ALP-YGY-005	1	2026-05-07
PROD-0086	2026-06-04	12648	L260604-006-086	ALP-YGY-006	1	2026-07-03
PROD-0087	2026-06-01	6993	L260601-006-087	ALP-YGY-006	1	2026-07-06
PROD-0088	2026-05-19	11623	L260519-006-088	ALP-YGY-006	1	2026-06-17
PROD-0089	2026-04-06	12542	L260406-006-089	ALP-YGY-006	1	2026-05-06
PROD-0090	2026-03-29	12145	L260329-006-090	ALP-YGY-006	3	2026-04-30
PROD-0091	2026-05-27	6557	L260527-001-091	ALP-YOX-001	1	2026-06-24
PROD-0092	2026-04-17	7525	L260417-001-092	ALP-YOX-001	1	2026-05-16
PROD-0093	2026-04-15	8439	L260415-001-093	ALP-YOX-001	1	2026-05-17
PROD-0094	2026-04-06	4182	L260406-001-094	ALP-YOX-001	1	2026-05-05
PROD-0095	2026-04-01	8667	L260401-001-095	ALP-YOX-001	1	2026-04-29
PROD-0096	2026-06-14	6543	L260614-002-096	ALP-YOX-002	1	2026-07-19
PROD-0097	2026-06-05	4665	L260605-002-097	ALP-YOX-002	5	2026-07-04
PROD-0098	2026-06-03	4289	L260603-002-098	ALP-YOX-002	1	2026-06-28
PROD-0099	2026-04-12	8461	L260412-002-099	ALP-YOX-002	1	2026-05-15
PROD-0100	2026-03-26	4056	L260326-002-100	ALP-YOX-002	1	2026-04-29
PROD-0101	2026-06-13	8003	L260613-003-101	ALP-YOX-003	1	2026-07-10
PROD-0102	2026-06-06	5165	L260606-003-102	ALP-YOX-003	1	2026-07-01
PROD-0103	2026-05-28	4000	L260528-003-103	ALP-YOX-003	1	2026-06-26
PROD-0104	2026-03-30	4373	L260330-003-104	ALP-YOX-003	1	2026-05-03
PROD-0105	2026-03-28	7451	L260328-003-105	ALP-YOX-003	1	2026-05-01
PROD-0106	2026-06-20	8782	L260620-004-106	ALP-YOX-004	1	2026-07-15
PROD-0107	2026-06-17	7394	L260617-004-107	ALP-YOX-004	1	2026-07-20
PROD-0108	2026-06-05	4670	L260605-004-108	ALP-YOX-004	1	2026-06-30
PROD-0109	2026-06-04	4282	L260604-004-109	ALP-YOX-004	1	2026-07-06
PROD-0110	2026-04-02	4941	L260402-004-110	ALP-YOX-004	1	2026-04-29
PROD-0111	2026-06-05	10505	L260605-001-111	ALP-YOG-001	1	2026-07-08
PROD-0112	2026-06-04	11278	L260604-001-112	ALP-YOG-001	1	2026-07-10
PROD-0113	2026-06-02	9180	L260602-001-113	ALP-YOG-001	1	2026-07-08
PROD-0114	2026-04-09	12883	L260409-001-114	ALP-YOG-001	1	2026-05-12
PROD-0115	2026-03-29	9930	L260329-001-115	ALP-YOG-001	5	2026-05-02
PROD-0116	2026-06-14	7812	L260614-002-116	ALP-YOG-002	1	2026-07-24
PROD-0117	2026-05-27	10764	L260527-002-117	ALP-YOG-002	5	2026-07-03
PROD-0118	2026-05-05	9746	L260505-002-118	ALP-YOG-002	5	2026-06-10
PROD-0119	2026-04-19	14972	L260419-002-119	ALP-YOG-002	1	2026-05-20
PROD-0120	2026-03-28	13030	L260328-002-120	ALP-YOG-002	1	2026-04-30
PROD-0121	2026-06-14	4829	L260614-003-121	ALP-YOG-003	1	2026-07-09
PROD-0122	2026-06-03	4430	L260603-003-122	ALP-YOG-003	5	2026-06-28
PROD-0123	2026-05-06	6191	L260506-003-123	ALP-YOG-003	1	2026-06-03
PROD-0124	2026-04-12	3378	L260412-003-124	ALP-YOG-003	1	2026-05-17
PROD-0125	2026-04-02	6234	L260402-003-125	ALP-YOG-003	1	2026-05-03
PROD-0126	2026-06-09	3068	L260609-004-126	ALP-YOG-004	1	2026-07-10
PROD-0127	2026-05-05	5657	L260505-004-127	ALP-YOG-004	1	2026-06-01
PROD-0128	2026-05-02	5838	L260502-004-128	ALP-YOG-004	5	2026-05-28
PROD-0129	2026-04-15	6878	L260415-004-129	ALP-YOG-004	5	2026-05-12
PROD-0130	2026-03-29	6788	L260329-004-130	ALP-YOG-004	1	2026-04-29
PROD-0131	2026-06-06	8893	L260606-005-131	ALP-YOG-005	1	2026-07-24
PROD-0132	2026-06-04	8666	L260604-005-132	ALP-YOG-005	1	2026-08-03
PROD-0133	2026-05-15	8193	L260515-005-133	ALP-YOG-005	1	2026-07-13
PROD-0134	2026-05-01	5456	L260501-005-134	ALP-YOG-005	1	2026-06-22
PROD-0135	2026-04-16	6777	L260416-005-135	ALP-YOG-005	1	2026-06-14
PROD-0136	2026-06-21	4964	L260621-001-136	ALP-FIN-001	5	2026-07-17
PROD-0137	2026-06-03	3223	L260603-001-137	ALP-FIN-001	5	2026-07-03
PROD-0138	2026-05-15	3323	L260515-001-138	ALP-FIN-001	5	2026-06-15
PROD-0139	2026-05-10	5497	L260510-001-139	ALP-FIN-001	1	2026-06-08
PROD-0140	2026-04-13	4495	L260413-001-140	ALP-FIN-001	5	2026-05-17
PROD-0141	2026-06-11	3823	L260611-002-141	ALP-FIN-002	5	2026-07-29
PROD-0142	2026-05-22	5202	L260522-002-142	ALP-FIN-002	5	2026-07-07
PROD-0143	2026-04-29	4316	L260429-002-143	ALP-FIN-002	5	2026-06-12
PROD-0144	2026-04-06	5225	L260406-002-144	ALP-FIN-002	5	2026-05-29
PROD-0145	2026-04-03	3210	L260403-002-145	ALP-FIN-002	5	2026-05-20
PROD-0146	2026-06-14	2475	L260614-003-146	ALP-FIN-003	1	2026-07-09
PROD-0147	2026-06-08	2514	L260608-003-147	ALP-FIN-003	5	2026-07-09
PROD-0148	2026-05-13	3362	L260513-003-148	ALP-FIN-003	1	2026-06-12
PROD-0149	2026-05-05	3867	L260505-003-149	ALP-FIN-003	5	2026-06-03
PROD-0150	2026-04-08	4315	L260408-003-150	ALP-FIN-003	5	2026-05-12
\.


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 219
-- Name: bodega_id_bodega_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bodega_id_bodega_seq', 20, true);


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 228
-- Name: cargo_id_cargo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cargo_id_cargo_seq', 20, true);


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 247
-- Name: detalle_info_nutricional_id_detalle_nutricional_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_info_nutricional_id_detalle_nutricional_seq', 450, true);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 230
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 300, true);


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 224
-- Name: eps_id_eps_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.eps_id_eps_seq', 5, true);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 239
-- Name: factura_id_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factura_id_factura_seq', 1002, true);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 226
-- Name: fondo_pensiones_id_fondo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fondo_pensiones_id_fondo_seq', 5, true);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 249
-- Name: iva_id_iva_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.iva_id_iva_seq', 4, true);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 215
-- Name: marca_producto_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marca_producto_id_marca_seq', 6, true);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 244
-- Name: nutriente_id_nutriente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nutriente_id_nutriente_seq', 15, true);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 234
-- Name: orden_pedido_num_orden_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orden_pedido_num_orden_seq', 20, true);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 217
-- Name: sede_id_sede_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sede_id_sede_seq', 1, false);


-- Completed on 2026-07-13 20:06:52

--
-- PostgreSQL database dump complete
--

\unrestrict 9wabWxcHBNea4XkFQ8jyW8euJgRq2U4NGmFVgWsEreROtHCDPOy7sGno0StnXko

