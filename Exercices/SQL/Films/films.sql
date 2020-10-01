--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2 (Debian 11.2-1.pgdg90+1)
-- Dumped by pg_dump version 11.2 (Debian 11.2-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: artiste; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artiste (
    idartiste integer NOT NULL,
    nom character varying(30) NOT NULL,
    prenom character varying(30) NOT NULL,
    anneenaiss integer
);


ALTER TABLE public.artiste OWNER TO postgres;

--
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    idfilm integer NOT NULL,
    titre character varying(50) NOT NULL,
    annee integer NOT NULL,
    idmes integer,
    genre character varying(20) NOT NULL,
    resume text,
    codepays character varying(4)
);


ALTER TABLE public.film OWNER TO postgres;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    code character varying(20) NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- Name: internaute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.internaute (
    email character varying(40) NOT NULL,
    nom character varying(30) NOT NULL,
    prenom character varying(30) NOT NULL,
    region character varying(30)
);


ALTER TABLE public.internaute OWNER TO postgres;

--
-- Name: notation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notation (
    idfilm integer NOT NULL,
    email character varying(40) NOT NULL,
    note integer NOT NULL
);


ALTER TABLE public.notation OWNER TO postgres;

--
-- Name: pays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pays (
    code character varying(4) NOT NULL,
    nom character varying(30) DEFAULT 'Inconnu'::character varying NOT NULL,
    langue character varying(30) NOT NULL
);


ALTER TABLE public.pays OWNER TO postgres;

--
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    idfilm integer NOT NULL,
    idacteur integer NOT NULL,
    nomrole character varying(30)
);


ALTER TABLE public.role OWNER TO postgres;

