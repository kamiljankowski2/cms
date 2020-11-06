-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Lis 2020, 21:09
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kjankowski`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `login` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`login`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `general`
--

CREATE TABLE `general` (
  `general_id` int(11) NOT NULL,
  `general_brand` varchar(256) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `general_title` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `general_desc` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `general_lang` varchar(2) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `general`
--

INSERT INTO `general` (`general_id`, `general_brand`, `general_title`, `general_desc`, `general_lang`) VALUES
(1, 'Jankowski Kamil', 'Tytuł Strony Głównej', 'Meta opis strony głównej', 'pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `main`
--

CREATE TABLE `main` (
  `main_id` int(11) NOT NULL,
  `main_index` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `main_h1` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `main_desc` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `main_img` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `main_alt_img` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `main_col1` varchar(1000) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `main_col2` varchar(1000) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `main_col3` varchar(1000) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `main`
--

INSERT INTO `main` (`main_id`, `main_index`, `main_h1`, `main_desc`, `main_img`, `main_alt_img`, `main_col1`, `main_col2`, `main_col3`) VALUES
(0, 'Nie', 'Nagłówek H1', 'Opis na stronie głównej, może być troszkę dłuższy. Nie może być za to za długi bo źle będzie to wyglądało, dlatego na spokojonie', 'https://themes.startbootstrap.com/sb-ui-kit-pro/assets/img/drawkit/color/drawkit-content-man-color.svg', 'dddddddddddddddddddddddddddddddddddddddddddddddddddd', '&lt;h2 style=&quot;text-align: left;&quot;&gt;Nagł&amp;oacute;wek 1&lt;/h2&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti pariatur tenetur nobis itaque temporibus optio ex eveniet ipsam impedit veniam saepe repellendus, sed reprehenderit perferendis nesciunt officiis cupiditate, officia quaerat!Veritatis aliquid obcaecati tempore quibusdam. Quidem dicta obcaecati velit voluptates delectus beatae dignissimos? Reprehenderit, placeat minima distinctio sint eligendi facere excepturi voluptatibus cum. Atque vero amet dolores omnis. Nam, sunt!&lt;/p&gt;', '&lt;h2 style=&quot;text-align: center;&quot;&gt;Nagł&amp;oacute;wek 2&lt;/h2&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti omnis aliquam repellat amet nisi a. Accusamus molestias ad voluptatum doloremque distinctio voluptatibus ut est, totam rerum id doloribus consectetur numquam. Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat facilis incidunt veritatis delectus cumque, et, ipsa temporibus quasi necessitatibus ad architecto facere repellendus consequuntur unde quaerat porro deleniti. Ipsum, fugit.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&amp;nbsp;&lt;/p&gt;', '&lt;div class=&quot;col-sm&quot;&gt;\r\n&lt;h2 style=&quot;text-align: right;&quot;&gt;Nagł&amp;oacute;wek 3&lt;/h2&gt;\r\n&lt;p style=&quot;text-align: right;&quot;&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti pariatur tenetur nobis itaque temporibus optio ex eveniet ipsam impedit veniam saepe repellendus, sed reprehenderit perferendis nesciunt officiis cupiditate, officia quaerat!Veritatis aliquid obcaecati tempore quibusdam. Quidem dicta obcaecati velit voluptates delectus beatae dignissimos? Reprehenderit, placeat minima distinctio sint eligendi facere excepturi voluptatibus cum. Atque vero amet dolores omnis. Nam, sunt!&lt;/p&gt;\r\n&lt;/div&gt;');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `menu_url` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `menu_poz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_url`, `menu_poz`) VALUES
(1, 'Dokumentacja', 'dokumentacja.php', 3),
(2, 'Blog', 'blog.php', 2),
(3, 'Home', 'index.php', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `post_author` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `post_index` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_author`, `post_content`, `post_index`) VALUES
(75, 'Projekt CMS', 'Kamil Jankowski', '&lt;p style=&quot;text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatum blanditiis doloribus quibusdam iste ad quidem eos sint qui adipisci, doloremque consectetur aliquam itaque reiciendis corrupti dolorem rerum harum nostrum. Error?&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Consectetur ut aut, fuga vero temporibus fugit accusamus nihil eveniet possimus aspernatur rerum voluptates in quidem neque ducimus deleniti odit totam? Provident commodi consequuntur excepturi veritatis iste dolorum quo laborum.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Neque obcaecati tempore corporis minima molestias dolorem facilis voluptatem nisi in ipsam veniam voluptatibus iste doloremque est perferendis labore, similique reprehenderit, aliquam totam! Adipisci ea mollitia cupiditate esse vel dignissimos.&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Accusantium unde quas totam, eum dicta perspiciatis, possimus vero non repellat impedit ullam pariatur esse sapiente temporibus ducimus minus nihil sequi voluptate magnam sunt iure repudiandae officiis. Officia, accusamus mollitia!&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Delectus totam accusantium possimus est sint veritatis architecto illo perferendis. Velit, voluptate quis, a magni, dolorem culpa exercitationem sed placeat ab fuga ex voluptatem commodi! Nesciunt iste fuga accusantium nisi?&lt;/p&gt;\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;Error debitis velit maxime, ducimus dolor, fuga facere eius tempore consequatur amet corrupti iste voluptates molestiae? Quae quo molestias, laudantium fuga iure nulla aliquid voluptatibus, voluptate rerum, animi mollitia numquam?&lt;/p&gt;', 'Tak');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`general_id`);

--
-- Indeksy dla tabeli `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`main_id`);

--
-- Indeksy dla tabeli `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `general`
--
ALTER TABLE `general`
  MODIFY `general_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
