-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2022 às 04:56
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `job_for_all`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `assinatura`
--

CREATE TABLE `assinatura` (
  `id_assinatura` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `status_curso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `assinatura`
--

INSERT INTO `assinatura` (`id_assinatura`, `id_curso`, `id_cliente`, `status_curso`) VALUES
(1, 8, 11, ''),
(2, 9, 14, 'COMPLETO'),
(3, 8, 14, 'COMPLETO'),
(4, 8, 15, 'COMPLETO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `id_aula` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `titulo_aula` varchar(500) NOT NULL,
  `descricao_aula` varchar(2000) NOT NULL,
  `link_video` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id_aula`, `id_curso`, `titulo_aula`, `descricao_aula`, `link_video`) VALUES
(10, 8, 'work', 'aula de inglês sobre trabalho', 'https://player.vimeo.com/video/1035511?h=483b7f91f9'),
(11, 8, 'teste', 'testeee', ''),
(12, 8, 'teste2', 'fee', 'teste'),
(13, 9, 'dsds', 'vvv', 'vv');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id_avaliacao` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  `titulo_avaliacao` varchar(500) NOT NULL,
  `descricao_avaliacao` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id_avaliacao`, `id_curso`, `id_aula`, `titulo_avaliacao`, `descricao_avaliacao`) VALUES
(7, 8, 10, 'Prova 1 de Inglês', 'avaliação de inglês'),
(8, 8, 12, 'ffff', 'dsdsd'),
(9, 9, 13, 'io', 'dddddd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `id_cliente` int(11) NOT NULL,
  `usuario` varchar(2000) DEFAULT NULL,
  `senha` varchar(2000) DEFAULT NULL,
  `nome` varchar(2000) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`id_cliente`, `usuario`, `senha`, `nome`, `sexo`) VALUES
(11, 'teste', '202cb962ac59075b964b07152d234b70', 'pessoa teste', 'Feminino'),
(14, 'vitorvfreire@outlook.com', '202cb962ac59075b964b07152d234b70', 'Vitor Vieira Freire', 'Mascolino'),
(15, 'vitor', '202cb962ac59075b964b07152d234b70', 'vitor', 'Masculino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `custo` decimal(7,2) DEFAULT NULL,
  `carga_horario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `titulo`, `descricao`, `custo`, `carga_horario`) VALUES
(8, 'Inglês', 'Curso de inglês para conhecer o básico para o mercado de trabalho.', '400.00', '48H'),
(9, 'Informática Básica', 'Curso básico de informática focado no mercado de trabalho.', '100.00', '24H'),
(10, 'Atendimento ao Cliente', 'Curso básico de atendimento ao cliente para ajudar no currículo na hora da entrevista.', '80.00', '24H');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id_historico` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_avaliacao` int(11) NOT NULL,
  `nota` int(11) NOT NULL,
  `hora_data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`id_historico`, `id_cliente`, `id_avaliacao`, `nota`, `hora_data`) VALUES
