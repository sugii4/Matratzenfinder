CREATE TABLE mattress (
    `ma_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `mattress` VARCHAR(255) NOT NULL,
    `price` INT (11) NOT NULL,
    `group_fk` INT(11) FOREIGN KEY REFERENCES `group`(g_id),
    `data_fk` INT FOREIGN KEY REFERENCES `pData`(d_id),
    `material_fk` INT FOREIGN KEY REFERENCES `material`(m_id),
    `allergy_fk` INT FOREIGN KEY REFERENCES `allergy`(a_id),
    `size_fk` INT FOREIGN KEY REFERENCES `size`(s_id),
    `complaints_fk` INT FOREIGN KEY REFERENCES `complaints`(c_id)
)

CREATE TABLE `allergy` (
    `a_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `allergyType` VARCHAR NOT NULL
)

CREATE TABLE pData (
    `d_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `weight` VARCHAR NOT NULL
)

CREATE TABLE material (
    `m_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `material` VARCHAR NOT NULL
)

CREATE TABLE size (
    `s_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `size` VARCHAR NOT NULL
)

CREATE TABLE complaints (
    `c_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `complaints` VARCHAR NOT NULL
)

CREATE TABLE group (
    `g_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `group` VARCHAR NOT NULL
)

/* Verbindungstabellen */

CREATE TABLE allergyMattress (
    `am_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `a_id` INT FOREIGN KEY,
    `ma_id` INT FOREIGN KEY
)

CREATE TABLE complaintsMattress (
    `cm_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `c_id` INT FOREIGN KEY NOT NULL,
    `ma_id` INT FOREIGN KEY NOT NULL
)

CREATE TABLE sizeMattress (
    `sm_id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    `ma_id` INT FOREIGN KEY NOT NULL,
    `s_id` INT FOREIGN KEY NOT NULL
)

/* matratzen einfügen */

INSERT INTO mattress (mattress, price, group_fk, material_fk)
VALUES ("Werkmeister M S70 Plus Kaltschaummatratze", 1149, 1, 1);

INSERT INTO mattress
VALUES ("Werkmeister M S55 Flexo Kaltschaummatratze", 879, 1, 1);

INSERT INTO mattress
VALUES ("Werkmeister M T631L Taschenfederkernmatratze", 1339, 1, 2);

INSERT INTO mattress
VALUES ("Werkmeister M S55 Komfort Kaltschaummatratze", 1129, 1, 1);

INSERT INTO mattress
VALUES ("Werkmeister M S70 Plus WS Kaltschaummatratze", 1149, 1, 1);

INSERT INTO mattress
VALUES ("dormiente Naturlatexmatratze Natural Eco Plus", 785, 1, 4);

INSERT INTO mattress
VALUES ("dormiente Naturlatexmatratze Natural Basic 3", 995, 1, 4);

INSERT INTO mattress
VALUES ("dormiente Naturlatexmatratze Natural Basic 4", 995, 1, 4);

INSERT INTO mattress
VALUES ("dormiente Naturmatratze Natur Pur Classic Hanf", 1571, 1, 4);

INSERT INTO mattress
VALUES ("dormiente Naturmatratze Natur Pur Deluxe Seegras", 2095, 1, 4);

INSERT INTO mattress
VALUES ("selecta K2 Kindermatratze", 399, 2, 6);

INSERT INTO mattress
VALUES ("Werkmeister YoungStar Kindermatratze", 449, 2, 6);

INSERT INTO mattress
VALUES ("Baumberger Vario Kindermatratze", 249, 2, 4);

INSERT INTO mattress
VALUES ("Prolana Kindermatratze Nele Plus", 699, 2, 4);

INSERT INTO mattress
VALUES ("Werkmeister M S55 Plus Kaltschaummatratze", 999, 1, 1);

INSERT INTO mattress(mattress, price, group_fk, material_fk)
VALUES ("Werkmeister M L430 Latexmatratze", 1499, 1, 3);

INSERT INTO mattress(mattress, price, group_fk, material_fk)
VALUES ("selecta L4 Latexmatratze", 699, 1, 3);

INSERT INTO mattress(mattress, price, group_fk, material_fk)
VALUES ("selecta V6 Visco-Matratze", 799, 1, 5);

INSERT INTO mattress(mattress, price, group_fk, material_fk)
VALUES ("Dermapur Feeling 21 Visco-Matratze", 1098, 1, 5);

/* größen einfügen */

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 1);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 2);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 3);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 4);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 5);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 6);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 7);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 8);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 9);

INSERT INTO size_mattress(ma_id, s_id)
VALUES (20, 10);

/* allergien einfügen */

INSERT INTO allergy_mattress(ma_id, a_id)
VALUES (20, 1);

INSERT INTO allergy_mattress(ma_id, a_id)
VALUES (20, 2);

INSERT INTO allergy_mattress(ma_id, a_id)
VALUES (20, 3);

/* beschwerden einfügen */

INSERT INTO complaints_mattress(ma_id, c_id)
VALUES (18, 1);

INSERT INTO complaints_mattress(ma_id, c_id)
VALUES (18, 2);

INSERT INTO complaints_mattress(ma_id, c_id)
VALUES (18, 3);

/* härtegrade hinzufügen */

INSERT INTO haertegrade_mattress(ma_id, h_id)
VALUES (11, "H1");

INSERT INTO haertegrade_mattress(ma_id, h_id)
VALUES (20, "H2");

INSERT INTO haertegrade_mattress(ma_id, h_id)
VALUES (11, "H3");

INSERT INTO haertegrade_mattress(ma_id, h_id)
VALUES (20, "H4");