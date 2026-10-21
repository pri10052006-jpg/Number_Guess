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
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 774);
INSERT INTO public.games VALUES (2, 1, 590);
INSERT INTO public.games VALUES (3, 2, 619);
INSERT INTO public.games VALUES (4, 2, 956);
INSERT INTO public.games VALUES (5, 1, 91);
INSERT INTO public.games VALUES (6, 1, 913);
INSERT INTO public.games VALUES (7, 1, 181);
INSERT INTO public.games VALUES (8, 3, 988);
INSERT INTO public.games VALUES (9, 3, 193);
INSERT INTO public.games VALUES (10, 4, 85);
INSERT INTO public.games VALUES (11, 4, 556);
INSERT INTO public.games VALUES (12, 3, 414);
INSERT INTO public.games VALUES (13, 3, 634);
INSERT INTO public.games VALUES (14, 3, 141);
INSERT INTO public.games VALUES (15, 5, 11);
INSERT INTO public.games VALUES (16, 6, 191);
INSERT INTO public.games VALUES (17, 6, 924);
INSERT INTO public.games VALUES (18, 7, 514);
INSERT INTO public.games VALUES (19, 7, 2);
INSERT INTO public.games VALUES (20, 6, 80);
INSERT INTO public.games VALUES (21, 6, 781);
INSERT INTO public.games VALUES (22, 6, 27);
INSERT INTO public.games VALUES (23, 8, 162);
INSERT INTO public.games VALUES (24, 8, 148);
INSERT INTO public.games VALUES (25, 9, 586);
INSERT INTO public.games VALUES (26, 9, 745);
INSERT INTO public.games VALUES (27, 8, 404);
INSERT INTO public.games VALUES (28, 8, 421);
INSERT INTO public.games VALUES (29, 8, 472);
INSERT INTO public.games VALUES (30, 10, 65);
INSERT INTO public.games VALUES (31, 10, 626);
INSERT INTO public.games VALUES (32, 11, 993);
INSERT INTO public.games VALUES (33, 11, 680);
INSERT INTO public.games VALUES (34, 10, 232);
INSERT INTO public.games VALUES (35, 10, 907);
INSERT INTO public.games VALUES (36, 10, 179);
INSERT INTO public.games VALUES (37, 12, 70);
INSERT INTO public.games VALUES (38, 12, 358);
INSERT INTO public.games VALUES (39, 13, 64);
INSERT INTO public.games VALUES (40, 13, 432);
INSERT INTO public.games VALUES (41, 12, 108);
INSERT INTO public.games VALUES (42, 12, 289);
INSERT INTO public.games VALUES (43, 12, 767);
INSERT INTO public.games VALUES (44, 14, 784);
INSERT INTO public.games VALUES (45, 14, 870);
INSERT INTO public.games VALUES (46, 15, 210);
INSERT INTO public.games VALUES (47, 15, 911);
INSERT INTO public.games VALUES (48, 14, 948);
INSERT INTO public.games VALUES (49, 14, 112);
INSERT INTO public.games VALUES (50, 14, 350);
INSERT INTO public.games VALUES (51, 16, 11);
INSERT INTO public.games VALUES (52, 17, 526);
INSERT INTO public.games VALUES (53, 17, 241);
INSERT INTO public.games VALUES (54, 18, 28);
INSERT INTO public.games VALUES (55, 18, 164);
INSERT INTO public.games VALUES (56, 17, 543);
INSERT INTO public.games VALUES (57, 17, 86);
INSERT INTO public.games VALUES (58, 17, 454);
INSERT INTO public.games VALUES (59, 19, 611);
INSERT INTO public.games VALUES (60, 19, 203);
INSERT INTO public.games VALUES (61, 20, 766);
INSERT INTO public.games VALUES (62, 20, 469);
INSERT INTO public.games VALUES (63, 19, 344);
INSERT INTO public.games VALUES (64, 19, 728);
INSERT INTO public.games VALUES (65, 19, 755);
INSERT INTO public.games VALUES (66, 21, 322);
INSERT INTO public.games VALUES (67, 21, 399);
INSERT INTO public.games VALUES (68, 22, 791);
INSERT INTO public.games VALUES (69, 22, 953);
INSERT INTO public.games VALUES (70, 21, 777);
INSERT INTO public.games VALUES (71, 21, 24);
INSERT INTO public.games VALUES (72, 21, 437);
INSERT INTO public.games VALUES (73, 23, 224);
INSERT INTO public.games VALUES (74, 23, 332);
INSERT INTO public.games VALUES (75, 24, 245);
INSERT INTO public.games VALUES (76, 24, 102);
INSERT INTO public.games VALUES (77, 23, 578);
INSERT INTO public.games VALUES (78, 23, 775);
INSERT INTO public.games VALUES (79, 23, 714);
INSERT INTO public.games VALUES (80, 25, 4);
INSERT INTO public.games VALUES (81, 25, 367);
INSERT INTO public.games VALUES (82, 26, 294);
INSERT INTO public.games VALUES (83, 26, 503);
INSERT INTO public.games VALUES (84, 25, 97);
INSERT INTO public.games VALUES (85, 25, 611);
INSERT INTO public.games VALUES (86, 25, 548);
INSERT INTO public.games VALUES (87, 27, 161);
INSERT INTO public.games VALUES (88, 27, 16);
INSERT INTO public.games VALUES (89, 28, 177);
INSERT INTO public.games VALUES (90, 28, 917);
INSERT INTO public.games VALUES (91, 27, 611);
INSERT INTO public.games VALUES (92, 27, 329);
INSERT INTO public.games VALUES (93, 27, 697);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1792586895549');
INSERT INTO public.users VALUES (2, 'user_1792586895548');
INSERT INTO public.users VALUES (3, 'user_1792586930660');
INSERT INTO public.users VALUES (4, 'user_1792586930659');
INSERT INTO public.users VALUES (5, 'priya');
INSERT INTO public.users VALUES (6, 'user_1792587096535');
INSERT INTO public.users VALUES (7, 'user_1792587096534');
INSERT INTO public.users VALUES (8, 'user_1792587127744');
INSERT INTO public.users VALUES (9, 'user_1792587127743');
INSERT INTO public.users VALUES (10, 'user_1792587254977');
INSERT INTO public.users VALUES (11, 'user_1792587254976');
INSERT INTO public.users VALUES (12, 'user_1792587340697');
INSERT INTO public.users VALUES (13, 'user_1792587340696');
INSERT INTO public.users VALUES (14, 'user_1792587554581');
INSERT INTO public.users VALUES (15, 'user_1792587554580');
INSERT INTO public.users VALUES (16, 'Priya');
INSERT INTO public.users VALUES (17, 'user_1792587612516');
INSERT INTO public.users VALUES (18, 'user_1792587612515');
INSERT INTO public.users VALUES (19, 'user_1792587721454');
INSERT INTO public.users VALUES (20, 'user_1792587721453');
INSERT INTO public.users VALUES (21, 'user_1792587927979');
INSERT INTO public.users VALUES (22, 'user_1792587927978');
INSERT INTO public.users VALUES (23, 'user_1792588189351');
INSERT INTO public.users VALUES (24, 'user_1792588189350');
INSERT INTO public.users VALUES (25, 'user_1792588281039');
INSERT INTO public.users VALUES (26, 'user_1792588281038');
INSERT INTO public.users VALUES (27, 'user_1792588311542');
INSERT INTO public.users VALUES (28, 'user_1792588311541');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 93, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 28, true);


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

