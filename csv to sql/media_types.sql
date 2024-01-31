CREATE TABLE MediaTypes(
   MediaTypeId INTEGER  NOT NULL PRIMARY KEY 
  ,Name        VARCHAR(27) NOT NULL
);
INSERT INTO MediaTypes(MediaTypeId,Name) VALUES (1,'MPEG audio file');
INSERT INTO MediaTypes(MediaTypeId,Name) VALUES (2,'Protected AAC audio file');
INSERT INTO MediaTypes(MediaTypeId,Name) VALUES (3,'Protected MPEG-4 video file');
INSERT INTO MediaTypes(MediaTypeId,Name) VALUES (4,'Purchased AAC audio file');
INSERT INTO MediaTypes(MediaTypeId,Name) VALUES (5,'AAC audio file');
