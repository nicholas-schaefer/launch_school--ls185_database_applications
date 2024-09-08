--
-- PostgreSQL database dump
-- psql 185_1 < nick.sql

-- SELECT * FROM "185_1";

-- \dt--
-- PostgreSQL database dump
--

--          List of relations
--  Schema |   Name    | Type  | Owner
-- --------+-----------+-------+-------
--  public | directors | table | nick
--  public | films     | table | nick

--  id |           title           | year |   genre   | duration | director_id
-- ----+---------------------------+------+-----------+----------+-------------
--   1 | Die Hard                  | 1988 | action    |      132 |           1
--   2 | Casablanca                | 1942 | drama     |      102 |           2
--   3 | The Conversation          | 1974 | thriller  |      113 |           3
--   4 | 1984                      | 1956 | scifi     |       90 |           4
--   5 | Tinker Tailor Soldier Spy | 2011 | espionage |      127 |           5
--   6 | The Birdcage              | 1996 | comedy    |      118 |           6
--   7 | The Godfather             | 1972 | crime     |      175 |           3
--   8 | 12 Angry Men              | 1957 | drama     |       96 |           7
--   9 | Wayne's World             | 1992 | comedy    |       95 |           8
--  10 | Let the Right One In      | 2008 | horror    |      114 |           4
-- (10 rows)

--                                       Table "public.films"
--    Column    |          Type          | Collation | Nullable |              Default
-- -------------+------------------------+-----------+----------+-----------------------------------
--  id          | integer                |           | not null | nextval('films_id_seq'::regclass)
--  title       | character varying(255) |           | not null |
--  year        | integer                |           | not null |
--  genre       | character varying(100) |           | not null |
--  duration    | integer                |           | not null |
--  director_id | integer                |           | not null |
-- Indexes:
--     "films_pkey" PRIMARY KEY, btree (id)
--     "title_unique" UNIQUE CONSTRAINT, btree (title)
-- Check constraints:
--     "title_length" CHECK (length(title::text) >= 1)
--     "year_range" CHECK (year >= 1900 AND year <= 2100)
-- Foreign-key constraints:
--     "films_director_id_fkey" FOREIGN KEY (director_id) REFERENCES directors(id)

SELECT * FROM directors;

SELECT * FROM films;
\d films