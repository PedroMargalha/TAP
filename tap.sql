-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Maio-2020 às 11:12
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aviao`
--

CREATE TABLE `aviao` (
  `id` int(11) NOT NULL,
  `matricula` varchar(50) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `idModelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `id` int(11) NOT NULL,
  `designacao` varchar(255) NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `frota` varchar(255) DEFAULT NULL,
  `comprimento` varchar(10) DEFAULT NULL,
  `envergadura` varchar(10) DEFAULT NULL,
  `altura` varchar(10) DEFAULT NULL,
  `area_das_asas` varchar(10) DEFAULT NULL,
  `velocidade_cruzeiro` varchar(10) DEFAULT NULL,
  `altitude_cruzeiro` varchar(10) DEFAULT NULL,
  `alcance` varchar(10) DEFAULT NULL,
  `capacidade_combustivel` varchar(10) DEFAULT NULL,
  `numero_passageiros` int(11) DEFAULT NULL,
  `imgLink` varchar(255) DEFAULT NULL,
  `imgLinkGeneric` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`id`, `designacao`, `marca`, `frota`, `comprimento`, `envergadura`, `altura`, `area_das_asas`, `velocidade_cruzeiro`, `altitude_cruzeiro`, `alcance`, `capacidade_combustivel`, `numero_passageiros`, `imgLink`, `imgLinkGeneric`, `slogan`, `descricao`) VALUES