(79, 11, 7, 0, '2022-11-23 23:47:00'),
(80, 11, 8, 1, '2022-11-23 23:47:00'),
(85, 14, 7, 1, '2022-11-24 02:50:00'),
(86, 14, 8, 1, '2022-11-24 02:57:00'),
(95, 15, 7, 2, '2022-11-24 03:17:00'),
(103, 15, 8, 2, '2022-11-24 03:55:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `opcoes`
--

CREATE TABLE `opcoes` (
  `id_opcao` int(11) NOT NULL,
  `id_questao` int(11) NOT NULL,
  `opcao` varchar(2000) NOT NULL,
  `justificativa` varchar(5000) NOT NULL,
  `n_op` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `opcoes`
--

INSERT INTO `opcoes` (`id_opcao`, `id_questao`, `opcao`, `justificativa`, `n_op`) VALUES
(17, 9, 'job', 'job=trabalho', 'opcao1'),
(18, 9, 'work', 'work=trabalhar', 'opcao2'),
(19, 10, 'fire', 'fire=fogo', 'opcao1'),
(20, 10, 'sugar', 'sugar=açúcar', 'opcao2'),
(21, 11, '4', 'pq sim', 'opcao1'),
(22, 11, '6', '2+2=4', 'opcao2'),
(23, 12, '11', '5*2=10', 'opcao1'),
(24, 12, '10', 'sim', 'opcao2'),
(25, 13, '4', '85', 'opcao1'),
(26, 13, '2', 'ddd', 'opcao2'),
(27, 14, '0', 'ddd', 'opcao1'),
(28, 14, '9', 'ddd', 'opcao2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `id_questao` int(11) NOT NULL,
  `id_avaliacao` int(11) NOT NULL,
  `enunciado` varchar(2000) NOT NULL,
  `resposta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`id_questao`, `id_avaliacao`, `enunciado`, `resposta`) VALUES
(9, 7, 'como é trabalho em inglês', 'opcao1'),
(10, 7, 'como é açúcar em inglês', 'opcao2'),
(11, 8, '2+2', 'opcao1'),
(12, 8, '5*2', 'opcao2'),
(13, 9, '8/2', 'opcao1'),
(14, 9, '9+1', 'opcao2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `respostas`
--

CREATE TABLE `respostas` (
  `id_resposta` int(11) NOT NULL,
  `id_avaliacao` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_questao` int(11) DEFAULT NULL,
  `opcao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `respostas`
--

INSERT INTO `respostas` (`id_resposta`, `id_avaliacao`, `id_cliente`, `id_questao`, `opcao`) VALUES
(143, 7, 11, 9, 'opcao2'),
(144, 7, 11, 10, 'opcao1'),
(145, 8, 11, 11, 'opcao1'),
(146, 8, 11, 12, 'opcao1'),
(155, 7, 14, 9, 'opcao1'),
(156, 7, 14, 10, 'opcao1'),
(157, 8, 14, 11, 'opcao1'),
(158, 8, 14, 12, 'opcao1'),
(175, 7, 15, 9, 'opcao1'),
(176, 7, 15, 10, 'opcao2'),
(191, 8, 15, 11, 'opcao1'),
(192, 8, 15, 12, 'opcao2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `status_curso`
--

CREATE TABLE `status_curso` (
  `id_status` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `status_curso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `status_curso`
--

INSERT INTO `status_curso` (`id_status`, `id_cliente`, `id_curso`, `status_curso`) VALUES
(6, 14, 8, 'COMPLETO'),
(7, 11, 8, 'COMPLETO'),
(9, 14, 9, 'IMCOMPLETO');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `assinatura`
--
ALTER TABLE `assinatura`
  ADD PRIMARY KEY (`id_assinatura`),
  ADD KEY `id_curso` (`id_curso`),
  ADD KEY `id_usuario` (`id_cliente`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices para tabela `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id_aula`),
  ADD KEY `aulas_ibfk_1` (`id_curso`);

--
-- Índices para tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id_avaliacao`),
  ADD KEY `avaliacoes_ibfk_1` (`id_curso`),
  ADD KEY `avaliacoes_ibfk_2` (`id_aula`);

--
-- Índices para tabela `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_avaliacao` (`id_avaliacao`);

--
-- Índices para tabela `opcoes`
--
ALTER TABLE `opcoes`
  ADD PRIMARY KEY (`id_opcao`),
  ADD KEY `opcoes_ibfk_1` (`id_questao`);

--
-- Índices para tabela `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`id_questao`),
  ADD KEY `questoes_ibfk_1` (`id_avaliacao`);

--
-- Índices para tabela `respostas`
--
ALTER TABLE `respostas`
  ADD PRIMARY KEY (`id_resposta`),
  ADD KEY `id_avaliacao` (`id_avaliacao`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_questao` (`id_questao`);

--
-- Índices para tabela `status_curso`
--
ALTER TABLE `status_curso`
  ADD PRIMARY KEY (`id_status`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_curso` (`id_curso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `assinatura`
--
ALTER TABLE `assinatura`
  MODIFY `id_assinatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id_aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `conta`
--
ALTER TABLE `conta`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id_historico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de tabela `opcoes`
--
ALTER TABLE `opcoes`
  MODIFY `id_opcao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `questoes`
--
ALTER TABLE `questoes`
  MODIFY `id_questao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `respostas`
--
ALTER TABLE `respostas`
  MODIFY `id_resposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT de tabela `status_curso`
--
ALTER TABLE `status_curso`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `assinatura`
--
ALTER TABLE `assinatura`
  ADD CONSTRAINT `assinatura_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`),
  ADD CONSTRAINT `assinatura_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `conta` (`id_cliente`);

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `aulas_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD CONSTRAINT `avaliacoes_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avaliacoes_ibfk_2` FOREIGN KEY (`id_aula`) REFERENCES `aulas` (`id_aula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `conta` (`id_cliente`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`);

--
-- Limitadores para a tabela `opcoes`
--
ALTER TABLE `opcoes`
  ADD CONSTRAINT `opcoes_ibfk_1` FOREIGN KEY (`id_questao`) REFERENCES `questoes` (`id_questao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `questoes`
--
ALTER TABLE `questoes`
  ADD CONSTRAINT `questoes_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `respostas`
--
ALTER TABLE `respostas`
  ADD CONSTRAINT `respostas_ibfk_1` FOREIGN KEY (`id_avaliacao`) REFERENCES `avaliacoes` (`id_avaliacao`),
  ADD CONSTRAINT `respostas_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `conta` (`id_cliente`),
  ADD CONSTRAINT `respostas_ibfk_3` FOREIGN KEY (`id_questao`) REFERENCES `questoes` (`id_questao`);

--
-- Limitadores para a tabela `status_curso`
--
ALTER TABLE `status_curso`
  ADD CONSTRAINT `status_curso_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `conta` (`id_cliente`),
  ADD CONSTRAINT `status_curso_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
