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
-- Name: all_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.all_universe (
    all_universe_id integer NOT NULL,
    code integer NOT NULL,
    galaxy_id integer,
    star_id integer,
    is_active boolean,
    name character varying(40),
    unique_code integer
);


ALTER TABLE public.all_universe OWNER TO freecodecamp;

--
-- Name: all_universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.all_universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.all_universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: all_universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.all_universe_universe_id_seq OWNED BY public.all_universe.all_universe_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    code character varying(40),
    distance numeric,
    duration integer,
    approximate integer,
    description text,
    is_galaxy boolean,
    is_active boolean NOT NULL,
    unique_code integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    code character varying(40),
    description text,
    is_moon boolean,
    is_active boolean NOT NULL,
    planet_id integer NOT NULL,
    unique_code integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    code character varying(40),
    description text,
    is_planet boolean,
    is_active boolean NOT NULL,
    star_id integer NOT NULL,
    unique_code integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    code character varying(40),
    description text,
    is_star boolean,
    is_active boolean NOT NULL,
    galaxy_id integer NOT NULL,
    unique_code integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: all_universe all_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_universe ALTER COLUMN all_universe_id SET DEFAULT nextval('public.all_universe_universe_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: all_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.all_universe VALUES (2, 1, 7, 2, true, NULL, NULL);
INSERT INTO public.all_universe VALUES (4, 2, 8, 3, true, NULL, NULL);
INSERT INTO public.all_universe VALUES (5, 3, 9, 4, true, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'Andromeda', 'ANDR', 1000.01, 10005, 200000, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (8, 'Vigro', 'VGR', 1000.06, 10006, 600000, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (9, 'Canis', 'CNS', 1000.02, 10006, 300000, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (10, 'Cygnus', 'CYG', 1000.03, 10007, 400000, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (11, 'Maffei', 'MF', 1000.04, 10008, 500000, NULL, NULL, true, NULL);
INSERT INTO public.galaxy VALUES (12, 'Milky', 'MK', 1000.05, 10009, 600000, NULL, NULL, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon1', 'moon desc', true, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon2', 'moon desc', true, true, 2, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon3', 'moon desc', true, true, 3, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon4', 'moon desc', true, true, 4, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon5', 'moon desc', true, true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon6', 'moon desc', true, true, 6, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon7', 'moon desc', true, true, 7, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon8', 'moon desc', true, true, 8, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon9', 'moon desc', true, true, 9, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon10', 'moon desc', true, true, 10, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon11', 'moon desc', true, true, 11, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon12', 'moon desc', true, true, 12, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon13', 'moon desc', true, true, 1, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 'moon14', 'moon desc', true, true, 2, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 'moon15', 'moon desc', true, true, 3, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 'moon16', 'moon desc', true, true, 4, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 'moon17', 'moon desc', true, true, 5, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 'moon18', 'moon desc', true, true, 6, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 'moon19', 'moon desc', true, true, 7, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 'moon20', 'moon desc', true, true, 8, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'p1', 'planet desc', true, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'planet2', 'p2', 'planet desc', true, true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'planet3', 'p3', 'planet desc', true, true, 3, NULL);
INSERT INTO public.planet VALUES (4, 'planet4', 'p4', 'planet desc', true, true, 4, NULL);
INSERT INTO public.planet VALUES (5, 'planet5', 'p5', 'planet desc', true, true, 5, NULL);
INSERT INTO public.planet VALUES (6, 'planet6', 'p6', 'planet desc', true, true, 6, NULL);
INSERT INTO public.planet VALUES (7, 'planet7', 'p7', 'planet desc', true, true, 1, NULL);
INSERT INTO public.planet VALUES (8, 'planet8', 'p8', 'planet desc', true, true, 2, NULL);
INSERT INTO public.planet VALUES (9, 'planet9', 'p9', 'planet desc', true, true, 3, NULL);
INSERT INTO public.planet VALUES (10, 'planet10', 'p10', 'planet desc', true, true, 4, NULL);
INSERT INTO public.planet VALUES (11, 'planet11', 'p11', 'planet desc', true, true, 5, NULL);
INSERT INTO public.planet VALUES (12, 'planet12', 'p12', 'planet desc', true, true, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 's1', 'star desc', true, true, 7, NULL);
INSERT INTO public.star VALUES (2, 'star2', 's2', 'star desc', true, true, 8, NULL);
INSERT INTO public.star VALUES (3, 'star3', 's3', 'star desc', true, true, 9, NULL);
INSERT INTO public.star VALUES (4, 'star4', 's4', 'star desc', true, true, 10, NULL);
INSERT INTO public.star VALUES (5, 'star5', 's5', 'star desc', true, true, 11, NULL);
INSERT INTO public.star VALUES (6, 'star6', 's6', 'star desc', true, true, 12, NULL);


--
-- Name: all_universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.all_universe_universe_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 12, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: all_universe all_universe_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_universe
    ADD CONSTRAINT all_universe_code_key UNIQUE (code);


--
-- Name: all_universe all_universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_universe
    ADD CONSTRAINT all_universe_name_key UNIQUE (name);


--
-- Name: all_universe all_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_universe
    ADD CONSTRAINT all_universe_pkey PRIMARY KEY (all_universe_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: all_universe uni_code; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_universe
    ADD CONSTRAINT uni_code UNIQUE (unique_code);


--
-- Name: galaxy uni_galaxy_code; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni_galaxy_code UNIQUE (unique_code);


--
-- Name: moon uni_moon_code; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uni_moon_code UNIQUE (unique_code);


--
-- Name: planet uni_planet_code; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uni_planet_code UNIQUE (unique_code);


--
-- Name: star uni_star_code; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uni_star_code UNIQUE (unique_code);


--
-- Name: idx_code; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX idx_code ON public.galaxy USING btree (code);


--
-- Name: idx_moon_code; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX idx_moon_code ON public.moon USING btree (code);


--
-- Name: idx_planet_code; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX idx_planet_code ON public.planet USING btree (code);


--
-- Name: idx_star_code; Type: INDEX; Schema: public; Owner: freecodecamp
--

CREATE UNIQUE INDEX idx_star_code ON public.star USING btree (code);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: all_universe fk_uni_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_universe
    ADD CONSTRAINT fk_uni_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: all_universe fk_uni_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_universe
    ADD CONSTRAINT fk_uni_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

