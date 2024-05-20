--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Ubuntu 16.2-1ubuntu4)
-- Dumped by pg_dump version 16.2 (Ubuntu 16.2-1ubuntu4)

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
-- Name: enum_Domicilios_tipoTelefono; Type: TYPE; Schema: public; Owner: tiago
--

CREATE TYPE public."enum_Domicilios_tipoTelefono" AS ENUM (
    'Fijo',
    'Celular',
    'NULL'
);


ALTER TYPE public."enum_Domicilios_tipoTelefono" OWNER TO tiago;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ActividadesIngresadas; Type: TABLE; Schema: public; Owner: tiago
--

CREATE TABLE public."ActividadesIngresadas" (
    id integer NOT NULL,
    "operacionId" integer,
    "actividadId" integer,
    principal integer
);


ALTER TABLE public."ActividadesIngresadas" OWNER TO tiago;

--
-- Name: ActividadesIngresadas_id_seq; Type: SEQUENCE; Schema: public; Owner: tiago
--

CREATE SEQUENCE public."ActividadesIngresadas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ActividadesIngresadas_id_seq" OWNER TO tiago;

--
-- Name: ActividadesIngresadas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tiago
--

ALTER SEQUENCE public."ActividadesIngresadas_id_seq" OWNED BY public."ActividadesIngresadas".id;


--
-- Name: CondicionTributaria; Type: TABLE; Schema: public; Owner: tiago
--

CREATE TABLE public."CondicionTributaria" (
    id integer NOT NULL,
    condicion character varying(255)
);


ALTER TABLE public."CondicionTributaria" OWNER TO tiago;

--
-- Name: CondicionTributaria_id_seq; Type: SEQUENCE; Schema: public; Owner: tiago
--

CREATE SEQUENCE public."CondicionTributaria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."CondicionTributaria_id_seq" OWNER TO tiago;

--
-- Name: CondicionTributaria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tiago
--

ALTER SEQUENCE public."CondicionTributaria_id_seq" OWNED BY public."CondicionTributaria".id;


--
-- Name: Domicilios; Type: TABLE; Schema: public; Owner: tiago
--

CREATE TABLE public."Domicilios" (
    id integer NOT NULL,
    cuit bigint,
    "cuitRepresentado" bigint,
    partida integer,
    domicilio character varying(255),
    "superficieAfectada" integer,
    "nroHabilitacion" integer,
    "fechaInicio" character varying(255),
    "fechaCese" character varying(255),
    "fechaOperacion" timestamp with time zone,
    movimiento character varying(255),
    "noAplica" integer,
    "deletedAt" timestamp with time zone,
    "tipoDomicilio" character varying(255) DEFAULT NULL::character varying,
    telefono integer,
    "tipoTelefono" public."enum_Domicilios_tipoTelefono",
    "noCorrespondeHabilitacion" integer DEFAULT 0,
    "habilitacionEnTramite" integer DEFAULT 0,
    "condicionId" integer
);


ALTER TABLE public."Domicilios" OWNER TO tiago;

--
-- Name: Domicilios_id_seq; Type: SEQUENCE; Schema: public; Owner: tiago
--

CREATE SEQUENCE public."Domicilios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Domicilios_id_seq" OWNER TO tiago;

--
-- Name: Domicilios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tiago
--

ALTER SEQUENCE public."Domicilios_id_seq" OWNED BY public."Domicilios".id;


--
-- Name: Observaciones; Type: TABLE; Schema: public; Owner: tiago
--

CREATE TABLE public."Observaciones" (
    id integer NOT NULL,
    "operacionId" integer,
    observacion character varying(255)
);


ALTER TABLE public."Observaciones" OWNER TO tiago;

--
-- Name: Observaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: tiago
--

CREATE SEQUENCE public."Observaciones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Observaciones_id_seq" OWNER TO tiago;

--
-- Name: Observaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tiago
--

ALTER SEQUENCE public."Observaciones_id_seq" OWNED BY public."Observaciones".id;


--
-- Name: TiposDeCaracteres; Type: TABLE; Schema: public; Owner: tiago
--

CREATE TABLE public."TiposDeCaracteres" (
    id integer NOT NULL,
    caracter character varying(255)
);


