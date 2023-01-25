CREATE TABLE AUTHOR (
  UUID           VARCHAR(64) NOT NULL PRIMARY KEY,
  FIRST_NAME     VARCHAR(50) NOT NULL,
  LAST_NAME      VARCHAR(50)  NOT NULL
);

CREATE TABLE BOOK (
  UUID           VARCHAR(64)  NOT NULL PRIMARY KEY,
  TITLE          VARCHAR(100) NOT NULL
);

CREATE TABLE AUTHOR_BOOK (
  AUTHOR_UUID      VARCHAR(64) NOT NULL,
  BOOK_UUID        VARCHAR(64) NOT NULL,
  PRIMARY KEY (AUTHOR_UUID, BOOK_UUID),
  CONSTRAINT FK_AB_AUTHOR     FOREIGN KEY (AUTHOR_UUID)  REFERENCES AUTHOR (UUID)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT FK_AB_BOOK       FOREIGN KEY (BOOK_UUID)    REFERENCES BOOK   (UUID)
);