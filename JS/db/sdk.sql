--
-- File generated with SQLiteStudio v3.3.3 on Пн май 23 19:13:06 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
PRAGMA journal_mode = wal;
BEGIN TRANSACTION;

-- Table: component
CREATE TABLE component (
    id         INTEGER PRIMARY KEY AUTOINCREMENT
                       UNIQUE
                       NOT NULL,
    swagger_id INTEGER REFERENCES swagger (id) ON DELETE CASCADE
                                               ON UPDATE CASCADE
                       NOT NULL,
    name       VARCHAR UNIQUE
                       NOT NULL
);

INSERT INTO component (id, swagger_id, name) VALUES (1, 2, 'schemas');
INSERT INTO component (id, swagger_id, name) VALUES (2, 2, 'securitySchemes');

-- Table: enum_method
CREATE TABLE enum_method (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 NOT NULL
                 UNIQUE,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO enum_method (id, name) VALUES (1, 'HEAD');
INSERT INTO enum_method (id, name) VALUES (2, 'GET');
INSERT INTO enum_method (id, name) VALUES (3, 'POST');

-- Table: enum_parameter
CREATE TABLE enum_parameter (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 NOT NULL
                 UNIQUE,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO enum_parameter (id, name) VALUES (1, 'query');
INSERT INTO enum_parameter (id, name) VALUES (2, 'header');
INSERT INTO enum_parameter (id, name) VALUES (3, 'body');

-- Table: fk_parameter_value
CREATE TABLE fk_parameter_value (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    parameter_id INTEGER REFERENCES parameter (id) ON DELETE CASCADE
                                                   ON UPDATE CASCADE
                         NOT NULL,
    value        VARCHAR NOT NULL
);

INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (1, 108, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (2, 109, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (3, 110, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (4, 111, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (5, 112, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (6, 113, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (7, 114, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (8, 115, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (9, 116, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (10, 117, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (11, 118, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (12, 119, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (13, 120, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (14, 121, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (15, 122, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (16, 123, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (17, 124, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (18, 125, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (19, 126, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (20, 127, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (21, 128, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (22, 129, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (23, 130, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (24, 131, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (25, 132, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (26, 133, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (27, 134, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (28, 135, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (29, 136, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (30, 137, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (31, 138, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (32, 139, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (33, 140, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (34, 141, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (35, 142, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (36, 143, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (37, 144, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (38, 145, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (39, 146, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (40, 147, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (41, 148, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (42, 149, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (43, 150, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (44, 151, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (45, 152, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (46, 153, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (47, 154, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (48, 155, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (49, 156, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (50, 157, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (51, 158, 'Bearer t.tIRSCvXxsOZYyYmXJhQ0i0tVCQ7i4cN4QIozlOfwqwII-731bJBa2bgM4v4RV99B-56cGtvR31rrx8NqoRtaNQ');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (52, 159, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (53, 160, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (54, 161, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (55, 162, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (56, 163, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (57, 164, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (58, 165, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (59, 166, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (60, 167, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (61, 168, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (62, 169, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (63, 170, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (64, 171, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (65, 172, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (66, 173, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (67, 174, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (68, 175, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (69, 176, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (70, 177, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (71, 178, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (72, 179, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (73, 180, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (74, 181, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (75, 182, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (76, 183, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (77, 184, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (78, 185, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (79, 186, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (80, 187, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (81, 188, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (82, 189, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (83, 190, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (84, 191, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (85, 192, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (86, 193, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (87, 194, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (88, 195, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (89, 196, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (90, 197, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (91, 198, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (92, 199, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (93, 200, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (94, 201, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (95, 202, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (96, 203, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (97, 204, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (98, 205, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (99, 206, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (100, 207, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (101, 208, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (102, 209, 'application/json');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (103, 38, 'BBG000B9XRY4');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (104, 39, '2015-01-01T00:00:00Z');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (105, 40, '2016-01-01T00:00:00Z');
INSERT INTO fk_parameter_value (id, parameter_id, value) VALUES (106, 41, 'CANDLE_INTERVAL_DAY');

-- Table: m_asset
CREATE TABLE m_asset (
    id      INTEGER PRIMARY KEY AUTOINCREMENT
                    UNIQUE
                    NOT NULL,
    type_id INTEGER REFERENCES m_enum_asset (id) ON DELETE CASCADE
                                                 ON UPDATE CASCADE
                    NOT NULL,
    uid     STRING  UNIQUE
                    NOT NULL,
    name    STRING
);


-- Table: m_buffer
CREATE TABLE m_buffer (
    id      INTEGER PRIMARY KEY AUTOINCREMENT
                    UNIQUE
                    NOT NULL,
    indi_id INTEGER REFERENCES m_indicator (id) ON DELETE CASCADE
                                                ON UPDATE CASCADE
                    NOT NULL,
    number  INTEGER NOT NULL
);


-- Table: m_candle
CREATE TABLE m_candle (
    id            INTEGER PRIMARY KEY AUTOINCREMENT
                          UNIQUE
                          NOT NULL,
    instrument_id INTEGER REFERENCES m_instrument (id) ON DELETE CASCADE
                                                       ON UPDATE CASCADE
                          NOT NULL,
    tf_id         INTEGER NOT NULL
                          REFERENCES m_enum_tf (id) ON DELETE CASCADE
                                                    ON UPDATE CASCADE,
    time          INTEGER NOT NULL,
    open          DOUBLE  NOT NULL,
    high          DOUBLE  NOT NULL,
    low           DOUBLE  NOT NULL,
    close         DOUBLE  NOT NULL,
    volume        INTEGER NOT NULL,
    idx           INTEGER
);


-- Table: m_candle_request
CREATE TABLE m_candle_request (
    id            INTEGER  PRIMARY KEY AUTOINCREMENT
                           UNIQUE
                           NOT NULL,
    instrument_id INTEGER  REFERENCES m_instrument (id) ON DELETE CASCADE
                                                        ON UPDATE CASCADE
                           NOT NULL,
    tf_id         INTEGER  NOT NULL
                           REFERENCES m_enum_tf (id) ON DELETE CASCADE
                                                     ON UPDATE CASCADE,
    time_start    DATETIME NOT NULL,
    time_end      DATETIME NOT NULL,
    done          BOOLEAN  DEFAULT (0) 
                           NOT NULL,
    count         INTEGER
);


-- Table: m_candle_temp
CREATE TABLE m_candle_temp (
    instrument_id INTEGER REFERENCES m_instrument (id) ON DELETE CASCADE
                                                       ON UPDATE CASCADE
                          NOT NULL,
    tf_id         INTEGER NOT NULL
                          REFERENCES m_enum_tf (id) ON DELETE CASCADE
                                                    ON UPDATE CASCADE,
    time          INTEGER NOT NULL,
    open          DOUBLE  NOT NULL,
    high          DOUBLE  NOT NULL,
    low           DOUBLE  NOT NULL,
    close         DOUBLE  NOT NULL,
    volume        INTEGER NOT NULL
);


-- Table: m_cmd
CREATE TABLE m_cmd (
    id         INTEGER PRIMARY KEY AUTOINCREMENT
                       UNIQUE
                       NOT NULL,
    prepare_id INTEGER REFERENCES m_cmd_prepare (id) ON DELETE CASCADE
                                                     ON UPDATE CASCADE,
    type_id    INTEGER REFERENCES m_enum_cmd (id) ON DELETE CASCADE
                                                  ON UPDATE CASCADE
                       NOT NULL,
    params     JSON,
    result     INTEGER
);


-- Table: m_cmd_order
CREATE TABLE m_cmd_order (
    cmd_id               INTEGER REFERENCES m_cmd (id) ON DELETE CASCADE
                                                       ON UPDATE CASCADE
                                 PRIMARY KEY,
    orderId,
    status,
    lotsRequested,
    lotsExecuted,
    currency,
    initialOrderPrice,
    executedOrderPrice,
    totalOrderAmount,
    initialCommission,
    executedCommission,
    aciValue,
    figi,
    direction,
    initialSecurityPrice,
    orderType,
    message
);


-- Table: m_cmd_prepare
CREATE TABLE m_cmd_prepare (
    id            INTEGER PRIMARY KEY AUTOINCREMENT
                          UNIQUE
                          NOT NULL,
    expert_id     INTEGER REFERENCES m_expert (id) ON DELETE CASCADE
                                                   ON UPDATE CASCADE,
    instrument_id INTEGER REFERENCES m_instrument (id) ON DELETE CASCADE
                                                       ON UPDATE CASCADE
                          NOT NULL,
    price         DOUBLE,
    lot           DOUBLE  NOT NULL,
    side_id       INTEGER NOT NULL,
    type_id       INTEGER NOT NULL,
    time          INTEGER NOT NULL,
    time_created  INTEGER NOT NULL
                          DEFAULT (CAST (strftime('%s', 'now') AS INT) ) 
);


-- Table: m_data
CREATE TABLE m_data (
    buffer_id INTEGER REFERENCES m_buffer (id) ON DELETE CASCADE
                                               ON UPDATE CASCADE
                      NOT NULL,
    time      INTEGER NOT NULL,
    value     DOUBLE  NOT NULL
);


-- Table: m_data_int
CREATE TABLE m_data_int (
    buffer_id INTEGER REFERENCES m_buffer (id) ON DELETE CASCADE
                                               ON UPDATE CASCADE
                      NOT NULL,
    time      INTEGER NOT NULL,
    value     INTEGER NOT NULL
);


-- Table: m_enum_asset
CREATE TABLE m_enum_asset (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_asset (id, name) VALUES (5, 'ASSET_TYPE_SECURITY');
INSERT INTO m_enum_asset (id, name) VALUES (6, 'ASSET_TYPE_CURRENCY');
INSERT INTO m_enum_asset (id, name) VALUES (7, 'ASSET_TYPE_COMMODITY');
INSERT INTO m_enum_asset (id, name) VALUES (8, 'ASSET_TYPE_INDEX');

-- Table: m_enum_cmd
CREATE TABLE m_enum_cmd (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR NOT NULL
);

INSERT INTO m_enum_cmd (id, name) VALUES (1, 'open');
INSERT INTO m_enum_cmd (id, name) VALUES (2, 'close');
INSERT INTO m_enum_cmd (id, name) VALUES (3, 'pay');
INSERT INTO m_enum_cmd (id, name) VALUES (4, 'accountOpen');
INSERT INTO m_enum_cmd (id, name) VALUES (5, 'accountClose');
INSERT INTO m_enum_cmd (id, name) VALUES (6, 'status');
INSERT INTO m_enum_cmd (id, name) VALUES (7, 'stopOpen');
INSERT INTO m_enum_cmd (id, name) VALUES (8, 'stopCancel');

-- Table: m_enum_country
CREATE TABLE m_enum_country (
    id          INTEGER PRIMARY KEY AUTOINCREMENT
                        UNIQUE
                        NOT NULL,
    name        VARCHAR UNIQUE
                        NOT NULL,
    description STRING
);

INSERT INTO m_enum_country (id, name, description) VALUES (1, 'US', 'Соединенные Штаты Америки');
INSERT INTO m_enum_country (id, name, description) VALUES (2, 'RU', 'Российская Федерация');
INSERT INTO m_enum_country (id, name, description) VALUES (3, 'CN', 'Китайская Народная Республика');
INSERT INTO m_enum_country (id, name, description) VALUES (4, 'DE', 'Федеративная Республика Германия');
INSERT INTO m_enum_country (id, name, description) VALUES (5, 'IE', NULL);
INSERT INTO m_enum_country (id, name, description) VALUES (6, 'AR', 'Аргентинская Республика');
INSERT INTO m_enum_country (id, name, description) VALUES (7, 'BR', 'Федеративная Республика Бразилия');
INSERT INTO m_enum_country (id, name, description) VALUES (8, 'CA', NULL);
INSERT INTO m_enum_country (id, name, description) VALUES (9, 'IL', 'Государство Израиль');
INSERT INTO m_enum_country (id, name, description) VALUES (10, 'CH', 'Швейцарская Конфедерация');
INSERT INTO m_enum_country (id, name, description) VALUES (11, 'IN', 'Республика Индия');
INSERT INTO m_enum_country (id, name, description) VALUES (12, 'IT', 'Итальянская Республика');
INSERT INTO m_enum_country (id, name, description) VALUES (13, 'KR', 'Республика Корея');
INSERT INTO m_enum_country (id, name, description) VALUES (14, 'JE', NULL);
INSERT INTO m_enum_country (id, name, description) VALUES (15, 'GB', 'Соединенное Королевство Великобритании и Северной Ирландии');
INSERT INTO m_enum_country (id, name, description) VALUES (16, 'TW', NULL);
INSERT INTO m_enum_country (id, name, description) VALUES (17, 'SE', 'Королевство Швеция');
INSERT INTO m_enum_country (id, name, description) VALUES (18, 'FR', 'Французская Республика');
INSERT INTO m_enum_country (id, name, description) VALUES (19, 'JP', NULL);
INSERT INTO m_enum_country (id, name, description) VALUES (20, 'HK', 'Специальный административный регион Китая Гонконг');
INSERT INTO m_enum_country (id, name, description) VALUES (21, 'KZ', 'Республика Казахстан');
INSERT INTO m_enum_country (id, name, description) VALUES (22, 'BM', NULL);
INSERT INTO m_enum_country (id, name, description) VALUES (23, 'SG', 'Республика Сингапур');
INSERT INTO m_enum_country (id, name, description) VALUES (24, 'UY', 'Восточная Республика Уругвай');
INSERT INTO m_enum_country (id, name, description) VALUES (25, 'BE', 'Королевство Бельгии');
INSERT INTO m_enum_country (id, name, description) VALUES (26, 'NL', 'Королевство Нидерландов');
INSERT INTO m_enum_country (id, name, description) VALUES (27, 'LU', 'Великое Герцогство Люксембург');
INSERT INTO m_enum_country (id, name, description) VALUES (28, 'PE', 'Республика Перу');
INSERT INTO m_enum_country (id, name, description) VALUES (29, 'FI', 'Финляндская Республика');
INSERT INTO m_enum_country (id, name, description) VALUES (30, 'TR', 'Турецкая Республика');
INSERT INTO m_enum_country (id, name, description) VALUES (31, 'OM', 'Султанат Оман');
INSERT INTO m_enum_country (id, name, description) VALUES (32, 'BY', 'Республика Беларусь');
INSERT INTO m_enum_country (id, name, description) VALUES (33, 'CY', 'Республика Кипр');
INSERT INTO m_enum_country (id, name, description) VALUES (34, 'EG', 'Арабская Республика Египет');
INSERT INTO m_enum_country (id, name, description) VALUES (35, 'WD', 'Весь мир');
INSERT INTO m_enum_country (id, name, description) VALUES (36, 'EU', 'Еврозона');
INSERT INTO m_enum_country (id, name, description) VALUES (37, 'AA', 'Азия');
INSERT INTO m_enum_country (id, name, description) VALUES (38, 'ES', 'Королевство Испания');

-- Table: m_enum_currency
CREATE TABLE m_enum_currency (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_currency (id, name) VALUES (1, 'usd');
INSERT INTO m_enum_currency (id, name) VALUES (2, 'rub');
INSERT INTO m_enum_currency (id, name) VALUES (3, 'eur');

-- Table: m_enum_exchange
CREATE TABLE m_enum_exchange (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_exchange (id, name) VALUES (1, 'SPB');
INSERT INTO m_enum_exchange (id, name) VALUES (2, 'MOEX');
INSERT INTO m_enum_exchange (id, name) VALUES (3, 'SPB_DE');
INSERT INTO m_enum_exchange (id, name) VALUES (4, 'MOEX_MORNING');
INSERT INTO m_enum_exchange (id, name) VALUES (5, 'SPB_MORNING');
INSERT INTO m_enum_exchange (id, name) VALUES (6, 'LSE_MORNING');
INSERT INTO m_enum_exchange (id, name) VALUES (7, 'LSE');
INSERT INTO m_enum_exchange (id, name) VALUES (8, 'MOEX_PLUS');
INSERT INTO m_enum_exchange (id, name) VALUES (9, 'SPB_RU_MORNING');
INSERT INTO m_enum_exchange (id, name) VALUES (10, 'FX');
INSERT INTO m_enum_exchange (id, name) VALUES (11, 'FX_MTL');
INSERT INTO m_enum_exchange (id, name) VALUES (12, 'Issuance');
INSERT INTO m_enum_exchange (id, name) VALUES (13, 'FORTS');
INSERT INTO m_enum_exchange (id, name) VALUES (14, 'MOEX_WEEKEND');
INSERT INTO m_enum_exchange (id, name) VALUES (15, 'SPB_WEEKEND');

-- Table: m_enum_expert_mode
CREATE TABLE m_enum_expert_mode (
    id   INTEGER UNIQUE
                 NOT NULL
                 PRIMARY KEY AUTOINCREMENT,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_expert_mode (id, name) VALUES (1, 'OFF');
INSERT INTO m_enum_expert_mode (id, name) VALUES (2, 'SIGNAL');
INSERT INTO m_enum_expert_mode (id, name) VALUES (3, 'DEMO');
INSERT INTO m_enum_expert_mode (id, name) VALUES (4, 'REAL');

-- Table: m_enum_focus
CREATE TABLE m_enum_focus (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_focus (id, name) VALUES (1, 'equity');
INSERT INTO m_enum_focus (id, name) VALUES (2, 'mixed_allocation');
INSERT INTO m_enum_focus (id, name) VALUES (3, 'fixed_income');

-- Table: m_enum_futures
CREATE TABLE m_enum_futures (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_futures (id, name) VALUES (1, 'cash_settlement');
INSERT INTO m_enum_futures (id, name) VALUES (2, 'physical_delivery');

-- Table: m_enum_instrument
CREATE TABLE m_enum_instrument (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_instrument (id, name) VALUES (7, 'share');
INSERT INTO m_enum_instrument (id, name) VALUES (8, 'etf');
INSERT INTO m_enum_instrument (id, name) VALUES (9, 'bond');
INSERT INTO m_enum_instrument (id, name) VALUES (10, 'sp');
INSERT INTO m_enum_instrument (id, name) VALUES (11, 'currency');
INSERT INTO m_enum_instrument (id, name) VALUES (12, 'futures');

-- Table: m_enum_log
CREATE TABLE m_enum_log (
    id   INTEGER PRIMARY KEY
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_log (id, name) VALUES (1, 'instrument loaded');
INSERT INTO m_enum_log (id, name) VALUES (2, 'order ok');
INSERT INTO m_enum_log (id, name) VALUES (3, 'order error');
INSERT INTO m_enum_log (id, name) VALUES (4, 'request error');
INSERT INTO m_enum_log (id, name) VALUES (5, 'exchange (dev)');
INSERT INTO m_enum_log (id, name) VALUES (6, 'balance error (dev)');

-- Table: m_enum_order
CREATE TABLE m_enum_order (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR NOT NULL
);

INSERT INTO m_enum_order (id, name) VALUES (1, 'ORDER_TYPE_MARKET');
INSERT INTO m_enum_order (id, name) VALUES (2, 'ORDER_TYPE_LIMIT');

-- Table: m_enum_rebalancing
CREATE TABLE m_enum_rebalancing (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_rebalancing (id, name) VALUES (1, 'quarterly');
INSERT INTO m_enum_rebalancing (id, name) VALUES (2, 'semi_annual');
INSERT INTO m_enum_rebalancing (id, name) VALUES (3, 'annual');

-- Table: m_enum_sector
CREATE TABLE m_enum_sector (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_sector (id, name) VALUES (1, 'it');
INSERT INTO m_enum_sector (id, name) VALUES (2, 'consumer');
INSERT INTO m_enum_sector (id, name) VALUES (3, 'health_care');
INSERT INTO m_enum_sector (id, name) VALUES (4, 'financial');
INSERT INTO m_enum_sector (id, name) VALUES (5, 'industrials');
INSERT INTO m_enum_sector (id, name) VALUES (6, 'energy');
INSERT INTO m_enum_sector (id, name) VALUES (7, 'other');
INSERT INTO m_enum_sector (id, name) VALUES (8, 'utilities');
INSERT INTO m_enum_sector (id, name) VALUES (9, 'materials');
INSERT INTO m_enum_sector (id, name) VALUES (10, 'telecom');
INSERT INTO m_enum_sector (id, name) VALUES (11, 'real_estate');
INSERT INTO m_enum_sector (id, name) VALUES (12, 'ecomaterials');
INSERT INTO m_enum_sector (id, name) VALUES (13, 'green_buildings');
INSERT INTO m_enum_sector (id, name) VALUES (14, 'electrocars');
INSERT INTO m_enum_sector (id, name) VALUES (15, 'green_energy');
INSERT INTO m_enum_sector (id, name) VALUES (16, 'government');
INSERT INTO m_enum_sector (id, name) VALUES (17, 'municipal');

-- Table: m_enum_share
CREATE TABLE m_enum_share (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_share (id, name) VALUES (1, 'SHARE_TYPE_COMMON');
INSERT INTO m_enum_share (id, name) VALUES (2, 'SHARE_TYPE_ADR');
INSERT INTO m_enum_share (id, name) VALUES (3, 'SHARE_TYPE_GDR');
INSERT INTO m_enum_share (id, name) VALUES (4, 'SHARE_TYPE_REIT');
INSERT INTO m_enum_share (id, name) VALUES (5, 'SHARE_TYPE_PREFERRED');
INSERT INTO m_enum_share (id, name) VALUES (6, 'SHARE_TYPE_MLP');

-- Table: m_enum_tf
CREATE TABLE m_enum_tf (
    id      INTEGER PRIMARY KEY AUTOINCREMENT
                    UNIQUE
                    NOT NULL,
    name    VARCHAR NOT NULL
                    UNIQUE,
    seconds INTEGER
);

INSERT INTO m_enum_tf (id, name, seconds) VALUES (1, 'CANDLE_INTERVAL_1_MIN', 60);
INSERT INTO m_enum_tf (id, name, seconds) VALUES (2, 'CANDLE_INTERVAL_5_MIN', 300);
INSERT INTO m_enum_tf (id, name, seconds) VALUES (3, 'CANDLE_INTERVAL_15_MIN', 900);
INSERT INTO m_enum_tf (id, name, seconds) VALUES (4, 'CANDLE_INTERVAL_HOUR', 3600);
INSERT INTO m_enum_tf (id, name, seconds) VALUES (5, 'CANDLE_INTERVAL_DAY', 86400);

-- Table: m_enum_trading_status
CREATE TABLE m_enum_trading_status (
    id   INTEGER PRIMARY KEY AUTOINCREMENT
                 UNIQUE
                 NOT NULL,
    name VARCHAR UNIQUE
                 NOT NULL
);

INSERT INTO m_enum_trading_status (id, name) VALUES (1, 'SECURITY_TRADING_STATUS_NOT_AVAILABLE_FOR_TRADING');
INSERT INTO m_enum_trading_status (id, name) VALUES (2, 'SECURITY_TRADING_STATUS_OPENING_AUCTION_PERIOD');
INSERT INTO m_enum_trading_status (id, name) VALUES (3, 'SECURITY_TRADING_STATUS_BREAK_IN_TRADING');
INSERT INTO m_enum_trading_status (id, name) VALUES (4, 'SECURITY_TRADING_STATUS_SESSION_ASSIGNED');
INSERT INTO m_enum_trading_status (id, name) VALUES (5, 'SECURITY_TRADING_STATUS_NORMAL_TRADING');
INSERT INTO m_enum_trading_status (id, name) VALUES (6, 'SECURITY_TRADING_STATUS_CLOSING_AUCTION');

-- Table: m_expert
CREATE TABLE m_expert (
    id     INTEGER PRIMARY KEY AUTOINCREMENT
                   UNIQUE
                   NOT NULL,
    name   VARCHAR UNIQUE
                   NOT NULL,
    params JSON    NOT NULL
);

INSERT INTO m_expert (id, name, params) VALUES (1, 'MA_INTERSECTION_60', '{"timeFrame":60,

  "barStart":1,

  "actions":[

      {"type":"open",

       "side":"long",

       "activeSeconds":60000,

       "indicators":[{

           "name": "INTERSECTION",

           "buffers": 1,

           "value": 1,

           "params":[

               {"name":"MA","params":{"mode":0,"period":14,"price":0,"shift":0}},

               {"name":"MA","params":{"mode":0,"period":50,"price":0,"shift":0}}

               ]}

       ]},

       {"type":"close",

       "side":"long",

       "activeSeconds":60000,

       "indicators":[{

           "name": "INTERSECTION",

           "value": 2,

           "params":[

               {"name":"MA","params":{"mode":0,"period":14,"price":0,"shift":0}},

               {"name":"MA","params":{"mode":0,"period":50,"price":0,"shift":0}}

               ]}

       ]}]

}');
INSERT INTO m_expert (id, name, params) VALUES (2, 'MA_INTERSECTION_86400', '{"timeFrame":86400,

  "barStart":1,

  "actions":[

      {"type":"open",

       "side":"long",

       "activeSeconds":60000,

       "indicators":[{

           "name": "INTERSECTION",

           "buffers": 1,

           "value": 1,

           "params":[

               {"name":"MA","params":{"mode":0,"period":14,"price":0,"shift":0}},

               {"name":"MA","params":{"mode":0,"period":50,"price":0,"shift":0}}

               ]}

       ]},

       {"type":"close",

       "side":"long",

       "activeSeconds":60000,

       "indicators":[{

           "name": "INTERSECTION",

           "value": 2,

           "params":[

               {"name":"MA","params":{"mode":0,"period":14,"price":0,"shift":0}},

               {"name":"MA","params":{"mode":0,"period":50,"price":0,"shift":0}}

               ]}

       ]}]

}');
INSERT INTO m_expert (id, name, params) VALUES (3, 'STEP_60', '{"timeFrame":60,

  "barStart":1,

  "actions":[

      {"type":"open",

       "side":"long",

       "activeSeconds":60000,

       "indicators":[{

           "name": "STEP",

           "buffers": 1,

           "value": 0,

           "params":[]}

       ]},

       {"type":"close",

       "side":"long",

       "activeSeconds":60000,

       "indicators":[{

           "name": "STEP",

           "value": 1,

           "params":[]}

       ]}]

}');

-- Table: m_expert_uni
CREATE TABLE m_expert_uni (
    id            INTEGER PRIMARY KEY AUTOINCREMENT
                          UNIQUE
                          NOT NULL,
    expert_id     INT     REFERENCES m_expert (id) ON DELETE CASCADE
                                                   ON UPDATE CASCADE
                          NOT NULL,
    instrument_id INT     REFERENCES m_instrument (id) ON DELETE CASCADE
                                                       ON UPDATE CASCADE
                          NOT NULL,
    tf_id         INT     REFERENCES m_enum_tf (id) ON DELETE CASCADE
                                                    ON UPDATE CASCADE
                          NOT NULL,
    barStart      INT     NOT NULL,
    lot           DOUBLE  NOT NULL,
    side_id       INT     NOT NULL,
    type_id       INT     NOT NULL,
    activeSeconds INT     NOT NULL
                          DEFAULT (60),
    indi_id       INT     REFERENCES m_indicator (id) ON DELETE CASCADE
                                                      ON UPDATE CASCADE
                          NOT NULL,
    iValue
);


-- Table: m_fk_instrument
CREATE TABLE m_fk_instrument (
    instrument_id      INTEGER REFERENCES m_instrument (id) ON DELETE CASCADE
                                                            ON UPDATE CASCADE
                               NOT NULL,
    link_instrument_id INTEGER REFERENCES m_instrument (id) ON DELETE SET NULL
                                                            ON UPDATE CASCADE,
    type               VARCHAR NOT NULL,
    uid_original       STRING
);


-- Table: m_indicator
CREATE TABLE m_indicator (
    id            INTEGER PRIMARY KEY AUTOINCREMENT
                          UNIQUE
                          NOT NULL,
    instrument_id INTEGER REFERENCES m_instrument_download (id) ON DELETE CASCADE
                                                                ON UPDATE CASCADE
                          NOT NULL,
    tf_id         INTEGER REFERENCES m_enum_tf (id) ON DELETE RESTRICT
                                                    ON UPDATE CASCADE
                          NOT NULL,
    name          VARCHAR NOT NULL,
    buffers       INTEGER DEFAULT (1) 
                          NOT NULL,
    description   STRING,
    params        JSON,
    is_active     BOOLEAN NOT NULL
                          DEFAULT (1) 
);


-- Table: m_input
CREATE TABLE m_input (
    name        VARCHAR NOT NULL
                        UNIQUE,
    value       JSON    NOT NULL,
    description STRING
);

INSERT INTO m_input (name, value, description) VALUES ('timeFrames', '[{"seconds":60,"timeLimit":"2022-05-18T00:00:00Z"}]', NULL);
INSERT INTO m_input (name, value, description) VALUES ('tickers', '["RTKM","TMOS","GOOGL","VTBR"]', NULL);
INSERT INTO m_input (name, value, description) VALUES ('experts', '[{"ticker":"RTKM","name":"MA_INTERSECTION_60","lot":1,"mode":4},{"ticker":"TMOS","name":"STEP_60","lot":2,"mode":4}]', NULL);
INSERT INTO m_input (name, value, description) VALUES ('trade', '{"algo":true,"real":true,"demo":false,"long":true,"short":false,"token":"myAbCd"}', NULL);
INSERT INTO m_input (name, value, description) VALUES ('books', '["GOOGL"]', NULL);
INSERT INTO m_input (name, value, description) VALUES ('trades', '["AAPL"]', NULL);
INSERT INTO m_input (name, value, description) VALUES ('others', '{"clearCandleHistory":true,"getData":0}', NULL);
INSERT INTO m_input (name, value, description) VALUES ('tgUsers', '["ku_dan"]', NULL);
INSERT INTO m_input (name, value, description) VALUES ('tgToken', 'bot1536231669:abcd', NULL);
INSERT INTO m_input (name, value, description) VALUES ('tgLogTypes', '[1,2,3,4,5,6]', NULL);
INSERT INTO m_input (name, value, description) VALUES ('init', 0, NULL);
INSERT INTO m_input (name, value, description) VALUES ('clear', 0, NULL);
INSERT INTO m_input (name, value, description) VALUES ('inputJson', '{"tickers":["RTKM","TMOS","GOOGL","VTBR"],"timeFrames":[{"seconds":60,"timeLimit":"2022-05-18T00:00:00Z"}],"experts":[{"ticker":"RTKM","name":"MA_INTERSECTION_60","lot":1,"mode":4},{"ticker":"TMOS","name":"STEP_60","lot":2,"mode":4}],"trade":{"algo":true,"real":true,"demo":false,"long":true,"short":false,"token":"myAbCd"},"books":["GOOGL"],"trades":["AAPL"],"others":{"clearCandleHistory":true,"getData":true},"tgUsers":["ku_dan"],"tgToken":"bot1536231669:abcd","tgLogTypes":[1,2,3,4,5,6]}', NULL);

-- Table: m_instrument
CREATE TABLE m_instrument (
    id         INTEGER PRIMARY KEY AUTOINCREMENT
                       UNIQUE
                       NOT NULL,
    type_id    INTEGER REFERENCES m_enum_instrument (id) ON DELETE CASCADE
                                                         ON UPDATE CASCADE
                       NOT NULL,
    uid        STRING  UNIQUE
                       NOT NULL,
    figi       VARCHAR NOT NULL,
    ticker     VARCHAR NOT NULL,
    class_code VARCHAR NOT NULL,
    isin       VARCHAR,
    name       STRING,
    link_id    INTEGER REFERENCES m_instrument (id) ON DELETE CASCADE
                                                    ON UPDATE CASCADE,
    basicAsset VARCHAR
);


-- Table: m_instrument_config_tf
CREATE TABLE m_instrument_config_tf (
    id         INTEGER REFERENCES m_instrument (id) ON DELETE CASCADE
                                                    ON UPDATE CASCADE
                       NOT NULL,
    tf_id      INTEGER REFERENCES m_enum_tf (id) ON DELETE CASCADE
                                                 ON UPDATE CASCADE
                       NOT NULL
                       DEFAULT (1),
    is_full    BOOLEAN NOT NULL
                       DEFAULT (0),
    time_limit VARCHAR
);


-- Table: m_instrument_download
CREATE TABLE m_instrument_download (
    id         INTEGER PRIMARY KEY
                       REFERENCES m_instrument (id) ON DELETE CASCADE
                                                    ON UPDATE CASCADE
                       NOT NULL,
    get_book   BOOLEAN NOT NULL
                       DEFAULT (0),
    get_trades BOOLEAN NOT NULL
                       DEFAULT (0),
    ticker     VARCHAR,
    figi       VARCHAR,
    priority   INTEGER NOT NULL
                       DEFAULT (0) 
);


-- Table: m_log
CREATE TABLE m_log (
    id          INTEGER PRIMARY KEY
                        UNIQUE
                        NOT NULL,
    type_id     INTEGER,
    time        BIGINT  NOT NULL
                        DEFAULT (CAST (strftime('%s', 'now') || substr(strftime('%f', 'now'), -3) AS BIGINT) ),
    description STRING  NOT NULL
);


-- Table: m_signal
CREATE TABLE m_signal (
    expert_uni_id INTEGER NOT NULL
                          REFERENCES m_expert_uni (id) ON DELETE CASCADE
                                                       ON UPDATE CASCADE,
    time          INTEGER NOT NULL
);


-- Table: m_tick
CREATE TABLE m_tick (
    instrument_id INTEGER REFERENCES m_instrument (id) ON DELETE CASCADE
                                                       ON UPDATE CASCADE
                          NOT NULL,
    time_msec     BIGINT  NOT NULL,
    price         DOUBLE  NOT NULL
);


-- Table: parameter
CREATE TABLE parameter (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    route_id    INTEGER REFERENCES route (id) ON DELETE CASCADE
                                              ON UPDATE CASCADE
                        NOT NULL,
    type_id     INTEGER REFERENCES enum_parameter (id) ON DELETE RESTRICT
                                                       ON UPDATE CASCADE
                        NOT NULL,
    name        VARCHAR NOT NULL,
    is_required BOOLEAN NOT NULL
                        DEFAULT (1),
    description STRING,
    property_id INTEGER REFERENCES property (id) ON DELETE SET NULL
                                                 ON UPDATE SET NULL
);

INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (1, 97, 3, 'idType', 1, NULL, 467);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (2, 97, 3, 'classCode', 1, NULL, 468);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (3, 97, 3, 'id', 1, NULL, 469);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (4, 98, 3, 'instrumentStatus', 0, NULL, 471);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (5, 99, 3, 'instrumentStatus', 0, NULL, 471);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (6, 100, 3, 'idType', 1, NULL, 467);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (7, 100, 3, 'classCode', 1, NULL, 468);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (8, 100, 3, 'id', 1, NULL, 469);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (9, 101, 3, 'idType', 1, NULL, 467);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (10, 101, 3, 'classCode', 1, NULL, 468);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (11, 101, 3, 'id', 1, NULL, 469);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (12, 102, 3, 'instrumentStatus', 0, NULL, 471);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (13, 103, 3, 'idType', 1, NULL, 467);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (14, 103, 3, 'classCode', 1, NULL, 468);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (15, 103, 3, 'id', 1, NULL, 469);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (16, 104, 3, 'instrumentStatus', 0, NULL, 471);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (17, 105, 3, 'figi', 1, NULL, 356);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (18, 105, 3, 'from', 1, NULL, 357);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (19, 105, 3, 'to', 1, NULL, 358);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (20, 106, 3, 'id', 1, NULL, 99);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (21, 108, 3, 'figi', 1, NULL, 360);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (22, 108, 3, 'from', 1, NULL, 361);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (23, 108, 3, 'to', 1, NULL, 362);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (24, 109, 3, 'figi', 1, NULL, 385);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (25, 109, 3, 'from', 1, NULL, 386);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (26, 109, 3, 'to', 1, NULL, 387);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (27, 110, 3, 'figi', 1, NULL, 389);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (28, 111, 3, 'idType', 1, NULL, 467);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (29, 111, 3, 'classCode', 1, NULL, 468);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (30, 111, 3, 'id', 1, NULL, 469);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (31, 112, 3, 'idType', 1, NULL, 467);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (32, 112, 3, 'classCode', 1, NULL, 468);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (33, 112, 3, 'id', 1, NULL, 469);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (34, 113, 3, 'instrumentStatus', 0, NULL, 471);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (35, 114, 3, 'exchange', 0, NULL, 660);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (36, 114, 3, 'from', 1, NULL, 661);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (37, 114, 3, 'to', 1, NULL, 662);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (38, 115, 3, 'figi', 1, NULL, 370);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (39, 115, 3, 'from', 1, NULL, 371);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (40, 115, 3, 'to', 1, NULL, 372);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (41, 115, 3, 'interval', 1, NULL, 373);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (42, 116, 3, 'figi', 0, NULL, 398);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (43, 117, 3, 'figi', 1, NULL, 400);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (44, 117, 3, 'from', 1, NULL, 401);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (45, 117, 3, 'to', 1, NULL, 402);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (46, 118, 3, 'figi', 1, NULL, 410);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (47, 118, 3, 'depth', 1, NULL, 411);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (48, 119, 3, 'figi', 1, NULL, 426);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (49, 120, 3, 'generateBrokerReportRequest', 1, NULL, 212);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (50, 120, 3, 'getBrokerReportRequest', 1, NULL, 213);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (51, 121, 3, 'generateDivForeignIssuerReport', 1, NULL, 381);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (52, 121, 3, 'getDivForeignIssuerReport', 1, NULL, 382);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (53, 122, 3, 'accountId', 1, NULL, 497);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (54, 122, 3, 'from', 1, NULL, 498);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (55, 122, 3, 'to', 1, NULL, 499);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (56, 122, 3, 'state', 1, NULL, 500);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (57, 122, 3, 'figi', 1, NULL, 501);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (58, 123, 3, 'accountId', 1, NULL, 536);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (59, 124, 3, 'accountId', 1, NULL, 547);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (60, 125, 3, 'accountId', 1, NULL, 666);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (61, 126, 3, 'accountId', 1, NULL, 216);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (62, 126, 3, 'orderId', 1, NULL, 217);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (63, 127, 3, 'accountId', 1, NULL, 420);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (64, 127, 3, 'orderId', 1, NULL, 421);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (65, 128, 3, 'accountId', 1, NULL, 422);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (66, 129, 3, 'figi', 1, NULL, 556);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (67, 129, 3, 'quantity', 1, NULL, 557);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (68, 129, 3, 'price', 1, NULL, 558);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (69, 129, 3, 'direction', 1, NULL, 559);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (70, 129, 3, 'accountId', 1, NULL, 560);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (71, 129, 3, 'orderType', 1, NULL, 561);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (72, 129, 3, 'orderId', 1, NULL, 562);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (73, 130, 3, 'accountId', 1, NULL, 216);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (74, 130, 3, 'orderId', 1, NULL, 217);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (75, 131, 3, 'accountId', 1, NULL, 222);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (76, 133, 3, 'accountId', 1, NULL, 497);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (77, 133, 3, 'from', 1, NULL, 498);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (78, 133, 3, 'to', 1, NULL, 499);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (79, 133, 3, 'state', 0, NULL, 500);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (80, 133, 3, 'figi', 1, NULL, 501);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (81, 134, 3, 'accountId', 1, NULL, 420);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (82, 134, 3, 'orderId', 1, NULL, 421);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (83, 135, 3, 'accountId', 1, NULL, 422);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (84, 136, 3, 'accountId', 1, NULL, 536);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (85, 137, 3, 'accountId', 1, NULL, 547);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (86, 139, 3, 'figi', 1, NULL, 556);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (87, 139, 3, 'quantity', 1, NULL, 557);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (88, 139, 3, 'price', 1, NULL, 558);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (89, 139, 3, 'direction', 1, NULL, 559);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (90, 139, 3, 'accountId', 1, NULL, 560);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (91, 139, 3, 'orderType', 1, NULL, 561);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (92, 139, 3, 'orderId', 1, NULL, 562);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (93, 140, 3, 'accountId', 1, NULL, 591);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (94, 140, 3, 'amount', 1, NULL, 592);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (95, 141, 3, 'accountId', 1, NULL, 219);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (96, 141, 3, 'stopOrderId', 1, NULL, 220);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (97, 142, 3, 'accountId', 1, NULL, 424);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (98, 143, 3, 'figi', 1, NULL, 579);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (99, 143, 3, 'quantity', 1, NULL, 580);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (100, 143, 3, 'price', 1, NULL, 581);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (101, 143, 3, 'stopPrice', 1, NULL, 582);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (102, 143, 3, 'direction', 1, NULL, 583);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (103, 143, 3, 'accountId', 1, NULL, 584);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (104, 143, 3, 'expirationType', 1, NULL, 585);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (105, 143, 3, 'stopOrderType', 1, NULL, 586);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (106, 143, 3, 'expireDate', 1, NULL, 587);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (107, 146, 3, 'accountId', 1, '????????????? ????? ????????????.', 404);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (108, 97, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (109, 98, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (110, 99, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (111, 100, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (112, 101, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (113, 102, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (114, 103, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (115, 104, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (116, 105, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (117, 106, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (118, 107, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (119, 108, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (120, 109, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (121, 110, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (122, 111, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (123, 112, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (124, 113, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (125, 114, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (126, 115, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (127, 116, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (128, 117, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (129, 118, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (130, 119, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (131, 120, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (132, 121, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (133, 122, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (134, 123, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (135, 124, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (136, 125, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (137, 126, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (138, 127, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (139, 128, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (140, 129, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (141, 130, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (142, 131, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (143, 132, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (144, 133, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (145, 134, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (146, 135, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (147, 136, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (148, 137, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (149, 138, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (150, 139, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (151, 140, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (152, 141, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (153, 142, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (154, 143, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (155, 144, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (156, 145, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (157, 146, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (158, 147, 2, 'Authorization', 1, '????? ???????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (159, 97, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (160, 98, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (161, 99, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (162, 100, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (163, 101, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (164, 102, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (165, 103, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (166, 104, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (167, 105, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (168, 106, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (169, 107, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (170, 108, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (171, 109, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (172, 110, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (173, 111, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (174, 112, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (175, 113, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (176, 114, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (177, 115, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (178, 116, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (179, 117, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (180, 118, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (181, 119, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (182, 120, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (183, 121, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (184, 122, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (185, 123, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (186, 124, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (187, 125, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (188, 126, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (189, 127, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (190, 128, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (191, 129, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (192, 130, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (193, 131, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (194, 132, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (195, 133, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (196, 134, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (197, 135, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (198, 136, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (199, 137, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (200, 138, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (201, 139, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (202, 140, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (203, 141, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (204, 142, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (205, 143, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (206, 144, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (207, 145, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (208, 146, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (209, 147, 2, 'Content-Type', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (210, 97, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (211, 98, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (212, 99, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (213, 100, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (214, 101, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (215, 102, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (216, 103, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (217, 104, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (218, 105, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (219, 106, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (220, 107, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (221, 108, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (222, 109, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (223, 110, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (224, 111, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (225, 112, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (226, 113, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (227, 114, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (228, 115, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (229, 116, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (230, 117, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (231, 118, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (232, 119, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (233, 120, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (234, 121, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (235, 122, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (236, 123, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (237, 124, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (238, 125, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (239, 126, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (240, 127, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (241, 128, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (242, 129, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (243, 130, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (244, 131, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (245, 132, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (246, 133, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (247, 134, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (248, 135, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (249, 136, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (250, 137, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (251, 138, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (252, 139, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (253, 140, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (254, 141, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (255, 142, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (256, 143, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (257, 144, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (258, 145, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (259, 146, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (260, 147, 2, 'x-app-name', 1, '????????? ????????????? ??????????', NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (261, 149, 1, 'offset', 0, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (262, 150, 1, 'chat_id', 1, NULL, NULL);
INSERT INTO parameter (id, route_id, type_id, name, is_required, description, property_id) VALUES (263, 150, 1, 'text', 1, NULL, NULL);

-- Table: parameter_value
CREATE TABLE parameter_value (
    id    INTEGER PRIMARY KEY AUTOINCREMENT
                  NOT NULL
                  UNIQUE,
    name  VARCHAR NOT NULL
                  UNIQUE,
    value STRING  NOT NULL
);

INSERT INTO parameter_value (id, name, value) VALUES (1, 'Authorization', 'Bearer myAbCd');
INSERT INTO parameter_value (id, name, value) VALUES (2, 'Content-Type', 'application/json');
INSERT INTO parameter_value (id, name, value) VALUES (3, 'x-app-name', 'aiooq');

-- Table: poll
CREATE TABLE poll (
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    route_id   INTEGER REFERENCES route (id) ON DELETE CASCADE
                                             ON UPDATE CASCADE
                       NOT NULL,
    priority   INTEGER NOT NULL
                       DEFAULT (0),
    interval   INTEGER NOT NULL
                       DEFAULT (0),
    on_init    BOOLEAN NOT NULL
                       DEFAULT (0),
    on_check   BOOLEAN NOT NULL
                       DEFAULT (0),
    is_active  BOOLEAN NOT NULL
                       DEFAULT (0),
    is_visible BOOLEAN NOT NULL
                       DEFAULT (1) 
);

INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (100, 97, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (101, 98, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (102, 99, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (103, 100, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (104, 101, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (105, 102, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (106, 103, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (107, 104, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (108, 105, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (109, 106, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (110, 107, 100, 86400000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (111, 108, 102, 600000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (112, 109, 102, 600000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (113, 110, 100, 600000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (114, 111, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (115, 112, 2, 600000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (116, 113, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (117, 114, 100, 86400000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (118, 115, 102, 2000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (119, 116, 101, 2000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (120, 117, 101, 30000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (121, 118, 101, 30000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (122, 119, 101, 600000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (123, 120, 0, 0, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (124, 121, 0, 0, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (125, 122, 102, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (126, 123, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (127, 124, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (128, 125, 0, 0, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (129, 126, 100, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (130, 127, 100, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (131, 128, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (132, 129, 100, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (133, 130, 102, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (134, 131, 104, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (135, 132, 100, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (136, 133, 100, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (137, 134, 102, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (138, 135, 103, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (139, 136, 103, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (140, 137, 103, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (141, 138, 101, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (142, 139, 102, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (143, 140, 102, 60000, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (144, 141, 100, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (145, 142, 101, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (146, 143, 100, 1, 0, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (147, 144, 100, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (148, 145, 100, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (149, 146, 1, 0, 1, 0, 0, 0);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (150, 147, 100, 3600000, 1, 0, 1, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (151, 148, 100, 3600000, 1, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (152, 149, 10, 5000, 0, 0, 0, 1);
INSERT INTO poll (id, route_id, priority, interval, on_init, on_check, is_active, is_visible) VALUES (153, 150, 11, 20000, 0, 1, 0, 1);

-- Table: property
CREATE TABLE property (
    id            INTEGER PRIMARY KEY AUTOINCREMENT
                          UNIQUE
                          NOT NULL,
    schema_id     INTEGER REFERENCES schema (id) ON DELETE CASCADE
                                                 ON UPDATE CASCADE
                          NOT NULL,
    name          STRING  NOT NULL,
    type          VARCHAR,
    format        VARCHAR,
    description   VARCHAR,
    ref_schema_id VARCHAR REFERENCES schema (id) ON DELETE CASCADE
                                                 ON UPDATE CASCADE
);

INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (1, 1, '@type', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (2, 2, 'code', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (3, 2, 'message', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (4, 2, 'details', 'array', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (5, 4, 'id', 'string', NULL, '????????????? ?????.', NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (6, 4, 'type', NULL, NULL, NULL, '6');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (7, 4, 'name', 'string', NULL, '???????? ?????.', NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (8, 4, 'status', NULL, NULL, NULL, '5');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (9, 4, 'openedDate', 'string', 'date-time', '???? ???????? ????? ? ??????? ????? UTC.', NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (10, 4, 'closedDate', 'string', 'date-time', '???? ???????? ????? ? ??????? ????? UTC.', NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (11, 4, 'accessLevel', NULL, NULL, NULL, '3');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (12, 7, 'date', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (13, 7, 'value', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (14, 7, 'valuePercent', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (15, 7, 'nominal', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (16, 8, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (17, 8, 'type', NULL, NULL, NULL, '20');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (18, 8, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (19, 8, 'instruments', 'array', NULL, NULL, '14');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (20, 9, 'currentNominal', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (21, 9, 'borrowName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (22, 9, 'issueSize', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (23, 9, 'nominal', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (24, 9, 'nominalCurrency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (25, 9, 'issueKind', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (26, 9, 'interestKind', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (27, 9, 'couponQuantityPerYear', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (28, 9, 'indexedNominalFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (29, 9, 'subordinatedFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (30, 9, 'collateralFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (31, 9, 'taxFreeFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (32, 9, 'amortizationFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (33, 9, 'floatingCouponFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (34, 9, 'perpetualFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (35, 9, 'maturityDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (36, 9, 'returnCondition', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (37, 9, 'stateRegDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (38, 9, 'placementDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (39, 9, 'placementPrice', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (40, 9, 'issueSizePlan', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (41, 10, 'nominal', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (42, 10, 'nominalCurrency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (43, 11, 'baseCurrency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (44, 12, 'totalExpense', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (45, 12, 'hurdleRate', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (46, 12, 'performanceFee', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (47, 12, 'fixedCommission', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (48, 12, 'paymentType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (49, 12, 'watermarkFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (50, 12, 'buyPremium', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (51, 12, 'sellDiscount', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (52, 12, 'rebalancingFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (53, 12, 'rebalancingFreq', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (54, 12, 'managementType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (55, 12, 'primaryIndex', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (56, 12, 'focusType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (57, 12, 'leveragedFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (58, 12, 'numShare', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (59, 12, 'ucitsFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (60, 12, 'releasedDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (61, 12, 'description', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (62, 12, 'primaryIndexDescription', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (63, 12, 'primaryIndexCompany', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (64, 12, 'indexRecoveryPeriod', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (65, 12, 'inavCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (66, 12, 'divYieldFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (67, 12, 'expenseCommission', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (68, 12, 'primaryIndexTrackingError', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (69, 12, 'rebalancingPlan', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (70, 12, 'taxRate', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (71, 12, 'rebalancingDates', 'array', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (72, 12, 'issueKind', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (73, 12, 'nominal', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (74, 12, 'nominalCurrency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (75, 13, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (76, 13, 'type', NULL, NULL, NULL, '20');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (77, 13, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (78, 13, 'nameBrief', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (79, 13, 'description', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (80, 13, 'deletedAt', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (81, 13, 'requiredTests', 'array', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (82, 13, 'currency', NULL, NULL, NULL, '11');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (83, 13, 'security', NULL, NULL, NULL, '17');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (84, 13, 'gosRegCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (85, 13, 'cfi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (86, 13, 'codeNsd', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (87, 13, 'status', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (88, 13, 'brand', NULL, NULL, NULL, '26');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (89, 13, 'updatedAt', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (90, 13, 'brCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (91, 13, 'brCodeName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (92, 13, 'instruments', 'array', NULL, NULL, '14');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (93, 14, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (94, 14, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (95, 14, 'instrumentType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (96, 14, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (97, 14, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (98, 14, 'links', 'array', NULL, NULL, '94');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (99, 15, 'id', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (100, 16, 'asset', NULL, NULL, NULL, '13');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (101, 17, 'isin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (102, 17, 'type', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (103, 17, 'share', NULL, NULL, NULL, '18');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (104, 17, 'bond', NULL, NULL, NULL, '9');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (105, 17, 'sp', NULL, NULL, NULL, '19');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (106, 17, 'etf', NULL, NULL, NULL, '12');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (107, 17, 'clearingCertificate', NULL, NULL, NULL, '10');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (108, 18, 'type', NULL, NULL, NULL, '132');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (109, 18, 'issueSize', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (110, 18, 'nominal', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (111, 18, 'nominalCurrency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (112, 18, 'primaryIndex', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (113, 18, 'dividendRate', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (114, 18, 'preferredShareType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (115, 18, 'ipoDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (116, 18, 'registryDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (117, 18, 'divYieldFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (118, 18, 'issueKind', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (119, 18, 'placementDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (120, 18, 'represIsin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (121, 18, 'issueSizePlan', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (122, 18, 'totalFloat', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (123, 19, 'borrowName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (124, 19, 'nominal', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (125, 19, 'nominalCurrency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (126, 19, 'type', NULL, NULL, NULL, '139');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (127, 19, 'logicPortfolio', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (128, 19, 'assetType', NULL, NULL, NULL, '20');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (129, 19, 'basicAsset', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (130, 19, 'safetyBarrier', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (131, 19, 'maturityDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (132, 19, 'issueSizePlan', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (133, 19, 'issueSize', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (134, 19, 'placementDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (135, 19, 'issueKind', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (136, 22, 'assets', 'array', NULL, NULL, '8');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (137, 23, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (138, 23, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (139, 23, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (140, 23, 'isin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (141, 23, 'lot', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (142, 23, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (143, 23, 'klong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (144, 23, 'kshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (145, 23, 'dlong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (146, 23, 'dshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (147, 23, 'dlongMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (148, 23, 'dshortMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (149, 23, 'shortEnabledFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (150, 23, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (151, 23, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (152, 23, 'couponQuantityPerYear', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (153, 23, 'maturityDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (154, 23, 'nominal', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (155, 23, 'stateRegDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (156, 23, 'placementDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (157, 23, 'placementPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (158, 23, 'aciValue', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (159, 23, 'countryOfRisk', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (160, 23, 'countryOfRiskName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (161, 23, 'sector', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (162, 23, 'issueKind', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (163, 23, 'issueSize', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (164, 23, 'issueSizePlan', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (165, 23, 'tradingStatus', NULL, NULL, NULL, '129');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (166, 23, 'otcFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (167, 23, 'buyAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (168, 23, 'sellAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (169, 23, 'floatingCouponFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (170, 23, 'perpetualFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (171, 23, 'amortizationFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (172, 23, 'minPriceIncrement', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (173, 23, 'apiTradeAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (174, 23, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (175, 24, 'instrument', NULL, NULL, NULL, '23');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (176, 25, 'instruments', 'array', NULL, NULL, '23');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (177, 26, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (178, 26, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (179, 26, 'description', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (180, 26, 'info', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (181, 26, 'company', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (182, 26, 'sector', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (183, 26, 'countryOfRisk', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (184, 26, 'countryOfRiskName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (185, 27, 'tradeId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (186, 27, 'orderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (187, 27, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (188, 27, 'executeSign', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (189, 27, 'tradeDatetime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (190, 27, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (191, 27, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (192, 27, 'direction', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (193, 27, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (194, 27, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (195, 27, 'price', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (196, 27, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (197, 27, 'orderAmount', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (198, 27, 'aciValue', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (199, 27, 'totalOrderAmount', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (200, 27, 'brokerCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (201, 27, 'exchangeCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (202, 27, 'exchangeClearingCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (203, 27, 'repoRate', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (204, 27, 'party', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (205, 27, 'clearValueDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (206, 27, 'secValueDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (207, 27, 'brokerStatus', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (208, 27, 'separateAgreementType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (209, 27, 'separateAgreementNumber', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (210, 27, 'separateAgreementDate', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (211, 27, 'deliveryType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (212, 28, 'generateBrokerReportRequest', NULL, NULL, NULL, '50');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (213, 28, 'getBrokerReportRequest', NULL, NULL, NULL, '60');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (214, 29, 'generateBrokerReportResponse', NULL, NULL, NULL, '51');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (215, 29, 'getBrokerReportResponse', NULL, NULL, NULL, '61');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (216, 30, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (217, 30, 'orderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (218, 31, 'time', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (219, 32, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (220, 32, 'stopOrderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (221, 33, 'time', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (222, 35, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (223, 37, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (224, 37, 'couponDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (225, 37, 'couponNumber', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (226, 37, 'fixDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (227, 37, 'payOneBond', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (228, 37, 'couponType', NULL, NULL, NULL, '38');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (229, 37, 'couponStartDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (230, 37, 'couponEndDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (231, 37, 'couponPeriod', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (232, 39, 'instruments', 'array', NULL, NULL, '40');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (233, 40, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (234, 40, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (235, 40, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (236, 40, 'isin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (237, 40, 'lot', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (238, 40, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (239, 40, 'klong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (240, 40, 'kshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (241, 40, 'dlong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (242, 40, 'dshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (243, 40, 'dlongMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (244, 40, 'dshortMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (245, 40, 'shortEnabledFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (246, 40, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (247, 40, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (248, 40, 'nominal', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (249, 40, 'countryOfRisk', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (250, 40, 'countryOfRiskName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (251, 40, 'tradingStatus', NULL, NULL, NULL, '129');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (252, 40, 'otcFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (253, 40, 'buyAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (254, 40, 'sellAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (255, 40, 'isoCurrencyName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (256, 40, 'minPriceIncrement', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (257, 40, 'apiTradeAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (258, 40, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (259, 41, 'instrument', NULL, NULL, NULL, '40');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (260, 42, 'dividendNet', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (261, 42, 'paymentDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (262, 42, 'declaredDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (263, 42, 'lastBuyDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (264, 42, 'dividendType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (265, 42, 'recordDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (266, 42, 'regularity', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (267, 42, 'closePrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (268, 42, 'yieldValue', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (269, 42, 'createdAt', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (270, 43, 'recordDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (271, 43, 'paymentDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (272, 43, 'securityName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (273, 43, 'isin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (274, 43, 'issuerCountry', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (275, 43, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (276, 43, 'dividend', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (277, 43, 'externalCommission', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (278, 43, 'dividendGross', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (279, 43, 'tax', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (280, 43, 'dividendAmount', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (281, 43, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (282, 44, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (283, 44, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (284, 44, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (285, 44, 'isin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (286, 44, 'lot', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (287, 44, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (288, 44, 'klong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (289, 44, 'kshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (290, 44, 'dlong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (291, 44, 'dshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (292, 44, 'dlongMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (293, 44, 'dshortMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (294, 44, 'shortEnabledFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (295, 44, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (296, 44, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (297, 44, 'fixedCommission', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (298, 44, 'focusType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (299, 44, 'releasedDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (300, 44, 'numShares', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (301, 44, 'countryOfRisk', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (302, 44, 'countryOfRiskName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (303, 44, 'sector', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (304, 44, 'rebalancingFreq', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (305, 44, 'tradingStatus', NULL, NULL, NULL, '129');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (306, 44, 'otcFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (307, 44, 'buyAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (308, 44, 'sellAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (309, 44, 'minPriceIncrement', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (310, 44, 'apiTradeAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (311, 44, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (312, 45, 'instrument', NULL, NULL, NULL, '44');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (313, 46, 'instruments', 'array', NULL, NULL, '44');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (314, 47, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (315, 47, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (316, 47, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (317, 47, 'lot', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (318, 47, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (319, 47, 'klong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (320, 47, 'kshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (321, 47, 'dlong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (322, 47, 'dshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (323, 47, 'dlongMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (324, 47, 'dshortMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (325, 47, 'shortEnabledFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (326, 47, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (327, 47, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (328, 47, 'firstTradeDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (329, 47, 'lastTradeDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (330, 47, 'futuresType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (331, 47, 'assetType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (332, 47, 'basicAsset', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (333, 47, 'basicAssetSize', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (334, 47, 'countryOfRisk', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (335, 47, 'countryOfRiskName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (336, 47, 'sector', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (337, 47, 'expirationDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (338, 47, 'tradingStatus', NULL, NULL, NULL, '129');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (339, 47, 'otcFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (340, 47, 'buyAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (341, 47, 'sellAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (342, 47, 'minPriceIncrement', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (343, 47, 'apiTradeAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (344, 47, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (345, 48, 'instrument', NULL, NULL, NULL, '47');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (346, 49, 'instruments', 'array', NULL, NULL, '47');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (347, 50, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (348, 50, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (349, 50, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (350, 51, 'taskId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (351, 52, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (352, 52, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (353, 52, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (354, 53, 'taskId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (355, 55, 'accounts', 'array', NULL, '?????? ?????? ???????.', '4');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (356, 56, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (357, 56, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (358, 56, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (359, 57, 'accruedInterests', 'array', NULL, NULL, '7');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (360, 58, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (361, 58, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (362, 58, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (363, 59, 'events', 'array', NULL, NULL, '37');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (364, 60, 'taskId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (365, 60, 'page', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (366, 61, 'brokerReport', 'array', NULL, NULL, '27');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (367, 61, 'itemsCount', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (368, 61, 'pagesCount', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (369, 61, 'page', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (370, 62, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (371, 62, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (372, 62, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (373, 62, 'interval', NULL, NULL, NULL, '34');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (374, 63, 'candles', 'array', NULL, NULL, '91');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (375, 64, 'taskId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (376, 64, 'page', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (377, 65, 'dividendsForeignIssuerReport', 'array', NULL, NULL, '43');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (378, 65, 'itemsCount', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (379, 65, 'pagesCount', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (380, 65, 'page', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (381, 66, 'generateDivForeignIssuerReport', NULL, NULL, NULL, '52');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (382, 66, 'getDivForeignIssuerReport', NULL, NULL, NULL, '64');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (383, 67, 'generateDivForeignIssuerReportResponse', NULL, NULL, NULL, '53');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (384, 67, 'divForeignIssuerReport', NULL, NULL, NULL, '65');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (385, 68, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (386, 68, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (387, 68, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (388, 69, 'dividends', 'array', NULL, NULL, '42');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (389, 70, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (390, 71, 'initialMarginOnBuy', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (391, 71, 'initialMarginOnSell', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (392, 71, 'minPriceIncrement', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (393, 71, 'minPriceIncrementAmount', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (394, 73, 'premStatus', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (395, 73, 'qualStatus', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (396, 73, 'qualifiedForWorkWith', 'array', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (397, 73, 'tariff', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (398, 74, 'figi', 'array', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (399, 75, 'lastPrices', 'array', NULL, NULL, '99');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (400, 76, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (401, 76, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (402, 76, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (403, 77, 'trades', 'array', NULL, NULL, '140');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (404, 78, 'accountId', 'string', NULL, '????????????? ????? ????????????.', NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (405, 79, 'liquidPortfolio', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (406, 79, 'startingMargin', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (407, 79, 'minimalMargin', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (408, 79, 'fundsSufficiencyLevel', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (409, 79, 'amountOfMissingFunds', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (410, 80, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (411, 80, 'depth', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (412, 81, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (413, 81, 'depth', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (414, 81, 'bids', 'array', NULL, NULL, '109');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (415, 81, 'asks', 'array', NULL, NULL, '109');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (416, 81, 'lastPrice', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (417, 81, 'closePrice', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (418, 81, 'limitUp', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (419, 81, 'limitDown', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (420, 82, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (421, 82, 'orderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (422, 83, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (423, 84, 'orders', 'array', NULL, NULL, '113');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (424, 85, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (425, 86, 'stopOrders', 'array', NULL, NULL, '134');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (426, 87, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (427, 88, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (428, 88, 'tradingStatus', NULL, NULL, NULL, '129');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (429, 88, 'limitOrderAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (430, 88, 'marketOrderAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (431, 90, 'unaryLimits', 'array', NULL, NULL, '146');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (432, 90, 'streamLimits', 'array', NULL, NULL, '138');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (433, 91, 'open', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (434, 91, 'high', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (435, 91, 'low', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (436, 91, 'close', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (437, 91, 'volume', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (438, 91, 'time', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (439, 91, 'isComplete', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (440, 92, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (441, 92, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (442, 92, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (443, 92, 'isin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (444, 92, 'lot', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (445, 92, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (446, 92, 'klong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (447, 92, 'kshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (448, 92, 'dlong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (449, 92, 'dshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (450, 92, 'dlongMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (451, 92, 'dshortMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (452, 92, 'shortEnabledFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (453, 92, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (454, 92, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (455, 92, 'countryOfRisk', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (456, 92, 'countryOfRiskName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (457, 92, 'instrumentType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (458, 92, 'tradingStatus', NULL, NULL, NULL, '129');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (459, 92, 'otcFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (460, 92, 'buyAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (461, 92, 'sellAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (462, 92, 'minPriceIncrement', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (463, 92, 'apiTradeAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (464, 92, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (465, 94, 'type', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (466, 94, 'instrumentUid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (467, 95, 'idType', NULL, NULL, NULL, '93');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (468, 95, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (469, 95, 'id', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (470, 96, 'instrument', NULL, NULL, NULL, '92');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (471, 98, 'instrumentStatus', NULL, NULL, NULL, '97');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (472, 99, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (473, 99, 'price', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (474, 99, 'time', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (475, 100, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (476, 100, 'units', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (477, 100, 'nano', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (478, 102, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (479, 103, 'id', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (480, 103, 'parentOperationId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (481, 103, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (482, 103, 'payment', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (483, 103, 'price', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (484, 103, 'state', NULL, NULL, NULL, '104');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (485, 103, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (486, 103, 'quantityRest', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (487, 103, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (488, 103, 'instrumentType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (489, 103, 'date', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (490, 103, 'type', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (491, 103, 'operationType', NULL, NULL, NULL, '106');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (492, 103, 'trades', 'array', NULL, NULL, '105');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (493, 105, 'tradeId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (494, 105, 'dateTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (495, 105, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (496, 105, 'price', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (497, 107, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (498, 107, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (499, 107, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (500, 107, 'state', NULL, NULL, NULL, '104');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (501, 107, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (502, 108, 'operations', 'array', NULL, NULL, '103');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (503, 109, 'price', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (504, 109, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (505, 112, 'price', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (506, 112, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (507, 112, 'tradeId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (508, 113, 'orderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (509, 113, 'executionReportStatus', NULL, NULL, NULL, '111');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (510, 113, 'lotsRequested', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (511, 113, 'lotsExecuted', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (512, 113, 'initialOrderPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (513, 113, 'executedOrderPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (514, 113, 'totalOrderAmount', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (515, 113, 'averagePositionPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (516, 113, 'initialCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (517, 113, 'executedCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (518, 113, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (519, 113, 'direction', NULL, NULL, NULL, '110');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (520, 113, 'initialSecurityPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (521, 113, 'stages', 'array', NULL, NULL, '112');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (522, 113, 'serviceCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (523, 113, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (524, 113, 'orderType', NULL, NULL, NULL, '114');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (525, 113, 'orderDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (526, 115, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (527, 115, 'instrumentType', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (528, 115, 'quantity', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (529, 115, 'averagePositionPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (530, 115, 'expectedYield', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (531, 115, 'currentNkd', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (532, 115, 'averagePositionPricePt', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (533, 115, 'currentPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (534, 115, 'averagePositionPriceFifo', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (535, 115, 'quantityLots', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (536, 116, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (537, 117, 'totalAmountShares', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (538, 117, 'totalAmountBonds', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (539, 117, 'totalAmountEtf', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (540, 117, 'totalAmountCurrencies', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (541, 117, 'totalAmountFutures', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (542, 117, 'expectedYield', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (543, 117, 'positions', 'array', NULL, NULL, '115');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (544, 118, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (545, 118, 'blocked', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (546, 118, 'balance', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (547, 119, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (548, 120, 'money', 'array', NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (549, 120, 'blocked', 'array', NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (550, 120, 'securities', 'array', NULL, NULL, '121');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (551, 120, 'limitsLoadingInProgress', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (552, 120, 'futures', 'array', NULL, NULL, '118');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (553, 121, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (554, 121, 'blocked', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (555, 121, 'balance', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (556, 122, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (557, 122, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (558, 122, 'price', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (559, 122, 'direction', NULL, NULL, NULL, '110');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (560, 122, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (561, 122, 'orderType', NULL, NULL, NULL, '114');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (562, 122, 'orderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (563, 123, 'orderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (564, 123, 'executionReportStatus', NULL, NULL, NULL, '111');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (565, 123, 'lotsRequested', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (566, 123, 'lotsExecuted', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (567, 123, 'initialOrderPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (568, 123, 'executedOrderPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (569, 123, 'totalOrderAmount', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (570, 123, 'initialCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (571, 123, 'executedCommission', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (572, 123, 'aciValue', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (573, 123, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (574, 123, 'direction', NULL, NULL, NULL, '110');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (575, 123, 'initialSecurityPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (576, 123, 'orderType', NULL, NULL, NULL, '114');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (577, 123, 'message', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (578, 123, 'initialOrderPricePt', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (579, 124, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (580, 124, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (581, 124, 'price', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (582, 124, 'stopPrice', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (583, 124, 'direction', NULL, NULL, NULL, '135');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (584, 124, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (585, 124, 'expirationType', NULL, NULL, NULL, '136');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (586, 124, 'stopOrderType', NULL, NULL, NULL, '137');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (587, 124, 'expireDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (588, 125, 'stopOrderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (589, 126, 'units', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (590, 126, 'nano', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (591, 127, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (592, 127, 'amount', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (593, 128, 'balance', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (594, 130, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (595, 130, 'ticker', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (596, 130, 'classCode', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (597, 130, 'isin', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (598, 130, 'lot', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (599, 130, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (600, 130, 'klong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (601, 130, 'kshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (602, 130, 'dlong', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (603, 130, 'dshort', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (604, 130, 'dlongMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (605, 130, 'dshortMin', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (606, 130, 'shortEnabledFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (607, 130, 'name', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (608, 130, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (609, 130, 'ipoDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (610, 130, 'issueSize', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (611, 130, 'countryOfRisk', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (612, 130, 'countryOfRiskName', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (613, 130, 'sector', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (614, 130, 'issueSizePlan', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (615, 130, 'nominal', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (616, 130, 'tradingStatus', NULL, NULL, NULL, '129');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (617, 130, 'otcFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (618, 130, 'buyAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (619, 130, 'sellAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (620, 130, 'divYieldFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (621, 130, 'shareType', NULL, NULL, NULL, '132');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (622, 130, 'minPriceIncrement', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (623, 130, 'apiTradeAvailableFlag', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (624, 130, 'uid', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (625, 131, 'instrument', NULL, NULL, NULL, '130');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (626, 133, 'instruments', 'array', NULL, NULL, '130');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (627, 134, 'stopOrderId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (628, 134, 'lotsRequested', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (629, 134, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (630, 134, 'direction', NULL, NULL, NULL, '135');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (631, 134, 'currency', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (632, 134, 'orderType', NULL, NULL, NULL, '137');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (633, 134, 'createDate', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (634, 134, 'activationDateTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (635, 134, 'expirationTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (636, 134, 'price', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (637, 134, 'stopPrice', NULL, NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (638, 138, 'limit', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (639, 138, 'streams', 'array', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (640, 140, 'figi', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (641, 140, 'direction', NULL, NULL, NULL, '141');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (642, 140, 'price', NULL, NULL, NULL, '126');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (643, 140, 'quantity', 'string', 'int64', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (644, 140, 'time', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (645, 142, 'date', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (646, 142, 'isTradingDay', 'boolean', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (647, 142, 'startTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (648, 142, 'endTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (649, 142, 'openingAuctionStartTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (650, 142, 'closingAuctionEndTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (651, 142, 'eveningOpeningAuctionStartTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (652, 142, 'eveningStartTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (653, 142, 'eveningEndTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (654, 142, 'clearingStartTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (655, 142, 'clearingEndTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (656, 142, 'premarketStartTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (657, 142, 'premarketEndTime', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (658, 143, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (659, 143, 'days', 'array', NULL, NULL, '142');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (660, 144, 'exchange', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (661, 144, 'from', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (662, 144, 'to', 'string', 'date-time', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (663, 145, 'exchanges', 'array', NULL, NULL, '143');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (664, 146, 'limitPerMinute', 'integer', 'int32', NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (665, 146, 'methods', 'array', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (666, 147, 'accountId', 'string', NULL, NULL, NULL);
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (667, 148, 'money', 'array', NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (668, 148, 'blocked', 'array', NULL, NULL, '100');
INSERT INTO property (id, schema_id, name, type, format, description, ref_schema_id) VALUES (669, 148, 'blockedGuarantee', 'array', NULL, NULL, '100');

-- Table: response
CREATE TABLE response (
    route_id INTEGER REFERENCES route (id) ON DELETE CASCADE
                                           ON UPDATE CASCADE
                     NOT NULL,
    urn_id   INTEGER NOT NULL,
    time     INTEGER NOT NULL
                     DEFAULT (CAST (strftime('%s', 'now') || substr(strftime('%f', 'now'), -3) AS BIGINT) ),
    code     INTEGER NOT NULL
                     DEFAULT (200),
    header   STRING,
    body     STRING
);


-- Table: route
CREATE TABLE route (
    id            INTEGER PRIMARY KEY AUTOINCREMENT
                          NOT NULL,
    server_id     INTEGER REFERENCES server (id) ON DELETE CASCADE
                                                 ON UPDATE CASCADE
                          NOT NULL,
    method_id     INTEGER REFERENCES enum_method (id) ON DELETE RESTRICT
                                                      ON UPDATE CASCADE
                          NOT NULL,
    urn           VARCHAR NOT NULL,
    description   STRING,
    tag           VARCHAR,
    security      INTEGER DEFAULT (0) 
                          NOT NULL,
    security_desc STRING
);

INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (97, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/BondBy', 'Method for getting a bond by its identifier.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (98, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/Bonds', 'Method for obtaining a list of bonds.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (99, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/Currencies', 'Method for getting a list of currencies.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (100, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/CurrencyBy', 'Method for getting a currency by its identifier.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (101, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/EtfBy', 'Method for obtaining an investment fund by its identifier.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (102, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/Etfs', 'Method for obtaining a list of investment funds.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (103, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/FutureBy', 'Method for getting a futures by its identifier.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (104, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/Futures', 'Method for getting a list of futures.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (105, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAccruedInterests', 'The method of obtaining the accumulated coupon income on a bond.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (106, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAssetBy', 'Method for getting an asset by its ID.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (107, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAssets', 'Method for getting a list of assets.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (108, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/GetBondCoupons', 'Method for obtaining a coupon payment schedule for a bond', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (109, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/GetDividends', 'Method for receiving dividend payment events for an instrument.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (110, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/GetFuturesMargin', 'Method for obtaining the amount of margin on futures.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (111, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/GetInstrumentBy', 'Method for obtaining basic information about the instrument.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (112, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/ShareBy', 'Method for getting a share by its ID.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (113, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/Shares', 'Method for obtaining a list of shares.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (114, 6, 3, 'tinkoff.public.invest.api.contract.v1.InstrumentsService/TradingSchedules', 'Method for obtaining trading schedules of trading platforms.', 'InstrumentsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (115, 6, 3, 'tinkoff.public.invest.api.contract.v1.MarketDataService/GetCandles', 'Method for requesting historical candles by instrument.', 'MarketDataService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (116, 6, 3, 'tinkoff.public.invest.api.contract.v1.MarketDataService/GetLastPrices', 'Method for requesting the latest prices for instruments.', 'MarketDataService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (117, 6, 3, 'tinkoff.public.invest.api.contract.v1.MarketDataService/GetLastTrades', 'The method for requesting the latest depersonalized trades for an instrument.', 'MarketDataService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (118, 6, 3, 'tinkoff.public.invest.api.contract.v1.MarketDataService/GetOrderBook', 'Method for obtaining a glass by instrument.', 'MarketDataService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (119, 6, 3, 'tinkoff.public.invest.api.contract.v1.MarketDataService/GetTradingStatus', 'Method for requesting the status of trading by instruments.', 'MarketDataService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (120, 6, 3, 'tinkoff.public.invest.api.contract.v1.OperationsService/GetBrokerReport', 'Method for obtaining a brokerage report.', 'OperationsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (121, 6, 3, 'tinkoff.public.invest.api.contract.v1.OperationsService/GetDividendsForeignIssuer', 'The method of obtaining the report "Certificate of income outside the Russian Federation".', 'OperationsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (122, 6, 3, 'tinkoff.public.invest.api.contract.v1.OperationsService/GetOperations', 'Method for obtaining a list of account transactions.', 'OperationsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (123, 6, 3, 'tinkoff.public.invest.api.contract.v1.OperationsService/GetPortfolio', 'The method of obtaining a portfolio by account.', 'OperationsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (124, 6, 3, 'tinkoff.public.invest.api.contract.v1.OperationsService/GetPositions', 'Method for getting a list of positions on an account.', 'OperationsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (125, 6, 3, 'tinkoff.public.invest.api.contract.v1.OperationsService/GetWithdrawLimits', 'The method for obtaining the available balance for withdrawing funds.', 'OperationsService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (126, 6, 3, 'tinkoff.public.invest.api.contract.v1.OrdersService/CancelOrder', 'Exchange order cancellation method.', 'OrdersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (127, 6, 3, 'tinkoff.public.invest.api.contract.v1.OrdersService/GetOrderState', 'Method for obtaining the status of a trade order.', 'OrdersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (128, 6, 3, 'tinkoff.public.invest.api.contract.v1.OrdersService/GetOrders', 'Method for getting a list of active orders by account.', 'OrdersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (129, 6, 3, 'tinkoff.public.invest.api.contract.v1.OrdersService/PostOrder', 'Application method.', 'OrdersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (130, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/CancelSandboxOrder', 'Method of canceling a trade order in the sandbox.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (131, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/CloseSandboxAccount', 'Method for closing an account in a sandbox.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (132, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxAccounts', 'Sandbox billing method.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (133, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOperations', 'Method for receiving operations in the sandbox by account number.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (134, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOrderState', 'Method for getting the status of an application in a sandbox.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (135, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOrders', 'Method for getting a list of active orders by sandbox account.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (136, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxPortfolio', 'Portfolio acquisition method in the sandbox.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (137, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxPositions', 'Method for getting positions on a sandbox virtual account.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (138, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/OpenSandboxAccount', 'Account registration method in the sandbox.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (139, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/PostSandboxOrder', 'The method of placing a trade order in the sandbox.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (140, 6, 3, 'tinkoff.public.invest.api.contract.v1.SandboxService/SandboxPayIn', 'Sandbox deposit method.', 'SandboxService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (141, 6, 3, 'tinkoff.public.invest.api.contract.v1.StopOrdersService/CancelStopOrder', 'Stop order cancellation method.', 'StopOrdersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (142, 6, 3, 'tinkoff.public.invest.api.contract.v1.StopOrdersService/GetStopOrders', 'Method for getting a list of active stop orders for an account.', 'StopOrdersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (143, 6, 3, 'tinkoff.public.invest.api.contract.v1.StopOrdersService/PostStopOrder', 'Method for placing a stop order.', 'StopOrdersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (144, 6, 3, 'tinkoff.public.invest.api.contract.v1.UsersService/GetAccounts', 'Method for getting user''s invoices.', 'UsersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (145, 6, 3, 'tinkoff.public.invest.api.contract.v1.UsersService/GetInfo', 'The method for getting information about the user.', 'UsersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (146, 6, 3, 'tinkoff.public.invest.api.contract.v1.UsersService/GetMarginAttributes', 'Calculation of margin indicators for the account.', 'UsersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (147, 6, 3, 'tinkoff.public.invest.api.contract.v1.UsersService/GetUserTariff', 'User rate request.', 'UsersService', 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (148, 7, 2, 'getMe', 'Bot Data Retrieval Method', NULL, 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (149, 7, 2, 'getUpdates', 'The method of obtaining new data in the bot', NULL, 1, NULL);
INSERT INTO route (id, server_id, method_id, urn, description, tag, security, security_desc) VALUES (150, 7, 2, 'sendMessage', 'Message sending method', NULL, 1, NULL);

-- Table: schema
CREATE TABLE schema (
    id           INTEGER PRIMARY KEY AUTOINCREMENT
                         UNIQUE
                         NOT NULL,
    component_id INTEGER REFERENCES component (id) ON DELETE CASCADE
                                                   ON UPDATE CASCADE
                         NOT NULL,
    name         VARCHAR UNIQUE,
    [default]    VARCHAR,
    type         VARCHAR,
    enum         STRING,
    description  STRING,
    example      STRING
);

INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (1, 1, 'protobufAny', NULL, 'object', NULL, NULL, '{"@type":"@type"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (2, 1, 'rpcStatus', NULL, 'object', NULL, NULL, '{"code":1,"details":[{"@type":"@type"},{"@type":"@type"}],"message":"message"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (3, 1, 'v1AccessLevel', 'ACCOUNT_ACCESS_LEVEL_UNSPECIFIED', 'string', '["ACCOUNT_ACCESS_LEVEL_UNSPECIFIED","ACCOUNT_ACCESS_LEVEL_FULL_ACCESS","ACCOUNT_ACCESS_LEVEL_READ_ONLY","ACCOUNT_ACCESS_LEVEL_NO_ACCESS"]', '??????? ??????? ? ?????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (4, 1, 'v1Account', NULL, 'object', NULL, '?????????? ? ?????.', '{"openedDate":"2000-01-23T04:56:07.000Z","closedDate":"2000-01-23T04:56:07.000Z","name":"name","id":"id"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (5, 1, 'v1AccountStatus', 'ACCOUNT_STATUS_UNSPECIFIED', 'string', '["ACCOUNT_STATUS_UNSPECIFIED","ACCOUNT_STATUS_NEW","ACCOUNT_STATUS_OPEN","ACCOUNT_STATUS_CLOSED"]', '?????? ?????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (6, 1, 'v1AccountType', 'ACCOUNT_TYPE_UNSPECIFIED', 'string', '["ACCOUNT_TYPE_UNSPECIFIED","ACCOUNT_TYPE_TINKOFF","ACCOUNT_TYPE_TINKOFF_IIS","ACCOUNT_TYPE_INVEST_BOX"]', '??? ?????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (7, 1, 'v1AccruedInterest', NULL, 'object', NULL, '???????? ?????????? ???????.', '{"date":"2000-01-23T04:56:07.000Z","valuePercent":{"nano":6,"units":"units"},"nominal":{"nano":6,"units":"units"},"value":{"nano":6,"units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (8, 1, 'v1Asset', NULL, 'object', NULL, '?????????? ?? ??????.', '{"uid":"uid","instruments":[{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]},{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]}],"name":"name"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (9, 1, 'v1AssetBond', NULL, 'object', NULL, '?????????.', '{"indexedNominalFlag":true,"couponQuantityPerYear":0,"currentNominal":{"nano":6,"units":"units"},"taxFreeFlag":true,"returnCondition":"returnCondition","collateralFlag":true,"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"amortizationFlag":true,"perpetualFlag":true,"maturityDate":"2000-01-23T04:56:07.000Z","issueSize":{"nano":6,"units":"units"},"interestKind":"interestKind","subordinatedFlag":true,"nominalCurrency":"nominalCurrency","floatingCouponFlag":true,"placementPrice":{"nano":6,"units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (10, 1, 'v1AssetClearingCertificate', NULL, 'object', NULL, '??????????? ?????????? ???????.', '{"nominal":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (11, 1, 'v1AssetCurrency', NULL, 'object', NULL, '??????.', '{"baseCurrency":"baseCurrency"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (12, 1, 'v1AssetEtf', NULL, 'object', NULL, '????.', '{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"numShare":{"nano":6,"units":"units"},"watermarkFlag":true,"description":"description","primaryIndexCompany":"primaryIndexCompany","inavCode":"inavCode","indexRecoveryPeriod":{"nano":6,"units":"units"},"performanceFee":{"nano":6,"units":"units"},"paymentType":"paymentType","managementType":"managementType","primaryIndexTrackingError":{"nano":6,"units":"units"},"nominal":{"nano":6,"units":"units"},"ucitsFlag":true,"expenseCommission":{"nano":6,"units":"units"},"focusType":"focusType","primaryIndexDescription":"primaryIndexDescription","rebalancingPlan":"rebalancingPlan","hurdleRate":{"nano":6,"units":"units"},"primaryIndex":"primaryIndex","leveragedFlag":true,"taxRate":"taxRate","issueKind":"issueKind","sellDiscount":{"nano":6,"units":"units"},"rebalancingDates":["2000-01-23T04:56:07.000Z","2000-01-23T04:56:07.000Z"],"rebalancingFreq":"rebalancingFreq","rebalancingFlag":true,"nominalCurrency":"nominalCurrency","divYieldFlag":true,"totalExpense":{"nano":6,"units":"units"},"buyPremium":{"nano":6,"units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (13, 1, 'v1AssetFull', NULL, 'object', NULL, NULL, '{"cfi":"cfi","description":"description","uid":"uid","requiredTests":["requiredTests","requiredTests"],"codeNsd":"codeNsd","deletedAt":"2000-01-23T04:56:07.000Z","security":{"etf":{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"numShare":{"nano":6,"units":"units"},"watermarkFlag":true,"description":"description","primaryIndexCompany":"primaryIndexCompany","inavCode":"inavCode","indexRecoveryPeriod":{"nano":6,"units":"units"},"performanceFee":{"nano":6,"units":"units"},"paymentType":"paymentType","managementType":"managementType","primaryIndexTrackingError":{"nano":6,"units":"units"},"nominal":{"nano":6,"units":"units"},"ucitsFlag":true,"expenseCommission":{"nano":6,"units":"units"},"focusType":"focusType","primaryIndexDescription":"primaryIndexDescription","rebalancingPlan":"rebalancingPlan","hurdleRate":{"nano":6,"units":"units"},"primaryIndex":"primaryIndex","leveragedFlag":true,"taxRate":"taxRate","issueKind":"issueKind","sellDiscount":{"nano":6,"units":"units"},"rebalancingDates":["2000-01-23T04:56:07.000Z","2000-01-23T04:56:07.000Z"],"rebalancingFreq":"rebalancingFreq","rebalancingFlag":true,"nominalCurrency":"nominalCurrency","divYieldFlag":true,"totalExpense":{"nano":6,"units":"units"},"buyPremium":{"nano":6,"units":"units"}},"clearingCertificate":{"nominal":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"},"share":{"totalFloat":{"nano":6,"units":"units"},"dividendRate":{"nano":6,"units":"units"},"registryDate":"2000-01-23T04:56:07.000Z","primaryIndex":"primaryIndex","preferredShareType":"preferredShareType","issueSizePlan":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency","divYieldFlag":true,"represIsin":"represIsin","ipoDate":"2000-01-23T04:56:07.000Z"},"type":"type","bond":{"indexedNominalFlag":true,"couponQuantityPerYear":0,"currentNominal":{"nano":6,"units":"units"},"taxFreeFlag":true,"returnCondition":"returnCondition","collateralFlag":true,"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"amortizationFlag":true,"perpetualFlag":true,"maturityDate":"2000-01-23T04:56:07.000Z","issueSize":{"nano":6,"units":"units"},"interestKind":"interestKind","subordinatedFlag":true,"nominalCurrency":"nominalCurrency","floatingCouponFlag":true,"placementPrice":{"nano":6,"units":"units"}},"sp":{"issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","logicPortfolio":"logicPortfolio","safetyBarrier":{"nano":6,"units":"units"},"basicAsset":"basicAsset","issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"},"isin":"isin"},"instruments":[{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]},{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]}],"gosRegCode":"gosRegCode","name":"name","brCodeName":"brCodeName","currency":{"baseCurrency":"baseCurrency"},"brCode":"brCode","brand":{"uid":"uid","name":"name","description":"description","company":"company","sector":"sector","countryOfRiskName":"countryOfRiskName","info":"info","countryOfRisk":"countryOfRisk"},"nameBrief":"nameBrief","status":"status","updatedAt":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (14, 1, 'v1AssetInstrument', NULL, 'object', NULL, '?????????????? ???????????.', '{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (15, 1, 'v1AssetRequest', NULL, 'object', NULL, '?????? ?????? ?? ??????????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (16, 1, 'v1AssetResponse', NULL, 'object', NULL, '?????? ?? ??????.', '{"asset":{"cfi":"cfi","description":"description","uid":"uid","requiredTests":["requiredTests","requiredTests"],"codeNsd":"codeNsd","deletedAt":"2000-01-23T04:56:07.000Z","security":{"etf":{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"numShare":{"nano":6,"units":"units"},"watermarkFlag":true,"description":"description","primaryIndexCompany":"primaryIndexCompany","inavCode":"inavCode","indexRecoveryPeriod":{"nano":6,"units":"units"},"performanceFee":{"nano":6,"units":"units"},"paymentType":"paymentType","managementType":"managementType","primaryIndexTrackingError":{"nano":6,"units":"units"},"nominal":{"nano":6,"units":"units"},"ucitsFlag":true,"expenseCommission":{"nano":6,"units":"units"},"focusType":"focusType","primaryIndexDescription":"primaryIndexDescription","rebalancingPlan":"rebalancingPlan","hurdleRate":{"nano":6,"units":"units"},"primaryIndex":"primaryIndex","leveragedFlag":true,"taxRate":"taxRate","issueKind":"issueKind","sellDiscount":{"nano":6,"units":"units"},"rebalancingDates":["2000-01-23T04:56:07.000Z","2000-01-23T04:56:07.000Z"],"rebalancingFreq":"rebalancingFreq","rebalancingFlag":true,"nominalCurrency":"nominalCurrency","divYieldFlag":true,"totalExpense":{"nano":6,"units":"units"},"buyPremium":{"nano":6,"units":"units"}},"clearingCertificate":{"nominal":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"},"share":{"totalFloat":{"nano":6,"units":"units"},"dividendRate":{"nano":6,"units":"units"},"registryDate":"2000-01-23T04:56:07.000Z","primaryIndex":"primaryIndex","preferredShareType":"preferredShareType","issueSizePlan":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency","divYieldFlag":true,"represIsin":"represIsin","ipoDate":"2000-01-23T04:56:07.000Z"},"type":"type","bond":{"indexedNominalFlag":true,"couponQuantityPerYear":0,"currentNominal":{"nano":6,"units":"units"},"taxFreeFlag":true,"returnCondition":"returnCondition","collateralFlag":true,"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"amortizationFlag":true,"perpetualFlag":true,"maturityDate":"2000-01-23T04:56:07.000Z","issueSize":{"nano":6,"units":"units"},"interestKind":"interestKind","subordinatedFlag":true,"nominalCurrency":"nominalCurrency","floatingCouponFlag":true,"placementPrice":{"nano":6,"units":"units"}},"sp":{"issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","logicPortfolio":"logicPortfolio","safetyBarrier":{"nano":6,"units":"units"},"basicAsset":"basicAsset","issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"},"isin":"isin"},"instruments":[{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]},{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]}],"gosRegCode":"gosRegCode","name":"name","brCodeName":"brCodeName","currency":{"baseCurrency":"baseCurrency"},"brCode":"brCode","brand":{"uid":"uid","name":"name","description":"description","company":"company","sector":"sector","countryOfRiskName":"countryOfRiskName","info":"info","countryOfRisk":"countryOfRisk"},"nameBrief":"nameBrief","status":"status","updatedAt":"2000-01-23T04:56:07.000Z"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (17, 1, 'v1AssetSecurity', NULL, 'object', NULL, '?????? ??????.', '{"etf":{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"numShare":{"nano":6,"units":"units"},"watermarkFlag":true,"description":"description","primaryIndexCompany":"primaryIndexCompany","inavCode":"inavCode","indexRecoveryPeriod":{"nano":6,"units":"units"},"performanceFee":{"nano":6,"units":"units"},"paymentType":"paymentType","managementType":"managementType","primaryIndexTrackingError":{"nano":6,"units":"units"},"nominal":{"nano":6,"units":"units"},"ucitsFlag":true,"expenseCommission":{"nano":6,"units":"units"},"focusType":"focusType","primaryIndexDescription":"primaryIndexDescription","rebalancingPlan":"rebalancingPlan","hurdleRate":{"nano":6,"units":"units"},"primaryIndex":"primaryIndex","leveragedFlag":true,"taxRate":"taxRate","issueKind":"issueKind","sellDiscount":{"nano":6,"units":"units"},"rebalancingDates":["2000-01-23T04:56:07.000Z","2000-01-23T04:56:07.000Z"],"rebalancingFreq":"rebalancingFreq","rebalancingFlag":true,"nominalCurrency":"nominalCurrency","divYieldFlag":true,"totalExpense":{"nano":6,"units":"units"},"buyPremium":{"nano":6,"units":"units"}},"clearingCertificate":{"nominal":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"},"share":{"totalFloat":{"nano":6,"units":"units"},"dividendRate":{"nano":6,"units":"units"},"registryDate":"2000-01-23T04:56:07.000Z","primaryIndex":"primaryIndex","preferredShareType":"preferredShareType","issueSizePlan":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency","divYieldFlag":true,"represIsin":"represIsin","ipoDate":"2000-01-23T04:56:07.000Z"},"type":"type","bond":{"indexedNominalFlag":true,"couponQuantityPerYear":0,"currentNominal":{"nano":6,"units":"units"},"taxFreeFlag":true,"returnCondition":"returnCondition","collateralFlag":true,"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"amortizationFlag":true,"perpetualFlag":true,"maturityDate":"2000-01-23T04:56:07.000Z","issueSize":{"nano":6,"units":"units"},"interestKind":"interestKind","subordinatedFlag":true,"nominalCurrency":"nominalCurrency","floatingCouponFlag":true,"placementPrice":{"nano":6,"units":"units"}},"sp":{"issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","logicPortfolio":"logicPortfolio","safetyBarrier":{"nano":6,"units":"units"},"basicAsset":"basicAsset","issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"},"isin":"isin"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (18, 1, 'v1AssetShare', NULL, 'object', NULL, '?????.', '{"totalFloat":{"nano":6,"units":"units"},"dividendRate":{"nano":6,"units":"units"},"registryDate":"2000-01-23T04:56:07.000Z","primaryIndex":"primaryIndex","preferredShareType":"preferredShareType","issueSizePlan":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency","divYieldFlag":true,"represIsin":"represIsin","ipoDate":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (19, 1, 'v1AssetStructuredProduct', NULL, 'object', NULL, '??????????? ????.', '{"issueSizePlan":{"nano":6,"units":"units"},"borrowName":"borrowName","issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","nominal":{"nano":6,"units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","logicPortfolio":"logicPortfolio","safetyBarrier":{"nano":6,"units":"units"},"basicAsset":"basicAsset","issueSize":{"nano":6,"units":"units"},"nominalCurrency":"nominalCurrency"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (20, 1, 'v1AssetType', 'ASSET_TYPE_UNSPECIFIED', 'string', '["ASSET_TYPE_UNSPECIFIED","ASSET_TYPE_CURRENCY","ASSET_TYPE_COMMODITY","ASSET_TYPE_INDEX","ASSET_TYPE_SECURITY"]', '??? ??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (21, 1, 'v1AssetsRequest', NULL, 'object', NULL, '?????? ?????? ???????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (22, 1, 'v1AssetsResponse', NULL, 'object', NULL, '?????? ???????.', '{"assets":[{"uid":"uid","instruments":[{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]},{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]}],"name":"name"},{"uid":"uid","instruments":[{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]},{"uid":"uid","classCode":"classCode","instrumentType":"instrumentType","ticker":"ticker","figi":"figi","links":[{"instrumentUid":"instrumentUid","type":"type"},{"instrumentUid":"instrumentUid","type":"type"}]}],"name":"name"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (23, 1, 'v1Bond', NULL, 'object', NULL, '?????? ???????? ?????????? ?? ?????????.', '{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","placementPrice":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":5,"currency":"currency","units":"units"},"sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","couponQuantityPerYear":1,"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","amortizationFlag":true,"perpetualFlag":true,"name":"name","issueSize":"issueSize","exchange":"exchange","floatingCouponFlag":true,"countryOfRiskName":"countryOfRiskName","isin":"isin"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (24, 1, 'v1BondResponse', NULL, 'object', NULL, '?????????? ?? ?????????.', '{"instrument":{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","placementPrice":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":5,"currency":"currency","units":"units"},"sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","couponQuantityPerYear":1,"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","amortizationFlag":true,"perpetualFlag":true,"name":"name","issueSize":"issueSize","exchange":"exchange","floatingCouponFlag":true,"countryOfRiskName":"countryOfRiskName","isin":"isin"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (25, 1, 'v1BondsResponse', NULL, 'object', NULL, '?????? ?????????.', '{"instruments":[{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","placementPrice":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":5,"currency":"currency","units":"units"},"sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","couponQuantityPerYear":1,"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","amortizationFlag":true,"perpetualFlag":true,"name":"name","issueSize":"issueSize","exchange":"exchange","floatingCouponFlag":true,"countryOfRiskName":"countryOfRiskName","isin":"isin"},{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"maturityDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","placementPrice":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":5,"currency":"currency","units":"units"},"sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","couponQuantityPerYear":1,"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"stateRegDate":"2000-01-23T04:56:07.000Z","issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"issueKind":"issueKind","placementDate":"2000-01-23T04:56:07.000Z","amortizationFlag":true,"perpetualFlag":true,"name":"name","issueSize":"issueSize","exchange":"exchange","floatingCouponFlag":true,"countryOfRiskName":"countryOfRiskName","isin":"isin"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (26, 1, 'v1Brand', NULL, 'object', NULL, '?????.', '{"uid":"uid","name":"name","description":"description","company":"company","sector":"sector","countryOfRiskName":"countryOfRiskName","info":"info","countryOfRisk":"countryOfRisk"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (27, 1, 'v1BrokerReport', NULL, 'object', NULL, NULL, '{"exchangeClearingCommission":{"nano":5,"currency":"currency","units":"units"},"separateAgreementDate":"separateAgreementDate","orderId":"orderId","figi":"figi","executeSign":"executeSign","brokerCommission":{"nano":5,"currency":"currency","units":"units"},"repoRate":{"nano":6,"units":"units"},"orderAmount":{"nano":5,"currency":"currency","units":"units"},"price":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":6,"units":"units"},"secValueDate":"2000-01-23T04:56:07.000Z","direction":"direction","classCode":"classCode","ticker":"ticker","quantity":"quantity","deliveryType":"deliveryType","tradeDatetime":"2000-01-23T04:56:07.000Z","exchangeCommission":{"nano":5,"currency":"currency","units":"units"},"brokerStatus":"brokerStatus","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"separateAgreementNumber":"separateAgreementNumber","clearValueDate":"2000-01-23T04:56:07.000Z","name":"name","exchange":"exchange","separateAgreementType":"separateAgreementType","tradeId":"tradeId","party":"party"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (28, 1, 'v1BrokerReportRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (29, 1, 'v1BrokerReportResponse', NULL, 'object', NULL, NULL, '{"generateBrokerReportResponse":{"taskId":"taskId"},"getBrokerReportResponse":{"brokerReport":[{"exchangeClearingCommission":{"nano":5,"currency":"currency","units":"units"},"separateAgreementDate":"separateAgreementDate","orderId":"orderId","figi":"figi","executeSign":"executeSign","brokerCommission":{"nano":5,"currency":"currency","units":"units"},"repoRate":{"nano":6,"units":"units"},"orderAmount":{"nano":5,"currency":"currency","units":"units"},"price":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":6,"units":"units"},"secValueDate":"2000-01-23T04:56:07.000Z","direction":"direction","classCode":"classCode","ticker":"ticker","quantity":"quantity","deliveryType":"deliveryType","tradeDatetime":"2000-01-23T04:56:07.000Z","exchangeCommission":{"nano":5,"currency":"currency","units":"units"},"brokerStatus":"brokerStatus","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"separateAgreementNumber":"separateAgreementNumber","clearValueDate":"2000-01-23T04:56:07.000Z","name":"name","exchange":"exchange","separateAgreementType":"separateAgreementType","tradeId":"tradeId","party":"party"},{"exchangeClearingCommission":{"nano":5,"currency":"currency","units":"units"},"separateAgreementDate":"separateAgreementDate","orderId":"orderId","figi":"figi","executeSign":"executeSign","brokerCommission":{"nano":5,"currency":"currency","units":"units"},"repoRate":{"nano":6,"units":"units"},"orderAmount":{"nano":5,"currency":"currency","units":"units"},"price":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":6,"units":"units"},"secValueDate":"2000-01-23T04:56:07.000Z","direction":"direction","classCode":"classCode","ticker":"ticker","quantity":"quantity","deliveryType":"deliveryType","tradeDatetime":"2000-01-23T04:56:07.000Z","exchangeCommission":{"nano":5,"currency":"currency","units":"units"},"brokerStatus":"brokerStatus","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"separateAgreementNumber":"separateAgreementNumber","clearValueDate":"2000-01-23T04:56:07.000Z","name":"name","exchange":"exchange","separateAgreementType":"separateAgreementType","tradeId":"tradeId","party":"party"}],"pagesCount":6,"page":1,"itemsCount":0}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (30, 1, 'v1CancelOrderRequest', NULL, 'object', NULL, '?????? ?????? ????????? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (31, 1, 'v1CancelOrderResponse', NULL, 'object', NULL, '????????? ?????? ????????? ?????????.', '{"time":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (32, 1, 'v1CancelStopOrderRequest', NULL, 'object', NULL, '?????? ?????? ???????????? ????-??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (33, 1, 'v1CancelStopOrderResponse', NULL, 'object', NULL, '????????? ?????? ???????????? ????-??????.', '{"time":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (34, 1, 'v1CandleInterval', 'CANDLE_INTERVAL_UNSPECIFIED', 'string', '["CANDLE_INTERVAL_UNSPECIFIED","CANDLE_INTERVAL_1_MIN","CANDLE_INTERVAL_5_MIN","CANDLE_INTERVAL_15_MIN","CANDLE_INTERVAL_HOUR","CANDLE_INTERVAL_DAY"]', '???????? ??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (35, 1, 'v1CloseSandboxAccountRequest', NULL, 'object', NULL, '?????? ???????? ????? ? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (36, 1, 'v1CloseSandboxAccountResponse', NULL, 'object', NULL, '????????? ???????? ????? ? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (37, 1, 'v1Coupon', NULL, 'object', NULL, '?????? ???????? ?????????? ? ?????? ?????????.', '{"fixDate":"2000-01-23T04:56:07.000Z","couponPeriod":0,"couponNumber":"couponNumber","couponEndDate":"2000-01-23T04:56:07.000Z","figi":"figi","couponDate":"2000-01-23T04:56:07.000Z","couponStartDate":"2000-01-23T04:56:07.000Z","payOneBond":{"nano":5,"currency":"currency","units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (38, 1, 'v1CouponType', 'COUPON_TYPE_UNSPECIFIED', 'string', '["COUPON_TYPE_UNSPECIFIED","COUPON_TYPE_CONSTANT","COUPON_TYPE_FLOATING","COUPON_TYPE_DISCOUNT","COUPON_TYPE_MORTGAGE","COUPON_TYPE_FIX","COUPON_TYPE_VARIABLE","COUPON_TYPE_OTHER"]', '??? ???????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (39, 1, 'v1CurrenciesResponse', NULL, 'object', NULL, '?????? ?? ???????.', '{"instruments":[{"isoCurrencyName":"isoCurrencyName","figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"},{"isoCurrencyName":"isoCurrencyName","figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (40, 1, 'v1Currency', NULL, 'object', NULL, '?????? ???????? ?????????? ? ??????.', '{"isoCurrencyName":"isoCurrencyName","figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (41, 1, 'v1CurrencyResponse', NULL, 'object', NULL, '?????? ?? ??????.', '{"instrument":{"isoCurrencyName":"isoCurrencyName","figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (42, 1, 'v1Dividend', NULL, 'object', NULL, '?????????? ? ???????.', '{"declaredDate":"2000-01-23T04:56:07.000Z","createdAt":"2000-01-23T04:56:07.000Z","recordDate":"2000-01-23T04:56:07.000Z","yieldValue":{"nano":6,"units":"units"},"closePrice":{"nano":5,"currency":"currency","units":"units"},"paymentDate":"2000-01-23T04:56:07.000Z","regularity":"regularity","dividendNet":{"nano":5,"currency":"currency","units":"units"},"lastBuyDate":"2000-01-23T04:56:07.000Z","dividendType":"dividendType"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (43, 1, 'v1DividendsForeignIssuerReport', NULL, 'object', NULL, '????? "??????? ? ??????? ?? ????????? ??".', '{"issuerCountry":"issuerCountry","externalCommission":{"nano":6,"units":"units"},"securityName":"securityName","dividendGross":{"nano":6,"units":"units"},"quantity":"quantity","dividendAmount":{"nano":6,"units":"units"},"recordDate":"2000-01-23T04:56:07.000Z","dividend":{"nano":6,"units":"units"},"tax":{"nano":6,"units":"units"},"currency":"currency","paymentDate":"2000-01-23T04:56:07.000Z","isin":"isin"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (44, 1, 'v1Etf', NULL, 'object', NULL, '?????? ???????? ?????????? ?? ?????????????? ?????.', '{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","focusType":"focusType","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"rebalancingFreq":"rebalancingFreq","name":"name","numShares":{"nano":6,"units":"units"},"exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (45, 1, 'v1EtfResponse', NULL, 'object', NULL, '?????? ?? ?????.', '{"instrument":{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","focusType":"focusType","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"rebalancingFreq":"rebalancingFreq","name":"name","numShares":{"nano":6,"units":"units"},"exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (46, 1, 'v1EtfsResponse', NULL, 'object', NULL, '?????? ?? ??????.', '{"instruments":[{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","focusType":"focusType","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"rebalancingFreq":"rebalancingFreq","name":"name","numShares":{"nano":6,"units":"units"},"exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"},{"releasedDate":"2000-01-23T04:56:07.000Z","fixedCommission":{"nano":6,"units":"units"},"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","focusType":"focusType","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"rebalancingFreq":"rebalancingFreq","name":"name","numShares":{"nano":6,"units":"units"},"exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (47, 1, 'v1Future', NULL, 'object', NULL, '?????? ???????? ?????????? ? ????????.', '{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","futuresType":"futuresType","dlong":{"nano":6,"units":"units"},"lastTradeDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","sector":"sector","expirationDate":"2000-01-23T04:56:07.000Z","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","firstTradeDate":"2000-01-23T04:56:07.000Z","basicAssetSize":{"nano":6,"units":"units"},"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"assetType":"assetType","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","basicAsset":"basicAsset","exchange":"exchange","countryOfRiskName":"countryOfRiskName"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (48, 1, 'v1FutureResponse', NULL, 'object', NULL, '?????? ?? ????????.', '{"instrument":{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","futuresType":"futuresType","dlong":{"nano":6,"units":"units"},"lastTradeDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","sector":"sector","expirationDate":"2000-01-23T04:56:07.000Z","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","firstTradeDate":"2000-01-23T04:56:07.000Z","basicAssetSize":{"nano":6,"units":"units"},"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"assetType":"assetType","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","basicAsset":"basicAsset","exchange":"exchange","countryOfRiskName":"countryOfRiskName"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (49, 1, 'v1FuturesResponse', NULL, 'object', NULL, '?????? ?? ?????????.', '{"instruments":[{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","futuresType":"futuresType","dlong":{"nano":6,"units":"units"},"lastTradeDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","sector":"sector","expirationDate":"2000-01-23T04:56:07.000Z","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","firstTradeDate":"2000-01-23T04:56:07.000Z","basicAssetSize":{"nano":6,"units":"units"},"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"assetType":"assetType","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","basicAsset":"basicAsset","exchange":"exchange","countryOfRiskName":"countryOfRiskName"},{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","futuresType":"futuresType","dlong":{"nano":6,"units":"units"},"lastTradeDate":"2000-01-23T04:56:07.000Z","sellAvailableFlag":true,"currency":"currency","sector":"sector","expirationDate":"2000-01-23T04:56:07.000Z","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","firstTradeDate":"2000-01-23T04:56:07.000Z","basicAssetSize":{"nano":6,"units":"units"},"apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"assetType":"assetType","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","basicAsset":"basicAsset","exchange":"exchange","countryOfRiskName":"countryOfRiskName"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (50, 1, 'v1GenerateBrokerReportRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (51, 1, 'v1GenerateBrokerReportResponse', NULL, 'object', NULL, NULL, '{"taskId":"taskId"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (52, 1, 'v1GenerateDividendsForeignIssuerReportRequest', NULL, 'object', NULL, '?????? ??????? ???????????? ?????? "??????? ? ??????? ?? ????????? ??".', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (53, 1, 'v1GenerateDividendsForeignIssuerReportResponse', NULL, 'object', NULL, '?????? ?????????? ?????? ??????? ???????????? ?????? "??????? ? ??????? ?? ????????? ??".', '{"taskId":"taskId"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (54, 1, 'v1GetAccountsRequest', NULL, 'object', NULL, '?????? ????????? ?????? ????????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (55, 1, 'v1GetAccountsResponse', NULL, 'object', NULL, '?????? ?????? ????????????.', '{"accounts":[{"openedDate":"2000-01-23T04:56:07.000Z","closedDate":"2000-01-23T04:56:07.000Z","name":"name","id":"id"},{"openedDate":"2000-01-23T04:56:07.000Z","closedDate":"2000-01-23T04:56:07.000Z","name":"name","id":"id"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (56, 1, 'v1GetAccruedInterestsRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (57, 1, 'v1GetAccruedInterestsResponse', NULL, 'object', NULL, NULL, '{"accruedInterests":[{"date":"2000-01-23T04:56:07.000Z","valuePercent":{"nano":6,"units":"units"},"nominal":{"nano":6,"units":"units"},"value":{"nano":6,"units":"units"}},{"date":"2000-01-23T04:56:07.000Z","valuePercent":{"nano":6,"units":"units"},"nominal":{"nano":6,"units":"units"},"value":{"nano":6,"units":"units"}}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (58, 1, 'v1GetBondCouponsRequest', NULL, 'object', NULL, '?????? ??????? ?? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (59, 1, 'v1GetBondCouponsResponse', NULL, 'object', NULL, '?????? ?? ?????????.', '{"events":[{"fixDate":"2000-01-23T04:56:07.000Z","couponPeriod":0,"couponNumber":"couponNumber","couponEndDate":"2000-01-23T04:56:07.000Z","figi":"figi","couponDate":"2000-01-23T04:56:07.000Z","couponStartDate":"2000-01-23T04:56:07.000Z","payOneBond":{"nano":5,"currency":"currency","units":"units"}},{"fixDate":"2000-01-23T04:56:07.000Z","couponPeriod":0,"couponNumber":"couponNumber","couponEndDate":"2000-01-23T04:56:07.000Z","figi":"figi","couponDate":"2000-01-23T04:56:07.000Z","couponStartDate":"2000-01-23T04:56:07.000Z","payOneBond":{"nano":5,"currency":"currency","units":"units"}}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (60, 1, 'v1GetBrokerReportRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (61, 1, 'v1GetBrokerReportResponse', NULL, 'object', NULL, NULL, '{"brokerReport":[{"exchangeClearingCommission":{"nano":5,"currency":"currency","units":"units"},"separateAgreementDate":"separateAgreementDate","orderId":"orderId","figi":"figi","executeSign":"executeSign","brokerCommission":{"nano":5,"currency":"currency","units":"units"},"repoRate":{"nano":6,"units":"units"},"orderAmount":{"nano":5,"currency":"currency","units":"units"},"price":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":6,"units":"units"},"secValueDate":"2000-01-23T04:56:07.000Z","direction":"direction","classCode":"classCode","ticker":"ticker","quantity":"quantity","deliveryType":"deliveryType","tradeDatetime":"2000-01-23T04:56:07.000Z","exchangeCommission":{"nano":5,"currency":"currency","units":"units"},"brokerStatus":"brokerStatus","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"separateAgreementNumber":"separateAgreementNumber","clearValueDate":"2000-01-23T04:56:07.000Z","name":"name","exchange":"exchange","separateAgreementType":"separateAgreementType","tradeId":"tradeId","party":"party"},{"exchangeClearingCommission":{"nano":5,"currency":"currency","units":"units"},"separateAgreementDate":"separateAgreementDate","orderId":"orderId","figi":"figi","executeSign":"executeSign","brokerCommission":{"nano":5,"currency":"currency","units":"units"},"repoRate":{"nano":6,"units":"units"},"orderAmount":{"nano":5,"currency":"currency","units":"units"},"price":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":6,"units":"units"},"secValueDate":"2000-01-23T04:56:07.000Z","direction":"direction","classCode":"classCode","ticker":"ticker","quantity":"quantity","deliveryType":"deliveryType","tradeDatetime":"2000-01-23T04:56:07.000Z","exchangeCommission":{"nano":5,"currency":"currency","units":"units"},"brokerStatus":"brokerStatus","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"separateAgreementNumber":"separateAgreementNumber","clearValueDate":"2000-01-23T04:56:07.000Z","name":"name","exchange":"exchange","separateAgreementType":"separateAgreementType","tradeId":"tradeId","party":"party"}],"pagesCount":6,"page":1,"itemsCount":0}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (62, 1, 'v1GetCandlesRequest', NULL, 'object', NULL, '?????? ???????????? ??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (63, 1, 'v1GetCandlesResponse', NULL, 'object', NULL, '?????? ??????.', '{"candles":[{"volume":"volume","high":{"nano":6,"units":"units"},"low":{"nano":6,"units":"units"},"time":"2000-01-23T04:56:07.000Z","close":{"nano":6,"units":"units"},"open":{"nano":6,"units":"units"},"isComplete":true},{"volume":"volume","high":{"nano":6,"units":"units"},"low":{"nano":6,"units":"units"},"time":"2000-01-23T04:56:07.000Z","close":{"nano":6,"units":"units"},"open":{"nano":6,"units":"units"},"isComplete":true}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (64, 1, 'v1GetDividendsForeignIssuerReportRequest', NULL, 'object', NULL, '?????? ??????? ??????????????? ?????? "??????? ? ??????? ?? ????????? ??".', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (65, 1, 'v1GetDividendsForeignIssuerReportResponse', NULL, 'object', NULL, NULL, '{"pagesCount":6,"page":1,"dividendsForeignIssuerReport":[{"issuerCountry":"issuerCountry","externalCommission":{"nano":6,"units":"units"},"securityName":"securityName","dividendGross":{"nano":6,"units":"units"},"quantity":"quantity","dividendAmount":{"nano":6,"units":"units"},"recordDate":"2000-01-23T04:56:07.000Z","dividend":{"nano":6,"units":"units"},"tax":{"nano":6,"units":"units"},"currency":"currency","paymentDate":"2000-01-23T04:56:07.000Z","isin":"isin"},{"issuerCountry":"issuerCountry","externalCommission":{"nano":6,"units":"units"},"securityName":"securityName","dividendGross":{"nano":6,"units":"units"},"quantity":"quantity","dividendAmount":{"nano":6,"units":"units"},"recordDate":"2000-01-23T04:56:07.000Z","dividend":{"nano":6,"units":"units"},"tax":{"nano":6,"units":"units"},"currency":"currency","paymentDate":"2000-01-23T04:56:07.000Z","isin":"isin"}],"itemsCount":0}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (66, 1, 'v1GetDividendsForeignIssuerRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (67, 1, 'v1GetDividendsForeignIssuerResponse', NULL, 'object', NULL, NULL, '{"generateDivForeignIssuerReportResponse":{"taskId":"taskId"},"divForeignIssuerReport":{"pagesCount":6,"page":1,"dividendsForeignIssuerReport":[{"issuerCountry":"issuerCountry","externalCommission":{"nano":6,"units":"units"},"securityName":"securityName","dividendGross":{"nano":6,"units":"units"},"quantity":"quantity","dividendAmount":{"nano":6,"units":"units"},"recordDate":"2000-01-23T04:56:07.000Z","dividend":{"nano":6,"units":"units"},"tax":{"nano":6,"units":"units"},"currency":"currency","paymentDate":"2000-01-23T04:56:07.000Z","isin":"isin"},{"issuerCountry":"issuerCountry","externalCommission":{"nano":6,"units":"units"},"securityName":"securityName","dividendGross":{"nano":6,"units":"units"},"quantity":"quantity","dividendAmount":{"nano":6,"units":"units"},"recordDate":"2000-01-23T04:56:07.000Z","dividend":{"nano":6,"units":"units"},"tax":{"nano":6,"units":"units"},"currency":"currency","paymentDate":"2000-01-23T04:56:07.000Z","isin":"isin"}],"itemsCount":0}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (68, 1, 'v1GetDividendsRequest', NULL, 'object', NULL, '?????? ??????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (69, 1, 'v1GetDividendsResponse', NULL, 'object', NULL, '?????????.', '{"dividends":[{"declaredDate":"2000-01-23T04:56:07.000Z","createdAt":"2000-01-23T04:56:07.000Z","recordDate":"2000-01-23T04:56:07.000Z","yieldValue":{"nano":6,"units":"units"},"closePrice":{"nano":5,"currency":"currency","units":"units"},"paymentDate":"2000-01-23T04:56:07.000Z","regularity":"regularity","dividendNet":{"nano":5,"currency":"currency","units":"units"},"lastBuyDate":"2000-01-23T04:56:07.000Z","dividendType":"dividendType"},{"declaredDate":"2000-01-23T04:56:07.000Z","createdAt":"2000-01-23T04:56:07.000Z","recordDate":"2000-01-23T04:56:07.000Z","yieldValue":{"nano":6,"units":"units"},"closePrice":{"nano":5,"currency":"currency","units":"units"},"paymentDate":"2000-01-23T04:56:07.000Z","regularity":"regularity","dividendNet":{"nano":5,"currency":"currency","units":"units"},"lastBuyDate":"2000-01-23T04:56:07.000Z","dividendType":"dividendType"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (70, 1, 'v1GetFuturesMarginRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (71, 1, 'v1GetFuturesMarginResponse', NULL, 'object', NULL, NULL, '{"initialMarginOnBuy":{"nano":5,"currency":"currency","units":"units"},"initialMarginOnSell":{"nano":5,"currency":"currency","units":"units"},"minPriceIncrementAmount":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (72, 1, 'v1GetInfoRequest', NULL, 'object', NULL, '?????? ?????????? ? ????????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (73, 1, 'v1GetInfoResponse', NULL, 'object', NULL, '?????????? ? ????????????.', '{"qualifiedForWorkWith":["qualifiedForWorkWith","qualifiedForWorkWith"],"qualStatus":true,"premStatus":true,"tariff":"tariff"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (74, 1, 'v1GetLastPricesRequest', NULL, 'object', NULL, '?????? ????????? ????????? ???.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (75, 1, 'v1GetLastPricesResponse', NULL, 'object', NULL, '?????? ????????? ???.', '{"lastPrices":[{"price":{"nano":6,"units":"units"},"figi":"figi","time":"2000-01-23T04:56:07.000Z"},{"price":{"nano":6,"units":"units"},"figi":"figi","time":"2000-01-23T04:56:07.000Z"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (76, 1, 'v1GetLastTradesRequest', NULL, 'object', NULL, '?????? ????????? ???????????? ?????? ?? ???????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (77, 1, 'v1GetLastTradesResponse', NULL, 'object', NULL, '????????? ???????????? ?????? ?? ???????????.', '{"trades":[{"quantity":"quantity","price":{"nano":6,"units":"units"},"figi":"figi","time":"2000-01-23T04:56:07.000Z"},{"quantity":"quantity","price":{"nano":6,"units":"units"},"figi":"figi","time":"2000-01-23T04:56:07.000Z"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (78, 1, 'v1GetMarginAttributesRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (79, 1, 'v1GetMarginAttributesResponse', NULL, 'object', NULL, '???????????? ?????????? ?? ?????.', '{"amountOfMissingFunds":{"nano":5,"currency":"currency","units":"units"},"liquidPortfolio":{"nano":5,"currency":"currency","units":"units"},"fundsSufficiencyLevel":{"nano":6,"units":"units"},"startingMargin":{"nano":5,"currency":"currency","units":"units"},"minimalMargin":{"nano":5,"currency":"currency","units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (80, 1, 'v1GetOrderBookRequest', NULL, 'object', NULL, '?????? ???????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (81, 1, 'v1GetOrderBookResponse', NULL, 'object', NULL, '?????????? ? ???????.', '{"depth":0,"asks":[{"quantity":"quantity","price":{"nano":6,"units":"units"}},{"quantity":"quantity","price":{"nano":6,"units":"units"}}],"bids":[{"quantity":"quantity","price":{"nano":6,"units":"units"}},{"quantity":"quantity","price":{"nano":6,"units":"units"}}],"limitUp":{"nano":6,"units":"units"},"figi":"figi","closePrice":{"nano":6,"units":"units"},"limitDown":{"nano":6,"units":"units"},"lastPrice":{"nano":6,"units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (82, 1, 'v1GetOrderStateRequest', NULL, 'object', NULL, '?????? ????????? ??????? ????????? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (83, 1, 'v1GetOrdersRequest', NULL, 'object', NULL, '?????? ????????? ?????? ???????? ???????? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (84, 1, 'v1GetOrdersResponse', NULL, 'object', NULL, '?????? ???????? ???????? ?????????.', '{"orders":[{"orderId":"orderId","figi":"figi","initialOrderPrice":{"nano":5,"currency":"currency","units":"units"},"initialCommission":{"nano":5,"currency":"currency","units":"units"},"averagePositionPrice":{"nano":5,"currency":"currency","units":"units"},"lotsExecuted":"lotsExecuted","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"lotsRequested":"lotsRequested","stages":[{"quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"},{"quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}],"executedOrderPrice":{"nano":5,"currency":"currency","units":"units"},"executedCommission":{"nano":5,"currency":"currency","units":"units"},"initialSecurityPrice":{"nano":5,"currency":"currency","units":"units"},"serviceCommission":{"nano":5,"currency":"currency","units":"units"},"currency":"currency","orderDate":"2000-01-23T04:56:07.000Z"},{"orderId":"orderId","figi":"figi","initialOrderPrice":{"nano":5,"currency":"currency","units":"units"},"initialCommission":{"nano":5,"currency":"currency","units":"units"},"averagePositionPrice":{"nano":5,"currency":"currency","units":"units"},"lotsExecuted":"lotsExecuted","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"lotsRequested":"lotsRequested","stages":[{"quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"},{"quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}],"executedOrderPrice":{"nano":5,"currency":"currency","units":"units"},"executedCommission":{"nano":5,"currency":"currency","units":"units"},"initialSecurityPrice":{"nano":5,"currency":"currency","units":"units"},"serviceCommission":{"nano":5,"currency":"currency","units":"units"},"currency":"currency","orderDate":"2000-01-23T04:56:07.000Z"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (85, 1, 'v1GetStopOrdersRequest', NULL, 'object', NULL, '?????? ????????? ?????? ???????? ????-??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (86, 1, 'v1GetStopOrdersResponse', NULL, 'object', NULL, '?????? ???????? ????-??????.', '{"stopOrders":[{"activationDateTime":"2000-01-23T04:56:07.000Z","stopPrice":{"nano":5,"currency":"currency","units":"units"},"lotsRequested":"lotsRequested","expirationTime":"2000-01-23T04:56:07.000Z","price":{"nano":5,"currency":"currency","units":"units"},"figi":"figi","currency":"currency","stopOrderId":"stopOrderId","createDate":"2000-01-23T04:56:07.000Z"},{"activationDateTime":"2000-01-23T04:56:07.000Z","stopPrice":{"nano":5,"currency":"currency","units":"units"},"lotsRequested":"lotsRequested","expirationTime":"2000-01-23T04:56:07.000Z","price":{"nano":5,"currency":"currency","units":"units"},"figi":"figi","currency":"currency","stopOrderId":"stopOrderId","createDate":"2000-01-23T04:56:07.000Z"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (87, 1, 'v1GetTradingStatusRequest', NULL, 'object', NULL, '?????? ????????? ????????? ???????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (88, 1, 'v1GetTradingStatusResponse', NULL, 'object', NULL, '?????????? ? ???????? ???????.', '{"limitOrderAvailableFlag":true,"marketOrderAvailableFlag":true,"figi":"figi"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (89, 1, 'v1GetUserTariffRequest', NULL, 'object', NULL, '?????? ??????? ??????? ????????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (90, 1, 'v1GetUserTariffResponse', NULL, 'object', NULL, '??????? ?????? ????????????.', '{"unaryLimits":[{"limitPerMinute":0,"methods":["methods","methods"]},{"limitPerMinute":0,"methods":["methods","methods"]}],"streamLimits":[{"streams":["streams","streams"],"limit":6},{"streams":["streams","streams"],"limit":6}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (91, 1, 'v1HistoricCandle', NULL, 'object', NULL, '?????????? ? ?????.', '{"volume":"volume","high":{"nano":6,"units":"units"},"low":{"nano":6,"units":"units"},"time":"2000-01-23T04:56:07.000Z","close":{"nano":6,"units":"units"},"open":{"nano":6,"units":"units"},"isComplete":true}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (92, 1, 'v1Instrument', NULL, 'object', NULL, '?????? ???????? ???????? ?????????? ?? ???????????.', '{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"sellAvailableFlag":true,"currency":"currency","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","instrumentType":"instrumentType","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (93, 1, 'v1InstrumentIdType', 'INSTRUMENT_ID_UNSPECIFIED', 'string', '["INSTRUMENT_ID_UNSPECIFIED","INSTRUMENT_ID_TYPE_FIGI","INSTRUMENT_ID_TYPE_TICKER","INSTRUMENT_ID_TYPE_UID"]', NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (94, 1, 'v1InstrumentLink', NULL, 'object', NULL, '????? ? ?????? ????????????.', '{"instrumentUid":"instrumentUid","type":"type"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (95, 1, 'v1InstrumentRequest', NULL, 'object', NULL, '?????? ????????? ??????????? ?? ??????????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (96, 1, 'v1InstrumentResponse', NULL, 'object', NULL, '?????? ?? ???????????.', '{"instrument":{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"sellAvailableFlag":true,"currency":"currency","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","instrumentType":"instrumentType","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","exchange":"exchange","countryOfRiskName":"countryOfRiskName","isin":"isin"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (97, 1, 'v1InstrumentStatus', 'INSTRUMENT_STATUS_UNSPECIFIED', 'string', '["INSTRUMENT_STATUS_UNSPECIFIED","INSTRUMENT_STATUS_BASE","INSTRUMENT_STATUS_ALL"]', '?????? ????????????? ????????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (98, 1, 'v1InstrumentsRequest', NULL, 'object', NULL, '?????? ????????? ????????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (99, 1, 'v1LastPrice', NULL, 'object', NULL, '?????????? ? ????.', '{"price":{"nano":6,"units":"units"},"figi":"figi","time":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (100, 1, 'v1MoneyValue', NULL, 'object', NULL, NULL, '{"nano":5,"currency":"currency","units":"units"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (101, 1, 'v1OpenSandboxAccountRequest', NULL, 'object', NULL, '?????? ???????? ????? ? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (102, 1, 'v1OpenSandboxAccountResponse', NULL, 'object', NULL, '????? ????????? ????? ? ?????????.', '{"accountId":"accountId"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (103, 1, 'v1Operation', NULL, 'object', NULL, '?????? ?? ????????.', '{"date":"2000-01-23T04:56:07.000Z","instrumentType":"instrumentType","quantity":"quantity","parentOperationId":"parentOperationId","trades":[{"dateTime":"2000-01-23T04:56:07.000Z","quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"},{"dateTime":"2000-01-23T04:56:07.000Z","quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}],"figi":"figi","type":"type","price":{"nano":5,"currency":"currency","units":"units"},"currency":"currency","payment":{"nano":5,"currency":"currency","units":"units"},"id":"id","quantityRest":"quantityRest"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (104, 1, 'v1OperationState', 'OPERATION_STATE_UNSPECIFIED', 'string', '["OPERATION_STATE_UNSPECIFIED","OPERATION_STATE_EXECUTED","OPERATION_STATE_CANCELED"]', '?????? ????????????? ????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (105, 1, 'v1OperationTrade', NULL, 'object', NULL, '?????? ?? ????????.', '{"dateTime":"2000-01-23T04:56:07.000Z","quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (106, 1, 'v1OperationType', 'OPERATION_TYPE_UNSPECIFIED', 'string', '["OPERATION_TYPE_UNSPECIFIED","OPERATION_TYPE_INPUT","OPERATION_TYPE_BOND_TAX","OPERATION_TYPE_OUTPUT_SECURITIES","OPERATION_TYPE_OVERNIGHT","OPERATION_TYPE_TAX","OPERATION_TYPE_BOND_REPAYMENT_FULL","OPERATION_TYPE_SELL_CARD","OPERATION_TYPE_DIVIDEND_TAX","OPERATION_TYPE_OUTPUT","OPERATION_TYPE_BOND_REPAYMENT","OPERATION_TYPE_TAX_CORRECTION","OPERATION_TYPE_SERVICE_FEE","OPERATION_TYPE_BENEFIT_TAX","OPERATION_TYPE_MARGIN_FEE","OPERATION_TYPE_BUY","OPERATION_TYPE_BUY_CARD","OPERATION_TYPE_INPUT_SECURITIES","OPERATION_TYPE_SELL_MARGIN","OPERATION_TYPE_BROKER_FEE","OPERATION_TYPE_BUY_MARGIN","OPERATION_TYPE_DIVIDEND","OPERATION_TYPE_SELL","OPERATION_TYPE_COUPON","OPERATION_TYPE_SUCCESS_FEE","OPERATION_TYPE_DIVIDEND_TRANSFER","OPERATION_TYPE_ACCRUING_VARMARGIN","OPERATION_TYPE_WRITING_OFF_VARMARGIN","OPERATION_TYPE_DELIVERY_BUY","OPERATION_TYPE_DELIVERY_SELL","OPERATION_TYPE_TRACK_MFEE","OPERATION_TYPE_TRACK_PFEE","OPERATION_TYPE_TAX_PROGRESSIVE","OPERATION_TYPE_BOND_TAX_PROGRESSIVE","OPERATION_TYPE_DIVIDEND_TAX_PROGRESSIVE","OPERATION_TYPE_BENEFIT_TAX_PROGRESSIVE","OPERATION_TYPE_TAX_CORRECTION_PROGRESSIVE","OPERATION_TYPE_TAX_REPO_PROGRESSIVE","OPERATION_TYPE_TAX_REPO","OPERATION_TYPE_TAX_REPO_HOLD","OPERATION_TYPE_TAX_REPO_REFUND","OPERATION_TYPE_TAX_REPO_HOLD_PROGRESSIVE","OPERATION_TYPE_TAX_REPO_REFUND_PROGRESSIVE","OPERATION_TYPE_DIV_EXT","OPERATION_TYPE_TAX_CORRECTION_COUPON"]', '??? ????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (107, 1, 'v1OperationsRequest', NULL, 'object', NULL, '?????? ????????? ?????? ???????? ?? ?????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (108, 1, 'v1OperationsResponse', NULL, 'object', NULL, '?????? ????????.', '{"operations":[{"date":"2000-01-23T04:56:07.000Z","instrumentType":"instrumentType","quantity":"quantity","parentOperationId":"parentOperationId","trades":[{"dateTime":"2000-01-23T04:56:07.000Z","quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"},{"dateTime":"2000-01-23T04:56:07.000Z","quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}],"figi":"figi","type":"type","price":{"nano":5,"currency":"currency","units":"units"},"currency":"currency","payment":{"nano":5,"currency":"currency","units":"units"},"id":"id","quantityRest":"quantityRest"},{"date":"2000-01-23T04:56:07.000Z","instrumentType":"instrumentType","quantity":"quantity","parentOperationId":"parentOperationId","trades":[{"dateTime":"2000-01-23T04:56:07.000Z","quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"},{"dateTime":"2000-01-23T04:56:07.000Z","quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}],"figi":"figi","type":"type","price":{"nano":5,"currency":"currency","units":"units"},"currency":"currency","payment":{"nano":5,"currency":"currency","units":"units"},"id":"id","quantityRest":"quantityRest"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (109, 1, 'v1Order', NULL, 'object', NULL, '?????? ???????????/??????.', '{"quantity":"quantity","price":{"nano":6,"units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (110, 1, 'v1OrderDirection', 'ORDER_DIRECTION_UNSPECIFIED', 'string', '["ORDER_DIRECTION_UNSPECIFIED","ORDER_DIRECTION_BUY","ORDER_DIRECTION_SELL"]', NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (111, 1, 'v1OrderExecutionReportStatus', 'EXECUTION_REPORT_STATUS_UNSPECIFIED', 'string', '["EXECUTION_REPORT_STATUS_UNSPECIFIED","EXECUTION_REPORT_STATUS_FILL","EXECUTION_REPORT_STATUS_REJECTED","EXECUTION_REPORT_STATUS_CANCELLED","EXECUTION_REPORT_STATUS_NEW","EXECUTION_REPORT_STATUS_PARTIALLYFILL"]', NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (112, 1, 'v1OrderStage', NULL, 'object', NULL, '?????? ? ?????? ????????? ?????????.', '{"quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (113, 1, 'v1OrderState', NULL, 'object', NULL, '?????????? ? ???????? ?????????.', '{"orderId":"orderId","figi":"figi","initialOrderPrice":{"nano":5,"currency":"currency","units":"units"},"initialCommission":{"nano":5,"currency":"currency","units":"units"},"averagePositionPrice":{"nano":5,"currency":"currency","units":"units"},"lotsExecuted":"lotsExecuted","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"lotsRequested":"lotsRequested","stages":[{"quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"},{"quantity":"quantity","price":{"nano":5,"currency":"currency","units":"units"},"tradeId":"tradeId"}],"executedOrderPrice":{"nano":5,"currency":"currency","units":"units"},"executedCommission":{"nano":5,"currency":"currency","units":"units"},"initialSecurityPrice":{"nano":5,"currency":"currency","units":"units"},"serviceCommission":{"nano":5,"currency":"currency","units":"units"},"currency":"currency","orderDate":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (114, 1, 'v1OrderType', 'ORDER_TYPE_UNSPECIFIED', 'string', '["ORDER_TYPE_UNSPECIFIED","ORDER_TYPE_LIMIT","ORDER_TYPE_MARKET"]', NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (115, 1, 'v1PortfolioPosition', NULL, 'object', NULL, '??????? ????????.', '{"averagePositionPrice":{"nano":5,"currency":"currency","units":"units"},"instrumentType":"instrumentType","quantity":{"nano":6,"units":"units"},"averagePositionPricePt":{"nano":6,"units":"units"},"averagePositionPriceFifo":{"nano":5,"currency":"currency","units":"units"},"currentNkd":{"nano":5,"currency":"currency","units":"units"},"currentPrice":{"nano":5,"currency":"currency","units":"units"},"figi":"figi","expectedYield":{"nano":6,"units":"units"},"quantityLots":{"nano":6,"units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (116, 1, 'v1PortfolioRequest', NULL, 'object', NULL, '?????? ????????? ???????? ???????? ?? ?????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (117, 1, 'v1PortfolioResponse', NULL, 'object', NULL, '??????? ???????? ?? ?????.', '{"totalAmountBonds":{"nano":5,"currency":"currency","units":"units"},"totalAmountFutures":{"nano":5,"currency":"currency","units":"units"},"totalAmountCurrencies":{"nano":5,"currency":"currency","units":"units"},"expectedYield":{"nano":6,"units":"units"},"positions":[{"averagePositionPrice":{"nano":5,"currency":"currency","units":"units"},"instrumentType":"instrumentType","quantity":{"nano":6,"units":"units"},"averagePositionPricePt":{"nano":6,"units":"units"},"averagePositionPriceFifo":{"nano":5,"currency":"currency","units":"units"},"currentNkd":{"nano":5,"currency":"currency","units":"units"},"currentPrice":{"nano":5,"currency":"currency","units":"units"},"figi":"figi","expectedYield":{"nano":6,"units":"units"},"quantityLots":{"nano":6,"units":"units"}},{"averagePositionPrice":{"nano":5,"currency":"currency","units":"units"},"instrumentType":"instrumentType","quantity":{"nano":6,"units":"units"},"averagePositionPricePt":{"nano":6,"units":"units"},"averagePositionPriceFifo":{"nano":5,"currency":"currency","units":"units"},"currentNkd":{"nano":5,"currency":"currency","units":"units"},"currentPrice":{"nano":5,"currency":"currency","units":"units"},"figi":"figi","expectedYield":{"nano":6,"units":"units"},"quantityLots":{"nano":6,"units":"units"}}],"totalAmountShares":{"nano":5,"currency":"currency","units":"units"},"totalAmountEtf":{"nano":5,"currency":"currency","units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (118, 1, 'v1PositionsFutures', NULL, 'object', NULL, '?????? ????????.', '{"blocked":"blocked","balance":"balance","figi":"figi"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (119, 1, 'v1PositionsRequest', NULL, 'object', NULL, '?????? ??????? ???????? ?? ?????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (120, 1, 'v1PositionsResponse', NULL, 'object', NULL, '?????? ??????? ?? ?????.', '{"limitsLoadingInProgress":true,"money":[{"nano":5,"currency":"currency","units":"units"},{"nano":5,"currency":"currency","units":"units"}],"blocked":[{"nano":5,"currency":"currency","units":"units"},{"nano":5,"currency":"currency","units":"units"}],"futures":[{"blocked":"blocked","balance":"balance","figi":"figi"},{"blocked":"blocked","balance":"balance","figi":"figi"}],"securities":[{"blocked":"blocked","balance":"balance","figi":"figi"},{"blocked":"blocked","balance":"balance","figi":"figi"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (121, 1, 'v1PositionsSecurities', NULL, 'object', NULL, '?????? ??????? ?????? ??????.', '{"blocked":"blocked","balance":"balance","figi":"figi"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (122, 1, 'v1PostOrderRequest', NULL, 'object', NULL, '?????? ??????????? ????????? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (123, 1, 'v1PostOrderResponse', NULL, 'object', NULL, '?????????? ? ??????????? ?????????.', '{"orderId":"orderId","figi":"figi","initialOrderPrice":{"nano":5,"currency":"currency","units":"units"},"initialCommission":{"nano":5,"currency":"currency","units":"units"},"message":"message","lotsExecuted":"lotsExecuted","totalOrderAmount":{"nano":5,"currency":"currency","units":"units"},"lotsRequested":"lotsRequested","initialOrderPricePt":{"nano":6,"units":"units"},"executedOrderPrice":{"nano":5,"currency":"currency","units":"units"},"executedCommission":{"nano":5,"currency":"currency","units":"units"},"initialSecurityPrice":{"nano":5,"currency":"currency","units":"units"},"aciValue":{"nano":5,"currency":"currency","units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (124, 1, 'v1PostStopOrderRequest', NULL, 'object', NULL, '?????? ??????????? ????-??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (125, 1, 'v1PostStopOrderResponse', NULL, 'object', NULL, '????????? ??????????? ????-??????.', '{"stopOrderId":"stopOrderId"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (126, 1, 'v1Quotation', NULL, 'object', NULL, NULL, '{"nano":6,"units":"units"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (127, 1, 'v1SandboxPayInRequest', NULL, 'object', NULL, '?????? ?????????? ????? ? ?????????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (128, 1, 'v1SandboxPayInResponse', NULL, 'object', NULL, '????????? ?????????? ?????, ??????? ??????.', '{"balance":{"nano":5,"currency":"currency","units":"units"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (129, 1, 'v1SecurityTradingStatus', 'SECURITY_TRADING_STATUS_UNSPECIFIED', 'string', '["SECURITY_TRADING_STATUS_UNSPECIFIED","SECURITY_TRADING_STATUS_NOT_AVAILABLE_FOR_TRADING","SECURITY_TRADING_STATUS_OPENING_PERIOD","SECURITY_TRADING_STATUS_CLOSING_PERIOD","SECURITY_TRADING_STATUS_BREAK_IN_TRADING","SECURITY_TRADING_STATUS_NORMAL_TRADING","SECURITY_TRADING_STATUS_CLOSING_AUCTION","SECURITY_TRADING_STATUS_DARK_POOL_AUCTION","SECURITY_TRADING_STATUS_DISCRETE_AUCTION","SECURITY_TRADING_STATUS_OPENING_AUCTION_PERIOD","SECURITY_TRADING_STATUS_TRADING_AT_CLOSING_AUCTION_PRICE","SECURITY_TRADING_STATUS_SESSION_ASSIGNED","SECURITY_TRADING_STATUS_SESSION_CLOSE","SECURITY_TRADING_STATUS_SESSION_OPEN","SECURITY_TRADING_STATUS_DEALER_NORMAL_TRADING","SECURITY_TRADING_STATUS_DEALER_BREAK_IN_TRADING","SECURITY_TRADING_STATUS_DEALER_NOT_AVAILABLE_FOR_TRADING"]', NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (130, 1, 'v1Share', NULL, 'object', NULL, '?????? ???????? ?????????? ?? ?????.', '{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","issueSize":"issueSize","exchange":"exchange","countryOfRiskName":"countryOfRiskName","divYieldFlag":true,"isin":"isin","ipoDate":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (131, 1, 'v1ShareResponse', NULL, 'object', NULL, '?????? ?? ?????.', '{"instrument":{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","issueSize":"issueSize","exchange":"exchange","countryOfRiskName":"countryOfRiskName","divYieldFlag":true,"isin":"isin","ipoDate":"2000-01-23T04:56:07.000Z"}}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (132, 1, 'v1ShareType', 'SHARE_TYPE_UNSPECIFIED', 'string', '["SHARE_TYPE_UNSPECIFIED","SHARE_TYPE_COMMON","SHARE_TYPE_PREFERRED","SHARE_TYPE_ADR","SHARE_TYPE_GDR","SHARE_TYPE_MLP","SHARE_TYPE_NY_REG_SHRS","SHARE_TYPE_CLOSED_END_FUND","SHARE_TYPE_REIT"]', '??? ?????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (133, 1, 'v1SharesResponse', NULL, 'object', NULL, '?????? ?? ??????.', '{"instruments":[{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","issueSize":"issueSize","exchange":"exchange","countryOfRiskName":"countryOfRiskName","divYieldFlag":true,"isin":"isin","ipoDate":"2000-01-23T04:56:07.000Z"},{"figi":"figi","dshortMin":{"nano":6,"units":"units"},"countryOfRisk":"countryOfRisk","lot":0,"uid":"uid","dlong":{"nano":6,"units":"units"},"nominal":{"nano":5,"currency":"currency","units":"units"},"sellAvailableFlag":true,"currency":"currency","sector":"sector","buyAvailableFlag":true,"classCode":"classCode","ticker":"ticker","apiTradeAvailableFlag":true,"dlongMin":{"nano":6,"units":"units"},"shortEnabledFlag":true,"kshort":{"nano":6,"units":"units"},"issueSizePlan":"issueSizePlan","minPriceIncrement":{"nano":6,"units":"units"},"otcFlag":true,"klong":{"nano":6,"units":"units"},"dshort":{"nano":6,"units":"units"},"name":"name","issueSize":"issueSize","exchange":"exchange","countryOfRiskName":"countryOfRiskName","divYieldFlag":true,"isin":"isin","ipoDate":"2000-01-23T04:56:07.000Z"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (134, 1, 'v1StopOrder', NULL, 'object', NULL, '?????????? ? ????-??????.', '{"activationDateTime":"2000-01-23T04:56:07.000Z","stopPrice":{"nano":5,"currency":"currency","units":"units"},"lotsRequested":"lotsRequested","expirationTime":"2000-01-23T04:56:07.000Z","price":{"nano":5,"currency":"currency","units":"units"},"figi":"figi","currency":"currency","stopOrderId":"stopOrderId","createDate":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (135, 1, 'v1StopOrderDirection', 'STOP_ORDER_DIRECTION_UNSPECIFIED', 'string', '["STOP_ORDER_DIRECTION_UNSPECIFIED","STOP_ORDER_DIRECTION_BUY","STOP_ORDER_DIRECTION_SELL"]', '??????????? ?????? ????-??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (136, 1, 'v1StopOrderExpirationType', 'STOP_ORDER_EXPIRATION_TYPE_UNSPECIFIED', 'string', '["STOP_ORDER_EXPIRATION_TYPE_UNSPECIFIED","STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_CANCEL","STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_DATE"]', '??? ?????????? ????-??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (137, 1, 'v1StopOrderType', 'STOP_ORDER_TYPE_UNSPECIFIED', 'string', '["STOP_ORDER_TYPE_UNSPECIFIED","STOP_ORDER_TYPE_TAKE_PROFIT","STOP_ORDER_TYPE_STOP_LOSS","STOP_ORDER_TYPE_STOP_LIMIT"]', '??? ????-??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (138, 1, 'v1StreamLimit', NULL, 'object', NULL, '????? stream-??????????.', '{"streams":["streams","streams"],"limit":6}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (139, 1, 'v1StructuredProductType', 'SP_TYPE_UNSPECIFIED', 'string', '["SP_TYPE_UNSPECIFIED","SP_TYPE_DELIVERABLE","SP_TYPE_NON_DELIVERABLE"]', '??? ??????????? ????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (140, 1, 'v1Trade', NULL, 'object', NULL, '?????????? ? ??????.', '{"quantity":"quantity","price":{"nano":6,"units":"units"},"figi":"figi","time":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (141, 1, 'v1TradeDirection', 'TRADE_DIRECTION_UNSPECIFIED', 'string', '["TRADE_DIRECTION_UNSPECIFIED","TRADE_DIRECTION_BUY","TRADE_DIRECTION_SELL"]', '??????????? ??????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (142, 1, 'v1TradingDay', NULL, 'object', NULL, '?????????? ? ??????? ??????.', '{"date":"2000-01-23T04:56:07.000Z","clearingEndTime":"2000-01-23T04:56:07.000Z","openingAuctionStartTime":"2000-01-23T04:56:07.000Z","closingAuctionEndTime":"2000-01-23T04:56:07.000Z","eveningEndTime":"2000-01-23T04:56:07.000Z","premarketStartTime":"2000-01-23T04:56:07.000Z","eveningOpeningAuctionStartTime":"2000-01-23T04:56:07.000Z","isTradingDay":true,"eveningStartTime":"2000-01-23T04:56:07.000Z","premarketEndTime":"2000-01-23T04:56:07.000Z","clearingStartTime":"2000-01-23T04:56:07.000Z","startTime":"2000-01-23T04:56:07.000Z","endTime":"2000-01-23T04:56:07.000Z"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (143, 1, 'v1TradingSchedule', NULL, 'object', NULL, '?????? ?? ???????? ????????.', '{"days":[{"date":"2000-01-23T04:56:07.000Z","clearingEndTime":"2000-01-23T04:56:07.000Z","openingAuctionStartTime":"2000-01-23T04:56:07.000Z","closingAuctionEndTime":"2000-01-23T04:56:07.000Z","eveningEndTime":"2000-01-23T04:56:07.000Z","premarketStartTime":"2000-01-23T04:56:07.000Z","eveningOpeningAuctionStartTime":"2000-01-23T04:56:07.000Z","isTradingDay":true,"eveningStartTime":"2000-01-23T04:56:07.000Z","premarketEndTime":"2000-01-23T04:56:07.000Z","clearingStartTime":"2000-01-23T04:56:07.000Z","startTime":"2000-01-23T04:56:07.000Z","endTime":"2000-01-23T04:56:07.000Z"},{"date":"2000-01-23T04:56:07.000Z","clearingEndTime":"2000-01-23T04:56:07.000Z","openingAuctionStartTime":"2000-01-23T04:56:07.000Z","closingAuctionEndTime":"2000-01-23T04:56:07.000Z","eveningEndTime":"2000-01-23T04:56:07.000Z","premarketStartTime":"2000-01-23T04:56:07.000Z","eveningOpeningAuctionStartTime":"2000-01-23T04:56:07.000Z","isTradingDay":true,"eveningStartTime":"2000-01-23T04:56:07.000Z","premarketEndTime":"2000-01-23T04:56:07.000Z","clearingStartTime":"2000-01-23T04:56:07.000Z","startTime":"2000-01-23T04:56:07.000Z","endTime":"2000-01-23T04:56:07.000Z"}],"exchange":"exchange"}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (144, 1, 'v1TradingSchedulesRequest', NULL, 'object', NULL, NULL, NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (145, 1, 'v1TradingSchedulesResponse', NULL, 'object', NULL, NULL, '{"exchanges":[{"days":[{"date":"2000-01-23T04:56:07.000Z","clearingEndTime":"2000-01-23T04:56:07.000Z","openingAuctionStartTime":"2000-01-23T04:56:07.000Z","closingAuctionEndTime":"2000-01-23T04:56:07.000Z","eveningEndTime":"2000-01-23T04:56:07.000Z","premarketStartTime":"2000-01-23T04:56:07.000Z","eveningOpeningAuctionStartTime":"2000-01-23T04:56:07.000Z","isTradingDay":true,"eveningStartTime":"2000-01-23T04:56:07.000Z","premarketEndTime":"2000-01-23T04:56:07.000Z","clearingStartTime":"2000-01-23T04:56:07.000Z","startTime":"2000-01-23T04:56:07.000Z","endTime":"2000-01-23T04:56:07.000Z"},{"date":"2000-01-23T04:56:07.000Z","clearingEndTime":"2000-01-23T04:56:07.000Z","openingAuctionStartTime":"2000-01-23T04:56:07.000Z","closingAuctionEndTime":"2000-01-23T04:56:07.000Z","eveningEndTime":"2000-01-23T04:56:07.000Z","premarketStartTime":"2000-01-23T04:56:07.000Z","eveningOpeningAuctionStartTime":"2000-01-23T04:56:07.000Z","isTradingDay":true,"eveningStartTime":"2000-01-23T04:56:07.000Z","premarketEndTime":"2000-01-23T04:56:07.000Z","clearingStartTime":"2000-01-23T04:56:07.000Z","startTime":"2000-01-23T04:56:07.000Z","endTime":"2000-01-23T04:56:07.000Z"}],"exchange":"exchange"},{"days":[{"date":"2000-01-23T04:56:07.000Z","clearingEndTime":"2000-01-23T04:56:07.000Z","openingAuctionStartTime":"2000-01-23T04:56:07.000Z","closingAuctionEndTime":"2000-01-23T04:56:07.000Z","eveningEndTime":"2000-01-23T04:56:07.000Z","premarketStartTime":"2000-01-23T04:56:07.000Z","eveningOpeningAuctionStartTime":"2000-01-23T04:56:07.000Z","isTradingDay":true,"eveningStartTime":"2000-01-23T04:56:07.000Z","premarketEndTime":"2000-01-23T04:56:07.000Z","clearingStartTime":"2000-01-23T04:56:07.000Z","startTime":"2000-01-23T04:56:07.000Z","endTime":"2000-01-23T04:56:07.000Z"},{"date":"2000-01-23T04:56:07.000Z","clearingEndTime":"2000-01-23T04:56:07.000Z","openingAuctionStartTime":"2000-01-23T04:56:07.000Z","closingAuctionEndTime":"2000-01-23T04:56:07.000Z","eveningEndTime":"2000-01-23T04:56:07.000Z","premarketStartTime":"2000-01-23T04:56:07.000Z","eveningOpeningAuctionStartTime":"2000-01-23T04:56:07.000Z","isTradingDay":true,"eveningStartTime":"2000-01-23T04:56:07.000Z","premarketEndTime":"2000-01-23T04:56:07.000Z","clearingStartTime":"2000-01-23T04:56:07.000Z","startTime":"2000-01-23T04:56:07.000Z","endTime":"2000-01-23T04:56:07.000Z"}],"exchange":"exchange"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (146, 1, 'v1UnaryLimit', NULL, 'object', NULL, '????? unary-???????.', '{"limitPerMinute":0,"methods":["methods","methods"]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (147, 1, 'v1WithdrawLimitsRequest', NULL, 'object', NULL, '?????? ?????????? ??? ?????? ???????.', NULL);
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (148, 1, 'v1WithdrawLimitsResponse', NULL, 'object', NULL, '????????? ??? ?????? ???????.', '{"blockedGuarantee":[{"nano":5,"currency":"currency","units":"units"},{"nano":5,"currency":"currency","units":"units"}],"money":[{"nano":5,"currency":"currency","units":"units"},{"nano":5,"currency":"currency","units":"units"}],"blocked":[{"nano":5,"currency":"currency","units":"units"},{"nano":5,"currency":"currency","units":"units"}]}');
INSERT INTO schema (id, component_id, name, "default", type, enum, description, example) VALUES (149, 2, 'Bearer', NULL, 'http', NULL, NULL, NULL);

-- Table: server
CREATE TABLE server (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    host        VARCHAR UNIQUE
                        NOT NULL,
    description STRING,
    swagger_id  INTEGER REFERENCES swagger (id) ON DELETE SET NULL
                                                ON UPDATE SET NULL
);

INSERT INTO server (id, host, description, swagger_id) VALUES (6, 'https://invest-public-api.tinkoff.ru/rest/', 'Working with the exchange', 2);
INSERT INTO server (id, host, description, swagger_id) VALUES (7, 'https://api.telegram.org/bot1536231669:abcd/', 'Telegram', NULL);

-- Table: swagger
CREATE TABLE swagger (
    id      INTEGER PRIMARY KEY AUTOINCREMENT
                    UNIQUE
                    NOT NULL,
    json    STRING  NOT NULL,
    version INTEGER NOT NULL
);

INSERT INTO swagger (id, json, version) VALUES (1, '{

  "openapi": "3.0.0",

  "info": {

    "description": "tinkoff.ru/invest OpenAPI.",

    "version": "1.0.0",

    "title": "OpenAPI",

    "termsOfService": "https://www.tinkoff.ru/invest/disclaimers/basic-information/",

    "contact": {

      "email": "al.a.volkov@tinkoff.ru"

    }

  },

  "tags": [

    {

      "name": "sandbox",

      "description": "???????? ? sandbox"

    },

    {

      "name": "orders",

      "description": "???????? ??????"

    },

    {

      "name": "portfolio",

      "description": "???????? ? ????????? ????????????"

    },

    {

      "name": "market",

      "description": "????????? ?????????? ?? ???????"

    },

    {

      "name": "operations",

      "description": "????????? ?????????? ?? ?????????"

    },

    {

      "name": "user",

      "description": "????????? ?????????? ?? ?????????? ??????"

    }

  ],

  "paths": {

    "/sandbox/register": {

      "post": {

        "tags": [

          "sandbox"

        ],

        "summary": "??????????? ??????? ? sandbox",

        "description": "???????? ????? ? ???????? ??????? ??? ???????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/SandboxRegisterRequest"

              }

            }

          },

          "description": "?????? ?? ???????? ????? ? ??????????? ??????? ?? ???????? ????????",

          "required": false

        },

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/SandboxRegisterResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/sandbox/currencies/balance": {

      "post": {

        "tags": [

          "sandbox"

        ],

        "summary": "??????????? ??????? ?? ???????? ????????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/SandboxSetCurrencyBalanceRequest"

              }

            }

          },

          "description": "?????? ?? ??????????? ??????? ?? ???????? ????????",

          "required": true

        },

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Empty"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/sandbox/positions/balance": {

      "post": {

        "tags": [

          "sandbox"

        ],

        "summary": "??????????? ??????? ?? ????????????? ????????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/SandboxSetPositionBalanceRequest"

              }

            }

          },

          "description": "?????? ?? ??????????? ??????? ?? ????????????? ????????",

          "required": true

        },

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Empty"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/sandbox/remove": {

      "post": {

        "tags": [

          "sandbox"

        ],

        "summary": "???????? ?????",

        "description": "???????? ????? ???????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Empty"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/sandbox/clear": {

      "post": {

        "tags": [

          "sandbox"

        ],

        "summary": "???????? ???? ???????",

        "description": "???????? ???? ??????? ???????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Empty"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/orders": {

      "get": {

        "tags": [

          "orders"

        ],

        "summary": "????????? ?????? ???????? ??????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "?????? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/OrdersResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/orders/limit-order": {

      "post": {

        "tags": [

          "orders"

        ],

        "summary": "???????? ???????? ??????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "figi",

            "in": "query",

            "required": true,

            "description": "FIGI ???????????",

            "schema": {

              "type": "string"

            }

          },

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/LimitOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "description": "????????? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/LimitOrderResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/orders/market-order": {

      "post": {

        "tags": [

          "orders"

        ],

        "summary": "???????? ???????? ??????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "figi",

            "in": "query",

            "required": true,

            "description": "FIGI ???????????",

            "schema": {

              "type": "string"

            }

          },

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "?????????? ????????????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/MarketOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "description": "????????? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/MarketOrderResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/orders/cancel": {

      "post": {

        "tags": [

          "orders"

        ],

        "summary": "?????? ??????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "orderId",

            "in": "query",

            "required": true,

            "description": "ID ??????",

            "schema": {

              "type": "string"

            }

          },

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Empty"

                }

              }

            }

          },

          "500": {

            "description": "?????? ???????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/operations": {

      "get": {

        "tags": [

          "operations"

        ],

        "summary": "????????? ?????? ????????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "from",

            "in": "query",

            "required": true,

            "description": "?????? ?????????? ??????????",

            "schema": {

              "type": "string",

              "format": "date-time",

              "description": "ISO8601",

              "example": "2019-08-19T18:38:33+03:00"

            }

          },

          {

            "name": "to",

            "in": "query",

            "required": true,

            "description": "????? ?????????? ??????????",

            "schema": {

              "type": "string",

              "format": "date-time",

              "description": "ISO8601",

              "example": "2019-08-19T18:38:33+03:00"

            }

          },

          {

            "name": "figi",

            "in": "query",

            "required": false,

            "description": "Figi ??????????? ??? ??????????",

            "schema": {

              "type": "string"

            }

          },

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "?????? ????????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/OperationsResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ???? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/portfolio": {

      "get": {

        "tags": [

          "portfolio"

        ],

        "summary": "????????? ???????? ???????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/PortfolioResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ???? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/portfolio/currencies": {

      "get": {

        "tags": [

          "portfolio"

        ],

        "summary": "????????? ???????? ??????? ???????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "brokerAccountId",

            "in": "query",

            "required": false,

            "description": "????? ????? (?? ????????? - ????????)",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/PortfolioCurrenciesResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ???? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/user/accounts": {

      "get": {

        "tags": [

          "user"

        ],

        "summary": "????????? ?????????? ?????? ???????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/UserAccountsResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ???? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/stocks": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ?????? ?????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/MarketInstrumentListResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/bonds": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ?????? ?????????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/MarketInstrumentListResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/etfs": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ?????? ETF",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/MarketInstrumentListResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/currencies": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ?????? ???????? ???",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/MarketInstrumentListResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/orderbook": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ??????? ?? FIGI",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "figi",

            "in": "query",

            "required": true,

            "description": "FIGI",

            "schema": {

              "type": "string"

            }

          },

          {

            "name": "depth",

            "in": "query",

            "required": true,

            "description": "??????? ??????? [1..20]",

            "schema": {

              "type": "integer",

              "format": "int32"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/OrderbookResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/candles": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ???????????? ?????? ?? FIGI",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "figi",

            "in": "query",

            "required": true,

            "description": "FIGI",

            "schema": {

              "type": "string"

            }

          },

          {

            "name": "from",

            "in": "query",

            "required": true,

            "description": "?????? ?????????? ??????????",

            "schema": {

              "type": "string",

              "format": "date-time",

              "description": "ISO8601",

              "example": "2019-08-19T18:38:33+03:00"

            }

          },

          {

            "name": "to",

            "in": "query",

            "required": true,

            "description": "????? ?????????? ??????????",

            "schema": {

              "type": "string",

              "format": "date-time",

              "description": "ISO8601",

              "example": "2019-08-19T18:38:33+03:00"

            }

          },

          {

            "name": "interval",

            "in": "query",

            "required": true,

            "description": "???????? ?????",

            "schema": {

              "$ref": "#/components/schemas/CandleResolution"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/CandlesResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/search/by-figi": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ??????????? ?? FIGI",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "figi",

            "in": "query",

            "required": true,

            "description": "FIGI",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/SearchMarketInstrumentResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    },

    "/market/search/by-ticker": {

      "get": {

        "tags": [

          "market"

        ],

        "summary": "????????? ??????????? ?? ??????",

        "security": [

          {

            "sso_auth": []

          }

        ],

        "parameters": [

          {

            "name": "ticker",

            "in": "query",

            "required": true,

            "description": "????? ???????????",

            "schema": {

              "type": "string"

            }

          }

        ],

        "responses": {

          "200": {

            "description": "???????? ?????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/MarketInstrumentListResponse"

                }

              }

            }

          },

          "500": {

            "description": "?????????? ?? ??????",

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/Error"

                }

              }

            }

          }

        }

      }

    }

  },

  "servers": [

    {

      "url": "https://api-invest.tinkoff.ru/openapi/",

      "description": "?????? ? ??????"

    },

    {

      "url": "https://api-invest.tinkoff.ru/openapi/sandbox/",

      "description": "?????? ? sandbox"

    }

  ],

  "externalDocs": {

    "description": "???????????? OpenAPI",

    "url": "https://api-invest.tinkoff.ru/openapi/docs/"

  },

  "components": {

    "securitySchemes": {

      "sso_auth": {

        "type": "http",

        "scheme": "bearer"

      }

    },

    "schemas": {

      "Empty": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "payload": {

            "type": "object"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          }

        }

      },

      "Error": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Error"

          },

          "payload": {

            "type": "object",

            "properties": {

              "message": {

                "type": "string"

              },

              "code": {

                "type": "string"

              }

            }

          }

        }

      },

      "PortfolioResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/Portfolio"

          }

        }

      },

      "Portfolio": {

        "type": "object",

        "required": [

          "positions"

        ],

        "properties": {

          "positions": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/PortfolioPosition"

            }

          }

        }

      },

      "UserAccountsResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/UserAccounts"

          }

        }

      },

      "UserAccounts": {

        "type": "object",

        "required": [

          "accounts"

        ],

        "properties": {

          "accounts": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/UserAccount"

            }

          }

        }

      },

      "UserAccount": {

        "type": "object",

        "required": [

          "brokerAccountType",

          "brokerAccountId"

        ],

        "properties": {

          "brokerAccountType": {

            "$ref": "#/components/schemas/BrokerAccountType"

          },

          "brokerAccountId": {

            "type": "string"

          }

        }

      },

      "PortfolioCurrenciesResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/Currencies"

          }

        }

      },

      "Currencies": {

        "type": "object",

        "required": [

          "currencies"

        ],

        "properties": {

          "currencies": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/CurrencyPosition"

            }

          }

        }

      },

      "CurrencyPosition": {

        "type": "object",

        "required": [

          "currency",

          "balance"

        ],

        "properties": {

          "currency": {

            "$ref": "#/components/schemas/Currency"

          },

          "balance": {

            "type": "number",

            "format": "double"

          },

          "blocked": {

            "type": "number",

            "format": "double"

          }

        }

      },

      "PortfolioPosition": {

        "type": "object",

        "required": [

          "figi",

          "balance",

          "instrumentType",

          "lots",

          "name"

        ],

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "instrumentType": {

            "$ref": "#/components/schemas/InstrumentType"

          },

          "balance": {

            "type": "number",

            "format": "double"

          },

          "blocked": {

            "type": "number",

            "format": "double"

          },

          "expectedYield": {

            "$ref": "#/components/schemas/MoneyAmount"

          },

          "lots": {

            "type": "integer",

            "format": "int32"

          },

          "averagePositionPrice": {

            "$ref": "#/components/schemas/MoneyAmount"

          },

          "averagePositionPriceNoNkd": {

            "$ref": "#/components/schemas/MoneyAmount"

          },

          "name": {

            "type": "string"

          }

        }

      },

      "MoneyAmount": {

        "type": "object",

        "required": [

          "currency",

          "value"

        ],

        "properties": {

          "currency": {

            "$ref": "#/components/schemas/Currency"

          },

          "value": {

            "type": "number",

            "format": "double"

          }

        }

      },

      "OrderbookResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "status",

          "payload"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/Orderbook"

          }

        }

      },

      "Orderbook": {

        "type": "object",

        "required": [

          "figi",

          "depth",

          "bids",

          "asks",

          "tradeStatus",

          "minPriceIncrement"

        ],

        "properties": {

          "figi": {

            "type": "string"

          },

          "depth": {

            "type": "integer",

            "format": "int32"

          },

          "bids": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/OrderResponse"

            }

          },

          "asks": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/OrderResponse"

            }

          },

          "tradeStatus": {

            "$ref": "#/components/schemas/TradeStatus"

          },

          "minPriceIncrement": {

            "type": "number",

            "format": "double",

            "description": "??? ????"

          },

          "faceValue": {

            "type": "number",

            "format": "double",

            "description": "??????? ??? ?????????"

          },

          "lastPrice": {

            "type": "number",

            "format": "double"

          },

          "closePrice": {

            "type": "number",

            "format": "double"

          },

          "limitUp": {

            "type": "number",

            "format": "double",

            "description": "??????? ??????? ????"

          },

          "limitDown": {

            "type": "number",

            "format": "double",

            "description": "?????? ??????? ????"

          }

        }

      },

      "OrderResponse": {

        "type": "object",

        "required": [

          "price",

          "quantity"

        ],

        "properties": {

          "price": {

            "type": "number",

            "format": "double"

          },

          "quantity": {

            "type": "integer",

            "format": "int32"

          }

        }

      },

      "CandlesResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "status",

          "payload"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/Candles"

          }

        }

      },

      "Candles": {

        "type": "object",

        "required": [

          "candles",

          "figi",

          "interval"

        ],

        "properties": {

          "figi": {

            "type": "string"

          },

          "interval": {

            "$ref": "#/components/schemas/CandleResolution"

          },

          "candles": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/Candle"

            }

          }

        }

      },

      "Candle": {

        "type": "object",

        "required": [

          "figi",

          "interval",

          "time",

          "o",

          "c",

          "h",

          "l",

          "v"

        ],

        "properties": {

          "figi": {

            "type": "string"

          },

          "interval": {

            "$ref": "#/components/schemas/CandleResolution"

          },

          "o": {

            "type": "number",

            "format": "double"

          },

          "c": {

            "type": "number",

            "format": "double"

          },

          "h": {

            "type": "number",

            "format": "double"

          },

          "l": {

            "type": "number",

            "format": "double"

          },

          "v": {

            "type": "integer",

            "format": "int32"

          },

          "time": {

            "type": "string",

            "format": "date-time",

            "description": "ISO8601",

            "example": "2019-08-19T18:38:33+03:00"

          }

        }

      },

      "OperationsResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "status",

          "payload"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/Operations"

          }

        }

      },

      "Operations": {

        "type": "object",

        "required": [

          "operations"

        ],

        "properties": {

          "operations": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/Operation"

            }

          }

        }

      },

      "OperationTrade": {

        "type": "object",

        "required": [

          "tradeId",

          "date",

          "quantity",

          "price"

        ],

        "properties": {

          "tradeId": {

            "type": "string"

          },

          "date": {

            "type": "string",

            "format": "date-time",

            "description": "ISO8601",

            "example": "2019-08-19T18:38:33+03:00"

          },

          "price": {

            "type": "number",

            "format": "double"

          },

          "quantity": {

            "type": "integer",

            "format": "int32"

          }

        }

      },

      "Operation": {

        "type": "object",

        "required": [

          "id",

          "status",

          "currency",

          "payment",

          "isMarginCall",

          "date"

        ],

        "properties": {

          "id": {

            "type": "string"

          },

          "status": {

            "$ref": "#/components/schemas/OperationStatus"

          },

          "trades": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/OperationTrade"

            }

          },

          "commission": {

            "$ref": "#/components/schemas/MoneyAmount"

          },

          "currency": {

            "$ref": "#/components/schemas/Currency"

          },

          "payment": {

            "type": "number",

            "format": "double"

          },

          "price": {

            "type": "number",

            "format": "double"

          },

          "quantity": {

            "type": "integer",

            "format": "int32",

            "description": "????? ???????????? ? ???????????? ??????"

          },

          "quantityExecuted": {

            "type": "integer",

            "format": "int32",

            "description": "????? ????????????, ??????????? ? ??????"

          },

          "figi": {

            "type": "string"

          },

          "instrumentType": {

            "$ref": "#/components/schemas/InstrumentType"

          },

          "isMarginCall": {

            "type": "boolean"

          },

          "date": {

            "type": "string",

            "format": "date-time",

            "description": "ISO8601",

            "example": "2019-08-19T18:38:33+03:00"

          },

          "operationType": {

            "$ref": "#/components/schemas/OperationTypeWithCommission"

          }

        }

      },

      "OrdersResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "status",

          "payload"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/Order"

            }

          }

        }

      },

      "Order": {

        "type": "object",

        "required": [

          "orderId",

          "figi",

          "operation",

          "status",

          "requestedLots",

          "executedLots",

          "type",

          "price"

        ],

        "properties": {

          "orderId": {

            "type": "string"

          },

          "figi": {

            "type": "string"

          },

          "operation": {

            "$ref": "#/components/schemas/OperationType"

          },

          "status": {

            "$ref": "#/components/schemas/OrderStatus"

          },

          "requestedLots": {

            "type": "integer",

            "format": "int32"

          },

          "executedLots": {

            "type": "integer",

            "format": "int32"

          },

          "type": {

            "$ref": "#/components/schemas/OrderType"

          },

          "price": {

            "type": "number",

            "format": "double"

          }

        }

      },

      "LimitOrderRequest": {

        "type": "object",

        "required": [

          "operation",

          "lots",

          "price"

        ],

        "properties": {

          "lots": {

            "type": "integer",

            "format": "int32"

          },

          "operation": {

            "$ref": "#/components/schemas/OperationType"

          },

          "price": {

            "type": "number",

            "format": "double"

          }

        }

      },

      "LimitOrderResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "status",

          "payload"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/PlacedLimitOrder"

          }

        }

      },

      "PlacedLimitOrder": {

        "type": "object",

        "required": [

          "orderId",

          "operation",

          "status",

          "requestedLots",

          "executedLots"

        ],

        "properties": {

          "orderId": {

            "type": "string"

          },

          "operation": {

            "$ref": "#/components/schemas/OperationType"

          },

          "status": {

            "$ref": "#/components/schemas/OrderStatus"

          },

          "rejectReason": {

            "type": "string"

          },

          "message": {

            "description": "????????? ?? ??????",

            "type": "string"

          },

          "requestedLots": {

            "type": "integer"

          },

          "executedLots": {

            "type": "integer"

          },

          "commission": {

            "$ref": "#/components/schemas/MoneyAmount"

          }

        }

      },

      "MarketOrderRequest": {

        "type": "object",

        "required": [

          "operation",

          "lots"

        ],

        "properties": {

          "lots": {

            "type": "integer",

            "format": "int32"

          },

          "operation": {

            "$ref": "#/components/schemas/OperationType"

          }

        }

      },

      "MarketOrderResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "status",

          "payload"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/PlacedMarketOrder"

          }

        }

      },

      "PlacedMarketOrder": {

        "type": "object",

        "required": [

          "orderId",

          "operation",

          "status",

          "requestedLots",

          "executedLots"

        ],

        "properties": {

          "orderId": {

            "type": "string"

          },

          "operation": {

            "$ref": "#/components/schemas/OperationType"

          },

          "status": {

            "$ref": "#/components/schemas/OrderStatus"

          },

          "rejectReason": {

            "type": "string"

          },

          "message": {

            "description": "????????? ?? ??????",

            "type": "string"

          },

          "requestedLots": {

            "type": "integer"

          },

          "executedLots": {

            "type": "integer"

          },

          "commission": {

            "$ref": "#/components/schemas/MoneyAmount"

          }

        }

      },

      "TradeStatus": {

        "type": "string",

        "enum": [

          "NormalTrading",

          "NotAvailableForTrading"

        ]

      },

      "OperationType": {

        "type": "string",

        "enum": [

          "Buy",

          "Sell"

        ]

      },

      "OperationTypeWithCommission": {

        "type": "string",

        "enum": [

          "Buy",

          "BuyCard",

          "Sell",

          "BrokerCommission",

          "ExchangeCommission",

          "ServiceCommission",

          "MarginCommission",

          "OtherCommission",

          "PayIn",

          "PayOut",

          "Tax",

          "TaxLucre",

          "TaxDividend",

          "TaxCoupon",

          "TaxBack",

          "Repayment",

          "PartRepayment",

          "Coupon",

          "Dividend",

          "SecurityIn",

          "SecurityOut"

        ]

      },

      "OperationStatus": {

        "description": "?????? ??????",

        "type": "string",

        "enum": [

          "Done",

          "Decline",

          "Progress"

        ]

      },

      "CandleResolution": {

        "description": "???????? ????? ? ?????????? ?????????? ???????:\n- 1min [1 minute, 1 day]\n- 2min [2 minutes, 1 day]\n- 3min [3 minutes, 1 day]\n- 5min [5 minutes, 1 day]\n- 10min [10 minutes, 1 day]\n- 15min [15 minutes, 1 day]\n- 30min [30 minutes, 1 day]\n- hour [1 hour, 7 days]\n- day [1 day, 1 year]\n- week [7 days, 2 years]\n- month [1 month, 10 years]\n",

        "type": "string",

        "enum": [

          "1min",

          "2min",

          "3min",

          "5min",

          "10min",

          "15min",

          "30min",

          "hour",

          "day",

          "week",

          "month"

        ]

      },

      "OrderStatus": {

        "description": "?????? ??????",

        "type": "string",

        "enum": [

          "New",

          "PartiallyFill",

          "Fill",

          "Cancelled",

          "Replaced",

          "PendingCancel",

          "Rejected",

          "PendingReplace",

          "PendingNew"

        ]

      },

      "OrderType": {

        "description": "??? ??????",

        "type": "string",

        "enum": [

          "Limit",

          "Market"

        ]

      },

      "SandboxRegisterRequest": {

        "type": "object",

        "properties": {

          "brokerAccountType": {

            "$ref": "#/components/schemas/BrokerAccountType"

          }

        }

      },

      "SandboxRegisterResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/SandboxAccount"

          }

        }

      },

      "SandboxAccount": {

        "type": "object",

        "required": [

          "brokerAccountType",

          "brokerAccountId"

        ],

        "properties": {

          "brokerAccountType": {

            "$ref": "#/components/schemas/BrokerAccountType"

          },

          "brokerAccountId": {

            "type": "string"

          }

        }

      },

      "SandboxSetCurrencyBalanceRequest": {

        "type": "object",

        "required": [

          "currency",

          "balance"

        ],

        "properties": {

          "currency": {

            "$ref": "#/components/schemas/SandboxCurrency"

          },

          "balance": {

            "type": "number",

            "format": "double"

          }

        }

      },

      "SandboxSetPositionBalanceRequest": {

        "type": "object",

        "required": [

          "currency",

          "balance"

        ],

        "properties": {

          "figi": {

            "type": "string"

          },

          "balance": {

            "type": "number",

            "format": "double"

          }

        }

      },

      "MarketInstrumentListResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/MarketInstrumentList"

          }

        }

      },

      "MarketInstrumentList": {

        "type": "object",

        "required": [

          "total",

          "instruments"

        ],

        "properties": {

          "total": {

            "type": "number",

            "format": "int32"

          },

          "instruments": {

            "type": "array",

            "items": {

              "$ref": "#/components/schemas/MarketInstrument"

            }

          }

        }

      },

      "SearchMarketInstrumentResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/SearchMarketInstrument"

          }

        }

      },

      "MarketInstrumentResponse": {

        "type": "object",

        "required": [

          "trackingId",

          "payload",

          "status"

        ],

        "properties": {

          "trackingId": {

            "type": "string"

          },

          "status": {

            "type": "string",

            "default": "Ok"

          },

          "payload": {

            "$ref": "#/components/schemas/MarketInstrument"

          }

        }

      },

      "SearchMarketInstrument": {

        "type": "object",

        "required": [

          "figi",

          "ticker",

          "lot",

          "name",

          "type"

        ],

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "minPriceIncrement": {

            "type": "number",

            "format": "double",

            "description": "??? ????"

          },

          "lot": {

            "type": "integer",

            "format": "int32"

          },

          "currency": {

            "$ref": "#/components/schemas/Currency"

          },

          "name": {

            "type": "string"

          },

          "type": {

            "$ref": "#/components/schemas/InstrumentType"

          }

        }

      },

      "MarketInstrument": {

        "type": "object",

        "required": [

          "figi",

          "ticker",

          "lot",

          "name",

          "type"

        ],

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "minPriceIncrement": {

            "type": "number",

            "format": "double",

            "description": "??? ????"

          },

          "lot": {

            "type": "integer",

            "format": "int32"

          },

          "minQuantity": {

            "type": "integer",

            "format": "int32",

            "description": "??????????? ????? ???????????? ??? ??????? ?????? ???? ?? ??????, ??? ?????? ???? ? ?????????? ?????"

          },

          "currency": {

            "$ref": "#/components/schemas/Currency"

          },

          "name": {

            "type": "string"

          },

          "type": {

            "$ref": "#/components/schemas/InstrumentType"

          }

        }

      },

      "SandboxCurrency": {

        "type": "string",

        "enum": [

          "RUB",

          "USD",

          "EUR",

          "GBP",

          "HKD",

          "CHF",

          "JPY",

          "CNY",

          "TRY"

        ]

      },

      "Currency": {

        "type": "string",

        "enum": [

          "RUB",

          "USD",

          "EUR",

          "GBP",

          "HKD",

          "CHF",

          "JPY",

          "CNY",

          "TRY"

        ]

      },

      "InstrumentType": {

        "type": "string",

        "enum": [

          "Stock",

          "Currency",

          "Bond",

          "Etf"

        ]

      },

      "BrokerAccountType": {

        "type": "string",

        "enum": [

          "Tinkoff",

          "TinkoffIis"

        ]

      }

    }

  }

}', 1);
INSERT INTO swagger (id, json, version) VALUES (2, '{

  "openapi": "3.0.1",

  "info": {

    "title": "Tinkoff Invest API",

    "termsOfService": "https://www.tinkoff.ru/invest/disclaimers/basic-information/",

    "contact": {

      "email": "al.a.volkov@tinkoff.ru"

    },

    "version": "1.0.6"

  },

  "externalDocs": {

    "description": "???????????? Tinkoff Invest API",

    "url": "https://tinkoff.github.io/investAPI/"

  },

  "servers": [

    {

      "url": "https://invest-public-api.tinkoff.ru/rest/",

      "description": "?????? ? ??????"

    }

  ],

  "security": [

    {

      "Bearer": []

    }

  ],

  "tags": [

    {

      "name": "InstrumentsService"

    },

    {

      "name": "MarketDataService"

    },

    {

      "name": "OperationsService"

    },

    {

      "name": "OrdersService"

    },

    {

      "name": "SandboxService"

    },

    {

      "name": "StopOrdersService"

    },

    {

      "name": "UsersService"

    }

  ],

  "paths": {

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/BondBy": {

      "post": {

        "operationId": "InstrumentsService_BondBy",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1BondResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ????????? ?? ? ??????????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/Bonds": {

      "post": {

        "operationId": "InstrumentsService_Bonds",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1BondsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ?????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/Currencies": {

      "post": {

        "operationId": "InstrumentsService_Currencies",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1CurrenciesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ?????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/CurrencyBy": {

      "post": {

        "operationId": "InstrumentsService_CurrencyBy",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1CurrencyResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ?? ? ??????????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/EtfBy": {

      "post": {

        "operationId": "InstrumentsService_EtfBy",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1EtfResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????????????? ????? ?? ??? ??????????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/Etfs": {

      "post": {

        "operationId": "InstrumentsService_Etfs",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1EtfsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ?????????????? ??????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/FutureBy": {

      "post": {

        "operationId": "InstrumentsService_FutureBy",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1FutureResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ???????? ?? ??? ??????????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/Futures": {

      "post": {

        "operationId": "InstrumentsService_Futures",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1FuturesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ?????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAccruedInterests": {

      "post": {

        "operationId": "InstrumentsService_GetAccruedInterests",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetAccruedInterestsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetAccruedInterestsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ???????????? ????????? ?????? ?? ?????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAssetBy": {

      "post": {

        "operationId": "InstrumentsService_GetAssetBy",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1AssetRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1AssetResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ?? ??? ??????????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetAssets": {

      "post": {

        "operationId": "InstrumentsService_GetAssets",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1AssetsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1AssetsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ???????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetBondCoupons": {

      "post": {

        "operationId": "InstrumentsService_GetBondCoupons",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetBondCouponsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetBondCouponsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????? ?????? ??????? ?? ?????????",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetDividends": {

      "post": {

        "operationId": "InstrumentsService_GetDividends",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetDividendsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetDividendsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??? ????????? ??????? ??????? ?????????? ?? ???????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetFuturesMargin": {

      "post": {

        "operationId": "InstrumentsService_GetFuturesMargin",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetFuturesMarginRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetFuturesMarginResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????? ???????????? ??????????? ?? ?????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/GetInstrumentBy": {

      "post": {

        "operationId": "InstrumentsService_GetInstrumentBy",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1InstrumentResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ???????? ?????????? ?? ???????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/ShareBy": {

      "post": {

        "operationId": "InstrumentsService_ShareBy",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1ShareResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ????? ?? ? ??????????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/Shares": {

      "post": {

        "operationId": "InstrumentsService_Shares",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1InstrumentsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1SharesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ?????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.InstrumentsService/TradingSchedules": {

      "post": {

        "operationId": "InstrumentsService_TradingSchedules",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1TradingSchedulesRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1TradingSchedulesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????????? ?????? ???????? ????????.",

        "tags": [

          "InstrumentsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.MarketDataService/GetCandles": {

      "post": {

        "operationId": "MarketDataService_GetCandles",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetCandlesRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetCandlesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????? ???????????? ?????? ?? ???????????.",

        "tags": [

          "MarketDataService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.MarketDataService/GetLastPrices": {

      "post": {

        "operationId": "MarketDataService_GetLastPrices",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetLastPricesRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetLastPricesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????? ????????? ??? ?? ????????????.",

        "tags": [

          "MarketDataService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.MarketDataService/GetLastTrades": {

      "post": {

        "operationId": "MarketDataService_GetLastTrades",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetLastTradesRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetLastTradesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????? ????????? ???????????? ?????? ?? ???????????.",

        "tags": [

          "MarketDataService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.MarketDataService/GetOrderBook": {

      "post": {

        "operationId": "MarketDataService_GetOrderBook",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetOrderBookRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetOrderBookResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????? ?? ???????????.",

        "tags": [

          "MarketDataService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.MarketDataService/GetTradingStatus": {

      "post": {

        "operationId": "MarketDataService_GetTradingStatus",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetTradingStatusRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetTradingStatusResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????? ??????? ?????? ?? ????????????.",

        "tags": [

          "MarketDataService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OperationsService/GetBrokerReport": {

      "post": {

        "operationId": "OperationsService_GetBrokerReport",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1BrokerReportRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1BrokerReportResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????????? ??????.",

        "tags": [

          "OperationsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OperationsService/GetDividendsForeignIssuer": {

      "post": {

        "operationId": "OperationsService_GetDividendsForeignIssuer",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetDividendsForeignIssuerRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetDividendsForeignIssuerResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? \"??????? ? ??????? ?? ????????? ??\".",

        "tags": [

          "OperationsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OperationsService/GetOperations": {

      "post": {

        "operationId": "OperationsService_GetOperations",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1OperationsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1OperationsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ???????? ?? ?????.",

        "tags": [

          "OperationsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OperationsService/GetPortfolio": {

      "post": {

        "operationId": "OperationsService_GetPortfolio",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1PortfolioRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1PortfolioResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ???????? ?? ?????.",

        "tags": [

          "OperationsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OperationsService/GetPositions": {

      "post": {

        "operationId": "OperationsService_GetPositions",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1PositionsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1PositionsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ??????? ?? ?????.",

        "tags": [

          "OperationsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OperationsService/GetWithdrawLimits": {

      "post": {

        "operationId": "OperationsService_GetWithdrawLimits",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1WithdrawLimitsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1WithdrawLimitsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????????? ??????? ??? ?????? ???????.",

        "tags": [

          "OperationsService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OrdersService/CancelOrder": {

      "post": {

        "operationId": "OrdersService_CancelOrder",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1CancelOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1CancelOrderResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ?????? ???????? ??????.",

        "tags": [

          "OrdersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OrdersService/GetOrderState": {

      "post": {

        "operationId": "OrdersService_GetOrderState",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetOrderStateRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1OrderState"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????? ????????? ?????????.",

        "tags": [

          "OrdersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OrdersService/GetOrders": {

      "post": {

        "operationId": "OrdersService_GetOrders",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetOrdersRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetOrdersResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ???????? ?????? ?? ?????.",

        "tags": [

          "OrdersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.OrdersService/PostOrder": {

      "post": {

        "operationId": "OrdersService_PostOrder",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1PostOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1PostOrderResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????????? ??????.",

        "tags": [

          "OrdersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/CancelSandboxOrder": {

      "post": {

        "operationId": "SandboxService_CancelSandboxOrder",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1CancelOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1CancelOrderResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ?????? ????????? ????????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/CloseSandboxAccount": {

      "post": {

        "operationId": "SandboxService_CloseSandboxAccount",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1CloseSandboxAccountRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1CloseSandboxAccountResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ???????? ????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxAccounts": {

      "post": {

        "operationId": "SandboxService_GetSandboxAccounts",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetAccountsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetAccountsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOperations": {

      "post": {

        "operationId": "SandboxService_GetSandboxOperations",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1OperationsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1OperationsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ???????? ? ????????? ?? ?????? ?????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOrderState": {

      "post": {

        "operationId": "SandboxService_GetSandboxOrderState",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetOrderStateRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1OrderState"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????? ?????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOrders": {

      "post": {

        "operationId": "SandboxService_GetSandboxOrders",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetOrdersRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetOrdersResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ???????? ?????? ?? ????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxPortfolio": {

      "post": {

        "operationId": "SandboxService_GetSandboxPortfolio",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1PortfolioRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1PortfolioResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ????????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxPositions": {

      "post": {

        "operationId": "SandboxService_GetSandboxPositions",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1PositionsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1PositionsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ??????? ?? ???????????? ????? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/OpenSandboxAccount": {

      "post": {

        "operationId": "SandboxService_OpenSandboxAccount",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1OpenSandboxAccountRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1OpenSandboxAccountResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????????? ????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/PostSandboxOrder": {

      "post": {

        "operationId": "SandboxService_PostSandboxOrder",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1PostOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1PostOrderResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????????? ????????? ????????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.SandboxService/SandboxPayIn": {

      "post": {

        "operationId": "SandboxService_SandboxPayIn",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1SandboxPayInRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1SandboxPayInResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ?????????? ????? ? ?????????.",

        "tags": [

          "SandboxService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.StopOrdersService/CancelStopOrder": {

      "post": {

        "operationId": "StopOrdersService_CancelStopOrder",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1CancelStopOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1CancelStopOrderResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ?????? ????-??????.",

        "tags": [

          "StopOrdersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.StopOrdersService/GetStopOrders": {

      "post": {

        "operationId": "StopOrdersService_GetStopOrders",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetStopOrdersRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetStopOrdersResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ???????? ???? ?????? ?? ?????.",

        "tags": [

          "StopOrdersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.StopOrdersService/PostStopOrder": {

      "post": {

        "operationId": "StopOrdersService_PostStopOrder",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1PostStopOrderRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1PostStopOrderResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ??????????? ????-??????.",

        "tags": [

          "StopOrdersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.UsersService/GetAccounts": {

      "post": {

        "operationId": "UsersService_GetAccounts",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetAccountsRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetAccountsResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????? ????????????.",

        "tags": [

          "UsersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.UsersService/GetInfo": {

      "post": {

        "operationId": "UsersService_GetInfo",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetInfoRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetInfoResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "????? ????????? ?????????? ? ????????????.",

        "tags": [

          "UsersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.UsersService/GetMarginAttributes": {

      "post": {

        "operationId": "UsersService_GetMarginAttributes",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetMarginAttributesRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetMarginAttributesResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "?????? ???????????? ??????????? ?? ?????.",

        "tags": [

          "UsersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    },

    "/tinkoff.public.invest.api.contract.v1.UsersService/GetUserTariff": {

      "post": {

        "operationId": "UsersService_GetUserTariff",

        "requestBody": {

          "content": {

            "application/json": {

              "schema": {

                "$ref": "#/components/schemas/v1GetUserTariffRequest"

              }

            }

          },

          "required": true

        },

        "responses": {

          "200": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/v1GetUserTariffResponse"

                }

              }

            },

            "description": "A successful response."

          },

          "default": {

            "content": {

              "application/json": {

                "schema": {

                  "$ref": "#/components/schemas/rpcStatus"

                }

              }

            },

            "description": "An unexpected error response."

          }

        },

        "summary": "?????? ?????? ????????????.",

        "tags": [

          "UsersService"

        ],

        "x-codegen-request-body-name": "body"

      }

    }

  },

  "components": {

    "schemas": {

      "protobufAny": {

        "additionalProperties": {

          "type": "object"

        },

        "example": {

          "@type": "@type"

        },

        "properties": {

          "@type": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "rpcStatus": {

        "example": {

          "code": 1,

          "details": [

            {

              "@type": "@type"

            },

            {

              "@type": "@type"

            }

          ],

          "message": "message"

        },

        "properties": {

          "code": {

            "format": "int32",

            "type": "integer"

          },

          "message": {

            "type": "string"

          },

          "details": {

            "items": {

              "$ref": "#/components/schemas/protobufAny"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1AccessLevel": {

        "default": "ACCOUNT_ACCESS_LEVEL_UNSPECIFIED",

        "description": "??????? ??????? ? ?????.",

        "enum": [

          "ACCOUNT_ACCESS_LEVEL_UNSPECIFIED",

          "ACCOUNT_ACCESS_LEVEL_FULL_ACCESS",

          "ACCOUNT_ACCESS_LEVEL_READ_ONLY",

          "ACCOUNT_ACCESS_LEVEL_NO_ACCESS"

        ],

        "type": "string"

      },

      "v1Account": {

        "description": "?????????? ? ?????.",

        "example": {

          "openedDate": "2000-01-23T04:56:07.000Z",

          "closedDate": "2000-01-23T04:56:07.000Z",

          "name": "name",

          "id": "id"

        },

        "properties": {

          "id": {

            "description": "????????????? ?????.",

            "type": "string"

          },

          "type": {

            "$ref": "#/components/schemas/v1AccountType"

          },

          "name": {

            "description": "???????? ?????.",

            "type": "string"

          },

          "status": {

            "$ref": "#/components/schemas/v1AccountStatus"

          },

          "openedDate": {

            "description": "???? ???????? ????? ? ??????? ????? UTC.",

            "format": "date-time",

            "type": "string"

          },

          "closedDate": {

            "description": "???? ???????? ????? ? ??????? ????? UTC.",

            "format": "date-time",

            "type": "string"

          },

          "accessLevel": {

            "$ref": "#/components/schemas/v1AccessLevel"

          }

        },

        "type": "object"

      },

      "v1AccountStatus": {

        "default": "ACCOUNT_STATUS_UNSPECIFIED",

        "description": "?????? ?????.",

        "enum": [

          "ACCOUNT_STATUS_UNSPECIFIED",

          "ACCOUNT_STATUS_NEW",

          "ACCOUNT_STATUS_OPEN",

          "ACCOUNT_STATUS_CLOSED"

        ],

        "type": "string"

      },

      "v1AccountType": {

        "default": "ACCOUNT_TYPE_UNSPECIFIED",

        "description": "??? ?????.",

        "enum": [

          "ACCOUNT_TYPE_UNSPECIFIED",

          "ACCOUNT_TYPE_TINKOFF",

          "ACCOUNT_TYPE_TINKOFF_IIS",

          "ACCOUNT_TYPE_INVEST_BOX"

        ],

        "type": "string"

      },

      "v1AccruedInterest": {

        "description": "???????? ?????????? ???????.",

        "example": {

          "date": "2000-01-23T04:56:07.000Z",

          "valuePercent": {

            "nano": 6,

            "units": "units"

          },

          "nominal": {

            "nano": 6,

            "units": "units"

          },

          "value": {

            "nano": 6,

            "units": "units"

          }

        },

        "properties": {

          "date": {

            "format": "date-time",

            "type": "string"

          },

          "value": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "valuePercent": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1Quotation"

          }

        },

        "type": "object"

      },

      "v1Asset": {

        "description": "?????????? ?? ??????.",

        "example": {

          "uid": "uid",

          "instruments": [

            {

              "uid": "uid",

              "classCode": "classCode",

              "instrumentType": "instrumentType",

              "ticker": "ticker",

              "figi": "figi",

              "links": [

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                },

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                }

              ]

            },

            {

              "uid": "uid",

              "classCode": "classCode",

              "instrumentType": "instrumentType",

              "ticker": "ticker",

              "figi": "figi",

              "links": [

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                },

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                }

              ]

            }

          ],

          "name": "name"

        },

        "properties": {

          "uid": {

            "type": "string"

          },

          "type": {

            "$ref": "#/components/schemas/v1AssetType"

          },

          "name": {

            "type": "string"

          },

          "instruments": {

            "items": {

              "$ref": "#/components/schemas/v1AssetInstrument"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1AssetBond": {

        "description": "?????????.",

        "example": {

          "indexedNominalFlag": true,

          "couponQuantityPerYear": 0,

          "currentNominal": {

            "nano": 6,

            "units": "units"

          },

          "taxFreeFlag": true,

          "returnCondition": "returnCondition",

          "collateralFlag": true,

          "stateRegDate": "2000-01-23T04:56:07.000Z",

          "issueSizePlan": {

            "nano": 6,

            "units": "units"

          },

          "borrowName": "borrowName",

          "issueKind": "issueKind",

          "placementDate": "2000-01-23T04:56:07.000Z",

          "nominal": {

            "nano": 6,

            "units": "units"

          },

          "amortizationFlag": true,

          "perpetualFlag": true,

          "maturityDate": "2000-01-23T04:56:07.000Z",

          "issueSize": {

            "nano": 6,

            "units": "units"

          },

          "interestKind": "interestKind",

          "subordinatedFlag": true,

          "nominalCurrency": "nominalCurrency",

          "floatingCouponFlag": true,

          "placementPrice": {

            "nano": 6,

            "units": "units"

          }

        },

        "properties": {

          "currentNominal": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "borrowName": {

            "type": "string"

          },

          "issueSize": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominalCurrency": {

            "type": "string"

          },

          "issueKind": {

            "type": "string"

          },

          "interestKind": {

            "type": "string"

          },

          "couponQuantityPerYear": {

            "format": "int32",

            "type": "integer"

          },

          "indexedNominalFlag": {

            "type": "boolean"

          },

          "subordinatedFlag": {

            "type": "boolean"

          },

          "collateralFlag": {

            "type": "boolean"

          },

          "taxFreeFlag": {

            "type": "boolean"

          },

          "amortizationFlag": {

            "type": "boolean"

          },

          "floatingCouponFlag": {

            "type": "boolean"

          },

          "perpetualFlag": {

            "type": "boolean"

          },

          "maturityDate": {

            "format": "date-time",

            "type": "string"

          },

          "returnCondition": {

            "type": "string"

          },

          "stateRegDate": {

            "format": "date-time",

            "type": "string"

          },

          "placementDate": {

            "format": "date-time",

            "type": "string"

          },

          "placementPrice": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "issueSizePlan": {

            "$ref": "#/components/schemas/v1Quotation"

          }

        },

        "type": "object"

      },

      "v1AssetClearingCertificate": {

        "description": "??????????? ?????????? ???????.",

        "example": {

          "nominal": {

            "nano": 6,

            "units": "units"

          },

          "nominalCurrency": "nominalCurrency"

        },

        "properties": {

          "nominal": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominalCurrency": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1AssetCurrency": {

        "description": "??????.",

        "example": {

          "baseCurrency": "baseCurrency"

        },

        "properties": {

          "baseCurrency": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1AssetEtf": {

        "description": "????.",

        "example": {

          "releasedDate": "2000-01-23T04:56:07.000Z",

          "fixedCommission": {

            "nano": 6,

            "units": "units"

          },

          "numShare": {

            "nano": 6,

            "units": "units"

          },

          "watermarkFlag": true,

          "description": "description",

          "primaryIndexCompany": "primaryIndexCompany",

          "inavCode": "inavCode",

          "indexRecoveryPeriod": {

            "nano": 6,

            "units": "units"

          },

          "performanceFee": {

            "nano": 6,

            "units": "units"

          },

          "paymentType": "paymentType",

          "managementType": "managementType",

          "primaryIndexTrackingError": {

            "nano": 6,

            "units": "units"

          },

          "nominal": {

            "nano": 6,

            "units": "units"

          },

          "ucitsFlag": true,

          "expenseCommission": {

            "nano": 6,

            "units": "units"

          },

          "focusType": "focusType",

          "primaryIndexDescription": "primaryIndexDescription",

          "rebalancingPlan": "rebalancingPlan",

          "hurdleRate": {

            "nano": 6,

            "units": "units"

          },

          "primaryIndex": "primaryIndex",

          "leveragedFlag": true,

          "taxRate": "taxRate",

          "issueKind": "issueKind",

          "sellDiscount": {

            "nano": 6,

            "units": "units"

          },

          "rebalancingDates": [

            "2000-01-23T04:56:07.000Z",

            "2000-01-23T04:56:07.000Z"

          ],

          "rebalancingFreq": "rebalancingFreq",

          "rebalancingFlag": true,

          "nominalCurrency": "nominalCurrency",

          "divYieldFlag": true,

          "totalExpense": {

            "nano": 6,

            "units": "units"

          },

          "buyPremium": {

            "nano": 6,

            "units": "units"

          }

        },

        "properties": {

          "totalExpense": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "hurdleRate": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "performanceFee": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "fixedCommission": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "paymentType": {

            "type": "string"

          },

          "watermarkFlag": {

            "type": "boolean"

          },

          "buyPremium": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "sellDiscount": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "rebalancingFlag": {

            "type": "boolean"

          },

          "rebalancingFreq": {

            "type": "string"

          },

          "managementType": {

            "type": "string"

          },

          "primaryIndex": {

            "type": "string"

          },

          "focusType": {

            "type": "string"

          },

          "leveragedFlag": {

            "type": "boolean"

          },

          "numShare": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "ucitsFlag": {

            "type": "boolean"

          },

          "releasedDate": {

            "format": "date-time",

            "type": "string"

          },

          "description": {

            "type": "string"

          },

          "primaryIndexDescription": {

            "type": "string"

          },

          "primaryIndexCompany": {

            "type": "string"

          },

          "indexRecoveryPeriod": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "inavCode": {

            "type": "string"

          },

          "divYieldFlag": {

            "type": "boolean"

          },

          "expenseCommission": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "primaryIndexTrackingError": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "rebalancingPlan": {

            "type": "string"

          },

          "taxRate": {

            "type": "string"

          },

          "rebalancingDates": {

            "items": {

              "format": "date-time",

              "type": "string"

            },

            "type": "array"

          },

          "issueKind": {

            "type": "string"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominalCurrency": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1AssetFull": {

        "example": {

          "cfi": "cfi",

          "description": "description",

          "uid": "uid",

          "requiredTests": [

            "requiredTests",

            "requiredTests"

          ],

          "codeNsd": "codeNsd",

          "deletedAt": "2000-01-23T04:56:07.000Z",

          "security": {

            "etf": {

              "releasedDate": "2000-01-23T04:56:07.000Z",

              "fixedCommission": {

                "nano": 6,

                "units": "units"

              },

              "numShare": {

                "nano": 6,

                "units": "units"

              },

              "watermarkFlag": true,

              "description": "description",

              "primaryIndexCompany": "primaryIndexCompany",

              "inavCode": "inavCode",

              "indexRecoveryPeriod": {

                "nano": 6,

                "units": "units"

              },

              "performanceFee": {

                "nano": 6,

                "units": "units"

              },

              "paymentType": "paymentType",

              "managementType": "managementType",

              "primaryIndexTrackingError": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 6,

                "units": "units"

              },

              "ucitsFlag": true,

              "expenseCommission": {

                "nano": 6,

                "units": "units"

              },

              "focusType": "focusType",

              "primaryIndexDescription": "primaryIndexDescription",

              "rebalancingPlan": "rebalancingPlan",

              "hurdleRate": {

                "nano": 6,

                "units": "units"

              },

              "primaryIndex": "primaryIndex",

              "leveragedFlag": true,

              "taxRate": "taxRate",

              "issueKind": "issueKind",

              "sellDiscount": {

                "nano": 6,

                "units": "units"

              },

              "rebalancingDates": [

                "2000-01-23T04:56:07.000Z",

                "2000-01-23T04:56:07.000Z"

              ],

              "rebalancingFreq": "rebalancingFreq",

              "rebalancingFlag": true,

              "nominalCurrency": "nominalCurrency",

              "divYieldFlag": true,

              "totalExpense": {

                "nano": 6,

                "units": "units"

              },

              "buyPremium": {

                "nano": 6,

                "units": "units"

              }

            },

            "clearingCertificate": {

              "nominal": {

                "nano": 6,

                "units": "units"

              },

              "nominalCurrency": "nominalCurrency"

            },

            "share": {

              "totalFloat": {

                "nano": 6,

                "units": "units"

              },

              "dividendRate": {

                "nano": 6,

                "units": "units"

              },

              "registryDate": "2000-01-23T04:56:07.000Z",

              "primaryIndex": "primaryIndex",

              "preferredShareType": "preferredShareType",

              "issueSizePlan": {

                "nano": 6,

                "units": "units"

              },

              "issueKind": "issueKind",

              "placementDate": "2000-01-23T04:56:07.000Z",

              "nominal": {

                "nano": 6,

                "units": "units"

              },

              "issueSize": {

                "nano": 6,

                "units": "units"

              },

              "nominalCurrency": "nominalCurrency",

              "divYieldFlag": true,

              "represIsin": "represIsin",

              "ipoDate": "2000-01-23T04:56:07.000Z"

            },

            "type": "type",

            "bond": {

              "indexedNominalFlag": true,

              "couponQuantityPerYear": 0,

              "currentNominal": {

                "nano": 6,

                "units": "units"

              },

              "taxFreeFlag": true,

              "returnCondition": "returnCondition",

              "collateralFlag": true,

              "stateRegDate": "2000-01-23T04:56:07.000Z",

              "issueSizePlan": {

                "nano": 6,

                "units": "units"

              },

              "borrowName": "borrowName",

              "issueKind": "issueKind",

              "placementDate": "2000-01-23T04:56:07.000Z",

              "nominal": {

                "nano": 6,

                "units": "units"

              },

              "amortizationFlag": true,

              "perpetualFlag": true,

              "maturityDate": "2000-01-23T04:56:07.000Z",

              "issueSize": {

                "nano": 6,

                "units": "units"

              },

              "interestKind": "interestKind",

              "subordinatedFlag": true,

              "nominalCurrency": "nominalCurrency",

              "floatingCouponFlag": true,

              "placementPrice": {

                "nano": 6,

                "units": "units"

              }

            },

            "sp": {

              "issueSizePlan": {

                "nano": 6,

                "units": "units"

              },

              "borrowName": "borrowName",

              "issueKind": "issueKind",

              "placementDate": "2000-01-23T04:56:07.000Z",

              "nominal": {

                "nano": 6,

                "units": "units"

              },

              "maturityDate": "2000-01-23T04:56:07.000Z",

              "logicPortfolio": "logicPortfolio",

              "safetyBarrier": {

                "nano": 6,

                "units": "units"

              },

              "basicAsset": "basicAsset",

              "issueSize": {

                "nano": 6,

                "units": "units"

              },

              "nominalCurrency": "nominalCurrency"

            },

            "isin": "isin"

          },

          "instruments": [

            {

              "uid": "uid",

              "classCode": "classCode",

              "instrumentType": "instrumentType",

              "ticker": "ticker",

              "figi": "figi",

              "links": [

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                },

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                }

              ]

            },

            {

              "uid": "uid",

              "classCode": "classCode",

              "instrumentType": "instrumentType",

              "ticker": "ticker",

              "figi": "figi",

              "links": [

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                },

                {

                  "instrumentUid": "instrumentUid",

                  "type": "type"

                }

              ]

            }

          ],

          "gosRegCode": "gosRegCode",

          "name": "name",

          "brCodeName": "brCodeName",

          "currency": {

            "baseCurrency": "baseCurrency"

          },

          "brCode": "brCode",

          "brand": {

            "uid": "uid",

            "name": "name",

            "description": "description",

            "company": "company",

            "sector": "sector",

            "countryOfRiskName": "countryOfRiskName",

            "info": "info",

            "countryOfRisk": "countryOfRisk"

          },

          "nameBrief": "nameBrief",

          "status": "status",

          "updatedAt": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "uid": {

            "type": "string"

          },

          "type": {

            "$ref": "#/components/schemas/v1AssetType"

          },

          "name": {

            "type": "string"

          },

          "nameBrief": {

            "type": "string"

          },

          "description": {

            "type": "string"

          },

          "deletedAt": {

            "format": "date-time",

            "type": "string"

          },

          "requiredTests": {

            "items": {

              "type": "string"

            },

            "type": "array"

          },

          "currency": {

            "$ref": "#/components/schemas/v1AssetCurrency"

          },

          "security": {

            "$ref": "#/components/schemas/v1AssetSecurity"

          },

          "gosRegCode": {

            "type": "string"

          },

          "cfi": {

            "type": "string"

          },

          "codeNsd": {

            "type": "string"

          },

          "status": {

            "type": "string"

          },

          "brand": {

            "$ref": "#/components/schemas/v1Brand"

          },

          "updatedAt": {

            "format": "date-time",

            "type": "string"

          },

          "brCode": {

            "type": "string"

          },

          "brCodeName": {

            "type": "string"

          },

          "instruments": {

            "items": {

              "$ref": "#/components/schemas/v1AssetInstrument"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1AssetInstrument": {

        "description": "?????????????? ???????????.",

        "example": {

          "uid": "uid",

          "classCode": "classCode",

          "instrumentType": "instrumentType",

          "ticker": "ticker",

          "figi": "figi",

          "links": [

            {

              "instrumentUid": "instrumentUid",

              "type": "type"

            },

            {

              "instrumentUid": "instrumentUid",

              "type": "type"

            }

          ]

        },

        "properties": {

          "uid": {

            "type": "string"

          },

          "figi": {

            "type": "string"

          },

          "instrumentType": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "links": {

            "items": {

              "$ref": "#/components/schemas/v1InstrumentLink"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1AssetRequest": {

        "description": "?????? ?????? ?? ??????????????.",

        "properties": {

          "id": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1AssetResponse": {

        "description": "?????? ?? ??????.",

        "example": {

          "asset": {

            "cfi": "cfi",

            "description": "description",

            "uid": "uid",

            "requiredTests": [

              "requiredTests",

              "requiredTests"

            ],

            "codeNsd": "codeNsd",

            "deletedAt": "2000-01-23T04:56:07.000Z",

            "security": {

              "etf": {

                "releasedDate": "2000-01-23T04:56:07.000Z",

                "fixedCommission": {

                  "nano": 6,

                  "units": "units"

                },

                "numShare": {

                  "nano": 6,

                  "units": "units"

                },

                "watermarkFlag": true,

                "description": "description",

                "primaryIndexCompany": "primaryIndexCompany",

                "inavCode": "inavCode",

                "indexRecoveryPeriod": {

                  "nano": 6,

                  "units": "units"

                },

                "performanceFee": {

                  "nano": 6,

                  "units": "units"

                },

                "paymentType": "paymentType",

                "managementType": "managementType",

                "primaryIndexTrackingError": {

                  "nano": 6,

                  "units": "units"

                },

                "nominal": {

                  "nano": 6,

                  "units": "units"

                },

                "ucitsFlag": true,

                "expenseCommission": {

                  "nano": 6,

                  "units": "units"

                },

                "focusType": "focusType",

                "primaryIndexDescription": "primaryIndexDescription",

                "rebalancingPlan": "rebalancingPlan",

                "hurdleRate": {

                  "nano": 6,

                  "units": "units"

                },

                "primaryIndex": "primaryIndex",

                "leveragedFlag": true,

                "taxRate": "taxRate",

                "issueKind": "issueKind",

                "sellDiscount": {

                  "nano": 6,

                  "units": "units"

                },

                "rebalancingDates": [

                  "2000-01-23T04:56:07.000Z",

                  "2000-01-23T04:56:07.000Z"

                ],

                "rebalancingFreq": "rebalancingFreq",

                "rebalancingFlag": true,

                "nominalCurrency": "nominalCurrency",

                "divYieldFlag": true,

                "totalExpense": {

                  "nano": 6,

                  "units": "units"

                },

                "buyPremium": {

                  "nano": 6,

                  "units": "units"

                }

              },

              "clearingCertificate": {

                "nominal": {

                  "nano": 6,

                  "units": "units"

                },

                "nominalCurrency": "nominalCurrency"

              },

              "share": {

                "totalFloat": {

                  "nano": 6,

                  "units": "units"

                },

                "dividendRate": {

                  "nano": 6,

                  "units": "units"

                },

                "registryDate": "2000-01-23T04:56:07.000Z",

                "primaryIndex": "primaryIndex",

                "preferredShareType": "preferredShareType",

                "issueSizePlan": {

                  "nano": 6,

                  "units": "units"

                },

                "issueKind": "issueKind",

                "placementDate": "2000-01-23T04:56:07.000Z",

                "nominal": {

                  "nano": 6,

                  "units": "units"

                },

                "issueSize": {

                  "nano": 6,

                  "units": "units"

                },

                "nominalCurrency": "nominalCurrency",

                "divYieldFlag": true,

                "represIsin": "represIsin",

                "ipoDate": "2000-01-23T04:56:07.000Z"

              },

              "type": "type",

              "bond": {

                "indexedNominalFlag": true,

                "couponQuantityPerYear": 0,

                "currentNominal": {

                  "nano": 6,

                  "units": "units"

                },

                "taxFreeFlag": true,

                "returnCondition": "returnCondition",

                "collateralFlag": true,

                "stateRegDate": "2000-01-23T04:56:07.000Z",

                "issueSizePlan": {

                  "nano": 6,

                  "units": "units"

                },

                "borrowName": "borrowName",

                "issueKind": "issueKind",

                "placementDate": "2000-01-23T04:56:07.000Z",

                "nominal": {

                  "nano": 6,

                  "units": "units"

                },

                "amortizationFlag": true,

                "perpetualFlag": true,

                "maturityDate": "2000-01-23T04:56:07.000Z",

                "issueSize": {

                  "nano": 6,

                  "units": "units"

                },

                "interestKind": "interestKind",

                "subordinatedFlag": true,

                "nominalCurrency": "nominalCurrency",

                "floatingCouponFlag": true,

                "placementPrice": {

                  "nano": 6,

                  "units": "units"

                }

              },

              "sp": {

                "issueSizePlan": {

                  "nano": 6,

                  "units": "units"

                },

                "borrowName": "borrowName",

                "issueKind": "issueKind",

                "placementDate": "2000-01-23T04:56:07.000Z",

                "nominal": {

                  "nano": 6,

                  "units": "units"

                },

                "maturityDate": "2000-01-23T04:56:07.000Z",

                "logicPortfolio": "logicPortfolio",

                "safetyBarrier": {

                  "nano": 6,

                  "units": "units"

                },

                "basicAsset": "basicAsset",

                "issueSize": {

                  "nano": 6,

                  "units": "units"

                },

                "nominalCurrency": "nominalCurrency"

              },

              "isin": "isin"

            },

            "instruments": [

              {

                "uid": "uid",

                "classCode": "classCode",

                "instrumentType": "instrumentType",

                "ticker": "ticker",

                "figi": "figi",

                "links": [

                  {

                    "instrumentUid": "instrumentUid",

                    "type": "type"

                  },

                  {

                    "instrumentUid": "instrumentUid",

                    "type": "type"

                  }

                ]

              },

              {

                "uid": "uid",

                "classCode": "classCode",

                "instrumentType": "instrumentType",

                "ticker": "ticker",

                "figi": "figi",

                "links": [

                  {

                    "instrumentUid": "instrumentUid",

                    "type": "type"

                  },

                  {

                    "instrumentUid": "instrumentUid",

                    "type": "type"

                  }

                ]

              }

            ],

            "gosRegCode": "gosRegCode",

            "name": "name",

            "brCodeName": "brCodeName",

            "currency": {

              "baseCurrency": "baseCurrency"

            },

            "brCode": "brCode",

            "brand": {

              "uid": "uid",

              "name": "name",

              "description": "description",

              "company": "company",

              "sector": "sector",

              "countryOfRiskName": "countryOfRiskName",

              "info": "info",

              "countryOfRisk": "countryOfRisk"

            },

            "nameBrief": "nameBrief",

            "status": "status",

            "updatedAt": "2000-01-23T04:56:07.000Z"

          }

        },

        "properties": {

          "asset": {

            "$ref": "#/components/schemas/v1AssetFull"

          }

        },

        "type": "object"

      },

      "v1AssetSecurity": {

        "description": "?????? ??????.",

        "example": {

          "etf": {

            "releasedDate": "2000-01-23T04:56:07.000Z",

            "fixedCommission": {

              "nano": 6,

              "units": "units"

            },

            "numShare": {

              "nano": 6,

              "units": "units"

            },

            "watermarkFlag": true,

            "description": "description",

            "primaryIndexCompany": "primaryIndexCompany",

            "inavCode": "inavCode",

            "indexRecoveryPeriod": {

              "nano": 6,

              "units": "units"

            },

            "performanceFee": {

              "nano": 6,

              "units": "units"

            },

            "paymentType": "paymentType",

            "managementType": "managementType",

            "primaryIndexTrackingError": {

              "nano": 6,

              "units": "units"

            },

            "nominal": {

              "nano": 6,

              "units": "units"

            },

            "ucitsFlag": true,

            "expenseCommission": {

              "nano": 6,

              "units": "units"

            },

            "focusType": "focusType",

            "primaryIndexDescription": "primaryIndexDescription",

            "rebalancingPlan": "rebalancingPlan",

            "hurdleRate": {

              "nano": 6,

              "units": "units"

            },

            "primaryIndex": "primaryIndex",

            "leveragedFlag": true,

            "taxRate": "taxRate",

            "issueKind": "issueKind",

            "sellDiscount": {

              "nano": 6,

              "units": "units"

            },

            "rebalancingDates": [

              "2000-01-23T04:56:07.000Z",

              "2000-01-23T04:56:07.000Z"

            ],

            "rebalancingFreq": "rebalancingFreq",

            "rebalancingFlag": true,

            "nominalCurrency": "nominalCurrency",

            "divYieldFlag": true,

            "totalExpense": {

              "nano": 6,

              "units": "units"

            },

            "buyPremium": {

              "nano": 6,

              "units": "units"

            }

          },

          "clearingCertificate": {

            "nominal": {

              "nano": 6,

              "units": "units"

            },

            "nominalCurrency": "nominalCurrency"

          },

          "share": {

            "totalFloat": {

              "nano": 6,

              "units": "units"

            },

            "dividendRate": {

              "nano": 6,

              "units": "units"

            },

            "registryDate": "2000-01-23T04:56:07.000Z",

            "primaryIndex": "primaryIndex",

            "preferredShareType": "preferredShareType",

            "issueSizePlan": {

              "nano": 6,

              "units": "units"

            },

            "issueKind": "issueKind",

            "placementDate": "2000-01-23T04:56:07.000Z",

            "nominal": {

              "nano": 6,

              "units": "units"

            },

            "issueSize": {

              "nano": 6,

              "units": "units"

            },

            "nominalCurrency": "nominalCurrency",

            "divYieldFlag": true,

            "represIsin": "represIsin",

            "ipoDate": "2000-01-23T04:56:07.000Z"

          },

          "type": "type",

          "bond": {

            "indexedNominalFlag": true,

            "couponQuantityPerYear": 0,

            "currentNominal": {

              "nano": 6,

              "units": "units"

            },

            "taxFreeFlag": true,

            "returnCondition": "returnCondition",

            "collateralFlag": true,

            "stateRegDate": "2000-01-23T04:56:07.000Z",

            "issueSizePlan": {

              "nano": 6,

              "units": "units"

            },

            "borrowName": "borrowName",

            "issueKind": "issueKind",

            "placementDate": "2000-01-23T04:56:07.000Z",

            "nominal": {

              "nano": 6,

              "units": "units"

            },

            "amortizationFlag": true,

            "perpetualFlag": true,

            "maturityDate": "2000-01-23T04:56:07.000Z",

            "issueSize": {

              "nano": 6,

              "units": "units"

            },

            "interestKind": "interestKind",

            "subordinatedFlag": true,

            "nominalCurrency": "nominalCurrency",

            "floatingCouponFlag": true,

            "placementPrice": {

              "nano": 6,

              "units": "units"

            }

          },

          "sp": {

            "issueSizePlan": {

              "nano": 6,

              "units": "units"

            },

            "borrowName": "borrowName",

            "issueKind": "issueKind",

            "placementDate": "2000-01-23T04:56:07.000Z",

            "nominal": {

              "nano": 6,

              "units": "units"

            },

            "maturityDate": "2000-01-23T04:56:07.000Z",

            "logicPortfolio": "logicPortfolio",

            "safetyBarrier": {

              "nano": 6,

              "units": "units"

            },

            "basicAsset": "basicAsset",

            "issueSize": {

              "nano": 6,

              "units": "units"

            },

            "nominalCurrency": "nominalCurrency"

          },

          "isin": "isin"

        },

        "properties": {

          "isin": {

            "type": "string"

          },

          "type": {

            "type": "string"

          },

          "share": {

            "$ref": "#/components/schemas/v1AssetShare"

          },

          "bond": {

            "$ref": "#/components/schemas/v1AssetBond"

          },

          "sp": {

            "$ref": "#/components/schemas/v1AssetStructuredProduct"

          },

          "etf": {

            "$ref": "#/components/schemas/v1AssetEtf"

          },

          "clearingCertificate": {

            "$ref": "#/components/schemas/v1AssetClearingCertificate"

          }

        },

        "type": "object"

      },

      "v1AssetShare": {

        "description": "?????.",

        "example": {

          "totalFloat": {

            "nano": 6,

            "units": "units"

          },

          "dividendRate": {

            "nano": 6,

            "units": "units"

          },

          "registryDate": "2000-01-23T04:56:07.000Z",

          "primaryIndex": "primaryIndex",

          "preferredShareType": "preferredShareType",

          "issueSizePlan": {

            "nano": 6,

            "units": "units"

          },

          "issueKind": "issueKind",

          "placementDate": "2000-01-23T04:56:07.000Z",

          "nominal": {

            "nano": 6,

            "units": "units"

          },

          "issueSize": {

            "nano": 6,

            "units": "units"

          },

          "nominalCurrency": "nominalCurrency",

          "divYieldFlag": true,

          "represIsin": "represIsin",

          "ipoDate": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "type": {

            "$ref": "#/components/schemas/v1ShareType"

          },

          "issueSize": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominalCurrency": {

            "type": "string"

          },

          "primaryIndex": {

            "type": "string"

          },

          "dividendRate": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "preferredShareType": {

            "type": "string"

          },

          "ipoDate": {

            "format": "date-time",

            "type": "string"

          },

          "registryDate": {

            "format": "date-time",

            "type": "string"

          },

          "divYieldFlag": {

            "type": "boolean"

          },

          "issueKind": {

            "type": "string"

          },

          "placementDate": {

            "format": "date-time",

            "type": "string"

          },

          "represIsin": {

            "type": "string"

          },

          "issueSizePlan": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "totalFloat": {

            "$ref": "#/components/schemas/v1Quotation"

          }

        },

        "type": "object"

      },

      "v1AssetStructuredProduct": {

        "description": "??????????? ????.",

        "example": {

          "issueSizePlan": {

            "nano": 6,

            "units": "units"

          },

          "borrowName": "borrowName",

          "issueKind": "issueKind",

          "placementDate": "2000-01-23T04:56:07.000Z",

          "nominal": {

            "nano": 6,

            "units": "units"

          },

          "maturityDate": "2000-01-23T04:56:07.000Z",

          "logicPortfolio": "logicPortfolio",

          "safetyBarrier": {

            "nano": 6,

            "units": "units"

          },

          "basicAsset": "basicAsset",

          "issueSize": {

            "nano": 6,

            "units": "units"

          },

          "nominalCurrency": "nominalCurrency"

        },

        "properties": {

          "borrowName": {

            "type": "string"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "nominalCurrency": {

            "type": "string"

          },

          "type": {

            "$ref": "#/components/schemas/v1StructuredProductType"

          },

          "logicPortfolio": {

            "type": "string"

          },

          "assetType": {

            "$ref": "#/components/schemas/v1AssetType"

          },

          "basicAsset": {

            "type": "string"

          },

          "safetyBarrier": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "maturityDate": {

            "format": "date-time",

            "type": "string"

          },

          "issueSizePlan": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "issueSize": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "placementDate": {

            "format": "date-time",

            "type": "string"

          },

          "issueKind": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1AssetType": {

        "default": "ASSET_TYPE_UNSPECIFIED",

        "description": "??? ??????.",

        "enum": [

          "ASSET_TYPE_UNSPECIFIED",

          "ASSET_TYPE_CURRENCY",

          "ASSET_TYPE_COMMODITY",

          "ASSET_TYPE_INDEX",

          "ASSET_TYPE_SECURITY"

        ],

        "type": "string"

      },

      "v1AssetsRequest": {

        "description": "?????? ?????? ???????.",

        "type": "object"

      },

      "v1AssetsResponse": {

        "description": "?????? ???????.",

        "example": {

          "assets": [

            {

              "uid": "uid",

              "instruments": [

                {

                  "uid": "uid",

                  "classCode": "classCode",

                  "instrumentType": "instrumentType",

                  "ticker": "ticker",

                  "figi": "figi",

                  "links": [

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    },

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    }

                  ]

                },

                {

                  "uid": "uid",

                  "classCode": "classCode",

                  "instrumentType": "instrumentType",

                  "ticker": "ticker",

                  "figi": "figi",

                  "links": [

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    },

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    }

                  ]

                }

              ],

              "name": "name"

            },

            {

              "uid": "uid",

              "instruments": [

                {

                  "uid": "uid",

                  "classCode": "classCode",

                  "instrumentType": "instrumentType",

                  "ticker": "ticker",

                  "figi": "figi",

                  "links": [

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    },

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    }

                  ]

                },

                {

                  "uid": "uid",

                  "classCode": "classCode",

                  "instrumentType": "instrumentType",

                  "ticker": "ticker",

                  "figi": "figi",

                  "links": [

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    },

                    {

                      "instrumentUid": "instrumentUid",

                      "type": "type"

                    }

                  ]

                }

              ],

              "name": "name"

            }

          ]

        },

        "properties": {

          "assets": {

            "items": {

              "$ref": "#/components/schemas/v1Asset"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1Bond": {

        "description": "?????? ???????? ?????????? ?? ?????????.",

        "example": {

          "figi": "figi",

          "dshortMin": {

            "nano": 6,

            "units": "units"

          },

          "countryOfRisk": "countryOfRisk",

          "lot": 0,

          "uid": "uid",

          "dlong": {

            "nano": 6,

            "units": "units"

          },

          "nominal": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "maturityDate": "2000-01-23T04:56:07.000Z",

          "sellAvailableFlag": true,

          "currency": "currency",

          "placementPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "aciValue": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "sector": "sector",

          "buyAvailableFlag": true,

          "classCode": "classCode",

          "ticker": "ticker",

          "couponQuantityPerYear": 1,

          "apiTradeAvailableFlag": true,

          "dlongMin": {

            "nano": 6,

            "units": "units"

          },

          "shortEnabledFlag": true,

          "kshort": {

            "nano": 6,

            "units": "units"

          },

          "stateRegDate": "2000-01-23T04:56:07.000Z",

          "issueSizePlan": "issueSizePlan",

          "minPriceIncrement": {

            "nano": 6,

            "units": "units"

          },

          "otcFlag": true,

          "klong": {

            "nano": 6,

            "units": "units"

          },

          "dshort": {

            "nano": 6,

            "units": "units"

          },

          "issueKind": "issueKind",

          "placementDate": "2000-01-23T04:56:07.000Z",

          "amortizationFlag": true,

          "perpetualFlag": true,

          "name": "name",

          "issueSize": "issueSize",

          "exchange": "exchange",

          "floatingCouponFlag": true,

          "countryOfRiskName": "countryOfRiskName",

          "isin": "isin"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "lot": {

            "format": "int32",

            "type": "integer"

          },

          "currency": {

            "type": "string"

          },

          "klong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "kshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlongMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshortMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "shortEnabledFlag": {

            "type": "boolean"

          },

          "name": {

            "type": "string"

          },

          "exchange": {

            "type": "string"

          },

          "couponQuantityPerYear": {

            "format": "int32",

            "type": "integer"

          },

          "maturityDate": {

            "format": "date-time",

            "type": "string"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "stateRegDate": {

            "format": "date-time",

            "type": "string"

          },

          "placementDate": {

            "format": "date-time",

            "type": "string"

          },

          "placementPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "aciValue": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "countryOfRisk": {

            "type": "string"

          },

          "countryOfRiskName": {

            "type": "string"

          },

          "sector": {

            "type": "string"

          },

          "issueKind": {

            "type": "string"

          },

          "issueSize": {

            "format": "int64",

            "type": "string"

          },

          "issueSizePlan": {

            "format": "int64",

            "type": "string"

          },

          "tradingStatus": {

            "$ref": "#/components/schemas/v1SecurityTradingStatus"

          },

          "otcFlag": {

            "type": "boolean"

          },

          "buyAvailableFlag": {

            "type": "boolean"

          },

          "sellAvailableFlag": {

            "type": "boolean"

          },

          "floatingCouponFlag": {

            "type": "boolean"

          },

          "perpetualFlag": {

            "type": "boolean"

          },

          "amortizationFlag": {

            "type": "boolean"

          },

          "minPriceIncrement": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "apiTradeAvailableFlag": {

            "type": "boolean"

          },

          "uid": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1BondResponse": {

        "description": "?????????? ?? ?????????.",

        "example": {

          "instrument": {

            "figi": "figi",

            "dshortMin": {

              "nano": 6,

              "units": "units"

            },

            "countryOfRisk": "countryOfRisk",

            "lot": 0,

            "uid": "uid",

            "dlong": {

              "nano": 6,

              "units": "units"

            },

            "nominal": {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            "maturityDate": "2000-01-23T04:56:07.000Z",

            "sellAvailableFlag": true,

            "currency": "currency",

            "placementPrice": {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            "aciValue": {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            "sector": "sector",

            "buyAvailableFlag": true,

            "classCode": "classCode",

            "ticker": "ticker",

            "couponQuantityPerYear": 1,

            "apiTradeAvailableFlag": true,

            "dlongMin": {

              "nano": 6,

              "units": "units"

            },

            "shortEnabledFlag": true,

            "kshort": {

              "nano": 6,

              "units": "units"

            },

            "stateRegDate": "2000-01-23T04:56:07.000Z",

            "issueSizePlan": "issueSizePlan",

            "minPriceIncrement": {

              "nano": 6,

              "units": "units"

            },

            "otcFlag": true,

            "klong": {

              "nano": 6,

              "units": "units"

            },

            "dshort": {

              "nano": 6,

              "units": "units"

            },

            "issueKind": "issueKind",

            "placementDate": "2000-01-23T04:56:07.000Z",

            "amortizationFlag": true,

            "perpetualFlag": true,

            "name": "name",

            "issueSize": "issueSize",

            "exchange": "exchange",

            "floatingCouponFlag": true,

            "countryOfRiskName": "countryOfRiskName",

            "isin": "isin"

          }

        },

        "properties": {

          "instrument": {

            "$ref": "#/components/schemas/v1Bond"

          }

        },

        "type": "object"

      },

      "v1BondsResponse": {

        "description": "?????? ?????????.",

        "example": {

          "instruments": [

            {

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "maturityDate": "2000-01-23T04:56:07.000Z",

              "sellAvailableFlag": true,

              "currency": "currency",

              "placementPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "aciValue": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "sector": "sector",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "couponQuantityPerYear": 1,

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "stateRegDate": "2000-01-23T04:56:07.000Z",

              "issueSizePlan": "issueSizePlan",

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "issueKind": "issueKind",

              "placementDate": "2000-01-23T04:56:07.000Z",

              "amortizationFlag": true,

              "perpetualFlag": true,

              "name": "name",

              "issueSize": "issueSize",

              "exchange": "exchange",

              "floatingCouponFlag": true,

              "countryOfRiskName": "countryOfRiskName",

              "isin": "isin"

            },

            {

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "maturityDate": "2000-01-23T04:56:07.000Z",

              "sellAvailableFlag": true,

              "currency": "currency",

              "placementPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "aciValue": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "sector": "sector",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "couponQuantityPerYear": 1,

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "stateRegDate": "2000-01-23T04:56:07.000Z",

              "issueSizePlan": "issueSizePlan",

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "issueKind": "issueKind",

              "placementDate": "2000-01-23T04:56:07.000Z",

              "amortizationFlag": true,

              "perpetualFlag": true,

              "name": "name",

              "issueSize": "issueSize",

              "exchange": "exchange",

              "floatingCouponFlag": true,

              "countryOfRiskName": "countryOfRiskName",

              "isin": "isin"

            }

          ]

        },

        "properties": {

          "instruments": {

            "items": {

              "$ref": "#/components/schemas/v1Bond"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1Brand": {

        "description": "?????.",

        "example": {

          "uid": "uid",

          "name": "name",

          "description": "description",

          "company": "company",

          "sector": "sector",

          "countryOfRiskName": "countryOfRiskName",

          "info": "info",

          "countryOfRisk": "countryOfRisk"

        },

        "properties": {

          "uid": {

            "type": "string"

          },

          "name": {

            "type": "string"

          },

          "description": {

            "type": "string"

          },

          "info": {

            "type": "string"

          },

          "company": {

            "type": "string"

          },

          "sector": {

            "type": "string"

          },

          "countryOfRisk": {

            "type": "string"

          },

          "countryOfRiskName": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1BrokerReport": {

        "example": {

          "exchangeClearingCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "separateAgreementDate": "separateAgreementDate",

          "orderId": "orderId",

          "figi": "figi",

          "executeSign": "executeSign",

          "brokerCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "repoRate": {

            "nano": 6,

            "units": "units"

          },

          "orderAmount": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "price": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "aciValue": {

            "nano": 6,

            "units": "units"

          },

          "secValueDate": "2000-01-23T04:56:07.000Z",

          "direction": "direction",

          "classCode": "classCode",

          "ticker": "ticker",

          "quantity": "quantity",

          "deliveryType": "deliveryType",

          "tradeDatetime": "2000-01-23T04:56:07.000Z",

          "exchangeCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "brokerStatus": "brokerStatus",

          "totalOrderAmount": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "separateAgreementNumber": "separateAgreementNumber",

          "clearValueDate": "2000-01-23T04:56:07.000Z",

          "name": "name",

          "exchange": "exchange",

          "separateAgreementType": "separateAgreementType",

          "tradeId": "tradeId",

          "party": "party"

        },

        "properties": {

          "tradeId": {

            "type": "string"

          },

          "orderId": {

            "type": "string"

          },

          "figi": {

            "type": "string"

          },

          "executeSign": {

            "type": "string"

          },

          "tradeDatetime": {

            "format": "date-time",

            "type": "string"

          },

          "exchange": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "direction": {

            "type": "string"

          },

          "name": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "price": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "orderAmount": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "aciValue": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "totalOrderAmount": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "brokerCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "exchangeCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "exchangeClearingCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "repoRate": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "party": {

            "type": "string"

          },

          "clearValueDate": {

            "format": "date-time",

            "type": "string"

          },

          "secValueDate": {

            "format": "date-time",

            "type": "string"

          },

          "brokerStatus": {

            "type": "string"

          },

          "separateAgreementType": {

            "type": "string"

          },

          "separateAgreementNumber": {

            "type": "string"

          },

          "separateAgreementDate": {

            "type": "string"

          },

          "deliveryType": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1BrokerReportRequest": {

        "properties": {

          "generateBrokerReportRequest": {

            "$ref": "#/components/schemas/v1GenerateBrokerReportRequest"

          },

          "getBrokerReportRequest": {

            "$ref": "#/components/schemas/v1GetBrokerReportRequest"

          }

        },

        "type": "object"

      },

      "v1BrokerReportResponse": {

        "example": {

          "generateBrokerReportResponse": {

            "taskId": "taskId"

          },

          "getBrokerReportResponse": {

            "brokerReport": [

              {

                "exchangeClearingCommission": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "separateAgreementDate": "separateAgreementDate",

                "orderId": "orderId",

                "figi": "figi",

                "executeSign": "executeSign",

                "brokerCommission": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "repoRate": {

                  "nano": 6,

                  "units": "units"

                },

                "orderAmount": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "price": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "aciValue": {

                  "nano": 6,

                  "units": "units"

                },

                "secValueDate": "2000-01-23T04:56:07.000Z",

                "direction": "direction",

                "classCode": "classCode",

                "ticker": "ticker",

                "quantity": "quantity",

                "deliveryType": "deliveryType",

                "tradeDatetime": "2000-01-23T04:56:07.000Z",

                "exchangeCommission": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "brokerStatus": "brokerStatus",

                "totalOrderAmount": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "separateAgreementNumber": "separateAgreementNumber",

                "clearValueDate": "2000-01-23T04:56:07.000Z",

                "name": "name",

                "exchange": "exchange",

                "separateAgreementType": "separateAgreementType",

                "tradeId": "tradeId",

                "party": "party"

              },

              {

                "exchangeClearingCommission": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "separateAgreementDate": "separateAgreementDate",

                "orderId": "orderId",

                "figi": "figi",

                "executeSign": "executeSign",

                "brokerCommission": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "repoRate": {

                  "nano": 6,

                  "units": "units"

                },

                "orderAmount": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "price": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "aciValue": {

                  "nano": 6,

                  "units": "units"

                },

                "secValueDate": "2000-01-23T04:56:07.000Z",

                "direction": "direction",

                "classCode": "classCode",

                "ticker": "ticker",

                "quantity": "quantity",

                "deliveryType": "deliveryType",

                "tradeDatetime": "2000-01-23T04:56:07.000Z",

                "exchangeCommission": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "brokerStatus": "brokerStatus",

                "totalOrderAmount": {

                  "nano": 5,

                  "currency": "currency",

                  "units": "units"

                },

                "separateAgreementNumber": "separateAgreementNumber",

                "clearValueDate": "2000-01-23T04:56:07.000Z",

                "name": "name",

                "exchange": "exchange",

                "separateAgreementType": "separateAgreementType",

                "tradeId": "tradeId",

                "party": "party"

              }

            ],

            "pagesCount": 6,

            "page": 1,

            "itemsCount": 0

          }

        },

        "properties": {

          "generateBrokerReportResponse": {

            "$ref": "#/components/schemas/v1GenerateBrokerReportResponse"

          },

          "getBrokerReportResponse": {

            "$ref": "#/components/schemas/v1GetBrokerReportResponse"

          }

        },

        "type": "object"

      },

      "v1CancelOrderRequest": {

        "description": "?????? ?????? ????????? ?????????.",

        "properties": {

          "accountId": {

            "type": "string"

          },

          "orderId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1CancelOrderResponse": {

        "description": "????????? ?????? ????????? ?????????.",

        "example": {

          "time": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "time": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1CancelStopOrderRequest": {

        "description": "?????? ?????? ???????????? ????-??????.",

        "properties": {

          "accountId": {

            "type": "string"

          },

          "stopOrderId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1CancelStopOrderResponse": {

        "description": "????????? ?????? ???????????? ????-??????.",

        "example": {

          "time": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "time": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1CandleInterval": {

        "default": "CANDLE_INTERVAL_UNSPECIFIED",

        "description": "???????? ??????.",

        "enum": [

          "CANDLE_INTERVAL_UNSPECIFIED",

          "CANDLE_INTERVAL_1_MIN",

          "CANDLE_INTERVAL_5_MIN",

          "CANDLE_INTERVAL_15_MIN",

          "CANDLE_INTERVAL_HOUR",

          "CANDLE_INTERVAL_DAY"

        ],

        "type": "string"

      },

      "v1CloseSandboxAccountRequest": {

        "description": "?????? ???????? ????? ? ?????????.",

        "properties": {

          "accountId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1CloseSandboxAccountResponse": {

        "description": "????????? ???????? ????? ? ?????????.",

        "type": "object"

      },

      "v1Coupon": {

        "description": "?????? ???????? ?????????? ? ?????? ?????????.",

        "example": {

          "fixDate": "2000-01-23T04:56:07.000Z",

          "couponPeriod": 0,

          "couponNumber": "couponNumber",

          "couponEndDate": "2000-01-23T04:56:07.000Z",

          "figi": "figi",

          "couponDate": "2000-01-23T04:56:07.000Z",

          "couponStartDate": "2000-01-23T04:56:07.000Z",

          "payOneBond": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          }

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "couponDate": {

            "format": "date-time",

            "type": "string"

          },

          "couponNumber": {

            "format": "int64",

            "type": "string"

          },

          "fixDate": {

            "format": "date-time",

            "type": "string"

          },

          "payOneBond": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "couponType": {

            "$ref": "#/components/schemas/v1CouponType"

          },

          "couponStartDate": {

            "format": "date-time",

            "type": "string"

          },

          "couponEndDate": {

            "format": "date-time",

            "type": "string"

          },

          "couponPeriod": {

            "format": "int32",

            "type": "integer"

          }

        },

        "type": "object"

      },

      "v1CouponType": {

        "default": "COUPON_TYPE_UNSPECIFIED",

        "description": "??? ???????.",

        "enum": [

          "COUPON_TYPE_UNSPECIFIED",

          "COUPON_TYPE_CONSTANT",

          "COUPON_TYPE_FLOATING",

          "COUPON_TYPE_DISCOUNT",

          "COUPON_TYPE_MORTGAGE",

          "COUPON_TYPE_FIX",

          "COUPON_TYPE_VARIABLE",

          "COUPON_TYPE_OTHER"

        ],

        "type": "string"

      },

      "v1CurrenciesResponse": {

        "description": "?????? ?? ???????.",

        "example": {

          "instruments": [

            {

              "isoCurrencyName": "isoCurrencyName",

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "sellAvailableFlag": true,

              "currency": "currency",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "name": "name",

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName",

              "isin": "isin"

            },

            {

              "isoCurrencyName": "isoCurrencyName",

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "sellAvailableFlag": true,

              "currency": "currency",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "name": "name",

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName",

              "isin": "isin"

            }

          ]

        },

        "properties": {

          "instruments": {

            "items": {

              "$ref": "#/components/schemas/v1Currency"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1Currency": {

        "description": "?????? ???????? ?????????? ? ??????.",

        "example": {

          "isoCurrencyName": "isoCurrencyName",

          "figi": "figi",

          "dshortMin": {

            "nano": 6,

            "units": "units"

          },

          "countryOfRisk": "countryOfRisk",

          "lot": 0,

          "uid": "uid",

          "dlong": {

            "nano": 6,

            "units": "units"

          },

          "nominal": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "sellAvailableFlag": true,

          "currency": "currency",

          "buyAvailableFlag": true,

          "classCode": "classCode",

          "ticker": "ticker",

          "apiTradeAvailableFlag": true,

          "dlongMin": {

            "nano": 6,

            "units": "units"

          },

          "shortEnabledFlag": true,

          "kshort": {

            "nano": 6,

            "units": "units"

          },

          "minPriceIncrement": {

            "nano": 6,

            "units": "units"

          },

          "otcFlag": true,

          "klong": {

            "nano": 6,

            "units": "units"

          },

          "dshort": {

            "nano": 6,

            "units": "units"

          },

          "name": "name",

          "exchange": "exchange",

          "countryOfRiskName": "countryOfRiskName",

          "isin": "isin"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "lot": {

            "format": "int32",

            "type": "integer"

          },

          "currency": {

            "type": "string"

          },

          "klong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "kshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlongMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshortMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "shortEnabledFlag": {

            "type": "boolean"

          },

          "name": {

            "type": "string"

          },

          "exchange": {

            "type": "string"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "countryOfRisk": {

            "type": "string"

          },

          "countryOfRiskName": {

            "type": "string"

          },

          "tradingStatus": {

            "$ref": "#/components/schemas/v1SecurityTradingStatus"

          },

          "otcFlag": {

            "type": "boolean"

          },

          "buyAvailableFlag": {

            "type": "boolean"

          },

          "sellAvailableFlag": {

            "type": "boolean"

          },

          "isoCurrencyName": {

            "type": "string"

          },

          "minPriceIncrement": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "apiTradeAvailableFlag": {

            "type": "boolean"

          },

          "uid": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1CurrencyResponse": {

        "description": "?????? ?? ??????.",

        "example": {

          "instrument": {

            "isoCurrencyName": "isoCurrencyName",

            "figi": "figi",

            "dshortMin": {

              "nano": 6,

              "units": "units"

            },

            "countryOfRisk": "countryOfRisk",

            "lot": 0,

            "uid": "uid",

            "dlong": {

              "nano": 6,

              "units": "units"

            },

            "nominal": {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            "sellAvailableFlag": true,

            "currency": "currency",

            "buyAvailableFlag": true,

            "classCode": "classCode",

            "ticker": "ticker",

            "apiTradeAvailableFlag": true,

            "dlongMin": {

              "nano": 6,

              "units": "units"

            },

            "shortEnabledFlag": true,

            "kshort": {

              "nano": 6,

              "units": "units"

            },

            "minPriceIncrement": {

              "nano": 6,

              "units": "units"

            },

            "otcFlag": true,

            "klong": {

              "nano": 6,

              "units": "units"

            },

            "dshort": {

              "nano": 6,

              "units": "units"

            },

            "name": "name",

            "exchange": "exchange",

            "countryOfRiskName": "countryOfRiskName",

            "isin": "isin"

          }

        },

        "properties": {

          "instrument": {

            "$ref": "#/components/schemas/v1Currency"

          }

        },

        "type": "object"

      },

      "v1Dividend": {

        "description": "?????????? ? ???????.",

        "example": {

          "declaredDate": "2000-01-23T04:56:07.000Z",

          "createdAt": "2000-01-23T04:56:07.000Z",

          "recordDate": "2000-01-23T04:56:07.000Z",

          "yieldValue": {

            "nano": 6,

            "units": "units"

          },

          "closePrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "paymentDate": "2000-01-23T04:56:07.000Z",

          "regularity": "regularity",

          "dividendNet": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "lastBuyDate": "2000-01-23T04:56:07.000Z",

          "dividendType": "dividendType"

        },

        "properties": {

          "dividendNet": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "paymentDate": {

            "format": "date-time",

            "type": "string"

          },

          "declaredDate": {

            "format": "date-time",

            "type": "string"

          },

          "lastBuyDate": {

            "format": "date-time",

            "type": "string"

          },

          "dividendType": {

            "type": "string"

          },

          "recordDate": {

            "format": "date-time",

            "type": "string"

          },

          "regularity": {

            "type": "string"

          },

          "closePrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "yieldValue": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "createdAt": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1DividendsForeignIssuerReport": {

        "description": "????? \"??????? ? ??????? ?? ????????? ??\".",

        "example": {

          "issuerCountry": "issuerCountry",

          "externalCommission": {

            "nano": 6,

            "units": "units"

          },

          "securityName": "securityName",

          "dividendGross": {

            "nano": 6,

            "units": "units"

          },

          "quantity": "quantity",

          "dividendAmount": {

            "nano": 6,

            "units": "units"

          },

          "recordDate": "2000-01-23T04:56:07.000Z",

          "dividend": {

            "nano": 6,

            "units": "units"

          },

          "tax": {

            "nano": 6,

            "units": "units"

          },

          "currency": "currency",

          "paymentDate": "2000-01-23T04:56:07.000Z",

          "isin": "isin"

        },

        "properties": {

          "recordDate": {

            "format": "date-time",

            "type": "string"

          },

          "paymentDate": {

            "format": "date-time",

            "type": "string"

          },

          "securityName": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "issuerCountry": {

            "type": "string"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "dividend": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "externalCommission": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dividendGross": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "tax": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dividendAmount": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "currency": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1Etf": {

        "description": "?????? ???????? ?????????? ?? ?????????????? ?????.",

        "example": {

          "releasedDate": "2000-01-23T04:56:07.000Z",

          "fixedCommission": {

            "nano": 6,

            "units": "units"

          },

          "figi": "figi",

          "dshortMin": {

            "nano": 6,

            "units": "units"

          },

          "countryOfRisk": "countryOfRisk",

          "lot": 0,

          "uid": "uid",

          "dlong": {

            "nano": 6,

            "units": "units"

          },

          "sellAvailableFlag": true,

          "currency": "currency",

          "sector": "sector",

          "buyAvailableFlag": true,

          "classCode": "classCode",

          "focusType": "focusType",

          "ticker": "ticker",

          "apiTradeAvailableFlag": true,

          "dlongMin": {

            "nano": 6,

            "units": "units"

          },

          "shortEnabledFlag": true,

          "kshort": {

            "nano": 6,

            "units": "units"

          },

          "minPriceIncrement": {

            "nano": 6,

            "units": "units"

          },

          "otcFlag": true,

          "klong": {

            "nano": 6,

            "units": "units"

          },

          "dshort": {

            "nano": 6,

            "units": "units"

          },

          "rebalancingFreq": "rebalancingFreq",

          "name": "name",

          "numShares": {

            "nano": 6,

            "units": "units"

          },

          "exchange": "exchange",

          "countryOfRiskName": "countryOfRiskName",

          "isin": "isin"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "lot": {

            "format": "int32",

            "type": "integer"

          },

          "currency": {

            "type": "string"

          },

          "klong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "kshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlongMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshortMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "shortEnabledFlag": {

            "type": "boolean"

          },

          "name": {

            "type": "string"

          },

          "exchange": {

            "type": "string"

          },

          "fixedCommission": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "focusType": {

            "type": "string"

          },

          "releasedDate": {

            "format": "date-time",

            "type": "string"

          },

          "numShares": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "countryOfRisk": {

            "type": "string"

          },

          "countryOfRiskName": {

            "type": "string"

          },

          "sector": {

            "type": "string"

          },

          "rebalancingFreq": {

            "type": "string"

          },

          "tradingStatus": {

            "$ref": "#/components/schemas/v1SecurityTradingStatus"

          },

          "otcFlag": {

            "type": "boolean"

          },

          "buyAvailableFlag": {

            "type": "boolean"

          },

          "sellAvailableFlag": {

            "type": "boolean"

          },

          "minPriceIncrement": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "apiTradeAvailableFlag": {

            "type": "boolean"

          },

          "uid": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1EtfResponse": {

        "description": "?????? ?? ?????.",

        "example": {

          "instrument": {

            "releasedDate": "2000-01-23T04:56:07.000Z",

            "fixedCommission": {

              "nano": 6,

              "units": "units"

            },

            "figi": "figi",

            "dshortMin": {

              "nano": 6,

              "units": "units"

            },

            "countryOfRisk": "countryOfRisk",

            "lot": 0,

            "uid": "uid",

            "dlong": {

              "nano": 6,

              "units": "units"

            },

            "sellAvailableFlag": true,

            "currency": "currency",

            "sector": "sector",

            "buyAvailableFlag": true,

            "classCode": "classCode",

            "focusType": "focusType",

            "ticker": "ticker",

            "apiTradeAvailableFlag": true,

            "dlongMin": {

              "nano": 6,

              "units": "units"

            },

            "shortEnabledFlag": true,

            "kshort": {

              "nano": 6,

              "units": "units"

            },

            "minPriceIncrement": {

              "nano": 6,

              "units": "units"

            },

            "otcFlag": true,

            "klong": {

              "nano": 6,

              "units": "units"

            },

            "dshort": {

              "nano": 6,

              "units": "units"

            },

            "rebalancingFreq": "rebalancingFreq",

            "name": "name",

            "numShares": {

              "nano": 6,

              "units": "units"

            },

            "exchange": "exchange",

            "countryOfRiskName": "countryOfRiskName",

            "isin": "isin"

          }

        },

        "properties": {

          "instrument": {

            "$ref": "#/components/schemas/v1Etf"

          }

        },

        "type": "object"

      },

      "v1EtfsResponse": {

        "description": "?????? ?? ??????.",

        "example": {

          "instruments": [

            {

              "releasedDate": "2000-01-23T04:56:07.000Z",

              "fixedCommission": {

                "nano": 6,

                "units": "units"

              },

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "sellAvailableFlag": true,

              "currency": "currency",

              "sector": "sector",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "focusType": "focusType",

              "ticker": "ticker",

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "rebalancingFreq": "rebalancingFreq",

              "name": "name",

              "numShares": {

                "nano": 6,

                "units": "units"

              },

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName",

              "isin": "isin"

            },

            {

              "releasedDate": "2000-01-23T04:56:07.000Z",

              "fixedCommission": {

                "nano": 6,

                "units": "units"

              },

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "sellAvailableFlag": true,

              "currency": "currency",

              "sector": "sector",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "focusType": "focusType",

              "ticker": "ticker",

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "rebalancingFreq": "rebalancingFreq",

              "name": "name",

              "numShares": {

                "nano": 6,

                "units": "units"

              },

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName",

              "isin": "isin"

            }

          ]

        },

        "properties": {

          "instruments": {

            "items": {

              "$ref": "#/components/schemas/v1Etf"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1Future": {

        "description": "?????? ???????? ?????????? ? ????????.",

        "example": {

          "figi": "figi",

          "dshortMin": {

            "nano": 6,

            "units": "units"

          },

          "countryOfRisk": "countryOfRisk",

          "lot": 0,

          "uid": "uid",

          "futuresType": "futuresType",

          "dlong": {

            "nano": 6,

            "units": "units"

          },

          "lastTradeDate": "2000-01-23T04:56:07.000Z",

          "sellAvailableFlag": true,

          "currency": "currency",

          "sector": "sector",

          "expirationDate": "2000-01-23T04:56:07.000Z",

          "buyAvailableFlag": true,

          "classCode": "classCode",

          "ticker": "ticker",

          "firstTradeDate": "2000-01-23T04:56:07.000Z",

          "basicAssetSize": {

            "nano": 6,

            "units": "units"

          },

          "apiTradeAvailableFlag": true,

          "dlongMin": {

            "nano": 6,

            "units": "units"

          },

          "shortEnabledFlag": true,

          "kshort": {

            "nano": 6,

            "units": "units"

          },

          "assetType": "assetType",

          "minPriceIncrement": {

            "nano": 6,

            "units": "units"

          },

          "otcFlag": true,

          "klong": {

            "nano": 6,

            "units": "units"

          },

          "dshort": {

            "nano": 6,

            "units": "units"

          },

          "name": "name",

          "basicAsset": "basicAsset",

          "exchange": "exchange",

          "countryOfRiskName": "countryOfRiskName"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "lot": {

            "format": "int32",

            "type": "integer"

          },

          "currency": {

            "type": "string"

          },

          "klong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "kshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlongMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshortMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "shortEnabledFlag": {

            "type": "boolean"

          },

          "name": {

            "type": "string"

          },

          "exchange": {

            "type": "string"

          },

          "firstTradeDate": {

            "format": "date-time",

            "type": "string"

          },

          "lastTradeDate": {

            "format": "date-time",

            "type": "string"

          },

          "futuresType": {

            "type": "string"

          },

          "assetType": {

            "type": "string"

          },

          "basicAsset": {

            "type": "string"

          },

          "basicAssetSize": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "countryOfRisk": {

            "type": "string"

          },

          "countryOfRiskName": {

            "type": "string"

          },

          "sector": {

            "type": "string"

          },

          "expirationDate": {

            "format": "date-time",

            "type": "string"

          },

          "tradingStatus": {

            "$ref": "#/components/schemas/v1SecurityTradingStatus"

          },

          "otcFlag": {

            "type": "boolean"

          },

          "buyAvailableFlag": {

            "type": "boolean"

          },

          "sellAvailableFlag": {

            "type": "boolean"

          },

          "minPriceIncrement": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "apiTradeAvailableFlag": {

            "type": "boolean"

          },

          "uid": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1FutureResponse": {

        "description": "?????? ?? ????????.",

        "example": {

          "instrument": {

            "figi": "figi",

            "dshortMin": {

              "nano": 6,

              "units": "units"

            },

            "countryOfRisk": "countryOfRisk",

            "lot": 0,

            "uid": "uid",

            "futuresType": "futuresType",

            "dlong": {

              "nano": 6,

              "units": "units"

            },

            "lastTradeDate": "2000-01-23T04:56:07.000Z",

            "sellAvailableFlag": true,

            "currency": "currency",

            "sector": "sector",

            "expirationDate": "2000-01-23T04:56:07.000Z",

            "buyAvailableFlag": true,

            "classCode": "classCode",

            "ticker": "ticker",

            "firstTradeDate": "2000-01-23T04:56:07.000Z",

            "basicAssetSize": {

              "nano": 6,

              "units": "units"

            },

            "apiTradeAvailableFlag": true,

            "dlongMin": {

              "nano": 6,

              "units": "units"

            },

            "shortEnabledFlag": true,

            "kshort": {

              "nano": 6,

              "units": "units"

            },

            "assetType": "assetType",

            "minPriceIncrement": {

              "nano": 6,

              "units": "units"

            },

            "otcFlag": true,

            "klong": {

              "nano": 6,

              "units": "units"

            },

            "dshort": {

              "nano": 6,

              "units": "units"

            },

            "name": "name",

            "basicAsset": "basicAsset",

            "exchange": "exchange",

            "countryOfRiskName": "countryOfRiskName"

          }

        },

        "properties": {

          "instrument": {

            "$ref": "#/components/schemas/v1Future"

          }

        },

        "type": "object"

      },

      "v1FuturesResponse": {

        "description": "?????? ?? ?????????.",

        "example": {

          "instruments": [

            {

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "futuresType": "futuresType",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "lastTradeDate": "2000-01-23T04:56:07.000Z",

              "sellAvailableFlag": true,

              "currency": "currency",

              "sector": "sector",

              "expirationDate": "2000-01-23T04:56:07.000Z",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "firstTradeDate": "2000-01-23T04:56:07.000Z",

              "basicAssetSize": {

                "nano": 6,

                "units": "units"

              },

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "assetType": "assetType",

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "name": "name",

              "basicAsset": "basicAsset",

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName"

            },

            {

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "futuresType": "futuresType",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "lastTradeDate": "2000-01-23T04:56:07.000Z",

              "sellAvailableFlag": true,

              "currency": "currency",

              "sector": "sector",

              "expirationDate": "2000-01-23T04:56:07.000Z",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "firstTradeDate": "2000-01-23T04:56:07.000Z",

              "basicAssetSize": {

                "nano": 6,

                "units": "units"

              },

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "assetType": "assetType",

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "name": "name",

              "basicAsset": "basicAsset",

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName"

            }

          ]

        },

        "properties": {

          "instruments": {

            "items": {

              "$ref": "#/components/schemas/v1Future"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GenerateBrokerReportRequest": {

        "properties": {

          "accountId": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GenerateBrokerReportResponse": {

        "example": {

          "taskId": "taskId"

        },

        "properties": {

          "taskId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GenerateDividendsForeignIssuerReportRequest": {

        "description": "?????? ??????? ???????????? ?????? \"??????? ? ??????? ?? ????????? ??\".",

        "properties": {

          "accountId": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GenerateDividendsForeignIssuerReportResponse": {

        "description": "?????? ?????????? ?????? ??????? ???????????? ?????? \"??????? ? ??????? ?? ????????? ??\".",

        "example": {

          "taskId": "taskId"

        },

        "properties": {

          "taskId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetAccountsRequest": {

        "description": "?????? ????????? ?????? ????????????.",

        "type": "object"

      },

      "v1GetAccountsResponse": {

        "description": "?????? ?????? ????????????.",

        "example": {

          "accounts": [

            {

              "openedDate": "2000-01-23T04:56:07.000Z",

              "closedDate": "2000-01-23T04:56:07.000Z",

              "name": "name",

              "id": "id"

            },

            {

              "openedDate": "2000-01-23T04:56:07.000Z",

              "closedDate": "2000-01-23T04:56:07.000Z",

              "name": "name",

              "id": "id"

            }

          ]

        },

        "properties": {

          "accounts": {

            "description": "?????? ?????? ???????.",

            "items": {

              "$ref": "#/components/schemas/v1Account"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetAccruedInterestsRequest": {

        "properties": {

          "figi": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          }

        },

        "title": "?????? ??? ?? ?????????",

        "type": "object"

      },

      "v1GetAccruedInterestsResponse": {

        "example": {

          "accruedInterests": [

            {

              "date": "2000-01-23T04:56:07.000Z",

              "valuePercent": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 6,

                "units": "units"

              },

              "value": {

                "nano": 6,

                "units": "units"

              }

            },

            {

              "date": "2000-01-23T04:56:07.000Z",

              "valuePercent": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 6,

                "units": "units"

              },

              "value": {

                "nano": 6,

                "units": "units"

              }

            }

          ]

        },

        "properties": {

          "accruedInterests": {

            "items": {

              "$ref": "#/components/schemas/v1AccruedInterest"

            },

            "type": "array"

          }

        },

        "title": "??? ?????????",

        "type": "object"

      },

      "v1GetBondCouponsRequest": {

        "description": "?????? ??????? ?? ?????????.",

        "properties": {

          "figi": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetBondCouponsResponse": {

        "description": "?????? ?? ?????????.",

        "example": {

          "events": [

            {

              "fixDate": "2000-01-23T04:56:07.000Z",

              "couponPeriod": 0,

              "couponNumber": "couponNumber",

              "couponEndDate": "2000-01-23T04:56:07.000Z",

              "figi": "figi",

              "couponDate": "2000-01-23T04:56:07.000Z",

              "couponStartDate": "2000-01-23T04:56:07.000Z",

              "payOneBond": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              }

            },

            {

              "fixDate": "2000-01-23T04:56:07.000Z",

              "couponPeriod": 0,

              "couponNumber": "couponNumber",

              "couponEndDate": "2000-01-23T04:56:07.000Z",

              "figi": "figi",

              "couponDate": "2000-01-23T04:56:07.000Z",

              "couponStartDate": "2000-01-23T04:56:07.000Z",

              "payOneBond": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              }

            }

          ]

        },

        "properties": {

          "events": {

            "items": {

              "$ref": "#/components/schemas/v1Coupon"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetBrokerReportRequest": {

        "properties": {

          "taskId": {

            "type": "string"

          },

          "page": {

            "format": "int32",

            "type": "integer"

          }

        },

        "type": "object"

      },

      "v1GetBrokerReportResponse": {

        "example": {

          "brokerReport": [

            {

              "exchangeClearingCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "separateAgreementDate": "separateAgreementDate",

              "orderId": "orderId",

              "figi": "figi",

              "executeSign": "executeSign",

              "brokerCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "repoRate": {

                "nano": 6,

                "units": "units"

              },

              "orderAmount": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "aciValue": {

                "nano": 6,

                "units": "units"

              },

              "secValueDate": "2000-01-23T04:56:07.000Z",

              "direction": "direction",

              "classCode": "classCode",

              "ticker": "ticker",

              "quantity": "quantity",

              "deliveryType": "deliveryType",

              "tradeDatetime": "2000-01-23T04:56:07.000Z",

              "exchangeCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "brokerStatus": "brokerStatus",

              "totalOrderAmount": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "separateAgreementNumber": "separateAgreementNumber",

              "clearValueDate": "2000-01-23T04:56:07.000Z",

              "name": "name",

              "exchange": "exchange",

              "separateAgreementType": "separateAgreementType",

              "tradeId": "tradeId",

              "party": "party"

            },

            {

              "exchangeClearingCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "separateAgreementDate": "separateAgreementDate",

              "orderId": "orderId",

              "figi": "figi",

              "executeSign": "executeSign",

              "brokerCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "repoRate": {

                "nano": 6,

                "units": "units"

              },

              "orderAmount": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "aciValue": {

                "nano": 6,

                "units": "units"

              },

              "secValueDate": "2000-01-23T04:56:07.000Z",

              "direction": "direction",

              "classCode": "classCode",

              "ticker": "ticker",

              "quantity": "quantity",

              "deliveryType": "deliveryType",

              "tradeDatetime": "2000-01-23T04:56:07.000Z",

              "exchangeCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "brokerStatus": "brokerStatus",

              "totalOrderAmount": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "separateAgreementNumber": "separateAgreementNumber",

              "clearValueDate": "2000-01-23T04:56:07.000Z",

              "name": "name",

              "exchange": "exchange",

              "separateAgreementType": "separateAgreementType",

              "tradeId": "tradeId",

              "party": "party"

            }

          ],

          "pagesCount": 6,

          "page": 1,

          "itemsCount": 0

        },

        "properties": {

          "brokerReport": {

            "items": {

              "$ref": "#/components/schemas/v1BrokerReport"

            },

            "type": "array"

          },

          "itemsCount": {

            "format": "int32",

            "type": "integer"

          },

          "pagesCount": {

            "format": "int32",

            "type": "integer"

          },

          "page": {

            "format": "int32",

            "type": "integer"

          }

        },

        "type": "object"

      },

      "v1GetCandlesRequest": {

        "description": "?????? ???????????? ??????.",

        "properties": {

          "figi": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          },

          "interval": {

            "$ref": "#/components/schemas/v1CandleInterval"

          }

        },

        "type": "object"

      },

      "v1GetCandlesResponse": {

        "description": "?????? ??????.",

        "example": {

          "candles": [

            {

              "volume": "volume",

              "high": {

                "nano": 6,

                "units": "units"

              },

              "low": {

                "nano": 6,

                "units": "units"

              },

              "time": "2000-01-23T04:56:07.000Z",

              "close": {

                "nano": 6,

                "units": "units"

              },

              "open": {

                "nano": 6,

                "units": "units"

              },

              "isComplete": true

            },

            {

              "volume": "volume",

              "high": {

                "nano": 6,

                "units": "units"

              },

              "low": {

                "nano": 6,

                "units": "units"

              },

              "time": "2000-01-23T04:56:07.000Z",

              "close": {

                "nano": 6,

                "units": "units"

              },

              "open": {

                "nano": 6,

                "units": "units"

              },

              "isComplete": true

            }

          ]

        },

        "properties": {

          "candles": {

            "items": {

              "$ref": "#/components/schemas/v1HistoricCandle"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetDividendsForeignIssuerReportRequest": {

        "description": "?????? ??????? ??????????????? ?????? \"??????? ? ??????? ?? ????????? ??\".",

        "properties": {

          "taskId": {

            "type": "string"

          },

          "page": {

            "format": "int32",

            "type": "integer"

          }

        },

        "type": "object"

      },

      "v1GetDividendsForeignIssuerReportResponse": {

        "example": {

          "pagesCount": 6,

          "page": 1,

          "dividendsForeignIssuerReport": [

            {

              "issuerCountry": "issuerCountry",

              "externalCommission": {

                "nano": 6,

                "units": "units"

              },

              "securityName": "securityName",

              "dividendGross": {

                "nano": 6,

                "units": "units"

              },

              "quantity": "quantity",

              "dividendAmount": {

                "nano": 6,

                "units": "units"

              },

              "recordDate": "2000-01-23T04:56:07.000Z",

              "dividend": {

                "nano": 6,

                "units": "units"

              },

              "tax": {

                "nano": 6,

                "units": "units"

              },

              "currency": "currency",

              "paymentDate": "2000-01-23T04:56:07.000Z",

              "isin": "isin"

            },

            {

              "issuerCountry": "issuerCountry",

              "externalCommission": {

                "nano": 6,

                "units": "units"

              },

              "securityName": "securityName",

              "dividendGross": {

                "nano": 6,

                "units": "units"

              },

              "quantity": "quantity",

              "dividendAmount": {

                "nano": 6,

                "units": "units"

              },

              "recordDate": "2000-01-23T04:56:07.000Z",

              "dividend": {

                "nano": 6,

                "units": "units"

              },

              "tax": {

                "nano": 6,

                "units": "units"

              },

              "currency": "currency",

              "paymentDate": "2000-01-23T04:56:07.000Z",

              "isin": "isin"

            }

          ],

          "itemsCount": 0

        },

        "properties": {

          "dividendsForeignIssuerReport": {

            "items": {

              "$ref": "#/components/schemas/v1DividendsForeignIssuerReport"

            },

            "type": "array"

          },

          "itemsCount": {

            "format": "int32",

            "type": "integer"

          },

          "pagesCount": {

            "format": "int32",

            "type": "integer"

          },

          "page": {

            "format": "int32",

            "type": "integer"

          }

        },

        "type": "object"

      },

      "v1GetDividendsForeignIssuerRequest": {

        "properties": {

          "generateDivForeignIssuerReport": {

            "$ref": "#/components/schemas/v1GenerateDividendsForeignIssuerReportRequest"

          },

          "getDivForeignIssuerReport": {

            "$ref": "#/components/schemas/v1GetDividendsForeignIssuerReportRequest"

          }

        },

        "type": "object"

      },

      "v1GetDividendsForeignIssuerResponse": {

        "example": {

          "generateDivForeignIssuerReportResponse": {

            "taskId": "taskId"

          },

          "divForeignIssuerReport": {

            "pagesCount": 6,

            "page": 1,

            "dividendsForeignIssuerReport": [

              {

                "issuerCountry": "issuerCountry",

                "externalCommission": {

                  "nano": 6,

                  "units": "units"

                },

                "securityName": "securityName",

                "dividendGross": {

                  "nano": 6,

                  "units": "units"

                },

                "quantity": "quantity",

                "dividendAmount": {

                  "nano": 6,

                  "units": "units"

                },

                "recordDate": "2000-01-23T04:56:07.000Z",

                "dividend": {

                  "nano": 6,

                  "units": "units"

                },

                "tax": {

                  "nano": 6,

                  "units": "units"

                },

                "currency": "currency",

                "paymentDate": "2000-01-23T04:56:07.000Z",

                "isin": "isin"

              },

              {

                "issuerCountry": "issuerCountry",

                "externalCommission": {

                  "nano": 6,

                  "units": "units"

                },

                "securityName": "securityName",

                "dividendGross": {

                  "nano": 6,

                  "units": "units"

                },

                "quantity": "quantity",

                "dividendAmount": {

                  "nano": 6,

                  "units": "units"

                },

                "recordDate": "2000-01-23T04:56:07.000Z",

                "dividend": {

                  "nano": 6,

                  "units": "units"

                },

                "tax": {

                  "nano": 6,

                  "units": "units"

                },

                "currency": "currency",

                "paymentDate": "2000-01-23T04:56:07.000Z",

                "isin": "isin"

              }

            ],

            "itemsCount": 0

          }

        },

        "properties": {

          "generateDivForeignIssuerReportResponse": {

            "$ref": "#/components/schemas/v1GenerateDividendsForeignIssuerReportResponse"

          },

          "divForeignIssuerReport": {

            "$ref": "#/components/schemas/v1GetDividendsForeignIssuerReportResponse"

          }

        },

        "type": "object"

      },

      "v1GetDividendsRequest": {

        "description": "?????? ??????????.",

        "properties": {

          "figi": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetDividendsResponse": {

        "description": "?????????.",

        "example": {

          "dividends": [

            {

              "declaredDate": "2000-01-23T04:56:07.000Z",

              "createdAt": "2000-01-23T04:56:07.000Z",

              "recordDate": "2000-01-23T04:56:07.000Z",

              "yieldValue": {

                "nano": 6,

                "units": "units"

              },

              "closePrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "paymentDate": "2000-01-23T04:56:07.000Z",

              "regularity": "regularity",

              "dividendNet": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lastBuyDate": "2000-01-23T04:56:07.000Z",

              "dividendType": "dividendType"

            },

            {

              "declaredDate": "2000-01-23T04:56:07.000Z",

              "createdAt": "2000-01-23T04:56:07.000Z",

              "recordDate": "2000-01-23T04:56:07.000Z",

              "yieldValue": {

                "nano": 6,

                "units": "units"

              },

              "closePrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "paymentDate": "2000-01-23T04:56:07.000Z",

              "regularity": "regularity",

              "dividendNet": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lastBuyDate": "2000-01-23T04:56:07.000Z",

              "dividendType": "dividendType"

            }

          ]

        },

        "properties": {

          "dividends": {

            "items": {

              "$ref": "#/components/schemas/v1Dividend"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetFuturesMarginRequest": {

        "properties": {

          "figi": {

            "type": "string"

          }

        },

        "title": "?????? ?????????? ? ????????",

        "type": "object"

      },

      "v1GetFuturesMarginResponse": {

        "example": {

          "initialMarginOnBuy": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "initialMarginOnSell": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "minPriceIncrementAmount": {

            "nano": 6,

            "units": "units"

          },

          "minPriceIncrement": {

            "nano": 6,

            "units": "units"

          }

        },

        "properties": {

          "initialMarginOnBuy": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "initialMarginOnSell": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "minPriceIncrement": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "minPriceIncrementAmount": {

            "$ref": "#/components/schemas/v1Quotation"

          }

        },

        "title": "?????? ?? ????????",

        "type": "object"

      },

      "v1GetInfoRequest": {

        "description": "?????? ?????????? ? ????????????.",

        "type": "object"

      },

      "v1GetInfoResponse": {

        "description": "?????????? ? ????????????.",

        "example": {

          "qualifiedForWorkWith": [

            "qualifiedForWorkWith",

            "qualifiedForWorkWith"

          ],

          "qualStatus": true,

          "premStatus": true,

          "tariff": "tariff"

        },

        "properties": {

          "premStatus": {

            "type": "boolean"

          },

          "qualStatus": {

            "type": "boolean"

          },

          "qualifiedForWorkWith": {

            "items": {

              "type": "string"

            },

            "type": "array"

          },

          "tariff": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetLastPricesRequest": {

        "description": "?????? ????????? ????????? ???.",

        "properties": {

          "figi": {

            "items": {

              "type": "string"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetLastPricesResponse": {

        "description": "?????? ????????? ???.",

        "example": {

          "lastPrices": [

            {

              "price": {

                "nano": 6,

                "units": "units"

              },

              "figi": "figi",

              "time": "2000-01-23T04:56:07.000Z"

            },

            {

              "price": {

                "nano": 6,

                "units": "units"

              },

              "figi": "figi",

              "time": "2000-01-23T04:56:07.000Z"

            }

          ]

        },

        "properties": {

          "lastPrices": {

            "items": {

              "$ref": "#/components/schemas/v1LastPrice"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetLastTradesRequest": {

        "description": "?????? ????????? ???????????? ?????? ?? ???????????.",

        "properties": {

          "figi": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetLastTradesResponse": {

        "description": "????????? ???????????? ?????? ?? ???????????.",

        "example": {

          "trades": [

            {

              "quantity": "quantity",

              "price": {

                "nano": 6,

                "units": "units"

              },

              "figi": "figi",

              "time": "2000-01-23T04:56:07.000Z"

            },

            {

              "quantity": "quantity",

              "price": {

                "nano": 6,

                "units": "units"

              },

              "figi": "figi",

              "time": "2000-01-23T04:56:07.000Z"

            }

          ]

        },

        "properties": {

          "trades": {

            "items": {

              "$ref": "#/components/schemas/v1Trade"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetMarginAttributesRequest": {

        "properties": {

          "accountId": {

            "description": "????????????? ????? ????????????.",

            "type": "string"

          }

        },

        "title": "?????? ???????????? ??????????? ?? ?????",

        "type": "object"

      },

      "v1GetMarginAttributesResponse": {

        "description": "???????????? ?????????? ?? ?????.",

        "example": {

          "amountOfMissingFunds": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "liquidPortfolio": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "fundsSufficiencyLevel": {

            "nano": 6,

            "units": "units"

          },

          "startingMargin": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "minimalMargin": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          }

        },

        "properties": {

          "liquidPortfolio": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "startingMargin": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "minimalMargin": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "fundsSufficiencyLevel": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "amountOfMissingFunds": {

            "$ref": "#/components/schemas/v1MoneyValue"

          }

        },

        "type": "object"

      },

      "v1GetOrderBookRequest": {

        "description": "?????? ???????.",

        "properties": {

          "figi": {

            "type": "string"

          },

          "depth": {

            "format": "int32",

            "type": "integer"

          }

        },

        "type": "object"

      },

      "v1GetOrderBookResponse": {

        "description": "?????????? ? ???????.",

        "example": {

          "depth": 0,

          "asks": [

            {

              "quantity": "quantity",

              "price": {

                "nano": 6,

                "units": "units"

              }

            },

            {

              "quantity": "quantity",

              "price": {

                "nano": 6,

                "units": "units"

              }

            }

          ],

          "bids": [

            {

              "quantity": "quantity",

              "price": {

                "nano": 6,

                "units": "units"

              }

            },

            {

              "quantity": "quantity",

              "price": {

                "nano": 6,

                "units": "units"

              }

            }

          ],

          "limitUp": {

            "nano": 6,

            "units": "units"

          },

          "figi": "figi",

          "closePrice": {

            "nano": 6,

            "units": "units"

          },

          "limitDown": {

            "nano": 6,

            "units": "units"

          },

          "lastPrice": {

            "nano": 6,

            "units": "units"

          }

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "depth": {

            "format": "int32",

            "type": "integer"

          },

          "bids": {

            "items": {

              "$ref": "#/components/schemas/v1Order"

            },

            "type": "array"

          },

          "asks": {

            "items": {

              "$ref": "#/components/schemas/v1Order"

            },

            "type": "array"

          },

          "lastPrice": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "closePrice": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "limitUp": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "limitDown": {

            "$ref": "#/components/schemas/v1Quotation"

          }

        },

        "type": "object"

      },

      "v1GetOrderStateRequest": {

        "description": "?????? ????????? ??????? ????????? ?????????.",

        "properties": {

          "accountId": {

            "type": "string"

          },

          "orderId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetOrdersRequest": {

        "description": "?????? ????????? ?????? ???????? ???????? ?????????.",

        "properties": {

          "accountId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetOrdersResponse": {

        "description": "?????? ???????? ???????? ?????????.",

        "example": {

          "orders": [

            {

              "orderId": "orderId",

              "figi": "figi",

              "initialOrderPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "initialCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "averagePositionPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lotsExecuted": "lotsExecuted",

              "totalOrderAmount": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lotsRequested": "lotsRequested",

              "stages": [

                {

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                },

                {

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                }

              ],

              "executedOrderPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "executedCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "initialSecurityPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "serviceCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currency": "currency",

              "orderDate": "2000-01-23T04:56:07.000Z"

            },

            {

              "orderId": "orderId",

              "figi": "figi",

              "initialOrderPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "initialCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "averagePositionPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lotsExecuted": "lotsExecuted",

              "totalOrderAmount": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lotsRequested": "lotsRequested",

              "stages": [

                {

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                },

                {

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                }

              ],

              "executedOrderPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "executedCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "initialSecurityPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "serviceCommission": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currency": "currency",

              "orderDate": "2000-01-23T04:56:07.000Z"

            }

          ]

        },

        "properties": {

          "orders": {

            "items": {

              "$ref": "#/components/schemas/v1OrderState"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetStopOrdersRequest": {

        "description": "?????? ????????? ?????? ???????? ????-??????.",

        "properties": {

          "accountId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetStopOrdersResponse": {

        "description": "?????? ???????? ????-??????.",

        "example": {

          "stopOrders": [

            {

              "activationDateTime": "2000-01-23T04:56:07.000Z",

              "stopPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lotsRequested": "lotsRequested",

              "expirationTime": "2000-01-23T04:56:07.000Z",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "figi": "figi",

              "currency": "currency",

              "stopOrderId": "stopOrderId",

              "createDate": "2000-01-23T04:56:07.000Z"

            },

            {

              "activationDateTime": "2000-01-23T04:56:07.000Z",

              "stopPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "lotsRequested": "lotsRequested",

              "expirationTime": "2000-01-23T04:56:07.000Z",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "figi": "figi",

              "currency": "currency",

              "stopOrderId": "stopOrderId",

              "createDate": "2000-01-23T04:56:07.000Z"

            }

          ]

        },

        "properties": {

          "stopOrders": {

            "items": {

              "$ref": "#/components/schemas/v1StopOrder"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1GetTradingStatusRequest": {

        "description": "?????? ????????? ????????? ???????.",

        "properties": {

          "figi": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1GetTradingStatusResponse": {

        "description": "?????????? ? ???????? ???????.",

        "example": {

          "limitOrderAvailableFlag": true,

          "marketOrderAvailableFlag": true,

          "figi": "figi"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "tradingStatus": {

            "$ref": "#/components/schemas/v1SecurityTradingStatus"

          },

          "limitOrderAvailableFlag": {

            "type": "boolean"

          },

          "marketOrderAvailableFlag": {

            "type": "boolean"

          }

        },

        "type": "object"

      },

      "v1GetUserTariffRequest": {

        "description": "?????? ??????? ??????? ????????????.",

        "type": "object"

      },

      "v1GetUserTariffResponse": {

        "description": "??????? ?????? ????????????.",

        "example": {

          "unaryLimits": [

            {

              "limitPerMinute": 0,

              "methods": [

                "methods",

                "methods"

              ]

            },

            {

              "limitPerMinute": 0,

              "methods": [

                "methods",

                "methods"

              ]

            }

          ],

          "streamLimits": [

            {

              "streams": [

                "streams",

                "streams"

              ],

              "limit": 6

            },

            {

              "streams": [

                "streams",

                "streams"

              ],

              "limit": 6

            }

          ]

        },

        "properties": {

          "unaryLimits": {

            "items": {

              "$ref": "#/components/schemas/v1UnaryLimit"

            },

            "type": "array"

          },

          "streamLimits": {

            "items": {

              "$ref": "#/components/schemas/v1StreamLimit"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1HistoricCandle": {

        "description": "?????????? ? ?????.",

        "example": {

          "volume": "volume",

          "high": {

            "nano": 6,

            "units": "units"

          },

          "low": {

            "nano": 6,

            "units": "units"

          },

          "time": "2000-01-23T04:56:07.000Z",

          "close": {

            "nano": 6,

            "units": "units"

          },

          "open": {

            "nano": 6,

            "units": "units"

          },

          "isComplete": true

        },

        "properties": {

          "open": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "high": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "low": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "close": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "volume": {

            "format": "int64",

            "type": "string"

          },

          "time": {

            "format": "date-time",

            "type": "string"

          },

          "isComplete": {

            "type": "boolean"

          }

        },

        "type": "object"

      },

      "v1Instrument": {

        "description": "?????? ???????? ???????? ?????????? ?? ???????????.",

        "example": {

          "figi": "figi",

          "dshortMin": {

            "nano": 6,

            "units": "units"

          },

          "countryOfRisk": "countryOfRisk",

          "lot": 0,

          "uid": "uid",

          "dlong": {

            "nano": 6,

            "units": "units"

          },

          "sellAvailableFlag": true,

          "currency": "currency",

          "buyAvailableFlag": true,

          "classCode": "classCode",

          "ticker": "ticker",

          "instrumentType": "instrumentType",

          "apiTradeAvailableFlag": true,

          "dlongMin": {

            "nano": 6,

            "units": "units"

          },

          "shortEnabledFlag": true,

          "kshort": {

            "nano": 6,

            "units": "units"

          },

          "minPriceIncrement": {

            "nano": 6,

            "units": "units"

          },

          "otcFlag": true,

          "klong": {

            "nano": 6,

            "units": "units"

          },

          "dshort": {

            "nano": 6,

            "units": "units"

          },

          "name": "name",

          "exchange": "exchange",

          "countryOfRiskName": "countryOfRiskName",

          "isin": "isin"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "lot": {

            "format": "int32",

            "type": "integer"

          },

          "currency": {

            "type": "string"

          },

          "klong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "kshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlongMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshortMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "shortEnabledFlag": {

            "type": "boolean"

          },

          "name": {

            "type": "string"

          },

          "exchange": {

            "type": "string"

          },

          "countryOfRisk": {

            "type": "string"

          },

          "countryOfRiskName": {

            "type": "string"

          },

          "instrumentType": {

            "type": "string"

          },

          "tradingStatus": {

            "$ref": "#/components/schemas/v1SecurityTradingStatus"

          },

          "otcFlag": {

            "type": "boolean"

          },

          "buyAvailableFlag": {

            "type": "boolean"

          },

          "sellAvailableFlag": {

            "type": "boolean"

          },

          "minPriceIncrement": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "apiTradeAvailableFlag": {

            "type": "boolean"

          },

          "uid": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1InstrumentIdType": {

        "default": "INSTRUMENT_ID_UNSPECIFIED",

        "enum": [

          "INSTRUMENT_ID_UNSPECIFIED",

          "INSTRUMENT_ID_TYPE_FIGI",

          "INSTRUMENT_ID_TYPE_TICKER",

          "INSTRUMENT_ID_TYPE_UID"

        ],

        "title": "??? ?????????????? ???????????. ????????? ?? ????????????? ????????????: [????????????? ????????????](https://tinkoff.github.io/investAPI/faq_identification/)",

        "type": "string"

      },

      "v1InstrumentLink": {

        "description": "????? ? ?????? ????????????.",

        "example": {

          "instrumentUid": "instrumentUid",

          "type": "type"

        },

        "properties": {

          "type": {

            "type": "string"

          },

          "instrumentUid": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1InstrumentRequest": {

        "description": "?????? ????????? ??????????? ?? ??????????????.",

        "properties": {

          "idType": {

            "$ref": "#/components/schemas/v1InstrumentIdType"

          },

          "classCode": {

            "type": "string"

          },

          "id": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1InstrumentResponse": {

        "description": "?????? ?? ???????????.",

        "example": {

          "instrument": {

            "figi": "figi",

            "dshortMin": {

              "nano": 6,

              "units": "units"

            },

            "countryOfRisk": "countryOfRisk",

            "lot": 0,

            "uid": "uid",

            "dlong": {

              "nano": 6,

              "units": "units"

            },

            "sellAvailableFlag": true,

            "currency": "currency",

            "buyAvailableFlag": true,

            "classCode": "classCode",

            "ticker": "ticker",

            "instrumentType": "instrumentType",

            "apiTradeAvailableFlag": true,

            "dlongMin": {

              "nano": 6,

              "units": "units"

            },

            "shortEnabledFlag": true,

            "kshort": {

              "nano": 6,

              "units": "units"

            },

            "minPriceIncrement": {

              "nano": 6,

              "units": "units"

            },

            "otcFlag": true,

            "klong": {

              "nano": 6,

              "units": "units"

            },

            "dshort": {

              "nano": 6,

              "units": "units"

            },

            "name": "name",

            "exchange": "exchange",

            "countryOfRiskName": "countryOfRiskName",

            "isin": "isin"

          }

        },

        "properties": {

          "instrument": {

            "$ref": "#/components/schemas/v1Instrument"

          }

        },

        "type": "object"

      },

      "v1InstrumentStatus": {

        "default": "INSTRUMENT_STATUS_UNSPECIFIED",

        "description": "?????? ????????????? ????????????.",

        "enum": [

          "INSTRUMENT_STATUS_UNSPECIFIED",

          "INSTRUMENT_STATUS_BASE",

          "INSTRUMENT_STATUS_ALL"

        ],

        "type": "string"

      },

      "v1InstrumentsRequest": {

        "description": "?????? ????????? ????????????.",

        "properties": {

          "instrumentStatus": {

            "$ref": "#/components/schemas/v1InstrumentStatus"

          }

        },

        "type": "object"

      },

      "v1LastPrice": {

        "description": "?????????? ? ????.",

        "example": {

          "price": {

            "nano": 6,

            "units": "units"

          },

          "figi": "figi",

          "time": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "price": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "time": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1MoneyValue": {

        "example": {

          "nano": 5,

          "currency": "currency",

          "units": "units"

        },

        "properties": {

          "currency": {

            "title": "????????? ISO-??? ??????",

            "type": "string"

          },

          "units": {

            "format": "int64",

            "title": "????? ????? ?????, ????? ???? ????????????? ??????",

            "type": "string"

          },

          "nano": {

            "format": "int32",

            "title": "??????? ????? ?????, ????? ???? ????????????? ??????",

            "type": "integer"

          }

        },

        "title": "???????? ????? ? ???????????? ??????",

        "type": "object"

      },

      "v1OpenSandboxAccountRequest": {

        "description": "?????? ???????? ????? ? ?????????.",

        "type": "object"

      },

      "v1OpenSandboxAccountResponse": {

        "description": "????? ????????? ????? ? ?????????.",

        "example": {

          "accountId": "accountId"

        },

        "properties": {

          "accountId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1Operation": {

        "description": "?????? ?? ????????.",

        "example": {

          "date": "2000-01-23T04:56:07.000Z",

          "instrumentType": "instrumentType",

          "quantity": "quantity",

          "parentOperationId": "parentOperationId",

          "trades": [

            {

              "dateTime": "2000-01-23T04:56:07.000Z",

              "quantity": "quantity",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "tradeId": "tradeId"

            },

            {

              "dateTime": "2000-01-23T04:56:07.000Z",

              "quantity": "quantity",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "tradeId": "tradeId"

            }

          ],

          "figi": "figi",

          "type": "type",

          "price": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "currency": "currency",

          "payment": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "id": "id",

          "quantityRest": "quantityRest"

        },

        "properties": {

          "id": {

            "type": "string"

          },

          "parentOperationId": {

            "type": "string"

          },

          "currency": {

            "type": "string"

          },

          "payment": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "price": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "state": {

            "$ref": "#/components/schemas/v1OperationState"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "quantityRest": {

            "format": "int64",

            "type": "string"

          },

          "figi": {

            "type": "string"

          },

          "instrumentType": {

            "type": "string"

          },

          "date": {

            "format": "date-time",

            "type": "string"

          },

          "type": {

            "type": "string"

          },

          "operationType": {

            "$ref": "#/components/schemas/v1OperationType"

          },

          "trades": {

            "items": {

              "$ref": "#/components/schemas/v1OperationTrade"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1OperationState": {

        "default": "OPERATION_STATE_UNSPECIFIED",

        "description": "?????? ????????????? ????????.",

        "enum": [

          "OPERATION_STATE_UNSPECIFIED",

          "OPERATION_STATE_EXECUTED",

          "OPERATION_STATE_CANCELED"

        ],

        "type": "string"

      },

      "v1OperationTrade": {

        "description": "?????? ?? ????????.",

        "example": {

          "dateTime": "2000-01-23T04:56:07.000Z",

          "quantity": "quantity",

          "price": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "tradeId": "tradeId"

        },

        "properties": {

          "tradeId": {

            "type": "string"

          },

          "dateTime": {

            "format": "date-time",

            "type": "string"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "price": {

            "$ref": "#/components/schemas/v1MoneyValue"

          }

        },

        "type": "object"

      },

      "v1OperationType": {

        "default": "OPERATION_TYPE_UNSPECIFIED",

        "description": "??? ????????.",

        "enum": [

          "OPERATION_TYPE_UNSPECIFIED",

          "OPERATION_TYPE_INPUT",

          "OPERATION_TYPE_BOND_TAX",

          "OPERATION_TYPE_OUTPUT_SECURITIES",

          "OPERATION_TYPE_OVERNIGHT",

          "OPERATION_TYPE_TAX",

          "OPERATION_TYPE_BOND_REPAYMENT_FULL",

          "OPERATION_TYPE_SELL_CARD",

          "OPERATION_TYPE_DIVIDEND_TAX",

          "OPERATION_TYPE_OUTPUT",

          "OPERATION_TYPE_BOND_REPAYMENT",

          "OPERATION_TYPE_TAX_CORRECTION",

          "OPERATION_TYPE_SERVICE_FEE",

          "OPERATION_TYPE_BENEFIT_TAX",

          "OPERATION_TYPE_MARGIN_FEE",

          "OPERATION_TYPE_BUY",

          "OPERATION_TYPE_BUY_CARD",

          "OPERATION_TYPE_INPUT_SECURITIES",

          "OPERATION_TYPE_SELL_MARGIN",

          "OPERATION_TYPE_BROKER_FEE",

          "OPERATION_TYPE_BUY_MARGIN",

          "OPERATION_TYPE_DIVIDEND",

          "OPERATION_TYPE_SELL",

          "OPERATION_TYPE_COUPON",

          "OPERATION_TYPE_SUCCESS_FEE",

          "OPERATION_TYPE_DIVIDEND_TRANSFER",

          "OPERATION_TYPE_ACCRUING_VARMARGIN",

          "OPERATION_TYPE_WRITING_OFF_VARMARGIN",

          "OPERATION_TYPE_DELIVERY_BUY",

          "OPERATION_TYPE_DELIVERY_SELL",

          "OPERATION_TYPE_TRACK_MFEE",

          "OPERATION_TYPE_TRACK_PFEE",

          "OPERATION_TYPE_TAX_PROGRESSIVE",

          "OPERATION_TYPE_BOND_TAX_PROGRESSIVE",

          "OPERATION_TYPE_DIVIDEND_TAX_PROGRESSIVE",

          "OPERATION_TYPE_BENEFIT_TAX_PROGRESSIVE",

          "OPERATION_TYPE_TAX_CORRECTION_PROGRESSIVE",

          "OPERATION_TYPE_TAX_REPO_PROGRESSIVE",

          "OPERATION_TYPE_TAX_REPO",

          "OPERATION_TYPE_TAX_REPO_HOLD",

          "OPERATION_TYPE_TAX_REPO_REFUND",

          "OPERATION_TYPE_TAX_REPO_HOLD_PROGRESSIVE",

          "OPERATION_TYPE_TAX_REPO_REFUND_PROGRESSIVE",

          "OPERATION_TYPE_DIV_EXT",

          "OPERATION_TYPE_TAX_CORRECTION_COUPON"

        ],

        "type": "string"

      },

      "v1OperationsRequest": {

        "description": "?????? ????????? ?????? ???????? ?? ?????.",

        "properties": {

          "accountId": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          },

          "state": {

            "$ref": "#/components/schemas/v1OperationState"

          },

          "figi": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1OperationsResponse": {

        "description": "?????? ????????.",

        "example": {

          "operations": [

            {

              "date": "2000-01-23T04:56:07.000Z",

              "instrumentType": "instrumentType",

              "quantity": "quantity",

              "parentOperationId": "parentOperationId",

              "trades": [

                {

                  "dateTime": "2000-01-23T04:56:07.000Z",

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                },

                {

                  "dateTime": "2000-01-23T04:56:07.000Z",

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                }

              ],

              "figi": "figi",

              "type": "type",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currency": "currency",

              "payment": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "id": "id",

              "quantityRest": "quantityRest"

            },

            {

              "date": "2000-01-23T04:56:07.000Z",

              "instrumentType": "instrumentType",

              "quantity": "quantity",

              "parentOperationId": "parentOperationId",

              "trades": [

                {

                  "dateTime": "2000-01-23T04:56:07.000Z",

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                },

                {

                  "dateTime": "2000-01-23T04:56:07.000Z",

                  "quantity": "quantity",

                  "price": {

                    "nano": 5,

                    "currency": "currency",

                    "units": "units"

                  },

                  "tradeId": "tradeId"

                }

              ],

              "figi": "figi",

              "type": "type",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currency": "currency",

              "payment": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "id": "id",

              "quantityRest": "quantityRest"

            }

          ]

        },

        "properties": {

          "operations": {

            "items": {

              "$ref": "#/components/schemas/v1Operation"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1Order": {

        "description": "?????? ???????????/??????.",

        "example": {

          "quantity": "quantity",

          "price": {

            "nano": 6,

            "units": "units"

          }

        },

        "properties": {

          "price": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1OrderDirection": {

        "default": "ORDER_DIRECTION_UNSPECIFIED",

        "enum": [

          "ORDER_DIRECTION_UNSPECIFIED",

          "ORDER_DIRECTION_BUY",

          "ORDER_DIRECTION_SELL"

        ],

        "title": "??????????? ????????",

        "type": "string"

      },

      "v1OrderExecutionReportStatus": {

        "default": "EXECUTION_REPORT_STATUS_UNSPECIFIED",

        "enum": [

          "EXECUTION_REPORT_STATUS_UNSPECIFIED",

          "EXECUTION_REPORT_STATUS_FILL",

          "EXECUTION_REPORT_STATUS_REJECTED",

          "EXECUTION_REPORT_STATUS_CANCELLED",

          "EXECUTION_REPORT_STATUS_NEW",

          "EXECUTION_REPORT_STATUS_PARTIALLYFILL"

        ],

        "title": "??????? ?????? ?????? (?????????)",

        "type": "string"

      },

      "v1OrderStage": {

        "description": "?????? ? ?????? ????????? ?????????.",

        "example": {

          "quantity": "quantity",

          "price": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "tradeId": "tradeId"

        },

        "properties": {

          "price": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "tradeId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1OrderState": {

        "description": "?????????? ? ???????? ?????????.",

        "example": {

          "orderId": "orderId",

          "figi": "figi",

          "initialOrderPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "initialCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "averagePositionPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "lotsExecuted": "lotsExecuted",

          "totalOrderAmount": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "lotsRequested": "lotsRequested",

          "stages": [

            {

              "quantity": "quantity",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "tradeId": "tradeId"

            },

            {

              "quantity": "quantity",

              "price": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "tradeId": "tradeId"

            }

          ],

          "executedOrderPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "executedCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "initialSecurityPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "serviceCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "currency": "currency",

          "orderDate": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "orderId": {

            "type": "string"

          },

          "executionReportStatus": {

            "$ref": "#/components/schemas/v1OrderExecutionReportStatus"

          },

          "lotsRequested": {

            "format": "int64",

            "type": "string"

          },

          "lotsExecuted": {

            "format": "int64",

            "type": "string"

          },

          "initialOrderPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "executedOrderPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "totalOrderAmount": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "averagePositionPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "initialCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "executedCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "figi": {

            "type": "string"

          },

          "direction": {

            "$ref": "#/components/schemas/v1OrderDirection"

          },

          "initialSecurityPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "stages": {

            "items": {

              "$ref": "#/components/schemas/v1OrderStage"

            },

            "type": "array"

          },

          "serviceCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "currency": {

            "type": "string"

          },

          "orderType": {

            "$ref": "#/components/schemas/v1OrderType"

          },

          "orderDate": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1OrderType": {

        "default": "ORDER_TYPE_UNSPECIFIED",

        "enum": [

          "ORDER_TYPE_UNSPECIFIED",

          "ORDER_TYPE_LIMIT",

          "ORDER_TYPE_MARKET"

        ],

        "title": "??? ??????",

        "type": "string"

      },

      "v1PortfolioPosition": {

        "description": "??????? ????????.",

        "example": {

          "averagePositionPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "instrumentType": "instrumentType",

          "quantity": {

            "nano": 6,

            "units": "units"

          },

          "averagePositionPricePt": {

            "nano": 6,

            "units": "units"

          },

          "averagePositionPriceFifo": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "currentNkd": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "currentPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "figi": "figi",

          "expectedYield": {

            "nano": 6,

            "units": "units"

          },

          "quantityLots": {

            "nano": 6,

            "units": "units"

          }

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "instrumentType": {

            "type": "string"

          },

          "quantity": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "averagePositionPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "expectedYield": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "currentNkd": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "averagePositionPricePt": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "currentPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "averagePositionPriceFifo": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "quantityLots": {

            "$ref": "#/components/schemas/v1Quotation"

          }

        },

        "type": "object"

      },

      "v1PortfolioRequest": {

        "description": "?????? ????????? ???????? ???????? ?? ?????.",

        "properties": {

          "accountId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1PortfolioResponse": {

        "description": "??????? ???????? ?? ?????.",

        "example": {

          "totalAmountBonds": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "totalAmountFutures": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "totalAmountCurrencies": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "expectedYield": {

            "nano": 6,

            "units": "units"

          },

          "positions": [

            {

              "averagePositionPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "instrumentType": "instrumentType",

              "quantity": {

                "nano": 6,

                "units": "units"

              },

              "averagePositionPricePt": {

                "nano": 6,

                "units": "units"

              },

              "averagePositionPriceFifo": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currentNkd": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currentPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "figi": "figi",

              "expectedYield": {

                "nano": 6,

                "units": "units"

              },

              "quantityLots": {

                "nano": 6,

                "units": "units"

              }

            },

            {

              "averagePositionPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "instrumentType": "instrumentType",

              "quantity": {

                "nano": 6,

                "units": "units"

              },

              "averagePositionPricePt": {

                "nano": 6,

                "units": "units"

              },

              "averagePositionPriceFifo": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currentNkd": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "currentPrice": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "figi": "figi",

              "expectedYield": {

                "nano": 6,

                "units": "units"

              },

              "quantityLots": {

                "nano": 6,

                "units": "units"

              }

            }

          ],

          "totalAmountShares": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "totalAmountEtf": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          }

        },

        "properties": {

          "totalAmountShares": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "totalAmountBonds": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "totalAmountEtf": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "totalAmountCurrencies": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "totalAmountFutures": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "expectedYield": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "positions": {

            "items": {

              "$ref": "#/components/schemas/v1PortfolioPosition"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1PositionsFutures": {

        "description": "?????? ????????.",

        "example": {

          "blocked": "blocked",

          "balance": "balance",

          "figi": "figi"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "blocked": {

            "format": "int64",

            "type": "string"

          },

          "balance": {

            "format": "int64",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1PositionsRequest": {

        "description": "?????? ??????? ???????? ?? ?????.",

        "properties": {

          "accountId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1PositionsResponse": {

        "description": "?????? ??????? ?? ?????.",

        "example": {

          "limitsLoadingInProgress": true,

          "money": [

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            }

          ],

          "blocked": [

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            }

          ],

          "futures": [

            {

              "blocked": "blocked",

              "balance": "balance",

              "figi": "figi"

            },

            {

              "blocked": "blocked",

              "balance": "balance",

              "figi": "figi"

            }

          ],

          "securities": [

            {

              "blocked": "blocked",

              "balance": "balance",

              "figi": "figi"

            },

            {

              "blocked": "blocked",

              "balance": "balance",

              "figi": "figi"

            }

          ]

        },

        "properties": {

          "money": {

            "items": {

              "$ref": "#/components/schemas/v1MoneyValue"

            },

            "type": "array"

          },

          "blocked": {

            "items": {

              "$ref": "#/components/schemas/v1MoneyValue"

            },

            "type": "array"

          },

          "securities": {

            "items": {

              "$ref": "#/components/schemas/v1PositionsSecurities"

            },

            "type": "array"

          },

          "limitsLoadingInProgress": {

            "type": "boolean"

          },

          "futures": {

            "items": {

              "$ref": "#/components/schemas/v1PositionsFutures"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1PositionsSecurities": {

        "description": "?????? ??????? ?????? ??????.",

        "example": {

          "blocked": "blocked",

          "balance": "balance",

          "figi": "figi"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "blocked": {

            "format": "int64",

            "type": "string"

          },

          "balance": {

            "format": "int64",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1PostOrderRequest": {

        "description": "?????? ??????????? ????????? ?????????.",

        "properties": {

          "figi": {

            "type": "string"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "price": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "direction": {

            "$ref": "#/components/schemas/v1OrderDirection"

          },

          "accountId": {

            "type": "string"

          },

          "orderType": {

            "$ref": "#/components/schemas/v1OrderType"

          },

          "orderId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1PostOrderResponse": {

        "description": "?????????? ? ??????????? ?????????.",

        "example": {

          "orderId": "orderId",

          "figi": "figi",

          "initialOrderPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "initialCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "message": "message",

          "lotsExecuted": "lotsExecuted",

          "totalOrderAmount": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "lotsRequested": "lotsRequested",

          "initialOrderPricePt": {

            "nano": 6,

            "units": "units"

          },

          "executedOrderPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "executedCommission": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "initialSecurityPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "aciValue": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          }

        },

        "properties": {

          "orderId": {

            "type": "string"

          },

          "executionReportStatus": {

            "$ref": "#/components/schemas/v1OrderExecutionReportStatus"

          },

          "lotsRequested": {

            "format": "int64",

            "type": "string"

          },

          "lotsExecuted": {

            "format": "int64",

            "type": "string"

          },

          "initialOrderPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "executedOrderPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "totalOrderAmount": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "initialCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "executedCommission": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "aciValue": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "figi": {

            "type": "string"

          },

          "direction": {

            "$ref": "#/components/schemas/v1OrderDirection"

          },

          "initialSecurityPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "orderType": {

            "$ref": "#/components/schemas/v1OrderType"

          },

          "message": {

            "type": "string"

          },

          "initialOrderPricePt": {

            "$ref": "#/components/schemas/v1Quotation"

          }

        },

        "type": "object"

      },

      "v1PostStopOrderRequest": {

        "description": "?????? ??????????? ????-??????.",

        "properties": {

          "figi": {

            "type": "string"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "price": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "stopPrice": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "direction": {

            "$ref": "#/components/schemas/v1StopOrderDirection"

          },

          "accountId": {

            "type": "string"

          },

          "expirationType": {

            "$ref": "#/components/schemas/v1StopOrderExpirationType"

          },

          "stopOrderType": {

            "$ref": "#/components/schemas/v1StopOrderType"

          },

          "expireDate": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1PostStopOrderResponse": {

        "description": "????????? ??????????? ????-??????.",

        "example": {

          "stopOrderId": "stopOrderId"

        },

        "properties": {

          "stopOrderId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1Quotation": {

        "example": {

          "nano": 6,

          "units": "units"

        },

        "properties": {

          "units": {

            "format": "int64",

            "title": "????? ????? ?????, ????? ???? ????????????? ??????",

            "type": "string"

          },

          "nano": {

            "format": "int32",

            "title": "??????? ????? ?????, ????? ???? ????????????? ??????",

            "type": "integer"

          }

        },

        "title": "????????? - ???????? ????? ??? ???????? ??????",

        "type": "object"

      },

      "v1SandboxPayInRequest": {

        "description": "?????? ?????????? ????? ? ?????????.",

        "properties": {

          "accountId": {

            "type": "string"

          },

          "amount": {

            "$ref": "#/components/schemas/v1MoneyValue"

          }

        },

        "type": "object"

      },

      "v1SandboxPayInResponse": {

        "description": "????????? ?????????? ?????, ??????? ??????.",

        "example": {

          "balance": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          }

        },

        "properties": {

          "balance": {

            "$ref": "#/components/schemas/v1MoneyValue"

          }

        },

        "type": "object"

      },

      "v1SecurityTradingStatus": {

        "default": "SECURITY_TRADING_STATUS_UNSPECIFIED",

        "enum": [

          "SECURITY_TRADING_STATUS_UNSPECIFIED",

          "SECURITY_TRADING_STATUS_NOT_AVAILABLE_FOR_TRADING",

          "SECURITY_TRADING_STATUS_OPENING_PERIOD",

          "SECURITY_TRADING_STATUS_CLOSING_PERIOD",

          "SECURITY_TRADING_STATUS_BREAK_IN_TRADING",

          "SECURITY_TRADING_STATUS_NORMAL_TRADING",

          "SECURITY_TRADING_STATUS_CLOSING_AUCTION",

          "SECURITY_TRADING_STATUS_DARK_POOL_AUCTION",

          "SECURITY_TRADING_STATUS_DISCRETE_AUCTION",

          "SECURITY_TRADING_STATUS_OPENING_AUCTION_PERIOD",

          "SECURITY_TRADING_STATUS_TRADING_AT_CLOSING_AUCTION_PRICE",

          "SECURITY_TRADING_STATUS_SESSION_ASSIGNED",

          "SECURITY_TRADING_STATUS_SESSION_CLOSE",

          "SECURITY_TRADING_STATUS_SESSION_OPEN",

          "SECURITY_TRADING_STATUS_DEALER_NORMAL_TRADING",

          "SECURITY_TRADING_STATUS_DEALER_BREAK_IN_TRADING",

          "SECURITY_TRADING_STATUS_DEALER_NOT_AVAILABLE_FOR_TRADING"

        ],

        "title": "????? ?????? ???????????",

        "type": "string"

      },

      "v1Share": {

        "description": "?????? ???????? ?????????? ?? ?????.",

        "example": {

          "figi": "figi",

          "dshortMin": {

            "nano": 6,

            "units": "units"

          },

          "countryOfRisk": "countryOfRisk",

          "lot": 0,

          "uid": "uid",

          "dlong": {

            "nano": 6,

            "units": "units"

          },

          "nominal": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "sellAvailableFlag": true,

          "currency": "currency",

          "sector": "sector",

          "buyAvailableFlag": true,

          "classCode": "classCode",

          "ticker": "ticker",

          "apiTradeAvailableFlag": true,

          "dlongMin": {

            "nano": 6,

            "units": "units"

          },

          "shortEnabledFlag": true,

          "kshort": {

            "nano": 6,

            "units": "units"

          },

          "issueSizePlan": "issueSizePlan",

          "minPriceIncrement": {

            "nano": 6,

            "units": "units"

          },

          "otcFlag": true,

          "klong": {

            "nano": 6,

            "units": "units"

          },

          "dshort": {

            "nano": 6,

            "units": "units"

          },

          "name": "name",

          "issueSize": "issueSize",

          "exchange": "exchange",

          "countryOfRiskName": "countryOfRiskName",

          "divYieldFlag": true,

          "isin": "isin",

          "ipoDate": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "ticker": {

            "type": "string"

          },

          "classCode": {

            "type": "string"

          },

          "isin": {

            "type": "string"

          },

          "lot": {

            "format": "int32",

            "type": "integer"

          },

          "currency": {

            "type": "string"

          },

          "klong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "kshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlong": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshort": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dlongMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "dshortMin": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "shortEnabledFlag": {

            "type": "boolean"

          },

          "name": {

            "type": "string"

          },

          "exchange": {

            "type": "string"

          },

          "ipoDate": {

            "format": "date-time",

            "type": "string"

          },

          "issueSize": {

            "format": "int64",

            "type": "string"

          },

          "countryOfRisk": {

            "type": "string"

          },

          "countryOfRiskName": {

            "type": "string"

          },

          "sector": {

            "type": "string"

          },

          "issueSizePlan": {

            "format": "int64",

            "type": "string"

          },

          "nominal": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "tradingStatus": {

            "$ref": "#/components/schemas/v1SecurityTradingStatus"

          },

          "otcFlag": {

            "type": "boolean"

          },

          "buyAvailableFlag": {

            "type": "boolean"

          },

          "sellAvailableFlag": {

            "type": "boolean"

          },

          "divYieldFlag": {

            "type": "boolean"

          },

          "shareType": {

            "$ref": "#/components/schemas/v1ShareType"

          },

          "minPriceIncrement": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "apiTradeAvailableFlag": {

            "type": "boolean"

          },

          "uid": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1ShareResponse": {

        "description": "?????? ?? ?????.",

        "example": {

          "instrument": {

            "figi": "figi",

            "dshortMin": {

              "nano": 6,

              "units": "units"

            },

            "countryOfRisk": "countryOfRisk",

            "lot": 0,

            "uid": "uid",

            "dlong": {

              "nano": 6,

              "units": "units"

            },

            "nominal": {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            "sellAvailableFlag": true,

            "currency": "currency",

            "sector": "sector",

            "buyAvailableFlag": true,

            "classCode": "classCode",

            "ticker": "ticker",

            "apiTradeAvailableFlag": true,

            "dlongMin": {

              "nano": 6,

              "units": "units"

            },

            "shortEnabledFlag": true,

            "kshort": {

              "nano": 6,

              "units": "units"

            },

            "issueSizePlan": "issueSizePlan",

            "minPriceIncrement": {

              "nano": 6,

              "units": "units"

            },

            "otcFlag": true,

            "klong": {

              "nano": 6,

              "units": "units"

            },

            "dshort": {

              "nano": 6,

              "units": "units"

            },

            "name": "name",

            "issueSize": "issueSize",

            "exchange": "exchange",

            "countryOfRiskName": "countryOfRiskName",

            "divYieldFlag": true,

            "isin": "isin",

            "ipoDate": "2000-01-23T04:56:07.000Z"

          }

        },

        "properties": {

          "instrument": {

            "$ref": "#/components/schemas/v1Share"

          }

        },

        "type": "object"

      },

      "v1ShareType": {

        "default": "SHARE_TYPE_UNSPECIFIED",

        "description": "??? ?????.",

        "enum": [

          "SHARE_TYPE_UNSPECIFIED",

          "SHARE_TYPE_COMMON",

          "SHARE_TYPE_PREFERRED",

          "SHARE_TYPE_ADR",

          "SHARE_TYPE_GDR",

          "SHARE_TYPE_MLP",

          "SHARE_TYPE_NY_REG_SHRS",

          "SHARE_TYPE_CLOSED_END_FUND",

          "SHARE_TYPE_REIT"

        ],

        "type": "string"

      },

      "v1SharesResponse": {

        "description": "?????? ?? ??????.",

        "example": {

          "instruments": [

            {

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "sellAvailableFlag": true,

              "currency": "currency",

              "sector": "sector",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "issueSizePlan": "issueSizePlan",

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "name": "name",

              "issueSize": "issueSize",

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName",

              "divYieldFlag": true,

              "isin": "isin",

              "ipoDate": "2000-01-23T04:56:07.000Z"

            },

            {

              "figi": "figi",

              "dshortMin": {

                "nano": 6,

                "units": "units"

              },

              "countryOfRisk": "countryOfRisk",

              "lot": 0,

              "uid": "uid",

              "dlong": {

                "nano": 6,

                "units": "units"

              },

              "nominal": {

                "nano": 5,

                "currency": "currency",

                "units": "units"

              },

              "sellAvailableFlag": true,

              "currency": "currency",

              "sector": "sector",

              "buyAvailableFlag": true,

              "classCode": "classCode",

              "ticker": "ticker",

              "apiTradeAvailableFlag": true,

              "dlongMin": {

                "nano": 6,

                "units": "units"

              },

              "shortEnabledFlag": true,

              "kshort": {

                "nano": 6,

                "units": "units"

              },

              "issueSizePlan": "issueSizePlan",

              "minPriceIncrement": {

                "nano": 6,

                "units": "units"

              },

              "otcFlag": true,

              "klong": {

                "nano": 6,

                "units": "units"

              },

              "dshort": {

                "nano": 6,

                "units": "units"

              },

              "name": "name",

              "issueSize": "issueSize",

              "exchange": "exchange",

              "countryOfRiskName": "countryOfRiskName",

              "divYieldFlag": true,

              "isin": "isin",

              "ipoDate": "2000-01-23T04:56:07.000Z"

            }

          ]

        },

        "properties": {

          "instruments": {

            "items": {

              "$ref": "#/components/schemas/v1Share"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1StopOrder": {

        "description": "?????????? ? ????-??????.",

        "example": {

          "activationDateTime": "2000-01-23T04:56:07.000Z",

          "stopPrice": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "lotsRequested": "lotsRequested",

          "expirationTime": "2000-01-23T04:56:07.000Z",

          "price": {

            "nano": 5,

            "currency": "currency",

            "units": "units"

          },

          "figi": "figi",

          "currency": "currency",

          "stopOrderId": "stopOrderId",

          "createDate": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "stopOrderId": {

            "type": "string"

          },

          "lotsRequested": {

            "format": "int64",

            "type": "string"

          },

          "figi": {

            "type": "string"

          },

          "direction": {

            "$ref": "#/components/schemas/v1StopOrderDirection"

          },

          "currency": {

            "type": "string"

          },

          "orderType": {

            "$ref": "#/components/schemas/v1StopOrderType"

          },

          "createDate": {

            "format": "date-time",

            "type": "string"

          },

          "activationDateTime": {

            "format": "date-time",

            "type": "string"

          },

          "expirationTime": {

            "format": "date-time",

            "type": "string"

          },

          "price": {

            "$ref": "#/components/schemas/v1MoneyValue"

          },

          "stopPrice": {

            "$ref": "#/components/schemas/v1MoneyValue"

          }

        },

        "type": "object"

      },

      "v1StopOrderDirection": {

        "default": "STOP_ORDER_DIRECTION_UNSPECIFIED",

        "description": "??????????? ?????? ????-??????.",

        "enum": [

          "STOP_ORDER_DIRECTION_UNSPECIFIED",

          "STOP_ORDER_DIRECTION_BUY",

          "STOP_ORDER_DIRECTION_SELL"

        ],

        "type": "string"

      },

      "v1StopOrderExpirationType": {

        "default": "STOP_ORDER_EXPIRATION_TYPE_UNSPECIFIED",

        "description": "??? ?????????? ????-??????.",

        "enum": [

          "STOP_ORDER_EXPIRATION_TYPE_UNSPECIFIED",

          "STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_CANCEL",

          "STOP_ORDER_EXPIRATION_TYPE_GOOD_TILL_DATE"

        ],

        "type": "string"

      },

      "v1StopOrderType": {

        "default": "STOP_ORDER_TYPE_UNSPECIFIED",

        "description": "??? ????-??????.",

        "enum": [

          "STOP_ORDER_TYPE_UNSPECIFIED",

          "STOP_ORDER_TYPE_TAKE_PROFIT",

          "STOP_ORDER_TYPE_STOP_LOSS",

          "STOP_ORDER_TYPE_STOP_LIMIT"

        ],

        "type": "string"

      },

      "v1StreamLimit": {

        "description": "????? stream-??????????.",

        "example": {

          "streams": [

            "streams",

            "streams"

          ],

          "limit": 6

        },

        "properties": {

          "limit": {

            "format": "int32",

            "type": "integer"

          },

          "streams": {

            "items": {

              "type": "string"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1StructuredProductType": {

        "default": "SP_TYPE_UNSPECIFIED",

        "description": "??? ??????????? ????.",

        "enum": [

          "SP_TYPE_UNSPECIFIED",

          "SP_TYPE_DELIVERABLE",

          "SP_TYPE_NON_DELIVERABLE"

        ],

        "type": "string"

      },

      "v1Trade": {

        "description": "?????????? ? ??????.",

        "example": {

          "quantity": "quantity",

          "price": {

            "nano": 6,

            "units": "units"

          },

          "figi": "figi",

          "time": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "figi": {

            "type": "string"

          },

          "direction": {

            "$ref": "#/components/schemas/v1TradeDirection"

          },

          "price": {

            "$ref": "#/components/schemas/v1Quotation"

          },

          "quantity": {

            "format": "int64",

            "type": "string"

          },

          "time": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1TradeDirection": {

        "default": "TRADE_DIRECTION_UNSPECIFIED",

        "description": "??????????? ??????.",

        "enum": [

          "TRADE_DIRECTION_UNSPECIFIED",

          "TRADE_DIRECTION_BUY",

          "TRADE_DIRECTION_SELL"

        ],

        "type": "string"

      },

      "v1TradingDay": {

        "description": "?????????? ? ??????? ??????.",

        "example": {

          "date": "2000-01-23T04:56:07.000Z",

          "clearingEndTime": "2000-01-23T04:56:07.000Z",

          "openingAuctionStartTime": "2000-01-23T04:56:07.000Z",

          "closingAuctionEndTime": "2000-01-23T04:56:07.000Z",

          "eveningEndTime": "2000-01-23T04:56:07.000Z",

          "premarketStartTime": "2000-01-23T04:56:07.000Z",

          "eveningOpeningAuctionStartTime": "2000-01-23T04:56:07.000Z",

          "isTradingDay": true,

          "eveningStartTime": "2000-01-23T04:56:07.000Z",

          "premarketEndTime": "2000-01-23T04:56:07.000Z",

          "clearingStartTime": "2000-01-23T04:56:07.000Z",

          "startTime": "2000-01-23T04:56:07.000Z",

          "endTime": "2000-01-23T04:56:07.000Z"

        },

        "properties": {

          "date": {

            "format": "date-time",

            "type": "string"

          },

          "isTradingDay": {

            "type": "boolean"

          },

          "startTime": {

            "format": "date-time",

            "type": "string"

          },

          "endTime": {

            "format": "date-time",

            "type": "string"

          },

          "openingAuctionStartTime": {

            "format": "date-time",

            "type": "string"

          },

          "closingAuctionEndTime": {

            "format": "date-time",

            "type": "string"

          },

          "eveningOpeningAuctionStartTime": {

            "format": "date-time",

            "type": "string"

          },

          "eveningStartTime": {

            "format": "date-time",

            "type": "string"

          },

          "eveningEndTime": {

            "format": "date-time",

            "type": "string"

          },

          "clearingStartTime": {

            "format": "date-time",

            "type": "string"

          },

          "clearingEndTime": {

            "format": "date-time",

            "type": "string"

          },

          "premarketStartTime": {

            "format": "date-time",

            "type": "string"

          },

          "premarketEndTime": {

            "format": "date-time",

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1TradingSchedule": {

        "description": "?????? ?? ???????? ????????.",

        "example": {

          "days": [

            {

              "date": "2000-01-23T04:56:07.000Z",

              "clearingEndTime": "2000-01-23T04:56:07.000Z",

              "openingAuctionStartTime": "2000-01-23T04:56:07.000Z",

              "closingAuctionEndTime": "2000-01-23T04:56:07.000Z",

              "eveningEndTime": "2000-01-23T04:56:07.000Z",

              "premarketStartTime": "2000-01-23T04:56:07.000Z",

              "eveningOpeningAuctionStartTime": "2000-01-23T04:56:07.000Z",

              "isTradingDay": true,

              "eveningStartTime": "2000-01-23T04:56:07.000Z",

              "premarketEndTime": "2000-01-23T04:56:07.000Z",

              "clearingStartTime": "2000-01-23T04:56:07.000Z",

              "startTime": "2000-01-23T04:56:07.000Z",

              "endTime": "2000-01-23T04:56:07.000Z"

            },

            {

              "date": "2000-01-23T04:56:07.000Z",

              "clearingEndTime": "2000-01-23T04:56:07.000Z",

              "openingAuctionStartTime": "2000-01-23T04:56:07.000Z",

              "closingAuctionEndTime": "2000-01-23T04:56:07.000Z",

              "eveningEndTime": "2000-01-23T04:56:07.000Z",

              "premarketStartTime": "2000-01-23T04:56:07.000Z",

              "eveningOpeningAuctionStartTime": "2000-01-23T04:56:07.000Z",

              "isTradingDay": true,

              "eveningStartTime": "2000-01-23T04:56:07.000Z",

              "premarketEndTime": "2000-01-23T04:56:07.000Z",

              "clearingStartTime": "2000-01-23T04:56:07.000Z",

              "startTime": "2000-01-23T04:56:07.000Z",

              "endTime": "2000-01-23T04:56:07.000Z"

            }

          ],

          "exchange": "exchange"

        },

        "properties": {

          "exchange": {

            "type": "string"

          },

          "days": {

            "items": {

              "$ref": "#/components/schemas/v1TradingDay"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1TradingSchedulesRequest": {

        "properties": {

          "exchange": {

            "type": "string"

          },

          "from": {

            "format": "date-time",

            "type": "string"

          },

          "to": {

            "format": "date-time",

            "type": "string"

          }

        },

        "title": "?????? ?????????? ??????",

        "type": "object"

      },

      "v1TradingSchedulesResponse": {

        "example": {

          "exchanges": [

            {

              "days": [

                {

                  "date": "2000-01-23T04:56:07.000Z",

                  "clearingEndTime": "2000-01-23T04:56:07.000Z",

                  "openingAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "closingAuctionEndTime": "2000-01-23T04:56:07.000Z",

                  "eveningEndTime": "2000-01-23T04:56:07.000Z",

                  "premarketStartTime": "2000-01-23T04:56:07.000Z",

                  "eveningOpeningAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "isTradingDay": true,

                  "eveningStartTime": "2000-01-23T04:56:07.000Z",

                  "premarketEndTime": "2000-01-23T04:56:07.000Z",

                  "clearingStartTime": "2000-01-23T04:56:07.000Z",

                  "startTime": "2000-01-23T04:56:07.000Z",

                  "endTime": "2000-01-23T04:56:07.000Z"

                },

                {

                  "date": "2000-01-23T04:56:07.000Z",

                  "clearingEndTime": "2000-01-23T04:56:07.000Z",

                  "openingAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "closingAuctionEndTime": "2000-01-23T04:56:07.000Z",

                  "eveningEndTime": "2000-01-23T04:56:07.000Z",

                  "premarketStartTime": "2000-01-23T04:56:07.000Z",

                  "eveningOpeningAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "isTradingDay": true,

                  "eveningStartTime": "2000-01-23T04:56:07.000Z",

                  "premarketEndTime": "2000-01-23T04:56:07.000Z",

                  "clearingStartTime": "2000-01-23T04:56:07.000Z",

                  "startTime": "2000-01-23T04:56:07.000Z",

                  "endTime": "2000-01-23T04:56:07.000Z"

                }

              ],

              "exchange": "exchange"

            },

            {

              "days": [

                {

                  "date": "2000-01-23T04:56:07.000Z",

                  "clearingEndTime": "2000-01-23T04:56:07.000Z",

                  "openingAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "closingAuctionEndTime": "2000-01-23T04:56:07.000Z",

                  "eveningEndTime": "2000-01-23T04:56:07.000Z",

                  "premarketStartTime": "2000-01-23T04:56:07.000Z",

                  "eveningOpeningAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "isTradingDay": true,

                  "eveningStartTime": "2000-01-23T04:56:07.000Z",

                  "premarketEndTime": "2000-01-23T04:56:07.000Z",

                  "clearingStartTime": "2000-01-23T04:56:07.000Z",

                  "startTime": "2000-01-23T04:56:07.000Z",

                  "endTime": "2000-01-23T04:56:07.000Z"

                },

                {

                  "date": "2000-01-23T04:56:07.000Z",

                  "clearingEndTime": "2000-01-23T04:56:07.000Z",

                  "openingAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "closingAuctionEndTime": "2000-01-23T04:56:07.000Z",

                  "eveningEndTime": "2000-01-23T04:56:07.000Z",

                  "premarketStartTime": "2000-01-23T04:56:07.000Z",

                  "eveningOpeningAuctionStartTime": "2000-01-23T04:56:07.000Z",

                  "isTradingDay": true,

                  "eveningStartTime": "2000-01-23T04:56:07.000Z",

                  "premarketEndTime": "2000-01-23T04:56:07.000Z",

                  "clearingStartTime": "2000-01-23T04:56:07.000Z",

                  "startTime": "2000-01-23T04:56:07.000Z",

                  "endTime": "2000-01-23T04:56:07.000Z"

                }

              ],

              "exchange": "exchange"

            }

          ]

        },

        "properties": {

          "exchanges": {

            "items": {

              "$ref": "#/components/schemas/v1TradingSchedule"

            },

            "type": "array"

          }

        },

        "title": "?????? ???????? ????????",

        "type": "object"

      },

      "v1UnaryLimit": {

        "description": "????? unary-???????.",

        "example": {

          "limitPerMinute": 0,

          "methods": [

            "methods",

            "methods"

          ]

        },

        "properties": {

          "limitPerMinute": {

            "format": "int32",

            "type": "integer"

          },

          "methods": {

            "items": {

              "type": "string"

            },

            "type": "array"

          }

        },

        "type": "object"

      },

      "v1WithdrawLimitsRequest": {

        "description": "?????? ?????????? ??? ?????? ???????.",

        "properties": {

          "accountId": {

            "type": "string"

          }

        },

        "type": "object"

      },

      "v1WithdrawLimitsResponse": {

        "description": "????????? ??? ?????? ???????.",

        "example": {

          "blockedGuarantee": [

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            }

          ],

          "money": [

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            }

          ],

          "blocked": [

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            },

            {

              "nano": 5,

              "currency": "currency",

              "units": "units"

            }

          ]

        },

        "properties": {

          "money": {

            "items": {

              "$ref": "#/components/schemas/v1MoneyValue"

            },

            "type": "array"

          },

          "blocked": {

            "items": {

              "$ref": "#/components/schemas/v1MoneyValue"

            },

            "type": "array"

          },

          "blockedGuarantee": {

            "items": {

              "$ref": "#/components/schemas/v1MoneyValue"

            },

            "type": "array"

          }

        },

        "type": "object"

      }

    },

    "securitySchemes": {

      "Bearer": {

        "type": "http",

        "scheme": "bearer"

      }

    }

  }

}', 2);

-- Table: tg_message
CREATE TABLE tg_message (
    update_id  INTEGER PRIMARY KEY
                       NOT NULL
                       UNIQUE,
    message_id INTEGER,
    chat_id    INTEGER,
    username   VARCHAR,
    time       INTEGER,
    text       STRING,
    [offset]   INTEGER,
    length     INTEGER
);

INSERT INTO tg_message (update_id, message_id, chat_id, username, time, text, "offset", length) VALUES (329729261, 83, 238369241, 'ku_dan', 1652652478, 'sdfsdf', NULL, NULL);
INSERT INTO tg_message (update_id, message_id, chat_id, username, time, text, "offset", length) VALUES (329729262, 84, 238369241, 'ku_dan', 1652652484, 'hello world', NULL, NULL);
INSERT INTO tg_message (update_id, message_id, chat_id, username, time, text, "offset", length) VALUES (329729263, 85, 238369241, 'ku_dan', 1652654940, '/users', 0, 6);
INSERT INTO tg_message (update_id, message_id, chat_id, username, time, text, "offset", length) VALUES (329729267, 93, 745688330, 'Deniscomzel', 1652809624, '/start', 0, 6);

-- Table: tg_message_send
CREATE TABLE tg_message_send (
    id      INTEGER PRIMARY KEY AUTOINCREMENT
                    UNIQUE
                    NOT NULL,
    log_id  INTEGER REFERENCES m_log (id) ON DELETE CASCADE
                                          ON UPDATE CASCADE,
    chat_id INTEGER NOT NULL,
    is_send BOOLEAN NOT NULL
                    DEFAULT (0),
    text    STRING
);


-- Index: fk_parameter_value_sort
CREATE INDEX fk_parameter_value_sort ON fk_parameter_value (
    value
);


-- Index: fk_parameter_value_unique
CREATE UNIQUE INDEX fk_parameter_value_unique ON fk_parameter_value (
    parameter_id,
    value
);


-- Index: m_buffer_unique
CREATE UNIQUE INDEX m_buffer_unique ON m_buffer (
    indi_id,
    number
);


-- Index: m_candle_request_sort
CREATE INDEX m_candle_request_sort ON m_candle_request (
    instrument_id,
    tf_id,
    time_end,
    done
);


-- Index: m_candle_request_unique
CREATE UNIQUE INDEX m_candle_request_unique ON m_candle_request (
    instrument_id,
    tf_id,
    time_end
);


-- Index: m_candle_sort
CREATE INDEX m_candle_sort ON m_candle (
    instrument_id,
    tf_id,
    idx
);


-- Index: m_candle_temp_unique
CREATE UNIQUE INDEX m_candle_temp_unique ON m_candle_temp (
    instrument_id,
    tf_id,
    time
);


-- Index: m_candle_unique
CREATE UNIQUE INDEX m_candle_unique ON m_candle (
    instrument_id,
    tf_id,
    time
);


-- Index: m_cmd_prepare_sort
CREATE INDEX m_cmd_prepare_sort ON m_cmd_prepare (
    time_created
);


-- Index: m_cmd_prepare_unique
CREATE UNIQUE INDEX m_cmd_prepare_unique ON m_cmd_prepare (
    expert_id,
    instrument_id,
    side_id,
    time,
    type_id
);


-- Index: m_data_int_sort
CREATE INDEX m_data_int_sort ON m_data_int (
    buffer_id,
    value
);


-- Index: m_data_int_unique
CREATE UNIQUE INDEX m_data_int_unique ON m_data_int (
    buffer_id,
    time
);


-- Index: m_data_unique
CREATE UNIQUE INDEX m_data_unique ON m_data (
    buffer_id,
    time
);


-- Index: m_enum_tf_sort
CREATE INDEX m_enum_tf_sort ON m_enum_tf (
    seconds
);


-- Index: m_expert_uni_sort
CREATE INDEX m_expert_uni_sort ON m_expert_uni (
    indi_id,
    iValue
);


-- Index: m_expert_uni_unique
CREATE UNIQUE INDEX m_expert_uni_unique ON m_expert_uni (
    expert_id,
    instrument_id,
    tf_id,
    indi_id,
    iValue
);


-- Index: m_fk_instrument_unique_1
CREATE UNIQUE INDEX m_fk_instrument_unique_1 ON m_fk_instrument (
    instrument_id,
    link_instrument_id
);


-- Index: m_fk_instrument_unique_2
CREATE UNIQUE INDEX m_fk_instrument_unique_2 ON m_fk_instrument (
    instrument_id,
    uid_original
);


-- Index: m_indicator_unique
CREATE UNIQUE INDEX m_indicator_unique ON m_indicator (
    instrument_id,
    tf_id,
    name,
    params
);


-- Index: m_instrument_active_tf_unique
CREATE UNIQUE INDEX m_instrument_active_tf_unique ON m_instrument_config_tf (
    id,
    tf_id
);


-- Index: m_instrument_sort_figi
CREATE INDEX m_instrument_sort_figi ON m_instrument (
    figi
);


-- Index: m_instrument_sort_ticker
CREATE INDEX m_instrument_sort_ticker ON m_instrument (
    ticker
);


-- Index: m_log_sort
CREATE INDEX m_log_sort ON m_log (
    time,
    type_id
);


-- Index: m_log_unique
CREATE UNIQUE INDEX m_log_unique ON m_log (
    type_id,
    time
);


-- Index: m_signals_unique
CREATE UNIQUE INDEX m_signals_unique ON m_signal (
    expert_uni_id,
    time
);


-- Index: m_tick_unique
CREATE UNIQUE INDEX m_tick_unique ON m_tick (
    instrument_id,
    time_msec
);


-- Index: parameter_sort
CREATE INDEX parameter_sort ON parameter (
    name
);


-- Index: parameter_unique
CREATE UNIQUE INDEX parameter_unique ON parameter (
    route_id,
    type_id,
    name
);


-- Index: poll_sort_check
CREATE INDEX poll_sort_check ON poll (
    is_active,
    on_check
);


-- Index: poll_sort_priority
CREATE INDEX poll_sort_priority ON poll (
    is_active,
    priority
);


-- Index: poll_unique
CREATE UNIQUE INDEX poll_unique ON poll (
    route_id,
    interval
);


-- Index: property_unique
CREATE UNIQUE INDEX property_unique ON property (
    schema_id,
    name
);


-- Index: response_unique
CREATE UNIQUE INDEX response_unique ON response (
    code,
    route_id,
    urn_id,
    time
);


-- Index: route_unique
CREATE UNIQUE INDEX route_unique ON route (
    server_id,
    method_id,
    urn
);


-- Index: tg_message_send_unique
CREATE UNIQUE INDEX tg_message_send_unique ON tg_message_send (
    log_id,
    chat_id
);


-- Index: tg_message_sort
CREATE INDEX tg_message_sort ON tg_message (
    chat_id,
    time
);


-- Trigger: m_candle_AFTER_INSERT
CREATE TRIGGER m_candle_AFTER_INSERT
         AFTER INSERT
            ON m_candle
          WHEN (
                   SELECT is_full
                     FROM m_instrument_config_tf
                    WHERE id = new.instrument_id AND 
                          tf_id = new.tf_id
               )
= 1
BEGIN
    UPDATE m_candle
       SET idx = (
               SELECT MAX(idx) + 1
                 FROM m_candle
                WHERE instrument_id = new.instrument_id AND 
                      tf_id = new.tf_id
           )
     WHERE id = new.id AND 
           new.idx IS NULL;
END;


-- Trigger: m_candle_request_AFTER_UPDATE_OF_count_do_insert
CREATE TRIGGER m_candle_request_AFTER_UPDATE_OF_count_do_insert
         AFTER UPDATE OF count
            ON m_candle_request
          WHEN new.count > 0 AND 
               new.tf_id = 5
BEGIN
    INSERT INTO m_candle_request (
                                     instrument_id,
                                     tf_id,
                                     time_start,
                                     time_end
                                 )
                                 SELECT new.instrument_id,
                                        new.tf_id,
                                        strftime('%Y-%m-%dT00:00:00Z', new.time_start, '-1 year') time_start,
                                        strftime('%Y-%m-%dT00:00:00Z', new.time_start) time_end
                                  WHERE NOT EXISTS (
                                                SELECT 1
                                                  FROM m_candle_request
                                                 WHERE instrument_id = new.instrument_id AND 
                                                       tf_id = new.tf_id AND 
                                                       time_end = (strftime('%Y-%m-%dT00:00:00Z', new.time_start) ) 
                                            );
    INSERT INTO m_candle_request (
                                     instrument_id,
                                     tf_id,
                                     time_start,
                                     time_end
                                 )
                                 SELECT c.instrument_id,
                                        ctf.tf_id,
                                        strftime('%Y-%m-%dT00:00:00Z', c.time, 'unixepoch') time_start,
                                        strftime('%Y-%m-%dT00:00:00Z', c.time, 'unixepoch', '+1 day') time_end
                                   FROM m_candle c,
                                        m_instrument_config_tf ctf ON ctf.id = c.instrument_id
                                  WHERE c.instrument_id = new.instrument_id AND 
                                        c.tf_id = 5 AND 
                                        ctf.tf_id <> 5 AND 
                                        NOT EXISTS (
                                                SELECT 1
                                                  FROM m_candle_request
                                                 WHERE instrument_id = c.instrument_id AND 
                                                       tf_id = ctf.tf_id AND 
                                                       time_end = (strftime('%Y-%m-%dT00:00:00Z', c.time, 'unixepoch') ) 
                                            )
                                  ORDER BY c.time DESC;
END;


-- Trigger: m_candle_request_AFTER_UPDATE_OF_count_is_full_v1
CREATE TRIGGER m_candle_request_AFTER_UPDATE_OF_count_is_full_v1
         AFTER UPDATE OF count
            ON m_candle_request
          WHEN new.count = 0
BEGIN
    UPDATE m_instrument_config_tf
       SET is_full = a.is_full
      FROM (
               SELECT (new.tf_id = 5 OR 
                       COUNT( * ) = (
                                        SELECT COUNT( * ) 
                                          FROM m_candle_request
                                         WHERE instrument_id = cr.instrument_id AND 
                                               tf_id = cr.tf_id AND 
                                               time_end >= new.time_end AND 
                                               time_end <= strftime('%Y-%m-%dT00:00:00Z', new.time_end, '+100 days') AND 
                                               done > 0 AND 
                                               count = 0
                                    )
                      ) is_full
                 FROM m_candle_request cr
                WHERE instrument_id = new.instrument_id AND 
                      tf_id = new.tf_id AND 
                      time_end >= new.time_end AND 
                      time_end <= strftime('%Y-%m-%dT00:00:00Z', new.time_end, '+100 days') AND 
                      done > 0
           )
           a
     WHERE m_instrument_config_tf.id = new.instrument_id AND 
           m_instrument_config_tf.tf_id = new.tf_id AND 
           m_instrument_config_tf.is_full = 0;
    UPDATE m_instrument_config_tf
       SET is_full = a.is_full
      FROM (
               SELECT (
                          SELECT is_full
                            FROM m_instrument_config_tf
                           WHERE id = new.instrument_id AND 
                                 tf_id = 5
                      )
=                     1 AND 
                      COUNT( * ) = (
                                       SELECT COUNT( * ) 
                                         FROM m_candle_request
                                        WHERE instrument_id = cr.instrument_id AND 
                                              done > 0
                                   )
                      is_full
                 FROM m_candle_request cr
                WHERE instrument_id = new.instrument_id
           )
           a
     WHERE m_instrument_config_tf.id = new.instrument_id AND 
           m_instrument_config_tf.is_full = 0;
END;


-- Trigger: m_candle_request_AFTER_UPDATE_OF_count_is_full_v2
CREATE TRIGGER m_candle_request_AFTER_UPDATE_OF_count_is_full_v2
         AFTER UPDATE OF count
            ON m_candle_request
          WHEN new.count IS NOT NULL AND 
               (
                   SELECT is_full
                     FROM m_instrument_config_tf
                    WHERE id = new.instrument_id AND 
                          tf_id = 5
               )
=              1 AND 
               (
                   SELECT is_full
                     FROM m_instrument_config_tf
                    WHERE id = new.instrument_id AND 
                          tf_id = new.tf_id
               )
=              0
BEGIN
    UPDATE m_instrument_config_tf
       SET is_full = a.is_full
      FROM (
               SELECT COUNT( * ) = (
                                       SELECT COUNT( * ) 
                                         FROM m_candle_request
                                        WHERE instrument_id = cr.instrument_id AND 
                                              tf_id = cr.tf_id AND 
                                              done > 0
                                   )
                      is_full
                 FROM m_candle_request cr
                WHERE instrument_id = new.instrument_id AND 
                      tf_id = new.tf_id
           )
           a
     WHERE m_instrument_config_tf.id = new.instrument_id AND 
           m_instrument_config_tf.tf_id = new.tf_id AND 
           m_instrument_config_tf.is_full = 0;
END;


-- Trigger: m_candle_request_AFTER_UPDATE_OF_count_is_full_v3
CREATE TRIGGER m_candle_request_AFTER_UPDATE_OF_count_is_full_v3
         AFTER UPDATE OF count
            ON m_candle_request
          WHEN new.count IS NOT NULL
BEGIN
    UPDATE m_instrument_config_tf
       SET is_full = 1
      FROM (
               SELECT instrument_id,
                      tf_id
                 FROM m_candle_request cr
                WHERE done > 0
                GROUP BY instrument_id,
                         tf_id
               HAVING MIN(time_end) <= (
                                           SELECT IFNULL(time_limit, 0) 
                                             FROM m_instrument_config_tf
                                            WHERE instrument_id = cr.instrument_id AND 
                                                  tf_id = cr.tf_id
                                       )
           )
           a
     WHERE m_instrument_config_tf.id = a.instrument_id AND 
           m_instrument_config_tf.tf_id = a.tf_id AND 
           m_instrument_config_tf.is_full = 0;
END;


-- Trigger: m_candle_temp_AFTER_INSERT_cmd_prepare
CREATE TRIGGER m_candle_temp_AFTER_INSERT_cmd_prepare
         AFTER INSERT
            ON m_candle_temp
          WHEN (
                   SELECT algo
                     FROM m_input_trade
               )
=              1 AND 
               (
                   SELECT SUM(is_full) = COUNT(id) is_full
                     FROM m_instrument_config_tf
               )
BEGIN
    INSERT INTO m_cmd_prepare (
                                  expert_id,
                                  instrument_id,
                                  lot,
                                  side_id,
                                  type_id,
                                  time
                              )
                              SELECT expert_id,
                                     instrument_id,
                                     lot,
                                     side_id,
                                     type_id,
                                     time
                                FROM m_signal_active sa
                               WHERE instrument_id = new.instrument_id AND 
                                     NOT EXISTS (
                                             SELECT 1
                                               FROM m_cmd_prepare
                                              WHERE expert_id = sa.expert_id AND 
                                                    instrument_id = sa.instrument_id AND 
                                                    side_id = sa.side_id AND 
                                                    type_id = sa.type_id AND 
                                                    time = sa.time
                                         );
END;


-- Trigger: m_candle_temp_AFTER_INSERT_insert_for_request
CREATE TRIGGER m_candle_temp_AFTER_INSERT_insert_for_request
         AFTER INSERT
            ON m_candle_temp
BEGIN
    INSERT INTO m_candle_request (
                                     instrument_id,
                                     tf_id,
                                     time_start,
                                     time_end
                                 )
                                 SELECT new.instrument_id,
                                        5,
                                        strftime('%Y-01-01T00:00:00Z', new.time, 'unixepoch') time_start,
                                        strftime('%Y-01-01T00:00:00Z', new.time, 'unixepoch', '+1 year') time_end
                                  WHERE NOT EXISTS (
                                                SELECT 1
                                                  FROM m_candle_request
                                                 WHERE instrument_id = new.instrument_id AND 
                                                       tf_id = 5 AND 
                                                       time_end = (strftime('%Y-01-01T00:00:00Z', new.time, 'unixepoch', '+1 year') ) 
                                            );
END;


-- Trigger: m_candle_temp_AFTER_INSERT_upsert_for_request
CREATE TRIGGER m_candle_temp_AFTER_INSERT_upsert_for_request
         AFTER INSERT
            ON m_candle_temp
          WHEN (
                   SELECT SUM(is_full) = COUNT(id) is_full
                     FROM m_instrument_config_tf
               )
AND 
               NOT EXISTS (
                       SELECT 1
                         FROM m_candle_request
                        WHERE instrument_id = new.instrument_id AND 
                              tf_id = new.tf_id AND 
                              done < 0
                        GROUP BY instrument_id,
                                 tf_id
                       HAVING MAX(time_end) 
                   )
BEGIN
    INSERT INTO m_candle_request (
                                     instrument_id,
                                     tf_id,
                                     time_start,
                                     time_end,
                                     done
                                 )
                                 SELECT DISTINCT ct.instrument_id,
                                                 ct.tf_id,
                                                 strftime(IIF(ct.tf_id = 5, '%Y-01-01T00:00:00Z', '%Y-%m-%dT00:00:00Z'), ct.time, 'unixepoch') time_start,
                                                 strftime(IIF(ct.tf_id = 5, '%Y-01-01T00:00:00Z', '%Y-%m-%dT00:00:00Z'), ct.time, 'unixepoch', IIF(ct.tf_id = 5, '+1 year', '+1 day') ) time_end,
-                                                IFNULL(cr.done, 1) done
                                   FROM m_candle_temp ct
                                        LEFT JOIN
                                        m_candle_request cr ON cr.instrument_id = ct.instrument_id AND 
                                                               cr.tf_id = ct.tf_id AND 
                                                               cr.time_end = strftime(IIF(ct.tf_id = 5, '%Y-01-01T00:00:00Z', '%Y-%m-%dT00:00:00Z'), ct.time, 'unixepoch', IIF(ct.tf_id = 5, '+1 year', '+1 day') ) 
                                  WHERE ct.instrument_id = new.instrument_id AND 
                                        ct.tf_id = new.tf_id AND 
                                        (cr.done > 0 OR 
                                         cr.done IS NULL) ON CONFLICT (
                                     instrument_id,
                                     tf_id,
                                     time_end
                                 )
                                 DO UPDATE SET done = excluded.done;
    UPDATE m_candle_request
       SET done = -done
      FROM (
               SELECT instrument_id,
                      5 tf_id,
                      strftime('%Y-01-01T00:00:00Z', (
                                   SELECT MAX(time) 
                                     FROM m_candle
                                    WHERE instrument_id = ct.instrument_id
                                    GROUP BY instrument_id
                               ), 'unixepoch', '+1 year') time_end
                 FROM m_candle_temp ct
                WHERE new.instrument_id
                GROUP BY instrument_id
               HAVING strftime('%Y-%m-%dT00:00:00Z', MAX(time), 'unixepoch') > strftime('%Y-%m-%dT00:00:00Z', (
                                                                                            SELECT MAX(time) 
                                                                                              FROM m_candle
                                                                                             WHERE instrument_id = ct.instrument_id
                                                                                             GROUP BY instrument_id
                                                                                        ), 'unixepoch', '+1 day') 
           )
           a
     WHERE m_candle_request.instrument_id = a.instrument_id AND 
           m_candle_request.tf_id = a.tf_id AND 
           m_candle_request.time_end = a.time_end AND 
           m_candle_request.done > 0;
END;


-- Trigger: m_candle_temp_BEFORE_INSERT
CREATE TRIGGER m_candle_temp_BEFORE_INSERT
        BEFORE INSERT
            ON m_candle_temp
          WHEN EXISTS (
    SELECT 1
      FROM m_candle
     WHERE instrument_id = new.instrument_id AND 
           tf_id = new.tf_id AND 
           time = new.time
)
BEGIN
    SELECT RAISE(IGNORE);
END;


-- Trigger: m_cmd_AFTER_UPDATE_error
CREATE TRIGGER m_cmd_AFTER_UPDATE_error
         AFTER UPDATE
            ON m_cmd
          WHEN new.type_id = 1 AND 
               old.result IS NULL AND 
               new.result IS NOT NULL AND 
               json_extract(new.result, '$.code') IS NOT NULL
BEGIN
    INSERT INTO m_log (
                          type_id,
                          description
                      )
                      VALUES (
                          3,
                          'order error:' || new.result
                      );
END;


-- Trigger: m_cmd_AFTER_UPDATE_OF_result_demo_on
CREATE TRIGGER m_cmd_AFTER_UPDATE_OF_result_demo_on
         AFTER UPDATE OF result
            ON m_cmd
          WHEN new.result IS NOT NULL AND 
               new.type_id = 4
BEGIN
    INSERT INTO m_cmd (
                          type_id,
                          params
                      )
                      VALUES (
                          3,
                          json_set(new.result, '$.amount', json('{"currency":"rub","units":"100000","nano":0}') ) 
                      ),
                      (
                          3,
                          json_set(new.result, '$.amount', json('{"currency":"usd","units":"100000","nano":0}') ) 
                      ),
                      (
                          3,
                          json_set(new.result, '$.amount', json('{"currency":"eur","units":"100000","nano":0}') ) 
                      );
END;


-- Trigger: m_cmd_AFTER_UPDATE_OF_result_demo_on_off
CREATE TRIGGER m_cmd_AFTER_UPDATE_OF_result_demo_on_off
         AFTER UPDATE OF result
            ON m_cmd
          WHEN new.result IS NOT NULL AND 
               new.type_id IN (4, 5) 
BEGIN
    UPDATE poll
       SET on_check = 1
     WHERE route_id IN (132) AND 
           on_check = 0 AND 
           is_active = 1;
END;


-- Trigger: m_cmd_AFTER_UPDATE_order
CREATE TRIGGER m_cmd_AFTER_UPDATE_order
         AFTER UPDATE
            ON m_cmd
          WHEN new.type_id = 1 AND 
               old.result IS NULL AND 
               new.result IS NOT NULL AND 
               json_extract(new.result, '$.orderId') IS NOT NULL
BEGIN
    INSERT INTO m_cmd (
                          prepare_id,
                          type_id,
                          params
                      )
                      SELECT new.prepare_id,
                             6 type_id,
                             json_object('accountId', json_extract(params, '$.accountId'), 'orderId', json_extract(result, '$.orderId') ) params
                        FROM m_cmd
                       WHERE id = new.id;
    INSERT INTO m_cmd_order SELECT *
                              FROM m_uni_cmd_order;
END;


-- Trigger: m_cmd_BEFORE_INSERT
CREATE TRIGGER m_cmd_BEFORE_INSERT
        BEFORE INSERT
            ON m_cmd
          WHEN EXISTS (
    SELECT 1
      FROM m_cmd
     WHERE type_id = new.type_id AND 
           params = new.params
)
BEGIN
    UPDATE m_cmd
       SET result = NULL
     WHERE type_id = new.type_id AND 
           params = new.params AND 
           result IS NOT NULL;
    SELECT RAISE(IGNORE);
END;


-- Trigger: m_cmd_order_AFTER_INSERT
CREATE TRIGGER m_cmd_order_AFTER_INSERT
         AFTER INSERT
            ON m_cmd_order
BEGIN
    INSERT INTO m_log (
                          type_id,
                          description
                      )
                      VALUES (
                          2,
                          printf('Order: %s, %s, %s, %s, %s, %s, %s, %s, %s', new.orderId, new.figi, new.status, new.currency, new.direction, new.lotsRequested, new.lotsExecuted, new.executedOrderPrice, new.totalOrderAmount) 
                      );
    UPDATE poll
       SET on_check = 1
     WHERE (
               SELECT demo
                 FROM m_input_trade
           )
=          1 AND 
           route_id IN (135, 136, 137) AND 
           on_check = 0 AND 
           is_active = 1;
    UPDATE poll
       SET on_check = 1
     WHERE (
               SELECT real
                 FROM m_input_trade
           )
=          1 AND 
           route_id IN (123, 124, 128, 142, 146) AND 
           on_check = 0 AND 
           is_active = 1;
END;


-- Trigger: m_cmd_prepare_AFTER_INSERT_demo
CREATE TRIGGER m_cmd_prepare_AFTER_INSERT_demo
         AFTER INSERT
            ON m_cmd_prepare
          WHEN (
                   SELECT mode
                     FROM m_experts
                    WHERE id = new.expert_id
               )
=              3 OR 
               (new.expert_id IS NULL AND 
                (
                    SELECT demo
                      FROM m_input_trade
                )
=               1) 
BEGIN
    INSERT INTO m_cmd (
                          prepare_id,
                          type_id,
                          params
                      )
                      SELECT c.id prepare_id,
                             1 type_id,
                             json_object('accountId', a.uid, 'direction', IIF(c.side_id = 0, 'ORDER_DIRECTION_BUY', 'ORDER_DIRECTION_SELL'), 'figi', i.figi, 'orderId', c.id, 'orderType', IIF(c.price IS NULL, 'ORDER_TYPE_MARKET', 'ORDER_TYPE_LIMIT'), 'price', IIF(c.price IS NULL, json('{"units":"0","nano":0}'), json_object('units', substr(c.price, 0, instr(c.price, '.') ), 'nano', CAST (CAST (substr(c.price, instr(c.price, '.') ) AS DOUBLE) * 1000000000 AS INT) ) ), 'quantity', c.lot) params
                        FROM m_uni_demo_accounts a,
                             m_cmd_prepare c,
                             m_instrument i ON i.id = c.instrument_id
                       WHERE c.id = new.id AND 
                             a.accessLevel = 'ACCOUNT_ACCESS_LEVEL_FULL_ACCESS';
END;


-- Trigger: m_cmd_prepare_AFTER_INSERT_real
CREATE TRIGGER m_cmd_prepare_AFTER_INSERT_real
         AFTER INSERT
            ON m_cmd_prepare
          WHEN (
                   SELECT mode
                     FROM m_experts
                    WHERE id = new.expert_id
               )
=              4 OR 
               (new.expert_id IS NULL AND 
                (
                    SELECT real
                      FROM m_input_trade
                )
=               1) 
BEGIN
    INSERT INTO m_cmd (
                          prepare_id,
                          type_id,
                          params
                      )
                      SELECT c.id prepare_id,
                             1 type_id,
                             json_object('accountId', a.uid, 'direction', IIF( (c.side_id = 0 AND 
                                                                                c.type_id = 0) OR 
                                                                               (c.side_id = 1 AND 
                                                                                c.type_id = 1), 'ORDER_DIRECTION_BUY', 'ORDER_DIRECTION_SELL'), 'figi', i.figi, 'orderId', c.id, 'orderType', IIF(c.price IS NULL, 'ORDER_TYPE_MARKET', 'ORDER_TYPE_LIMIT'), 'price', IIF(c.price IS NULL, json('{"units":"0","nano":0}'), json_object('units', substr(c.price, 0, instr(c.price, '.') ), 'nano', CAST (CAST (substr(c.price, instr(c.price, '.') ) AS DOUBLE) * 1000000000 AS INT) ) ), 'quantity', c.lot) params
                        FROM m_uni_accounts a,
                             m_cmd_prepare c,
                             m_instrument i ON i.id = c.instrument_id
                       WHERE c.id = new.id AND 
                             a.accessLevel = 'ACCOUNT_ACCESS_LEVEL_FULL_ACCESS';
END;


-- Trigger: m_cmd_prepare_BEFORE_INSERT
CREATE TRIGGER m_cmd_prepare_BEFORE_INSERT
        BEFORE INSERT
            ON m_cmd_prepare
          WHEN new.type_id = (
                                 SELECT type_id
                                   FROM m_cmd_prepare
                                  WHERE expert_id = new.expert_id AND 
                                        instrument_id = new.instrument_id AND 
                                        side_id = new.side_id
                                  GROUP BY expert_id,
                                           instrument_id,
                                           side_id
                                 HAVING MAX(time) 
                             )
BEGIN
    SELECT RAISE(IGNORE);
END;


-- Trigger: m_expert_uni_AFTER_INSERT
CREATE TRIGGER m_expert_uni_AFTER_INSERT
         AFTER INSERT
            ON m_expert_uni
BEGIN
    INSERT OR IGNORE INTO m_signal (
                                       expert_uni_id,
                                       time
                                   )
                                   SELECT expert_uni_id,
                                          time
                                     FROM m_experts_new_signals;
END;


-- Trigger: m_indicator_AFTER_INSERT
CREATE TRIGGER m_indicator_AFTER_INSERT
         AFTER INSERT
            ON m_indicator
BEGIN
    INSERT INTO m_buffer (
                             indi_id,
                             number
                         )
                         SELECT new.id,
                                x
                           FROM ds_1000
                          LIMIT IFNULL(new.buffers, 1);
    INSERT INTO m_indicator (
                                instrument_id,
                                tf_id,
                                name,
                                buffers,
                                params
                            )
                            SELECT n.*
                              FROM (
                                       SELECT IFNULL(json_extract(value, '$.instrument_id'), new.instrument_id) instrument_id,
                                              IFNULL(json_extract(value, '$.tf_id'), new.tf_id) tf_id,
                                              json_extract(value, '$.name') name,
                                              IFNULL(json_extract(value, '$.buffers'), 1) buffers,
                                              json_extract(value, '$.params') params
                                         FROM json_each(new.params) 
                                        WHERE json_type(new.params) = 'array'
                                   )
                                   n
                                   LEFT JOIN
                                   m_indicator o ON n.instrument_id = o.instrument_id AND 
                                                    n.tf_id = o.tf_id AND 
                                                    n.name = o.name AND 
                                                    n.params = o.params
                             WHERE o.id IS NULL;
END;


-- Trigger: m_indicator_AFTER_UPDATE
CREATE TRIGGER m_indicator_AFTER_UPDATE
         AFTER UPDATE OF params
            ON m_indicator
BEGIN
    DELETE FROM m_buffer
          WHERE indi_id = new.id;
    INSERT INTO m_buffer (
                             indi_id,
                             number
                         )
                         SELECT new.id,
                                x
                           FROM ds_1000
                          LIMIT IFNULL(new.buffers, 1);
    INSERT INTO m_indicator (
                                instrument_id,
                                tf_id,
                                name,
                                buffers,
                                params
                            )
                            SELECT n.*
                              FROM (
                                       SELECT IFNULL(json_extract(value, '$.instrument_id'), new.instrument_id) instrument_id,
                                              IFNULL(json_extract(value, '$.tf_id'), new.tf_id) tf_id,
                                              json_extract(value, '$.name') name,
                                              IFNULL(json_extract(value, '$.buffers'), 1) buffers,
                                              json_extract(value, '$.params') params
                                         FROM json_each(new.params) 
                                        WHERE json_type(new.params) = 'array'
                                   )
                                   n
                                   LEFT JOIN
                                   m_indicator o ON n.instrument_id = o.instrument_id AND 
                                                    n.tf_id = o.tf_id AND 
                                                    n.name = o.name AND 
                                                    n.params = o.params
                             WHERE o.id IS NULL;
END;


-- Trigger: m_indicator_BEFORE_INSERT
CREATE TRIGGER m_indicator_BEFORE_INSERT
        BEFORE INSERT
            ON m_indicator
BEGIN
    SELECT CASE WHEN new.params IS NOT NULL AND 
                     NOT json_valid(new.params) THEN RAISE(ROLLBACK, "params is not valid for indicator") WHEN EXISTS (
                   SELECT id
                     FROM m_indicator
                    WHERE name = new.name AND 
                          params IS NULL
               )
           THEN RAISE(ROLLBACK, "indicator already exists") END;
END;


-- Trigger: m_indicator_BEFORE_UPDATE
CREATE TRIGGER m_indicator_BEFORE_UPDATE
        BEFORE UPDATE
            ON m_indicator
BEGIN
    SELECT CASE WHEN new.params IS NOT NULL AND 
                     NOT json_valid(new.params) THEN RAISE(ROLLBACK, "params is not valid for indicator") WHEN EXISTS (
                   SELECT id
                     FROM m_indicator
                    WHERE name = new.name AND 
                          params IS NULL
               )
           THEN RAISE(ROLLBACK, "indicator already exists") END;
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_clear
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_clear
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'clear' AND 
               old.value <> new.value AND 
               new.value = 1
BEGIN
    DELETE FROM m_asset;
    DELETE FROM m_instrument;
    DELETE FROM response;
    DELETE FROM m_cmd;
    DELETE FROM m_log;
    DELETE FROM tg_message_send;
    UPDATE m_input
       SET value = 0
     WHERE name = 'clear' AND 
           value = 1;
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_experts
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_experts
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'experts'
BEGIN
    INSERT INTO m_indicator (
                                instrument_id,
                                tf_id,
                                name,
                                buffers,
                                description,
                                params
                            )
                            SELECT n.*
                              FROM (
                                       SELECT DISTINCT e.instrument_id,
                                                       IFNULL(json_extract(i.value, '$.timeFrame'), tf.id) tf_id,
                                                       json_extract(i.value, '$.name') name,
                                                       IFNULL(json_extract(i.value, '$.buffers'), 1) buffers,
                                                       json_extract(i.value, '$.description') description,
                                                       json_extract(i.value, '$.params') params
                                         FROM m_experts e,
                                              json_each(e.params, '$.actions') a,
                                              json_each(a.value, '$.indicators') i,
                                              m_enum_tf tf ON tf.seconds = IFNULL(json_extract(e.params, '$.timeFrame'), 86400) 
                                   )
                                   n
                                   LEFT JOIN
                                   m_indicator o ON n.instrument_id = o.instrument_id AND 
                                                    n.tf_id = o.tf_id AND 
                                                    n.name = o.name AND 
                                                    n.params = o.params
                             WHERE o.id IS NULL;
    INSERT INTO m_expert_uni (
                                 expert_id,
                                 instrument_id,
                                 tf_id,
                                 barStart,
                                 lot,
                                 side_id,
                                 type_id,
                                 activeSeconds,
                                 indi_id,
                                 iValue
                             )
                             SELECT e.id expert_id,
                                    e.instrument_id,
                                    tf.id tf_id,
                                    IFNULL(json_extract(e.params, '$.barStart'), 1) barStart,-- MAX(IFNULL(e.lot, IFNULL(ui.lot, 0) ), IFNULL(ui.lot, 0) ) lot,
                                    IFNULL(e.lot, 0) lot,
                                    IIF(json_extract(a.value, '$.side') = 'short', 1, 0) side_id,
                                    IIF(json_extract(a.value, '$.type') = 'close', 1, 0) type_id,
                                    IFNULL(json_extract(a.value, '$.activeSeconds'), 60) activeSeconds,
                                    indi.id indi_id,
                                    json_extract(i.value, '$.value') iValue
                               FROM m_experts e,
                                    json_each(e.params, '$.actions') a,
                                    json_each(a.value, '$.indicators') i,
                                    m_enum_tf tf ON tf.seconds = IFNULL(json_extract(e.params, '$.timeFrame'), 86400),
                                    m_indicator indi ON indi.instrument_id = IFNULL(json_extract(i.value, '$.instrumentId'), e.instrument_id) AND 
                                                        indi.tf_id = IFNULL(json_extract(i.value, '$.timeFrame'), tf.id) AND 
                                                        indi.name = json_extract(i.value, '$.name') AND 
                                                        indi.params = json_extract(i.value, '$.params') 
                                    LEFT JOIN
                                    m_uni_instruments ui ON ui.instrument_id = e.instrument_id
                              WHERE true ON CONFLICT (
                                 expert_id,
                                 instrument_id,
                                 tf_id,
                                 indi_id,
                                 iValue
                             )
                             DO UPDATE SET lot = excluded.lot WHERE lot <> excluded.lot;
    DELETE FROM m_expert_uni
          WHERE NOT EXISTS (
                        SELECT 1
                          FROM (
                                   SELECT e.id expert_id,
                                          e.instrument_id,
                                          tf.id tf_id,
                                          indi.id indi_id,
                                          json_extract(i.value, '$.value') iValue
                                     FROM m_experts e,
                                          json_each(e.params, '$.actions') a,
                                          json_each(a.value, '$.indicators') i,
                                          m_enum_tf tf ON tf.seconds = IFNULL(json_extract(e.params, '$.timeFrame'), 86400),
                                          m_indicator indi ON indi.instrument_id = IFNULL(json_extract(i.value, '$.instrumentId'), e.instrument_id) AND 
                                                              indi.tf_id = IFNULL(json_extract(i.value, '$.timeFrame'), tf.id) AND 
                                                              indi.name = json_extract(i.value, '$.name') AND 
                                                              indi.params = json_extract(i.value, '$.params') 
                               )
                               a
                         WHERE a.expert_id = m_expert_uni.expert_id AND 
                               a.instrument_id = m_expert_uni.instrument_id AND 
                               a.tf_id = m_expert_uni.tf_id AND 
                               a.indi_id = m_expert_uni.indi_id AND 
                               a.iValue = m_expert_uni.iValue
                    );
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_init
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_init
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'init' AND 
               old.value <> new.value AND 
               new.value = 1
BEGIN
    INSERT OR IGNORE INTO m_instrument_download (
                                                    id,
                                                    get_book,
                                                    get_trades,
                                                    ticker,
                                                    figi
                                                )
                                                SELECT id,
                                                       get_book,
                                                       get_trades,
                                                       ticker,
                                                       figi
                                                  FROM m_input_instruments_download;
    INSERT INTO m_instrument_config_tf (
                                           id,
                                           tf_id,
                                           time_limit
                                       )
                                       SELECT id,
                                              tf_id,
                                              time_limit
                                         FROM m_input_instruments_config_tf
                                        WHERE true ON CONFLICT (
                                           id,
                                           tf_id
                                       )
                                       DO UPDATE SET time_limit = excluded.time_limit;
    INSERT INTO m_indicator (
                                instrument_id,
                                tf_id,
                                name,
                                buffers,
                                description,
                                params
                            )
                            SELECT n.*
                              FROM (
                                       SELECT DISTINCT e.instrument_id,
                                                       IFNULL(json_extract(j.value, '$.timeFrame'), tf.id) tf_id,
                                                       json_extract(j.value, '$.name') name,
                                                       IFNULL(json_extract(j.value, '$.buffers'), 1) buffers,
                                                       json_extract(j.value, '$.description') description,
                                                       json_extract(j.value, '$.params') params
                                         FROM m_experts e,
                                              json_each(e.params, '$.actions') a,
                                              json_each(a.value, '$.indicators') i,
                                              json_each(i.value, '$.params') j,
                                              m_enum_tf tf ON tf.seconds = IFNULL(json_extract(e.params, '$.timeFrame'), 86400) 
                                        WHERE json_type(i.value, '$.params') = 'array' AND 
                                              json_array_length(i.value, '$.params') > 0
                                   )
                                   n
                                   LEFT JOIN
                                   m_indicator o ON n.instrument_id = o.instrument_id AND 
                                                    n.tf_id = o.tf_id AND 
                                                    n.name = o.name AND 
                                                    n.params = o.params
                             WHERE o.id IS NULL;
    INSERT INTO m_indicator (
                                instrument_id,
                                tf_id,
                                name,
                                buffers,
                                description,
                                params
                            )
                            SELECT n.*
                              FROM (
                                       SELECT DISTINCT e.instrument_id,
                                                       IFNULL(json_extract(i.value, '$.timeFrame'), tf.id) tf_id,
                                                       json_extract(i.value, '$.name') name,
                                                       IFNULL(json_extract(i.value, '$.buffers'), 1) buffers,
                                                       json_extract(i.value, '$.description') description,
                                                       json_extract(i.value, '$.params') params
                                         FROM m_experts e,
                                              json_each(e.params, '$.actions') a,
                                              json_each(a.value, '$.indicators') i,
                                              m_enum_tf tf ON tf.seconds = IFNULL(json_extract(e.params, '$.timeFrame'), 86400) 
                                   )
                                   n
                                   LEFT JOIN
                                   m_indicator o ON n.instrument_id = o.instrument_id AND 
                                                    n.tf_id = o.tf_id AND 
                                                    n.name = o.name AND 
                                                    n.params = o.params
                             WHERE o.id IS NULL;
    INSERT INTO m_expert_uni (
                                 expert_id,
                                 instrument_id,
                                 tf_id,
                                 barStart,
                                 lot,
                                 side_id,
                                 type_id,
                                 activeSeconds,
                                 indi_id,
                                 iValue
                             )
                             SELECT e.id expert_id,
                                    e.instrument_id,
                                    tf.id tf_id,
                                    IFNULL(json_extract(e.params, '$.barStart'), 1) barStart,-- MAX(IFNULL(e.lot, IFNULL(ui.lot, 0) ), IFNULL(ui.lot, 0) ) lot,
                                    IFNULL(e.lot, 0) lot,
                                    IIF(json_extract(a.value, '$.side') = 'short', 1, 0) side_id,
                                    IIF(json_extract(a.value, '$.type') = 'close', 1, 0) type_id,
                                    IFNULL(json_extract(a.value, '$.activeSeconds'), 60) activeSeconds,
                                    indi.id indi_id,
                                    json_extract(i.value, '$.value') iValue
                               FROM m_experts e,
                                    json_each(e.params, '$.actions') a,
                                    json_each(a.value, '$.indicators') i,
                                    m_enum_tf tf ON tf.seconds = IFNULL(json_extract(e.params, '$.timeFrame'), 86400),
                                    m_indicator indi ON indi.instrument_id = IFNULL(json_extract(i.value, '$.instrumentId'), e.instrument_id) AND 
                                                        indi.tf_id = IFNULL(json_extract(i.value, '$.timeFrame'), tf.id) AND 
                                                        indi.name = json_extract(i.value, '$.name') AND 
                                                        indi.params = json_extract(i.value, '$.params') 
                                    LEFT JOIN
                                    m_uni_instruments ui ON ui.instrument_id = e.instrument_id
                              WHERE true ON CONFLICT (
                                 expert_id,
                                 instrument_id,
                                 tf_id,
                                 indi_id,
                                 iValue
                             )
                             DO UPDATE SET lot = excluded.lot WHERE lot <> excluded.lot;
    UPDATE m_input
       SET value = 0
     WHERE name = 'init' AND 
           value = 1;
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_inputJson
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_inputJson
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'inputJson'
BEGIN
    UPDATE m_input
       SET value = a.value
      FROM (
               SELECT j.[key],
                      j.value
                 FROM m_input i,
                      json_each(i.value) j
                WHERE i.name = 'inputJson'
           )
           a
     WHERE m_input.name = a.[key] AND 
           m_input.value <> a.value;
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_tgToken
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_tgToken
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'tgToken' AND 
               old.value <> new.value
BEGIN
    UPDATE server
       SET host = [replace](host, old.value, new.value) 
     WHERE instr(host, old.value) > 0;
    UPDATE poll
       SET is_active = 1
     WHERE route_id IN (149, 150);
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_timeFrames
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_timeFrames
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'timeFrames'
BEGIN
    UPDATE m_instrument_config_tf
       SET is_full = 0
     WHERE is_full = 1;
    UPDATE m_candle_request
       SET done = 0,
           count = NULL
     WHERE done > 0 AND 
           count = 0;
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_trade
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_trade
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'trade' AND 
               json_extract(new.value, '$.token') IS NOT NULL
BEGIN
    UPDATE parameter_value
       SET value = 'Bearer ' || json_extract(new.value, '$.token') 
     WHERE id = 1 AND 
           name = 'Authorization' AND 
           value <> 'Bearer ' || json_extract(new.value, '$.token');
    UPDATE m_input
       SET value = json_set(value, '$.getData', true) 
     WHERE name = 'others';
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_trade_demo_off
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_trade_demo_off
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'trade' AND 
               json_extract(new.value, '$.token') IS NOT NULL AND 
               json_extract(old.value, '$.demo') <> json_extract(new.value, '$.demo') AND 
               json_extract(new.value, '$.demo') = 0
BEGIN
    INSERT INTO m_cmd (
                          type_id,
                          params
                      )
                      SELECT 5 type_id,
                             json_object('accountId', uid) params
                        FROM m_uni_demo_accounts;
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_trade_demo_on
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_trade_demo_on
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name = 'trade' AND 
               json_extract(new.value, '$.token') IS NOT NULL AND 
               json_extract(old.value, '$.demo') <> json_extract(new.value, '$.demo') AND 
               json_extract(new.value, '$.demo') = 1
BEGIN
    INSERT INTO m_cmd (
                          type_id
                      )
                      VALUES (
                          4
                      );
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_v1
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_v1
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name IN ('tickers', 'trades', 'books', 'others') AND 
               (
                   SELECT clearCandleHistory
                     FROM m_input_others
               )
=              1
BEGIN
    DELETE FROM m_tick
          WHERE instrument_id IN (
        SELECT DISTINCT i.instrument_id
          FROM m_tick i
               LEFT JOIN
               m_input_instruments_download ii ON i.instrument_id = ii.id
         WHERE ii.id IS NULL
    );
    DELETE FROM m_candle_request
          WHERE instrument_id IN (
        SELECT DISTINCT i.instrument_id
          FROM m_candle_request i
               LEFT JOIN
               m_input_instruments_download ii ON i.instrument_id = ii.id
         WHERE ii.id IS NULL
    );
    DELETE FROM m_candle
          WHERE instrument_id IN (
        SELECT DISTINCT i.instrument_id
          FROM m_candle i
               LEFT JOIN
               m_input_instruments_download ii ON i.instrument_id = ii.id
         WHERE ii.id IS NULL
    );
    DELETE FROM m_candle_temp
          WHERE instrument_id IN (
        SELECT DISTINCT i.instrument_id
          FROM m_candle_temp i
               LEFT JOIN
               m_input_instruments_download ii ON i.instrument_id = ii.id
         WHERE ii.id IS NULL
    );
END;


-- Trigger: m_input_AFTER_UPDATE_OF_value_v2
CREATE TRIGGER m_input_AFTER_UPDATE_OF_value_v2
         AFTER UPDATE OF value
            ON m_input
          WHEN new.name IN ('tickers', 'trades', 'books', 'others', 'timeFrames') 
BEGIN
    DELETE FROM m_instrument_download
          WHERE id IN (
        SELECT DISTINCT i.id
          FROM m_instrument_download i
               LEFT JOIN
               m_input_instruments_download ii ON i.id = ii.id
         WHERE ii.id IS NULL
    );
    DELETE FROM m_instrument_config_tf
          WHERE id IN (
        SELECT DISTINCT i.id
          FROM m_instrument_config_tf i
               LEFT JOIN
               m_input_instruments_download ii ON i.id = ii.id
         WHERE ii.id IS NULL
    );
    INSERT OR IGNORE INTO m_instrument_download (
                                                    id,
                                                    get_book,
                                                    get_trades,
                                                    ticker,
                                                    figi
                                                )
                                                SELECT id,
                                                       get_book,
                                                       get_trades,
                                                       ticker,
                                                       figi
                                                  FROM m_input_instruments_download;
    INSERT INTO m_instrument_config_tf (
                                           id,
                                           tf_id,
                                           time_limit
                                       )
                                       SELECT id,
                                              tf_id,
                                              time_limit
                                         FROM m_input_instruments_config_tf
                                        WHERE true ON CONFLICT (
                                           id,
                                           tf_id
                                       )
                                       DO UPDATE SET time_limit = excluded.time_limit;
END;


-- Trigger: m_input_BEFORE_DELETE
CREATE TRIGGER m_input_BEFORE_DELETE
        BEFORE DELETE
            ON m_input
BEGIN
    SELECT RAISE(FAIL, "Critical deletion - error!");
END;


-- Trigger: m_input_BEFORE_UPDATE
CREATE TRIGGER m_input_BEFORE_UPDATE
        BEFORE UPDATE
            ON m_input
          WHEN new.name IN ('inputJson', 'timeFrames', 'tickers', 'experts', 'trade', 'books', 'trades', 'others', 'tgUsers', 'tgLogTypes') 
BEGIN
    SELECT IIF(old.name <> new.name, RAISE(FAIL, ["name" is const!]), 1);
    SELECT IIF(new.value IS NOT NULL AND 
               NOT json_valid(new.value), RAISE(FAIL, ["Value" is not valid json!]), 1);
END;


-- Trigger: m_instrument_config_tf_AFTER_UPDATE
CREATE TRIGGER m_instrument_config_tf_AFTER_UPDATE
         AFTER UPDATE
            ON m_instrument_config_tf
          WHEN old.is_full <> new.is_full AND 
               new.is_full = 1
BEGIN
    UPDATE m_candle
       SET idx = a.idx
      FROM (
               SELECT j.value id,
                      j.[key] idx
                 FROM (
                          SELECT json_group_array(id) value
                            FROM m_candle
                           WHERE instrument_id = new.id AND 
                                 tf_id = new.tf_id
                           GROUP BY instrument_id,
                                    tf_id
                      )
                      a,
                      json_each(a.value) j
           )
           a
     WHERE m_candle.id = a.id;
    INSERT INTO m_log (
                          type_id,
                          description
                      )
                      VALUES (
                          1,
                          (
                              SELECT printf('Ticker[%s], TimeFrame[%s], fully loaded!', i.ticker, tf.name) print
                                FROM (
                                         SELECT new.id,
                                                new.tf_id
                                     )
                                     a,
                                     m_instrument i ON a.id = i.id,
                                     m_enum_tf tf ON tf.id = a.tf_id
                          )
                      );
END;


-- Trigger: m_instrument_download_AFTER_INSERT
CREATE TRIGGER m_instrument_download_AFTER_INSERT
         AFTER INSERT
            ON m_instrument_download
BEGIN
    INSERT OR IGNORE INTO m_tick (
                                     instrument_id,
                                     time_msec,
                                     price
                                 )
                                 SELECT instrument_id,
                                        time_msec,
                                        price
                                   FROM m_uni_last_prices;
END;


-- Trigger: m_log_AFTER_INSERT
CREATE TRIGGER m_log_AFTER_INSERT
         AFTER INSERT
            ON m_log
          WHEN new.type_id IN (
    SELECT j.value
      FROM m_input i,
           json_each(i.value) j
     WHERE name = 'tgLogTypes'
)
BEGIN
    INSERT OR IGNORE INTO tg_message_send (
                                              log_id,
                                              chat_id
                                          )
                                          SELECT new.id,
                                                 chat_id
                                            FROM tg_message m
                                           WHERE username IN (
                                                     SELECT j.value
                                                       FROM m_input i,
                                                            json_each(i.value) j
                                                      WHERE name = 'tgUsers'
                                                 )
                                           GROUP BY chat_id;
END;


-- Trigger: m_tick_AFTER_INSERT
CREATE TRIGGER m_tick_AFTER_INSERT
         AFTER INSERT
            ON m_tick
BEGIN
    INSERT INTO m_candle_temp (
                                  instrument_id,
                                  tf_id,
                                  time,
                                  open,
                                  high,
                                  low,
                                  close,
                                  volume
                              )
                              SELECT *
                                FROM m_candles_by_ticks
                               WHERE true ON CONFLICT (
                                  instrument_id,
                                  tf_id,
                                  time
                              )
                              DO UPDATE SET open = excluded.open,
                              high = excluded.high,
                              low = excluded.low,
                              close = excluded.close,
                              volume = excluded.volume WHERE open <> excluded.open OR 
                                                             high <> excluded.high OR 
                                                             low <> excluded.low OR 
                                                             close <> excluded.close OR 
                                                             volume <> excluded.volume;
    DELETE FROM m_tick
          WHERE strftime('%Y-%m-%dT%H:%M:00Z', time_msec / 1000, 'unixepoch') < (
                                                                                    SELECT strftime('%Y-%m-%dT%H:%M:00Z', MAX(time_msec) / 1000, 'unixepoch') time
                                                                                      FROM m_tick
                                                                                );
END;


-- Trigger: response_AFTER_INSERT
CREATE TRIGGER response_AFTER_INSERT
         AFTER INSERT
            ON response
BEGIN
    INSERT INTO response (
                             route_id,
                             urn_id,
                             time,
                             code,
                             header,
                             body
                         )
                         VALUES (
                             new.route_id,
                             new.urn_id,
                             new.time,
                             new.code,
                             new.header,
                             new.body
                         );
END;


-- Trigger: response_AFTER_UPDATE_OF_assets
CREATE TRIGGER response_AFTER_UPDATE_OF_assets
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 107 AND 
               new.urn_id = 107 AND 
               new.code = 200
BEGIN
    INSERT INTO m_enum_asset (
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT type name
                                          FROM m_api_assets
                                    )
                                    n
                                    LEFT JOIN
                                    m_enum_asset o ON n.name = o.name
                              WHERE o.id IS NULL;
    INSERT INTO m_asset (
                            type_id,
                            uid,
                            name
                        )
                        SELECT n.*
                          FROM (
                                   SELECT DISTINCT at.id type_id,
                                                   a.asset_uid uid,
                                                   IIF(a.name == '', NULL, a.name) name
                                     FROM m_api_assets a,
                                          m_enum_asset at ON at.name = a.type
                               )
                               n
                               LEFT JOIN
                               m_asset o ON n.uid = o.uid
                         WHERE o.id IS NULL;
    INSERT INTO m_enum_instrument (
                                      name
                                  )
                                  SELECT n.*
                                    FROM (
                                             SELECT DISTINCT instrumentType name
                                               FROM m_api_assets
                                         )
                                         n
                                         LEFT JOIN
                                         m_enum_instrument o ON n.name = o.name
                                   WHERE o.id IS NULL;
    INSERT INTO m_instrument (
                                 type_id,
                                 uid,
                                 figi,
                                 ticker,
                                 class_code
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT it.id,
                                                        instrument_uid,
                                                        figi,
                                                        ticker,
                                                        classCode
                                          FROM m_api_assets a,
                                               m_enum_instrument it ON it.name = a.instrumentType
                                    )
                                    n
                                    LEFT JOIN
                                    m_instrument o ON n.figi = o.figi
                              WHERE o.id IS NULL;
    INSERT INTO m_fk_instrument (
                                    instrument_id,
                                    link_instrument_id,
                                    type,
                                    uid_original
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT i1.id instrument_id,
                                                  i2.id link_instrument_id,
                                                  json_extract(b.value, '$.type') type,
                                                  IIF(i2.id IS NULL, json_extract(b.value, '$.instrumentUid'), NULL) uid_original
                                             FROM (
                                                      SELECT instrument_uid,
                                                             links
                                                        FROM m_api_assets
                                                       WHERE links <> '[]'
                                                  )
                                                  a,
                                                  json_each(a.links) b
                                                  LEFT JOIN
                                                  m_instrument i1 ON i1.uid = a.instrument_uid
                                                  LEFT JOIN
                                                  m_instrument i2 ON i2.uid = json_extract(b.value, '$.instrumentUid') 
                                       )
                                       n
                                       LEFT JOIN
                                       m_fk_instrument o ON (n.instrument_id = o.instrument_id AND 
                                                             n.link_instrument_id = o.link_instrument_id) OR 
                                                            (n.instrument_id = o.instrument_id AND 
                                                             n.uid_original = o.uid_original) 
                                 WHERE o.instrument_id IS NULL;
    UPDATE m_input
       SET value = 1
     WHERE name = 'init' AND 
           value = 0;
END;


-- Trigger: response_AFTER_UPDATE_OF_auth
CREATE TRIGGER response_AFTER_UPDATE_OF_auth
         AFTER UPDATE OF body
            ON response
          WHEN new.code = 401 AND 
               new.route_id NOT IN (148, 149, 150) 
BEGIN
    UPDATE m_input
       SET value = json_set(value, '$.getData', false) 
     WHERE name = 'others';
END;


-- Trigger: response_AFTER_UPDATE_OF_bonds
CREATE TRIGGER response_AFTER_UPDATE_OF_bonds
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 98 AND 
               new.urn_id = 98 AND 
               new.code = 200
BEGIN
    UPDATE m_instrument
       SET isin = s.isin,
           name = s.name
      FROM m_api_bonds s
     WHERE m_instrument.figi = s.figi AND 
           (NOT IFNULL(m_instrument.isin = s.isin, 0) OR 
            NOT IFNULL(m_instrument.name = s.name, 0) );
    INSERT INTO m_instrument (
                                 type_id,
                                 figi,
                                 ticker,
                                 class_code,
                                 isin,
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT it.id type_id,
                                                        s.figi,
                                                        s.ticker,
                                                        s.classCode,
                                                        IIF(s.isin == '', NULL, s.isin) isin,
                                                        IIF(s.name == '', NULL, s.name) name
                                          FROM m_api_bonds s,
                                               m_enum_instrument it ON it.name = 'bonds'
                                    )
                                    n
                                    LEFT JOIN
                                    m_instrument o ON n.figi = o.figi
                              WHERE o.id IS NULL;
    INSERT INTO m_enum_currency (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT currency name
                                             FROM m_api_bonds
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_currency o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_exchange (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT exchange name
                                             FROM m_api_bonds
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_exchange o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_trading_status (
                                          name
                                      )
                                      SELECT n.*
                                        FROM (
                                                 SELECT DISTINCT tradingStatus name
                                                   FROM m_api_bonds
                                             )
                                             n
                                             LEFT JOIN
                                             m_enum_trading_status o ON n.name = o.name
                                       WHERE o.id IS NULL;
    INSERT INTO m_enum_country (
                                   name,
                                   description
                               )
                               SELECT n.*
                                 FROM (
                                          SELECT DISTINCT countryOfRisk name,
                                                          IIF(countryOfRiskName == '', NULL, countryOfRiskName) description
                                            FROM m_api_bonds
                                           WHERE IIF(countryOfRisk == '', NULL, countryOfRisk) IS NOT NULL
                                      )
                                      n
                                      LEFT JOIN
                                      m_enum_country o ON n.name = o.name
                                WHERE o.id IS NULL;
    INSERT INTO m_enum_sector (
                                  name
                              )
                              SELECT n.*
                                FROM (
                                         SELECT DISTINCT sector name
                                           FROM m_api_bonds
                                          WHERE IIF(sector == '', NULL, sector) IS NOT NULL
                                     )
                                     n
                                     LEFT JOIN
                                     m_enum_sector o ON n.name = o.name
                               WHERE o.id IS NULL;
END;


-- Trigger: response_AFTER_UPDATE_OF_candles
CREATE TRIGGER response_AFTER_UPDATE_OF_candles
         AFTER UPDATE OF body
            ON response
          WHEN new.code = 200 AND 
               new.route_id = 115
BEGIN
    DELETE FROM response
          WHERE route_id = 115 AND 
                urn_id <> new.urn_id;
    INSERT OR IGNORE INTO m_candle (
                                       instrument_id,
                                       tf_id,
                                       time,
                                       open,
                                       high,
                                       low,
                                       close,
                                       volume
                                   )
                                   SELECT instrument_id,
                                          tf_id,
                                          time,
                                          open,
                                          high,
                                          low,
                                          close,
                                          volume
                                     FROM m_uni_candles;
    INSERT INTO m_candle_temp (
                                  instrument_id,
                                  tf_id,
                                  time,
                                  open,
                                  high,
                                  low,
                                  close,
                                  volume
                              )
                              SELECT instrument_id,
                                     tf_id,
                                     time,
                                     open,
                                     high,
                                     low,
                                     close,
                                     volume
                                FROM m_uni_candles_current
                               WHERE true ON CONFLICT (
                                  instrument_id,
                                  tf_id,
                                  time
                              )
                              DO UPDATE SET open = excluded.open,
                              high = excluded.high,
                              low = excluded.low,
                              close = excluded.close,
                              volume = excluded.volume WHERE open <> excluded.open OR 
                                                             high <> excluded.high OR 
                                                             low <> excluded.low OR 
                                                             close <> excluded.close OR 
                                                             volume <> excluded.volume;
    UPDATE m_candle_request
       SET done = strftime('%s', 'now'),
           count = json_array_length(new.body, '$.candles') 
     WHERE id = new.urn_id;
    DELETE FROM m_candle_temp
          WHERE EXISTS (
        SELECT 1
          FROM m_candle
         WHERE m_candle.instrument_id = m_candle_temp.instrument_id AND 
               m_candle.tf_id = m_candle_temp.tf_id AND 
               m_candle.time = m_candle_temp.time
    );
    INSERT INTO m_data (
                           buffer_id,
                           time,
                           value
                       )
                       SELECT buffer_id,
                              time,
                              value
                         FROM m_indi_new_data_by_ma;
    INSERT INTO m_data_int (
                               buffer_id,
                               time,
                               value
                           )
                           SELECT buffer_id,
                                  time,
                                  value
                             FROM m_indi_new_data_by_intersection;
    INSERT INTO m_data_int (
                               buffer_id,
                               time,
                               value
                           )
                           SELECT buffer_id,
                                  time,
                                  value
                             FROM m_indi_new_data_by_step;
    INSERT INTO m_signal (
                             expert_uni_id,
                             time
                         )
                         SELECT expert_uni_id,
                                time
                           FROM m_experts_new_signals;
    INSERT INTO m_cmd_prepare (
                                  id,
                                  expert_id,
                                  instrument_id,
                                  lot,
                                  side_id,
                                  type_id,
                                  time
                              )
                              SELECT (
                                         SELECT IIF(IFNULL(MAX(id), 1) < CAST (strftime('%s', 'now') || substr(strftime('%f', 'now'), -3) AS BIGINT), CAST (strftime('%s', 'now') || substr(strftime('%f', 'now'), -3) AS BIGINT), NULL) 
                                           FROM m_cmd
                                     ),
                                     expert_id,
                                     instrument_id,
                                     lot,
                                     side_id,
                                     type_id,
                                     time
                                FROM m_signal_active sa
                               WHERE ( (
                                           SELECT algo
                                             FROM m_input_trade
                                       )
=                                    1) AND 
                                     NOT EXISTS (
                                             SELECT 1
                                               FROM m_cmd_prepare
                                              WHERE expert_id = sa.expert_id AND 
                                                    instrument_id = sa.instrument_id AND 
                                                    side_id = sa.side_id AND 
                                                    type_id = sa.type_id AND 
                                                    time = sa.time
                                         );
END;


-- Trigger: response_AFTER_UPDATE_OF_cmd
CREATE TRIGGER response_AFTER_UPDATE_OF_cmd
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id IN (126, 127, 129, 130, 131, 134, 138, 139, 140, 141, 143) 
BEGIN
    UPDATE m_cmd
       SET result = new.body
     WHERE id = new.urn_id;
    DELETE FROM response
          WHERE route_id = new.route_id AND 
                urn_id = new.urn_id AND 
                code = new.code;
END;


-- Trigger: response_AFTER_UPDATE_OF_currencies
CREATE TRIGGER response_AFTER_UPDATE_OF_currencies
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 99 AND 
               new.urn_id = 99 AND 
               new.code = 200
BEGIN
    UPDATE m_instrument
       SET isin = s.isin,
           name = s.name
      FROM m_api_currencies s
     WHERE m_instrument.figi = s.figi AND 
           (NOT IFNULL(m_instrument.isin = s.isin, 0) OR 
            NOT IFNULL(m_instrument.name = s.name, 0) );
    INSERT INTO m_instrument (
                                 type_id,
                                 figi,
                                 ticker,
                                 class_code,
                                 isin,
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT it.id type_id,
                                                        s.figi,
                                                        s.ticker,
                                                        s.classCode,
                                                        IIF(s.isin == '', NULL, s.isin) isin,
                                                        IIF(s.name == '', NULL, s.name) name
                                          FROM m_api_currencies s,
                                               m_enum_instrument it ON it.name = 'currency'
                                    )
                                    n
                                    LEFT JOIN
                                    m_instrument o ON n.figi = o.figi
                              WHERE o.id IS NULL;
    INSERT INTO m_enum_currency (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT currency name
                                             FROM m_api_currencies
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_currency o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_exchange (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT exchange name
                                             FROM m_api_currencies
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_exchange o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_trading_status (
                                          name
                                      )
                                      SELECT n.*
                                        FROM (
                                                 SELECT DISTINCT tradingStatus name
                                                   FROM m_api_currencies
                                             )
                                             n
                                             LEFT JOIN
                                             m_enum_trading_status o ON n.name = o.name
                                       WHERE o.id IS NULL;
    INSERT INTO m_enum_country (
                                   name,
                                   description
                               )
                               SELECT n.*
                                 FROM (
                                          SELECT DISTINCT countryOfRisk name,
                                                          IIF(countryOfRiskName == '', NULL, countryOfRiskName) description
                                            FROM m_api_currencies
                                           WHERE IIF(countryOfRisk == '', NULL, countryOfRisk) IS NOT NULL
                                      )
                                      n
                                      LEFT JOIN
                                      m_enum_country o ON n.name = o.name
                                WHERE o.id IS NULL;
END;


-- Trigger: response_AFTER_UPDATE_OF_error
CREATE TRIGGER response_AFTER_UPDATE_OF_error
         AFTER UPDATE OF body
            ON response
          WHEN new.code > 200 AND 
               new.route_id NOT IN (148, 149, 150) 
BEGIN
    INSERT INTO m_log (
                          type_id,
                          description
                      )
                      VALUES (
                          4,
                          printf('request error: route_id: %s body: %s', new.route_id, new.body) 
                      );
END;


-- Trigger: response_AFTER_UPDATE_OF_futures
CREATE TRIGGER response_AFTER_UPDATE_OF_futures
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 104 AND 
               new.urn_id = 104 AND 
               new.code = 200
BEGIN
    INSERT INTO m_enum_instrument (
                                      name
                                  )
                                  SELECT n.*
                                    FROM (
                                             SELECT 'futures' name
                                         )
                                         n
                                         LEFT JOIN
                                         m_enum_instrument o ON n.name = o.name
                                   WHERE o.id IS NULL;
    UPDATE m_instrument
       SET name = s.name
      FROM m_api_futures s
     WHERE m_instrument.figi = s.figi AND 
           NOT IFNULL(m_instrument.name = s.name, 0);
    INSERT INTO m_instrument (
                                 uid,
                                 type_id,
                                 figi,
                                 ticker,
                                 class_code,
                                 name,
                                 link_id,
                                 basicAsset
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT f.figi uid,
                                                        it.id type_id,
                                                        f.figi,
                                                        f.ticker,
                                                        f.classCode,
                                                        f.name,
                                                        i.id link_id,
                                                        IIF(i.id IS NULL, f.basicAsset, NULL) basicAsset
                                          FROM m_api_futures f
                                               LEFT JOIN
                                               m_instrument i ON i.ticker = f.basicAsset,
                                               m_enum_instrument it ON it.name = 'futures'
                                    )
                                    n
                                    LEFT JOIN
                                    m_instrument o ON n.figi = o.figi
                              WHERE o.id IS NULL;
    INSERT INTO m_enum_currency (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT currency name
                                             FROM m_api_futures
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_currency o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_exchange (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT exchange name
                                             FROM m_api_futures
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_exchange o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_trading_status (
                                          name
                                      )
                                      SELECT n.*
                                        FROM (
                                                 SELECT DISTINCT tradingStatus name
                                                   FROM m_api_futures
                                             )
                                             n
                                             LEFT JOIN
                                             m_enum_trading_status o ON n.name = o.name
                                       WHERE o.id IS NULL;
    INSERT INTO m_enum_country (
                                   name,
                                   description
                               )
                               SELECT n.*
                                 FROM (
                                          SELECT DISTINCT countryOfRisk name,
                                                          IIF(countryOfRiskName == '', NULL, countryOfRiskName) description
                                            FROM m_api_futures
                                           WHERE IIF(countryOfRisk == '', NULL, countryOfRisk) IS NOT NULL
                                      )
                                      n
                                      LEFT JOIN
                                      m_enum_country o ON n.name = o.name
                                WHERE o.id IS NULL;
    INSERT INTO m_enum_sector (
                                  name
                              )
                              SELECT n.*
                                FROM (
                                         SELECT DISTINCT sector name
                                           FROM m_api_futures
                                          WHERE IIF(sector == '', NULL, sector) IS NOT NULL
                                     )
                                     n
                                     LEFT JOIN
                                     m_enum_sector o ON n.name = o.name
                               WHERE o.id IS NULL;
    INSERT INTO m_enum_futures (
                                   name
                               )
                               SELECT n.*
                                 FROM (
                                          SELECT DISTINCT futuresType name
                                            FROM m_api_futures
                                      )
                                      n
                                      LEFT JOIN
                                      m_enum_futures o ON n.name = o.name
                                WHERE o.id IS NULL;
    INSERT INTO m_enum_asset (
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT 'ASSET_TYPE_' || upper(assetType) name
                                          FROM m_api_futures
                                    )
                                    n
                                    LEFT JOIN
                                    m_enum_asset o ON n.name = o.name
                              WHERE o.id IS NULL;
END;


-- Trigger: response_AFTER_UPDATE_OF_investment_funds
CREATE TRIGGER response_AFTER_UPDATE_OF_investment_funds
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 102 AND 
               new.urn_id = 102 AND 
               new.code = 200
BEGIN
    UPDATE m_instrument
       SET isin = s.isin,
           name = s.name
      FROM m_api_investment_funds s
     WHERE m_instrument.figi = s.figi AND 
           (NOT IFNULL(m_instrument.isin = s.isin, 0) OR 
            NOT IFNULL(m_instrument.name = s.name, 0) );
    INSERT INTO m_instrument (
                                 type_id,
                                 figi,
                                 ticker,
                                 class_code,
                                 isin,
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT it.id type_id,
                                                        s.figi,
                                                        s.ticker,
                                                        s.classCode,
                                                        IIF(s.isin == '', NULL, s.isin) isin,
                                                        IIF(s.name == '', NULL, s.name) name
                                          FROM m_api_investment_funds s,
                                               m_enum_instrument it ON it.name = 'etf'
                                    )
                                    n
                                    LEFT JOIN
                                    m_instrument o ON n.figi = o.figi
                              WHERE o.id IS NULL;
    INSERT INTO m_enum_currency (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT currency name
                                             FROM m_api_investment_funds
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_currency o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_exchange (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT exchange name
                                             FROM m_api_investment_funds
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_exchange o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_trading_status (
                                          name
                                      )
                                      SELECT n.*
                                        FROM (
                                                 SELECT DISTINCT tradingStatus name
                                                   FROM m_api_investment_funds
                                             )
                                             n
                                             LEFT JOIN
                                             m_enum_trading_status o ON n.name = o.name
                                       WHERE o.id IS NULL;
    INSERT INTO m_enum_country (
                                   name,
                                   description
                               )
                               SELECT n.*
                                 FROM (
                                          SELECT DISTINCT countryOfRisk name,
                                                          IIF(countryOfRiskName == '', NULL, countryOfRiskName) description
                                            FROM m_api_investment_funds
                                           WHERE IIF(countryOfRisk == '', NULL, countryOfRisk) IS NOT NULL
                                      )
                                      n
                                      LEFT JOIN
                                      m_enum_country o ON n.name = o.name
                                WHERE o.id IS NULL;
    INSERT INTO m_enum_sector (
                                  name
                              )
                              SELECT n.*
                                FROM (
                                         SELECT DISTINCT sector name
                                           FROM m_api_investment_funds
                                          WHERE IIF(sector == '', NULL, sector) IS NOT NULL
                                     )
                                     n
                                     LEFT JOIN
                                     m_enum_sector o ON n.name = o.name
                               WHERE o.id IS NULL;
    INSERT INTO m_enum_focus (
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT focusType name
                                          FROM m_api_investment_funds
                                         WHERE IIF(focusType == '', NULL, focusType) IS NOT NULL
                                    )
                                    n
                                    LEFT JOIN
                                    m_enum_focus o ON n.name = o.name
                              WHERE o.id IS NULL;
    INSERT INTO m_enum_rebalancing (
                                       name
                                   )
                                   SELECT n.*
                                     FROM (
                                              SELECT DISTINCT rebalancingFreq name
                                                FROM m_api_investment_funds
                                               WHERE IIF(rebalancingFreq == '', NULL, rebalancingFreq) IS NOT NULL
                                          )
                                          n
                                          LEFT JOIN
                                          m_enum_rebalancing o ON n.name = o.name
                                    WHERE o.id IS NULL;
END;


-- Trigger: response_AFTER_UPDATE_OF_stocks
CREATE TRIGGER response_AFTER_UPDATE_OF_stocks
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 113 AND 
               new.urn_id = 113 AND 
               new.code = 200
BEGIN
    UPDATE m_instrument
       SET isin = s.isin,
           name = s.name
      FROM m_api_stock s
     WHERE m_instrument.figi = s.figi AND 
           (NOT IFNULL(m_instrument.isin = s.isin, 0) OR 
            NOT IFNULL(m_instrument.name = s.name, 0) );
    INSERT INTO m_instrument (
                                 type_id,
                                 figi,
                                 ticker,
                                 class_code,
                                 isin,
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT it.id type_id,
                                                        s.figi,
                                                        s.ticker,
                                                        s.classCode,
                                                        IIF(s.isin == '', NULL, s.isin) isin,
                                                        IIF(s.name == '', NULL, s.name) name
                                          FROM m_api_stock s,
                                               m_enum_instrument it ON it.name = 'share'
                                    )
                                    n
                                    LEFT JOIN
                                    m_instrument o ON n.figi = o.figi
                              WHERE o.id IS NULL;
    INSERT INTO m_enum_currency (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT currency name
                                             FROM m_api_stock
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_currency o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_exchange (
                                    name
                                )
                                SELECT n.*
                                  FROM (
                                           SELECT DISTINCT exchange name
                                             FROM m_api_stock
                                       )
                                       n
                                       LEFT JOIN
                                       m_enum_exchange o ON n.name = o.name
                                 WHERE o.id IS NULL;
    INSERT INTO m_enum_trading_status (
                                          name
                                      )
                                      SELECT n.*
                                        FROM (
                                                 SELECT DISTINCT tradingStatus name
                                                   FROM m_api_stock
                                             )
                                             n
                                             LEFT JOIN
                                             m_enum_trading_status o ON n.name = o.name
                                       WHERE o.id IS NULL;
    INSERT INTO m_enum_country (
                                   name,
                                   description
                               )
                               SELECT n.*
                                 FROM (
                                          SELECT DISTINCT countryOfRisk name,
                                                          IIF(countryOfRiskName == '', NULL, countryOfRiskName) description
                                            FROM m_api_stock
                                           WHERE IIF(countryOfRisk == '', NULL, countryOfRisk) IS NOT NULL
                                      )
                                      n
                                      LEFT JOIN
                                      m_enum_country o ON n.name = o.name
                                WHERE o.id IS NULL;
    INSERT INTO m_enum_sector (
                                  name
                              )
                              SELECT n.*
                                FROM (
                                         SELECT DISTINCT sector name
                                           FROM m_api_stock
                                          WHERE IIF(sector == '', NULL, sector) IS NOT NULL
                                     )
                                     n
                                     LEFT JOIN
                                     m_enum_sector o ON n.name = o.name
                               WHERE o.id IS NULL;
    INSERT INTO m_enum_share (
                                 name
                             )
                             SELECT n.*
                               FROM (
                                        SELECT DISTINCT shareType name
                                          FROM m_api_stock
                                    )
                                    n
                                    LEFT JOIN
                                    m_enum_share o ON n.name = o.name
                              WHERE o.id IS NULL;
END;


-- Trigger: response_AFTER_UPDATE_OF_tg_active
CREATE TRIGGER response_AFTER_UPDATE_OF_tg_active
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id IN (148, 149, 150) AND 
               new.code = 401
BEGIN
    UPDATE poll
       SET is_active = 0
     WHERE route_id IN (148, 149, 150);
END;


-- Trigger: response_AFTER_UPDATE_OF_tg_send
CREATE TRIGGER response_AFTER_UPDATE_OF_tg_send
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 150 AND 
               new.code = 200
BEGIN
    UPDATE tg_message_send
       SET is_send = 1
     WHERE id = new.urn_id AND 
           is_send = 0;
    DELETE FROM response
          WHERE code = new.code AND 
                route_id = new.route_id AND 
                urn_id = new.urn_id;
END;


-- Trigger: response_AFTER_UPDATE_OF_tg_send_error
CREATE TRIGGER response_AFTER_UPDATE_OF_tg_send_error
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 150 AND 
               new.code = 403
BEGIN
    DELETE FROM tg_message
          WHERE chat_id = (
                              SELECT chat_id
                                FROM tg_message_send
                               WHERE id = new.urn_id
                          );
    DELETE FROM tg_message_send
          WHERE id = new.urn_id AND 
                is_send = 0;
END;


-- Trigger: response_AFTER_UPDATE_OF_tg_updates
CREATE TRIGGER response_AFTER_UPDATE_OF_tg_updates
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 149 AND 
               new.code = 200
BEGIN
    INSERT OR IGNORE INTO tg_message (
                                         update_id,
                                         message_id,
                                         chat_id,
                                         username,
                                         time,
                                         text,
                                         [offset],
                                         length
                                     )
                                     SELECT update_id,
                                            message_id,
                                            chat_id,
                                            username,
                                            time,
                                            text,
                                            [offset],
                                            length
                                       FROM tg_messages;
END;


-- Trigger: response_AFTER_UPDATE_OF_ticks
CREATE TRIGGER response_AFTER_UPDATE_OF_ticks
         AFTER UPDATE OF body
            ON response
          WHEN new.route_id = 116 AND 
               new.urn_id = 116 AND 
               new.code = 200
BEGIN
    INSERT OR IGNORE INTO m_tick (
                                     instrument_id,
                                     time_msec,
                                     price
                                 )
                                 SELECT instrument_id,
                                        time_msec,
                                        price
                                   FROM m_uni_last_prices;
END;


-- Trigger: response_BEFORE_INSERT
CREATE TRIGGER response_BEFORE_INSERT
        BEFORE INSERT
            ON response
          WHEN EXISTS (
    SELECT 1
      FROM response
     WHERE route_id = new.route_id AND 
           urn_id = new.urn_id AND 
           code = new.code
)
BEGIN
    UPDATE response
       SET header = new.header,
           body = new.body,
           time = new.time
     WHERE route_id = new.route_id AND 
           urn_id = new.urn_id AND 
           code = new.code;
    UPDATE poll
       SET on_check = 0
     WHERE route_id = new.route_id AND 
           on_check;
    SELECT RAISE(IGNORE);
END;


-- Trigger: response_BEFORE_INSERT_code_validation
CREATE TRIGGER response_BEFORE_INSERT_code_validation
        BEFORE INSERT
            ON response
          WHEN new.code <= 0 OR 
               new.code >= 600
BEGIN
    SELECT RAISE(IGNORE);
END;


-- Trigger: swagger_AFTER_INSERT_v2
CREATE TRIGGER swagger_AFTER_INSERT_v2
         AFTER INSERT
            ON swagger
          WHEN new.version = 2
BEGIN
    INSERT INTO server (
                           host,
                           description,
                           swagger_id
                       )
                       SELECT n.*
                         FROM (
                                  SELECT DISTINCT json_extract(value, '$.url') AS host,
                                                  json_extract(value, '$.description') AS description,
                                                  2 swagger_id
                                    FROM json_each( (
                                                        SELECT json_extract(new.json, '$.servers') 
                                                          FROM swagger
                                                    )
                                         ) 
                              )
                              n
                              LEFT JOIN
                              server o ON n.host = o.host
                        WHERE o.id IS NULL;
    INSERT INTO route (
                          server_id,
                          method_id,
                          urn,
                          description,
                          tag,
                          security,
                          security_desc
                      )
                      SELECT n.*
                        FROM (
                                 SELECT DISTINCT s.id server_id,
                                                 em.id method_id,
                                                 LTRIM(a.[key], '/') urn,
                                                 IFNULL(json_extract(b.value, '$.description'), json_extract(b.value, '$.summary') ) description,
                                                 json_extract(b.value, '$.tags[0]') tag,
                                                 1 AS security,
                                                 json_extract(b.value, '$.security[0]') security_desc
                                   FROM json_each( (
                                                       SELECT json_extract(new.json, '$.servers') 
                                                         FROM swagger
                                                   )
                                        ) servers,
                                        json_each( (
                                                       SELECT json_extract(new.json, '$.paths') 
                                                         FROM swagger
                                                   )
                                        ) a,
                                        json_each(a.value) b
                                        LEFT JOIN
                                        enum_method em ON UPPER(b.[key]) = em.name
                                        LEFT JOIN
                                        server s ON json_extract(servers.value, '$.url') = s.host
                             )
                             n
                             LEFT JOIN
                             route o ON n.server_id = o.server_id AND 
                                        n.method_id = o.method_id AND 
                                        n.urn = o.urn
                       WHERE o.id IS NULL;
    INSERT INTO component (
                              swagger_id,
                              name
                          )
                          SELECT n.*
                            FROM (
                                     SELECT DISTINCT 2 swagger_id,
                                                     c.[key] name
                                       FROM json_each(new.json, '$.components') c,
                                            json_each(c.value) s
                                 )
                                 n
                                 LEFT JOIN
                                 component o ON n.name = o.name
                           WHERE o.id IS NULL;
    INSERT INTO schema (
                           component_id,
                           name,
                           [default],
                           type,
                           enum,
                           description,
                           example
                       )
                       SELECT n.*
                         FROM (
                                  SELECT component_id,
                                         [key] name,
                                         json_extract(value, '$.default') AS [default],
                                         json_extract(value, '$.type') type,
                                         json_extract(value, '$.enum') enum,
                                         json_extract(value, '$.description') description,
                                         json_extract(value, '$.example') example
                                    FROM (
                                             SELECT co.id component_id,
                                                    s.[key],
                                                    s.value
                                               FROM json_each(new.json, '$.components') c,
                                                    json_each(c.value) s,
                                                    component co ON co.name = c.[key]
                                         )
                              )
                              n
                              LEFT JOIN
                              schema o ON n.name = o.name
                        WHERE o.id IS NULL;
    INSERT INTO property (
                             schema_id,
                             name,
                             type,
                             format,
                             description,
                             ref_schema_id
                         )
                         SELECT n.*
                           FROM (
                                    SELECT sc.id schema_id,
                                           p.[key] name,
                                           json_extract(p.value, '$.type') type,
                                           json_extract(p.value, '$.format') format,
                                           json_extract(p.value, '$.description') description,
                                           sch.id ref_schema_id
                                      FROM json_each(new.json, '$.components') c,
                                           json_each(c.value) s,
                                           component co ON co.name = c.[key],
                                           json_each(s.value, '$.properties') p,
                                           schema sc ON sc.name = s.[key]
                                           LEFT JOIN
                                           schema sch ON sch.name = LTRIM(IFNULL(json_extract(p.value, '$.$ref'), json_extract(p.value, '$.items.$ref') ), '#/components/schemas/') 
                                )
                                n
                                LEFT JOIN
                                property o ON n.name = o.name
                          WHERE o.id IS NULL;
    INSERT INTO parameter (
                              route_id,
                              type_id,
                              name,
                              is_required,
                              description,
                              property_id
                          )
                          SELECT n.*
                            FROM (
                                     SELECT DISTINCT r.id route_id,
                                                     3 type_id,
                                                     p.[key] name,
                                                     json_extract(b.value, '$.requestBody.required') is_required,
                                                     json_extract(p.value, '$.description') description,
                                                     pr.id propetry_id
                                       FROM json_each( (
                                                           SELECT json_extract(new.json, '$.servers') 
                                                             FROM swagger
                                                       )
                                            ) servers,
                                            json_each( (
                                                           SELECT json_extract(new.json, '$.paths') 
                                                             FROM swagger
                                                       )
                                            ) a,
                                            json_each(a.value) b,
                                            json_each( (
                                                           SELECT json_extract(b.value, '$.requestBody.content') 
                                                             FROM swagger
                                                       )
                                            ) c,
                                            json_each( (
                                                           SELECT json_extract(new.json, '$.components.schemas') 
                                                             FROM swagger
                                                       )
                                            ) co ON co.[key] = LTRIM(json_extract(c.value, '$.schema.$ref'), '#/components/schemas/'),
                                            json_each(co.value, '$.properties') p
                                            LEFT JOIN
                                            enum_method em ON UPPER(b.[key]) = em.name
                                            LEFT JOIN
                                            server s ON json_extract(servers.value, '$.url') = s.host
                                            LEFT JOIN
                                            route r ON r.server_id = s.id AND 
                                                       r.method_id = em.id AND 
                                                       r.urn = LTRIM(a.[key], '/') 
                                            LEFT JOIN
                                            schema sc ON sc.name = co.[key]
                                            LEFT JOIN
                                            property pr ON sc.id = pr.schema_id AND 
                                                           pr.name = p.[key]
                                 )
                                 n
                                 LEFT JOIN
                                 parameter o ON n.route_id = o.route_id AND 
                                                n.type_id = o.type_id AND 
                                                n.name = o.name
                           WHERE o.id IS NULL;
    INSERT INTO parameter (
                              route_id,
                              type_id,
                              name,
                              is_required,
                              description
                          )
                          SELECT n.*
                            FROM (
                                     SELECT r.id route_id,
                                            2 type_id,
                                            s.name,
                                            1 is_required,
                                            '????? ???????????' description
                                       FROM component c,
                                            schema s ON c.name = 'securitySchemes' AND 
                                                        c.id = s.component_id,
                                            route r
                                      GROUP BY r.id
                                 )
                                 n
                                 LEFT JOIN
                                 parameter o ON n.route_id = o.route_id AND 
                                                n.type_id = o.type_id AND 
                                                n.name = o.name
                           WHERE o.id IS NULL;
    INSERT OR IGNORE INTO fk_parameter_value (
                                                 parameter_id,
                                                 value
                                             )
                                             SELECT p.id,
                                                    'fsdfsdsdff' value
                                               FROM component c,
                                                    schema s ON c.name = 'securitySchemes' AND 
                                                                c.id = s.component_id,
                                                    parameter p ON p.name = s.name;
    INSERT INTO fk_urn_pv (
                              urn_id,
                              pv_id
                          )
                          SELECT id urn_id,
                                 id pv_id
                            FROM fk_parameter_value;
    INSERT INTO poll (
                         route_id
                     )
                     SELECT new.*
                       FROM (
                                SELECT DISTINCT id route_id
                                  FROM route
                            )
                            new
                            LEFT JOIN
                            poll old ON new.route_id = old.route_id
                      WHERE old.id IS NULL
                      ORDER BY new.route_id;
END;


-- Trigger: tg_message_send_AFTER_INSERT
CREATE TRIGGER tg_message_send_AFTER_INSERT
         AFTER INSERT
            ON tg_message_send
BEGIN
    UPDATE poll
       SET on_check = 1
     WHERE route_id = 150 AND 
           on_check = 0;
END;


-- View: active_params
CREATE VIEW active_params AS
    SELECT *
      FROM active_params_cmd_real
    UNION ALL
    SELECT *
      FROM active_params_prices
    UNION ALL
    SELECT *
      FROM active_params_candles
    UNION ALL
    SELECT *
      FROM active_params_main
    UNION ALL
    SELECT *
      FROM active_params_schedules
    UNION ALL
    SELECT *
      FROM active_params_accounts
    UNION ALL
    SELECT *
      FROM active_params_books
    UNION ALL
    SELECT *
      FROM active_params_trades
    UNION ALL
    SELECT *
      FROM active_params_instruments
    UNION ALL
    SELECT *
      FROM active_params_i_status
    UNION ALL
    SELECT *
      FROM active_params_operations_real
    UNION ALL
    SELECT *
      FROM active_params_cmd_demo
    UNION ALL
    SELECT *
      FROM active_params_accounts_demo
    UNION ALL
    SELECT *
      FROM active_params_operations_demo
    UNION ALL
    SELECT *
      FROM active_params_tg_updated
    UNION ALL
    SELECT *
      FROM active_params_tg_sendMessages;


-- View: active_params_accounts
CREATE VIEW active_params_accounts AS
    SELECT *
      FROM (
               SELECT a.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'accountId', a.uid, pv.value) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_uni_accounts a
                WHERE p.route_id IN (123, 124, 128, 142, 146) 
           )
     WHERE value IS NOT NULL;


-- View: active_params_accounts_demo
CREATE VIEW active_params_accounts_demo AS
    SELECT *
      FROM (
               SELECT a.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'accountId', a.uid, pv.value) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_uni_demo_accounts a
                WHERE (
                          SELECT demo
                            FROM m_input_trade
                      )
=                     1 AND 
                      p.route_id IN (135, 136, 137) 
           )
     WHERE value IS NOT NULL;


-- View: active_params_books
CREATE VIEW active_params_books AS
    SELECT *
      FROM (
               SELECT i.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'figi', i.figi, IIF(p.name = 'depth', 50, pv.value) ) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_instrument_download i_d,
                      m_instrument i ON i.id = i_d.id
                WHERE p.route_id = 118 AND 
                      i_d.get_book
                LIMIT 20
           )
     WHERE value IS NOT NULL;


-- View: active_params_candles
CREATE VIEW active_params_candles AS
    SELECT *
      FROM (
               SELECT cr.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'figi', i.figi, IIF(p.name = 'from', cr.time_start, IIF(p.name = 'to', cr.time_end, IIF(p.name = 'interval', tf.name, pv.value) ) ) ) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_instrument_download i_d,
                      m_instrument i ON i.id = i_d.id,
                      m_candle_request cr ON i.id = cr.instrument_id,
                      m_instrument_config_tf ctf ON ctf.id = i_d.id AND 
                                                    ctf.tf_id = cr.tf_id,
                      m_enum_tf tf ON tf.id = cr.tf_id
                WHERE p.route_id = 115 AND 
                      ( (ctf.is_full = 0 AND 
                         cr.done = 0) OR 
                        (ctf.is_full = 1 AND 
                         cr.done < 0) ) 
                ORDER BY cr.done DESC,
                         i_d.priority DESC,
                         cr.time_end DESC,
                         ctf.tf_id DESC
                LIMIT 30
           )
     WHERE value IS NOT NULL;


-- View: active_params_cmd_demo
CREATE VIEW active_params_cmd_demo AS
    SELECT *
      FROM (
               SELECT DISTINCT d.id urn_id,
                               p.route_id,
                               p.type_id,
                               p.name,
                               p.is_required,
                               IIF(p.name = dp.[key], dp.value, pv.value) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name
                      LEFT JOIN
                      m_cmd d
                      LEFT JOIN
                      json_each(d.params) dp
                WHERE (
                          SELECT algo AND 
                                 demo
                            FROM m_input_trade
                      )
=                     1 AND 
                      d.result IS NULL AND 
                      ( (p.route_id = 138 AND 
                         d.type_id = 4) OR 
                        (p.route_id = 140 AND 
                         d.type_id = 3) OR 
                        (p.route_id = 131 AND 
                         d.type_id = 5) OR 
                        (p.route_id = 130 AND 
                         d.type_id = 2) OR 
                        (p.route_id = 139 AND 
                         d.type_id = 1) OR 
                        (p.route_id = 134 AND 
                         d.type_id = 6) ) 
                ORDER BY d.id
           )
     WHERE value IS NOT NULL;


-- View: active_params_cmd_real
CREATE VIEW active_params_cmd_real AS
    SELECT *
      FROM (
               SELECT DISTINCT d.id urn_id,
                               p.route_id,
                               p.type_id,
                               p.name,
                               p.is_required,
                               IIF(p.name = dp.[key], dp.value, pv.value) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name
                      LEFT JOIN
                      m_cmd d
                      LEFT JOIN
                      json_each(d.params) dp
                WHERE (
                          SELECT algo AND 
                                 real
                            FROM m_input_trade
                      )
=                     1 AND 
                      d.result IS NULL AND 
                      ( (p.route_id = 126 AND 
                         d.type_id = 2) OR 
                        (p.route_id = 129 AND 
                         d.type_id = 1) OR 
                        (p.route_id = 127 AND 
                         d.type_id = 6) OR 
                        (p.route_id = 143 AND 
                         d.type_id = 7) OR 
                        (p.route_id = 141 AND 
                         d.type_id = 8) ) 
                ORDER BY d.id
           )
     WHERE value IS NOT NULL;


-- View: active_params_i_status
CREATE VIEW active_params_i_status AS
    SELECT *
      FROM (
               SELECT i.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'figi', i.figi, pv.value) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_instrument_download i_d,
                      m_instrument i ON i.id = i_d.id
                WHERE/* i.id IN (

                      SELECT instrument_id

                        FROM m_instruments_schedules

                       WHERE on_trade

                  )

AND */ p.route_id = 119
                LIMIT 15
           )
     WHERE value IS NOT NULL;


-- View: active_params_instruments
CREATE VIEW active_params_instruments AS
    SELECT *
      FROM (
               SELECT i.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'classCode', i.class_code, IIF(p.name = 'id', IIF(p.route_id = 106, i.uid, i.figi), IIF(p.name = 'idType', 'INSTRUMENT_ID_TYPE_FIGI', pv.value) ) ) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_instrument_download i_d,
                      m_instrument i ON i.id = i_d.id,
                      m_enum_instrument ei ON ei.id = i.type_id
                WHERE p.route_id IN (97, 112, 106, 111)-- , 100, 101, 103, --106) 
           )
     WHERE value IS NOT NULL;


-- View: active_params_main
CREATE VIEW active_params_main AS
    SELECT p.route_id urn_id,
           p.route_id,
           p.type_id,
           p.name,
           p.is_required,
           pv.value
      FROM parameter p
           JOIN
           parameter_value pv ON p.name = pv.name
     WHERE p.route_id IN (98, 99, 102, 104, 107, 113, 144, 145, 147) OR 
           (p.route_id IN (132) AND 
            (
                SELECT demo
                  FROM m_input_trade
            )
=           1);


-- View: active_params_operations_demo
CREATE VIEW active_params_operations_demo AS
    SELECT *
      FROM (
               SELECT DISTINCT pp.id urn_id,
                               p.route_id,
                               p.type_id,
                               p.name,
                               p.is_required,
                               IIF(p.name = 'accountId', a.uid, IIF(p.name = 'figi', pp.figi, IIF(p.name = 'from', strftime('%Y-%m-%dT00:00:00Z', 'now', '-10 year'), IIF(p.name = 'to', strftime('%Y-%m-%dT00:00:00Z', 'now', '+10 days'), pv.value) ) ) ) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_uni_demo_accounts a,
                      m_api_demo_portfolio_positions pp ON a.id = pp.account_id
                WHERE (
                          SELECT demo
                            FROM m_input_trade
                      )
=                     1 AND 
                      p.route_id = 133
           )
     WHERE value IS NOT NULL;


-- View: active_params_operations_real
CREATE VIEW active_params_operations_real AS
    SELECT *
      FROM (
               SELECT DISTINCT pp.id urn_id,
                               p.route_id,
                               p.type_id,
                               p.name,
                               p.is_required,
                               IIF(p.name = 'accountId', a.uid, IIF(p.name = 'figi', pp.figi, IIF(p.name = 'from', strftime('%Y-%m-%dT00:00:00Z', 'now', '-10 year'), IIF(p.name = 'to', strftime('%Y-%m-%dT00:00:00Z', 'now', '+10 days'), pv.value) ) ) ) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_uni_accounts a,
                      m_api_portfolio_positions pp ON a.id = pp.account_id
                WHERE (
                          SELECT real
                            FROM m_input_trade
                      )
=                     1 AND 
                      p.route_id = 122
           )
     WHERE value IS NOT NULL;


-- View: active_params_prices
CREATE VIEW active_params_prices AS
    SELECT urn_id,
           route_id,
           type_id,
           name,
           is_required,
           value
      FROM (
               SELECT 116 urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'figi', '[]'/* a.figis */, pv.value) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      (
                          SELECT json_group_array(i.figi) figis
                            FROM m_instrument_download i_d,
                                 m_instrument i ON i.id = i_d.id/* WHERE i.id IN (

                                 SELECT instrument_id

                                   FROM m_instruments_schedules

                                  WHERE on_trade

                             ) */
                      )
                      a
                WHERE/* (

                      SELECT by_instruments

                        FROM m_trade_ready

                  )

=                 1 AND */ p.route_id = 116-- LIMIT 0
           )
     WHERE value IS NOT NULL;


-- View: active_params_schedules
CREATE VIEW active_params_schedules AS
    SELECT *
      FROM (
               SELECT p.route_id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'from', strftime('%Y-%m-%dT00:00:00Z', 'now'), IIF(p.name = 'to', strftime('%Y-%m-%dT00:00:00Z', 'now', '+7 days'), pv.value) ) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name
                WHERE p.route_id = 114
           )
     WHERE value IS NOT NULL;


-- View: active_params_tg_sendMessages
CREATE VIEW active_params_tg_sendMessages AS
    SELECT urn_id,
           route_id,
           type_id,
           name,
           is_required,
           value
      FROM (
               SELECT tg.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'chat_id', tg.chat_id, IIF(p.name = 'text', tg.text, NULL) ) value
                 FROM parameter p
                      LEFT JOIN
                      tg_sendMessages tg
                WHERE p.route_id = 150
                ORDER BY tg.id
           )
     WHERE value IS NOT NULL
     LIMIT 20;


-- View: active_params_tg_updated
CREATE VIEW active_params_tg_updated AS
    SELECT 0 urn_id,
           p.route_id,
           p.type_id,
           p.name,
           p.is_required,
           IIF(p.name = 'offset', (
                   SELECT MAX(update_id) + 1
                     FROM tg_message
               ), NULL) value
      FROM parameter p
           LEFT JOIN
           tg_updated tg
     WHERE p.route_id = 149 AND 
           json_array_length(tg.result) <> 0
     LIMIT 10;


-- View: active_params_trades
CREATE VIEW active_params_trades AS
    SELECT *
      FROM (
               SELECT i.id urn_id,
                      p.route_id,
                      p.type_id,
                      p.name,
                      p.is_required,
                      IIF(p.name = 'figi', i.figi, IIF(p.name = 'from', strftime('%Y-%m-%dT%H:%M:00Z', 'now', '-59 minute'), IIF(p.name = 'to', strftime('%Y-%m-%dT%H:%M:00Z', 'now', '+1 minute'), pv.value) ) ) value
                 FROM parameter p
                      LEFT JOIN
                      parameter_value pv ON p.name = pv.name,
                      m_instrument_download i_d,
                      m_instrument i ON i.id = i_d.id
                WHERE p.route_id = 117 AND 
                      i_d.get_trades
                LIMIT 25
           )
     WHERE value IS NOT NULL;


-- View: active_requests
CREATE VIEW active_requests AS
    SELECT r.id route_id,
           IFNULL(MIN(u.urn_id), 0) urn_id,
           r.url || IIF(u.query_params IS NULL, '', '?') || IFNULL(u.query_params, '') url,
           r.method_name method,
           r.security,
           IFNULL(MAX(u.header_params), '') headers,
           IFNULL(MAX(u.body_params), IIF(r.method_id = 3, '{}', '') ) body
      FROM active_routes r
           LEFT JOIN
           (
               SELECT DISTINCT u_1.urn_id,
                               u_1.route_id,
                               u_2.params query_params,
                               IFNULL(u_2.count_required, 0) query_accessible,
                               u_3.params header_params,
                               IFNULL(u_3.count_required, 0) header_accessible,
                               u_4.params body_params,
                               IFNULL(u_4.count_required, 0) body_accessible
                 FROM active_urns u_1
                      LEFT JOIN
                      active_urns u_2 ON u_2.route_id = u_1.route_id AND 
                                         u_2.urn_id = u_1.urn_id AND 
                                         u_2.type_id = 1
                      LEFT JOIN
                      active_urns u_3 ON u_3.route_id = u_1.route_id AND 
                                         u_3.urn_id = u_1.urn_id AND 
                                         u_3.type_id = 2
                      LEFT JOIN
                      active_urns u_4 ON u_4.route_id = u_1.route_id AND 
                                         u_4.urn_id = u_1.urn_id AND 
                                         u_4.type_id = 3
           )
           u ON r.id = u.route_id
     GROUP BY r.id,
              u.urn_id
    HAVING IFNULL( (
                       SELECT SUM(is_required) sum
                         FROM parameter
                        WHERE route_id = r.id AND 
                              type_id = 1
                   ), 0) = IFNULL(MAX(u.query_accessible), 0) AND 
           IFNULL( (
                       SELECT SUM(is_required) sum
                         FROM parameter
                        WHERE route_id = r.id AND 
                              type_id = 2
                   ), 0) = IFNULL(MAX(u.header_accessible), 0) AND 
           IFNULL( (
                       SELECT SUM(is_required) sum
                         FROM parameter
                        WHERE route_id = r.id AND 
                              type_id = 3
                   ), 0) = IFNULL(MAX(u.body_accessible), 0);


-- View: active_requests_for_timer
CREATE VIEW active_requests_for_timer AS
    SELECT req.*,
           p.priority
      FROM poll p
           JOIN
           active_requests req ON p.route_id = req.route_id
           LEFT JOIN
           (
               SELECT route_id,
                      urn_id,
                      code,
                      MAX(time) time
                 FROM response
                GROUP BY route_id,
                         urn_id,
                         code
           )
           res ON req.route_id = res.route_id AND 
                  req.urn_id = res.urn_id AND 
                  (res.code = 200 OR 
                   res.code = 201) 
           LEFT JOIN
           (
               SELECT time
                 FROM time_current
           )
           tc
     WHERE p.interval > 0 AND 
           tc.time >= IIF(res.time IS NULL, tc.time, res.time + p.interval) OR 
           p.on_check
     ORDER BY p.priority;


-- View: active_routes
CREATE VIEW active_routes AS
    SELECT r.id,
           s.host || r.urn url,
           r.method_id,
           m.name method_name,
           r.security,
           r.description
      FROM route r
           JOIN
           server s ON r.id IN (
                           SELECT id
                             FROM routes_next
                       )
AND 
                       s.id = r.server_id
           LEFT JOIN
           enum_method m ON m.id = r.method_id,
           m_input_others io
     WHERE io.getData = 1 OR 
           (io.getData = 0 AND 
            r.id IN (148, 149, 150) );


-- View: active_urns
CREATE VIEW active_urns AS
    SELECT MIN(p.urn_id) urn_id,
           p.route_id,
           p.type_id,
           IIF(p.type_id = 3, json_group_object(p.name, IIF(json_valid(p.value), json(p.value), p.value) ), GROUP_CONCAT(p.name || IIF(p.type_id = 1, '=', ':') || p.value, IIF(p.type_id = 1, '&', CHAR(13) || CHAR(10) ) ) ) params,
           a.sum count_required
      FROM active_params p
           JOIN
           (
               SELECT route_id,
                      type_id,
                      SUM(is_required) sum
                 FROM parameter
                WHERE route_id IN (
                          SELECT id
                            FROM routes_next
                      )
                GROUP BY route_id,
                         type_id
           )
           a ON a.route_id = p.route_id AND 
                a.type_id = p.type_id
     GROUP BY p.urn_id,
              p.route_id,
              p.type_id
    HAVING SUM(p.is_required) >= a.sum;


-- View: config_polls
CREATE VIEW config_polls AS
    SELECT a.route_id,
           s.host server_host,
           s.description server_description,
           a.urn,
           a.description route_description,
           a.count_parameters,
           a.count_required,
           a.params,
           p.interval,
           p.priority,
           p.on_init,
           p.is_active
      FROM poll p
           LEFT JOIN
           (
               SELECT r.id route_id,
                      r.server_id,
                      r.urn,
                      r.description,
                      COUNT( * ) - IIF(p.id IS NULL, 1, 0) count_parameters,
                      IFNULL(SUM(p.is_required), 0) count_required,
                      json_group_array(p.name) params
                 FROM (
                          SELECT *
                            FROM route
                      )
                      r
                      LEFT JOIN
                      parameter p ON r.id = p.route_id
                GROUP BY r.id
           )
           a ON p.route_id = a.route_id
           LEFT JOIN
           server s ON s.id = a.server_id
     WHERE p.is_active/* AND a.urn LIKE '%Sandbox%' AND p.interval=0 */;


-- View: config_polls_not_active
CREATE VIEW config_polls_not_active AS
    SELECT s.host server_host,
           s.description server_description,
           a.urn,
           a.description route_description,
           a.count_parameters,
           a.count_required,
           p.interval,
           p.priority,
           p.on_init,
           p.is_active,
           p.is_visible
      FROM poll p
           LEFT JOIN
           (
               SELECT r.id route_id,
                      r.server_id,
                      r.urn,
                      r.description,
                      COUNT( * ) - IIF(p.id IS NULL, 1, 0) count_parameters,
                      IFNULL(SUM(p.is_required), 0) count_required
                 FROM (
                          SELECT *
                            FROM route
                      )
                      r
                      LEFT JOIN
                      parameter p ON r.id = p.route_id
                GROUP BY r.id
           )
           a ON p.route_id = a.route_id
           LEFT JOIN
           server s ON s.id = a.server_id
     WHERE NOT p.is_active AND 
           p.is_visible;


-- View: config_polls_not_visible
CREATE VIEW config_polls_not_visible AS
    SELECT s.host server_host,
           s.description server_description,
           a.urn,
           a.description route_description,
           a.count_parameters,
           a.count_required,
           p.interval,
           p.priority,
           p.on_init,
           p.is_visible
      FROM poll p
           LEFT JOIN
           (
               SELECT r.id route_id,
                      r.server_id,
                      r.urn,
                      r.description,
                      COUNT( * ) - IIF(p.id IS NULL, 1, 0) count_parameters,
                      IFNULL(SUM(p.is_required), 0) count_required
                 FROM (
                          SELECT *
                            FROM route
                      )
                      r
                      LEFT JOIN
                      parameter p ON r.id = p.route_id
                GROUP BY r.id
           )
           a ON p.route_id = a.route_id
           LEFT JOIN
           server s ON s.id = a.server_id
     WHERE NOT p.is_active AND 
           NOT p.is_visible;


-- View: ds_10
CREATE VIEW ds_10 AS
WITH RECURSIVE cnt (
        x
    )
    AS (
        SELECT 1
        UNION ALL
        SELECT x + 1
          FROM cnt
         LIMIT 10
    )
    SELECT x
      FROM cnt;


-- View: ds_100
CREATE VIEW ds_100 AS
WITH RECURSIVE cnt (
        x
    )
    AS (
        SELECT 1
        UNION ALL
        SELECT x + 1
          FROM cnt
         LIMIT 100
    )
    SELECT x
      FROM cnt;


-- View: ds_1000
CREATE VIEW ds_1000 AS
WITH RECURSIVE cnt (
        x
    )
    AS (
        SELECT 1
        UNION ALL
        SELECT x + 1
          FROM cnt
         LIMIT 1000
    )
    SELECT x
      FROM cnt;


-- View: exists_check
CREATE VIEW exists_check AS
    SELECT EXISTS (
               SELECT 1
                 FROM poll
                WHERE is_active AND 
                      on_check
           )
           is_check;


-- View: m_api_accounts
CREATE VIEW m_api_accounts AS
    SELECT [key] + 1 id,
           json_extract(value, "$.id") AS uid,
           json_extract(value, "$.type") AS type,
           json_extract(value, "$.name") AS name,
           json_extract(value, "$.status") AS status,
           json_extract(value, "$.openedDate") AS openedDate,
           json_extract(value, "$.closedDate") AS closedDate,
           json_extract(value, "$.accessLevel") AS accessLevel
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 144 AND 
                                 urn_id = 144 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.accounts");


-- View: m_api_assets
CREATE VIEW m_api_assets AS
    SELECT json_extract(a.value, "$.uid") AS asset_uid,
           json_extract(a.value, "$.type") AS type,
           json_extract(a.value, "$.name") AS name,
           json_extract(b.value, "$.uid") AS instrument_uid,
           json_extract(b.value, "$.figi") AS figi,
           json_extract(b.value, "$.instrumentType") AS instrumentType,
           json_extract(b.value, "$.ticker") AS ticker,
           json_extract(b.value, "$.classCode") AS classCode,
           json_extract(b.value, "$.links") AS links
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 107 AND 
                                 urn_id = 107 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.assets") a,
           json_each(a.value, "$.instruments") b;


-- View: m_api_bonds
CREATE VIEW m_api_bonds AS
    SELECT json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.ticker") AS ticker,
           json_extract(value, "$.classCode") AS classCode,
           json_extract(value, "$.isin") AS isin,
           json_extract(value, "$.lot") AS lot,
           json_extract(value, "$.currency") AS currency,
           json_extract(value, "$.shortEnabledFlag") AS shortEnabledFlag,
           json_extract(value, "$.name") AS name,
           json_extract(value, "$.exchange") AS exchange,
           json_extract(value, "$.couponQuantityPerYear") AS couponQuantityPerYear,
           json_extract(value, "$.maturityDate") AS maturityDate,
           json_extract(value, "$.nominal") AS nominal,
           json_extract(value, "$.stateRegDate") AS stateRegDate,
           json_extract(value, "$.placementDate") AS placementDate,
           json_extract(value, "$.placementPrice") AS placementPrice,
           json_extract(value, "$.countryOfRisk") AS countryOfRisk,
           json_extract(value, "$.countryOfRiskName") AS countryOfRiskName,
           json_extract(value, "$.sector") AS sector,
           json_extract(value, "$.issueKind") AS issueKind,
           json_extract(value, "$.issueSize") AS issueSize,
           json_extract(value, "$.issueSizePlan") AS issueSizePlan,
           json_extract(value, "$.tradingStatus") AS tradingStatus,
           json_extract(value, "$.otcFlag") AS otcFlag,
           json_extract(value, "$.buyAvailableFlag") AS buyAvailableFlag,
           json_extract(value, "$.sellAvailableFlag") AS sellAvailableFlag,
           json_extract(value, "$.floatingCouponFlag") AS floatingCouponFlag,
           json_extract(value, "$.perpetualFlag") AS perpetualFlag,
           json_extract(value, "$.amortizationFlag") AS amortizationFlag,
           json_extract(value, "$.minPriceIncrement") AS minPriceIncrement,
           json_extract(value, "$.apiTradeAvailableFlag") AS apiTradeAvailableFlag,
           json_extract(value, "$.uid") AS uid
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 98 AND 
                                 urn_id = 98 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.instruments");


-- View: m_api_books_asks
CREATE VIEW m_api_books_asks AS
    SELECT json_extract(r.body, '$.figi') figi,
           a.[key] id,
           json_extract(a.value, '$.price') price,
           json_extract(a.value, '$.quantity') quantity
      FROM response r,
           json_each(r.body, '$.asks') a
     WHERE r.route_id = 118 AND 
           r.code = 200;


-- View: m_api_books_bids
CREATE VIEW m_api_books_bids AS
    SELECT json_extract(r.body, '$.figi') figi,
           a.[key] id,
           json_extract(a.value, '$.price') price,
           json_extract(a.value, '$.quantity') quantity
      FROM response r,
           json_each(r.body, '$.bids') a
     WHERE r.route_id = 118 AND 
           r.code = 200;


-- View: m_api_books_header
CREATE VIEW m_api_books_header AS
    SELECT json_extract(r.body, '$.figi') figi,
           json_extract(r.body, '$.lastPrice') lastPrice,
           json_extract(r.body, '$.closePrice') closePrice,
           json_extract(r.body, '$.limitUp') limitUp,
           json_extract(r.body, '$.limitDown') limitDown
      FROM response r
     WHERE r.route_id = 118 AND 
           r.code = 200;


-- View: m_api_candles
CREATE VIEW m_api_candles AS
    SELECT a.urn_id,
           json_extract(value, "$.open") AS open,
           json_extract(value, "$.high") AS high,
           json_extract(value, "$.low") AS low,
           json_extract(value, "$.close") AS close,
           json_extract(value, "$.volume") AS volume,
           json_extract(value, "$.time") AS time,
           json_extract(value, "$.isComplete") AS isComplete
      FROM (
               SELECT body,
                      urn_id
                 FROM response
                WHERE code = 200 AND 
                      route_id = 115
           )
           a,
           json_each(a.body, "$.candles");


-- View: m_api_cmd_error
CREATE VIEW m_api_cmd_error AS
    SELECT cmd_id,
           json_extract(value, '$.code') code,
           json_extract(value, '$.message') message,
           json_extract(value, '$.description') description
      FROM (
               SELECT id cmd_id,
                      result value
                 FROM m_cmd
                WHERE json_extract(value, '$.code') IS NOT NULL
           );


-- View: m_api_cmd_order
CREATE VIEW m_api_cmd_order AS
    SELECT cmd_id,
           json_extract(value, '$.orderId') orderId,
           json_extract(value, '$.executionReportStatus') status,
           json_extract(value, '$.lotsRequested') lotsRequested,
           json_extract(value, '$.lotsExecuted') lotsExecuted,
           json_extract(value, '$.initialOrderPrice') initialOrderPrice,
           json_extract(value, '$.executedOrderPrice') executedOrderPrice,
           json_extract(value, '$.totalOrderAmount') totalOrderAmount,
           json_extract(value, '$.initialCommission') initialCommission,
           json_extract(value, '$.executedCommission') executedCommission,
           json_extract(value, '$.aciValue') aciValue,
           json_extract(value, '$.figi') figi,
           json_extract(value, '$.direction') direction,
           json_extract(value, '$.initialSecurityPrice') initialSecurityPrice,
           json_extract(value, '$.orderType') orderType,
           json_extract(value, '$.message') message
      FROM (
               SELECT id cmd_id,
                      result value
                 FROM m_cmd
                WHERE id > (
                               SELECT IFNULL(MAX(cmd_id), 0) 
                                 FROM m_cmd_order
                           )
AND 
                      type_id = 1 AND 
                      json_extract(value, '$.orderId') IS NOT NULL
           );


-- View: m_api_currencies
CREATE VIEW m_api_currencies AS
    SELECT json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.ticker") AS ticker,
           json_extract(value, "$.classCode") AS classCode,
           json_extract(value, "$.isin") AS isin,
           json_extract(value, "$.lot") AS lot,
           json_extract(value, "$.currency") AS currency,
           json_extract(value, "$.klong") AS klong,
           json_extract(value, "$.kshort") AS kshort,
           json_extract(value, "$.dlong") AS dlong,
           json_extract(value, "$.dshort") AS dshort,
           json_extract(value, "$.dlongMin") AS dlongMin,
           json_extract(value, "$.dshortMin") AS dshortMin,
           json_extract(value, "$.shortEnabledFlag") AS shortEnabledFlag,
           json_extract(value, "$.name") AS name,
           json_extract(value, "$.exchange") AS exchange,
           json_extract(value, "$.nominal") AS nominal,
           json_extract(value, "$.countryOfRisk") AS countryOfRisk,
           json_extract(value, "$.countryOfRiskName") AS countryOfRiskName,
           json_extract(value, "$.tradingStatus") AS tradingStatus,
           json_extract(value, "$.otcFlag") AS otcFlag,
           json_extract(value, "$.buyAvailableFlag") AS buyAvailableFlag,
           json_extract(value, "$.sellAvailableFlag") AS sellAvailableFlag,
           json_extract(value, "$.isoCurrencyName") AS isoCurrencyName,
           json_extract(value, "$.minPriceIncrement") AS minPriceIncrement,
           json_extract(value, "$.apiTradeAvailableFlag") AS apiTradeAvailableFlag,
           json_extract(value, "$.uid") AS uid
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 99 AND 
                                 urn_id = 99 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.instruments");


-- View: m_api_demo_accounts
CREATE VIEW m_api_demo_accounts AS
    SELECT [key] + 1 id,
           json_extract(value, "$.id") AS uid,
           json_extract(value, "$.type") AS type,
           json_extract(value, "$.name") AS name,
           json_extract(value, "$.status") AS status,
           json_extract(value, "$.openedDate") AS openedDate,
           json_extract(value, "$.closedDate") AS closedDate,
           json_extract(value, "$.accessLevel") AS accessLevel
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 132 AND 
                                 urn_id = 132 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.accounts");


-- View: m_api_demo_orders
CREATE VIEW m_api_demo_orders AS
    SELECT account_id,
           [key] + 1 id,
           json_extract(value, "$.orderId") AS orderId,
           json_extract(value, "$.executionReportStatus") AS executionReportStatus,
           json_extract(value, "$.lotsRequested") AS lotsRequested,
           json_extract(value, "$.lotsExecuted") AS lotsExecuted,
           json_extract(value, "$.initialOrderPrice") AS initialOrderPrice,
           json_extract(value, "$.executedOrderPrice") AS executedOrderPrice,
           json_extract(value, "$.totalOrderAmount") AS totalOrderAmount,
           json_extract(value, "$.averagePositionPrice") AS averagePositionPrice,
           json_extract(value, "$.initialCommission") AS initialCommission,
           json_extract(value, "$.executedCommission") AS executedCommission,
           json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.direction") AS direction,
           json_extract(value, "$.initialSecurityPrice") AS initialSecurityPrice,
           json_extract(value, "$.stages") AS stages,
           json_extract(value, "$.serviceCommission") AS serviceCommission,
           json_extract(value, "$.currency") AS currency,
           json_extract(value, "$.orderType") AS orderType,
           json_extract(value, "$.orderDate") AS orderDate
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 135 AND 
                      code = 200
           ),
           json_each(body, "$.orders");


-- View: m_api_demo_portfolio_positions
CREATE VIEW m_api_demo_portfolio_positions AS
    SELECT b.[key] + 1 id,
           a.account_id,
           json_extract(b.value, '$.figi') figi,
           json_extract(b.value, '$.instrumentType') instrumentType,
           json_extract(b.value, '$.quantity') quantity,
           json_extract(b.value, '$.averagePositionPrice') averagePositionPrice,
           json_extract(b.value, '$.averagePositionPricePt') averagePositionPricePt
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 136 AND 
                      code = 200
           )
           a,
           json_each(a.body, "$.positions") b;


-- View: m_api_demo_portfolio_totals
CREATE VIEW m_api_demo_portfolio_totals AS
    SELECT account_id,
           [key],
           value
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 136 AND 
                      code = 200
           ),
           json_each(body, "$") 
     WHERE type = 'object';


-- View: m_api_demo_positions
CREATE VIEW m_api_demo_positions AS
    SELECT account_id,
           [key] name,
           value
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 137 AND 
                      code = 200
           ),
           json_each(body, "$");


-- View: m_api_futures
CREATE VIEW m_api_futures AS
    SELECT json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.ticker") AS ticker,
           json_extract(value, "$.classCode") AS classCode,
           json_extract(value, "$.lot") AS lot,
           json_extract(value, "$.currency") AS currency,
           json_extract(value, "$.klong") AS klong,
           json_extract(value, "$.kshort") AS kshort,
           json_extract(value, "$.dlong") AS dlong,
           json_extract(value, "$.dshort") AS dshort,
           json_extract(value, "$.dlongMin") AS dlongMin,
           json_extract(value, "$.dshortMin") AS dshortMin,
           json_extract(value, "$.shortEnabledFlag") AS shortEnabledFlag,
           json_extract(value, "$.name") AS name,
           json_extract(value, "$.exchange") AS exchange,
           json_extract(value, "$.firstTradeDate") AS firstTradeDate,
           json_extract(value, "$.lastTradeDate") AS lastTradeDate,
           json_extract(value, "$.futuresType") AS futuresType,
           json_extract(value, "$.assetType") AS assetType,
           json_extract(value, "$.basicAsset") AS basicAsset,
           json_extract(value, "$.basicAssetSize") AS basicAssetSize,
           json_extract(value, "$.countryOfRisk") AS countryOfRisk,
           json_extract(value, "$.countryOfRiskName") AS countryOfRiskName,
           json_extract(value, "$.sector") AS sector,
           json_extract(value, "$.expirationDate") AS expirationDate,
           json_extract(value, "$.tradingStatus") AS tradingStatus,
           json_extract(value, "$.otcFlag") AS otcFlag,
           json_extract(value, "$.buyAvailableFlag") AS buyAvailableFlag,
           json_extract(value, "$.sellAvailableFlag") AS sellAvailableFlag,
           json_extract(value, "$.apiTradeAvailableFlag") AS apiTradeAvailableFlag,
           json_extract(value, "$.uid") AS uid
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 104 AND 
                                 urn_id = 104 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.instruments");


-- View: m_api_investment_funds
CREATE VIEW m_api_investment_funds AS
    SELECT json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.ticker") AS ticker,
           json_extract(value, "$.classCode") AS classCode,
           json_extract(value, "$.isin") AS isin,
           json_extract(value, "$.lot") AS lot,
           json_extract(value, "$.currency") AS currency,
           json_extract(value, "$.klong") AS klong,
           json_extract(value, "$.kshort") AS kshort,
           json_extract(value, "$.dlong") AS dlong,
           json_extract(value, "$.dshort") AS dshort,
           json_extract(value, "$.dlongMin") AS dlongMin,
           json_extract(value, "$.dshortMin") AS dshortMin,
           json_extract(value, "$.shortEnabledFlag") AS shortEnabledFlag,
           json_extract(value, "$.name") AS name,
           json_extract(value, "$.exchange") AS exchange,
           json_extract(value, "$.focusType") AS focusType,
           json_extract(value, "$.releasedDate") AS releasedDate,
           json_extract(value, "$.countryOfRisk") AS countryOfRisk,
           json_extract(value, "$.countryOfRiskName") AS countryOfRiskName,
           json_extract(value, "$.sector") AS sector,
           json_extract(value, "$.rebalancingFreq") AS rebalancingFreq,
           json_extract(value, "$.tradingStatus") AS tradingStatus,
           json_extract(value, "$.otcFlag") AS otcFlag,
           json_extract(value, "$.buyAvailableFlag") AS buyAvailableFlag,
           json_extract(value, "$.sellAvailableFlag") AS sellAvailableFlag,
           json_extract(value, "$.minPriceIncrement") AS minPriceIncrement,
           json_extract(value, "$.apiTradeAvailableFlag") AS apiTradeAvailableFlag,
           json_extract(value, "$.uid") AS uid
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 102 AND 
                                 urn_id = 102 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.instruments");


-- View: m_api_last_prices
CREATE VIEW m_api_last_prices AS
    SELECT json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.price") AS price,
           json_extract(value, "$.time") AS time
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 116 AND 
                                 urn_id = 116 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.lastPrices");


-- View: m_api_limit_rest
CREATE VIEW m_api_limit_rest AS
    SELECT json_extract(value, "$.limitPerMinute") AS limitPerMinute,
           json_extract(value, "$.methods") AS methods
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 147 AND 
                                 urn_id = 147 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.unaryLimits");


-- View: m_api_limit_streams
CREATE VIEW m_api_limit_streams AS
    SELECT json_extract(value, "$.limit") AS [limit],
           json_extract(value, "$.streams") AS streams
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 147 AND 
                                 urn_id = 147 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.streamLimits");


-- View: m_api_operations
CREATE VIEW m_api_operations AS
    SELECT json_extract(b.value, "$.id") AS id,
           json_extract(b.value, "$.parentOperationId") AS parentOperationId,
           json_extract(b.value, "$.currency") AS currency,
           json_extract(b.value, "$.payment") AS payment,
           json_extract(b.value, "$.state") AS state,
           json_extract(b.value, "$.quantity") AS quantity,
           json_extract(b.value, "$.quantityRest") AS quantityRest,
           json_extract(b.value, "$.figi") AS figi,
           json_extract(b.value, "$.instrumentType") AS instrumentType,
           json_extract(b.value, "$.date") AS date,
           json_extract(b.value, "$.type") AS type,
           json_extract(b.value, "$.operationType") AS operationType,
           json_extract(b.value, "$.trades") AS trades
      FROM (
               SELECT body,
                      urn_id
                 FROM response
                WHERE route_id = 133 AND 
                      code = 200
           )
           a,
           json_each(a.body, "$.operations") b;


-- View: m_api_portfolio
CREATE VIEW m_api_portfolio AS
    SELECT account_id,
           [key],
           value
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 124 AND 
                      code = 200
           ),
           json_each(body, "$");


-- View: m_api_portfolio_positions
CREATE VIEW m_api_portfolio_positions AS
    SELECT b.[key] + 1 id,
           a.account_id,
           json_extract(b.value, '$.figi') figi,
           json_extract(b.value, '$.instrumentType') instrumentType,
           json_extract(b.value, '$.quantity') quantity,
           json_extract(b.value, '$.averagePositionPrice') averagePositionPrice,
           json_extract(b.value, '$.averagePositionPricePt') averagePositionPricePt
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 123 AND 
                      code = 200
           )
           a,
           json_each(a.body, "$.positions") b;


-- View: m_api_portfolio_totals
CREATE VIEW m_api_portfolio_totals AS
    SELECT account_id,
           [key],
           value
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 123 AND 
                      code = 200
           ),
           json_each(body, "$") 
     WHERE type = 'object';


-- View: m_api_positions
CREATE VIEW m_api_positions AS
    SELECT account_id,
           [key] name,
           value
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 124 AND 
                      code = 200
           ),
           json_each(body, "$");


-- View: m_api_schedules
CREATE VIEW m_api_schedules AS
    SELECT json_extract(value, "$.exchange") AS exchange,
           json_extract(value, "$.days") AS days
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 114 AND 
                                 urn_id = 114 AND 
                                 code = 200
                      ), "$.exchanges");


-- View: m_api_stock
CREATE VIEW m_api_stock AS
    SELECT json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.ticker") AS ticker,
           json_extract(value, "$.classCode") AS classCode,
           json_extract(value, "$.isin") AS isin,
           json_extract(value, "$.lot") AS lot,
           json_extract(value, "$.currency") AS currency,
           json_extract(value, "$.shortEnabledFlag") AS shortEnabledFlag,
           json_extract(value, "$.name") AS name,
           json_extract(value, "$.exchange") AS exchange,
           json_extract(value, "$.ipoDate") AS ipoDate,
           json_extract(value, "$.issueSize") AS issueSize,
           json_extract(value, "$.countryOfRisk") AS countryOfRisk,
           json_extract(value, "$.countryOfRiskName") AS countryOfRiskName,
           json_extract(value, "$.sector") AS sector,
           json_extract(value, "$.issueSizePlan") AS issueSizePlan,
           json_extract(value, "$.nominal") AS nominal,
           json_extract(value, "$.tradingStatus") AS tradingStatus,
           json_extract(value, "$.otcFlag") AS otcFlag,
           json_extract(value, "$.buyAvailableFlag") AS buyAvailableFlag,
           json_extract(value, "$.sellAvailableFlag") AS sellAvailableFlag,
           json_extract(value, "$.divYieldFlag") AS divYieldFlag,
           json_extract(value, "$.shareType") AS shareType,
           json_extract(value, "$.minPriceIncrement") AS minPriceIncrement,
           json_extract(value, "$.apiTradeAvailableFlag") AS apiTradeAvailableFlag,
           json_extract(value, "$.uid") AS uid
      FROM json_each( (
                          SELECT body
                            FROM response
                           WHERE route_id = 113 AND 
                                 urn_id = 113 AND 
                                 code = 200
                           ORDER BY time DESC
                           LIMIT 1
                      ), "$.instruments");


-- View: m_api_trades
CREATE VIEW m_api_trades AS
    SELECT json_extract(value, "$.figi") AS figi,
           json_extract(value, "$.direction") AS direction,
           json_extract(value, "$.price") AS price,
           json_extract(value, "$.quantity") AS quantity,
           json_extract(value, "$.time") AS time
      FROM (
               SELECT body
                 FROM response
                WHERE route_id = 117 AND 
                      code = 200
           )
           a,
           json_each(a.body, "$.trades");


-- View: m_api_user
CREATE VIEW m_api_user AS
    SELECT json_extract(value, "$.premStatus") AS premStatus,
           json_extract(value, "$.qualStatus") AS qualStatus,
           json_extract(value, "$.qualifiedForWorkWith") AS qualifiedForWorkWith,
           json_extract(value, "$.tariff") AS tariff
      FROM (
               SELECT body value
                 FROM response
                WHERE route_id = 145 AND 
                      urn_id = 145 AND 
                      code = 200
                ORDER BY time DESC
                LIMIT 1
           );


-- View: m_candles_by_ticks
CREATE VIEW m_candles_by_ticks AS
    SELECT instrument_id,
           1 tf_id,
           strftime('%s', time) time,
           (
               SELECT price
                 FROM m_tick
                WHERE instrument_id = a.instrument_id AND 
                      strftime('%Y-%m-%dT%H:%M:00Z', time_msec / 1000, 'unixepoch') = a.time
                ORDER BY time_msec
                LIMIT 1
           )
           open,
           high,
           low,
           (
               SELECT price
                 FROM m_tick
                WHERE instrument_id = a.instrument_id AND 
                      strftime('%Y-%m-%dT%H:%M:00Z', time_msec / 1000, 'unixepoch') = a.time
                ORDER BY time_msec DESC
                LIMIT 1
           )
           close,
           volume
      FROM (
               SELECT instrument_id,
                      strftime('%Y-%m-%dT%H:%M:00Z', time_msec / 1000, 'unixepoch') time,
                      MAX(price) high,
                      MIN(price) low,
                      COUNT( * ) volume
                 FROM m_tick
                GROUP BY instrument_id,
                         time
           )
           a;


-- View: m_deals
CREATE VIEW m_deals AS
    SELECT s.expert_id,
           s.instrument_id,
           s.tf_id,
           s.side_id,
           s.lot,
           (
               SELECT time
                 FROM m_candle
                WHERE instrument_id = s.instrument_id AND 
                      tf_id = s.tf_id AND 
                      time > s.time_open
                ORDER BY time
                LIMIT 1
           )
           time_open,
           (
               SELECT time
                 FROM m_candle
                WHERE instrument_id = s.instrument_id AND 
                      tf_id = s.tf_id AND 
                      time > s.time_close
                ORDER BY time
                LIMIT 1
           )
           time_close,
           (
               SELECT open
                 FROM m_candle
                WHERE instrument_id = s.instrument_id AND 
                      tf_id = s.tf_id AND 
                      time > s.time_open
                ORDER BY time
                LIMIT 1
           )
           price_open,
           (
               SELECT open
                 FROM m_candle
                WHERE instrument_id = s.instrument_id AND 
                      tf_id = s.tf_id AND 
                      time > s.time_close
                ORDER BY time
                LIMIT 1
           )
           price_close
      FROM (
               SELECT s.expert_id,
                      s.instrument_id,
                      s.tf_id,
                      s.side_id,
                      s.lot,
                      s.time time_open,
                      (
                          SELECT time
                            FROM m_signals
                           WHERE expert_id = s.expert_id AND 
                                 side_id = s.side_id AND 
                                 type_id = 1 AND 
                                 time > s.time
                           ORDER BY time
                           LIMIT 1
                      )
                      time_close
                 FROM m_signals s
                WHERE type_id = 0
           )
           s/* WHERE s.expert_id=3 */;


-- View: m_experts
CREATE VIEW m_experts AS
    SELECT e.id,
           inst.id instrument_id,
           e.params,
           IFNULL(json_extract(j.value, '$.lot'), 1) lot,
           IFNULL(json_extract(j.value, '$.mode'), 1) mode
      FROM m_input i,
           json_each(i.value) j,
           m_expert e ON e.name = json_extract(j.value, '$.name'),
           m_instrument inst ON inst.ticker = json_extract(j.value, '$.ticker') 
     WHERE i.name = 'experts';


-- View: m_experts_new_signals
CREATE VIEW m_experts_new_signals AS
    SELECT e.id expert_uni_id,
           d.time
      FROM m_data_int d,
           m_buffer b ON d.buffer_id = b.id,
           m_expert_uni e ON e.indi_id = b.indi_id AND 
                             d.value = e.iValue
     WHERE d.time > (
                        SELECT IFNULL(MAX(time), 0) 
                          FROM m_signal
                         WHERE expert_uni_id = e.id
                    )
     GROUP BY e.expert_id,
              d.time
    HAVING COUNT( * ) = 1 OR 
           (MAX(side_id) = MIN(side_id) AND 
            MAX(type_id) = MIN(type_id) );


-- View: m_fk_buffer
CREATE VIEW m_fk_buffer AS
    SELECT b.id,
           b2.id link_id
      FROM m_fk_indi i,
           m_buffer b ON i.id = b.indi_id,
           m_buffer b2 ON i.link_id = b2.indi_id;


-- View: m_fk_indi
CREATE VIEW m_fk_indi AS
    SELECT i.id,
           i2.id link_id
      FROM m_indicator i,
           json_each(i.params),
           m_indicator i2 ON i2.instrument_id = IFNULL(json_extract(value, '$.instrument_id'), i.instrument_id) AND 
                             i2.tf_id = IFNULL(json_extract(value, '$.tf_id'), i.tf_id) AND 
                             i2.params = json_extract(value, '$.params') 
     WHERE json_type(i.params) = 'array';


-- View: m_indi_ma
CREATE VIEW m_indi_ma AS
    SELECT id,
           instrument_id,
           tf_id,
           buffers,
           CAST (IFNULL(json_extract(params, '$.mode'), 0) AS INT) mode,
           CAST (IFNULL(json_extract(params, '$.period'), 14) AS INT) period,
           CAST (IFNULL(json_extract(params, '$.price'), 0) AS INT) price,
           CAST (IFNULL(json_extract(params, '$.shift'), 0) AS INT) shift
      FROM m_indicator
     WHERE name = 'MA';


-- View: m_indi_new_data_by_intersection
CREATE VIEW m_indi_new_data_by_intersection AS
    SELECT buffer_id,
           time,
           IIF(div = div_last, 0, IIF(div < div_last, 1, 2) ) value
      FROM (
               SELECT fkb.id buffer_id,
                      d.time,
                      (SUM(IIF(d.buffer_id % 2, d.value, -d.value) ) < 0) div,
                      (SUM( (
                                SELECT IIF(d.buffer_id % 2, value, -value) 
                                  FROM m_data
                                 WHERE buffer_id = d.buffer_id AND 
                                       time < d.time
                                 ORDER BY time DESC
                                 LIMIT 1
                            )
                       ) < 0) div_last
                 FROM m_data d,
                      m_fk_buffer fkb ON d.buffer_id = fkb.link_id
                WHERE fkb.id IN (
                          SELECT DISTINCT id
                            FROM m_fk_buffer
                           GROUP BY id
                          HAVING COUNT(id) = 2
                      )
AND 
                      d.time > (
                                   SELECT IFNULL(MAX(time), 0) 
                                     FROM m_data_int
                                    WHERE buffer_id = fkb.id
                               )
                GROUP BY fkb.id,
                         d.time
               HAVING div_last IS NOT NULL
           )
     WHERE value > 0;


-- View: m_indi_new_data_by_ma
CREATE VIEW m_indi_new_data_by_ma AS
    SELECT b.id buffer_id,
           c.time,
           (
               SELECT IIF(c.idx - ma.shift < ma.period OR 
                          (c.idx - ma.shift > MAX(idx) ), NULL, ROUND(AVG(CASE WHEN ma.price = 0 THEN close WHEN ma.price = 1 THEN open WHEN ma.price = 2 THEN high WHEN ma.price = 3 THEN low END), 8) ) 
                 FROM m_candle
                WHERE instrument_id = c.instrument_id AND 
                      tf_id = c.tf_id AND 
                      idx <= c.idx - ma.shift AND 
                      idx > c.idx - ma.shift - ma.period
           )
           value
      FROM m_candle c,
           m_indi_ma ma ON c.instrument_id = ma.instrument_id AND 
                           c.tf_id = ma.tf_id,
           m_instrument_config_tf ctf ON c.instrument_id = ctf.id AND 
                                         c.tf_id = ctf.tf_id,
           m_buffer b ON ma.id = b.indi_id
     WHERE ctf.is_full = 1 AND 
           c.time > (
                        SELECT IFNULL(MAX(time), 0) 
                          FROM m_data
                         WHERE buffer_id = b.id
                    )
AND 
           value IS NOT NULL;


-- View: m_indi_new_data_by_step
CREATE VIEW m_indi_new_data_by_step AS
    SELECT b.id buffer_id,
           c.time,
           strftime('%M', c.time, 'unixepoch') % 2 value
      FROM m_candle c,
           m_indi_step ma ON c.instrument_id = ma.instrument_id AND 
                             c.tf_id = ma.tf_id,
           m_instrument_config_tf ctf ON c.instrument_id = ctf.id AND 
                                         c.tf_id = ctf.tf_id,
           m_buffer b ON ma.id = b.indi_id
     WHERE ctf.is_full = 1 AND 
           c.time > (
                        SELECT IFNULL(MAX(time), 0) 
                          FROM m_data_int
                         WHERE buffer_id = b.id
                    )
AND 
           value IS NOT NULL;


-- View: m_indi_step
CREATE VIEW m_indi_step AS
    SELECT id,
           instrument_id,
           tf_id,
           buffers
      FROM m_indicator
     WHERE name = 'STEP';


-- View: m_input_instruments_config_tf
CREATE VIEW m_input_instruments_config_tf AS
    SELECT DISTINCT i.id,
                    e.id tf_id,
                    json_extract(j_tf.value, '$.timeLimit') time_limit
      FROM m_instrument i,
           m_input inp_t ON inp_t.name = 'tickers',
           json_each(inp_t.value) j_t ON i.ticker = j_t.value,
           m_input inp_tf,
           json_each(IIF(EXISTS (
                             SELECT 1
                               FROM json_each(inp_tf.value) j
                              WHERE json_extract(j.value, '$.seconds') = 86400
                         ), inp_tf.value, json_insert(inp_tf.value, '$[#]', '{"seconds":86400}') ) ) j_tf ON inp_tf.name = 'timeFrames',
           m_enum_tf e ON json_extract(j_tf.value, '$.seconds') = e.seconds;


-- View: m_input_instruments_download
CREATE VIEW m_input_instruments_download AS
    SELECT i.id,
           (j_b.value IS NOT NULL) get_book,
           (j_tr.value IS NOT NULL) get_trades,
           i.ticker,
           i.figi
      FROM m_instrument i,
           m_input inp_t ON inp_t.name = 'tickers',
           json_each(inp_t.value) j_t ON i.ticker = j_t.value,
           m_input inp_b ON inp_b.name = 'books'
           LEFT JOIN
           json_each(inp_b.value) j_b ON i.ticker = j_b.value,
           m_input inp_tr ON inp_tr.name = 'trades'
           LEFT JOIN
           json_each(inp_tr.value) j_tr ON i.ticker = j_tr.value;


-- View: m_input_others
CREATE VIEW m_input_others AS
    SELECT IFNULL(json_extract(value, '$.clearCandleHistory'), 0) clearCandleHistory,
           IFNULL(json_extract(value, '$.getData'), 0) getData
      FROM m_input
     WHERE name = 'others';


-- View: m_input_trade
CREATE VIEW m_input_trade AS
    SELECT IFNULL(json_extract(value, '$.algo'), 0) algo,
           IFNULL(json_extract(value, '$.real'), 0) real,
           IFNULL(json_extract(value, '$.demo'), 0) demo,
           IFNULL(json_extract(value, '$.long'), 0) long,
           IFNULL(json_extract(value, '$.short'), 0) short
      FROM m_input
     WHERE name = 'trade';


-- View: m_instruments_info
CREATE VIEW m_instruments_info AS
    SELECT i.id,
           tf.name tf,
           i.figi,
           i.ticker,
           i.name,
           strftime('%Y-%m-%d %H:%M:%S', a.time_min, 'unixepoch') time_min,
           strftime('%Y-%m-%d %H:%M:%S', a.time_max, 'unixepoch') time_max
      FROM m_instrument_download i_d,
           m_instrument i ON i_d.id = i.id
           LEFT JOIN
           (
               SELECT instrument_id,
                      tf_id,
                      MIN(time) time_min,
                      MAX(time) time_max
                 FROM m_candle
                GROUP BY instrument_id,
                         tf_id
           )
           a ON i.id = a.instrument_id,
           m_enum_tf tf ON tf.id = a.tf_id;


-- View: m_instruments_schedules
CREATE VIEW m_instruments_schedules AS
    SELECT s.instrument_id,
           a.startTime,
           a.endTime,
           strftime('%s', 'now') >= strftime('%s', a.startTime) AND 
           strftime('%s', 'now') <= strftime('%s', a.endTime) on_trade
      FROM m_instruments_sets s,
           (
               SELECT exchange_id,
                      MIN(date) date,
                      startTime,
                      endTime
                 FROM m_uni_schedules
                GROUP BY exchange_id
           )
           a ON s.exchange_id = a.exchange_id;


-- View: m_instruments_sets
CREATE VIEW m_instruments_sets AS
    SELECT mui.*
      FROM m_instrument_download mid,
           m_uni_instruments mui ON mid.id = mui.instrument_id;


-- View: m_signal_active
CREATE VIEW m_signal_active AS
    SELECT e.expert_id,
           e.instrument_id,
           e.tf_id,
           e.lot,
           e.side_id,
           e.type_id,
           MAX(s.time) time
      FROM m_expert_uni e,
           m_signal s ON e.id = s.expert_uni_id,
           m_input_trade it,
           m_experts ei ON e.expert_id = ei.id
     WHERE s.time > (
                        SELECT IFNULL(MAX(time), 0) 
                          FROM m_cmd_prepare
                         WHERE expert_id = e.expert_id AND 
                               instrument_id = e.instrument_id
                    )
AND 
           s.time > (strftime('%s', 'now') - (e.activeSeconds) ) AND 
           ( (e.side_id = 0 AND 
              it.long) OR 
             (e.side_id = 1 AND 
              it.short) ) AND 
           (ei.mode = 2 OR 
            (ei.mode = 3 AND 
             it.demo) OR 
            (ei.mode = 4 AND 
             it.real) ) 
     GROUP BY e.expert_id,
              e.instrument_id,
              e.tf_id;


-- View: m_signals
CREATE VIEW m_signals AS
    SELECT e.expert_id,
           e.instrument_id,
           e.tf_id,
           e.lot,
           e.side_id,
           e.type_id,
           s.time
      FROM m_expert_uni e,
           m_signal s ON e.id = s.expert_uni_id;


-- View: m_stat_deals
CREATE VIEW m_stat_deals AS
    SELECT expert_id,
           instrument_id,
           tf_id,
           side_id,
           lot,
           time_open,
           time_close,
           time_div,
           price_open,
           price_close,
           ROUND(percent, 2) percent,
           ROUND(percent * lot, 2) percent_by_lot,
           ROUND(profit, 2) profit,
           ROUND(profit * lot, 2) profit_by_lot
      FROM (
               SELECT *,
                      (time_close - time_open) time_div,
                      IIF(side_id = 0, 1, -1) * (price_close - price_open) / (price_open * 0.01) percent,
                      IIF(side_id = 0, 1, -1) * (price_close - price_open) profit
                 FROM m_deals
           );


-- View: m_stat_experts
CREATE VIEW m_stat_experts AS
    SELECT a.expert_id,
           b.deposit,
           ROUND(b.deposit + a.profit_sum, 2) balance,
           ROUND(d.profit_buy + d.profit_sell + c.loss_buy + c.loss_sell, 2) result,
           ROUND(d.profit_buy + d.profit_sell, 2) profit,
           ROUND(c.loss_buy + c.loss_sell, 2) loss,
           (d.profit_deals_buy + d.profit_deals_sell + c.loss_deals_buy + c.loss_deals_sell) deals,
           a.profit_max,
           ROUND( (d.profit_avg_buy + d.profit_avg_sell) / 2, 2) profit_avg,
           ROUND(d.profit_buy, 2) profit_buy,
           ROUND(d.profit_sell, 2) profit_sell,
           ROUND(d.profit_avg_buy, 2) profit_avg_buy,
           ROUND(d.profit_avg_sell, 2) profit_avg_sell,
           d.profit_deals_buy,
           d.profit_deals_sell,
           d.profit_deals_buy + d.profit_deals_sell profit_deals,
           a.loss_max,
           ROUND( (c.loss_avg_buy + c.loss_avg_sell) / 2, 2) loss_avg,
           ROUND(c.loss_buy, 2) loss_buy,
           ROUND(c.loss_sell, 2) loss_sell,
           ROUND(c.loss_avg_buy, 2) loss_avg_buy,
           ROUND(c.loss_avg_sell, 2) loss_avg_sell,
           c.loss_deals_buy,
           c.loss_deals_sell,
           c.loss_deals_buy + c.loss_deals_sell loss_deals,
           ROUND( (a.profit_sum) / IIF(b.deposit = 0, 1, b.deposit) * 100, 2) AS percent,
           IFNULL(e.deals_H24, 0) deals_H24,
           a.last_time_deal
      FROM (
               SELECT expert_id,
                      SUM(profit) AS profit_sum,
                      MAX(profit) profit_max,
                      MIN(profit) loss_max,
                      datetime(MAX(time_open), 'unixepoch') last_time_deal
                 FROM m_stat_deals
                GROUP BY expert_id
           )
           a,
           (
               SELECT 3000 deposit
           )
           b,
           (
               SELECT expert_id,
                      MAX(IIF(side_id, 0, loss_deals) ) AS loss_deals_buy,
                      MAX(IIF(side_id, loss_deals, 0) ) AS loss_deals_sell,
                      MIN(IIF(side_id, 0, loss_avg) ) loss_avg_buy,
                      MIN(IIF(side_id, loss_avg, 0) ) loss_avg_sell,
                      MIN(IIF(side_id, 0, loss_sum) ) loss_buy,
                      MIN(IIF(side_id, loss_sum, 0) ) loss_sell
                 FROM (
                          SELECT expert_id,
                                 side_id,
                                 SUM(profit) loss_sum,
                                 AVG(profit) loss_avg,
                                 COUNT(expert_id) loss_deals
                            FROM m_stat_deals
                           WHERE profit < 0
                           GROUP BY expert_id,
                                    side_id
                      )
                GROUP BY expert_id
           )
           c ON a.expert_id = c.expert_id,
           (
               SELECT expert_id,
                      MAX(IIF(side_id, 0, profit_deals) ) AS profit_deals_buy,
                      MAX(IIF(side_id, profit_deals, 0) ) AS profit_deals_sell,
                      MAX(IIF(side_id, 0, profit_avg) ) profit_avg_buy,
                      MAX(IIF(side_id, profit_avg, 0) ) profit_avg_sell,
                      MAX(IIF(side_id, 0, profit_sum) ) profit_buy,
                      MAX(IIF(side_id, profit_sum, 0) ) profit_sell
                 FROM (
                          SELECT expert_id,
                                 side_id,
                                 SUM(profit) profit_sum,
                                 AVG(profit) profit_avg,
                                 COUNT(expert_id) profit_deals
                            FROM m_stat_deals
                           WHERE profit >= 0
                           GROUP BY expert_id,
                                    side_id
                      )
                GROUP BY expert_id
           )
           d ON c.expert_id = d.expert_id
           LEFT JOIN
           (
               SELECT expert_id,
                      COUNT(expert_id) deals_H24
                 FROM m_stat_deals
                WHERE time_open > (CAST (strftime('%s', 'now') AS INT) - 86400) 
                GROUP BY expert_id
           )
           e ON d.expert_id = e.expert_id;


-- View: m_stat_experts_metric
CREATE VIEW m_stat_experts_metric AS
    SELECT expert_id,
           ROUND(CAST (profit_deals AS DOUBLE) / IIF(loss_deals = 0, 1, loss_deals), 2) w,
           ROUND(CAST (profit_deals_buy AS DOUBLE) / IIF(loss_deals_buy = 0, 1, loss_deals_buy), 2) w_buy,
           ROUND(CAST (profit_deals_sell AS DOUBLE) / IIF(loss_deals_sell = 0, 1, loss_deals_sell), 2) w_sell,
           ROUND(ABS(profit_avg / IIF(loss_avg = 0, 1, loss_avg) ), 2) pf,
           ROUND(ABS(profit_avg_buy / IIF(loss_avg_buy = 0, 1, loss_avg_buy) ), 2) pf_buy,
           ROUND(ABS(profit_avg_sell / IIF(loss_avg_sell = 0, 1, loss_avg_sell) ), 2) pf_sell,
           ROUND( (profit + loss) / IIF(deals = 0, 1, deals), 8) m
      FROM m_stat_experts;


-- View: m_trade_ready
CREATE VIEW m_trade_ready AS
    SELECT (
               SELECT MAX(on_trade) 
                 FROM m_instruments_schedules
           )
           by_instruments;


-- View: m_uni_accounts
CREATE VIEW m_uni_accounts AS
    SELECT id,
           uid,
           type,
           name,
           openedDate,
           closedDate,
           accessLevel
      FROM m_api_accounts
     WHERE status = 'ACCOUNT_STATUS_OPEN' AND 
           accessLevel <> 'ACCOUNT_ACCESS_LEVEL_NO_ACCESS';


-- View: m_uni_bonds
CREATE VIEW m_uni_bonds AS
    SELECT i.id instrument_id,
           s.lot,
           c.id currency_id,
           s.name,
           e.id exchange_id,
           s.apiTradeAvailableFlag,
           s.buyAvailableFlag,
           s.sellAvailableFlag,
           s.otcFlag,
           ts.id trading_status_id,
           s.shortEnabledFlag,
           co.id country_id,
           CAST (printf('%s.%s', json_extract(s.nominal, '$.units'), json_extract(s.nominal, '$.nano') ) AS DOUBLE) nominal,
           CAST (printf('%s.%s', json_extract(s.minPriceIncrement, '$.units'), json_extract(s.minPriceIncrement, '$.nano') ) AS DOUBLE) minPriceIncrement,
           se.id sector_id,
           s.couponQuantityPerYear,
           CAST (strftime('%s', s.maturityDate) AS INT) time_maturity,
           CAST (strftime('%s', s.stateRegDate) AS INT) time_stateReg,
           CAST (strftime('%s', s.placementDate) AS INT) time_placement,
           CAST (printf('%s.%s', json_extract(s.placementPrice, '$.units'), json_extract(s.placementPrice, '$.nano') ) AS DOUBLE) placementPrice,
           s.issueKind,
           s.issueSize,
           s.issueSizePlan,
           s.floatingCouponFlag,
           s.perpetualFlag,
           s.amortizationFlag
      FROM m_api_bonds s,
           m_instrument i ON i.figi = s.figi
           LEFT JOIN
           m_enum_currency c ON c.name = s.currency
           LEFT JOIN
           m_enum_exchange e ON e.name = s.exchange
           LEFT JOIN
           m_enum_trading_status ts ON ts.name = s.tradingStatus
           LEFT JOIN
           m_enum_country co ON co.name = s.countryOfRisk
           LEFT JOIN
           m_enum_sector se ON se.name = s.sector;


-- View: m_uni_candles
CREATE VIEW m_uni_candles AS
    SELECT cr.instrument_id,
           cr.tf_id,
           CAST (strftime('%s', c.time) AS INT) time,
           CAST (json_extract(open, '$.units') AS INTEGER) + CAST (json_extract(open, '$.nano') AS DOUBLE) / 1000000000 open,
           CAST (json_extract(high, '$.units') AS INTEGER) + CAST (json_extract(high, '$.nano') AS DOUBLE) / 1000000000 high,
           CAST (json_extract(low, '$.units') AS INTEGER) + CAST (json_extract(low, '$.nano') AS DOUBLE) / 1000000000 low,
           CAST (json_extract(close, '$.units') AS INTEGER) + CAST (json_extract(close, '$.nano') AS DOUBLE) / 1000000000 close,
           IIF(c.volume IS NULL OR 
               c.volume <= 0, 1, c.volume) volume
      FROM m_api_candles c,
           m_candle_request cr ON cr.id = c.urn_id
     WHERE c.isComplete = 1;


-- View: m_uni_candles_current
CREATE VIEW m_uni_candles_current AS
    SELECT cr.instrument_id,
           cr.tf_id,
           CAST (strftime('%s', c.time) AS INT) time,
           CAST (json_extract(open, '$.units') AS INTEGER) + CAST (json_extract(open, '$.nano') AS DOUBLE) / 1000000000 open,
           CAST (json_extract(high, '$.units') AS INTEGER) + CAST (json_extract(high, '$.nano') AS DOUBLE) / 1000000000 high,
           CAST (json_extract(low, '$.units') AS INTEGER) + CAST (json_extract(low, '$.nano') AS DOUBLE) / 1000000000 low,
           CAST (json_extract(close, '$.units') AS INTEGER) + CAST (json_extract(close, '$.nano') AS DOUBLE) / 1000000000 close,
           IIF(c.volume IS NULL OR 
               c.volume <= 0, 1, c.volume) volume
      FROM m_api_candles c,
           m_candle_request cr ON cr.id = c.urn_id
     WHERE c.isComplete = 0 AND 
           CAST (strftime('%s', c.time) AS INT) > (
                                                      SELECT MAX(time) 
                                                        FROM m_candle
                                                       WHERE instrument_id = cr.instrument_id AND 
                                                             tf_id = cr.tf_id
                                                  );


-- View: m_uni_cmd_order
CREATE VIEW m_uni_cmd_order AS
    SELECT cmd_id,
           orderId,
           status,
           lotsRequested,
           lotsExecuted,
           json_extract(initialOrderPrice, '$.currency') currency,
           CAST (json_extract(initialOrderPrice, '$.units') AS INTEGER) + CAST (json_extract(initialOrderPrice, '$.nano') AS DOUBLE) / 1000000000 initialOrderPrice,
           CAST (json_extract(executedOrderPrice, '$.units') AS INTEGER) + CAST (json_extract(executedOrderPrice, '$.nano') AS DOUBLE) / 1000000000 executedOrderPrice,
           CAST (json_extract(totalOrderAmount, '$.units') AS INTEGER) + CAST (json_extract(totalOrderAmount, '$.nano') AS DOUBLE) / 1000000000 totalOrderAmount,
           CAST (json_extract(initialCommission, '$.units') AS INTEGER) + CAST (json_extract(initialCommission, '$.nano') AS DOUBLE) / 1000000000 initialCommission,
           CAST (json_extract(executedCommission, '$.units') AS INTEGER) + CAST (json_extract(executedCommission, '$.nano') AS DOUBLE) / 1000000000 executedCommission,
           CAST (json_extract(aciValue, '$.units') AS INTEGER) + CAST (json_extract(aciValue, '$.nano') AS DOUBLE) / 1000000000 aciValue,
           figi,
           direction,
           CAST (json_extract(initialSecurityPrice, '$.units') AS INTEGER) + CAST (json_extract(initialSecurityPrice, '$.nano') AS DOUBLE) / 1000000000 initialSecurityPrice,
           orderType,
           message
      FROM m_api_cmd_order;


-- View: m_uni_currencies
CREATE VIEW m_uni_currencies AS
    SELECT figi,
           IIF(isin == '', NULL, isin) isin,
           lot,
           currency,
           name,
           exchange,
           apiTradeAvailableFlag,
           buyAvailableFlag,
           sellAvailableFlag,
           otcFlag,
           tradingStatus,
           shortEnabledFlag,
           IIF(countryOfRisk == '', NULL, countryOfRisk) countryOfRisk,
           IIF(countryOfRiskName == '', NULL, countryOfRiskName) countryOfRiskName,
           CAST (printf('%s.%s', json_extract(nominal, '$.units'), json_extract(nominal, '$.nano') ) AS DOUBLE) nominal,
           CAST (printf('%s.%s', json_extract(minPriceIncrement, '$.units'), json_extract(minPriceIncrement, '$.nano') ) AS DOUBLE) minPriceIncrement,
           isoCurrencyName,
           IIF(kshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(klong, '$.units'), json_extract(klong, '$.nano') ) AS DOUBLE) ) klong,
           IIF(kshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(kshort, '$.units'), json_extract(kshort, '$.nano') ) AS DOUBLE) ) kshort,
           IIF(dlong IS NULL, NULL, CAST (printf('%s.%s', json_extract(dlong, '$.units'), json_extract(dlong, '$.nano') ) AS DOUBLE) ) dlong,
           IIF(dshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(dshort, '$.units'), json_extract(dshort, '$.nano') ) AS DOUBLE) ) dshort,
           IIF(dlongMin IS NULL, NULL, CAST (printf('%s.%s', json_extract(dlongMin, '$.units'), json_extract(dlongMin, '$.nano') ) AS DOUBLE) ) dlongMin,
           IIF(dshortMin IS NULL, NULL, CAST (printf('%s.%s', json_extract(dshortMin, '$.units'), json_extract(dshortMin, '$.nano') ) AS DOUBLE) ) dshortMin
      FROM m_api_currencies;


-- View: m_uni_demo_accounts
CREATE VIEW m_uni_demo_accounts AS
    SELECT id,
           uid,
           type,
           name,
           openedDate,
           closedDate,
           accessLevel
      FROM m_api_demo_accounts
     WHERE status = 'ACCOUNT_STATUS_OPEN' AND 
           accessLevel <> 'ACCOUNT_ACCESS_LEVEL_NO_ACCESS';


-- View: m_uni_futures
CREATE VIEW m_uni_futures AS
    SELECT i.id instrument_id,
           s.lot,
           c.id currency_id,
           e.id exchange_id,
           s.apiTradeAvailableFlag,
           s.buyAvailableFlag,
           s.sellAvailableFlag,
           s.otcFlag,
           ts.id trading_status_id,
           s.shortEnabledFlag,
           co.id country_id,
           se.id sector_id,
           IIF(kshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(klong, '$.units'), json_extract(klong, '$.nano') ) AS DOUBLE) ) klong,
           IIF(kshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(kshort, '$.units'), json_extract(kshort, '$.nano') ) AS DOUBLE) ) kshort,
           IIF(dlong IS NULL, NULL, CAST (printf('%s.%s', json_extract(dlong, '$.units'), json_extract(dlong, '$.nano') ) AS DOUBLE) ) dlong,
           IIF(dshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(dshort, '$.units'), json_extract(dshort, '$.nano') ) AS DOUBLE) ) dshort,
           IIF(dlongMin IS NULL, NULL, CAST (printf('%s.%s', json_extract(dlongMin, '$.units'), json_extract(dlongMin, '$.nano') ) AS DOUBLE) ) dlongMin,
           IIF(dshortMin IS NULL, NULL, CAST (printf('%s.%s', json_extract(dshortMin, '$.units'), json_extract(dshortMin, '$.nano') ) AS DOUBLE) ) dshortMin,
           CAST (strftime('%s', firstTradeDate) AS INT) firstTradeDate,
           CAST (strftime('%s', lastTradeDate) AS INT) lastTradeDate,
           futuresType,
           assetType,
           CAST (printf('%s.%s', json_extract(basicAssetSize, '$.units'), json_extract(basicAssetSize, '$.nano') ) AS DOUBLE) basicAssetSize,
           CAST (strftime('%s', expirationDate) AS INT) expirationDate
      FROM m_api_futures s,
           m_instrument i ON i.figi = s.figi
           LEFT JOIN
           m_enum_currency c ON c.name = s.currency
           LEFT JOIN
           m_enum_exchange e ON e.name = s.exchange
           LEFT JOIN
           m_enum_trading_status ts ON ts.name = s.tradingStatus
           LEFT JOIN
           m_enum_country co ON co.name = s.countryOfRisk
           LEFT JOIN
           m_enum_sector se ON se.name = s.sector;


-- View: m_uni_instruments
CREATE VIEW m_uni_instruments AS
    SELECT instrument_id,
           exchange_id,
           lot,
           minPriceIncrement
      FROM m_uni_bonds
    UNION ALL
    SELECT instrument_id,
           exchange_id,
           lot,
           minPriceIncrement
      FROM m_uni_stock/* UNION ALL

SELECT instrument_id,

exchange_id,

       lot,

       minPriceIncrement

  FROM m_uni_investment_funds

UNION ALL

SELECT instrument_id,

exchange_id,

       lot,

       minPriceIncrement

  FROM m_uni_currencies; */;


-- View: m_uni_investment_funds
CREATE VIEW m_uni_investment_funds AS
    SELECT figi,
           IIF(isin == '', NULL, isin) isin,
           lot,
           currency,
           name,
           exchange,
           apiTradeAvailableFlag,
           buyAvailableFlag,
           sellAvailableFlag,
           otcFlag,
           tradingStatus,
           shortEnabledFlag,
           IIF(countryOfRisk == '', NULL, countryOfRisk) countryOfRisk,
           IIF(countryOfRiskName == '', NULL, countryOfRiskName) countryOfRiskName,
           CAST (printf('%s.%s', json_extract(minPriceIncrement, '$.units'), json_extract(minPriceIncrement, '$.nano') ) AS DOUBLE) minPriceIncrement,
           IIF(sector == '', NULL, sector) sector,
           IIF(kshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(klong, '$.units'), json_extract(klong, '$.nano') ) AS DOUBLE) ) klong,
           IIF(kshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(kshort, '$.units'), json_extract(kshort, '$.nano') ) AS DOUBLE) ) kshort,
           IIF(dlong IS NULL, NULL, CAST (printf('%s.%s', json_extract(dlong, '$.units'), json_extract(dlong, '$.nano') ) AS DOUBLE) ) dlong,
           IIF(dshort IS NULL, NULL, CAST (printf('%s.%s', json_extract(dshort, '$.units'), json_extract(dshort, '$.nano') ) AS DOUBLE) ) dshort,
           IIF(dlongMin IS NULL, NULL, CAST (printf('%s.%s', json_extract(dlongMin, '$.units'), json_extract(dlongMin, '$.nano') ) AS DOUBLE) ) dlongMin,
           IIF(dshortMin IS NULL, NULL, CAST (printf('%s.%s', json_extract(dshortMin, '$.units'), json_extract(dshortMin, '$.nano') ) AS DOUBLE) ) dshortMin,
           focusType,
           CAST (strftime('%s', releasedDate) AS INT) time_released,
           IIF(rebalancingFreq == '', NULL, rebalancingFreq) rebalancingFreq
      FROM m_api_investment_funds;


-- View: m_uni_last_prices
CREATE VIEW m_uni_last_prices AS
    SELECT i.id instrument_id,
           CAST (strftime('%s', time) || substr(strftime('%f', time), -3) AS BIGINT) time_msec,
           CAST (json_extract(price, '$.units') AS INTEGER) + CAST (json_extract(price, '$.nano') AS DOUBLE) / 1000000000 price
      FROM m_instrument_download i_d,
           m_instrument i ON i_d.id = i.id,
           m_api_last_prices p ON p.figi = i.figi,
           (
               SELECT CAST (strftime('%s', 'now') || substr(strftime('%f', 'now'), -3) AS BIGINT) time_current
           )
           t
     WHERE time_msec <= t.time_current;


-- View: m_uni_portfolio_money
CREATE VIEW m_uni_portfolio_money AS
    SELECT p.account_id,
           c.id currency_id,
           CAST (json_extract(a.value, '$.units') AS INTEGER) + CAST (json_extract(a.value, '$.nano') AS DOUBLE) / 1000000000 amount
      FROM m_api_portfolio p,
           json_each(p.value) a,
           m_enum_currency c ON c.name = json_extract(a.value, "$.currency") 
     WHERE p.[key] = 'money';


-- View: m_uni_schedules
CREATE VIEW m_uni_schedules AS
    SELECT e.id exchange_id,
           json_extract(j.value, '$.date') date,
           json_extract(j.value, '$.startTime') startTime,
           json_extract(j.value, '$.endTime') endTime
      FROM m_api_schedules s,
           json_each(s.days) j,
           m_enum_exchange e ON lower(s.exchange) = lower(e.name) 
     WHERE json_extract(j.value, '$.isTradingDay') AND 
           strftime('%s', json_extract(j.value, '$.date') ) >= strftime('%s', 'now');


-- View: m_uni_stock
CREATE VIEW m_uni_stock AS
    SELECT i.id instrument_id,
           s.lot,
           c.id currency_id,
           e.id exchange_id,
           s.apiTradeAvailableFlag,
           s.buyAvailableFlag,
           s.sellAvailableFlag,
           s.otcFlag,
           ts.id trading_status_id,
           s.shortEnabledFlag,
           co.id country_id,
           CAST (printf('%s.%s', json_extract(s.nominal, '$.units'), json_extract(s.nominal, '$.nano') ) AS DOUBLE) nominal,
           CAST (printf('%s.%s', json_extract(s.minPriceIncrement, '$.units'), json_extract(s.minPriceIncrement, '$.nano') ) AS DOUBLE) minPriceIncrement,
           se.id sector_id,
           s.ipoDate,
           s.issueSize,
           s.issueSizePlan,
           s.divYieldFlag,
           sh.id share_id
      FROM m_api_stock s,
           m_instrument i ON i.figi = s.figi
           LEFT JOIN
           m_enum_currency c ON c.name = s.currency
           LEFT JOIN
           m_enum_exchange e ON e.name = s.exchange
           LEFT JOIN
           m_enum_trading_status ts ON ts.name = s.tradingStatus
           LEFT JOIN
           m_enum_country co ON co.name = s.countryOfRisk
           LEFT JOIN
           m_enum_sector se ON se.name = s.sector
           LEFT JOIN
           m_enum_share sh ON sh.name = s.shareType;


-- View: m_uni_totals
CREATE VIEW m_uni_totals AS
    SELECT a.account_id,
           b.[key] name,
           c.id currency_id,
           CAST (printf('%s.%s', json_extract(b.value, '$.units'), json_extract(b.value, '$.nano') ) AS DOUBLE) amount
      FROM (
               SELECT urn_id account_id,
                      body
                 FROM response
                WHERE route_id = 123 AND 
                      code = 200
           )
           a,
           json_each(a.body, "$") b,
           m_enum_currency c ON c.name = json_extract(b.value, "$.currency") 
     WHERE b.type = 'object';


-- View: requests_on_check
CREATE VIEW requests_on_check AS
    SELECT req.route_id,
           req.urn_id,
           req.url,
           req.method,
           req.security,
           req.headers,
           req.body
      FROM poll p
           JOIN
           active_requests req ON p.route_id = req.route_id AND 
                                  p.is_active AND 
                                  p.on_check
     ORDER BY p.priority DESC;


-- View: requests_on_init
CREATE VIEW requests_on_init AS
    SELECT req.route_id,
           req.urn_id,
           req.url,
           req.method,
           req.security,
           req.headers,
           req.body
      FROM poll p
           JOIN
           active_requests req ON p.route_id = req.route_id AND 
                                  p.is_active AND 
                                  p.on_init
     ORDER BY p.priority DESC;


-- View: requests_on_timer
CREATE VIEW requests_on_timer AS
    SELECT route_id,
           urn_id,
           url,
           method,
           security,
           headers,
           body
      FROM active_requests_for_timer
     WHERE priority = (
                          SELECT MIN(priority) 
                            FROM active_requests_for_timer
                      );


-- View: routes_next
CREATE VIEW routes_next AS
    SELECT route_id id
      FROM poll p
     WHERE p.is_active;


-- View: sleep
CREATE VIEW sleep AS
    SELECT IFNULL(max(tn.time - tc.time, 0), 1000) msec
      FROM time_current tc
           JOIN
           time_next_request tn;


-- View: tg_messages
CREATE VIEW tg_messages AS
    SELECT json_extract(j.value, '$.update_id') update_id,
           json_extract(j.value, '$.message.message_id') message_id,
           json_extract(j.value, '$.message.chat.id') chat_id,
           json_extract(j.value, '$.message.from.username') username,
           json_extract(j.value, '$.message.date') time,
           json_extract(j.value, '$.message.text') text,
           json_extract(e.value, '$.offset') AS [offset],
           json_extract(e.value, '$.length') length
      FROM tg_updated u,
           json_each(u.result) j,
           m_input i,
           json_each(i.value) ji ON ji.value = json_extract(j.value, '$.message.from.username'),
           json_each(j.value, '$.message.entities') e
     WHERE i.name = 'tgUsers' AND 
           json_extract(j.value, '$.message.from.is_bot') = 0 AND 
           json_extract(j.value, '$.message.chat.type') = 'private' AND 
           json_extract(e.value, '$.type') = 'bot_command';


-- View: tg_sendMessages
CREATE VIEW tg_sendMessages AS
    SELECT id,
           chat_id,
           text
      FROM (
               SELECT ms.id,
                      ms.chat_id,
                      IFNULL(l.description, ms.text) text
                 FROM tg_message_send ms
                      LEFT JOIN
                      m_log l ON l.id = ms.log_id
                WHERE ms.is_send = 0
           )
     WHERE text IS NOT NULL;


-- View: tg_updated
CREATE VIEW tg_updated AS
    SELECT json_extract(body, "$.result") AS result
      FROM (
               SELECT body
                 FROM response
                WHERE code = 200 AND 
                      route_id = 149
           )
     WHERE json_extract(body, "$.ok") = 1;


-- View: time_current
CREATE VIEW time_current AS
    SELECT CAST (strftime('%s', 'now') || substr(strftime('%f', 'now'), -3) AS BIGINT) time;


-- View: time_next_request
CREATE VIEW time_next_request AS
    SELECT MIN(IIF(res.time IS NULL, tc.time, res.time + p.interval) ) time
      FROM poll p
           JOIN
           active_requests req ON p.route_id = req.route_id
           LEFT JOIN
           (
               SELECT route_id,
                      urn_id,
                      code,
                      MAX(time) time
                 FROM response
                GROUP BY code,
                         route_id,
                         urn_id
           )
           res ON (res.code = 200 OR 
                   res.code = 201) AND 
                  req.route_id = res.route_id AND 
                  (req.urn_id = res.urn_id OR 
                   res.route_id IN (115) ) 
           LEFT JOIN
           (
               SELECT time
                 FROM time_current
           )
           tc;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
