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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(60) NOT NULL,
    data text NOT NULL
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type character varying(60),
    no_of_stars integer,
    age integer
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
    planet_id integer,
    name character varying(60) NOT NULL,
    age integer,
    nickname character varying(60)
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
    has_life boolean,
    description text,
    no_of_moons integer,
    age numeric(4,1),
    weight integer,
    star_id integer,
    name character varying(60) NOT NULL,
    is_spherical boolean
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
    galaxy_id integer,
    name character varying(60) NOT NULL,
    age integer,
    no_of_planets integer
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'A', '000');
INSERT INTO public.fifth_table VALUES (2, 'B', '001');
INSERT INTO public.fifth_table VALUES (3, 'C', '010');
INSERT INTO public.fifth_table VALUES (4, 'D', '011');
INSERT INTO public.fifth_table VALUES (5, 'E', '100');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gal-a', NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (2, 'gal-b', NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (3, 'gal-c', NULL, 3, NULL);
INSERT INTO public.galaxy VALUES (4, 'gal-d', NULL, 0, NULL);
INSERT INTO public.galaxy VALUES (5, 'gal-e', NULL, 0, NULL);
INSERT INTO public.galaxy VALUES (6, 'gal-f', NULL, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'm-a);
', NULL, NULL);
INSERT INTO public.moon VALUES (2, 1, 'm-b', NULL, NULL);
INSERT INTO public.moon VALUES (3, 2, 'm-2a', NULL, NULL);
INSERT INTO public.moon VALUES (4, 2, 'm-2b', NULL, NULL);
INSERT INTO public.moon VALUES (5, 3, 'm-3a', NULL, NULL);
INSERT INTO public.moon VALUES (6, 3, 'm-3b', NULL, NULL);
INSERT INTO public.moon VALUES (7, 4, 'm-4a', NULL, NULL);
INSERT INTO public.moon VALUES (8, 4, 'm-4b', NULL, NULL);
INSERT INTO public.moon VALUES (9, 5, 'm-5a', NULL, NULL);
INSERT INTO public.moon VALUES (10, 5, 'm-5b', NULL, NULL);
INSERT INTO public.moon VALUES (11, 6, 'm-6a', NULL, NULL);
INSERT INTO public.moon VALUES (12, 6, 'm-6b', NULL, NULL);
INSERT INTO public.moon VALUES (13, 7, 'm-7a', NULL, NULL);
INSERT INTO public.moon VALUES (14, 7, 'm-7b', NULL, NULL);
INSERT INTO public.moon VALUES (15, 8, 'm-8a', NULL, NULL);
INSERT INTO public.moon VALUES (16, 8, 'm-8b', NULL, NULL);
INSERT INTO public.moon VALUES (17, 9, 'm-9a', NULL, NULL);
INSERT INTO public.moon VALUES (18, 9, 'm-9b', NULL, NULL);
INSERT INTO public.moon VALUES (19, 10, 'm-10a', NULL, NULL);
INSERT INTO public.moon VALUES (20, 10, 'm-10b', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, 2, NULL, NULL, 1, 'star-aaa', NULL);
INSERT INTO public.planet VALUES (2, NULL, NULL, 2, NULL, NULL, 1, 'star-aab', NULL);
INSERT INTO public.planet VALUES (3, NULL, NULL, 2, NULL, NULL, 1, 'star-aac', NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, 2, NULL, NULL, 2, 'star-aba', NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, 2, NULL, NULL, 2, 'star-abb', NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, 2, NULL, NULL, 2, 'star-abc', NULL);
INSERT INTO public.planet VALUES (7, NULL, NULL, 2, NULL, NULL, 3, 'star-aca', NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, 2, NULL, NULL, 3, 'star-acb', NULL);
INSERT INTO public.planet VALUES (9, NULL, NULL, 2, NULL, NULL, 3, 'star-acc', NULL);
INSERT INTO public.planet VALUES (10, NULL, NULL, 2, NULL, NULL, 4, 'star-baa', NULL);
INSERT INTO public.planet VALUES (11, NULL, NULL, 2, NULL, NULL, 4, 'star-bab', NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, 2, NULL, NULL, 4, 'star-bac', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'star-aa', NULL, 3);
INSERT INTO public.star VALUES (2, 1, 'star-ab', NULL, 3);
INSERT INTO public.star VALUES (3, 1, 'star-ac', NULL, 3);
INSERT INTO public.star VALUES (4, 2, 'star-ba', NULL, 3);
INSERT INTO public.star VALUES (5, 2, 'star-bb', NULL, 3);
INSERT INTO public.star VALUES (6, 2, 'star-bc', NULL, 3);
INSERT INTO public.star VALUES (7, 3, 'star-ca', NULL, 3);
INSERT INTO public.star VALUES (8, 3, 'star-cb', NULL, 3);
INSERT INTO public.star VALUES (9, 3, 'star-cc', NULL, 3);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 5, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: fifth_table fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_key UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

