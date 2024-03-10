--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 86, 87, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 88, 89, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 87, 89, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 86, 88, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 87, 90, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 89, 91, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 88, 92, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 86, 93, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 89, 94, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 91, 95, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 88, 96, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 92, 97, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 87, 98, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 90, 99, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 93, 100, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 86, 101, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 102, 101, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 103, 92, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 101, 103, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 102, 92, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 103, 104, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 101, 88, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 92, 94, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 102, 86, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 92, 105, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 94, 93, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 86, 106, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 102, 107, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 103, 97, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 104, 108, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 101, 95, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 88, 109, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (86, 'France');
INSERT INTO public.teams VALUES (87, 'Croatia');
INSERT INTO public.teams VALUES (88, 'Belgium');
INSERT INTO public.teams VALUES (89, 'England');
INSERT INTO public.teams VALUES (90, 'Russia');
INSERT INTO public.teams VALUES (91, 'Sweden');
INSERT INTO public.teams VALUES (92, 'Brazil');
INSERT INTO public.teams VALUES (93, 'Uruguay');
INSERT INTO public.teams VALUES (94, 'Colombia');
INSERT INTO public.teams VALUES (95, 'Switzerland');
INSERT INTO public.teams VALUES (96, 'Japan');
INSERT INTO public.teams VALUES (97, 'Mexico');
INSERT INTO public.teams VALUES (98, 'Denmark');
INSERT INTO public.teams VALUES (99, 'Spain');
INSERT INTO public.teams VALUES (100, 'Portugal');
INSERT INTO public.teams VALUES (101, 'Argentina');
INSERT INTO public.teams VALUES (102, 'Germany');
INSERT INTO public.teams VALUES (103, 'Netherlands');
INSERT INTO public.teams VALUES (104, 'Costa Rica');
INSERT INTO public.teams VALUES (105, 'Chile');
INSERT INTO public.teams VALUES (106, 'Nigeria');
INSERT INTO public.teams VALUES (107, 'Algeria');
INSERT INTO public.teams VALUES (108, 'Greece');
INSERT INTO public.teams VALUES (109, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 109, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

