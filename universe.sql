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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    distance numeric,
    has_planets boolean,
    found integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(20) NOT NULL,
    moon_size numeric,
    is_dwarf boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    has_life boolean,
    planet_type_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet_type ALTER COLUMN planet_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_type_planet_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    found integer,
    type text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('Milky Way', 1, NULL, true, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('Andromeda', 2, NULL, false, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('Cartwheel', 3, NULL, true, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('Condor', 4, NULL, true, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('Comet', 5, NULL, true, NULL);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES ('Medusa', 6, NULL, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 4, 'Mary', 1700.35, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 6, 'oseph', 500.0, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 9, 'Mathias', 2400.69, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 10, 'Jones', 489.1, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 12, 'Dark', 891.7, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 8, 'Krieg', 5302.1, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 9, 'Malquip', 4723.6, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 5, 'Prox', 833.67, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 11, 'Ilmanto', 1750.5, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 8, 'Yrope', 407.0, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 1, 'Moon', 1703.8, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 2, 'Callisto', 9802.1, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 5, 'EB89', 234.8, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 8, 'NXB-4E', 350.0, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 12, 'FG-KOL', 767.4, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 7, 'Jinx', 564.2, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 9, 'Klonq', 685.5, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 6, 'Trep-8', 812.3, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 12, 'Matador', 7498.14, NULL);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 5, 'Gem-BE-1', 779.81, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Earth', 1, 4, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Jupiter', 2, 4, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Venus', 3, 4, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Exalt', 4, 1, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Propus', 5, 1, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Firmax', 6, 3, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Callos', 7, 3, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Medial', 8, 5, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Noma', 9, 5, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Sequinox', 10, 6, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Loimu', 11, 6, NULL, NULL);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES ('Aidon', 12, 1, NULL, NULL);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type OVERRIDING SYSTEM VALUE VALUES (1, 'water', NULL);
INSERT INTO public.planet_type OVERRIDING SYSTEM VALUE VALUES (2, 'rock', NULL);
INSERT INTO public.planet_type OVERRIDING SYSTEM VALUE VALUES (3, 'lava', NULL);
INSERT INTO public.planet_type OVERRIDING SYSTEM VALUE VALUES (4, 'gas', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'Canis Major', 3, NULL, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'Taurus', 4, NULL, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'Sun', 1, NULL, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'Lyra', 5, NULL, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Corvus', 6, NULL, NULL);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'Cassiopeia', 2, NULL, 'brown dwarf');


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
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


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
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: planet_type planet_type_planet_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_planet_type_id_key UNIQUE (planet_type_id);


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
-- Name: planet planet_planet_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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

