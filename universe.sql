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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millons_of_years integer,
    galaxy_type character varying(30),
    description text
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
    name character varying(30) NOT NULL,
    age_in_millons_of_years integer,
    distance_rom_earth numeric,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millons_of_years integer
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
    name character varying(30) NOT NULL,
    age_in_millons_of_years integer,
    temperature_star numeric,
    description text,
    galaxy_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'bart', NULL);
INSERT INTO public.comets VALUES (2, 'skinner', NULL);
INSERT INTO public.comets VALUES (3, 'homer', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'centauri', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'sirius', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'pagaso', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'athenas', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'europa', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'io', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'gamenides', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'calisto', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'adrastea', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'autonoe', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'temisto', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'amaltea', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'calirroe', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'anakin', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'himalia', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'fobos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'deimos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'aegir', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'atlas', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'calypso', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'dione', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'eplimetheus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'zeis', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercurio', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'earth', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'marte', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturno', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'urano', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptuno', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pluton', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'naboo', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'tatooine', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'jakku', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'sun', 4603, 5778, 'es brillante', 1);
INSERT INTO public.star VALUES (3, 'alfa centauri', 5000, 4555, 'esta lejos', 2);
INSERT INTO public.star VALUES (4, 'betelgeouse', 5534, 4355, 'suena a betabeles', 3);
INSERT INTO public.star VALUES (5, 'sirio', 55656, 45435, 'esta a una gran distancia', 4);
INSERT INTO public.star VALUES (6, 'aldebara', 6758, 5858, 'it is too big', 5);
INSERT INTO public.star VALUES (7, 'bellatrix', 78898, 65656, 'that is what she said', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (moon_id);


--
-- Name: comets name_comets_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT name_comets_unq UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (star_id);


--
-- Name: star galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