ALTER TABLE public."TiposDeCaracteres" OWNER TO tiago;

--
-- Name: TiposDeCaracteres_id_seq; Type: SEQUENCE; Schema: public; Owner: tiago
--

CREATE SEQUENCE public."TiposDeCaracteres_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."TiposDeCaracteres_id_seq" OWNER TO tiago;

--
-- Name: TiposDeCaracteres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tiago
--

ALTER SEQUENCE public."TiposDeCaracteres_id_seq" OWNED BY public."TiposDeCaracteres".id;


--
-- Name: TitularesIngresados; Type: TABLE; Schema: public; Owner: tiago
--

CREATE TABLE public."TitularesIngresados" (
    id integer NOT NULL,
    "operacionId" integer,
    "caracterId" integer,
    "cuitTitular" bigint,
    "razonSocial" character varying(255)
);


ALTER TABLE public."TitularesIngresados" OWNER TO tiago;

--
-- Name: TitularesIngresados_id_seq; Type: SEQUENCE; Schema: public; Owner: tiago
--

CREATE SEQUENCE public."TitularesIngresados_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."TitularesIngresados_id_seq" OWNER TO tiago;

--
-- Name: TitularesIngresados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tiago
--

ALTER SEQUENCE public."TitularesIngresados_id_seq" OWNED BY public."TitularesIngresados".id;


--
-- Name: TodasActividades; Type: TABLE; Schema: public; Owner: tiago
--

