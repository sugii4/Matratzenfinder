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