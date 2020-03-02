CREATE DATABASE LBD
GO
USE LDB
GO
CREATE TABLE Doctores(
doctor_id INT not null primary key, 
Nombre VARCHAR(50) not null,
PrimerApellido VARCHAR(50) not null,
SegundoApellido VARCHAR(50) not null,
NombreCompleto as Nombre + ' ' + PrimerApellido + ' '  + SegundoApellido,
Especialidad VARCHAR (50) not null,
Telefono INT not null,
Salario INT not null,
)
CREATE TABLE Enfermeras(
nurse_id INT not null primary key, 
Nombre VARCHAR(50) not null,
PrimerApellido VARCHAR(50) not null,
SegundoApellido VARCHAR(50) not null,
NombreCompleto as Nombre + ' ' + PrimerApellido + ' '  + SegundoApellido,
Telefono INT not null,
Salario INT not null,

)
CREATE TABLE Planta(
floor_id VARCHAR(3)  primary key, 
Nombre VARCHAR(50) not null,
NumeroCamas INT not null,
)
CREATE TABLE Cama(
bed_id INT not null primary key, 
NPlanta VARCHAR(3) not null,
foreign key(NPlanta) references Planta(floor_id)
)
CREATE TABLE PacienteCama(
BedPatient_id INT not null primary key, 
NPlanta VARCHAR(3) not null,
FechaDeAsignacion datetime not null,
FechaDeSalida datetime not null,
NCama INT not null,
foreign key(NCama) references Cama(bed_id)
)
create index indx_FechaDeAsigancion 
on PacienteCama(FechaDeAsignacion desc)
create index indx_FechaDeSalida
on PacienteCama(FechaDeSalida desc)

