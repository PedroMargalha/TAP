CREATE DATABASE IF NOT EXISTS tap;

-- USE tap;

CREATE TABLE MODELO(
    id INT AUTO_INCREMENT PRIMARY KEY,
    designacao VARCHAR(255) NOT NULL,
    marca VARCHAR(255),
    frota VARCHAR(255),
    comprimento VARCHAR(10),
    envergadura VARCHAR(10),
    altura VARCHAR(10),
    area_das_asas VARCHAR(10),
    velocidade_cruzeiro VARCHAR(10),
    altitude_cruzeiro VARCHAR(10),
    alcance VARCHAR(10),
    capacidade_combustivel VARCHAR(10),
    numero_passageiros INT,
    imgLink VARCHAR(255),
    imgLinkGeneric VARCHAR(255),
    slogan VARCHAR(255),
    descricao TEXT
);
-- DROP TABLE voo;
-- DROP TABLE aviao;
-- DROP TABLE piloto;
-- DROP TABLE modelo; 
INSERT INTO MODELO
(designacao,
marca, 
frota,
comprimento, 
envergadura, 
altura, 
area_das_asas, 
velocidade_cruzeiro, 
altitude_cruzeiro, 
alcance, 
capacidade_combustivel, 
numero_passageiros, 
imgLink,
imgLinkGeneric, 
slogan, 
descricao)
VALUES
('Airbus A330-900neo',
'Airbus',
'Frota NEO',
'63,69 m', '64 m','16,79 m', 
'361,63 m2', '930 km/h', '12,500 m', '12,000 km', 
'139,090 l', 298, 'images/A330-900neov2.png',
'images/A330-900neov2-generic.png',
'Uma estreia nos ares com a nossa assinatura',
'A TAP Air Portugal é a primeira operadora do mundo a voar o novo A330-900neo. 
Esta aeronave está equipada com a cabina AirSpace by Airbus que, para além de 
um design inovador, é ainda mais silenciosa e espaçosa e fornece ainda iluminação 
aperfeiçoada e adaptada a cada fase de voo, 
contribuindo significativamente para o aumento do conforto do passageiro. 
Possui cadeiras full-flat de última geração na Classe Executiva e cadeiras mais 
ergonómicas e espaçosas em Económica.

O A330-900neo é animado por um sistema de entretenimento e conectividade de última geração. 
Estas aeronaves são equipadas com motores Rolls-Royce Trent,sendo consideravelmente mais 
eficientes e consumindo em média menos 17% de combustível por cadeira que a geração anterior 
de aeronaves, resultando ainda numa redução muito significativa das emissões de CO2 e ruído.  '
),
('Airbus A321LR', 
'Airbus',
'Frota NEO',
'44,51 m', 
'35,80 m', 
'11,76 m',
'122,4 m2',
'900 km/h', 
'11,900 m', 
'7,400 km',
'32,940 l',
 168,
'images/Airbus_A321LR.png',
'images/Airbus_A321LR-generic.png',
'O conforto premium do longo curso num narrow body',
'O Airbus A321 Long Range está equipado com a tecnologia mais avançada. Concebido para operar voos do médio e do longo curso, a sua Classe Executiva inclui cadeiras full flat de última geração. Na Classe Económica, pode contar com cadeiras mais ergonómicas e espaçosas.
Além destas características, o Airbus A321LR tem Wi-Fi a bordo que permite o envio gratuito e ilimitado de mensagens escritas. '
),
('Airbus A321-200neo', 
'Airbus',
'Frota NEO',
'44,51 m', 
'35,80 m', 
'11,76 m',
'122,4 m2',
'900 km/h', 
'11,900 m', 
'7,400 km',
'32,940 l',
 168,
'images/Airbus_A321-200neo.png',
'images/Airbus_A321-200neo-generic.png',
'Mais ecológico e polivalente',
'O A321neo acrescenta equipamentos, conforto e modernidade ao seu precursor, mas também uma maior eficiência. Consome até menos 15% de combustível do que o A321, revelando-se mais flexível em termos de operacionalidade e permitindo voar rotas mais longas.'
),
('Airbus A320-200neo', 
'Airbus',
'Frota NEO',
'37,57 m', 
'35,80 m', 
'12,08 m',
'122,40 m2',
'900 km/h', 
'11,900 m', 
'6,500 km',
'23.724 l',
 174,
'images/Airbus A320-200neo.png',
'images/Airbus A320-200neo-generic.png',
'Único e progressista',
'
O Airbus A320-200neo é uma versão melhorada do modelo A320. Possui mais espaço de carga e de cabina, bem como maior alcance, e incorpora motores de última geração e dispositivos SharkletTM nas asas. 

Estas características transformam-no no avião de corredor único mais avançado e com maior economia de combustível. Permite uma redução das emissões poluentes e do ruído, face aos valores médios da indústria. 
'
),
('Airbus A340-300', 
'Airbus',
'Frota TAP',
'63,69 m', 
'60,30 m', 
'16,83 m',
'363,60 m2',
'930 km/h', 
'12,500 m', 
'13,300 km',
'140,640 l',
 274,
'images/Airbus_A340-300.png',
'images/Airbus_A340-300-generic.png',
'Tranquilidade e conforto em longo curso',
'
O Airbus A340-300 dispõe do melhor conforto e serviço a bordo na mais tranquila cabine. É alimentado por quatro motores e opera independente das restrições que se aplicam a aviões a jato-twin o que permite voos diretos para os destinos.

É também capaz de transportar até 25 toneladas como carga.
'
),
('Airbus A330-200', 
'Airbus',
'Frota TAP',
'58,82 m', 
'60,30 m', 
'17,39 m',
'361,60 m2',
'930 km/h', 
'12,500 m', 
'12,000 km',
'139,090 l',
 263,
'images/Airbus_A330-200.png',
'images/Airbus_A330-200-generic.png',
'O moderno',
'
O Airbus A330-200 é o mais recente modelo adquirido pela TAP e conta com 16 elementos na sua família.

Moderno, confortável e eficiente, o Airbus A330 é um dos aviões preferidos, tanto pelas companhias, como pelos passageiros. Com um eficiente consumo e uma cabine confortável e silenciosa, é uma das estrelas da nossa frota.

'
),
('Airbus A321-200', 
'Airbus',
'Frota TAP',
'44,51 m', 
'34,10 m', 
'12,09 m',
'122,40 m2',
'900 km/h', 
'11,900 m', 
'4,600 km',
'23,700 l',
 216,
'images/Airbus_A321-200.png',
'images/Airbus_A321-200-generic.png',
'O eficiente',
'
Dentro da família dos A320, o Airbus A321 é o maior e mais eficiente. Este avião, de um só corredor, é o mais comercializado nesta categoria. Confortáveis, eficientes e versáteis, estas aeronaves são utilizadas tanto em viagens curtas, como em destinos intercontinentais
'
),
('Airbus A320-200', 
'Airbus',
'Frota TAP',
'37,57 m', 
'34,10 m', 
'12,14 m',
'122,40 m2',
'900 km/h', 
'11,900 m', 
'5,500 km',
'23,859 l',
 174,
'images/Airbus_A320-200.png',
'images/Airbus_A320-200-generic.png',
'O Pai desta Família',
'
O Conforto é o melhor sinónimo para descrever o Airbus A320, devido à sua ampla cabine. Este airbus já dispõe de tecnologia de ponta colocando-o no topo da eficiência desta frota.

A versão que originou toda a família, é considerado o standard da categoria. Tem um corredor único e é aquele com que todos se comparam.'
),
('Airbus A319-100', 
'Airbus',
'Frota TAP',
'33,84 m', 
'34,10 m', 
'12,17 m',
'122,40 m2',
'900 km/h', 
'11,900 m', 
'5,700 km',
'23,859 l',
 144,
'images/Airbus_A319-100.png',
'images/Airbus_A319-100-generic.png',
'O seu companheiro de viagens curtas',
'
O mesmo conforto dos irmãos mais velhos e uma autonomia perfeita para as viagens mais curtas, falamos, claro, do Airbus A319-100. São 132 lugares, distribuídos pelas duas classes disponíveis, no entanto a distribuição dos assentos é variável. O Airbus A319 alia um espaço generoso a uma performance invejável, suportando 5700 km de voo.'
),
('Embraer 195', 
'Embraer',
'TAP Express',
'38,65 m', 
'28,72 m', 
'10,55 m',
'92,50 m2',
'870 km/h', 
'12,500 m', 
'4,260 km',
'12,971 l',
 118,
'images/Embraer-195.png',
'images/Embraer-195-generic.png',
'Contemplativo e amigo do ambiente',
'
O Embraer 195 é uma espécie de “estrela” dentro da sua família. Para além de ser a aeronave mais ampla da gama dos “E-jatos”, é também a mais leve, logrando maior economia de consumo de combustível. Com janelas quase 30% mais amplas do que os outros aviões, convida à contemplação da paisagem e corporiza um maior esforço para a preservar, graças à utilização de materiais mais silenciosos e de um motor menos poluente.
'),
('Embraer 190', 
'Embraer',
'TAP Express',
'36,24 m', 
'28,72 m', 
'10,55 m',
'92,50 m2',
'890 km/h', 
'12,500 m', 
'4,445 km',
'12,971 l',
 106,
'images/Embraer-190.png',
'images/Embraer-190-generic.png',
'Mais conforto, melhor ambiente',
'
Este Embraer 190 é um dos aviões mais atuais, de tecnologia avançada, que permite abrir novas rotas e chegar a novos mercados. São mais flexíveis, melhores ao nível de economia e eficiência. Os companheiros perfeitos!

*esta aeronave é operada pela Portugália.'),
('ATR 72-600', 
'Airbus',
'TAP Express',
'27,16 m', 
'27,05 m', 
'7,65 m',
'61 m2',
'508 km/h', 
'7,620 m', 
'1,529 km',
'2,405 l',
 70,
'images/Airbus_ATR-72.png',
'images/Airbus_ATR-72-generic.png',
'Doméstico, mas veloz',
'
O ATR 72-600 tem capacidade para 70 pessoas e faz voos domésticos. São mais vantajosos em rotas com mais de 750 Km, por serem mais velozes e de produtividade maior, em função da velocidade cruzeiro.

*Esta aeronave é operada pela White.');

CREATE TABLE PILOTO(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    apelido VARCHAR(255),
    dataNascimento DATE,
    nLicencaPilotagem VARCHAR(255),
    dataEmissaoLicenca DATE,
    dataValidadeLicenca DATE
);

INSERT INTO PILOTO
(nome, apelido, dataNascimento, nLicencaPilotagem, dataEmissaoLicenca, dataValidadeLicenca)
VALUES
('Francisco', 'Silva', '1985-12-15', '124112', '1985-12-15','1985-12-15'),
('Pedro', 'Meireles', '1980-12-15', '111111', '1995-10-10','1999-12-21');


CREATE TABLE Aviao(
id INT AUTO_INCREMENT PRIMARY KEY,
matricula VARCHAR(50),
nome VARCHAR(50) NOT NULL,
idModelo INT NOT NULL,
FOREIGN KEY (idModelo) REFERENCES Modelo(id)
);

CREATE TABLE Voo(
nVoo INT AUTO_INCREMENT PRIMARY KEY,
data DATE NOT NULL,
hora TIME NOT NULL,
partida VARCHAR(50) NOT NULL,
destino VARCHAR(50) NOT NULL,
idAviao INT,
idComandante INT,
FOREIGN KEY (idAviao) REFERENCES Aviao(id),
FOREIGN KEY (idComandante) REFERENCES Piloto(id)
);