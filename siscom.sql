-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 04-Jun-2019 às 23:05
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siscom`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idClientes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cpf` decimal(11,0) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `telefone` varchar(12) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idClientes`, `cpf`, `dataNascimento`, `nome`, `endereco`, `bairro`, `cidade`, `estado`, `telefone`, `celular`, `email`) VALUES
(5, '37514582104', '2002-04-12', 'Reginaldo Astolfo', 'Av. Rio Branco Nº 70', 'Centro', 'Araxá', 'MG', NULL, NULL, 'reginaldo2002@gmail.com'),
(7, '35428751503', '2003-04-17', 'Eduardo Rodrigues de Matos', '', NULL, 'Pitangueiras', 'SP', NULL, NULL, 'eduardoooax@gmail.com'),
(8, '72715605641', '1999-04-25', 'Tiago Yago Ian da Cruz', 'Rua Miguel Arcanjo Machado', 'Nossa Senhora da Conceição', 'João Monlevade', 'MG', '(31) 2619-27', '(31) 98403-5', 'tiagoyagoiandacruz__tiagoyagoiandacruz@bol.br'),
(9, '140830145', '1946-06-16', 'Manoel Francisco Duarte', 'Rua Manoel Rocha', 'Delfino Magalhães', 'Montes Claros', 'MG', '(38) 3878-04', '(38) 99915-4', 'manoelfranciscoduarte_@fabianocosta.com.br'),
(10, '34813610684', '1998-03-21', 'Carlos Eduardo Renato Sales', 'Rua Manoel Soares Costa', 'Pedra Branca (Justinópolis)', 'Ribeirão das Neves', 'MG', '(31) 2973-32', '(31) 98414-5', 'ccarloseduardorenatosales@robertacorrea.com'),
(11, '55593942625', '1995-09-13', 'Tatiane Laís Moreira', 'Rua Queluzito', 'Tijuco', 'Contagem', NULL, '31) 3988-912', '(31) 99715-4', 'tatianelaismoreira_@metroquali.com.br'),
(12, '64294606657', '1966-05-10', 'Elza Marlene Ayla Figueiredo', 'Rua Lagoa Quimera', 'Carmelo', 'Montes Claros', 'MG', '(38) 2830-28', '(38) 98536-0', 'elzamarleneaylafigueiredo..elzamarleneaylafigueire'),
(13, '2486252681', '1940-06-22', 'Sônia Natália Sebastiana Porto', 'Rua Grécia', 'Loteamento Novo Horizonte', 'Araxá', 'MG', '3436369215', '34993718614', 'sonianataliasebastianaporto__sonianataliasebastian'),
(14, '2814794612', '1987-05-17', 'Luan Ruan Assis', 'Rua Emídio Herculano', 'Nogueira Machado', 'Itaúna', 'MG', '3726076426', '37994505930', 'luanruanassis__luanruanassis@imagemeaudio.com.br'),
(15, '35296889673', '1977-07-21', 'Jorge Gabriel Kaique Aparício', 'Rua Urânio', 'Vila Ipiranga', 'Montes Claros', 'MG', '3825543449', '38991729965', 'jjorgegabrielkaiqueaparicio@vasconcelosdias.com'),
(16, NULL, '1982-01-25', 'Liz Emily Marlene das Neves', 'Rua João Eustaquio Borges', 'Caramuru', 'Patos de Minas', 'MG', '3436476238', '34992322958', 'lizemilymarlenedasneves..lizemilymarlenedasneves@c'),
(17, '64876874646', '1985-08-08', 'Tomás Danilo Yago da Cunha', 'Rua Dolores Pereira Alves', 'Status', 'Ribeirão das Neves', 'MG', '3128043750', '31992551778', 'tomasdaniloyagodacunha__tomasdaniloyagodacunha@gds');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `idPedidos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Produtos_codigo` int(10) UNSIGNED NOT NULL,
  `Clientes_idClientes` int(10) UNSIGNED NOT NULL,
  `dataPedido` datetime DEFAULT NULL,
  `valorPedido` decimal(10,2) DEFAULT NULL,
  `situacao` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`idPedidos`),
  KEY `Clientes_idClientes` (`Clientes_idClientes`),
  KEY `Produtos_codigo` (`Produtos_codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idPedidos`, `Produtos_codigo`, `Clientes_idClientes`, `dataPedido`, `valorPedido`, `situacao`) VALUES
(1, 1, 12, '2019-01-27 00:00:00', '2800.00', 'Pago'),
(2, 2, 5, '2019-05-10 00:00:00', '97000.00', 'Pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `embalagem` varchar(20) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `qtde_estoque` decimal(10,2) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `descricao`, `embalagem`, `preco`, `qtde_estoque`, `categoria`) VALUES
(1, 'Computador', '1', '2800.00', '800.00', 'Eletrônicos'),
(2, 'Volkswagen Jetta', '', '97000.00', '150.00', 'Automóveis');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