--
-- Data for Name: artiste; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.artiste VALUES (6, 'Cameron', 'James', 1954);
INSERT INTO public.artiste VALUES (3, 'Hitchcock', 'Alfred', 1899);
INSERT INTO public.artiste VALUES (4, 'Scott', 'Ridley', 1937);
INSERT INTO public.artiste VALUES (5, 'Weaver', 'Sigourney', 1949);
INSERT INTO public.artiste VALUES (9, 'Tarkovski', 'Andrei', 1932);
INSERT INTO public.artiste VALUES (10, 'Woo', 'John', 1946);
INSERT INTO public.artiste VALUES (11, 'Travolta', 'John', 1954);
INSERT INTO public.artiste VALUES (12, 'Cage', 'Nicolas', 1964);
INSERT INTO public.artiste VALUES (13, 'Burton', 'Tim', 1958);
INSERT INTO public.artiste VALUES (14, 'Depp', 'Johnny', 1964);
INSERT INTO public.artiste VALUES (15, 'Stewart', 'James', 1908);
INSERT INTO public.artiste VALUES (16, 'Novak', 'Kim', 1925);
INSERT INTO public.artiste VALUES (17, 'Mendes', 'Sam', 1965);
INSERT INTO public.artiste VALUES (18, 'Spacey', 'Kevin', 1959);
INSERT INTO public.artiste VALUES (19, 'Bening', 'Anette', 1958);
INSERT INTO public.artiste VALUES (20, 'Eastwood', 'Clint', 1930);
INSERT INTO public.artiste VALUES (21, 'Hackman', 'Gene', 1930);
INSERT INTO public.artiste VALUES (22, 'Freeman', 'Morgan', 1937);
INSERT INTO public.artiste VALUES (23, 'Crowe', 'Russell', 1964);
INSERT INTO public.artiste VALUES (24, 'Ford', 'Harrison', 1942);
INSERT INTO public.artiste VALUES (25, 'Hauer', 'Rutger', 1944);
INSERT INTO public.artiste VALUES (26, 'McTierman', 'John', 1951);
INSERT INTO public.artiste VALUES (27, 'Willis', 'Bruce', 1955);
INSERT INTO public.artiste VALUES (28, 'Harlin', 'Renny', 1959);
INSERT INTO public.artiste VALUES (29, 'Pialat', 'Maurice', 1925);
INSERT INTO public.artiste VALUES (30, 'Dutronc', 'Jacques', 1943);
INSERT INTO public.artiste VALUES (31, 'Fincher', 'David', 1962);
INSERT INTO public.artiste VALUES (32, 'Pitt', 'Brad', 1963);
INSERT INTO public.artiste VALUES (33, 'Gilliam', 'Terry', 1940);
INSERT INTO public.artiste VALUES (34, 'Annaud', 'Jean-Jacques', 1943);
INSERT INTO public.artiste VALUES (35, 'Connery', 'Sean', 1930);
INSERT INTO public.artiste VALUES (36, 'Slater', 'Christian', 1969);
INSERT INTO public.artiste VALUES (37, 'Tarantino', 'Quentin', 1963);
INSERT INTO public.artiste VALUES (38, 'Jackson', 'Samuel L.', 1948);
INSERT INTO public.artiste VALUES (39, 'Arquette', 'Rosanna', 1959);
INSERT INTO public.artiste VALUES (40, 'Thurman', 'Uma', 1970);
INSERT INTO public.artiste VALUES (41, 'Farrelly', 'Bobby', 1958);
INSERT INTO public.artiste VALUES (42, 'Diaz', 'Cameron', 1972);
INSERT INTO public.artiste VALUES (43, 'Dillon', 'Mat', 1964);
INSERT INTO public.artiste VALUES (44, 'Schwartzenegger', 'Arnold', 1947);
INSERT INTO public.artiste VALUES (45, 'Spielberg', 'Steven', 1946);
INSERT INTO public.artiste VALUES (46, 'Scheider', 'Roy', 1932);
INSERT INTO public.artiste VALUES (47, 'Shaw', 'Robert', 1927);
INSERT INTO public.artiste VALUES (48, 'Dreyfus', 'Richard', 1947);
INSERT INTO public.artiste VALUES (49, 'Demme', 'Jonathan', 1944);
INSERT INTO public.artiste VALUES (50, 'Hopkins', 'Anthony', 1937);
INSERT INTO public.artiste VALUES (51, 'Foster', 'Jodie', 1962);
INSERT INTO public.artiste VALUES (53, 'Kilmer', 'Val', 1959);
INSERT INTO public.artiste VALUES (54, 'Fiennes', 'Ralph', 1962);
INSERT INTO public.artiste VALUES (55, 'Pfeiffer', 'Michelle', 1957);
INSERT INTO public.artiste VALUES (56, 'Bullock', 'Sandra', 1964);
INSERT INTO public.artiste VALUES (57, 'Goldblum', 'Jeff', 1952);
INSERT INTO public.artiste VALUES (58, 'Emmerich', 'Roland', 1955);
INSERT INTO public.artiste VALUES (59, 'Broderick', 'Matthew', 1962);
INSERT INTO public.artiste VALUES (60, 'Reno', 'Jean', 1948);
INSERT INTO public.artiste VALUES (61, 'Wachowski', 'Andy', 1967);
INSERT INTO public.artiste VALUES (62, 'Reeves', 'Keanu', 1964);
INSERT INTO public.artiste VALUES (63, 'Fishburne', 'Laurence', 1961);
INSERT INTO public.artiste VALUES (64, 'De Palma', 'Brian', 1940);
INSERT INTO public.artiste VALUES (65, 'Cruise', 'Tom', 1962);
INSERT INTO public.artiste VALUES (66, 'Voight', 'John', 1938);
INSERT INTO public.artiste VALUES (67, 'Bart', 'Emmanuelle', 1965);
INSERT INTO public.artiste VALUES (68, 'Kurozawa', 'Akira', 1910);
INSERT INTO public.artiste VALUES (69, 'Harris', 'Ed', 1950);
INSERT INTO public.artiste VALUES (70, 'Linney', 'Laura', 1964);
INSERT INTO public.artiste VALUES (71, 'Girault', 'Jean', 1924);
INSERT INTO public.artiste VALUES (72, 'De Funs', 'Louis', 1914);
INSERT INTO public.artiste VALUES (73, 'Galabru', 'Michel', 1922);
INSERT INTO public.artiste VALUES (224, 'Swank', 'Hillary', 1974);
INSERT INTO public.artiste VALUES (75, 'Balasko', 'Josiane', 1950);
INSERT INTO public.artiste VALUES (76, 'Lavanant', 'Dominique', 1944);
INSERT INTO public.artiste VALUES (77, 'Lanvin', 'Grard', 1950);
INSERT INTO public.artiste VALUES (78, 'Villeret', 'Jacques', 1951);
INSERT INTO public.artiste VALUES (79, 'Levinson', 'Barry', 1942);
INSERT INTO public.artiste VALUES (80, 'Hoffman', 'Dustin', 1937);
INSERT INTO public.artiste VALUES (81, 'Scott', 'Tony', 1944);
INSERT INTO public.artiste VALUES (82, 'McGillis', 'Kelly', 1957);
INSERT INTO public.artiste VALUES (83, 'Leconte', 'Patrice', 1947);
INSERT INTO public.artiste VALUES (84, 'Blanc', 'Michel', 1952);
INSERT INTO public.artiste VALUES (85, 'Clavier', 'Christian', 1952);
INSERT INTO public.artiste VALUES (86, 'Lhermite', 'Thierry', 1952);
INSERT INTO public.artiste VALUES (88, 'Perkins', 'Anthony', 1932);
INSERT INTO public.artiste VALUES (89, 'Miles', 'Vera', 1929);
INSERT INTO public.artiste VALUES (90, 'Leigh', 'Janet', 1927);
INSERT INTO public.artiste VALUES (91, 'Marquand', 'Richard', 1938);
INSERT INTO public.artiste VALUES (92, 'Hamill', 'Mark', 1951);
INSERT INTO public.artiste VALUES (93, 'Fisher', 'Carrie', 1956);
INSERT INTO public.artiste VALUES (94, 'Taylor', 'Rod', 1930);
INSERT INTO public.artiste VALUES (95, 'Hedren', 'Tippi', 1931);
INSERT INTO public.artiste VALUES (96, 'Ricci', 'Christina', 1980);
INSERT INTO public.artiste VALUES (97, 'Walken', 'Christopher', 1943);
INSERT INTO public.artiste VALUES (98, 'Keitel', 'Harvey', 1939);
INSERT INTO public.artiste VALUES (99, 'Roth', 'Tim', 1961);
INSERT INTO public.artiste VALUES (100, 'Penn', 'Chris', 1966);
INSERT INTO public.artiste VALUES (101, 'Kubrick', 'Stanley', 1928);
INSERT INTO public.artiste VALUES (102, 'Kidman', 'Nicole', 1967);
INSERT INTO public.artiste VALUES (103, 'Nicholson', 'Jack', 1937);
INSERT INTO public.artiste VALUES (104, 'Kelly', 'Grace', 1929);
INSERT INTO public.artiste VALUES (105, 'Grant', 'Cary', 1904);
INSERT INTO public.artiste VALUES (106, 'Saint', 'Eva Marie', 1924);
INSERT INTO public.artiste VALUES (107, 'Mason', 'James', 1909);
INSERT INTO public.artiste VALUES (110, 'DiCaprio', 'Leonardo', 1974);
INSERT INTO public.artiste VALUES (109, 'Winslet', 'Kate', 1975);
INSERT INTO public.artiste VALUES (111, 'Besson', 'Luc', 1959);
INSERT INTO public.artiste VALUES (112, 'Jovovich', 'Milla', 1975);
INSERT INTO public.artiste VALUES (113, 'Dunaway', 'Fane', 1941);
INSERT INTO public.artiste VALUES (114, 'Malkovitch', 'John', 1953);
INSERT INTO public.artiste VALUES (115, 'Karyo', 'Tchky', 1953);
INSERT INTO public.artiste VALUES (116, 'Oldman', 'Gary', 1958);
INSERT INTO public.artiste VALUES (117, 'Holm', 'Ian', 1931);
INSERT INTO public.artiste VALUES (118, 'Portman', 'Natalie', 1981);
INSERT INTO public.artiste VALUES (119, 'Parillaud', 'Anne', 1960);
INSERT INTO public.artiste VALUES (120, 'Anglade', 'Jean-Hughes', 1955);
INSERT INTO public.artiste VALUES (121, 'Barr', 'Jean-Marc', 1960);
INSERT INTO public.artiste VALUES (122, 'Ferrara', 'Abel', 1951);
INSERT INTO public.artiste VALUES (123, 'Caruso', 'David', 1956);
INSERT INTO public.artiste VALUES (124, 'Snipes', 'Wesley', 1962);
INSERT INTO public.artiste VALUES (125, 'Sciora', 'Annabella', 1964);
INSERT INTO public.artiste VALUES (126, 'Rosselini', 'Isabella', 1952);
INSERT INTO public.artiste VALUES (127, 'Gallo', 'Vincent', 1961);
INSERT INTO public.artiste VALUES (128, 'von Trier', 'Lars', 1956);
INSERT INTO public.artiste VALUES (129, 'Gudmundsdottir', 'Bjork', 1965);
INSERT INTO public.artiste VALUES (130, 'Deneuve', 'Catherine', 1943);
INSERT INTO public.artiste VALUES (131, 'Kassowitz', 'Matthieu', 1967);
INSERT INTO public.artiste VALUES (132, 'Cassel', 'Vincent', 1966);
INSERT INTO public.artiste VALUES (133, 'Gray', 'James', 1969);
INSERT INTO public.artiste VALUES (134, 'Wahlberg', 'Mark', 1971);
INSERT INTO public.artiste VALUES (135, 'Phoenix', 'Joaquin', 1974);
INSERT INTO public.artiste VALUES (136, 'Theron', 'Charlize', 1975);
INSERT INTO public.artiste VALUES (137, 'Caan', 'James', 1940);
INSERT INTO public.artiste VALUES (138, 'Chabrol', 'Claude', 1930);
INSERT INTO public.artiste VALUES (139, 'Huppert', 'Isabelle', 1953);
INSERT INTO public.artiste VALUES (140, 'Mouglalis', 'Anna', 1978);
INSERT INTO public.artiste VALUES (141, 'Costner', 'Kevin', 1955);
INSERT INTO public.artiste VALUES (142, 'Dern', 'Laura', 1967);
INSERT INTO public.artiste VALUES (143, 'Hanks', 'Tom', 1956);
INSERT INTO public.artiste VALUES (144, 'Sizemore', 'Tom', 1964);
INSERT INTO public.artiste VALUES (145, 'Damon', 'Matt', 1970);
INSERT INTO public.artiste VALUES (146, 'Modine', 'Matthew', 1959);
INSERT INTO public.artiste VALUES (147, 'Baldwin', 'Adam', 1962);
INSERT INTO public.artiste VALUES (148, 'O''Neal', 'Ryan', 1941);
INSERT INTO public.artiste VALUES (149, 'Berenson', 'Marisa', 1946);
INSERT INTO public.artiste VALUES (150, 'McDowell', 'Macolm', 1943);
INSERT INTO public.artiste VALUES (151, 'Dullea', 'Keir', 1936);
INSERT INTO public.artiste VALUES (152, 'Lockwood', 'Gary', 1937);
INSERT INTO public.artiste VALUES (153, 'Sellers', 'Peter', 1925);
INSERT INTO public.artiste VALUES (154, 'Scott', 'George', 1927);
INSERT INTO public.artiste VALUES (155, 'Hayden', 'Sterling', 1916);
INSERT INTO public.artiste VALUES (156, 'Douglas', 'Kirk', 1916);
INSERT INTO public.artiste VALUES (157, 'Donat', 'Robert', 1905);
INSERT INTO public.artiste VALUES (158, 'Caroll', 'Madeleine', 1906);
INSERT INTO public.artiste VALUES (159, 'Olivier', 'Laurence', 1907);
INSERT INTO public.artiste VALUES (160, 'Fontaine', 'Joan', 1917);
INSERT INTO public.artiste VALUES (161, 'Sanders', 'George', 1906);
INSERT INTO public.artiste VALUES (162, 'Bergman', 'Ingrid', 1915);
INSERT INTO public.artiste VALUES (163, 'Rains', 'Claude', 1889);
INSERT INTO public.artiste VALUES (164, 'Milland', 'Ray', 1907);
INSERT INTO public.artiste VALUES (166, 'Day', 'Doris', 1924);
INSERT INTO public.artiste VALUES (167, 'De Niro', 'Robert', 1943);
INSERT INTO public.artiste VALUES (168, 'Grier', 'Pam', 1949);
INSERT INTO public.artiste VALUES (169, 'Fonda', 'Bridget', 1964);
INSERT INTO public.artiste VALUES (170, 'Keaton', 'Michael', 1951);
INSERT INTO public.artiste VALUES (171, 'Shyamalan', 'M. Night', 1970);
INSERT INTO public.artiste VALUES (172, 'Osment', 'Haley Joel', 1988);
INSERT INTO public.artiste VALUES (173, 'Collette', 'Tony', 1972);
INSERT INTO public.artiste VALUES (174, 'Leighton', 'Eric', 1962);
INSERT INTO public.artiste VALUES (175, 'Mann', 'Michael', 1943);
INSERT INTO public.artiste VALUES (176, 'Pacino', 'Al', 1940);
INSERT INTO public.artiste VALUES (177, 'Crowe', 'Russel', 1964);
INSERT INTO public.artiste VALUES (178, 'Plummer', 'Christopher', 1927);
INSERT INTO public.artiste VALUES (179, 'Furlong', 'Edward', 1977);
INSERT INTO public.artiste VALUES (180, 'Redgrave', 'Vanessa', 1937);
INSERT INTO public.artiste VALUES (181, 'Coppola', 'Francis Ford', 1939);
INSERT INTO public.artiste VALUES (182, 'Brando', 'Marlon', 1924);
INSERT INTO public.artiste VALUES (183, 'Keaton', 'Diane', 1946);
INSERT INTO public.artiste VALUES (184, 'Duvall', 'Robert', 1931);
INSERT INTO public.artiste VALUES (185, 'Caan', 'Jamees', 1939);
INSERT INTO public.artiste VALUES (186, 'Garcia', 'Andy', 1956);
INSERT INTO public.artiste VALUES (187, 'Raimi', 'Sam', 1959);
INSERT INTO public.artiste VALUES (188, 'Maguire', 'Tobey', 1975);
INSERT INTO public.artiste VALUES (210, 'Moss', 'Carrie-Anne', 1967);
INSERT INTO public.artiste VALUES (211, 'Weaving', 'Hugo', 1960);
INSERT INTO public.artiste VALUES (212, 'Jackson', 'Samuel', 1948);
INSERT INTO public.artiste VALUES (213, 'Liu', 'Lucy', 1968);
INSERT INTO public.artiste VALUES (214, 'Carradine', 'David', 1936);
INSERT INTO public.artiste VALUES (215, 'Madsen', 'Michael', 1958);
INSERT INTO public.artiste VALUES (216, 'Hannah', 'Daryl', 1960);
INSERT INTO public.artiste VALUES (217, 'Buscemi', 'Steve', 1957);
INSERT INTO public.artiste VALUES (218, 'Bunker', 'Edward', 1933);
INSERT INTO public.artiste VALUES (221, 'Volonte', 'Gian Maria', NULL);
INSERT INTO public.artiste VALUES (220, 'Van Cleef', 'Lee', NULL);
INSERT INTO public.artiste VALUES (219, 'Leone', 'Sergio', 1929);


