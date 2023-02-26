--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying,
    description text,
    valid boolean,
    invalid boolean,
    id integer,
    nextid integer,
    numnextid numeric,
    uqnumnextid numeric,
    importance text NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    refif integer,
    description text NOT NULL,
    distance integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    refif integer,
    description text NOT NULL,
    distance integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    refif integer,
    description text NOT NULL,
    distance integer NOT NULL,
    value integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    refif integer,
    description text NOT NULL,
    distance integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'Extra', 'DESC', true, false, 1, 2, 3, 4, 'none');
INSERT INTO public.extra VALUES (2, 'Extra', 'DESC', true, false, 1, 2, 3, 5, 'none');
INSERT INTO public.extra VALUES (3, 'Extra', 'DESC', true, false, 1, 2, 3, 6, 'none');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy1', 1, 'New Galaxy', 130);
INSERT INTO public.galaxy VALUES (2, 'Galaxy2', 2, 'Newer Galaxy', 140);
INSERT INTO public.galaxy VALUES (3, 'G3', 3, 'Newest Galaxy', 190);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', 4, 'NewNew', 167);
INSERT INTO public.galaxy VALUES (5, 'G5', 5, 'NewNewNew', 176);
INSERT INTO public.galaxy VALUES (6, 'G6', 6, 'NewNewnewnew', 145);
INSERT INTO public.galaxy VALUES (7, 'Galaxy1', 7, 'New Galaxy', 130);
INSERT INTO public.galaxy VALUES (8, 'Galaxy2', 8, 'Newer Galaxy', 140);
INSERT INTO public.galaxy VALUES (9, 'G3', 9, 'Newest Galaxy', 190);
INSERT INTO public.galaxy VALUES (10, 'Galaxy4', 10, 'NewNew', 167);
INSERT INTO public.galaxy VALUES (11, 'G5', 11, 'NewNewNew', 176);
INSERT INTO public.galaxy VALUES (12, 'G6', 12, 'NewNewnewnew', 145);
INSERT INTO public.galaxy VALUES (13, 'Galaxy1', 13, 'New Galaxy', 130);
INSERT INTO public.galaxy VALUES (14, 'Galaxy2', 14, 'Newer Galaxy', 140);
INSERT INTO public.galaxy VALUES (15, 'G3', 15, 'Newest Galaxy', 190);
INSERT INTO public.galaxy VALUES (16, 'Galaxy4', 16, 'NewNew', 167);
INSERT INTO public.galaxy VALUES (17, 'G5', 17, 'NewNewNew', 176);
INSERT INTO public.galaxy VALUES (18, 'G6', 18, 'NewNewnewnew', 145);
INSERT INTO public.galaxy VALUES (19, 'Galaxy1', 19, 'New Galaxy', 130);
INSERT INTO public.galaxy VALUES (20, 'Galaxy2', 20, 'Newer Galaxy', 140);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Galaxy1', 1, 'New Galaxy', 130);
INSERT INTO public.moon VALUES (2, 'Galaxy2', 2, 'Newer Galaxy', 140);
INSERT INTO public.moon VALUES (3, 'G3', 3, 'Newest Galaxy', 190);
INSERT INTO public.moon VALUES (4, 'Galaxy4', 4, 'NewNew', 167);
INSERT INTO public.moon VALUES (5, 'G5', 5, 'NewNewNew', 176);
INSERT INTO public.moon VALUES (6, 'G6', 6, 'NewNewnewnew', 145);
INSERT INTO public.moon VALUES (7, 'Galaxy1', 7, 'New Galaxy', 130);
INSERT INTO public.moon VALUES (8, 'Galaxy2', 8, 'Newer Galaxy', 140);
INSERT INTO public.moon VALUES (9, 'G3', 9, 'Newest Galaxy', 190);
INSERT INTO public.moon VALUES (10, 'Galaxy4', 10, 'NewNew', 167);
INSERT INTO public.moon VALUES (11, 'G5', 11, 'NewNewNew', 176);
INSERT INTO public.moon VALUES (12, 'G6', 12, 'NewNewnewnew', 145);
INSERT INTO public.moon VALUES (13, 'Galaxy1', 13, 'New Galaxy', 130);
INSERT INTO public.moon VALUES (14, 'Galaxy2', 14, 'Newer Galaxy', 140);
INSERT INTO public.moon VALUES (15, 'G3', 15, 'Newest Galaxy', 190);
INSERT INTO public.moon VALUES (16, 'Galaxy4', 16, 'NewNew', 167);
INSERT INTO public.moon VALUES (17, 'G5', 17, 'NewNewNew', 176);
INSERT INTO public.moon VALUES (18, 'G6', 18, 'NewNewnewnew', 145);
INSERT INTO public.moon VALUES (19, 'Galaxy1', 19, 'New Galaxy', 130);
INSERT INTO public.moon VALUES (20, 'Galaxy2', 20, 'Newer Galaxy', 140);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P1', 1, 'NEWP', 145, 1);
INSERT INTO public.planet VALUES (3, 'P2', 2, 'NEWP', 145, 1);
INSERT INTO public.planet VALUES (4, 'P3', 3, 'NEWP', 145, 1);
INSERT INTO public.planet VALUES (5, 'P4', 4, 'NEWP', 145, 1);
INSERT INTO public.planet VALUES (6, 'P5', 5, 'NEWP', 145, 1);
INSERT INTO public.planet VALUES (7, 'P6', 6, 'NEWP', 145, 1);
INSERT INTO public.planet VALUES (8, 'Galaxy1', 7, 'New Galaxy', 130, 1);
INSERT INTO public.planet VALUES (9, 'Galaxy2', 8, 'Newer Galaxy', 140, 1);
INSERT INTO public.planet VALUES (10, 'G3', 9, 'Newest Galaxy', 190, 1);
INSERT INTO public.planet VALUES (11, 'Galaxy4', 10, 'NewNew', 167, 1);
INSERT INTO public.planet VALUES (12, 'G5', 11, 'NewNewNew', 176, 1);
INSERT INTO public.planet VALUES (13, 'G6', 12, 'NewNewnewnew', 145, 1);
INSERT INTO public.planet VALUES (14, 'Galaxy1', 13, 'New Galaxy', 130, 1);
INSERT INTO public.planet VALUES (15, 'Galaxy2', 14, 'Newer Galaxy', 140, 1);
INSERT INTO public.planet VALUES (16, 'G3', 15, 'Newest Galaxy', 190, 1);
INSERT INTO public.planet VALUES (17, 'Galaxy4', 16, 'NewNew', 167, 1);
INSERT INTO public.planet VALUES (18, 'G5', 17, 'NewNewNew', 176, 1);
INSERT INTO public.planet VALUES (19, 'G6', 18, 'NewNewnewnew', 145, 1);
INSERT INTO public.planet VALUES (20, 'Galaxy1', 19, 'New Galaxy', 130, 1);
INSERT INTO public.planet VALUES (21, 'Galaxy2', 20, 'Newer Galaxy', 140, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S1', 1, 'one', 124);
INSERT INTO public.star VALUES (2, 'S2', 2, 'one', 124);
INSERT INTO public.star VALUES (3, 'S3', 3, 'one', 124);
INSERT INTO public.star VALUES (4, 'S4', 4, 'one', 124);
INSERT INTO public.star VALUES (5, 'S5', 5, 'one', 124);
INSERT INTO public.star VALUES (6, 'S6', 6, 'one', 124);
INSERT INTO public.star VALUES (7, 'Galaxy1', 7, 'New Galaxy', 130);
INSERT INTO public.star VALUES (8, 'Galaxy2', 8, 'Newer Galaxy', 140);
INSERT INTO public.star VALUES (9, 'G3', 9, 'Newest Galaxy', 190);
INSERT INTO public.star VALUES (10, 'Galaxy4', 10, 'NewNew', 167);
INSERT INTO public.star VALUES (11, 'G5', 11, 'NewNewNew', 176);
INSERT INTO public.star VALUES (12, 'G6', 12, 'NewNewnewnew', 145);
INSERT INTO public.star VALUES (13, 'Galaxy1', 13, 'New Galaxy', 130);
INSERT INTO public.star VALUES (14, 'Galaxy2', 14, 'Newer Galaxy', 140);
INSERT INTO public.star VALUES (15, 'G3', 15, 'Newest Galaxy', 190);
INSERT INTO public.star VALUES (16, 'Galaxy4', 16, 'NewNew', 167);
INSERT INTO public.star VALUES (17, 'G5', 17, 'NewNewNew', 176);
INSERT INTO public.star VALUES (18, 'G6', 18, 'NewNewnewnew', 145);
INSERT INTO public.star VALUES (19, 'Galaxy1', 19, 'New Galaxy', 130);
INSERT INTO public.star VALUES (20, 'Galaxy2', 20, 'Newer Galaxy', 140);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: extra extra_uqnumnextid_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_uqnumnextid_key UNIQUE (uqnumnextid);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_refif_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_refif_key UNIQUE (refif);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_refif_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_refif_key UNIQUE (refif);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_refif_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_refif_key UNIQUE (refif);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_refif_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_refif_key UNIQUE (refif);


--
-- Name: moon moon_refif_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_refif_fkey FOREIGN KEY (refif) REFERENCES public.planet(refif);


--
-- Name: planet planet_refif_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_refif_fkey FOREIGN KEY (refif) REFERENCES public.star(refif);


--
-- Name: star star_refif_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_refif_fkey FOREIGN KEY (refif) REFERENCES public.galaxy(refif);


--
-- PostgreSQL database dump complete
--

