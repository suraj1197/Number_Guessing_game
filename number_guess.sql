--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    user_id integer,
    games_played integer,
    best_score integer
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES (22, 2, 65);
INSERT INTO public.user_info VALUES (21, 5, 498);
INSERT INTO public.user_info VALUES (23, 0, 0);
INSERT INTO public.user_info VALUES (24, 0, 0);
INSERT INTO public.user_info VALUES (3, 2, 797);
INSERT INTO public.user_info VALUES (2, 5, 538);
INSERT INTO public.user_info VALUES (26, 2, 883);
INSERT INTO public.user_info VALUES (5, 2, 944);
INSERT INTO public.user_info VALUES (25, 5, 171);
INSERT INTO public.user_info VALUES (4, 5, 92);
INSERT INTO public.user_info VALUES (28, 2, 695);
INSERT INTO public.user_info VALUES (7, 2, 41);
INSERT INTO public.user_info VALUES (6, 5, 498);
INSERT INTO public.user_info VALUES (27, 5, 567);
INSERT INTO public.user_info VALUES (9, 2, 987);
INSERT INTO public.user_info VALUES (30, 2, 737);
INSERT INTO public.user_info VALUES (8, 5, 436);
INSERT INTO public.user_info VALUES (29, 5, 584);
INSERT INTO public.user_info VALUES (11, 2, 351);
INSERT INTO public.user_info VALUES (10, 5, 207);
INSERT INTO public.user_info VALUES (32, 2, 389);
INSERT INTO public.user_info VALUES (13, 2, 949);
INSERT INTO public.user_info VALUES (31, 5, 753);
INSERT INTO public.user_info VALUES (12, 5, 500);
INSERT INTO public.user_info VALUES (14, 1, 4);
INSERT INTO public.user_info VALUES (34, 2, 715);
INSERT INTO public.user_info VALUES (16, 2, 527);
INSERT INTO public.user_info VALUES (33, 5, 857);
INSERT INTO public.user_info VALUES (15, 5, 318);
INSERT INTO public.user_info VALUES (36, 2, 477);
INSERT INTO public.user_info VALUES (18, 2, 609);
INSERT INTO public.user_info VALUES (35, 5, 769);
INSERT INTO public.user_info VALUES (17, 5, 754);
INSERT INTO public.user_info VALUES (20, 2, 872);
INSERT INTO public.user_info VALUES (38, 2, 467);
INSERT INTO public.user_info VALUES (19, 5, 621);
INSERT INTO public.user_info VALUES (37, 5, 81);
INSERT INTO public.user_info VALUES (1, 6, 9);
INSERT INTO public.user_info VALUES (40, 2, 591);
INSERT INTO public.user_info VALUES (39, 5, 705);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Suraj');
INSERT INTO public.users VALUES (2, 'user_1755271683956');
INSERT INTO public.users VALUES (3, 'user_1755271683955');
INSERT INTO public.users VALUES (4, 'user_1755271766366');
INSERT INTO public.users VALUES (5, 'user_1755271766365');
INSERT INTO public.users VALUES (6, 'user_1755271795206');
INSERT INTO public.users VALUES (7, 'user_1755271795205');
INSERT INTO public.users VALUES (8, 'user_1755271813865');
INSERT INTO public.users VALUES (9, 'user_1755271813864');
INSERT INTO public.users VALUES (10, 'user_1755271867049');
INSERT INTO public.users VALUES (11, 'user_1755271867048');
INSERT INTO public.users VALUES (12, 'user_1755272190371');
INSERT INTO public.users VALUES (13, 'user_1755272190370');
INSERT INTO public.users VALUES (14, 'natsu');
INSERT INTO public.users VALUES (15, 'user_1755272520802');
INSERT INTO public.users VALUES (16, 'user_1755272520801');
INSERT INTO public.users VALUES (17, 'user_1755272798598');
INSERT INTO public.users VALUES (18, 'user_1755272798597');
INSERT INTO public.users VALUES (19, 'user_1755272835500');
INSERT INTO public.users VALUES (20, 'user_1755272835499');
INSERT INTO public.users VALUES (21, 'user_1755272886242');
INSERT INTO public.users VALUES (22, 'user_1755272886241');
INSERT INTO public.users VALUES (23, 'user_1755272921663');
INSERT INTO public.users VALUES (24, 'user_1755272921662');
INSERT INTO public.users VALUES (25, 'user_1755272936622');
INSERT INTO public.users VALUES (26, 'user_1755272936621');
INSERT INTO public.users VALUES (27, 'user_1755272948657');
INSERT INTO public.users VALUES (28, 'user_1755272948656');
INSERT INTO public.users VALUES (29, 'user_1755272960736');
INSERT INTO public.users VALUES (30, 'user_1755272960735');
INSERT INTO public.users VALUES (31, 'user_1755273238717');
INSERT INTO public.users VALUES (32, 'user_1755273238716');
INSERT INTO public.users VALUES (33, 'user_1755273284814');
INSERT INTO public.users VALUES (34, 'user_1755273284813');
INSERT INTO public.users VALUES (35, 'user_1755273290929');
INSERT INTO public.users VALUES (36, 'user_1755273290928');
INSERT INTO public.users VALUES (37, 'user_1755273296710');
INSERT INTO public.users VALUES (38, 'user_1755273296709');
INSERT INTO public.users VALUES (39, 'user_1755273364771');
INSERT INTO public.users VALUES (40, 'user_1755273364770');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 40, true);


--
-- Name: user_info user_info_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_user_id_key UNIQUE (user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: user_info user_info_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