--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.film VALUES (1, 'Vertigo', 1958, 3, 'Drame', 'Scottie Ferguson, ancien inspecteur de police, est sujet au vertige depuis qu''il a vu mourir son collègue. Elster, son ami, le charge de surveiller sa femme, Madeleine, ayant des tendances suicidaires. Amoureux de la jeune femme Scottie ne remarque pas le piège qui se trame autour de lui et dont il va être la victime... ', 'USA');
INSERT INTO public.film VALUES (2, 'Alien', 1979, 4, 'Science-fiction', 'Près d''un vaisseau spatial échoué sur une lointaine planète, des Terriens en mission découvrent de bien étranges ''oeufs''. Ils en ramènent un à bord, ignorant qu''ils viennent d''introduire parmi eux un huitième passager particulièrement féroce et meurtrier. ', 'USA');
INSERT INTO public.film VALUES (3, 'Titanic', 1997, 6, 'Drame', 'Conduite par Brock Lovett, une expédition américaine fouillant l''épave du Titanic remonte à la surface le croquis d''une femme nue. Alertée par les médias la dame en question, Rose DeWitt Bukater, aujourd''hui centenaire, rejoint les lieux du naufrage, d''où elle entreprend de conter le récit de son fascinant, étrange et tragique voyage... ', 'USA');
INSERT INTO public.film VALUES (4, 'Sacrifice', 1986, 9, 'Drame', '', 'FR');
INSERT INTO public.film VALUES (5, 'Volte/Face', 1997, 10, 'Action', 'Directeur d''une unité anti-terroriste, Sean Archer recherche Castor Troy, un criminel responsable de la mort de son fils six ans plus tôt. Il parvient à l''arrêter mais apprend que Troy a caché une bombe au Palais des Congrès de Los Angeles. Seul le frère de Troy peut la désamorcer et, pour l''approcher, Archer se fait greffer le visage de Troy. ', 'USA');
INSERT INTO public.film VALUES (6, 'Sleepy Hollow', 1999, 13, 'Fantastique', 'Nouvelle Angleterre, 1799. A Sleepy Hollow, plusieurs cadavres sont retrouvés décapités. La                                      rumeur attribue ces meurtres à un cavalier lui-même sans tête. Mais le fin limier                                      new-yorkais Ichabod Crane ne croit pas en ses aberrations. Tombé sous le charme de la                                      vénéneuse Katrina, il mène son enquête au coeur des sortilèges de Sleepy Hollow.. ', 'USA');
INSERT INTO public.film VALUES (7, 'American Beauty', 1999, 17, 'Comédie', 'Lester Burnham, sa femme Carolyn et leur fille Jane mènent apparemment une vie des plus heureuses dans leur belle banlieue. Mais derrière cette respectable façade se tisse une étrange et grinçante tragi-comédie familiale où désirs inavoués, frustrations et violences refoulées conduiront inexorablement un homme vers la mort. ', 'USA');
INSERT INTO public.film VALUES (8, 'Impitoyable', 1992, 20, 'Western', 'Légendaire hors-la-loi, William Munny s''est reconverti depuis onze ans en paisible fermier. Il reprend néanmoins les armes pour traquer deux tueurs en compagnie de son vieil ami Ned Logan. Mais ce dernier est capturé, puis éxécute. L''honneur et l''amitié imposent dès lors à Munny de redevenir une dernière fois le héros qu''il fut jadis... ', 'USA');
INSERT INTO public.film VALUES (9, 'Gladiator', 2000, 4, 'Drame', 'Le général romain Maximus est le plus fidèle                    soutien de l''empereur Marc Aurèle, qu''il a                    conduit de victoire en victoire avec une                    bravoure et un dévouement exemplaires.                    Jaloux du prestige de Maximus, et plus                    encore de l''amour que lui voue l''empereur,                    le fils de Marc-Aurèle, Commode, s''arroge                    brutalement le pouvoir, puis ordonne                    l''arrestation du général et son exécution.                    Maximus échappe à ses assassins mais ne peut                    empêcher le massacre de sa famille. Capturé                    par un marchand d''esclaves, il devient                    gladiateur et prépare sa vengeance.', 'USA');
INSERT INTO public.film VALUES (10, 'Blade Runner', 1982, 4, 'Action', 'En 2019, lors de la décadence de Los Angeles, des êtres synthétiques, sans pensée, sans émotions, suffisent aux différents travaux d''entretien. Leur durée de vie n''excède pas 4 années. Un jour, ces ombres humaines se révoltent et on charge les tueurs, appelés Blade Runner, de les abattre... ', 'USA');
INSERT INTO public.film VALUES (11, 'Piège de cristal', 1988, 26, 'Action', 'John Mc Clane, policier new-yorkais, vient passer Noel a Los Angeles aupres de sa femme. Dans le building ou elle travaille, il se retrouve temoin de la prise en otage de tout le personnel par 12 terroristes. Objectif de ces derniers, vider les coffres de la societe. Cache mais isole, il entreprend de prevenir l''exterieur...', 'USA');
INSERT INTO public.film VALUES (12, '58 minutes pour vivre', 1990, 28, 'Action', ' Venu attendre sa femme a l''aéroport, le policier John McClane remarque la présence de terroristes qui ont pris le contrôle des pistes, empêchant tout avion d''atterrir et menaçant de laisser les appareils en vol tourner jusqu''à épuisement de leur kérosène. John n''a devant lui que 58 minutes pour éviter la catastrophe... ', 'USA');
INSERT INTO public.film VALUES (13, 'Van Gogh', 1990, 29, 'Drame', 'Les derniers jours de la vie de Vincent Van Gogh, réfugié à Auvers-sur-Oise, près de chez son ami et protecteur le docteur Gachet, un ami de son frère Théo. Ce peintre maudit, que les villageois surnommaient ''le fou'', n''avait alors plus que deux mois à vivre, qu''il passa en peignant un tableau par jour. ', 'FR');
INSERT INTO public.film VALUES (14, 'Seven', 1995, 31, 'Policier', 'A New York, un criminel anonyme a décidé de commettre 7 meurtres basés sur les 7 pêchés capitaux énoncés dans la Bible : gourmandise, avarice, paresse, orgueil, luxure, envie et colère. Vieux flic blasé à 7 jours de la retraite, l''inspecteur Somerset mène l''enquête tout en formant son remplaçant, l''ambitieux inspecteur David Mills... ', 'USA');
INSERT INTO public.film VALUES (15, 'L''armée des douze singes', 1995, 33, 'Science-fiction', '', 'USA');
INSERT INTO public.film VALUES (16, 'Le nom de la rose', 1986, 34, 'Policier', 'En l''an 1327, dans une abbaye bénédictine, le moine franciscain Guillaume de Baskerville, accompagné de son jeune novice Adso, enquête sur de mystérieuses morts qui frappent la confrérie. Le secret semble résider dans la bibliothèque, où le vieux Jorge garde jalousement un livre jugé maudit. ', 'FR');
INSERT INTO public.film VALUES (17, 'Pulp fiction', 1994, 37, 'Action', 'Pulp Fiction décrit l''odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood, ou s''entrecroisent les destins de deux petits tueurs, d''un dangereux gangster marié à une camée, d''un boxeur roublard, de prêteurs sur gages sadiques, d''un caïd élégant et dévoué, d''un dealer bon mari et de deux tourtereaux à la gachette facile... ', 'USA');
INSERT INTO public.film VALUES (18, 'Mary à tout prix', 1998, 41, 'Comédie', 'Pour retrouver l''amour de sa jeunesse, la belle Mary, Ted-le-looser engage Pat Healy, un privé. Subjugé par la jeune femme, ce dernier tente de la séduire en se faisant passer pour un architecte. Il cache la vérité à Ted et fait cause commune avec Tucker, un autre prétendant, pour se débarrasser de l''encombrant Ted... ', 'USA');
INSERT INTO public.film VALUES (19, 'Terminator', 1984, 6, 'Science-fiction', 'Deux creatures venues du futur debarquent sur terre. L''une d''entre elles, le Terminator, doit eliminer une certaine Sarah Connor, qui doit enfanter celui qui sera le chef d''un groupe de resistants. L''autre, Kyle Reese, est charge par les rebelles de defendre Sarah... ', 'USA');
INSERT INTO public.film VALUES (20, 'Les dents de la mer', 1975, 45, 'Horreur', 'Dans la station balnéaire d''Amityville, un requin géant frappe à plusieurs reprises. Soucieux d''une bonne saison touristique, le maire interdit au sherif Brody de fermer les plages. Une prime est offerte et le célèbre chasseur de requin Quint se lance avec Brody et l''ichtyologue Hooper à la poursuite du monstre... ', 'FR');
INSERT INTO public.film VALUES (21, 'Le silence des agneaux', 1990, 49, 'Policier', 'Afin de retrouver la piste d''un tueur surnommé Buffalo Bill car il scalpe les femmes qu''il assassine, la jeune stagiaire du FBI Clarice Starling est dépêchée auprès d''Hannibal Lecter, prisonnier pour avoir dévoré ses victimes. La coopération de ce dernier devrait permettre à Clarice de saisir et d''anticiper le comportement de Buffalo... ', 'USA');
INSERT INTO public.film VALUES (22, 'Godzilla', 1998, 58, 'Action', 'Issu des radiations atomiques engendrées par les essais nucléaires en Polynésie, un monstre gigantesque, aussi haut qu''un building, se dirige vers New York, semant le chaos sur son passage. Pour tenter de stopper cette créature destructrice, l''armée s''associe à une équipe de scientifiques américains et à un énigmatique enquêteur français... ', 'USA');
INSERT INTO public.film VALUES (23, 'Matrix', 1999, 61, 'Science-fiction', 'Dans un monde où tout ce qui semble réel est en fait élaboré par l''univers électronique baptisé la Matrice, Néo, un programmeur, est contacté par un certain Morpheus. D''après lui, Néo serait le Libérateur tant attendu, le seul capable de mettre en échec l''omnipotence de la Matrice et rendre ses droits à la réalité... ', 'USA');
INSERT INTO public.film VALUES (24, 'Mission: Impossible', 1996, 64, 'Action', 'Chargé d''une nouvelle mission, l''agent du contre espionnage Ethan Hunt tombe avec son équipe dans un piège sanglant. Seul survivant avec Claire, la jeune épouse de son regretté chef Jim Phelps, Ethan se retrouve accusé de trahison. En fuite, il prépare sa contre-attaque, recrutant l''homme de main Krieger et le pirate informatique Luther... ', 'USA');
INSERT INTO public.film VALUES (25, 'Kagemusha', 1980, 68, 'Guerre', 'Au XVIe siecle, Takeda, grand seigneur trouble par les guerres civiles de son pays, fait appel a un Kagemusha pour l''aider dans ses batailles. Takeda est blesse et avant de mourir, il exige que sa mort soit tenue secrete pendant trois ans afin d''eviter un eclatement du clan. Le Kagemusha devra le remplacer... ', 'JP');
INSERT INTO public.film VALUES (26, 'Les pleins pouvoirs', 1997, 20, 'Policier', 'Luther Whitney est l''as des cambrioleurs. Occupé à vider le coffre de l''influent Walter Sullivan, il est témoin d''un meurtre sadique impliquant le Président des Etats-Unis et les services secrets. Soupçonné par la police d''en être l''auteur, il se retrouve également traqué par les tueurs, qui ont compris qu''ils ont été observés.', 'USA');
INSERT INTO public.film VALUES (27, 'Le gendarme et les extra-terrestres', 1978, 71, 'Comédie', 'En anglais: Gendarme and the Creatures from Outer Space !', 'FR');
INSERT INTO public.film VALUES (28, 'Le monde perdu', 1997, 45, 'Horreur', '', 'USA');
INSERT INTO public.film VALUES (29, 'Rain Man', 1988, 79, 'Drame', 'A la mort de son père, Charlie se voit déposséder de son héritage par un frère dont il ignorait l''existence, Raymond. Celui-ci est autiste et vit dans un hôpital psychiatrique. Charlie enlève Raymond afin de prouver qu''il est capable de s''en occuper et de toucher l''héritage. ', 'USA');
INSERT INTO public.film VALUES (30, 'Top Gun', 1986, 81, 'Action', ' Pilote de chasse émérite mais casse-cou Maverick Mitchell est admis à Top Gun, l''école de l''élite de l''aéronavale. Son manque de prudence lui attire les foudres de ses supérieurs et la haine de certains coéquipiers. Il perd subitement la foi et confiance en lui quand son ami de toujours meurt en vol et qu''il s''en croit responsable... ', 'USA');
INSERT INTO public.film VALUES (31, 'Les bronzés font du ski', 1979, 83, 'Comédie', 'Apres avoir passe des vacances d''ete ensemble, Bernard, Nathalie, Gigi, Jerome, Popeye, Jean-Claude et Christiane se retrouvent aux sports d''hiver. Tous ont leurs problemes de coeur ou d''argent, mais il faut bien vivre avec. Avant de se separer, se perdre dans la montagne leur permet de gouter aux joies de la ''vraie vie'' paysanne... ', 'FR');
INSERT INTO public.film VALUES (32, 'Le bon, la brute et le truand', 1966, 219, 'Western', 'Pendant la Guerre de Sécession, trois hommes, préférant s''intéresser à leur profit personnel, se lancent à la recherche d''un coffre contenant 200 000 dollars en pièces d''or volés à l''armée sudiste. Tuco sait que le trésor se trouve dans un cimetière, tandis que Joe connaît le nom inscrit sur la pierre tombale qui sert de cache. Chacun a besoin de l''autre. Mais un troisième homme entre dans la course : Setenza, une brute qui n''hésite pas à massacrer femmes et enfants pour parvenir à ses fins.', 'IT');
INSERT INTO public.film VALUES (33, 'Psychose', 1960, 3, 'Thriller', 'Après avoir volé 40 000 dollars, Marion Crane se rend dans un motel tenu par Norman Bates. Elle est poignardée sous sa douche par une femme. Norman fait disparaitre le corps et les affaires de la jeune femme. Mais Sam, le fiancé de Marion, inquiet de ne pas avoir de nouvelles, engage un détective pour la retrouver... ', 'USA');
INSERT INTO public.film VALUES (34, 'Le retour du Jedi', 1983, 91, 'Science-fiction', 'Luke Skywalker s''introduit chez Jabba pour delivrer Han Solo et la princesse Leia, tandis que l''Empire reconstruit une deuxieme ''Etoile de la Mort''. Luke se rend ensuite au chevet de Yoda qui est mourant. Il lui apprend que Leia est sa soeur. Luke forme un commando pour attaquer l''Etoile, tandis qu''il affronte son pere, Darth Vador... ', 'USA');
INSERT INTO public.film VALUES (35, 'Les oiseaux', 1963, 3, 'Horreur', 'Melanie Daniels se rend à Bodega Bay pour offrir deux perruches en cage à Cathy, la soeur de l''avocat Mitch Brenner. Attaquée par une mouette, Melanie reste chez les Brenner pour la nuit. Mais d''autres évènements étranges se produisent: des enfants sont blessés par des corbeaux et la maison de Mitch est envahie par des milliers d''oiseaux. ', 'USA');
INSERT INTO public.film VALUES (36, 'Reservoir dogs', 1992, 37, 'Policier', 'Après un hold-up manqué, des cambrioleurs de haut vol font leurs comptes dans une confrontation violente, pour découvrir lequel d''entre eux les a trahis. Voleurs de profession, Joe Cabot et son fils Eddie engagent un groupe de six criminels pour le cambriolage d''un diamantaire. Malgré toutes les précautions prises, la police est sur place le jour J, et l''opération se solde par un massacre. Les survivants du gang se réunissent pour règler leurs comptes, chacun soupçonnant l''autre d''avoir trahi. ', 'USA');
INSERT INTO public.film VALUES (37, 'Eyes Wide Shut', 1999, 101, 'Thriller', 'Un couple de bourgeois, cédant à la jalousie et à l''obsession sexuelle, entreprend un voyage psychologique à la recherche de son identité. Le mari, au bout de son périple nocturne, revenu de ses désirs, ne trouvera finalement auprès de son épouse qu''un compromis banal mais complice, les yeux ouverts à tout jamais sur un rêve impossible. ', 'USA');
INSERT INTO public.film VALUES (38, 'Shining', 1980, 101, 'Horreur', 'Jack Torrance s''installe avec sa femme et son fils Danny dans un hôtel fermé à la morte saison afin d''écrire un roman. Il apprend que le gardien précédent a tué sa femme et ses deux filles avant de se suicider. Très vite, Jack va s''apercevoir que des choses étranges se passent autour de lui et que son fils a des pouvoirs extrasensoriels... ', 'FR');
INSERT INTO public.film VALUES (39, 'Pas de printemps pour Marnie', 1964, 3, 'Thriller', 'Marnie est engagée comme secrétaire chez un editeur, Mark Rutland. Celui-ci amoureux d''elle, découvre qu''elle est kleptomane et l''oblige à l''épouser en la menaçant de la dénoncer. En s''apercevant que Marnie a la phobie de la cou leur rouge, Mark tente de remonter dans le passé de la jeune femme afin de comprendre les raisons de sa névrose. ', 'USA');
INSERT INTO public.film VALUES (40, 'Fenêtre sur cour', 1954, 3, 'Suspense', 'En repos forcé à cause d''une jambe plâtrée, le reporter L.B. Jefferies observe au téléobjectif les voisins de l''immeuble d''en face. C''est ainsi qu''il remarque le curieux manège d''un représentant de commerce, M. Thorwald, qu''il soupconne très vite d''avoir assassiné sa femme... ', 'USA');
INSERT INTO public.film VALUES (41, 'La mort aux trousses', 1959, 3, 'Suspense', 'Roger Thornhill, publiciste, est pris dans le hall de son hôtel pour un certain Kaplan, un espion. Deux hommes tentent de le tuer et quand il retrouve l''un de ses agresseurs, celui-ci est assassiné devant ses yeux. Pris pour un meurtrier, il est obligé de fuir vers Chicago... ', 'USA');
INSERT INTO public.film VALUES (42, 'Jeanne d''Arc', 1999, 111, 'Guerre', '', 'FR');
INSERT INTO public.film VALUES (43, 'Le cinquième élément', 1997, 111, 'Science-fiction', 'Au XXIIIème siècle, dans un univers étrange et coloré, où tout espoir de survie est impossible sans la découverte du Cinquième Elément, un héros peu ordinaire affronte le mal pour sauver l''humanité. ', 'FR');
INSERT INTO public.film VALUES (44, 'Léon', 1994, 111, 'Action', '''Léon est un tueur. Un de la pire espèce. Il est introuvable, indétectable, pire qu''un sous-marin. Son ombre est comme une menace de danger permanent sur New York. Indestructible Léon ? Oui, jusqu''à ce qu''une petite souris pénètre son univers. Une toute petite souris aux yeux immenses...'' ', 'FR');
INSERT INTO public.film VALUES (45, 'Nikita', 1990, 111, 'Thriller', 'Nikita, droguée et violente, est prise en mains par des psychiatres qui la rééduquent, la conditionnent, afin d''en faire une tueuse à la botte des Services Secrets. Plus tard, réalisant ce qu''elle est devenue, un pion sans vie privée que l''on manipule, elle tente d''échapper à ses commanditaires. ', 'FR');
INSERT INTO public.film VALUES (46, 'Le grand bleu', 1988, 111, 'Drame', 'Jacques Mayol et Enzo Molinari se connaissent depuis l''enfance. Tous deux experts en apnée, s''affrontent continuellement pour obtenir le record du monde de plongée. Toujours en rivalité, les deux hommes descendent de plus en plus profond, au risque de leurs vies. Le film est ressorti en janvier 89 en version longue d''une durée de 2h40. ', 'FR');
INSERT INTO public.film VALUES (47, 'Spider-Man', 2002, 123, 'Action', 'Orphelin, Peter Parker est élevé par sa tante May et son oncle Ben dans le quartier Queens de New York. Tout en poursuivant ses études à l''université, il trouve un emploi de photographe au journal Daily Bugle. Il partage son appartement avec Harry Osborn, son meilleur ami, et rêve de séduire la belle Mary Jane.Cependant, après avoir été mordu par une araignée génétiquement modifiée, Peter voit son agilité et sa force s''accroître et se découvre des pouvoirs surnaturels. Devenu Spider-Man, il décide d''utiliser ses nouvelles capacités au service du bien.Au même moment, le père de Harry, le richissime industriel Norman Osborn, est victime d''un accident chimique qui a démesurément augmenté ses facultés intellectuelles et sa force, mais l''a rendu fou. Il est devenu le Bouffon Vert, une créature démoniaque qui menace la ville. Entre lui et Spider-Man, une lutte sans merci s''engage.', 'USA');
INSERT INTO public.film VALUES (48, 'King of New York', 1990, 122, 'Drame', 'L''histoire d''un gangster au grand coeur mais aux méthodes définitives, surnommé par le presse The King of New York et qui rêve de fonder un hôpital, confronté a des policiers opiniâtres qui ont juré de l''abattre...', 'USA');
INSERT INTO public.film VALUES (49, 'The Matrix reloaded', 2003, 61, 'Science-fiction', 'Neo apprend à mieux contrôler ses dons naturels, alors même que Sion s''apprête à tomber sous l''assaut de l''Armée des Machines. D''ici quelques heures, 250 000 Sentinelles programmées pour anéantir notre espèce envahiront la dernière enclave humaine de la Terre.Mais Morpheus galvanise les citoyens de Sion en leur rappelant la Parole de l''Oracle : il est encore temps pour l''Elu d''arrêter la guerre contre les Machines. Tous les espoirs se reportent dès lors sur Neo. Au long de sa périlleuse plongée au sein de la Matrix et de sa propre destinée, ce dernier sera confronté à une résistance croissante, une vérité encore plus aveuglante, un choix encore plus douloureux que tout ce qu''il avait jamais imaginé.', 'USA');
INSERT INTO public.film VALUES (50, 'The Matrix Revolutions', 2003, 135, 'Science-fiction', 'La longue quête de liberté des rebelles culmine en une bataille finale explosive. Tandis que l''armée des Machines sème la désolation sur Zion, ses citoyens organisent une défense acharnée. Mais pourront-ils retenir les nuées implacables des Sentinelles en attendant que Neo s''approprie l''ensemble de ses pouvoirs et mette fin à la guerre ?L''agent Smith est quant à lui parvenu à prendre possession de l''esprit de Bane, l''un des membres de l''équipage de l''aéroglisseur. De plus en plus puissant, il est désormais incontrôlable et n''obéit plus aux Machines : il menace de détruire leur empire ainsi que le monde réel et la Matrice...	', 'USA');
INSERT INTO public.film VALUES (51, 'De bruit et de fureur', 1988, 138, 'Drame', 'L''histoire de Bruno, enfant attardé des banlieues et des H.L.M., plongé dans la violence de son milieu, et dont la vie va se consumer comme une étoile filante.', 'FR');
INSERT INTO public.film VALUES (52, 'Usual suspects', 1995, 142, 'Thriller', 'Une légende du crime contraint cinq malfrats à aller s''aquitter d''une tâche très périlleuse. Ceux qui survivent pourront se partager un butin de 90 millions de dollars.', 'USA');
INSERT INTO public.film VALUES (53, 'Bad Lieutenant', 1992, 122, 'Drame', 'La descente aux enfers d''un flic pourri qui enquete sur le viol d''une jolie religieuse.', 'USA');
INSERT INTO public.film VALUES (54, 'Le parrain', 1972, 64, 'Drame', 'En 1945, à New York, les Corleone sont une des cinq familles de la mafia. Don Vito Corleone, '' parrain '' de cette famille, marie sa fille à un bookmaker. Sollozzo, '' parrain '' de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue, mais celui-ci refuse. Sonny, un de ses fils, y est quant à lui favorable.Afin de traiter avec Sonny, Sollozzo tente de faire tuer Don Vito, mais celui-ci en réchappe. Michael, le frère cadet de Sonny, recherche alors les commanditaires de l''attentat et tue Sollozzo et le chef de la police, en représailles.Michael part alors en Sicile, où il épouse Apollonia, mais celle-ci est assassinée à sa place. De retour à New York, Michael épouse Kay Adams et se prépare à devenir le successeur de son père...', 'USA');
INSERT INTO public.film VALUES (55, 'Le parrain II', 1974, 64, 'Drame', 'A la mort de Vito Corleone, dit ''le Parrain'', c''est son fils, Michael, qui reprend les affaires familiales. Très vite, son ascension dans le milieu mafiosi est fulgurante.Depuis la mort De Don Vito Corleone, son fils, Michael, règne sur la famille. Amené à négocier avec la mafia juive, il perd alors le soutien d''un de ses lieutenants, Frankie Pentageli. Echappant de justesse à un attentat, Michael tente de retrouver le coupable, soupçonnant Hyman Roth, le chef de la mafia juive.Vito Corleone, immigrant italien, arrive à New York au début du siècle ; très vite, il devient un des caïds du quartier, utilisant la violence comme moyen de régler toutes les affaires. Seul au départ, il bâtit peu à peu un véritable empire, origine de la fortune de la famille des Corleone.	', 'USA');
INSERT INTO public.film VALUES (56, 'Le parrain III', 1990, 64, 'Drame', 'Atteignant la soixantaine, Michael Corleone désire à la fois renouer avec les siens et se réhabiliter aux yeux de la société, surtout de l''Eglise. Il arrivera presque a ses fins, mais sa vie passée et ses anciens ennemis le rattraperont plus vite.Michael Corleone est fatigué. Il veut prendre ses distances avec les activités mafieuses de sa famille. Il veut convertir ces activités en affaires légales. Kay, son ex-femme, lui fait même accepter que leur fils devienne un chanteur d''opéra et ne reprenne pas les activités familiales.Pendant ce temps, la fille de Michael, Mary, et son neveu, le fils de Sonny, Vincent, nouent une idylle qui n''est pas la bienvenue dans la famille.Il décide d''aider le Vatican à renflouer ses caisses et reçoit en échange le contrôle d''une entreprise immobilière leur appartenant. Attisant la jalousie de ses pairs, Michael échappe de justesse à un attentat commis par l''un d''eux. Vincent se propose alors pour reprendre les affaires de la famille en main.', 'USA');
INSERT INTO public.film VALUES (57, 'Jackie Brown', 1997, 37, 'Policier', 'Jackie Brown, hôtesse de l''air, arrondit ses fins de mois en convoyant de l''argent liquide pour le compte d''un trafiquant d''armes, Ordell Robbie. Un jour, un agent federal et un policier de Los Angeles la cueillent à l''aéroport. Ils comptent sur elle pour faire tomber le trafiquant. Jackie échafaude alors un plan audacieux pour doubler tout le monde lors d''un prochain transfert qui porte sur la modeste somme de cinq cent mille dollars. Mais il lui faudra compter avec les complices d''Ordell, qui ont des méthodes plutôt expéditives.', 'USA');
INSERT INTO public.film VALUES (58, 'Une journée en enfer', 1995, 168, 'Action', 'John McClane est cette fois-ci aux prises avec un maître chanteur, facétieux et dangereux, qui dépose des bombes dans New York.', 'USA');
INSERT INTO public.film VALUES (59, 'Sixième sens', 1999, 170, 'Fantastique', 'Cole Sear, garconnet de huit ans est hanté par un terrible secret. Son imaginaire est visité par des esprits menacants. Trop jeune pour comprendre le pourquoi de ces apparitions et traumatisé par ces pouvoirs paranormaux, Cole s''enferme dans une peur maladive et ne veut reveler à personne la cause de son enfermement, à l''exception d''un psychologue pour enfants. La recherche d''une explication rationnelle guidera l''enfant et le thérapeute vers une vérité foudroyante et inexplicable.', 'USA');
INSERT INTO public.film VALUES (60, 'Lost in Translation', 2003, 172, 'Comédie sentimentale', 'Bob Harris, acteur sur le déclin, se rend à Tokyo pour touner un spot publicitaire. Il a conscience qu''il se trompe - il devrait être chez lui avec sa famille, jouer au théâtre ou encore chercher un rôle dans un film -, mais il a besoin d''argent.Du haut de son hôtel de luxe, il contemple la ville, mais ne voit rien. Il est ailleurs, détaché de tout, incapable de s''intégrer à la réalité qui l''entoure, incapable également de dormir à cause du décalage horaire.Dans ce même établissement, Charlotte, une jeune Américaine fraîchement diplômée, accompagne son mari, photographe de mode. Ce dernier semble s''intéresser davantage à son travail qu''à sa femme. Se sentant délaissée, Charlotte cherche un peu d''attention. Elle va en trouver auprès de Bob...', 'USA');
INSERT INTO public.film VALUES (61, 'Kill Bill', 2003, 37, 'Drame', 'Au cours d''une cérémonie de mariage en plein désert, un commando fait irruption dans la chapelle et tire sur les convives. Laissée pour morte, la Mariée enceinte retrouve ses esprits après un coma de quatre ans.Celle qui a auparavant exercé les fonctions de tueuse à gages au sein du Détachement International des Vipères Assassines n''a alors plus qu''une seule idée en tête : venger la mort de ses proches en éliminant tous les membres de l''organisation criminelle, dont leur chef Bill qu''elle se réserve pour la fin.', 'USA');
INSERT INTO public.film VALUES (62, 'Stalingrad', 2001, 34, 'Drame', '', 'USA');
INSERT INTO public.film VALUES (63, 'Million Dollar Baby', 2005, 20, 'Drame', 'Une histoire d''amour tragique et platonique entre une boxeuse et un vieil entraîneur de trente ans son aîné.', 'USA');
INSERT INTO public.film VALUES (64, 'Pour quelques dollars de plus', 1965, 219, 'Western', 'Le colonel Douglas Mortimer collabore avec un chasseur de primes surnommé L''''Etranger''. Tous les deux souhaitent capturer Indio, un tueur fou, qui sème la terreur autour de lui. Ce dernier et ses hommes sont sur le point de piller la banque d''El Paso.', 'IT');


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genre VALUES ('Histoire');
INSERT INTO public.genre VALUES ('Drame');
INSERT INTO public.genre VALUES ('Suspense');
INSERT INTO public.genre VALUES ('Catastrophe');
INSERT INTO public.genre VALUES ('Policier');
INSERT INTO public.genre VALUES ('Thriller');
INSERT INTO public.genre VALUES ('Aventures');
INSERT INTO public.genre VALUES ('Science-fiction');
INSERT INTO public.genre VALUES ('Comédie');
INSERT INTO public.genre VALUES ('Comédie dramatique');
INSERT INTO public.genre VALUES ('Comédie sentimentale');
INSERT INTO public.genre VALUES ('Fantastique');
INSERT INTO public.genre VALUES ('Horreur');
INSERT INTO public.genre VALUES ('Action');
INSERT INTO public.genre VALUES ('Guerre');
INSERT INTO public.genre VALUES ('Dessin animé');
INSERT INTO public.genre VALUES ('Documentaire');
INSERT INTO public.genre VALUES ('Western');


