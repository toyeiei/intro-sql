-- basic SQL for data analyst
-- created by DataRockie on 09 December 2019

-- inner join two tables
-- we can write just JOIN (default join in SQL is INNER JOIN)
SELECT
  A.name AS artistName,
  B.title AS albumName
FROM artists AS A
JOIN albums AS B
  ON A.artistid = B.artistid; -- primary key = foreign key

-- inner join more than two tables
SELECT
  A.name AS artistName,
  B.title AS albumName,
  C.name AS trackName
FROM artists AS A
JOIN albums AS B
  ON A.artistid = B.artistid
JOIN tracks AS C
  ON B.albumid = C.albumid;

-- left join can be written the same way as inner join
SELECT
  A.name AS artistName,
  B.title AS albumName,
  C.name AS trackName
FROM artists AS A
LEFT JOIN albums AS B
  ON A.artistid = B.artistid
LEFT JOIN tracks AS C
  ON B.albumid = C.albumid;
