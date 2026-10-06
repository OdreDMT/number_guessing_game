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
-- Name: won_user_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.won_user_games (
    won_game_id integer NOT NULL,
    user_id integer,
    guess_count integer
);


ALTER TABLE public.won_user_games OWNER TO freecodecamp;

--
-- Name: won_user_games_won_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.won_user_games_won_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.won_user_games_won_game_id_seq OWNER TO freecodecamp;

--
-- Name: won_user_games_won_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.won_user_games_won_game_id_seq OWNED BY public.won_user_games.won_game_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: won_user_games won_game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games ALTER COLUMN won_game_id SET DEFAULT nextval('public.won_user_games_won_game_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (6, 'Odre');
INSERT INTO public.users VALUES (7, 'user_1791210907779');
INSERT INTO public.users VALUES (8, 'user_1791210907778');
INSERT INTO public.users VALUES (9, 'user_1791211146822');
INSERT INTO public.users VALUES (10, 'user_1791211146821');
INSERT INTO public.users VALUES (11, 'user_1791211657171');
INSERT INTO public.users VALUES (12, 'user_1791211657170');
INSERT INTO public.users VALUES (13, 'user_1791211949198');
INSERT INTO public.users VALUES (14, 'user_1791211949197');
INSERT INTO public.users VALUES (15, 'user_1791211952556');
INSERT INTO public.users VALUES (16, 'user_1791211952555');
INSERT INTO public.users VALUES (17, 'user_1791212100974');
INSERT INTO public.users VALUES (18, 'user_1791212100973');
INSERT INTO public.users VALUES (19, 'user_1791212301978');
INSERT INTO public.users VALUES (20, 'user_1791212301977');
INSERT INTO public.users VALUES (21, 'user_1791212627058');
INSERT INTO public.users VALUES (22, 'user_1791212627057');
INSERT INTO public.users VALUES (23, 'user_1791212793915');
INSERT INTO public.users VALUES (24, 'user_1791212793914');
INSERT INTO public.users VALUES (25, 'user_1791212870014');
INSERT INTO public.users VALUES (26, 'user_1791212870013');
INSERT INTO public.users VALUES (27, 'user_1791212915397');
INSERT INTO public.users VALUES (28, 'user_1791212915396');
INSERT INTO public.users VALUES (58, 'user_1791223402708');
INSERT INTO public.users VALUES (59, 'user_1791223402707');
INSERT INTO public.users VALUES (60, 'user_1791223467831');
INSERT INTO public.users VALUES (61, 'user_1791223467830');
INSERT INTO public.users VALUES (62, 'user_1791223797733');
INSERT INTO public.users VALUES (63, 'user_1791223797732');
INSERT INTO public.users VALUES (64, 'user_1791223834827');
INSERT INTO public.users VALUES (65, 'user_1791223834826');
INSERT INTO public.users VALUES (66, 'user_1791223866176');
INSERT INTO public.users VALUES (67, 'user_1791223866175');
INSERT INTO public.users VALUES (68, 'user_1791223887070');
INSERT INTO public.users VALUES (69, 'user_1791223887069');
INSERT INTO public.users VALUES (70, 'user_1791223889860');
INSERT INTO public.users VALUES (71, 'user_1791223889859');
INSERT INTO public.users VALUES (72, 'user_1791223892621');
INSERT INTO public.users VALUES (73, 'user_1791223892620');
INSERT INTO public.users VALUES (74, 'user_1791223895161');
INSERT INTO public.users VALUES (75, 'user_1791223895160');
INSERT INTO public.users VALUES (76, 'user_1791223897116');
INSERT INTO public.users VALUES (77, 'user_1791223897115');
INSERT INTO public.users VALUES (78, 'user_1791223899055');
INSERT INTO public.users VALUES (79, 'user_1791223899054');
INSERT INTO public.users VALUES (80, 'user_1791223916873');
INSERT INTO public.users VALUES (81, 'user_1791223916872');
INSERT INTO public.users VALUES (82, 'user_1791223919647');
INSERT INTO public.users VALUES (83, 'user_1791223919646');
INSERT INTO public.users VALUES (84, 'user_1791223924915');
INSERT INTO public.users VALUES (85, 'user_1791223924914');
INSERT INTO public.users VALUES (86, 'user_1791223928209');
INSERT INTO public.users VALUES (87, 'user_1791223928208');
INSERT INTO public.users VALUES (88, 'user_1791224183171');
INSERT INTO public.users VALUES (89, 'user_1791224183170');
INSERT INTO public.users VALUES (90, 'user_1791224250208');
INSERT INTO public.users VALUES (91, 'user_1791224250207');
INSERT INTO public.users VALUES (92, 'user_1791224258278');
INSERT INTO public.users VALUES (93, 'user_1791224258277');
INSERT INTO public.users VALUES (94, 'user_1791224261432');
INSERT INTO public.users VALUES (95, 'user_1791224261431');
INSERT INTO public.users VALUES (96, 'user_1791224269363');
INSERT INTO public.users VALUES (97, 'user_1791224269362');
INSERT INTO public.users VALUES (98, 'user_1791224271724');
INSERT INTO public.users VALUES (99, 'user_1791224271723');
INSERT INTO public.users VALUES (100, 'user_1791224274474');
INSERT INTO public.users VALUES (101, 'user_1791224274473');
INSERT INTO public.users VALUES (102, 'user_1791224277510');
INSERT INTO public.users VALUES (103, 'user_1791224277509');
INSERT INTO public.users VALUES (104, 'user_1791224281255');
INSERT INTO public.users VALUES (105, 'user_1791224281254');
INSERT INTO public.users VALUES (106, 'user_1791224292007');
INSERT INTO public.users VALUES (107, 'user_1791224292006');
INSERT INTO public.users VALUES (108, 'user_1791224295620');
INSERT INTO public.users VALUES (109, 'user_1791224295619');
INSERT INTO public.users VALUES (110, 'user_1791224307411');
INSERT INTO public.users VALUES (111, 'user_1791224307410');
INSERT INTO public.users VALUES (112, 'user_1791224325597');
INSERT INTO public.users VALUES (113, 'user_1791224325596');
INSERT INTO public.users VALUES (114, 'user_1791224328554');
INSERT INTO public.users VALUES (115, 'user_1791224328553');
INSERT INTO public.users VALUES (116, 'user_1791224335391');
INSERT INTO public.users VALUES (117, 'user_1791224335390');
INSERT INTO public.users VALUES (118, 'user_1791224417315');
INSERT INTO public.users VALUES (119, 'user_1791224417314');
INSERT INTO public.users VALUES (120, 'user_1791224597519');
INSERT INTO public.users VALUES (121, 'user_1791224597518');
INSERT INTO public.users VALUES (122, 'user_1791224606357');
INSERT INTO public.users VALUES (123, 'user_1791224606356');
INSERT INTO public.users VALUES (124, 'user_1791224614663');
INSERT INTO public.users VALUES (125, 'user_1791224614662');
INSERT INTO public.users VALUES (126, 'user_1791224625390');
INSERT INTO public.users VALUES (127, 'user_1791224625389');
INSERT INTO public.users VALUES (128, 'user_1791224628558');
INSERT INTO public.users VALUES (129, 'user_1791224628557');
INSERT INTO public.users VALUES (130, 'user_1791224631126');
INSERT INTO public.users VALUES (131, 'user_1791224631125');
INSERT INTO public.users VALUES (132, 'user_1791224633031');
INSERT INTO public.users VALUES (133, 'user_1791224633030');
INSERT INTO public.users VALUES (134, 'user_1791224634925');
INSERT INTO public.users VALUES (135, 'user_1791224634924');
INSERT INTO public.users VALUES (136, 'user_1791224636810');
INSERT INTO public.users VALUES (137, 'user_1791224636809');
INSERT INTO public.users VALUES (138, 'user_1791224638594');
INSERT INTO public.users VALUES (139, 'user_1791224638593');
INSERT INTO public.users VALUES (140, 'user_1791225099702');
INSERT INTO public.users VALUES (141, 'user_1791225099701');
INSERT INTO public.users VALUES (142, 'user_1791225308715');
INSERT INTO public.users VALUES (143, 'user_1791225308714');
INSERT INTO public.users VALUES (144, 'user_1791225317404');
INSERT INTO public.users VALUES (145, 'user_1791225317403');
INSERT INTO public.users VALUES (146, 'user_1791225322758');
INSERT INTO public.users VALUES (147, 'user_1791225322757');
INSERT INTO public.users VALUES (148, 'user_1791225342803');
INSERT INTO public.users VALUES (149, 'user_1791225342802');
INSERT INTO public.users VALUES (150, 'user_1791225392628');
INSERT INTO public.users VALUES (151, 'user_1791225392627');
INSERT INTO public.users VALUES (152, 'user_1791225396455');
INSERT INTO public.users VALUES (153, 'user_1791225396454');
INSERT INTO public.users VALUES (154, 'user_1791225398096');
INSERT INTO public.users VALUES (155, 'user_1791225398095');
INSERT INTO public.users VALUES (156, 'user_1791225425584');
INSERT INTO public.users VALUES (157, 'user_1791225425583');
INSERT INTO public.users VALUES (158, 'user_1791225431451');
INSERT INTO public.users VALUES (159, 'user_1791225431450');
INSERT INTO public.users VALUES (160, 'user_1791225435127');
INSERT INTO public.users VALUES (161, 'user_1791225435126');
INSERT INTO public.users VALUES (162, 'user_1791225447787');
INSERT INTO public.users VALUES (163, 'user_1791225447786');
INSERT INTO public.users VALUES (164, 'user_1791225452852');
INSERT INTO public.users VALUES (165, 'user_1791225452851');
INSERT INTO public.users VALUES (166, 'user_1791225483545');
INSERT INTO public.users VALUES (167, 'user_1791225483544');
INSERT INTO public.users VALUES (168, 'user_1791225525844');
INSERT INTO public.users VALUES (169, 'user_1791225525843');
INSERT INTO public.users VALUES (170, 'user_1791225582821');
INSERT INTO public.users VALUES (171, 'user_1791225582820');
INSERT INTO public.users VALUES (172, 'testuser');
INSERT INTO public.users VALUES (173, 'user_1791226619572');
INSERT INTO public.users VALUES (174, 'user_1791226619571');
INSERT INTO public.users VALUES (175, 'user_1791226906944');
INSERT INTO public.users VALUES (176, 'user_1791226906943');
INSERT INTO public.users VALUES (177, 'user_1791226920451');
INSERT INTO public.users VALUES (178, 'user_1791226920450');
INSERT INTO public.users VALUES (179, 'user_1791226922535');
INSERT INTO public.users VALUES (180, 'user_1791226922534');
INSERT INTO public.users VALUES (181, 'user_1791226924613');
INSERT INTO public.users VALUES (182, 'user_1791226924612');
INSERT INTO public.users VALUES (183, 'user_1791226926608');
INSERT INTO public.users VALUES (184, 'user_1791226926607');
INSERT INTO public.users VALUES (185, 'user_1791227001408');
INSERT INTO public.users VALUES (186, 'user_1791227001407');
INSERT INTO public.users VALUES (187, 'user_1791227399036');
INSERT INTO public.users VALUES (188, 'user_1791227399035');
INSERT INTO public.users VALUES (189, 'user_1791227412376');
INSERT INTO public.users VALUES (190, 'user_1791227412375');
INSERT INTO public.users VALUES (191, 'user_1791227415380');
INSERT INTO public.users VALUES (192, 'user_1791227415379');
INSERT INTO public.users VALUES (193, 'user_1791227417577');
INSERT INTO public.users VALUES (194, 'user_1791227417576');
INSERT INTO public.users VALUES (195, 'user_1791227444528');
INSERT INTO public.users VALUES (196, 'user_1791227444527');
INSERT INTO public.users VALUES (197, 'user_1791227465092');
INSERT INTO public.users VALUES (198, 'user_1791227465091');
INSERT INTO public.users VALUES (199, 'user_1791227467747');
INSERT INTO public.users VALUES (200, 'user_1791227467746');
INSERT INTO public.users VALUES (201, 'user_1791227470353');
INSERT INTO public.users VALUES (202, 'user_1791227470352');
INSERT INTO public.users VALUES (203, 'user_1791227557845');
INSERT INTO public.users VALUES (204, 'user_1791227557844');
INSERT INTO public.users VALUES (205, 'user_1791227561021');
INSERT INTO public.users VALUES (206, 'user_1791227561020');
INSERT INTO public.users VALUES (220, 'user_1791315743361');
INSERT INTO public.users VALUES (221, 'user_1791315743360');
INSERT INTO public.users VALUES (222, 'user_1791315782507');
INSERT INTO public.users VALUES (223, 'user_1791315782506');
INSERT INTO public.users VALUES (224, 'user_1791316035337');
INSERT INTO public.users VALUES (225, 'user_1791316035336');
INSERT INTO public.users VALUES (226, 'user_1791316051747');
INSERT INTO public.users VALUES (227, 'user_1791316051746');
INSERT INTO public.users VALUES (228, 'user_1791316330135');
INSERT INTO public.users VALUES (229, 'user_1791316330134');
INSERT INTO public.users VALUES (230, 'user_1791316381235');
INSERT INTO public.users VALUES (231, 'user_1791316381234');
INSERT INTO public.users VALUES (232, 'user_1791316413290');
INSERT INTO public.users VALUES (233, 'user_1791316413289');
INSERT INTO public.users VALUES (234, 'user_1791316424888');
INSERT INTO public.users VALUES (235, 'user_1791316424887');
INSERT INTO public.users VALUES (236, 'user_1791316500236');
INSERT INTO public.users VALUES (237, 'user_1791316500235');
INSERT INTO public.users VALUES (238, 'user_1791316509933');
INSERT INTO public.users VALUES (239, 'user_1791316509932');
INSERT INTO public.users VALUES (240, 'user_1791316513156');
INSERT INTO public.users VALUES (241, 'user_1791316513155');
INSERT INTO public.users VALUES (242, 'user_1791316516330');
INSERT INTO public.users VALUES (243, 'user_1791316516329');
INSERT INTO public.users VALUES (244, 'user_1791316524639');
INSERT INTO public.users VALUES (245, 'user_1791316524638');
INSERT INTO public.users VALUES (246, 'user_1791316543954');
INSERT INTO public.users VALUES (247, 'user_1791316543953');
INSERT INTO public.users VALUES (248, 'user_1791316575875');
INSERT INTO public.users VALUES (249, 'user_1791316575874');
INSERT INTO public.users VALUES (250, 'user_1791316585032');
INSERT INTO public.users VALUES (251, 'user_1791316585031');
INSERT INTO public.users VALUES (252, 'user_1791316603089');
INSERT INTO public.users VALUES (253, 'user_1791316603088');
INSERT INTO public.users VALUES (254, 'user_1791316606588');
INSERT INTO public.users VALUES (255, 'user_1791316606587');
INSERT INTO public.users VALUES (256, 'user_1791316609488');
INSERT INTO public.users VALUES (257, 'user_1791316609487');
INSERT INTO public.users VALUES (258, 'user_1791316612167');
INSERT INTO public.users VALUES (259, 'user_1791316612166');
INSERT INTO public.users VALUES (260, 'user_1791316614196');
INSERT INTO public.users VALUES (261, 'user_1791316614195');
INSERT INTO public.users VALUES (262, 'user_1791316616331');
INSERT INTO public.users VALUES (263, 'user_1791316616330');
INSERT INTO public.users VALUES (264, 'user_1791316685862');
INSERT INTO public.users VALUES (265, 'user_1791316685861');
INSERT INTO public.users VALUES (266, 'user_1791316700759');
INSERT INTO public.users VALUES (267, 'user_1791316700758');
INSERT INTO public.users VALUES (268, 'user_1791316706754');
INSERT INTO public.users VALUES (269, 'user_1791316706753');
INSERT INTO public.users VALUES (270, 'user_1791316798240');
INSERT INTO public.users VALUES (271, 'user_1791316798239');
INSERT INTO public.users VALUES (272, 'user_1791316924653');
INSERT INTO public.users VALUES (273, 'user_1791316924652');
INSERT INTO public.users VALUES (274, 'user_1791316975556');
INSERT INTO public.users VALUES (275, 'user_1791316975555');


--
-- Data for Name: won_user_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.won_user_games VALUES (15, 6, 11);
INSERT INTO public.won_user_games VALUES (16, 7, 55);
INSERT INTO public.won_user_games VALUES (17, 7, 411);
INSERT INTO public.won_user_games VALUES (18, 8, 346);
INSERT INTO public.won_user_games VALUES (19, 8, 319);
INSERT INTO public.won_user_games VALUES (20, 7, 182);
INSERT INTO public.won_user_games VALUES (21, 7, 181);
INSERT INTO public.won_user_games VALUES (22, 7, 543);
INSERT INTO public.won_user_games VALUES (23, 9, 616);
INSERT INTO public.won_user_games VALUES (24, 9, 615);
INSERT INTO public.won_user_games VALUES (25, 10, 304);
INSERT INTO public.won_user_games VALUES (26, 10, 851);
INSERT INTO public.won_user_games VALUES (27, 9, 105);
INSERT INTO public.won_user_games VALUES (28, 9, 953);
INSERT INTO public.won_user_games VALUES (29, 9, 944);
INSERT INTO public.won_user_games VALUES (30, 6, 13);
INSERT INTO public.won_user_games VALUES (31, 11, 193);
INSERT INTO public.won_user_games VALUES (32, 11, 696);
INSERT INTO public.won_user_games VALUES (33, 12, 831);
INSERT INTO public.won_user_games VALUES (34, 12, 735);
INSERT INTO public.won_user_games VALUES (35, 11, 357);
INSERT INTO public.won_user_games VALUES (36, 11, 555);
INSERT INTO public.won_user_games VALUES (37, 11, 863);
INSERT INTO public.won_user_games VALUES (38, 13, 586);
INSERT INTO public.won_user_games VALUES (39, 13, 750);
INSERT INTO public.won_user_games VALUES (40, 14, 319);
INSERT INTO public.won_user_games VALUES (41, 14, 333);
INSERT INTO public.won_user_games VALUES (42, 13, 719);
INSERT INTO public.won_user_games VALUES (43, 13, 780);
INSERT INTO public.won_user_games VALUES (44, 13, 1000);
INSERT INTO public.won_user_games VALUES (45, 15, 370);
INSERT INTO public.won_user_games VALUES (46, 15, 364);
INSERT INTO public.won_user_games VALUES (47, 16, 714);
INSERT INTO public.won_user_games VALUES (48, 16, 623);
INSERT INTO public.won_user_games VALUES (49, 15, 269);
INSERT INTO public.won_user_games VALUES (50, 15, 916);
INSERT INTO public.won_user_games VALUES (51, 15, 699);
INSERT INTO public.won_user_games VALUES (52, 17, 153);
INSERT INTO public.won_user_games VALUES (53, 17, 799);
INSERT INTO public.won_user_games VALUES (54, 18, 213);
INSERT INTO public.won_user_games VALUES (55, 18, 804);
INSERT INTO public.won_user_games VALUES (56, 17, 283);
INSERT INTO public.won_user_games VALUES (57, 17, 288);
INSERT INTO public.won_user_games VALUES (58, 17, 778);
INSERT INTO public.won_user_games VALUES (59, 19, 254);
INSERT INTO public.won_user_games VALUES (60, 19, 356);
INSERT INTO public.won_user_games VALUES (61, 20, 883);
INSERT INTO public.won_user_games VALUES (62, 20, 923);
INSERT INTO public.won_user_games VALUES (63, 19, 977);
INSERT INTO public.won_user_games VALUES (64, 19, 123);
INSERT INTO public.won_user_games VALUES (65, 19, 247);
INSERT INTO public.won_user_games VALUES (66, 21, 504);
INSERT INTO public.won_user_games VALUES (67, 21, 199);
INSERT INTO public.won_user_games VALUES (68, 22, 901);
INSERT INTO public.won_user_games VALUES (69, 22, 674);
INSERT INTO public.won_user_games VALUES (70, 21, 921);
INSERT INTO public.won_user_games VALUES (71, 21, 342);
INSERT INTO public.won_user_games VALUES (72, 21, 675);
INSERT INTO public.won_user_games VALUES (73, 23, 657);
INSERT INTO public.won_user_games VALUES (74, 23, 639);
INSERT INTO public.won_user_games VALUES (75, 24, 978);
INSERT INTO public.won_user_games VALUES (76, 24, 508);
INSERT INTO public.won_user_games VALUES (77, 23, 683);
INSERT INTO public.won_user_games VALUES (78, 23, 670);
INSERT INTO public.won_user_games VALUES (79, 23, 104);
INSERT INTO public.won_user_games VALUES (80, 25, 275);
INSERT INTO public.won_user_games VALUES (81, 25, 779);
INSERT INTO public.won_user_games VALUES (82, 26, 137);
INSERT INTO public.won_user_games VALUES (83, 26, 241);
INSERT INTO public.won_user_games VALUES (84, 25, 575);
INSERT INTO public.won_user_games VALUES (85, 25, 681);
INSERT INTO public.won_user_games VALUES (86, 25, 649);
INSERT INTO public.won_user_games VALUES (87, 27, 186);
INSERT INTO public.won_user_games VALUES (88, 27, 486);
INSERT INTO public.won_user_games VALUES (89, 28, 15);
INSERT INTO public.won_user_games VALUES (90, 28, 665);
INSERT INTO public.won_user_games VALUES (91, 27, 182);
INSERT INTO public.won_user_games VALUES (92, 27, 529);
INSERT INTO public.won_user_games VALUES (93, 27, 24);
INSERT INTO public.won_user_games VALUES (113, 58, 884);
INSERT INTO public.won_user_games VALUES (114, 58, 503);
INSERT INTO public.won_user_games VALUES (115, 59, 378);
INSERT INTO public.won_user_games VALUES (116, 59, 111);
INSERT INTO public.won_user_games VALUES (117, 58, 285);
INSERT INTO public.won_user_games VALUES (118, 58, 471);
INSERT INTO public.won_user_games VALUES (119, 58, 61);
INSERT INTO public.won_user_games VALUES (120, 60, 216);
INSERT INTO public.won_user_games VALUES (121, 60, 178);
INSERT INTO public.won_user_games VALUES (122, 61, 255);
INSERT INTO public.won_user_games VALUES (123, 61, 327);
INSERT INTO public.won_user_games VALUES (124, 60, 261);
INSERT INTO public.won_user_games VALUES (125, 60, 63);
INSERT INTO public.won_user_games VALUES (126, 60, 213);
INSERT INTO public.won_user_games VALUES (127, 62, 208);
INSERT INTO public.won_user_games VALUES (128, 62, 517);
INSERT INTO public.won_user_games VALUES (129, 63, 327);
INSERT INTO public.won_user_games VALUES (130, 63, 922);
INSERT INTO public.won_user_games VALUES (131, 62, 308);
INSERT INTO public.won_user_games VALUES (132, 62, 296);
INSERT INTO public.won_user_games VALUES (133, 62, 311);
INSERT INTO public.won_user_games VALUES (134, 64, 157);
INSERT INTO public.won_user_games VALUES (135, 64, 63);
INSERT INTO public.won_user_games VALUES (136, 65, 59);
INSERT INTO public.won_user_games VALUES (137, 65, 860);
INSERT INTO public.won_user_games VALUES (138, 64, 131);
INSERT INTO public.won_user_games VALUES (139, 64, 544);
INSERT INTO public.won_user_games VALUES (140, 64, 32);
INSERT INTO public.won_user_games VALUES (141, 66, 787);
INSERT INTO public.won_user_games VALUES (142, 66, 672);
INSERT INTO public.won_user_games VALUES (143, 67, 777);
INSERT INTO public.won_user_games VALUES (144, 67, 527);
INSERT INTO public.won_user_games VALUES (145, 66, 422);
INSERT INTO public.won_user_games VALUES (146, 66, 649);
INSERT INTO public.won_user_games VALUES (147, 66, 80);
INSERT INTO public.won_user_games VALUES (148, 68, 386);
INSERT INTO public.won_user_games VALUES (149, 68, 677);
INSERT INTO public.won_user_games VALUES (150, 69, 390);
INSERT INTO public.won_user_games VALUES (151, 69, 368);
INSERT INTO public.won_user_games VALUES (152, 68, 709);
INSERT INTO public.won_user_games VALUES (153, 68, 872);
INSERT INTO public.won_user_games VALUES (154, 68, 789);
INSERT INTO public.won_user_games VALUES (155, 70, 530);
INSERT INTO public.won_user_games VALUES (156, 70, 341);
INSERT INTO public.won_user_games VALUES (157, 71, 66);
INSERT INTO public.won_user_games VALUES (158, 71, 565);
INSERT INTO public.won_user_games VALUES (159, 70, 632);
INSERT INTO public.won_user_games VALUES (160, 70, 24);
INSERT INTO public.won_user_games VALUES (161, 70, 297);
INSERT INTO public.won_user_games VALUES (162, 72, 882);
INSERT INTO public.won_user_games VALUES (163, 72, 434);
INSERT INTO public.won_user_games VALUES (164, 73, 710);
INSERT INTO public.won_user_games VALUES (165, 73, 683);
INSERT INTO public.won_user_games VALUES (166, 72, 346);
INSERT INTO public.won_user_games VALUES (167, 72, 667);
INSERT INTO public.won_user_games VALUES (168, 72, 5);
INSERT INTO public.won_user_games VALUES (169, 74, 49);
INSERT INTO public.won_user_games VALUES (170, 74, 332);
INSERT INTO public.won_user_games VALUES (171, 75, 989);
INSERT INTO public.won_user_games VALUES (172, 75, 56);
INSERT INTO public.won_user_games VALUES (173, 74, 392);
INSERT INTO public.won_user_games VALUES (174, 74, 371);
INSERT INTO public.won_user_games VALUES (175, 74, 808);
INSERT INTO public.won_user_games VALUES (176, 76, 280);
INSERT INTO public.won_user_games VALUES (177, 76, 206);
INSERT INTO public.won_user_games VALUES (178, 77, 985);
INSERT INTO public.won_user_games VALUES (179, 77, 332);
INSERT INTO public.won_user_games VALUES (180, 76, 238);
INSERT INTO public.won_user_games VALUES (181, 76, 793);
INSERT INTO public.won_user_games VALUES (182, 76, 292);
INSERT INTO public.won_user_games VALUES (183, 78, 165);
INSERT INTO public.won_user_games VALUES (184, 78, 217);
INSERT INTO public.won_user_games VALUES (185, 79, 740);
INSERT INTO public.won_user_games VALUES (186, 79, 644);
INSERT INTO public.won_user_games VALUES (187, 78, 755);
INSERT INTO public.won_user_games VALUES (188, 78, 749);
INSERT INTO public.won_user_games VALUES (189, 78, 806);
INSERT INTO public.won_user_games VALUES (190, 80, 403);
INSERT INTO public.won_user_games VALUES (191, 80, 676);
INSERT INTO public.won_user_games VALUES (192, 81, 468);
INSERT INTO public.won_user_games VALUES (193, 81, 404);
INSERT INTO public.won_user_games VALUES (194, 80, 808);
INSERT INTO public.won_user_games VALUES (195, 80, 481);
INSERT INTO public.won_user_games VALUES (196, 80, 359);
INSERT INTO public.won_user_games VALUES (197, 82, 130);
INSERT INTO public.won_user_games VALUES (198, 82, 566);
INSERT INTO public.won_user_games VALUES (199, 83, 628);
INSERT INTO public.won_user_games VALUES (200, 83, 752);
INSERT INTO public.won_user_games VALUES (201, 82, 169);
INSERT INTO public.won_user_games VALUES (202, 82, 36);
INSERT INTO public.won_user_games VALUES (203, 82, 669);
INSERT INTO public.won_user_games VALUES (204, 84, 507);
INSERT INTO public.won_user_games VALUES (205, 84, 195);
INSERT INTO public.won_user_games VALUES (206, 85, 829);
INSERT INTO public.won_user_games VALUES (207, 85, 250);
INSERT INTO public.won_user_games VALUES (208, 84, 897);
INSERT INTO public.won_user_games VALUES (209, 84, 309);
INSERT INTO public.won_user_games VALUES (210, 84, 257);
INSERT INTO public.won_user_games VALUES (211, 86, 656);
INSERT INTO public.won_user_games VALUES (212, 86, 780);
INSERT INTO public.won_user_games VALUES (213, 87, 849);
INSERT INTO public.won_user_games VALUES (214, 87, 199);
INSERT INTO public.won_user_games VALUES (215, 86, 331);
INSERT INTO public.won_user_games VALUES (216, 86, 555);
INSERT INTO public.won_user_games VALUES (217, 86, 188);
INSERT INTO public.won_user_games VALUES (218, 88, 964);
INSERT INTO public.won_user_games VALUES (219, 88, 6);
INSERT INTO public.won_user_games VALUES (220, 89, 928);
INSERT INTO public.won_user_games VALUES (221, 89, 482);
INSERT INTO public.won_user_games VALUES (222, 88, 485);
INSERT INTO public.won_user_games VALUES (223, 88, 644);
INSERT INTO public.won_user_games VALUES (224, 88, 634);
INSERT INTO public.won_user_games VALUES (225, 90, 994);
INSERT INTO public.won_user_games VALUES (226, 90, 320);
INSERT INTO public.won_user_games VALUES (227, 91, 220);
INSERT INTO public.won_user_games VALUES (228, 91, 161);
INSERT INTO public.won_user_games VALUES (229, 90, 166);
INSERT INTO public.won_user_games VALUES (230, 90, 831);
INSERT INTO public.won_user_games VALUES (231, 90, 997);
INSERT INTO public.won_user_games VALUES (232, 92, 972);
INSERT INTO public.won_user_games VALUES (233, 92, 911);
INSERT INTO public.won_user_games VALUES (234, 93, 231);
INSERT INTO public.won_user_games VALUES (235, 93, 160);
INSERT INTO public.won_user_games VALUES (236, 92, 506);
INSERT INTO public.won_user_games VALUES (237, 92, 609);
INSERT INTO public.won_user_games VALUES (238, 92, 367);
INSERT INTO public.won_user_games VALUES (239, 94, 772);
INSERT INTO public.won_user_games VALUES (240, 94, 747);
INSERT INTO public.won_user_games VALUES (241, 95, 101);
INSERT INTO public.won_user_games VALUES (242, 95, 76);
INSERT INTO public.won_user_games VALUES (243, 94, 759);
INSERT INTO public.won_user_games VALUES (244, 94, 281);
INSERT INTO public.won_user_games VALUES (245, 94, 211);
INSERT INTO public.won_user_games VALUES (246, 96, 324);
INSERT INTO public.won_user_games VALUES (247, 96, 303);
INSERT INTO public.won_user_games VALUES (248, 97, 97);
INSERT INTO public.won_user_games VALUES (249, 97, 715);
INSERT INTO public.won_user_games VALUES (250, 96, 182);
INSERT INTO public.won_user_games VALUES (251, 96, 933);
INSERT INTO public.won_user_games VALUES (252, 96, 705);
INSERT INTO public.won_user_games VALUES (253, 98, 184);
INSERT INTO public.won_user_games VALUES (254, 98, 962);
INSERT INTO public.won_user_games VALUES (255, 99, 138);
INSERT INTO public.won_user_games VALUES (256, 99, 787);
INSERT INTO public.won_user_games VALUES (257, 98, 894);
INSERT INTO public.won_user_games VALUES (258, 98, 724);
INSERT INTO public.won_user_games VALUES (259, 98, 934);
INSERT INTO public.won_user_games VALUES (260, 100, 998);
INSERT INTO public.won_user_games VALUES (261, 100, 541);
INSERT INTO public.won_user_games VALUES (262, 101, 516);
INSERT INTO public.won_user_games VALUES (263, 101, 218);
INSERT INTO public.won_user_games VALUES (264, 100, 719);
INSERT INTO public.won_user_games VALUES (265, 100, 952);
INSERT INTO public.won_user_games VALUES (266, 100, 2);
INSERT INTO public.won_user_games VALUES (267, 102, 993);
INSERT INTO public.won_user_games VALUES (268, 102, 68);
INSERT INTO public.won_user_games VALUES (269, 103, 371);
INSERT INTO public.won_user_games VALUES (270, 103, 397);
INSERT INTO public.won_user_games VALUES (271, 102, 445);
INSERT INTO public.won_user_games VALUES (272, 102, 783);
INSERT INTO public.won_user_games VALUES (273, 102, 989);
INSERT INTO public.won_user_games VALUES (274, 104, 630);
INSERT INTO public.won_user_games VALUES (275, 104, 306);
INSERT INTO public.won_user_games VALUES (276, 105, 15);
INSERT INTO public.won_user_games VALUES (277, 105, 417);
INSERT INTO public.won_user_games VALUES (278, 104, 466);
INSERT INTO public.won_user_games VALUES (279, 104, 138);
INSERT INTO public.won_user_games VALUES (280, 104, 218);
INSERT INTO public.won_user_games VALUES (281, 106, 772);
INSERT INTO public.won_user_games VALUES (282, 106, 514);
INSERT INTO public.won_user_games VALUES (283, 107, 461);
INSERT INTO public.won_user_games VALUES (284, 107, 329);
INSERT INTO public.won_user_games VALUES (285, 106, 994);
INSERT INTO public.won_user_games VALUES (286, 106, 445);
INSERT INTO public.won_user_games VALUES (287, 106, 639);
INSERT INTO public.won_user_games VALUES (288, 108, 324);
INSERT INTO public.won_user_games VALUES (289, 108, 953);
INSERT INTO public.won_user_games VALUES (290, 109, 354);
INSERT INTO public.won_user_games VALUES (291, 109, 509);
INSERT INTO public.won_user_games VALUES (292, 108, 703);
INSERT INTO public.won_user_games VALUES (293, 108, 441);
INSERT INTO public.won_user_games VALUES (294, 108, 194);
INSERT INTO public.won_user_games VALUES (295, 110, 603);
INSERT INTO public.won_user_games VALUES (296, 110, 983);
INSERT INTO public.won_user_games VALUES (297, 111, 567);
INSERT INTO public.won_user_games VALUES (298, 111, 680);
INSERT INTO public.won_user_games VALUES (299, 110, 214);
INSERT INTO public.won_user_games VALUES (300, 110, 558);
INSERT INTO public.won_user_games VALUES (301, 110, 56);
INSERT INTO public.won_user_games VALUES (302, 112, 716);
INSERT INTO public.won_user_games VALUES (303, 112, 952);
INSERT INTO public.won_user_games VALUES (304, 113, 930);
INSERT INTO public.won_user_games VALUES (305, 113, 885);
INSERT INTO public.won_user_games VALUES (306, 112, 960);
INSERT INTO public.won_user_games VALUES (307, 112, 233);
INSERT INTO public.won_user_games VALUES (308, 112, 662);
INSERT INTO public.won_user_games VALUES (309, 114, 468);
INSERT INTO public.won_user_games VALUES (310, 114, 679);
INSERT INTO public.won_user_games VALUES (311, 115, 44);
INSERT INTO public.won_user_games VALUES (312, 115, 486);
INSERT INTO public.won_user_games VALUES (313, 114, 672);
INSERT INTO public.won_user_games VALUES (314, 114, 52);
INSERT INTO public.won_user_games VALUES (315, 114, 359);
INSERT INTO public.won_user_games VALUES (316, 116, 279);
INSERT INTO public.won_user_games VALUES (317, 116, 210);
INSERT INTO public.won_user_games VALUES (318, 117, 16);
INSERT INTO public.won_user_games VALUES (319, 117, 250);
INSERT INTO public.won_user_games VALUES (320, 116, 253);
INSERT INTO public.won_user_games VALUES (321, 116, 549);
INSERT INTO public.won_user_games VALUES (322, 116, 576);
INSERT INTO public.won_user_games VALUES (323, 118, 851);
INSERT INTO public.won_user_games VALUES (324, 118, 824);
INSERT INTO public.won_user_games VALUES (325, 119, 226);
INSERT INTO public.won_user_games VALUES (326, 119, 910);
INSERT INTO public.won_user_games VALUES (327, 118, 169);
INSERT INTO public.won_user_games VALUES (328, 118, 658);
INSERT INTO public.won_user_games VALUES (329, 118, 363);
INSERT INTO public.won_user_games VALUES (330, 120, 554);
INSERT INTO public.won_user_games VALUES (331, 120, 204);
INSERT INTO public.won_user_games VALUES (332, 121, 27);
INSERT INTO public.won_user_games VALUES (333, 121, 656);
INSERT INTO public.won_user_games VALUES (334, 120, 369);
INSERT INTO public.won_user_games VALUES (335, 120, 203);
INSERT INTO public.won_user_games VALUES (336, 120, 656);
INSERT INTO public.won_user_games VALUES (337, 122, 76);
INSERT INTO public.won_user_games VALUES (338, 122, 166);
INSERT INTO public.won_user_games VALUES (339, 123, 140);
INSERT INTO public.won_user_games VALUES (340, 123, 392);
INSERT INTO public.won_user_games VALUES (341, 122, 777);
INSERT INTO public.won_user_games VALUES (342, 122, 143);
INSERT INTO public.won_user_games VALUES (343, 122, 805);
INSERT INTO public.won_user_games VALUES (344, 124, 942);
INSERT INTO public.won_user_games VALUES (345, 124, 375);
INSERT INTO public.won_user_games VALUES (346, 125, 610);
INSERT INTO public.won_user_games VALUES (347, 125, 532);
INSERT INTO public.won_user_games VALUES (348, 124, 544);
INSERT INTO public.won_user_games VALUES (349, 124, 374);
INSERT INTO public.won_user_games VALUES (350, 124, 562);
INSERT INTO public.won_user_games VALUES (351, 126, 552);
INSERT INTO public.won_user_games VALUES (352, 126, 11);
INSERT INTO public.won_user_games VALUES (353, 127, 17);
INSERT INTO public.won_user_games VALUES (354, 127, 359);
INSERT INTO public.won_user_games VALUES (355, 126, 313);
INSERT INTO public.won_user_games VALUES (356, 126, 938);
INSERT INTO public.won_user_games VALUES (357, 126, 929);
INSERT INTO public.won_user_games VALUES (358, 128, 707);
INSERT INTO public.won_user_games VALUES (359, 128, 10);
INSERT INTO public.won_user_games VALUES (360, 129, 473);
INSERT INTO public.won_user_games VALUES (361, 129, 671);
INSERT INTO public.won_user_games VALUES (362, 128, 365);
INSERT INTO public.won_user_games VALUES (363, 128, 899);
INSERT INTO public.won_user_games VALUES (364, 128, 345);
INSERT INTO public.won_user_games VALUES (365, 130, 900);
INSERT INTO public.won_user_games VALUES (366, 130, 574);
INSERT INTO public.won_user_games VALUES (367, 131, 681);
INSERT INTO public.won_user_games VALUES (368, 131, 103);
INSERT INTO public.won_user_games VALUES (369, 130, 601);
INSERT INTO public.won_user_games VALUES (370, 130, 509);
INSERT INTO public.won_user_games VALUES (371, 130, 928);
INSERT INTO public.won_user_games VALUES (372, 132, 611);
INSERT INTO public.won_user_games VALUES (373, 132, 583);
INSERT INTO public.won_user_games VALUES (374, 133, 391);
INSERT INTO public.won_user_games VALUES (375, 133, 821);
INSERT INTO public.won_user_games VALUES (376, 132, 651);
INSERT INTO public.won_user_games VALUES (377, 132, 84);
INSERT INTO public.won_user_games VALUES (378, 132, 159);
INSERT INTO public.won_user_games VALUES (379, 134, 362);
INSERT INTO public.won_user_games VALUES (380, 134, 551);
INSERT INTO public.won_user_games VALUES (381, 135, 101);
INSERT INTO public.won_user_games VALUES (382, 135, 495);
INSERT INTO public.won_user_games VALUES (383, 134, 60);
INSERT INTO public.won_user_games VALUES (384, 134, 976);
INSERT INTO public.won_user_games VALUES (385, 134, 280);
INSERT INTO public.won_user_games VALUES (386, 136, 65);
INSERT INTO public.won_user_games VALUES (387, 136, 414);
INSERT INTO public.won_user_games VALUES (388, 137, 384);
INSERT INTO public.won_user_games VALUES (389, 137, 632);
INSERT INTO public.won_user_games VALUES (390, 136, 226);
INSERT INTO public.won_user_games VALUES (391, 136, 719);
INSERT INTO public.won_user_games VALUES (392, 136, 219);
INSERT INTO public.won_user_games VALUES (393, 138, 955);
INSERT INTO public.won_user_games VALUES (394, 138, 180);
INSERT INTO public.won_user_games VALUES (395, 139, 805);
INSERT INTO public.won_user_games VALUES (396, 139, 722);
INSERT INTO public.won_user_games VALUES (397, 138, 719);
INSERT INTO public.won_user_games VALUES (398, 138, 652);
INSERT INTO public.won_user_games VALUES (399, 138, 883);
INSERT INTO public.won_user_games VALUES (400, 140, 768);
INSERT INTO public.won_user_games VALUES (401, 140, 517);
INSERT INTO public.won_user_games VALUES (402, 141, 366);
INSERT INTO public.won_user_games VALUES (403, 141, 974);
INSERT INTO public.won_user_games VALUES (404, 140, 816);
INSERT INTO public.won_user_games VALUES (405, 140, 700);
INSERT INTO public.won_user_games VALUES (406, 140, 197);
INSERT INTO public.won_user_games VALUES (407, 142, 82);
INSERT INTO public.won_user_games VALUES (408, 142, 497);
INSERT INTO public.won_user_games VALUES (409, 143, 948);
INSERT INTO public.won_user_games VALUES (410, 143, 269);
INSERT INTO public.won_user_games VALUES (411, 142, 268);
INSERT INTO public.won_user_games VALUES (412, 142, 568);
INSERT INTO public.won_user_games VALUES (413, 142, 572);
INSERT INTO public.won_user_games VALUES (414, 144, 161);
INSERT INTO public.won_user_games VALUES (415, 144, 967);
INSERT INTO public.won_user_games VALUES (416, 145, 464);
INSERT INTO public.won_user_games VALUES (417, 145, 616);
INSERT INTO public.won_user_games VALUES (418, 144, 505);
INSERT INTO public.won_user_games VALUES (419, 144, 615);
INSERT INTO public.won_user_games VALUES (420, 144, 716);
INSERT INTO public.won_user_games VALUES (421, 146, 499);
INSERT INTO public.won_user_games VALUES (422, 146, 689);
INSERT INTO public.won_user_games VALUES (423, 147, 888);
INSERT INTO public.won_user_games VALUES (424, 147, 879);
INSERT INTO public.won_user_games VALUES (425, 146, 754);
INSERT INTO public.won_user_games VALUES (426, 146, 159);
INSERT INTO public.won_user_games VALUES (427, 146, 691);
INSERT INTO public.won_user_games VALUES (428, 148, 258);
INSERT INTO public.won_user_games VALUES (429, 148, 248);
INSERT INTO public.won_user_games VALUES (430, 149, 388);
INSERT INTO public.won_user_games VALUES (431, 149, 283);
INSERT INTO public.won_user_games VALUES (432, 148, 661);
INSERT INTO public.won_user_games VALUES (433, 148, 990);
INSERT INTO public.won_user_games VALUES (434, 148, 378);
INSERT INTO public.won_user_games VALUES (435, 150, 809);
INSERT INTO public.won_user_games VALUES (436, 150, 522);
INSERT INTO public.won_user_games VALUES (437, 151, 28);
INSERT INTO public.won_user_games VALUES (438, 151, 811);
INSERT INTO public.won_user_games VALUES (439, 150, 943);
INSERT INTO public.won_user_games VALUES (440, 150, 204);
INSERT INTO public.won_user_games VALUES (441, 150, 13);
INSERT INTO public.won_user_games VALUES (442, 152, 720);
INSERT INTO public.won_user_games VALUES (443, 152, 711);
INSERT INTO public.won_user_games VALUES (444, 153, 449);
INSERT INTO public.won_user_games VALUES (445, 153, 612);
INSERT INTO public.won_user_games VALUES (446, 152, 257);
INSERT INTO public.won_user_games VALUES (447, 152, 628);
INSERT INTO public.won_user_games VALUES (448, 152, 874);
INSERT INTO public.won_user_games VALUES (449, 154, 188);
INSERT INTO public.won_user_games VALUES (450, 154, 780);
INSERT INTO public.won_user_games VALUES (451, 155, 377);
INSERT INTO public.won_user_games VALUES (452, 155, 948);
INSERT INTO public.won_user_games VALUES (453, 154, 877);
INSERT INTO public.won_user_games VALUES (454, 154, 199);
INSERT INTO public.won_user_games VALUES (455, 154, 401);
INSERT INTO public.won_user_games VALUES (456, 156, 238);
INSERT INTO public.won_user_games VALUES (457, 156, 979);
INSERT INTO public.won_user_games VALUES (458, 157, 956);
INSERT INTO public.won_user_games VALUES (459, 157, 423);
INSERT INTO public.won_user_games VALUES (460, 156, 150);
INSERT INTO public.won_user_games VALUES (461, 156, 997);
INSERT INTO public.won_user_games VALUES (462, 156, 550);
INSERT INTO public.won_user_games VALUES (463, 158, 980);
INSERT INTO public.won_user_games VALUES (464, 158, 222);
INSERT INTO public.won_user_games VALUES (465, 159, 793);
INSERT INTO public.won_user_games VALUES (466, 159, 748);
INSERT INTO public.won_user_games VALUES (467, 158, 420);
INSERT INTO public.won_user_games VALUES (468, 158, 421);
INSERT INTO public.won_user_games VALUES (469, 158, 315);
INSERT INTO public.won_user_games VALUES (470, 160, 577);
INSERT INTO public.won_user_games VALUES (471, 160, 247);
INSERT INTO public.won_user_games VALUES (472, 161, 310);
INSERT INTO public.won_user_games VALUES (473, 161, 367);
INSERT INTO public.won_user_games VALUES (474, 160, 470);
INSERT INTO public.won_user_games VALUES (475, 160, 162);
INSERT INTO public.won_user_games VALUES (476, 160, 865);
INSERT INTO public.won_user_games VALUES (477, 162, 549);
INSERT INTO public.won_user_games VALUES (478, 162, 782);
INSERT INTO public.won_user_games VALUES (479, 163, 511);
INSERT INTO public.won_user_games VALUES (480, 163, 547);
INSERT INTO public.won_user_games VALUES (481, 162, 818);
INSERT INTO public.won_user_games VALUES (482, 162, 617);
INSERT INTO public.won_user_games VALUES (483, 162, 140);
INSERT INTO public.won_user_games VALUES (484, 164, 338);
INSERT INTO public.won_user_games VALUES (485, 164, 807);
INSERT INTO public.won_user_games VALUES (486, 165, 591);
INSERT INTO public.won_user_games VALUES (487, 165, 480);
INSERT INTO public.won_user_games VALUES (488, 164, 818);
INSERT INTO public.won_user_games VALUES (489, 164, 13);
INSERT INTO public.won_user_games VALUES (490, 164, 127);
INSERT INTO public.won_user_games VALUES (491, 166, 651);
INSERT INTO public.won_user_games VALUES (492, 166, 455);
INSERT INTO public.won_user_games VALUES (493, 167, 588);
INSERT INTO public.won_user_games VALUES (494, 167, 884);
INSERT INTO public.won_user_games VALUES (495, 166, 178);
INSERT INTO public.won_user_games VALUES (496, 166, 53);
INSERT INTO public.won_user_games VALUES (497, 166, 429);
INSERT INTO public.won_user_games VALUES (498, 168, 942);
INSERT INTO public.won_user_games VALUES (499, 168, 992);
INSERT INTO public.won_user_games VALUES (500, 169, 394);
INSERT INTO public.won_user_games VALUES (501, 169, 477);
INSERT INTO public.won_user_games VALUES (502, 168, 51);
INSERT INTO public.won_user_games VALUES (503, 168, 866);
INSERT INTO public.won_user_games VALUES (504, 168, 933);
INSERT INTO public.won_user_games VALUES (505, 170, 750);
INSERT INTO public.won_user_games VALUES (506, 170, 27);
INSERT INTO public.won_user_games VALUES (507, 171, 633);
INSERT INTO public.won_user_games VALUES (508, 171, 695);
INSERT INTO public.won_user_games VALUES (509, 170, 486);
INSERT INTO public.won_user_games VALUES (510, 170, 586);
INSERT INTO public.won_user_games VALUES (511, 170, 101);
INSERT INTO public.won_user_games VALUES (512, 172, 7);
INSERT INTO public.won_user_games VALUES (513, 173, 519);
INSERT INTO public.won_user_games VALUES (514, 173, 95);
INSERT INTO public.won_user_games VALUES (515, 174, 364);
INSERT INTO public.won_user_games VALUES (516, 174, 486);
INSERT INTO public.won_user_games VALUES (517, 173, 798);
INSERT INTO public.won_user_games VALUES (518, 173, 997);
INSERT INTO public.won_user_games VALUES (519, 173, 859);
INSERT INTO public.won_user_games VALUES (520, 175, 541);
INSERT INTO public.won_user_games VALUES (521, 175, 720);
INSERT INTO public.won_user_games VALUES (522, 176, 625);
INSERT INTO public.won_user_games VALUES (523, 176, 52);
INSERT INTO public.won_user_games VALUES (524, 175, 150);
INSERT INTO public.won_user_games VALUES (525, 175, 698);
INSERT INTO public.won_user_games VALUES (526, 175, 756);
INSERT INTO public.won_user_games VALUES (527, 177, 512);
INSERT INTO public.won_user_games VALUES (528, 177, 496);
INSERT INTO public.won_user_games VALUES (529, 178, 150);
INSERT INTO public.won_user_games VALUES (530, 178, 596);
INSERT INTO public.won_user_games VALUES (531, 177, 94);
INSERT INTO public.won_user_games VALUES (532, 177, 316);
INSERT INTO public.won_user_games VALUES (533, 177, 270);
INSERT INTO public.won_user_games VALUES (534, 179, 415);
INSERT INTO public.won_user_games VALUES (535, 179, 174);
INSERT INTO public.won_user_games VALUES (536, 180, 477);
INSERT INTO public.won_user_games VALUES (537, 180, 306);
INSERT INTO public.won_user_games VALUES (538, 179, 528);
INSERT INTO public.won_user_games VALUES (539, 179, 56);
INSERT INTO public.won_user_games VALUES (540, 179, 805);
INSERT INTO public.won_user_games VALUES (541, 181, 176);
INSERT INTO public.won_user_games VALUES (542, 181, 58);
INSERT INTO public.won_user_games VALUES (543, 182, 403);
INSERT INTO public.won_user_games VALUES (544, 182, 942);
INSERT INTO public.won_user_games VALUES (545, 181, 728);
INSERT INTO public.won_user_games VALUES (546, 181, 336);
INSERT INTO public.won_user_games VALUES (547, 181, 863);
INSERT INTO public.won_user_games VALUES (548, 183, 128);
INSERT INTO public.won_user_games VALUES (549, 183, 462);
INSERT INTO public.won_user_games VALUES (550, 184, 747);
INSERT INTO public.won_user_games VALUES (551, 184, 21);
INSERT INTO public.won_user_games VALUES (552, 183, 131);
INSERT INTO public.won_user_games VALUES (553, 183, 369);
INSERT INTO public.won_user_games VALUES (554, 183, 63);
INSERT INTO public.won_user_games VALUES (555, 185, 921);
INSERT INTO public.won_user_games VALUES (556, 185, 800);
INSERT INTO public.won_user_games VALUES (557, 186, 215);
INSERT INTO public.won_user_games VALUES (558, 186, 760);
INSERT INTO public.won_user_games VALUES (559, 185, 843);
INSERT INTO public.won_user_games VALUES (560, 185, 923);
INSERT INTO public.won_user_games VALUES (561, 185, 695);
INSERT INTO public.won_user_games VALUES (562, 187, 312);
INSERT INTO public.won_user_games VALUES (563, 187, 370);
INSERT INTO public.won_user_games VALUES (564, 188, 44);
INSERT INTO public.won_user_games VALUES (565, 188, 996);
INSERT INTO public.won_user_games VALUES (566, 187, 654);
INSERT INTO public.won_user_games VALUES (567, 187, 854);
INSERT INTO public.won_user_games VALUES (568, 187, 26);
INSERT INTO public.won_user_games VALUES (569, 189, 934);
INSERT INTO public.won_user_games VALUES (570, 189, 816);
INSERT INTO public.won_user_games VALUES (571, 190, 447);
INSERT INTO public.won_user_games VALUES (572, 190, 165);
INSERT INTO public.won_user_games VALUES (573, 189, 65);
INSERT INTO public.won_user_games VALUES (574, 189, 755);
INSERT INTO public.won_user_games VALUES (575, 189, 32);
INSERT INTO public.won_user_games VALUES (576, 191, 910);
INSERT INTO public.won_user_games VALUES (577, 191, 179);
INSERT INTO public.won_user_games VALUES (578, 192, 763);
INSERT INTO public.won_user_games VALUES (579, 192, 856);
INSERT INTO public.won_user_games VALUES (580, 191, 365);
INSERT INTO public.won_user_games VALUES (581, 191, 276);
INSERT INTO public.won_user_games VALUES (582, 191, 564);
INSERT INTO public.won_user_games VALUES (583, 193, 505);
INSERT INTO public.won_user_games VALUES (584, 193, 416);
INSERT INTO public.won_user_games VALUES (585, 194, 555);
INSERT INTO public.won_user_games VALUES (586, 194, 821);
INSERT INTO public.won_user_games VALUES (587, 193, 340);
INSERT INTO public.won_user_games VALUES (588, 193, 884);
INSERT INTO public.won_user_games VALUES (589, 193, 128);
INSERT INTO public.won_user_games VALUES (590, 195, 729);
INSERT INTO public.won_user_games VALUES (591, 195, 378);
INSERT INTO public.won_user_games VALUES (592, 196, 504);
INSERT INTO public.won_user_games VALUES (593, 196, 472);
INSERT INTO public.won_user_games VALUES (594, 195, 214);
INSERT INTO public.won_user_games VALUES (595, 195, 800);
INSERT INTO public.won_user_games VALUES (596, 195, 700);
INSERT INTO public.won_user_games VALUES (597, 197, 615);
INSERT INTO public.won_user_games VALUES (598, 197, 153);
INSERT INTO public.won_user_games VALUES (599, 198, 11);
INSERT INTO public.won_user_games VALUES (600, 198, 775);
INSERT INTO public.won_user_games VALUES (601, 197, 87);
INSERT INTO public.won_user_games VALUES (602, 197, 158);
INSERT INTO public.won_user_games VALUES (603, 197, 449);
INSERT INTO public.won_user_games VALUES (604, 199, 164);
INSERT INTO public.won_user_games VALUES (605, 199, 729);
INSERT INTO public.won_user_games VALUES (606, 200, 917);
INSERT INTO public.won_user_games VALUES (607, 200, 448);
INSERT INTO public.won_user_games VALUES (608, 199, 517);
INSERT INTO public.won_user_games VALUES (609, 199, 75);
INSERT INTO public.won_user_games VALUES (610, 199, 853);
INSERT INTO public.won_user_games VALUES (611, 201, 942);
INSERT INTO public.won_user_games VALUES (612, 201, 42);
INSERT INTO public.won_user_games VALUES (613, 202, 745);
INSERT INTO public.won_user_games VALUES (614, 202, 185);
INSERT INTO public.won_user_games VALUES (615, 201, 550);
INSERT INTO public.won_user_games VALUES (616, 201, 945);
INSERT INTO public.won_user_games VALUES (617, 201, 976);
INSERT INTO public.won_user_games VALUES (618, 203, 526);
INSERT INTO public.won_user_games VALUES (619, 203, 793);
INSERT INTO public.won_user_games VALUES (620, 204, 540);
INSERT INTO public.won_user_games VALUES (621, 204, 409);
INSERT INTO public.won_user_games VALUES (622, 203, 457);
INSERT INTO public.won_user_games VALUES (623, 203, 608);
INSERT INTO public.won_user_games VALUES (624, 203, 345);
INSERT INTO public.won_user_games VALUES (625, 205, 491);
INSERT INTO public.won_user_games VALUES (626, 205, 996);
INSERT INTO public.won_user_games VALUES (627, 206, 744);
INSERT INTO public.won_user_games VALUES (628, 206, 496);
INSERT INTO public.won_user_games VALUES (629, 205, 953);
INSERT INTO public.won_user_games VALUES (630, 205, 99);
INSERT INTO public.won_user_games VALUES (631, 205, 217);
INSERT INTO public.won_user_games VALUES (661, 220, 330);
INSERT INTO public.won_user_games VALUES (662, 220, 829);
INSERT INTO public.won_user_games VALUES (663, 221, 377);
INSERT INTO public.won_user_games VALUES (664, 221, 730);
INSERT INTO public.won_user_games VALUES (665, 220, 654);
INSERT INTO public.won_user_games VALUES (666, 220, 355);
INSERT INTO public.won_user_games VALUES (667, 220, 927);
INSERT INTO public.won_user_games VALUES (668, 222, 14);
INSERT INTO public.won_user_games VALUES (669, 222, 818);
INSERT INTO public.won_user_games VALUES (670, 223, 460);
INSERT INTO public.won_user_games VALUES (671, 223, 275);
INSERT INTO public.won_user_games VALUES (672, 222, 550);
INSERT INTO public.won_user_games VALUES (673, 222, 978);
INSERT INTO public.won_user_games VALUES (674, 222, 731);
INSERT INTO public.won_user_games VALUES (675, 224, 535);
INSERT INTO public.won_user_games VALUES (676, 224, 239);
INSERT INTO public.won_user_games VALUES (677, 225, 771);
INSERT INTO public.won_user_games VALUES (678, 225, 163);
INSERT INTO public.won_user_games VALUES (679, 224, 180);
INSERT INTO public.won_user_games VALUES (680, 224, 694);
INSERT INTO public.won_user_games VALUES (681, 224, 358);
INSERT INTO public.won_user_games VALUES (682, 226, 130);
INSERT INTO public.won_user_games VALUES (683, 226, 530);
INSERT INTO public.won_user_games VALUES (684, 227, 582);
INSERT INTO public.won_user_games VALUES (685, 227, 646);
INSERT INTO public.won_user_games VALUES (686, 226, 418);
INSERT INTO public.won_user_games VALUES (687, 226, 977);
INSERT INTO public.won_user_games VALUES (688, 226, 473);
INSERT INTO public.won_user_games VALUES (689, 230, 375);
INSERT INTO public.won_user_games VALUES (690, 230, 297);
INSERT INTO public.won_user_games VALUES (691, 231, 572);
INSERT INTO public.won_user_games VALUES (692, 231, 238);
INSERT INTO public.won_user_games VALUES (693, 230, 231);
INSERT INTO public.won_user_games VALUES (694, 230, 734);
INSERT INTO public.won_user_games VALUES (695, 230, 675);
INSERT INTO public.won_user_games VALUES (696, 232, 764);
INSERT INTO public.won_user_games VALUES (697, 232, 78);
INSERT INTO public.won_user_games VALUES (698, 233, 531);
INSERT INTO public.won_user_games VALUES (699, 233, 152);
INSERT INTO public.won_user_games VALUES (700, 232, 409);
INSERT INTO public.won_user_games VALUES (701, 232, 345);
INSERT INTO public.won_user_games VALUES (702, 232, 219);
INSERT INTO public.won_user_games VALUES (703, 234, 981);
INSERT INTO public.won_user_games VALUES (704, 234, 290);
INSERT INTO public.won_user_games VALUES (705, 235, 834);
INSERT INTO public.won_user_games VALUES (706, 235, 83);
INSERT INTO public.won_user_games VALUES (707, 234, 80);
INSERT INTO public.won_user_games VALUES (708, 234, 216);
INSERT INTO public.won_user_games VALUES (709, 234, 380);
INSERT INTO public.won_user_games VALUES (710, 236, 605);
INSERT INTO public.won_user_games VALUES (711, 236, 473);
INSERT INTO public.won_user_games VALUES (712, 237, 121);
INSERT INTO public.won_user_games VALUES (713, 237, 676);
INSERT INTO public.won_user_games VALUES (714, 236, 330);
INSERT INTO public.won_user_games VALUES (715, 236, 354);
INSERT INTO public.won_user_games VALUES (716, 236, 502);
INSERT INTO public.won_user_games VALUES (717, 238, 762);
INSERT INTO public.won_user_games VALUES (718, 238, 304);
INSERT INTO public.won_user_games VALUES (719, 239, 559);
INSERT INTO public.won_user_games VALUES (720, 239, 632);
INSERT INTO public.won_user_games VALUES (721, 238, 563);
INSERT INTO public.won_user_games VALUES (722, 238, 494);
INSERT INTO public.won_user_games VALUES (723, 238, 540);
INSERT INTO public.won_user_games VALUES (724, 240, 803);
INSERT INTO public.won_user_games VALUES (725, 240, 412);
INSERT INTO public.won_user_games VALUES (726, 241, 941);
INSERT INTO public.won_user_games VALUES (727, 241, 785);
INSERT INTO public.won_user_games VALUES (728, 240, 966);
INSERT INTO public.won_user_games VALUES (729, 240, 377);
INSERT INTO public.won_user_games VALUES (730, 240, 852);
INSERT INTO public.won_user_games VALUES (731, 242, 321);
INSERT INTO public.won_user_games VALUES (732, 242, 605);
INSERT INTO public.won_user_games VALUES (733, 243, 228);
INSERT INTO public.won_user_games VALUES (734, 243, 106);
INSERT INTO public.won_user_games VALUES (735, 242, 616);
INSERT INTO public.won_user_games VALUES (736, 242, 867);
INSERT INTO public.won_user_games VALUES (737, 242, 419);
INSERT INTO public.won_user_games VALUES (738, 244, 258);
INSERT INTO public.won_user_games VALUES (739, 244, 518);
INSERT INTO public.won_user_games VALUES (740, 245, 85);
INSERT INTO public.won_user_games VALUES (741, 245, 182);
INSERT INTO public.won_user_games VALUES (742, 244, 487);
INSERT INTO public.won_user_games VALUES (743, 244, 938);
INSERT INTO public.won_user_games VALUES (744, 244, 498);
INSERT INTO public.won_user_games VALUES (745, 246, 226);
INSERT INTO public.won_user_games VALUES (746, 246, 883);
INSERT INTO public.won_user_games VALUES (747, 247, 22);
INSERT INTO public.won_user_games VALUES (748, 247, 162);
INSERT INTO public.won_user_games VALUES (749, 246, 739);
INSERT INTO public.won_user_games VALUES (750, 246, 15);
INSERT INTO public.won_user_games VALUES (751, 246, 909);
INSERT INTO public.won_user_games VALUES (752, 248, 973);
INSERT INTO public.won_user_games VALUES (753, 248, 741);
INSERT INTO public.won_user_games VALUES (754, 249, 326);
INSERT INTO public.won_user_games VALUES (755, 249, 41);
INSERT INTO public.won_user_games VALUES (756, 248, 789);
INSERT INTO public.won_user_games VALUES (757, 248, 699);
INSERT INTO public.won_user_games VALUES (758, 248, 215);
INSERT INTO public.won_user_games VALUES (759, 250, 563);
INSERT INTO public.won_user_games VALUES (760, 250, 73);
INSERT INTO public.won_user_games VALUES (761, 251, 706);
INSERT INTO public.won_user_games VALUES (762, 251, 413);
INSERT INTO public.won_user_games VALUES (763, 250, 46);
INSERT INTO public.won_user_games VALUES (764, 250, 59);
INSERT INTO public.won_user_games VALUES (765, 250, 926);
INSERT INTO public.won_user_games VALUES (766, 252, 142);
INSERT INTO public.won_user_games VALUES (767, 252, 915);
INSERT INTO public.won_user_games VALUES (768, 253, 211);
INSERT INTO public.won_user_games VALUES (769, 253, 577);
INSERT INTO public.won_user_games VALUES (770, 252, 119);
INSERT INTO public.won_user_games VALUES (771, 252, 949);
INSERT INTO public.won_user_games VALUES (772, 252, 117);
INSERT INTO public.won_user_games VALUES (773, 254, 419);
INSERT INTO public.won_user_games VALUES (774, 254, 524);
INSERT INTO public.won_user_games VALUES (775, 255, 813);
INSERT INTO public.won_user_games VALUES (776, 255, 245);
INSERT INTO public.won_user_games VALUES (777, 254, 277);
INSERT INTO public.won_user_games VALUES (778, 254, 348);
INSERT INTO public.won_user_games VALUES (779, 254, 196);
INSERT INTO public.won_user_games VALUES (780, 256, 429);
INSERT INTO public.won_user_games VALUES (781, 256, 705);
INSERT INTO public.won_user_games VALUES (782, 257, 683);
INSERT INTO public.won_user_games VALUES (783, 257, 930);
INSERT INTO public.won_user_games VALUES (784, 256, 462);
INSERT INTO public.won_user_games VALUES (785, 256, 435);
INSERT INTO public.won_user_games VALUES (786, 256, 49);
INSERT INTO public.won_user_games VALUES (787, 258, 553);
INSERT INTO public.won_user_games VALUES (788, 258, 771);
INSERT INTO public.won_user_games VALUES (789, 259, 855);
INSERT INTO public.won_user_games VALUES (790, 259, 712);
INSERT INTO public.won_user_games VALUES (791, 258, 758);
INSERT INTO public.won_user_games VALUES (792, 258, 797);
INSERT INTO public.won_user_games VALUES (793, 258, 732);
INSERT INTO public.won_user_games VALUES (794, 260, 400);
INSERT INTO public.won_user_games VALUES (795, 260, 479);
INSERT INTO public.won_user_games VALUES (796, 261, 525);
INSERT INTO public.won_user_games VALUES (797, 261, 903);
INSERT INTO public.won_user_games VALUES (798, 260, 91);
INSERT INTO public.won_user_games VALUES (799, 260, 575);
INSERT INTO public.won_user_games VALUES (800, 260, 172);
INSERT INTO public.won_user_games VALUES (801, 262, 445);
INSERT INTO public.won_user_games VALUES (802, 262, 826);
INSERT INTO public.won_user_games VALUES (803, 263, 860);
INSERT INTO public.won_user_games VALUES (804, 263, 502);
INSERT INTO public.won_user_games VALUES (805, 262, 851);
INSERT INTO public.won_user_games VALUES (806, 262, 664);
INSERT INTO public.won_user_games VALUES (807, 262, 920);
INSERT INTO public.won_user_games VALUES (808, 264, 645);
INSERT INTO public.won_user_games VALUES (809, 264, 487);
INSERT INTO public.won_user_games VALUES (810, 265, 458);
INSERT INTO public.won_user_games VALUES (811, 265, 235);
INSERT INTO public.won_user_games VALUES (812, 264, 76);
INSERT INTO public.won_user_games VALUES (813, 264, 840);
INSERT INTO public.won_user_games VALUES (814, 264, 643);
INSERT INTO public.won_user_games VALUES (815, 266, 979);
INSERT INTO public.won_user_games VALUES (816, 266, 298);
INSERT INTO public.won_user_games VALUES (817, 267, 377);
INSERT INTO public.won_user_games VALUES (818, 267, 627);
INSERT INTO public.won_user_games VALUES (819, 266, 891);
INSERT INTO public.won_user_games VALUES (820, 266, 783);
INSERT INTO public.won_user_games VALUES (821, 266, 376);
INSERT INTO public.won_user_games VALUES (822, 268, 375);
INSERT INTO public.won_user_games VALUES (823, 268, 546);
INSERT INTO public.won_user_games VALUES (824, 269, 972);
INSERT INTO public.won_user_games VALUES (825, 269, 259);
INSERT INTO public.won_user_games VALUES (826, 268, 270);
INSERT INTO public.won_user_games VALUES (827, 268, 749);
INSERT INTO public.won_user_games VALUES (828, 268, 407);
INSERT INTO public.won_user_games VALUES (829, 270, 975);
INSERT INTO public.won_user_games VALUES (830, 270, 804);
INSERT INTO public.won_user_games VALUES (831, 271, 149);
INSERT INTO public.won_user_games VALUES (832, 271, 585);
INSERT INTO public.won_user_games VALUES (833, 270, 766);
INSERT INTO public.won_user_games VALUES (834, 270, 464);
INSERT INTO public.won_user_games VALUES (835, 270, 714);
INSERT INTO public.won_user_games VALUES (836, 272, 218);
INSERT INTO public.won_user_games VALUES (837, 272, 636);
INSERT INTO public.won_user_games VALUES (838, 273, 849);
INSERT INTO public.won_user_games VALUES (839, 273, 887);
INSERT INTO public.won_user_games VALUES (840, 272, 425);
INSERT INTO public.won_user_games VALUES (841, 272, 254);
INSERT INTO public.won_user_games VALUES (842, 272, 712);
INSERT INTO public.won_user_games VALUES (843, 274, 393);
INSERT INTO public.won_user_games VALUES (844, 274, 119);
INSERT INTO public.won_user_games VALUES (845, 275, 151);
INSERT INTO public.won_user_games VALUES (846, 275, 731);
INSERT INTO public.won_user_games VALUES (847, 274, 955);
INSERT INTO public.won_user_games VALUES (848, 274, 693);
INSERT INTO public.won_user_games VALUES (849, 274, 560);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 275, true);


--
-- Name: won_user_games_won_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.won_user_games_won_game_id_seq', 849, true);


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
-- Name: won_user_games won_user_games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games
    ADD CONSTRAINT won_user_games_pkey PRIMARY KEY (won_game_id);


--
-- Name: won_user_games won_user_games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.won_user_games
    ADD CONSTRAINT won_user_games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