--
-- Data for Name: internaute; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.internaute VALUES ('rigaux@cnam.fr', 'Rigaux', 'Philippe', 'Auvergne');
INSERT INTO public.internaute VALUES ('davy@bnf.fr', 'Davy', 'Cécile', 'Basse-Normandie');
INSERT INTO public.internaute VALUES ('waller@lri.fr', 'Waller', 'Emmanuel', 'Aquitaine');


--
-- Data for Name: notation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.notation VALUES (1, 'davy@bnf.fr', 2);
INSERT INTO public.notation VALUES (2, 'rigaux@cnam.fr', 5);
INSERT INTO public.notation VALUES (3, 'rigaux@cnam.fr', 5);
INSERT INTO public.notation VALUES (4, 'davy@bnf.fr', 1);
INSERT INTO public.notation VALUES (5, 'davy@bnf.fr', 4);
INSERT INTO public.notation VALUES (5, 'waller@lri.fr', 2);
INSERT INTO public.notation VALUES (6, 'davy@bnf.fr', 4);
INSERT INTO public.notation VALUES (7, 'davy@bnf.fr', 4);
INSERT INTO public.notation VALUES (7, 'waller@lri.fr', 5);
INSERT INTO public.notation VALUES (10, 'davy@bnf.fr', 4);
INSERT INTO public.notation VALUES (10, 'waller@lri.fr', 3);
INSERT INTO public.notation VALUES (11, 'waller@lri.fr', 5);
INSERT INTO public.notation VALUES (12, 'waller@lri.fr', 3);
INSERT INTO public.notation VALUES (13, 'rigaux@cnam.fr', 4);
INSERT INTO public.notation VALUES (14, 'davy@bnf.fr', 2);
INSERT INTO public.notation VALUES (14, 'rigaux@cnam.fr', 3);
INSERT INTO public.notation VALUES (17, 'waller@lri.fr', 1);
INSERT INTO public.notation VALUES (18, 'waller@lri.fr', 3);
INSERT INTO public.notation VALUES (19, 'davy@bnf.fr', 3);
INSERT INTO public.notation VALUES (19, 'rigaux@cnam.fr', 2);
INSERT INTO public.notation VALUES (20, 'davy@bnf.fr', 4);
INSERT INTO public.notation VALUES (20, 'rigaux@cnam.fr', 4);
INSERT INTO public.notation VALUES (22, 'davy@bnf.fr', 4);
INSERT INTO public.notation VALUES (22, 'waller@lri.fr', 5);
INSERT INTO public.notation VALUES (24, 'rigaux@cnam.fr', 3);
INSERT INTO public.notation VALUES (24, 'waller@lri.fr', 2);
INSERT INTO public.notation VALUES (25, 'davy@bnf.fr', 5);
INSERT INTO public.notation VALUES (27, 'waller@lri.fr', 4);
INSERT INTO public.notation VALUES (28, 'davy@bnf.fr', 2);
INSERT INTO public.notation VALUES (30, 'waller@lri.fr', 3);
INSERT INTO public.notation VALUES (31, 'waller@lri.fr', 3);
INSERT INTO public.notation VALUES (33, 'davy@bnf.fr', 5);
INSERT INTO public.notation VALUES (37, 'davy@bnf.fr', 3);
INSERT INTO public.notation VALUES (38, 'davy@bnf.fr', 3);
INSERT INTO public.notation VALUES (40, 'davy@bnf.fr', 2);
INSERT INTO public.notation VALUES (41, 'davy@bnf.fr', 3);
INSERT INTO public.notation VALUES (41, 'rigaux@cnam.fr', 5);
INSERT INTO public.notation VALUES (43, 'rigaux@cnam.fr', 2);
INSERT INTO public.notation VALUES (44, 'davy@bnf.fr', 1);
INSERT INTO public.notation VALUES (44, 'waller@lri.fr', 4);
INSERT INTO public.notation VALUES (45, 'davy@bnf.fr', 3);
INSERT INTO public.notation VALUES (45, 'rigaux@cnam.fr', 3);
INSERT INTO public.notation VALUES (47, 'waller@lri.fr', 2);
INSERT INTO public.notation VALUES (51, 'davy@bnf.fr', 5);
INSERT INTO public.notation VALUES (52, 'davy@bnf.fr', 5);
INSERT INTO public.notation VALUES (53, 'davy@bnf.fr', 2);
INSERT INTO public.notation VALUES (54, 'rigaux@cnam.fr', 5);
INSERT INTO public.notation VALUES (58, 'davy@bnf.fr', 3);
INSERT INTO public.notation VALUES (58, 'waller@lri.fr', 2);
INSERT INTO public.notation VALUES (61, 'davy@bnf.fr', 3);
INSERT INTO public.notation VALUES (61, 'rigaux@cnam.fr', 4);


