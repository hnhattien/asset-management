--
-- PostgreSQL database dump
--

-- Dumped from database version 15.10 (Debian 15.10-1.pgdg110+1)
-- Dumped by pg_dump version 16.4

-- Started on 2024-12-03 21:14:00 +07

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
-- TOC entry 3353 (class 0 OID 0)
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
-- TOC entry 3354 (class 0 OID 0)
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
-- TOC entry 3355 (class 0 OID 0)
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
    name character varying(8) NOT NULL
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
-- TOC entry 3356 (class 0 OID 0)
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
-- TOC entry 3357 (class 0 OID 0)
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


-- Completed on 2024-12-03 21:14:00 +07

--
-- PostgreSQL database dump complete
--

