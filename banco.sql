-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/06/2025 às 13:50
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_php`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` text DEFAULT NULL,
  `contato_usuario` text DEFAULT NULL,
  `email_usuario` text DEFAULT NULL,
  `senha_usuario` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cadastro`
--

INSERT INTO `cadastro` (`id_usuario`, `nome_usuario`, `contato_usuario`, `email_usuario`, `senha_usuario`) VALUES
(1, 'André', '1234960233', 'andre@senac.com', '$2y$10$S1UDEZh8k6YBayHnmThgMeV3NtDXQFrB1yrLmU7pEOYfmZREZ/8Wi'),
(2, 'Karen ', '123547985671', 'karen@teste.com', '$2y$10$FKaM.oZWks024L9cyFThG.iALNmaRpoeDEKKbbJOjC9B4YLYMucsW'),
(3, 'Tainá', '1235474588', 'taina@teste.com', '$2y$10$kc89ehyxbS0wB4DbcFT9ROCXFnQcNm3gXe7NWE5C.odrEdrs4BvZq'),
(4, 'jonas', '34985674125', 'jonas@teste.com', '$2y$10$/9unJSWqNpc3wiOTUH/2YO2Be9TSyhr5NbHj29VhuXjoVZwbZNK0u');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email_usuario` (`email_usuario`) USING HASH,
  ADD KEY `email_usuario_2` (`email_usuario`(768));

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
