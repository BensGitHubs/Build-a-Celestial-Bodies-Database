--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    alien_size integer NOT NULL,
    alien_can_talk boolean,
    name character varying(30)
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(10),
    age integer NOT NULL,
    weight integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(10),
    age integer NOT NULL,
    weight integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(10),
    age integer NOT NULL,
    weight integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(10),
    age integer NOT NULL,
    weight integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 10, NULL, NULL);
INSERT INTO public.aliens VALUES (2, 20, NULL, NULL);
INSERT INTO public.aliens VALUES (3, 30, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 100, 100.0, 'test', true, true);
INSERT INTO public.galaxy VALUES (2, 'Cigar', 200, 200, 200.0, 'test1', true, true);
INSERT INTO public.galaxy VALUES (3, 'Comet', 300, 300, 300.0, 'test2', false, false);
INSERT INTO public.galaxy VALUES (4, 'Dixon', 400, 400, 400.0, 'test3', false, false);
INSERT INTO public.galaxy VALUES (5, 'Shooter', 500, 500, 500.0, 'test4', false, false);
INSERT INTO public.galaxy VALUES (6, 'Rudolph', 600, 600, 600.0, 'test5', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 100, 100, 100.0, 'test', true, true, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 200, 200, 200.0, 'test1', true, true, 2);
INSERT INTO public.moon VALUES (3, 'Atlas', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (4, 'Atlas1', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (5, 'Atlas2', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (6, 'Atlas3', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (7, 'Atlas4', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (8, 'Atlas5', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (9, 'Atlas6', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (10, 'Atlas7', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (11, 'Atlas8', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (12, 'Atlas9', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (13, 'Atlas10', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (14, 'Atlas11', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (15, 'Atlas12', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (16, 'Atlas13', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (17, 'Atlas14', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (18, 'Atlas15', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (19, 'Atlas16', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.moon VALUES (20, 'Atlas17', 300, 300, 300.0, 'test2', false, false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 100, 100, 100.0, 'test', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 200, 200, 200.0, 'test1', true, true, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 400, 400, 400.0, 'test', false, false, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 500, 500, 500.0, 'test', false, false, 5);
INSERT INTO public.planet VALUES (6, 'Pluto', 600, 600, 500.0, 'test', false, false, 6);
INSERT INTO public.planet VALUES (7, 'Eros', 600, 600, 500.0, 'test', false, false, 6);
INSERT INTO public.planet VALUES (8, 'Gyros', 600, 600, 500.0, 'test', false, false, 6);
INSERT INTO public.planet VALUES (9, 'Goku', 600, 600, 500.0, 'test', false, false, 6);
INSERT INTO public.planet VALUES (10, 'Krillin', 600, 600, 500.0, 'test', false, false, 6);
INSERT INTO public.planet VALUES (11, 'Roshi', 600, 600, 500.0, 'test', false, false, 6);
INSERT INTO public.planet VALUES (12, 'Bulma', 600, 600, 500.0, 'test', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 100, 100, 100.0, 'test', true, true, 1);
INSERT INTO public.star VALUES (2, 'Canis', 200, 200, 200.0, 'test1', true, true, 2);
INSERT INTO public.star VALUES (3, 'Vega', 300, 300, 300.0, 'test2', false, false, 3);
INSERT INTO public.star VALUES (4, 'Polaris', 400, 400, 400.0, 'test3', false, false, 4);
INSERT INTO public.star VALUES (5, 'Rigel', 500, 500, 500.0, 'test4', false, false, 5);
INSERT INTO public.star VALUES (6, 'Alpha', 600, 600, 600.0, 'test5', false, false, 6);


--
-- Name: aliens aliens_alien_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_alien_id_key UNIQUE (aliens_id);


--
-- Name: aliens aliens_aliens_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_aliens_id_key UNIQUE (aliens_id);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy int; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT "int" UNIQUE (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

