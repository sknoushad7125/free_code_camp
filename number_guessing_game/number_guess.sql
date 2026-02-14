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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    secret_number integer,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 805, 806);
INSERT INTO public.games VALUES (2, 1, 653, 654);
INSERT INTO public.games VALUES (3, 2, 593, 594);
INSERT INTO public.games VALUES (4, 2, 291, 292);
INSERT INTO public.games VALUES (5, 1, 810, 813);
INSERT INTO public.games VALUES (6, 1, 679, 680);
INSERT INTO public.games VALUES (7, 1, 809, 810);
INSERT INTO public.games VALUES (8, 3, 37, 10);
INSERT INTO public.games VALUES (9, 4, 351, 352);
INSERT INTO public.games VALUES (10, 4, 916, 917);
INSERT INTO public.games VALUES (11, 5, 318, 319);
INSERT INTO public.games VALUES (12, 5, 233, 234);
INSERT INTO public.games VALUES (13, 4, 867, 870);
INSERT INTO public.games VALUES (14, 4, 665, 666);
INSERT INTO public.games VALUES (15, 4, 117, 118);
INSERT INTO public.games VALUES (16, 6, 667, 668);
INSERT INTO public.games VALUES (17, 6, 265, 266);
INSERT INTO public.games VALUES (18, 7, 502, 503);
INSERT INTO public.games VALUES (19, 7, 343, 344);
INSERT INTO public.games VALUES (20, 6, 151, 154);
INSERT INTO public.games VALUES (21, 6, 314, 315);
INSERT INTO public.games VALUES (22, 6, 665, 666);
INSERT INTO public.games VALUES (23, 8, 832, 833);
INSERT INTO public.games VALUES (24, 8, 721, 722);
INSERT INTO public.games VALUES (25, 9, 403, 404);
INSERT INTO public.games VALUES (26, 9, 951, 952);
INSERT INTO public.games VALUES (27, 8, 962, 965);
INSERT INTO public.games VALUES (28, 8, 107, 108);
INSERT INTO public.games VALUES (29, 8, 905, 906);
INSERT INTO public.games VALUES (30, 10, 630, 631);
INSERT INTO public.games VALUES (31, 10, 232, 233);
INSERT INTO public.games VALUES (32, 11, 324, 325);
INSERT INTO public.games VALUES (33, 11, 729, 730);
INSERT INTO public.games VALUES (34, 10, 693, 696);
INSERT INTO public.games VALUES (35, 10, 486, 487);
INSERT INTO public.games VALUES (36, 10, 125, 126);
INSERT INTO public.games VALUES (37, 12, 681, 682);
INSERT INTO public.games VALUES (38, 12, 187, 188);
INSERT INTO public.games VALUES (39, 13, 762, 763);
INSERT INTO public.games VALUES (40, 13, 825, 826);
INSERT INTO public.games VALUES (41, 12, 372, 375);
INSERT INTO public.games VALUES (42, 12, 63, 64);
INSERT INTO public.games VALUES (43, 12, 842, 843);
INSERT INTO public.games VALUES (44, 14, 292, 293);
INSERT INTO public.games VALUES (45, 14, 601, 602);
INSERT INTO public.games VALUES (46, 15, 659, 660);
INSERT INTO public.games VALUES (47, 15, 24, 25);
INSERT INTO public.games VALUES (48, 14, 731, 734);
INSERT INTO public.games VALUES (49, 14, 550, 551);
INSERT INTO public.games VALUES (50, 14, 413, 414);
INSERT INTO public.games VALUES (51, 16, 315, 316);
INSERT INTO public.games VALUES (52, 16, 583, 584);
INSERT INTO public.games VALUES (53, 17, 666, 667);
INSERT INTO public.games VALUES (54, 17, 427, 428);
INSERT INTO public.games VALUES (55, 16, 724, 727);
INSERT INTO public.games VALUES (56, 16, 950, 951);
INSERT INTO public.games VALUES (57, 16, 160, 161);
INSERT INTO public.games VALUES (58, 18, 742, 743);
INSERT INTO public.games VALUES (59, 18, 794, 795);
INSERT INTO public.games VALUES (60, 19, 215, 216);
INSERT INTO public.games VALUES (61, 19, 175, 176);
INSERT INTO public.games VALUES (62, 18, 505, 508);
INSERT INTO public.games VALUES (63, 18, 209, 210);
INSERT INTO public.games VALUES (64, 18, 580, 581);
INSERT INTO public.games VALUES (65, 20, 575, 576);
INSERT INTO public.games VALUES (66, 20, 362, 363);
INSERT INTO public.games VALUES (67, 21, 33, 34);
INSERT INTO public.games VALUES (68, 21, 501, 502);
INSERT INTO public.games VALUES (69, 20, 46, 49);
INSERT INTO public.games VALUES (70, 20, 627, 628);
INSERT INTO public.games VALUES (71, 20, 281, 282);
INSERT INTO public.games VALUES (72, 22, 557, 558);
INSERT INTO public.games VALUES (73, 22, 151, 152);
INSERT INTO public.games VALUES (74, 23, 534, 535);
INSERT INTO public.games VALUES (75, 23, 635, 636);
INSERT INTO public.games VALUES (76, 22, 137, 140);
INSERT INTO public.games VALUES (77, 22, 208, 209);
INSERT INTO public.games VALUES (78, 22, 360, 361);
INSERT INTO public.games VALUES (79, 24, 629, 630);
INSERT INTO public.games VALUES (80, 24, 80, 81);
INSERT INTO public.games VALUES (81, 25, 778, 779);
INSERT INTO public.games VALUES (82, 25, 192, 193);
INSERT INTO public.games VALUES (83, 24, 805, 808);
INSERT INTO public.games VALUES (84, 24, 814, 815);
INSERT INTO public.games VALUES (85, 24, 481, 482);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1771065477700');
INSERT INTO public.users VALUES (2, 'user_1771065477699');
INSERT INTO public.users VALUES (3, 'noushad');
INSERT INTO public.users VALUES (4, 'user_1771065565240');
INSERT INTO public.users VALUES (5, 'user_1771065565239');
INSERT INTO public.users VALUES (6, 'user_1771065866522');
INSERT INTO public.users VALUES (7, 'user_1771065866521');
INSERT INTO public.users VALUES (8, 'user_1771066071489');
INSERT INTO public.users VALUES (9, 'user_1771066071488');
INSERT INTO public.users VALUES (10, 'user_1771066105398');
INSERT INTO public.users VALUES (11, 'user_1771066105397');
INSERT INTO public.users VALUES (12, 'user_1771066279895');
INSERT INTO public.users VALUES (13, 'user_1771066279894');
INSERT INTO public.users VALUES (14, 'user_1771066369520');
INSERT INTO public.users VALUES (15, 'user_1771066369519');
INSERT INTO public.users VALUES (16, 'user_1771066444168');
INSERT INTO public.users VALUES (17, 'user_1771066444167');
INSERT INTO public.users VALUES (18, 'user_1771066482510');
INSERT INTO public.users VALUES (19, 'user_1771066482509');
INSERT INTO public.users VALUES (20, 'user_1771066548536');
INSERT INTO public.users VALUES (21, 'user_1771066548535');
INSERT INTO public.users VALUES (22, 'user_1771066600569');
INSERT INTO public.users VALUES (23, 'user_1771066600568');
INSERT INTO public.users VALUES (24, 'user_1771066613349');
INSERT INTO public.users VALUES (25, 'user_1771066613348');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 85, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