CREATE TABLE public."TodasActividades" (
    id integer NOT NULL,
    codigo integer,
    descripcion character varying(255),
    activo character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public."TodasActividades" OWNER TO tiago;

--
-- Name: TodasActividades_id_seq; Type: SEQUENCE; Schema: public; Owner: tiago
--

CREATE SEQUENCE public."TodasActividades_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."TodasActividades_id_seq" OWNER TO tiago;

--
-- Name: TodasActividades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tiago
--

ALTER SEQUENCE public."TodasActividades_id_seq" OWNED BY public."TodasActividades".id;


--
-- Name: ActividadesIngresadas id; Type: DEFAULT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."ActividadesIngresadas" ALTER COLUMN id SET DEFAULT nextval('public."ActividadesIngresadas_id_seq"'::regclass);


--
-- Name: CondicionTributaria id; Type: DEFAULT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."CondicionTributaria" ALTER COLUMN id SET DEFAULT nextval('public."CondicionTributaria_id_seq"'::regclass);


--
-- Name: Domicilios id; Type: DEFAULT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."Domicilios" ALTER COLUMN id SET DEFAULT nextval('public."Domicilios_id_seq"'::regclass);


--
-- Name: Observaciones id; Type: DEFAULT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."Observaciones" ALTER COLUMN id SET DEFAULT nextval('public."Observaciones_id_seq"'::regclass);


--
-- Name: TiposDeCaracteres id; Type: DEFAULT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TiposDeCaracteres" ALTER COLUMN id SET DEFAULT nextval('public."TiposDeCaracteres_id_seq"'::regclass);


--
-- Name: TitularesIngresados id; Type: DEFAULT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TitularesIngresados" ALTER COLUMN id SET DEFAULT nextval('public."TitularesIngresados_id_seq"'::regclass);


--
-- Name: TodasActividades id; Type: DEFAULT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TodasActividades" ALTER COLUMN id SET DEFAULT nextval('public."TodasActividades_id_seq"'::regclass);


--
-- Data for Name: ActividadesIngresadas; Type: TABLE DATA; Schema: public; Owner: tiago
--

COPY public."ActividadesIngresadas" (id, "operacionId", "actividadId", principal) FROM stdin;
1	1	1	1
2	2	2	0
3	3	3	1
4	4	4	1
5	5	5	1
6	6	6	1
7	7	7	0
8	8	8	1
9	9	9	1
10	10	10	1
11	11	11	1
12	12	12	1
13	13	13	1
14	14	14	0
15	15	15	1
16	16	16	1
17	17	17	1
18	18	18	1
19	19	19	0
\.


--
-- Data for Name: CondicionTributaria; Type: TABLE DATA; Schema: public; Owner: tiago
--

COPY public."CondicionTributaria" (id, condicion) FROM stdin;
1	Ingresos Brutos Locales
2	Convenio Multilateral
3	Regimen Simplificado
4	Exento de pleno derecho - no inscripto
\.


--
-- Data for Name: Domicilios; Type: TABLE DATA; Schema: public; Owner: tiago
--

COPY public."Domicilios" (id, cuit, "cuitRepresentado", partida, domicilio, "superficieAfectada", "nroHabilitacion", "fechaInicio", "fechaCese", "fechaOperacion", movimiento, "noAplica", "deletedAt", "tipoDomicilio", telefono, "tipoTelefono", "noCorrespondeHabilitacion", "habilitacionEnTramite", "condicionId") FROM stdin;
6	20932332532	20932332532	7539568	TTE GRAL JUAN DOMINGO PERON 749	258	\N	01/08/2016	\N	2021-05-22 10:46:36.619451-03	INSERT	0	\N	\N	1144887799	Celular	1	0	1
7	20174441899	20174441899	6549823	GRAL HORNOS 456	\N	\N	14/04/2014	\N	2021-05-22 10:46:57.460993-03	INSERT	0	\N	\N	46669999	Celular	1	0	4
8	20216244010	30693040333	\N	GRAL RODRIGUEZ 1236	\N	\N	\N	\N	2021-05-22 10:48:07.688225-03	INSERT	1	\N	Fiscal	45553333	Fijo	1	0	2
9	27940334255	27940334255	1478956	INCLAN 2365	\N	\N	01/01/2014	\N	2021-05-22 10:50:25.236063-03	INSERT	0	\N	\N	58889999	Celular	1	0	2
10	20214412676	30709177164	\N	URUGUAY 745	\N	\N	\N	\N	2021-05-22 10:52:36.82705-03	INSERT	1	\N	Fiscal	78889999	Fijo	1	0	2
11	20167656553	20167656553	\N	Anchorena 3659	\N	\N	\N	\N	2021-05-22 10:55:11.896417-03	INSERT	1	\N	Fiscal	\N	\N	1	0	1
12	20149581848	20149581848	2583697	MARIO BRAVO 654	86	753286	01/10/2019	\N	2021-05-22 10:57:40.319945-03	INSERT	0	\N	\N	36666888	Fijo	0	0	1
13	20234804457	20234804457	\N	JULIAN ALVAREZ 1478	\N	\N	\N	\N	2021-05-22 10:57:45.552084-03	INSERT	1	\N	Fiscal	57771111	Celular	1	0	1
14	20132834513	30691144433	\N	PARANA 321	\N	\N	\N	\N	2021-05-22 10:58:40.362276-03	INSERT	1	\N	Fiscal	29996666	Fijo	1	0	2
15	20235674808	20235674808	\N	PALESTINA 1256	\N	\N	\N	\N	2021-05-22 11:01:36.100753-03	INSERT	1	\N	Fiscal	37772222	Fijo	1	0	2
16	20393224496	20393224496	\N	BOYACA 897	\N	\N	\N	\N	2021-05-22 11:02:22.045166-03	INSERT	1	\N	Fiscal	64444999	Fijo	1	0	1
17	20140145522	20140145522	\N	Av ¨Pueyrredón 4569	\N	\N	\N	\N	2021-05-22 11:02:46.372485-03	INSERT	1	\N	Fiscal	\N	\N	1	0	1
18	20936822542	20936822542	7418526	PERDRIEL 789	963	49632	01/11/2008	\N	2021-05-22 11:03:04.305243-03	INSERT	0	\N	\N	21113333	Fijo	0	0	1
19	20173111925	30711428654	\N	PARANA 471	\N	\N	\N	\N	2021-05-22 11:05:49.047189-03	INSERT	1	\N	Fiscal	12223333	Fijo	1	0	2
5	27184226338	27184226338	3216548	MARIO BRAVO 639	47	456921	04/03/2015	\N	2021-05-22 10:45:48.416161-03	INSERT	0	\N	\N	57778888	Fijo	0	0	3
20	95291230123	95291230123	\N	Waldemar Silveira 818	\N	\N	\N	\N	2024-05-19 10:45:48.416-03	\N	\N	\N	\N	1127050682	Celular	0	0	\N
1	20109641864	30707893784	1234567	Avenida corriente 447	456	159753	01/02/1998	\N	2021-05-22 10:32:18.260443-03	INSERT	0	\N	\N	42016598	Fijo	0	0	1
2	20128883550	30604710827	\N	Tte Gral Juan D Peron 5879	\N	\N	\N	\N	2021-05-22 10:34:42.07488-03	INSERT	1	\N	Fiscal	1144778899	Fijo	1	0	2
3	20330797429	20330797429	\N	Francisco Bilbao 789	\N	\N	\N	\N	2021-05-22 10:37:01.965803-03	INSERT	1	\N	Fiscal	1155669988	Celular	1	0	3
4	20120849620	30711817154	\N	PARANA 471	\N	\N	01/02/1998	\N	2021-05-22 10:40:36.08742-03	INSERT	1	\N	Fiscal	42223333	Fijo	1	0	2
\.


--
-- Data for Name: Observaciones; Type: TABLE DATA; Schema: public; Owner: tiago
--

COPY public."Observaciones" (id, "operacionId", observacion) FROM stdin;
1	1	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
2	2	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
3	3	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
4	4	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
5	5	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
6	6	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
7	7	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
8	8	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
9	9	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
10	10	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
11	11	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
12	12	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
13	13	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
14	14	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
15	15	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
16	16	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
17	17	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
18	18	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
19	19	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
20	20	XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
\.


--
-- Data for Name: TiposDeCaracteres; Type: TABLE DATA; Schema: public; Owner: tiago
--

COPY public."TiposDeCaracteres" (id, caracter) FROM stdin;
1	Locación
2	Dominio
3	Usufructo
4	Concesión
5	Uso o Tenencia precaria
\.


--
-- Data for Name: TitularesIngresados; Type: TABLE DATA; Schema: public; Owner: tiago
--

COPY public."TitularesIngresados" (id, "operacionId", "caracterId", "cuitTitular", "razonSocial") FROM stdin;
1	1	2	30707893784	AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
2	2	1	30604710827	BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
3	3	2	20330797429	CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
4	4	5	30711817154	VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
5	5	5	27184226338	VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
6	6	1	20932332532	QQQQQQQQQQQQQQQQQQQQQQQQQQQQQ
7	7	1	20174441899	WWWWWWWWWWWWWWWWWWWWWW
8	8	5	30693040333	EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
9	9	2	27940334255	RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
10	10	2	30709177164	TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
11	11	2	20167656553	YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
12	12	2	20149581848	UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
13	13	2	20234804457	OOOOOOOOOOOOOOOOOOOOOOOOOOOO
14	14	2	30691144433	PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP
15	15	2	20235674808	LLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL
16	16	2	20393224496	IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
17	17	2	20140145522	HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
18	18	3	20936822542	NNNNNNNNNNNNNNNNNNNNNNNNNNNN
19	19	2	30711428654	MMMMMMMMMMMMMMMMMMMMMMM
\.


--
-- Data for Name: TodasActividades; Type: TABLE DATA; Schema: public; Owner: tiago
--

COPY public."TodasActividades" (id, codigo, descripcion, activo) FROM stdin;
1	2095	ACTIVIDADES NO CLASIFICADAS ANTERIORES A NAPIB	\N
2	691	ACTIVIDADES NO NAPIB DE CM OTRAS SEDES	\N
3	266	Cultivo de trigo, excepto forrajero y el de semilla para siembra	\N
4	490	Cultivo de maiz, excepto forrajero y el de semilla para siembra	\N
5	1907	Cultivo de cereales n.c.p., excepto los forrajeros y las semillas	\N
6	1041	Cultivo de soja, excepto el de semillas para siembra 	\N
7	1159	Cultivo de girasol, excepto el de semillas para siembra	\N
8	717	Cultivo de oleaginosas n.c.p. excepto el de semillas para siembra	\N
10	622	Cultivo de manzana y pera 	\N
11	926	Cultivo de vid para vinificar 	\N
12	1349	Produccion de semillas hibridas de cereales y oleaginosas 	\N
9	3000	Cultivo de pastos forrajeros	\N
13	3001	Cria de ganado bovino -excepto en caba?as y para la produccion de leche-   	\N
14	3002	Invernada de ganado excepto el engorde en corrales (Fed-Lot)  	\N
15	3003	Cria de ganado porcino, excepto en caba?as  	\N
16	3004	Produccion de leche de ganado bovino 	\N
17	3005	Cria de ganado n.c.p.	\N
18	3006	Servicios para el control de plagas, ba?os parasiticidas, etc.	\N
19	3007	Extraccion de productos forestales de bosques cultivados 	\N
\.


--
-- Name: ActividadesIngresadas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tiago
--

SELECT pg_catalog.setval('public."ActividadesIngresadas_id_seq"', 20, true);


--
-- Name: CondicionTributaria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tiago
--

SELECT pg_catalog.setval('public."CondicionTributaria_id_seq"', 1, false);


--
-- Name: Domicilios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tiago
--

SELECT pg_catalog.setval('public."Domicilios_id_seq"', 20, true);


--
-- Name: Observaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tiago
--

SELECT pg_catalog.setval('public."Observaciones_id_seq"', 20, true);


--
-- Name: TiposDeCaracteres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tiago
--

SELECT pg_catalog.setval('public."TiposDeCaracteres_id_seq"', 1, false);


--
-- Name: TitularesIngresados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tiago
--

SELECT pg_catalog.setval('public."TitularesIngresados_id_seq"', 20, true);


--
-- Name: TodasActividades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tiago
--

SELECT pg_catalog.setval('public."TodasActividades_id_seq"', 19, true);


--
-- Name: ActividadesIngresadas ActividadesIngresadas_pkey; Type: CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."ActividadesIngresadas"
    ADD CONSTRAINT "ActividadesIngresadas_pkey" PRIMARY KEY (id);


--
-- Name: CondicionTributaria CondicionTributaria_pkey; Type: CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."CondicionTributaria"
    ADD CONSTRAINT "CondicionTributaria_pkey" PRIMARY KEY (id);


--
-- Name: Domicilios Domicilios_pkey; Type: CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."Domicilios"
    ADD CONSTRAINT "Domicilios_pkey" PRIMARY KEY (id);


--
-- Name: Observaciones Observaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."Observaciones"
    ADD CONSTRAINT "Observaciones_pkey" PRIMARY KEY (id);


--
-- Name: TiposDeCaracteres TiposDeCaracteres_pkey; Type: CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TiposDeCaracteres"
    ADD CONSTRAINT "TiposDeCaracteres_pkey" PRIMARY KEY (id);


--
-- Name: TitularesIngresados TitularesIngresados_pkey; Type: CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TitularesIngresados"
    ADD CONSTRAINT "TitularesIngresados_pkey" PRIMARY KEY (id);


--
-- Name: TodasActividades TodasActividades_pkey; Type: CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TodasActividades"
    ADD CONSTRAINT "TodasActividades_pkey" PRIMARY KEY (id);


--
-- Name: ActividadesIngresadas ActividadesIngresadas_actividadId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."ActividadesIngresadas"
    ADD CONSTRAINT "ActividadesIngresadas_actividadId_fkey" FOREIGN KEY ("actividadId") REFERENCES public."TodasActividades"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ActividadesIngresadas ActividadesIngresadas_operacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."ActividadesIngresadas"
    ADD CONSTRAINT "ActividadesIngresadas_operacionId_fkey" FOREIGN KEY ("operacionId") REFERENCES public."Domicilios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Domicilios Domicilios_condicionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."Domicilios"
    ADD CONSTRAINT "Domicilios_condicionId_fkey" FOREIGN KEY ("condicionId") REFERENCES public."CondicionTributaria"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Observaciones Observaciones_operacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."Observaciones"
    ADD CONSTRAINT "Observaciones_operacionId_fkey" FOREIGN KEY ("operacionId") REFERENCES public."Domicilios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TitularesIngresados TitularesIngresados_caracterId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TitularesIngresados"
    ADD CONSTRAINT "TitularesIngresados_caracterId_fkey" FOREIGN KEY ("caracterId") REFERENCES public."TiposDeCaracteres"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: TitularesIngresados TitularesIngresados_operacionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: tiago
--

ALTER TABLE ONLY public."TitularesIngresados"
    ADD CONSTRAINT "TitularesIngresados_operacionId_fkey" FOREIGN KEY ("operacionId") REFERENCES public."Domicilios"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

