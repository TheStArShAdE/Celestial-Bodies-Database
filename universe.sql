--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
    name character varying(30) NOT NULL,
    no_of_stars integer,
    no_of_planets integer,
    mass numeric(50,4),
    description text,
    active boolean
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
-- Name: inhabitant; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.inhabitant (
    inhabitant_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population integer,
    lifespan integer,
    avg_height numeric(10,4),
    description text,
    sentient boolean,
    planet_id integer
);


ALTER TABLE public.inhabitant OWNER TO freecodecamp;

--
-- Name: inhabitant_inhabitant_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.inhabitant_inhabitant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inhabitant_inhabitant_id_seq OWNER TO freecodecamp;

--
-- Name: inhabitant_inhabitant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.inhabitant_inhabitant_id_seq OWNED BY public.inhabitant.inhabitant_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbital_distance integer,
    diameter integer,
    mass numeric(10,4),
    description text,
    inhabited boolean,
    planet_id integer
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
    no_of_moons integer,
    avg_temp integer,
    surface_area numeric(10,4),
    description text,
    habitable boolean,
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
    age integer,
    spectral_class integer,
    surface_temp numeric(10,4),
    description text,
    binary_system boolean,
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
-- Name: inhabitant inhabitant_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitant ALTER COLUMN inhabitant_id SET DEFAULT nextval('public.inhabitant_inhabitant_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 200, 8, 15000000000.0000, 'Spiral galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 100000000, 3, 12300000000.0000, 'Spiral galaxy', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40, 5, 3400000000.0000, 'Spiral galaxy', true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 250, 0, 8300000000.0000, 'Spiral galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 150, 1, 6400000000.0000, 'Elliptical galaxy', true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 100, 4, 7200000000.0000, 'Spiral galaxy', true);


--
-- Data for Name: inhabitant; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.inhabitant VALUES (1, 'Humans', 7500000, 80, 170.5000, 'Intelligent beings', true, 1);
INSERT INTO public.inhabitant VALUES (2, 'Elves', 500, 1000, 180.0000, 'Mythical creatures', true, 2);
INSERT INTO public.inhabitant VALUES (3, 'Dwarves', 100, 250, 140.2000, 'Skilled craftsmen', true, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 384400, 3474, 73400.0000, 'Earths only moon', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9376, 27, 0.0108, 'Martian satellite', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 23458, 15, 0.0018, 'Martian satellite', false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1070412, 5262, 148000.0000, 'Largest moon of Jupiter', false, 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 1882709, 4820, 108000.0000, 'Moon of Jupiter', false, 4);
INSERT INTO public.moon VALUES (6, 'Europa', 670900, 3122, 4800.0000, 'Moon of Jupiter', false, 4);
INSERT INTO public.moon VALUES (7, 'Titan', 1221870, 5150, 134000.0000, 'Saturnian moon', false, 5);
INSERT INTO public.moon VALUES (8, 'Enceladus', 238020, 504, 108.0000, 'Saturnian moon', false, 5);
INSERT INTO public.moon VALUES (9, 'Mimas', 185520, 396, 37.5000, 'Saturnian moon', false, 5);
INSERT INTO public.moon VALUES (10, 'Triton', 354759, 2707, 21400.0000, 'Neptunes moon', false, 6);
INSERT INTO public.moon VALUES (11, 'Charon', 19571, 1207, 1590.0000, 'Plutos moon', false, 7);
INSERT INTO public.moon VALUES (12, 'Io', 421700, 3643, 89300.0000, 'Moon of Jupiter', false, 4);
INSERT INTO public.moon VALUES (13, 'Phoebe', 12952077, 213, 8.2900, 'Saturnian moon', false, 5);
INSERT INTO public.moon VALUES (14, 'Ariel', 191020, 1162, 1350.0000, 'Uranian moon', false, 8);
INSERT INTO public.moon VALUES (15, 'Miranda', 129900, 472, 65.9000, 'Uranian moon', false, 8);
INSERT INTO public.moon VALUES (16, 'Titania', 435910, 1578, 3490.0000, 'Uranian moon', false, 8);
INSERT INTO public.moon VALUES (17, 'Oberon', 584000, 1523, 3010.0000, 'Uranian moon', false, 8);
INSERT INTO public.moon VALUES (18, 'Rhea', 527108, 1528, 2310.0000, 'Saturnian moon', false, 5);
INSERT INTO public.moon VALUES (19, 'Tethys', 294619, 1076, 617.0000, 'Saturnian moon', false, 5);
INSERT INTO public.moon VALUES (20, 'Dione', 377396, 1123, 1110.0000, 'Saturnian moon', false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 15, 5100.7200, 'Blue planet', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2, -63, 1447.9850, 'Red planet', false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0, 462, 4602.3300, 'Earths evil twin', false, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 79, -110, 614190.0000, 'Largest planet', false, 2);
INSERT INTO public.planet VALUES (5, 'Saturn', 82, -140, 427000.0000, 'Ringed planet', false, 2);
INSERT INTO public.planet VALUES (6, 'Neptune', 14, -200, 76183.0000, 'Ice giant', false, 2);
INSERT INTO public.planet VALUES (7, 'Mercury', 0, 167, 748.3400, 'Closest to the Sun', false, 3);
INSERT INTO public.planet VALUES (8, 'Uranus', 27, -195, 80839.0000, 'Sideways planet', false, 3);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', 0, 6, 5818.7000, 'Earths cousin', true, 4);
INSERT INTO public.planet VALUES (10, 'Gliese 581d', 2, -11, 1772.5900, 'Potentially habitable', true, 4);
INSERT INTO public.planet VALUES (11, 'Proxima b', 0, -39, 456.3960, 'Proxima Centauri b', true, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 0, -40, 146.8000, 'TRAPPIST-1 exoplanet', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600000, 5, 5778.0000, 'Main sequence star', false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 200000, 3, 9940.0000, 'Binary star system', true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 6000000, 5, 5790.0000, 'Proxima Centauri', true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 8200000, 2, 3500.0000, 'Red Supergiant', false, 2);
INSERT INTO public.star VALUES (5, 'Vega', 600000, 4, 9602.0000, 'A-type main sequence', false, 2);
INSERT INTO public.star VALUES (6, 'Procyon', 1400000, 3, 6540.0000, 'Binary star system', true, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: inhabitant_inhabitant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.inhabitant_inhabitant_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: inhabitant inhabitant_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitant
    ADD CONSTRAINT inhabitant_name_key UNIQUE (name);


--
-- Name: inhabitant inhabitant_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitant
    ADD CONSTRAINT inhabitant_pkey PRIMARY KEY (inhabitant_id);


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
-- Name: inhabitant inhabitant_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.inhabitant
    ADD CONSTRAINT inhabitant_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