(1, 'Airbus A330-900neo', 'Airbus', 'Frota NEO', '63,69 m', '64 m', '16,79 m', '361,63 m2', '930 km/h', '12,500 m', '12,000 km', '139,090 l', 298, 'images/A330-900neov2.png', 'images/A330-900neov2-generic.png', 'Uma estreia nos ares com a nossa assinatura', 'A TAP Air Portugal é a primeira operadora do mundo a voar o novo A330-900neo. \r\nEsta aeronave está equipada com a cabina AirSpace by Airbus que, para além de \r\num design inovador, é ainda mais silenciosa e espaçosa e fornece ainda iluminação \r\naperfeiçoada e adaptada a cada fase de voo, \r\ncontribuindo significativamente para o aumento do conforto do passageiro. \r\nPossui cadeiras full-flat de última geração na Classe Executiva e cadeiras mais \r\nergonómicas e espaçosas em Económica.\r\n\r\nO A330-900neo é animado por um sistema de entretenimento e conectividade de última geração. \r\nEstas aeronaves são equipadas com motores Rolls-Royce Trent,sendo consideravelmente mais \r\neficientes e consumindo em média menos 17% de combustível por cadeira que a geração anterior \r\nde aeronaves, resultando ainda numa redução muito significativa das emissões de CO2 e ruído.  '),
(2, 'Airbus A321LR', 'Airbus', 'Frota NEO', '44,51 m', '35,80 m', '11,76 m', '122,4 m2', '900 km/h', '11,900 m', '7,400 km', '32,940 l', 168, 'images/Airbus_A321LR.png', 'images/Airbus_A321LR-generic.png', 'O conforto premium do longo curso num narrow body', 'O Airbus A321 Long Range está equipado com a tecnologia mais avançada. Concebido para operar voos do médio e do longo curso, a sua Classe Executiva inclui cadeiras full flat de última geração. Na Classe Económica, pode contar com cadeiras mais ergonómicas e espaçosas.\r\nAlém destas características, o Airbus A321LR tem Wi-Fi a bordo que permite o envio gratuito e ilimitado de mensagens escritas. '),
(3, 'Airbus A321-200neo', 'Airbus', 'Frota NEO', '44,51 m', '35,80 m', '11,76 m', '122,4 m2', '900 km/h', '11,900 m', '7,400 km', '32,940 l', 168, 'images/Airbus_A321-200neo.png', 'images/Airbus_A321-200neo-generic.png', 'Mais ecológico e polivalente', 'O A321neo acrescenta equipamentos, conforto e modernidade ao seu precursor, mas também uma maior eficiência. Consome até menos 15% de combustível do que o A321, revelando-se mais flexível em termos de operacionalidade e permitindo voar rotas mais longas.'),
(4, 'Airbus A320-200neo', 'Airbus', 'Frota NEO', '37,57 m', '35,80 m', '12,08 m', '122,40 m2', '900 km/h', '11,900 m', '6,500 km', '23.724 l', 174, 'images/Airbus A320-200neo.png', 'images/Airbus A320-200neo-generic.png', 'Único e progressista', '\r\nO Airbus A320-200neo é uma versão melhorada do modelo A320. Possui mais espaço de carga e de cabina, bem como maior alcance, e incorpora motores de última geração e dispositivos SharkletTM nas asas. \r\n\r\nEstas características transformam-no no avião de corredor único mais avançado e com maior economia de combustível. Permite uma redução das emissões poluentes e do ruído, face aos valores médios da indústria. \r\n'),
(5, 'Airbus A340-300', 'Airbus', 'Frota TAP', '63,69 m', '60,30 m', '16,83 m', '363,60 m2', '930 km/h', '12,500 m', '13,300 km', '140,640 l', 274, 'images/Airbus_A340-300.png', 'images/Airbus_A340-300-generic.png', 'Tranquilidade e conforto em longo curso', '\r\nO Airbus A340-300 dispõe do melhor conforto e serviço a bordo na mais tranquila cabine. É alimentado por quatro motores e opera independente das restrições que se aplicam a aviões a jato-twin o que permite voos diretos para os destinos.\r\n\r\nÉ também capaz de transportar até 25 toneladas como carga.\r\n'),
(6, 'Airbus A330-200', 'Airbus', 'Frota TAP', '58,82 m', '60,30 m', '17,39 m', '361,60 m2', '930 km/h', '12,500 m', '12,000 km', '139,090 l', 263, 'images/Airbus_A330-200.png', 'images/Airbus_A330-200-generic.png', 'O moderno', '\r\nO Airbus A330-200 é o mais recente modelo adquirido pela TAP e conta com 16 elementos na sua família.\r\n\r\nModerno, confortável e eficiente, o Airbus A330 é um dos aviões preferidos, tanto pelas companhias, como pelos passageiros. Com um eficiente consumo e uma cabine confortável e silenciosa, é uma das estrelas da nossa frota.\r\n\r\n'),
(7, 'Airbus A321-200', 'Airbus', 'Frota TAP', '44,51 m', '34,10 m', '12,09 m', '122,40 m2', '900 km/h', '11,900 m', '4,600 km', '23,700 l', 216, 'images/Airbus_A321-200.png', 'images/Airbus_A321-200-generic.png', 'O eficiente', '\r\nDentro da família dos A320, o Airbus A321 é o maior e mais eficiente. Este avião, de um só corredor, é o mais comercializado nesta categoria. Confortáveis, eficientes e versáteis, estas aeronaves são utilizadas tanto em viagens curtas, como em destinos intercontinentais\r\n'),
(8, 'Airbus A320-200', 'Airbus', 'Frota TAP', '37,57 m', '34,10 m', '12,14 m', '122,40 m2', '900 km/h', '11,900 m', '5,500 km', '23,859 l', 174, 'images/Airbus_A320-200.png', 'images/Airbus_A320-200-generic.png', 'O Pai desta Família', '\r\nO Conforto é o melhor sinónimo para descrever o Airbus A320, devido à sua ampla cabine. Este airbus já dispõe de tecnologia de ponta colocando-o no topo da eficiência desta frota.\r\n\r\nA versão que originou toda a família, é considerado o standard da categoria. Tem um corredor único e é aquele com que todos se comparam.'),
(9, 'Airbus A319-100', 'Airbus', 'Frota TAP', '33,84 m', '34,10 m', '12,17 m', '122,40 m2', '900 km/h', '11,900 m', '5,700 km', '23,859 l', 144, 'images/Airbus_A319-100.png', 'images/Airbus_A319-100-generic.png', 'O seu companheiro de viagens curtas', '\r\nO mesmo conforto dos irmãos mais velhos e uma autonomia perfeita para as viagens mais curtas, falamos, claro, do Airbus A319-100. São 132 lugares, distribuídos pelas duas classes disponíveis, no entanto a distribuição dos assentos é variável. O Airbus A319 alia um espaço generoso a uma performance invejável, suportando 5700 km de voo.'),
(10, 'Embraer 195', 'Embraer', 'TAP Express', '38,65 m', '28,72 m', '10,55 m', '92,50 m2', '870 km/h', '12,500 m', '4,260 km', '12,971 l', 118, 'images/Embraer-195.png', 'images/Embraer-195-generic.png', 'Contemplativo e amigo do ambiente', '\r\nO Embraer 195 é uma espécie de “estrela” dentro da sua família. Para além de ser a aeronave mais ampla da gama dos “E-jatos”, é também a mais leve, logrando maior economia de consumo de combustível. Com janelas quase 30% mais amplas do que os outros aviões, convida à contemplação da paisagem e corporiza um maior esforço para a preservar, graças à utilização de materiais mais silenciosos e de um motor menos poluente.\r\n'),
(11, 'Embraer 190', 'Embraer', 'TAP Express', '36,24 m', '28,72 m', '10,55 m', '92,50 m2', '890 km/h', '12,500 m', '4,445 km', '12,971 l', 106, 'images/Embraer-190.png', 'images/Embraer-190-generic.png', 'Mais conforto, melhor ambiente', '\r\nEste Embraer 190 é um dos aviões mais atuais, de tecnologia avançada, que permite abrir novas rotas e chegar a novos mercados. São mais flexíveis, melhores ao nível de economia e eficiência. Os companheiros perfeitos!\r\n\r\n*esta aeronave é operada pela Portugália.'),
(12, 'ATR 72-600', 'Airbus', 'TAP Express', '27,16 m', '27,05 m', '7,65 m', '61 m2', '508 km/h', '7,620 m', '1,529 km', '2,405 l', 70, 'images/Airbus_ATR-72.png', 'images/Airbus_ATR-72-generic.png', 'Doméstico, mas veloz', '\r\nO ATR 72-600 tem capacidade para 70 pessoas e faz voos domésticos. São mais vantajosos em rotas com mais de 750 Km, por serem mais velozes e de produtividade maior, em função da velocidade cruzeiro.\r\n\r\n*Esta aeronave é operada pela White.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `piloto`
--

CREATE TABLE `piloto` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `apelido` varchar(255) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `nLicencaPilotagem` varchar(255) DEFAULT NULL,
  `dataEmissaoLicenca` date DEFAULT NULL,
  `dataValidadeLicenca` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `piloto`
--

INSERT INTO `piloto` (`id`, `nome`, `apelido`, `dataNascimento`, `nLicencaPilotagem`, `dataEmissaoLicenca`, `dataValidadeLicenca`) VALUES
(1, 'Francisco', 'Silva', '1985-12-15', '124112', '1985-12-15', '1985-12-15'),
(2, 'Pedro', 'Meireles', '1980-12-15', '111111', '1995-10-10', '1999-12-21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `voo`
--

CREATE TABLE `voo` (
  `nVoo` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `partida` varchar(50) NOT NULL,
  `destino` varchar(50) NOT NULL,
  `idAviao` int(11) DEFAULT NULL,
  `idComandante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aviao`
--
ALTER TABLE `aviao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idModelo` (`idModelo`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `piloto`
--
ALTER TABLE `piloto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `voo`
--
ALTER TABLE `voo`
  ADD PRIMARY KEY (`nVoo`),
  ADD KEY `idAviao` (`idAviao`),
  ADD KEY `idComandante` (`idComandante`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aviao`
--
ALTER TABLE `aviao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `piloto`
--
ALTER TABLE `piloto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `voo`
--
ALTER TABLE `voo`
  MODIFY `nVoo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aviao`
--
ALTER TABLE `aviao`
  ADD CONSTRAINT `aviao_ibfk_1` FOREIGN KEY (`idModelo`) REFERENCES `modelo` (`id`);

--
-- Limitadores para a tabela `voo`
--
ALTER TABLE `voo`
  ADD CONSTRAINT `voo_ibfk_1` FOREIGN KEY (`idAviao`) REFERENCES `aviao` (`id`),
  ADD CONSTRAINT `voo_ibfk_2` FOREIGN KEY (`idComandante`) REFERENCES `piloto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
