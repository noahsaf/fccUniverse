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
    size integer,
    planet_id integer NOT NULL,
    comets_id character varying(20) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    age_million_years integer,
    n integer,
    n1 integer
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
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean,
    planet_id integer,
    asd integer
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    description text,
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
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    size numeric,
    age_million_years integer,
    galaxy_id integer,
    n integer
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
-- Name: totalstats; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.totalstats (
    totalpop_billion integer NOT NULL,
    totalmass_tons integer,
    totalstats_id integer NOT NULL,
    name character varying(20),
    comets character varying(20)
);


ALTER TABLE public.totalstats OWNER TO freecodecamp;

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

INSERT INTO public.comets VALUES (6532, 2, '124QQ', NULL);
INSERT INTO public.comets VALUES (612, 1, '1fasQ', NULL);
INSERT INTO public.comets VALUES (2612, 1, '1512', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('bob', 1, 12, NULL, NULL);
INSERT INTO public.galaxy VALUES ('asd', 2, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES ('bobby', 3, 61, NULL, NULL);
INSERT INTO public.galaxy VALUES ('aseae', 4, 23456, NULL, NULL);
INSERT INTO public.galaxy VALUES ('aseaasfe', 5, 21456, NULL, NULL);
INSERT INTO public.galaxy VALUES ('aqweseaasfe', 6, 6, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('mini-bob', 1, false, 1, NULL);
INSERT INTO public.moon VALUES ('mega-moon', 2, false, 1, NULL);
INSERT INTO public.moon VALUES ('asdagw', 3, true, 3, NULL);
INSERT INTO public.moon VALUES ('many', 4, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 5, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 6, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 7, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 8, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 9, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 10, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 11, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 12, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 13, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 14, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 15, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 16, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 17, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 18, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 19, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 20, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 21, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 22, false, 4, NULL);
INSERT INTO public.moon VALUES ('many', 23, false, 4, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mini_life', 1, true, 'small planet with little life in water', 1);
INSERT INTO public.planet VALUES ('desert', 2, false, 'big planet made out of sand, inner core is frozen', 1);
INSERT INTO public.planet VALUES ('asd', 3, true, 'HUGE planet, 1359165 quadrillion in human population', 2);
INSERT INTO public.planet VALUES ('asdw2', 4, false, 'boring', 3);
INSERT INTO public.planet VALUES ('aassdw2', 6, false, 'boring', 2);
INSERT INTO public.planet VALUES ('aassdw2', 9, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 10, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdwqw2', 11, false, 'boring', 2);
INSERT INTO public.planet VALUES ('aassdw2', 12, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 13, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 14, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 15, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 16, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 17, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 18, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 19, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 20, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 21, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 22, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 23, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 24, false, 'boring', 1);
INSERT INTO public.planet VALUES ('aassdw2', 25, false, 'boring', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('as', 1, 525.2, 1, 1, NULL);
INSERT INTO public.star VALUES ('gawe', 2, 7712, 3, 1, NULL);
INSERT INTO public.star VALUES ('gawaag', 3, 152, 7, 2, NULL);
INSERT INTO public.star VALUES ('zdfg', 4, 213, 65, 2, NULL);
INSERT INTO public.star VALUES ('zdfg2', 5, 223, 615, 5, NULL);
INSERT INTO public.star VALUES ('zasf2', 7, 13, 15, 6, NULL);


--
-- Data for Name: totalstats; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.totalstats VALUES (123, 123, 123, NULL, NULL);
INSERT INTO public.totalstats VALUES (123, 123, 124, NULL, NULL);
INSERT INTO public.totalstats VALUES (123, 123, 125, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: planet a2qwe1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT a2qwe1 UNIQUE (planet_id);


--
-- Name: totalstats asd; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.totalstats
    ADD CONSTRAINT asd UNIQUE (totalstats_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (asd);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: galaxy qwe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT qwe UNIQUE (galaxy_id);


--
-- Name: star qwe1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT qwe1 UNIQUE (star_id);


--
-- Name: comets size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT size UNIQUE (size);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: totalstats totalstats_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.totalstats
    ADD CONSTRAINT totalstats_pkey PRIMARY KEY (totalstats_id);


--
-- Name: comets comets_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

