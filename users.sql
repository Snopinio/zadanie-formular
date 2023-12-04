-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Lis 2023, 16:08
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `formularz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordHash` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `imie`, `nazwisko`, `email`, `passwordHash`) VALUES
(1, 'Jan', 'Kowalski', 'jkowalski@firma.pl', '$argon2i$v=19$m=65536,t=4,p=1$LlJULjFHSG1Kc29Eemh6cA$FEERBzlr5Bk9K9mjd68oTX1G4lCiGMJ0kXVupuTHujA'),
(2, 'Kuba', 'Kuba', 'dasdsad@fsd.pl', '$argon2i$v=19$m=65536,t=4,p=1$Y1dRbHZtZTkveWpvTEdwMw$BMThdF5fd9TyKl4sI+/IUhfqX8I0m84gHoZl1/xtGAQ'),
(3, 'mateusz', 'nowak', 'nowak@firma.pl', '$argon2i$v=19$m=65536,t=4,p=1$a2xEWC9SVkVCVmtZL2Eudw$VOZ7zX7F1tudKAwgCX9CbH/ejHsthAw7ldeeO8zNpBU');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