--
-- Data for Name: pays; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pays VALUES ('FR', 'France', 'Français');
INSERT INTO public.pays VALUES ('USA', 'Etats Unis', 'Anglais');
INSERT INTO public.pays VALUES ('IT', 'Italie', 'Italien');
INSERT INTO public.pays VALUES ('GB', 'Royaume-Uni', 'Anglais');
INSERT INTO public.pays VALUES ('DE', 'Allemagne', 'Allemand');
INSERT INTO public.pays VALUES ('JP', 'Japon', 'Japonais');


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.role VALUES (1, 15, 'John Ferguson');
INSERT INTO public.role VALUES (1, 16, 'Madeleine Elster');
INSERT INTO public.role VALUES (2, 5, 'Ripley');
INSERT INTO public.role VALUES (3, 109, 'Rose DeWitt Bukater');
INSERT INTO public.role VALUES (3, 110, 'Jack Dawson');
INSERT INTO public.role VALUES (5, 11, 'Sean Archer/Castor Troy');
INSERT INTO public.role VALUES (5, 12, 'Castor Troy/Sean Archer');
INSERT INTO public.role VALUES (6, 14, 'Constable Ichabod Crane');
INSERT INTO public.role VALUES (6, 96, 'Katrina Anne Van Tassel');
INSERT INTO public.role VALUES (6, 97, 'Le cavalier');
INSERT INTO public.role VALUES (7, 18, 'Lester Burnham');
INSERT INTO public.role VALUES (7, 19, 'Carolyn Burnham');
INSERT INTO public.role VALUES (8, 20, 'William Munny');
INSERT INTO public.role VALUES (8, 21, 'Little Bill Dagget');
INSERT INTO public.role VALUES (8, 22, 'Ned Logan');
INSERT INTO public.role VALUES (9, 23, 'Maximus');
INSERT INTO public.role VALUES (9, 147, 'Commode');
INSERT INTO public.role VALUES (9, 148, 'Lucilla');
INSERT INTO public.role VALUES (9, 149, 'Marc Aurele');
INSERT INTO public.role VALUES (10, 24, 'Deckard');
INSERT INTO public.role VALUES (10, 25, 'Batty');
INSERT INTO public.role VALUES (11, 27, 'McClane');
INSERT INTO public.role VALUES (12, 27, 'McClane');
INSERT INTO public.role VALUES (13, 30, 'Van Gogh');
INSERT INTO public.role VALUES (14, 18, 'Doe');
INSERT INTO public.role VALUES (14, 22, 'Somerset');
INSERT INTO public.role VALUES (14, 32, 'Mills');
INSERT INTO public.role VALUES (15, 27, 'Cole');
INSERT INTO public.role VALUES (16, 35, 'Baskerville');
INSERT INTO public.role VALUES (16, 36, 'de Melk');
INSERT INTO public.role VALUES (17, 11, 'Vincent Vega');
INSERT INTO public.role VALUES (17, 27, 'Butch Coolidge');
INSERT INTO public.role VALUES (17, 37, 'Jimmy Dimmick');
INSERT INTO public.role VALUES (17, 38, 'Jules Winnfield');
INSERT INTO public.role VALUES (17, 39, 'Jody');
INSERT INTO public.role VALUES (17, 40, 'Mia Wallace');
INSERT INTO public.role VALUES (17, 97, 'Capt. Koons');
INSERT INTO public.role VALUES (17, 98, 'Winston ''The Wolf'' Wolfe');
INSERT INTO public.role VALUES (17, 99, 'Pumpkin (Ringo)');
INSERT INTO public.role VALUES (18, 42, 'Mary Jensen Matthews');
INSERT INTO public.role VALUES (18, 43, 'Pat Healy');
INSERT INTO public.role VALUES (19, 44, 'Terminator');
INSERT INTO public.role VALUES (20, 46, 'Martin Brody');
INSERT INTO public.role VALUES (20, 47, 'Quint');
INSERT INTO public.role VALUES (20, 48, 'Matt Hooper');
INSERT INTO public.role VALUES (21, 50, 'Dr. Hannibal Lecter');
INSERT INTO public.role VALUES (21, 51, 'Clarice Starling');
INSERT INTO public.role VALUES (22, 59, 'Dr. Nikos Tatopoulos');
INSERT INTO public.role VALUES (22, 60, 'Philippe Roaché');
INSERT INTO public.role VALUES (23, 62, 'Neo');
INSERT INTO public.role VALUES (23, 63, 'Morpheus');
INSERT INTO public.role VALUES (24, 60, 'Franz Krieger');
INSERT INTO public.role VALUES (24, 65, 'Ethan Hunt');
INSERT INTO public.role VALUES (24, 66, 'Jim Phelps');
INSERT INTO public.role VALUES (24, 67, 'Claire Phelps');
INSERT INTO public.role VALUES (26, 20, 'Luther Whitney');
INSERT INTO public.role VALUES (26, 21, 'Le président Richmond');
INSERT INTO public.role VALUES (26, 69, 'Seth Frank');
INSERT INTO public.role VALUES (27, 72, 'Inspecteur Cruchot');
INSERT INTO public.role VALUES (27, 73, 'Adjudant Gerber');
INSERT INTO public.role VALUES (28, 57, 'Dr. Ian Malcolm');
INSERT INTO public.role VALUES (29, 65, 'Charlie Babbitt');
INSERT INTO public.role VALUES (29, 80, 'Raymond Babbitt');
INSERT INTO public.role VALUES (30, 53, 'Iceman');
INSERT INTO public.role VALUES (30, 65, 'Lt. Pete ''Maverick'' Mitchell');
INSERT INTO public.role VALUES (30, 82, 'Charlotte Blackwood');
INSERT INTO public.role VALUES (31, 75, 'Nathalie Morin');
INSERT INTO public.role VALUES (31, 76, 'Christiane');
INSERT INTO public.role VALUES (31, 84, 'Jean-Claude Dus');
INSERT INTO public.role VALUES (31, 85, 'Jérôme');
INSERT INTO public.role VALUES (31, 86, 'Popeye');
INSERT INTO public.role VALUES (32, 20, '');
INSERT INTO public.role VALUES (33, 88, 'Bates');
INSERT INTO public.role VALUES (33, 89, 'Lila Crane');
INSERT INTO public.role VALUES (33, 90, 'Marion Crane');
INSERT INTO public.role VALUES (34, 24, 'Han Solo');
INSERT INTO public.role VALUES (34, 92, 'Luke Skywalker');
INSERT INTO public.role VALUES (34, 93, 'Princesse Leia');
INSERT INTO public.role VALUES (35, 94, 'Mitch Brenner');
INSERT INTO public.role VALUES (35, 95, 'Melanie Daniels');
INSERT INTO public.role VALUES (36, 37, 'Mr. Brown');
INSERT INTO public.role VALUES (36, 98, 'Mr. White/Larry');
INSERT INTO public.role VALUES (36, 99, 'Freddy Newendyke/Mr. Orange');
INSERT INTO public.role VALUES (36, 100, 'Nice Guy Eddie');
INSERT INTO public.role VALUES (36, 215, 'Mr Blonde');
INSERT INTO public.role VALUES (36, 217, 'Mr Pink');
INSERT INTO public.role VALUES (36, 218, 'Mr Blue');
INSERT INTO public.role VALUES (37, 65, 'Docteur William ''Bill'' Harford');
INSERT INTO public.role VALUES (37, 102, 'Alice Harford');
INSERT INTO public.role VALUES (38, 103, 'Jack Torrance');
INSERT INTO public.role VALUES (39, 35, 'Mark R');
INSERT INTO public.role VALUES (39, 95, 'Marnie Edgar');
INSERT INTO public.role VALUES (41, 105, 'Roger O. Thornhill');
INSERT INTO public.role VALUES (41, 106, 'Eve Kendall');
INSERT INTO public.role VALUES (41, 107, 'Philipp Vandamm');
INSERT INTO public.role VALUES (42, 80, '');
INSERT INTO public.role VALUES (42, 112, 'Jeanne d''Arc');
INSERT INTO public.role VALUES (42, 113, 'Yolande d''Aragon');
INSERT INTO public.role VALUES (42, 114, 'Charles VII');
INSERT INTO public.role VALUES (42, 115, 'Dunois');
INSERT INTO public.role VALUES (43, 27, 'Major Korben Dalla');
INSERT INTO public.role VALUES (43, 112, 'Leeloo');
INSERT INTO public.role VALUES (43, 116, 'Jean-Baptiste Emmanuel Zorg');
INSERT INTO public.role VALUES (43, 117, 'Vito Cornelius');
INSERT INTO public.role VALUES (44, 60, 'Léon');
INSERT INTO public.role VALUES (44, 116, 'Norman Stansfield');
INSERT INTO public.role VALUES (44, 118, 'Mathilda');
INSERT INTO public.role VALUES (45, 115, 'Bob');
INSERT INTO public.role VALUES (45, 119, 'Nikita');
INSERT INTO public.role VALUES (45, 120, 'Marco');
INSERT INTO public.role VALUES (46, 39, 'Johanna');
INSERT INTO public.role VALUES (46, 60, 'Enzo Molinari');
INSERT INTO public.role VALUES (46, 121, 'Jacques Mayol');
INSERT INTO public.role VALUES (47, 124, 'Spider-Man');
INSERT INTO public.role VALUES (47, 125, 'Norman Osborn');
INSERT INTO public.role VALUES (47, 126, 'Mary Jane Watson');
INSERT INTO public.role VALUES (47, 127, 'Oncle Ben');
INSERT INTO public.role VALUES (47, 128, 'Tante May');
INSERT INTO public.role VALUES (48, 63, 'Jimmy Jump');
INSERT INTO public.role VALUES (48, 97, 'Frank White');
INSERT INTO public.role VALUES (48, 124, 'Thomas Flanigan');
INSERT INTO public.role VALUES (48, 131, 'Dennis Gilley');
INSERT INTO public.role VALUES (48, 132, 'Thomas Flanigan');
INSERT INTO public.role VALUES (48, 217, 'Test tube');
INSERT INTO public.role VALUES (49, 62, 'Neo');
INSERT INTO public.role VALUES (49, 63, 'Morpheus');
INSERT INTO public.role VALUES (49, 210, 'Trinity');
INSERT INTO public.role VALUES (49, 211, 'Agent Smith');
INSERT INTO public.role VALUES (50, 62, 'Neo');
INSERT INTO public.role VALUES (50, 63, 'Morpheus');
INSERT INTO public.role VALUES (50, 134, 'Agent Smith');
INSERT INTO public.role VALUES (50, 136, 'Trinity');
INSERT INTO public.role VALUES (50, 137, 'L''Oracle');
INSERT INTO public.role VALUES (51, 139, 'Marcel');
INSERT INTO public.role VALUES (51, 140, 'Enseignante');
INSERT INTO public.role VALUES (51, 141, 'Bruno');
INSERT INTO public.role VALUES (52, 18, 'Roger ''Verbal'' Kint');
INSERT INTO public.role VALUES (52, 143, 'Micheal McManus');
INSERT INTO public.role VALUES (52, 144, 'Dean Keaton');
INSERT INTO public.role VALUES (52, 145, 'Fred Fenster');
INSERT INTO public.role VALUES (52, 146, 'Todd Hockney');
INSERT INTO public.role VALUES (53, 98, 'Le lieutenant');
INSERT INTO public.role VALUES (54, 151, 'Don Vito Corleone');
INSERT INTO public.role VALUES (54, 152, 'Micheal');
INSERT INTO public.role VALUES (54, 153, 'Sonny');
INSERT INTO public.role VALUES (54, 154, 'Tom Hagen');
INSERT INTO public.role VALUES (54, 155, 'Kay Adams');
INSERT INTO public.role VALUES (57, 167, 'Luis Gara');
INSERT INTO public.role VALUES (57, 168, 'Jackie Brown');
INSERT INTO public.role VALUES (57, 169, 'Melanie');
INSERT INTO public.role VALUES (57, 170, 'Ray Nicolette');
INSERT INTO public.role VALUES (57, 212, 'Ordell Robbie');
INSERT INTO public.role VALUES (58, 27, 'McClane');
INSERT INTO public.role VALUES (58, 38, 'Zeus Carver');
INSERT INTO public.role VALUES (58, 169, 'Simon Gruber');
INSERT INTO public.role VALUES (59, 27, 'Malcom Crowe');
INSERT INTO public.role VALUES (59, 171, 'Cole Sear');
INSERT INTO public.role VALUES (60, 173, 'Bob Harris');
INSERT INTO public.role VALUES (60, 174, 'Charlotte');
INSERT INTO public.role VALUES (60, 175, 'John');
INSERT INTO public.role VALUES (60, 176, 'Kelly');
INSERT INTO public.role VALUES (60, 177, 'Patron Nightclub');
INSERT INTO public.role VALUES (61, 40, 'La mariée, alias ''Black Mamba''');
INSERT INTO public.role VALUES (61, 213, 'O-Ren Ishii');
INSERT INTO public.role VALUES (61, 214, 'Bill');
INSERT INTO public.role VALUES (61, 215, 'Budd / Sidewinder');
INSERT INTO public.role VALUES (61, 216, 'Elle Driver');
INSERT INTO public.role VALUES (62, 182, 'Vassili Zaïtzev');
INSERT INTO public.role VALUES (62, 183, 'major König');
INSERT INTO public.role VALUES (63, 20, 'Frankie Dunn');
INSERT INTO public.role VALUES (63, 22, 'Eddie Scrap-Iron Dupris');
INSERT INTO public.role VALUES (63, 224, 'Maggie Fitzerald');


