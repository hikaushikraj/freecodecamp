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
-- Name: bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bodies (
    bodies_id integer NOT NULL,
    name character varying(20) NOT NULL,
    active character varying(5)
);


ALTER TABLE public.bodies OWNER TO freecodecamp;

--
-- Name: bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bodies_id_seq OWNER TO freecodecamp;

--
-- Name: bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.bodies_id_seq OWNED BY public.bodies.bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_million_years integer,
    has_life boolean
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
    description text,
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_million_years integer,
    planet_id integer,
    has_life boolean
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
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_million_years integer,
    star_id integer
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
    description text,
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_million_years integer,
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
-- Name: bodies bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bodies ALTER COLUMN bodies_id SET DEFAULT nextval('public.bodies_id_seq'::regclass);


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
-- Data for Name: bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bodies VALUES (1, 'galaxy', 'yes');
INSERT INTO public.bodies VALUES (2, 'star', 'yes');
INSERT INTO public.bodies VALUES (3, 'planet', 'yes');
INSERT INTO public.bodies VALUES (4, 'moon', 'yes');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky-way', 'has earth in it', 6558.215, 65, true);
INSERT INTO public.galaxy VALUES (2, 'choco-way', 'has no earth in it', 6558.215, 65, false);
INSERT INTO public.galaxy VALUES (3, 'marsh', 'has marshy info', 85561, 67, false);
INSERT INTO public.galaxy VALUES (4, 'akash', 'no info', 9847, 6, true);
INSERT INTO public.galaxy VALUES (5, 'rishi', 'study going on', 3654, 93, false);
INSERT INTO public.galaxy VALUES (6, 'som', 'not much info', 6423, 60, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'am', 'moon 1', 56, false, 85, 3, true);
INSERT INTO public.moon VALUES (2, 'bm', 'moon 2', 57, true, 95, 4, false);
INSERT INTO public.moon VALUES (4, 'cm', 'moon 3', 58, true, 95, 3, false);
INSERT INTO public.moon VALUES (5, 'dm', 'moon 4', 58, true, 95, 3, false);
INSERT INTO public.moon VALUES (6, 'em', 'moon 5', 58, true, 95, 3, false);
INSERT INTO public.moon VALUES (7, 'fm', 'moon 6', 58, true, 95, 3, false);
INSERT INTO public.moon VALUES (8, 'gm', 'moon 7', 58, true, 95, 3, false);
INSERT INTO public.moon VALUES (9, 'hm', 'moon 8', 58, true, 895, 2, false);
INSERT INTO public.moon VALUES (10, 'im', 'moon 9', 62, false, 695, 1, true);
INSERT INTO public.moon VALUES (11, 'jm', 'moon 10', 108, true, 95, 3, false);
INSERT INTO public.moon VALUES (12, 'km', 'moon 11', 108, true, 95, 3, false);
INSERT INTO public.moon VALUES (13, 'lm', 'moon 21', 108, true, 95, 3, false);
INSERT INTO public.moon VALUES (14, 'mm', 'moon 91', 108, true, 95, 3, false);
INSERT INTO public.moon VALUES (15, 'nm', 'moon 14', 108, true, 95, 3, false);
INSERT INTO public.moon VALUES (16, 'om', 'moon 15', 108, true, 95, 3, false);
INSERT INTO public.moon VALUES (17, 'pm', 'moon 16', 1508, true, 95, 3, false);
INSERT INTO public.moon VALUES (18, 'qm', 'moon 17', 158, true, 95, 3, false);
INSERT INTO public.moon VALUES (19, 'rm', 'moon 18', 158, true, 95, 3, false);
INSERT INTO public.moon VALUES (20, 'sm', 'moon 19', 158, true, 95, 3, false);
INSERT INTO public.moon VALUES (21, 'tm', 'moon 20', 158, true, 95, 3, false);
INSERT INTO public.moon VALUES (22, 'um', 'moon 21', 158, true, 95, 3, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 'planet 1', 658, false, 96, 3);
INSERT INTO public.planet VALUES (2, 'b', 'planet b', 856, true, 66, 6);
INSERT INTO public.planet VALUES (3, 'c', 'planet c', 656, true, 86, 1);
INSERT INTO public.planet VALUES (4, 'd', 'planet 4', 698, true, 32, 3);
INSERT INTO public.planet VALUES (8, 'e', 'planet 5', 6856, true, 286, 1);
INSERT INTO public.planet VALUES (9, 'f', 'planet 6', 608, true, 72, 2);
INSERT INTO public.planet VALUES (10, 'g', 'planet g', 62365, false, 8956, 6);
INSERT INTO public.planet VALUES (11, 'h', 'planet 8', 6856, true, 286, 1);
INSERT INTO public.planet VALUES (12, 'm', 'planet 12', 608, true, 72, 2);
INSERT INTO public.planet VALUES (13, 'k', 'planet 11', 62365, false, 8956, 6);
INSERT INTO public.planet VALUES (14, 'l', 'planet 9', 6856, true, 286, 1);
INSERT INTO public.planet VALUES (15, 'z', 'planet 10', 608, true, 72, 2);
INSERT INTO public.planet VALUES (16, 'p', 'planet p', 62365, false, 8956, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alpha', 'hot star', 7894523, true, 6, 3);
INSERT INTO public.star VALUES (2, 'beta', 'cool star', 365425, false, 900, 4);
INSERT INTO public.star VALUES (3, 'gama', 'no star', 56425, true, 500, 1);
INSERT INTO public.star VALUES (4, 'pii', 'has moon', 7894523, true, 8, 2);
INSERT INTO public.star VALUES (5, 'theta', 'cool star', 365425, false, 900, 4);
INSERT INTO public.star VALUES (6, 'zeta', 'z star', 56425, true, 500, 1);


--
-- Name: bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.bodies_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: bodies bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bodies
    ADD CONSTRAINT bodies_name_key UNIQUE (name);


--
-- Name: bodies bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bodies
    ADD CONSTRAINT bodies_pkey PRIMARY KEY (bodies_id);


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
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

