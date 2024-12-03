--
-- PostgreSQL database dump
--

-- Dumped from database version 15.10 (Debian 15.10-1.pgdg110+1)
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-03 23:01:38 +07

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 16416)
-- Name: as_asset; Type: TABLE; Schema: public; Owner: asset_management
--

CREATE TABLE public.as_asset (
    id bigint NOT NULL,
    location_id smallint NOT NULL,
    org_id smallint NOT NULL,
    status_id smallint NOT NULL
);


ALTER TABLE public.as_asset OWNER TO asset_management;

--
-- TOC entry 217 (class 1259 OID 16415)
-- Name: as_asset_id_seq; Type: SEQUENCE; Schema: public; Owner: asset_management
--

CREATE SEQUENCE public.as_asset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.as_asset_id_seq OWNER TO asset_management;

--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 217
-- Name: as_asset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asset_management
--

ALTER SEQUENCE public.as_asset_id_seq OWNED BY public.as_asset.id;


--
-- TOC entry 215 (class 1259 OID 16404)
-- Name: as_location; Type: TABLE; Schema: public; Owner: asset_management
--

CREATE TABLE public.as_location (
    id smallint NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.as_location OWNER TO asset_management;

--
-- TOC entry 221 (class 1259 OID 16436)
-- Name: as_location_id_seq; Type: SEQUENCE; Schema: public; Owner: asset_management
--

CREATE SEQUENCE public.as_location_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.as_location_id_seq OWNER TO asset_management;

--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 221
-- Name: as_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asset_management
--

ALTER SEQUENCE public.as_location_id_seq OWNED BY public.as_location.id;


--
-- TOC entry 214 (class 1259 OID 16397)
-- Name: as_organization; Type: TABLE; Schema: public; Owner: asset_management
--

CREATE TABLE public.as_organization (
    id smallint NOT NULL,
    name character varying(8) NOT NULL
);


ALTER TABLE public.as_organization OWNER TO asset_management;

--
-- TOC entry 216 (class 1259 OID 16410)
-- Name: as_status; Type: TABLE; Schema: public; Owner: asset_management
--

CREATE TABLE public.as_status (
    id smallint NOT NULL,
    name character varying(9) NOT NULL
);


ALTER TABLE public.as_status OWNER TO asset_management;

--
-- TOC entry 219 (class 1259 OID 16422)
-- Name: as_status_id_seq; Type: SEQUENCE; Schema: public; Owner: asset_management
--

CREATE SEQUENCE public.as_status_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.as_status_id_seq OWNER TO asset_management;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 219
-- Name: as_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asset_management
--

ALTER SEQUENCE public.as_status_id_seq OWNED BY public.as_status.id;


--
-- TOC entry 220 (class 1259 OID 16429)
-- Name: organization_id_seq; Type: SEQUENCE; Schema: public; Owner: asset_management
--

CREATE SEQUENCE public.organization_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.organization_id_seq OWNER TO asset_management;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 220
-- Name: organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asset_management
--

ALTER SEQUENCE public.organization_id_seq OWNED BY public.as_organization.id;


--
-- TOC entry 3194 (class 2604 OID 16419)
-- Name: as_asset id; Type: DEFAULT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_asset ALTER COLUMN id SET DEFAULT nextval('public.as_asset_id_seq'::regclass);


--
-- TOC entry 3192 (class 2604 OID 16437)
-- Name: as_location id; Type: DEFAULT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_location ALTER COLUMN id SET DEFAULT nextval('public.as_location_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 16430)
-- Name: as_organization id; Type: DEFAULT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_organization ALTER COLUMN id SET DEFAULT nextval('public.organization_id_seq'::regclass);


--
-- TOC entry 3193 (class 2604 OID 16423)
-- Name: as_status id; Type: DEFAULT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_status ALTER COLUMN id SET DEFAULT nextval('public.as_status_id_seq'::regclass);


--
-- TOC entry 3352 (class 0 OID 16416)
-- Dependencies: 218
-- Data for Name: as_asset; Type: TABLE DATA; Schema: public; Owner: asset_management
--

COPY public.as_asset (id, location_id, org_id, status_id) FROM stdin;
10	1	1	1
11	1	1	1
12	1	1	1
13	5	1	1
14	5	1	1
15	5	1	1
16	5	1	1
17	5	1	1
18	5	1	1
19	1	1	1
20	1	1	1
21	1	1	1
22	5	1	1
23	5	1	1
24	5	1	1
25	5	1	1
26	5	1	1
27	5	1	1
28	1	1	1
29	1	1	1
30	1	1	1
31	5	1	1
32	5	1	1
33	5	1	1
34	5	1	1
35	5	1	1
36	5	1	1
37	1	1	1
38	1	1	1
39	1	1	1
40	5	1	1
41	5	1	1
42	5	1	1
43	5	1	1
44	5	1	1
45	5	1	1
46	1	1	1
47	1	1	1
48	1	1	1
49	5	1	1
50	5	1	1
51	5	1	1
52	5	1	1
53	5	1	1
54	5	1	1
55	1	1	1
56	1	1	1
57	1	1	1
58	5	1	1
59	5	1	1
60	5	1	1
61	5	1	1
62	5	1	1
63	5	1	1
\.


--
-- TOC entry 3349 (class 0 OID 16404)
-- Dependencies: 215
-- Data for Name: as_location; Type: TABLE DATA; Schema: public; Owner: asset_management
--

COPY public.as_location (id, name) FROM stdin;
1	Da Nang
2	Ho Chi Minh
3	Ha Noi
4	Quang Nam
5	Dong Nai
\.


--
-- TOC entry 3348 (class 0 OID 16397)
-- Dependencies: 214
-- Data for Name: as_organization; Type: TABLE DATA; Schema: public; Owner: asset_management
--

COPY public.as_organization (id, name) FROM stdin;
1	PNS
2	PLJ
\.


--
-- TOC entry 3350 (class 0 OID 16410)
-- Dependencies: 216
-- Data for Name: as_status; Type: TABLE DATA; Schema: public; Owner: asset_management
--

COPY public.as_status (id, name) FROM stdin;
1	actived
2	inactived
\.


--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 217
-- Name: as_asset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.as_asset_id_seq', 63, true);


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 221
-- Name: as_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.as_location_id_seq', 5, true);


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 219
-- Name: as_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.as_status_id_seq', 2, true);


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 220
-- Name: organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.organization_id_seq', 2, true);


--
-- TOC entry 3202 (class 2606 OID 16421)
-- Name: as_asset as_asset_pkey; Type: CONSTRAINT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT as_asset_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 16442)
-- Name: as_location as_location_pkey; Type: CONSTRAINT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_location
    ADD CONSTRAINT as_location_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 16428)
-- Name: as_status as_status_pkey; Type: CONSTRAINT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_status
    ADD CONSTRAINT as_status_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 16435)
-- Name: as_organization organization_pkey; Type: CONSTRAINT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 16443)
-- Name: as_asset location_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT location_id_fkey FOREIGN KEY (location_id) REFERENCES public.as_location(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 3204 (class 2606 OID 16448)
-- Name: as_asset org_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT org_id_fkey FOREIGN KEY (org_id) REFERENCES public.as_organization(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


--
-- TOC entry 3205 (class 2606 OID 16453)
-- Name: as_asset status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: asset_management
--

ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT status_id_fkey FOREIGN KEY (status_id) REFERENCES public.as_status(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;


-- Completed on 2024-12-03 23:01:38 +07

--
-- PostgreSQL database dump complete
--

