--
-- PostgreSQL database dump
--

\restrict DfXkdtxovmeTa2fXzMwlLnOygnyWmlv7tM3IZAj2BE7iECbBJhvtB06qBNpLyzB

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-05-24 00:01:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16395)
-- Name: curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso (
    codigo_curso character varying(100) NOT NULL,
    nombre_curso character varying(100),
    creditos integer
);


ALTER TABLE public.curso OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16389)
-- Name: estudiante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiante (
    cui integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100)
);


ALTER TABLE public.estudiante OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16401)
-- Name: nota; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nota (
    cui integer NOT NULL,
    codigo_curso character varying(100) NOT NULL,
    fecha date,
    examen_parcial01 numeric(4,2),
    examen_parcial02 numeric(4,2),
    examen_parcial03 numeric(4,2),
    continua01 numeric(4,2),
    continua02 numeric(4,2),
    continua03 numeric(4,2)
);


ALTER TABLE public.nota OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 16395)
-- Dependencies: 220
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso (codigo_curso, nombre_curso, creditos) FROM stdin;
DAW306	Desarrollo de Aplicaciones Web	4
\.


--
-- TOC entry 5018 (class 0 OID 16389)
-- Dependencies: 219
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiante (cui, nombre, apellido) FROM stdin;
20251151	Iker	Castro
\.


--
-- TOC entry 5020 (class 0 OID 16401)
-- Dependencies: 221
-- Data for Name: nota; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nota (cui, codigo_curso, fecha, examen_parcial01, examen_parcial02, examen_parcial03, continua01, continua02, continua03) FROM stdin;
20251151	DAW306	2026-05-18	18.50	17.00	19.00	16.50	18.00	17.50
\.


--
-- TOC entry 4866 (class 2606 OID 16400)
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (codigo_curso);


--
-- TOC entry 4864 (class 2606 OID 16394)
-- Name: estudiante estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (cui);


--
-- TOC entry 4868 (class 2606 OID 16407)
-- Name: nota nota_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_pkey PRIMARY KEY (cui, codigo_curso);


--
-- TOC entry 4869 (class 2606 OID 16413)
-- Name: nota nota_codigo_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_codigo_curso_fkey FOREIGN KEY (codigo_curso) REFERENCES public.curso(codigo_curso);


--
-- TOC entry 4870 (class 2606 OID 16408)
-- Name: nota nota_cui_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_cui_fkey FOREIGN KEY (cui) REFERENCES public.estudiante(cui);


-- Completed on 2026-05-24 00:01:42

--
-- PostgreSQL database dump complete
--

\unrestrict DfXkdtxovmeTa2fXzMwlLnOygnyWmlv7tM3IZAj2BE7iECbBJhvtB06qBNpLyzB

