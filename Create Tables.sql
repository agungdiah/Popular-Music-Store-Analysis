CREATE TABLE MediaTypes(
  MediaTypeId INTEGER  NOT NULL PRIMARY KEY,
  Name        VARCHAR(27) NOT NULL
);

CREATE TABLE genres(
  GenreId INTEGER  NOT NULL PRIMARY KEY,
  Name    VARCHAR(18) NOT NULL
);

CREATE TABLE artists(
  ArtistId INTEGER  NOT NULL PRIMARY KEY,
  Name     VARCHAR(85) NOT NULL
);

CREATE TABLE playlist(
  PlaylistId INTEGER  NOT NULL PRIMARY KEY,
  Name       VARCHAR(26) NOT NULL
);

CREATE TABLE employees(
  EmployeeId INTEGER  NOT NULL PRIMARY KEY,
  LastName   VARCHAR(8) NOT NULL,
  FirstName  VARCHAR(8) NOT NULL,
  Title      VARCHAR(19) NOT NULL,
  ReportsTo  INTEGER,
  BirthDate  VARCHAR(30),
  HireDate   VARCHAR(30),
  Address    VARCHAR(27) NOT NULL,
  City       VARCHAR(10) NOT NULL,
  State      VARCHAR(2) NOT NULL,
  Country    VARCHAR(6) NOT NULL,
  PostalCode VARCHAR(7) NOT NULL,
  Phone      VARCHAR(17) NOT NULL,
  Fax        VARCHAR(17) NOT NULL,
  Email      VARCHAR(24) NOT NULL
);

CREATE TABLE customers(
  CustomerId   INTEGER  NOT NULL PRIMARY KEY,
  FirstName    VARCHAR(9) NOT NULL,
  LastName     VARCHAR(12) NOT NULL,
  Company      VARCHAR(48),
  Address      VARCHAR(40) NOT NULL,
  City         VARCHAR(19) NOT NULL,
  State        VARCHAR(6),
  Country      VARCHAR(14) NOT NULL,
  PostalCode   VARCHAR(10),
  Phone        VARCHAR(19),
  Fax          VARCHAR(18),
  Email        VARCHAR(29) NOT NULL,
  SupportRepId INTEGER  NOT NULL,
     CONSTRAINT fk_employees
      	FOREIGN KEY(SupportRepId) 
	  REFERENCES employees(EmployeeId)
);

CREATE TABLE albums(
  AlbumId  INTEGER  NOT NULL PRIMARY KEY,
  Title    VARCHAR(95) NOT NULL,
  ArtistId INTEGER  NOT NULL,
	CONSTRAINT fk_artists_albums
      	FOREIGN KEY(ArtistId) 
	  REFERENCES artists(ArtistId)
);

CREATE TABLE tracks(
  TrackId      INTEGER  NOT NULL PRIMARY KEY,
  Name         VARCHAR(123) NOT NULL,
  AlbumId      INTEGER  NOT NULL, 
	CONSTRAINT fk_albums_tracks
		FOREIGN KEY(AlbumId)
	REFERENCES albums(albumid),
  MediaTypeId  INTEGER  NOT NULL,
	CONSTRAINT fk_mediatypes_tracks
		FOREIGN KEY(MediaTypeId)
	REFERENCES mediatypes(MediaTypeId),
  GenreId      INTEGER  NOT NULL,
	CONSTRAINT fk_genres_tracks
		FOREIGN KEY(GenreId)
	REFERENCES genres(GenreId),
  Composer     VARCHAR(188),
  Milliseconds INTEGER  NOT NULL,
  Bytes        INTEGER  NOT NULL,
  UnitPrice    NUMERIC(4,2) NOT NULL
);

CREATE TABLE PlaylistTracks(
  PlaylistId INTEGER  NOT NULL PRIMARY KEY,
	CONSTRAINT fk_playlist
		FOREIGN KEY(PlaylistId)
	REFERENCES playlist(PlaylistId),
  TrackId    INTEGER  NOT NULL,
	CONSTRAINT fk_tracks
		FOREIGN KEY(TrackId )
	REFERENCES tracks(TrackId)	
);

CREATE TABLE invoices(
  InvoiceId         INTEGER  NOT NULL PRIMARY KEY,
  CustomerId        INTEGER  NOT NULL,
	CONSTRAINT fk_customers
		FOREIGN KEY(CustomerId)
	REFERENCES customers(CustomerId),
  InvoiceDate       VARCHAR(30),
  BillingAddress    VARCHAR(40) NOT NULL,
  BillingCity       VARCHAR(19) NOT NULL,
  BillingState      VARCHAR(6),
  BillingCountry    VARCHAR(14) NOT NULL,
  BillingPostalCode VARCHAR(10),
  Total             NUMERIC(5,2) NOT NULL
);

CREATE TABLE InvoiceItems(
  InvoiceLineId INTEGER  NOT NULL PRIMARY KEY,
  InvoiceId     INTEGER  NOT NULL,
	CONSTRAINT fk_invoices
      	FOREIGN KEY(InvoiceId ) 
	  REFERENCES invoices ( InvoiceId ),
  TrackId       INTEGER  NOT NULL,
	CONSTRAINT fk_tracks
      	FOREIGN KEY(TrackId  ) 
	  REFERENCES tracks (TrackId  ),
  UnitPrice     NUMERIC(4,2) NOT NULL,
  Quantity      INTEGER  NOT NULL
);
