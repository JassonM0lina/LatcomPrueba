# Create de database named intervalo
CREATE DATABASE IF NOT EXISTS interval_latcom;
# select the database created
USE interval_latcom;

# create the tables without relacion
CREATE TABLE IF NOT EXISTS inf_date(
	dates INT NOT NULL AUTO_INCREMENT,
	timesdayshourshourhourshours time  NOT NULL,
    name_day enum('monday','tuesday','wednesday','thrusday','friday','saturday','sunday'),
    duration_time int,
    PRIMARY KEY(id_date)
)ENGINE=INNODB; 


# create the tables with relacion
CREATE TABLE IF NOT EXISTS erlang(
	id_erlang INT NOT NULL AUTO_INCREMENT,
    vol int,
    tcp int,
	PRIMARY KEY (id_erlang),
    inf_id_date INT NOT NULL,
    CONSTRAINT fkerlang_date
    FOREIGN KEY(inf_id_date)
    REFERENCES inf_date(id_date)
)ENGINE = INNODB;
