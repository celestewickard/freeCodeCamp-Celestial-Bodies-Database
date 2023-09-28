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
    galaxy_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    star_in_galaxy character varying(30),
    star_num numeric,
    t_or_f boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    planets_moon text,
    planet_id numeric,
    moon_num integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    primary_planet boolean,
    planet_num integer,
    planet_color text,
    star_id numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    planet_type_color text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id numeric NOT NULL,
    name character varying(30) NOT NULL,
    closest_planet text,
    star_color text,
    galaxy_id integer,
    planet_id numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Proxima Centauri', 1, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Alpha Centauri', 2, true);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 'Alpha Centauri C', 3, true);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'Bernards Star', 4, true);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'Alpha Centauri A', 5, true);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Alpha Centauri B', 6, true);
INSERT INTO public.galaxy VALUES (7, 'Draco', 'Gliese 687', 7, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths moon', 3, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars moon', 4, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars moon', 4, 3);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiters moon', 5, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Jupiters moon', 5, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Jupiters moon', 5, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Jupiters moon', 5, 7);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Saturns moon', 6, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Saturns moon', 6, 9);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Saturns moon', 6, 10);
INSERT INTO public.moon VALUES (11, 'Dione', 'Saturns moon', 6, 11);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Saturns moon', 6, 12);
INSERT INTO public.moon VALUES (13, 'Titan', 'Saturns moon', 6, 13);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Uranus moon', 7, 14);
INSERT INTO public.moon VALUES (15, 'Belinda', 'Uranus moon', 7, 15);
INSERT INTO public.moon VALUES (16, 'Caliban', 'Uranus moon', 7, 16);
INSERT INTO public.moon VALUES (17, 'Despina', 'Neptunes moon', 8, 17);
INSERT INTO public.moon VALUES (18, 'Galatea', 'Neptunes moon', 8, 18);
INSERT INTO public.moon VALUES (19, 'Halimede', 'Neptunes moon', 8, 19);
INSERT INTO public.moon VALUES (20, 'Hippocamp', 'Neptunes moon', 8, 20);
INSERT INTO public.moon VALUES (21, 'Charon', 'Plutos moon', 9, 21);
INSERT INTO public.moon VALUES (22, 'Hydra', 'Plutos moon', 9, 22);
INSERT INTO public.moon VALUES (23, 'Kerberos', 'Plutos moon', 9, 23);
INSERT INTO public.moon VALUES (24, 'Nix', 'Plutos moon', 9, 24);
INSERT INTO public.moon VALUES (25, 'Styx', 'Plutos moon', 9, 25);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 13, 'Blue', 2);
INSERT INTO public.planet VALUES (2, 'Venus', true, 12, 'Blue', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 12, 'Blue', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 9, 'Blue', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', true, 8, 'Blue', 2);
INSERT INTO public.planet VALUES (10, 'Ceres', false, 4, 'Blue', 2);
INSERT INTO public.planet VALUES (11, 'Makemake', false, 3, 'Blue', 2);
INSERT INTO public.planet VALUES (12, 'Haumea', false, 2, 'Blue', 2);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 7, 'Blue', 4);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 6, 'Blue', 7);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 5, 'Blue', 3);
INSERT INTO public.planet VALUES (13, 'Eros', false, 1, 'Blue', 3);
INSERT INTO public.planet VALUES (4, 'Mars', true, 11, 'Blue', 3);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Gas Giant', 'Gray');
INSERT INTO public.planet_types VALUES (2, 'Super Earth', 'Black');
INSERT INTO public.planet_types VALUES (3, 'Neptune Like', 'Aqua');
INSERT INTO public.planet_types VALUES (4, 'Terretrial', 'Orange');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 'Earth', 'Blue', 1, 3);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Saturn', 'Red', 2, 6);
INSERT INTO public.star VALUES (3, 'Alpha Centauri C', 'Pluto', 'Yellow', 3, 9);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Uranus', 'Blue', 5, 7);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 'Uranus', 'Blue', 6, 7);
INSERT INTO public.star VALUES (6, 'Bernards Star', 'Saturn', 'Red', 4, 6);
INSERT INTO public.star VALUES (7, 'Gliese 687', 'Neptune', 'White', 7, 8);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_num_key UNIQUE (moon_num);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

