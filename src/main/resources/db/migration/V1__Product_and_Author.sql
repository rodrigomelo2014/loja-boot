DROP TABLE IF EXISTS product;

CREATE TABLE product (
  id BIGSERIAL NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  number_of_pages INTEGER NOT NULL CHECK (number_of_pages >= 30),
  release_date DATE NOT NULL,
  summary_path VARCHAR(255),

  CONSTRAINT PK_product PRIMARY KEY (id)
);

DROP TABLE IF EXISTS product_prices;

CREATE TABLE product_prices (
  product_id BIGINT NOT NULL,
  book_type VARCHAR(255),
  value DECIMAL(19,2),

  CONSTRAINT FK_product_price FOREIGN KEY (product_id) REFERENCES product(id)
);


DROP TABLE IF EXISTS author;

CREATE TABLE author (
  id BIGSERIAL NOT NULL,
  name VARCHAR(255) NOT NULL,

  CONSTRAINT PK_author PRIMARY KEY (id)
);

DROP TABLE IF EXISTS product_authors;

CREATE TABLE product_authors (
  product_id BIGINT NOT NULL,
  authors_id BIGINT NOT NULL,

  CONSTRAINT FK_many_to_many_product FOREIGN KEY (product_id) REFERENCES product(id),
  CONSTRAINT FK_many_to_many_author  FOREIGN KEY (authors_id) REFERENCES author(id)
);

-- Insert Authors
INSERT INTO author(name) VALUES ('Fernando');
INSERT INTO author(name) VALUES ('Alberto');
INSERT INTO author(name) VALUES ('Paulo');

-- Insert Book JPA ID:1
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('JPA', 'JPA in action', 120, '2003-05-20', 'JPA-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (1,'EBOOK', 15.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (1,'PRINTED', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (1,'COMBO', 38.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (1,2);
INSERT INTO product_authors(product_id, authors_id) VALUES (1,3);


-- Insert Book JSF ID:2
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('JSF', 'JSF in action', 150, '2003-10-20', 'JSF-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (2,'EBOOK', 15.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (2,'PRINTED', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (2,'COMBO', 38.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (2,2);

-- Insert Book Architecture ID:3
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Architecture', 'Architecture in action', 520, '2009-11-05', 'Architecture-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (3,'EBOOK', 15.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (3,'PRINTED', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (3,'COMBO', 38.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (3,1);
INSERT INTO product_authors(product_id, authors_id) VALUES (3,2);
INSERT INTO product_authors(product_id, authors_id) VALUES (3,3);

-- Insert Book Spring ID:4
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Spring', 'Spring in action', 200, '2012-11-05', 'Spring-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (4,'EBOOK', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (4,'PRINTED', 35.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (4,'COMBO', 58.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (4,1);
INSERT INTO product_authors(product_id, authors_id) VALUES (4,2);


-- Insert Book Spring ID:5
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Spring Cloud', 'Spring Cloud in action', 600, '2018-11-05', 'Spring-Cloud-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (5,'EBOOK', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (5,'PRINTED', 35.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (5,'COMBO', 58.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (5,1);

-- Insert Book Spring ID:6
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Spring Reactive', 'Spring Reactive in action', 600, '2018-11-05', 'Spring-Reactive-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (6,'EBOOK', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (6,'PRINTED', 35.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (6,'COMBO', 58.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (6,1);
INSERT INTO product_authors(product_id, authors_id) VALUES (6,2);


-- Insert Book Spring ID:7
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Spring Actuator', 'Spring Actuator in action', 100, '2018-2-05', 'Spring-Actuator-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (7,'EBOOK', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (7,'PRINTED', 35.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (7,'COMBO', 58.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (7,1);


-- Insert Book Spring ID:8
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Spring Security', 'Spring Security in action', 100, '2018-2-05', 'Spring-Security-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (8,'EBOOK', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (8,'PRINTED', 35.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (8,'COMBO', 58.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (8,1);


-- Insert Book Spring ID:9
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Spring MVC', 'Spring MVC in action', 100, '2018-2-05', 'Spring-MVC-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (9,'EBOOK', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (9,'PRINTED', 35.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (9,'COMBO', 58.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (9,2);


-- Insert Book Spring ID:10
INSERT INTO product(title, description, number_of_pages, release_date, summary_path)
VALUES ('Spring Security oAuth', 'Spring Security oAuth in action', 100, '2018-2-05', 'Spring-Security-oAuth-In-Action.pdf');

INSERT INTO product_prices(product_id, book_type, value) VALUES (10,'EBOOK', 25.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (10,'PRINTED', 35.0);
INSERT INTO product_prices(product_id, book_type, value) VALUES (10,'COMBO', 58.0);

INSERT INTO product_authors(product_id, authors_id) VALUES (10,2);