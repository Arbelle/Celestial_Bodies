--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 11.16 (Debian 11.16-0+deb10u1)

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

SET default_with_oids = false;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type_of_galaxy character varying(60),
    constellation character varying(60),
    description text
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_of_orb character varying(30),
    is_regular boolean,
    description text
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    orbital_period_in_days integer,
    gravity numeric(4,1),
    have_natural_satellites boolean
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation character varying(60),
    magnitude numeric(5,3),
    distance_in_light_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: traditional_moon_view; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.traditional_moon_view (
    traditional_moon_view_id integer NOT NULL,
    name character varying(60) NOT NULL,
    time_of_the_year character varying(30)
);


ALTER TABLE public.traditional_moon_view OWNER TO postgres;

--
-- Name: traditional_moon_view_traditional_moon_view_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.traditional_moon_view_traditional_moon_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.traditional_moon_view_traditional_moon_view_id_seq OWNER TO postgres;

--
-- Name: traditional_moon_view_traditional_moon_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.traditional_moon_view_traditional_moon_view_id_seq OWNED BY public.traditional_moon_view.traditional_moon_view_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: traditional_moon_view traditional_moon_view_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traditional_moon_view ALTER COLUMN traditional_moon_view_id SET DEFAULT nextval('public.traditional_moon_view_traditional_moon_view_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galaxy (galaxy_id, name, type_of_galaxy, constellation, description) FROM stdin;
10	Hoags Object	Ellipitical Galaxy	Serpens	\N
6	Sombrero	Spiral Galaxy	Virgo e Corvus	\N
1	Milky Way	Spiral Galaxy	Sargittarius	\N
3	Andromeda	Spiral Galaxy	Andromeda	\N
7	Whirlpool	Spiral Galaxy	Canis Venatici	\N
9	Tadpole	Spiral Galaxy	Draco	\N
5	Pinwheel	Spiral Galaxy	Ursa Major	\N
4	Cigar	Irregular Galaxy	Ursa Major	\N
2	LMC	Spiral Galaxy	Dorado e Mensa	\N
8	NGC 1300	Spiral Galaxy	Eridanus	\N
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moon (moon_id, name, planet_of_orb, is_regular, description) FROM stdin;
1	The Moon	Earth	t	\N
7	Triton	Neptune	f	\N
16	Nereid	Neptune	f	\N
20	Leda	Jupiter	f	\N
19	Elara	Jupiter	f	\N
21	Isonoe	Jupiter	f	\N
22	Skathi	Saturn	f	\N
11	Phobos	Mars	t	\N
12	Deimos	Mars	t	\N
3	Io	Jupiter	t	\N
2	Europa	Jupiter	t	\N
6	Callisto	Jupiter	t	\N
10	Mimas	Saturn	t	\N
5	Titan	Saturn	t	\N
13	Cordelia	Uranus	t	\N
14	Ophelia	Uranus	t	\N
15	Juliet	Uranus	t	\N
9	Titania	Uranus	t	\N
4	Ganymede	Jupiter	t	\N
18	Despina	Neptune	t	\N
17	Thalassa	Neptune	t	\N
8	Bianca	Uranus	t	\N
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planet (planet_id, name, description, orbital_period_in_days, gravity, have_natural_satellites) FROM stdin;
5	Mars	Is the fourth planet from the Sun and the second smallest in the Solar System	687	3.7	t
1	Earth	Planet we Inhabit	365	9.8	t
3	Jupiter	Is the largest planet in the Solar System has 2.5 times the mass of all the other planets combined and it is a gas planet	4380	24.8	t
8	Neptune	Is the last from the Sun and belonging to the group of gas giants	60225	11.2	t
6	Saturn	Is the second largest in the Solar System belongin to the group of gas giants	10804	10.4	t
7	Uranus	Is the seventh planet from the Sun and the third largest from the Solar System	30660	8.9	t
9	Eris	Is the second largest known dwarf planet in the Solar System	203670	0.8	f
11	Haumea	Is a dwaft planet in the middle of Kuiper Blet	103660	0.4	f
4	Venus	Is the second planet of the Solar System in order of distance from the Sun	225	8.9	f
2	Mercury	Is the smallest and Innermost planet on Solar System	88	3.7	f
12	Makemake	Is the third largest dwaft planet	111690	0.5	f
10	2007 OR10	Is a dwaft planet also known as gonggong	201845	0.3	f
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.star (star_id, name, constellation, magnitude, distance_in_light_years, galaxy_id) FROM stdin;
4	Betelgeuse	Orion	0.580	643	1
8	Achernar	Eridanus	0.445	140	1
5	Capella	Auriga	-0.480	43	1
3	Procyon	Canis Minor	2.680	12	1
7	Rigel	Orion	-7.840	864	1
6	Vega	Lyra	0.030	25	1
9	Canopus	Carina	-0.720	310	1
2	Sirius	Canis Major	-1.330	8611	1
1	Arcturus	Bootes	-0.040	37	1
10	Rigel Kentaurus	Centaurus	5.850	643	1
\.


--
-- Data for Name: traditional_moon_view; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.traditional_moon_view (traditional_moon_view_id, name, time_of_the_year) FROM stdin;
1	Full Wolf Moon	January
2	Full Snow Moon	Febuary
3	Full Worm Moon	March
4	Full Pink Moon	April
5	Full Flower Moon	May
6	Full Strawberry Moon	June
7	Full Buck Moon	July
8	Full Sturgeon Moon	August
9	Harverst Moon	September
10	Full Hunters Moon	October
11	Full Beaver Moon	November
12	Full Cold Moon	December
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: traditional_moon_view_traditional_moon_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.traditional_moon_view_traditional_moon_view_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: traditional_moon_view traditional_moon_view_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traditional_moon_view
    ADD CONSTRAINT traditional_moon_view_name_key UNIQUE (name);


--
-- Name: traditional_moon_view traditional_moon_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.traditional_moon_view
    ADD CONSTRAINT traditional_moon_view_pkey PRIMARY KEY (traditional_moon_view_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

