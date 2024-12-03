--
-- PostgreSQL database dump
--

-- Dumped from database version 15.10 (Debian 15.10-1.pgdg110+1)
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-03 22:57:05 +07

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
-- TOC entry 3348 (class 0 OID 16416)
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
\.


--
-- TOC entry 3345 (class 0 OID 16404)
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
-- TOC entry 3344 (class 0 OID 16397)
-- Dependencies: 214
-- Data for Name: as_organization; Type: TABLE DATA; Schema: public; Owner: asset_management
--

COPY public.as_organization (id, name) FROM stdin;
1	PNS
2	PLJ
\.


--
-- TOC entry 3346 (class 0 OID 16410)
-- Dependencies: 216
-- Data for Name: as_status; Type: TABLE DATA; Schema: public; Owner: asset_management
--

COPY public.as_status (id, name) FROM stdin;
1	actived
2	inactived
\.


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 217
-- Name: as_asset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.as_asset_id_seq', 27, true);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 221
-- Name: as_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.as_location_id_seq', 5, true);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 219
-- Name: as_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.as_status_id_seq', 2, true);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 220
-- Name: organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asset_management
--

SELECT pg_catalog.setval('public.organization_id_seq', 2, true);


-- Completed on 2024-12-03 22:57:05 +07

--
-- PostgreSQL database dump complete
--

