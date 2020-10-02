CREATE SEQUENCE s1;
CREATE TABLE t1 (
	a INT DEFAULT (NEXT VALUE FOR s1),
	b INT,
	PRIMARY KEY (a)
);

INSERT INTO t1 (b) VALUES (5), (7);
INSERT INTO t1 (b) VALUES (8);

SELECT * FROM t1;