--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.0
-- Dumped by pg_dump version 9.3.0
-- Started on 2014-04-14 23:29:59

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 177 (class 3079 OID 11750)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1964 (class 0 OID 0)
-- Dependencies: 177
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 174 (class 1259 OID 26486)
-- Name: menuitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE menuitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menuitem_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 175 (class 1259 OID 26488)
-- Name: menuitem; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE menuitem (
    menuitemid bigint DEFAULT nextval('menuitem_id_seq'::regclass),
    name character varying(50),
    pageid bigint
);


ALTER TABLE public.menuitem OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 26492)
-- Name: menuitem_page; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE menuitem_page (
    menuitemid bigint,
    pageid bigint
);


ALTER TABLE public.menuitem_page OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 26471)
-- Name: page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_id_seq OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 26473)
-- Name: page; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE page (
    pageid bigint DEFAULT nextval('page_id_seq'::regclass),
    name character varying(50),
    pageuri character varying(50),
    content character varying(1500)
);


ALTER TABLE public.page OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 26480)
-- Name: wordlist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wordlist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wordlist_id_seq OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 26482)
-- Name: wordlist; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE wordlist (
    wordlistid bigint DEFAULT nextval('wordlist_id_seq'::regclass),
    term character varying(50),
    description character varying(400)
);


ALTER TABLE public.wordlist OWNER TO postgres;

--
-- TOC entry 1955 (class 0 OID 26488)
-- Dependencies: 175
-- Data for Name: menuitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY menuitem (menuitemid, name, pageid) FROM stdin;
\.


--
-- TOC entry 1965 (class 0 OID 0)
-- Dependencies: 174
-- Name: menuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('menuitem_id_seq', 1, false);


--
-- TOC entry 1956 (class 0 OID 26492)
-- Dependencies: 176
-- Data for Name: menuitem_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY menuitem_page (menuitemid, pageid) FROM stdin;
\.


--
-- TOC entry 1951 (class 0 OID 26473)
-- Dependencies: 171
-- Data for Name: page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY page (pageid, name, pageuri, content) FROM stdin;
\.


--
-- TOC entry 1966 (class 0 OID 0)
-- Dependencies: 170
-- Name: page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('page_id_seq', 1, false);


--
-- TOC entry 1953 (class 0 OID 26482)
-- Dependencies: 173
-- Data for Name: wordlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wordlist (wordlistid, term, description) FROM stdin;
\.


--
-- TOC entry 1967 (class 0 OID 0)
-- Dependencies: 172
-- Name: wordlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wordlist_id_seq', 1, false);


--
-- TOC entry 1963 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-04-14 23:29:59

--
-- PostgreSQL database dump complete
--

