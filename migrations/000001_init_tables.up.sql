

CREATE TABLE public.as_asset (
    id bigint NOT NULL,
    location_id smallint NOT NULL,
    org_id smallint NOT NULL,
    status_id smallint NOT NULL
);


ALTER TABLE public.as_asset OWNER TO asset_management;



CREATE SEQUENCE public.as_asset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.as_asset_id_seq OWNER TO asset_management;


ALTER SEQUENCE public.as_asset_id_seq OWNED BY public.as_asset.id;




CREATE TABLE public.as_location (
    id smallint NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.as_location OWNER TO asset_management;


CREATE SEQUENCE public.as_location_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.as_location_id_seq OWNER TO asset_management;



ALTER SEQUENCE public.as_location_id_seq OWNED BY public.as_location.id;




CREATE TABLE public.as_organization (
    id smallint NOT NULL,
    name character varying(8) NOT NULL
);


ALTER TABLE public.as_organization OWNER TO asset_management;



CREATE TABLE public.as_status (
    id smallint NOT NULL,
    name character varying(8) NOT NULL
);


ALTER TABLE public.as_status OWNER TO asset_management;



CREATE SEQUENCE public.as_status_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.as_status_id_seq OWNER TO asset_management;



ALTER SEQUENCE public.as_status_id_seq OWNED BY public.as_status.id;




CREATE SEQUENCE public.organization_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.organization_id_seq OWNER TO asset_management;


ALTER SEQUENCE public.organization_id_seq OWNED BY public.as_organization.id;




ALTER TABLE ONLY public.as_asset ALTER COLUMN id SET DEFAULT nextval('public.as_asset_id_seq'::regclass);




ALTER TABLE ONLY public.as_location ALTER COLUMN id SET DEFAULT nextval('public.as_location_id_seq'::regclass);




ALTER TABLE ONLY public.as_organization ALTER COLUMN id SET DEFAULT nextval('public.organization_id_seq'::regclass);




ALTER TABLE ONLY public.as_status ALTER COLUMN id SET DEFAULT nextval('public.as_status_id_seq'::regclass);




ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT as_asset_pkey PRIMARY KEY (id);




ALTER TABLE ONLY public.as_location
    ADD CONSTRAINT as_location_pkey PRIMARY KEY (id);




ALTER TABLE ONLY public.as_status
    ADD CONSTRAINT as_status_pkey PRIMARY KEY (id);




ALTER TABLE ONLY public.as_organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (id);




ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT location_id_fkey FOREIGN KEY (location_id) REFERENCES public.as_location(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;




ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT org_id_fkey FOREIGN KEY (org_id) REFERENCES public.as_organization(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;




ALTER TABLE ONLY public.as_asset
    ADD CONSTRAINT status_id_fkey FOREIGN KEY (status_id) REFERENCES public.as_status(id) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;




