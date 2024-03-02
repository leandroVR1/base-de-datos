CREATE TABLE servicioTransporte{
    id srv_transporte int PRIMARY KEY AUTO_INCREMENT,
    nombre_usuario varchar(255) NOT NULL,
    nombre_servicio varchar(255) NOT NULL,
    precio_servicio decimal(10,2) NOT NULL
    

}

CREATE TABLE Conductor(
    id_conductor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_conductor varchar(255) NOT NULL,
    apellido_conductor varchar(255) NOT NULL,
    telefono_conductor varchar(20) NOT NULL
)

CREATE TABLE empresa_movilidad(
    id_empresa_movilidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa_movilidad VARCHAR(255) NOT NULL
   
)

CREATE Table vehiculo_de_servicio(
    id_vehiculo_de_servicio INT AUTO_INCREMENT PRIMARY KEY,
    modelo_vehiculo_de_servicio VARCHAR(255) NOT NULL,
    placa_vehiculo_de_servicio VARCHAR(255) NOT NULL
)

ALTER Table `Conductor`
ADD id_vehiculo_de_servicio INT;

ALTER Table `Conductor`
ADD FOREIGN KEY (id_empresa_movilidad) REFERENCES empresas_movilidad(id_empresa_movilidad);


ALTER Table `Conductor`
ADD id_empresa_movilidad INT;




INSERT INTO vehiculo_de_servicio (modelo_vehiculo_de_servicio, placa_vehiculo_de_servicio) VALUES
('Civic', 'ABC123'),
('Corolla', 'DEF456'),
('Jetta', 'GHI789'),
('Camry', 'JKL012'),
('Accord', 'MNO345'),
('Sentra', 'PQR678'),
('Fusion', 'STU901'),
('Altima', 'VWX234'),
('Focus', 'YZA567'),
('3 Series', 'BCD890');


INSERT INTO `Conductor` (nombre_conductor, apellido_conductor, telefono_conductor) VALUES
('Juan', 'Pérez', '1234567890'),
('María', 'González', '2345678901'),
('Pedro', 'Martínez', '3456789012'),
('Laura', 'López', '4567890123'),
('Carlos', 'Sánchez', '5678901234'),
('Ana', 'Rodríguez', '6789012345'),
('José', 'Fernández', '7890123456'),
('Sofía', 'Díaz', '8901234567'),
('Diego', 'Torres', '9012345678'),
('Lucía', 'Ruiz', '0123456789');