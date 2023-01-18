-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Time of creation: Окт 03 2022 г., 18:06
-- Server version: 5.6.51
-- PHP version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `one_page_article`
--

-- --------------------------------------------------------

--
-- Structure of the `comments` table
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `nameCom` varchar(32) NOT NULL,
  `textCom` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump of `comments` table
--

INSERT INTO `comments` (`id`, `nameCom`, `textCom`) VALUES
(1, 'Text_user', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin fringilla felis nec sem varius, sed gravida justo vehicula. Nulla facilisi. Etiam at ex fermentum, eleifend ligula ut, dignissim velit. Mauris hendrerit augue sit amet neque convallis pharetra.'),
(2, 'Test_user2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ut turpis quis risus auctor sollicitudin. Pellentesque auctor ligula eget auctor molestie. Vestibulum et lacus ac urna efficitur accumsan. Vivamus aliquam in risus non sollicitudin. Phasellus at odio cursus, scelerisque augue ac, consequat ipsum. In in dictum sem. Nullam a nisl est. Nunc placerat venenatis cursus. Integer accumsan.'),
(3, 'Test_func', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et felis at leo elementum facilisis et at tortor. Quisque eu lectus luctus, bibendum lorem posuere, semper ipsum. Proin tincidunt scelerisque auctor. Vestibulum ornare nisl at diam tempor varius. Maecenas tortor dui, vulputate fusce.'),
(5, 'Test_func2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer imperdiet, augue a aliquet feugiat, metus ipsum interdum nisi, pellentesque convallis lorem arcu ac felis. Maecenas suscipit elementum nisi. Fusce efficitur facilisis mauris id interdum. Suspendisse eu placerat orci, ac viverra orci. Vivamus ac magna justo. Donec semper tristique nisi, at auctor erat efficitur ut. Curabitur sem eros.\r\n\r\n'),
(6, 'Test_Fin', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat ipsum quis cursus laoreet. Curabitur luctus orci nec nunc convallis condimentum id eget erat. Sed vitae ligula non nulla condimentum varius et id elit. Sed quis commodo urna. Proin in mollis metus, et iaculis justo. Proin aliquet nulla nec vestibulum pulvinar. Nulla sollicitudin, enim non tempor consectetur, metus tortor aliquet lorem, eu pulvinar odio nisi ac lacus. Ut ultricies euismod dignissim. Pellentesque porttitor nisl odio, sed ');

-- --------------------------------------------------------

--
-- Structure of the `paragaphr` table
--

CREATE TABLE `paragraph` (
  `id` int(11) NOT NULL,
  `ptitle` varchar(128) NOT NULL,
  `ptext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump of `paragaphr` table
--

INSERT INTO `paragraph` (`id`, `ptitle`, `ptext`) VALUES
(1, 'Paragraph title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus cursus massa purus, vel finibus quam condimentum vitae. In elementum est porta rutrum porta. Nullam a erat dignissim purus pulvinar convallis. Suspendisse cursus bibendum purus, ut ullamcorper quam luctus sed. Pellentesque a gravida enim. Cras ac cursus erat. Nunc enim nunc, faucibus sed nunc vitae, pretium ornare urna.<br><br>\r\n\r\nVestibulum ultricies nisi est, eget feugiat risus tempor et. Vestibulum ultricies congue orci venenatis rhoncus. Proin varius in ante eget blandit. Praesent venenatis nisl eget pharetra ullamcorper. Ut molestie orci sit amet orci egestas, id pharetra turpis pulvinar. Donec lobortis rutrum dui vel hendrerit. Vivamus sit amet mi ac ex porttitor mollis. Nullam venenatis orci nisl. Pellentesque ut accumsan mauris.'),
(2, 'Paragraph title', 'Pellentesque imperdiet magna ut dictum sagittis. Sed vitae accumsan lectus. Sed non enim sed velit lobortis tempus at id nulla. Nam imperdiet vestibulum ipsum, sit amet tristique orci interdum et. Nulla scelerisque sed elit eu aliquam. Sed fringilla ac urna nec pellentesque. Nulla a turpis lacinia, efficitur dolor non, faucibus diam. Sed faucibus magna leo, commodo faucibus odio facilisis et. Cras viverra purus nec imperdiet consectetur. Nullam tellus lorem, dapibus sit amet nisl at, euismod rutrum sem. Proin eu nisi et enim vestibulum luctus. In fermentum eleifend arcu, non suscipit quam tempor eu. In euismod pulvinar justo et fringilla. Suspendisse ultricies, nisl et viverra maximus, nisi ipsum mollis nibh, id vulputate eros urna id magna.<br><br>\r\n\r\nDonec tristique nisl sit amet lorem scelerisque, vitae consequat diam placerat. Integer in arcu eget mauris pellentesque fermentum ac et mi. Pellentesque nec commodo ligula, at interdum turpis. Mauris maximus sit amet dui nec ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc gravida nisl nec felis rutrum tempor. Vivamus semper velit vitae quam laoreet, non volutpat felis rutrum. Quisque eu finibus justo, ac tempor leo.'),
(3, 'Paragraph title', 'Nunc sed rhoncus arcu. Nulla interdum porttitor tincidunt. Quisque tellus eros, iaculis in rhoncus a, lacinia quis erat. Mauris in posuere felis, at dictum turpis. Praesent ac purus feugiat, auctor purus semper, fringilla magna. Aliquam quis magna fermentum, rhoncus ligula vel, pharetra mauris. Maecenas euismod tincidunt felis sed suscipit. Sed vel turpis congue, volutpat leo ac, rutrum metus. Ut nunc eros, molestie eu eros nec, fringilla fermentum dolor. Cras scelerisque tellus nisi, nec dapibus turpis elementum vitae. Aliquam ut eros lorem. Sed interdum urna eu libero fringilla iaculis. Quisque nunc tortor, placerat a sapien et, sodales condimentum urna. Nunc bibendum mauris nec magna tincidunt finibus. Pellentesque arcu est, consectetur sit amet varius in, rhoncus vel felis.');

--
-- Stored Table Indexes
--

--
-- Indexes of the `comments` table
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes of the `paragaphr` table
--
ALTER TABLE `paragraph`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for saved tables
--

--
-- AUTO_INCREMENT for `comments` table
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for `paragaphr` table
--
ALTER TABLE `paragraph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
