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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years numeric(10,1),
    distance_from_earth numeric(10,1),
    galaxy_type integer,
    name character varying(50) NOT NULL
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
    name character varying(50),
    planet_id integer NOT NULL,
    distance_from_earth numeric(10,1),
    description text
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
-- Name: nebulosa; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulosa (
    nebulosa_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.nebulosa OWNER TO freecodecamp;

--
-- Name: nebulosa_nebulosa_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebulosa_nebulosa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebulosa_nebulosa_id_seq OWNER TO freecodecamp;

--
-- Name: nebulosa_nebulosa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebulosa_nebulosa_id_seq OWNED BY public.nebulosa.nebulosa_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_types integer,
    description text,
    has_life boolean,
    star_id integer NOT NULL,
    name character varying(50),
    distance_from_earth numeric(10,1)
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
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    name character varying(50),
    distance_from_earth numeric(10,1)
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebulosa nebulosa_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulosa ALTER COLUMN nebulosa_id SET DEFAULT nextval('public.nebulosa_nebulosa_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 'TESTE');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 'TESTE 2');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, 'TESTE 3');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 'TESTE 4');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 'TESTE 5');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 'TESTE 6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'teste', 3, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'TESTE 3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'TESTE 4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'TESTE 5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'TESTE 6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'TESTE 7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'TESTE 8', 8, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'TESTE 10', 19, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'TESTE 11', 18, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'TESTE 12', 17, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'TESTE 13', 16, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'TESTE 14', 20, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'TESTE 15', 15, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'TESTE 16', 19, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'TESTE 17', 18, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'TESTE 18', 17, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'TESTE 19', 16, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'TESTE 20', 20, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'TESTE 21', 15, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'TESTE 22', 19, NULL, NULL);


--
-- Data for Name: nebulosa; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulosa VALUES (1, 'TESTE 1', 1);
INSERT INTO public.nebulosa VALUES (2, 'TESTE 2', 2);
INSERT INTO public.nebulosa VALUES (3, 'TESTE 3', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, 2, 'teste', NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, 2, 'TESTE 2', NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, 3, 'TESTE 3', NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, 4, 'TESTE 4', NULL);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, 5, 'TESTE 5', NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, 6, 'TESTE 6', NULL);
INSERT INTO public.planet VALUES (15, NULL, NULL, NULL, 2, 'TESTE 7', NULL);
INSERT INTO public.planet VALUES (16, NULL, NULL, NULL, 3, 'TESTE 8', NULL);
INSERT INTO public.planet VALUES (17, NULL, NULL, NULL, 4, 'TESTE 9', NULL);
INSERT INTO public.planet VALUES (18, NULL, NULL, NULL, 5, 'TESTE 10', NULL);
INSERT INTO public.planet VALUES (19, NULL, NULL, NULL, 6, 'TESTE 11', NULL);
INSERT INTO public.planet VALUES (20, NULL, NULL, NULL, 2, 'TESTE 12', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, NULL, 1, 'TESTE star', NULL);
INSERT INTO public.star VALUES (3, NULL, 2, 'TESTE 2', NULL);
INSERT INTO public.star VALUES (4, NULL, 3, 'TESTE 3', NULL);
INSERT INTO public.star VALUES (5, NULL, 4, 'TESTE 4', NULL);
INSERT INTO public.star VALUES (6, NULL, 5, 'TESTE 5', NULL);
INSERT INTO public.star VALUES (7, NULL, 6, 'TESTE 6', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: nebulosa_nebulosa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebulosa_nebulosa_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebulosa nebulosa_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulosa
    ADD CONSTRAINT nebulosa_name_key UNIQUE (name);


--
-- Name: nebulosa nebulosa_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulosa
    ADD CONSTRAINT nebulosa_pkey PRIMARY KEY (nebulosa_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: nebulosa nebulosa_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulosa
    ADD CONSTRAINT nebulosa_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