--
-- Name: artiste pkartiste; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artiste
    ADD CONSTRAINT pkartiste PRIMARY KEY (idartiste);


--
-- Name: film pkfilm; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT pkfilm PRIMARY KEY (idfilm);


--
-- Name: genre pkgenre; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT pkgenre PRIMARY KEY (code);


--
-- Name: internaute pkinternaute; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.internaute
    ADD CONSTRAINT pkinternaute PRIMARY KEY (email);


--
-- Name: notation pknotation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notation
    ADD CONSTRAINT pknotation PRIMARY KEY (idfilm, email);


--
-- Name: pays pkpays; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pays
    ADD CONSTRAINT pkpays PRIMARY KEY (code);


--
-- Name: role pkrole; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT pkrole PRIMARY KEY (idacteur, idfilm);


--
-- Name: artiste uniquenomartiste; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artiste
    ADD CONSTRAINT uniquenomartiste UNIQUE (nom, prenom);


--
-- Name: film film_codepays_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_codepays_fkey FOREIGN KEY (codepays) REFERENCES public.pays(code);


--
-- Name: film film_idmes_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_idmes_fkey FOREIGN KEY (idmes) REFERENCES public.artiste(idartiste);


--
-- Name: role role_idacteur_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_idacteur_fkey FOREIGN KEY (idacteur) REFERENCES public.artiste(idartiste);


--
-- Name: role role_idfilm_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_idfilm_fkey FOREIGN KEY (idfilm) REFERENCES public.film(idfilm);


--
-- PostgreSQL database dump complete
--

