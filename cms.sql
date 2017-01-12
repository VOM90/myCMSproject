-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Січ 12 2017 р., 15:42
-- Версія сервера: 10.1.13-MariaDB
-- Версія PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `cms`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(26, 'PHP'),
(27, 'JavaScript'),
(28, 'jQuery'),
(29, 'HTML'),
(30, 'CSS'),
(31, 'SASS');

-- --------------------------------------------------------

--
-- Структура таблиці `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 18, 'Vasyl', 'vasya@gmail.com', 'PHP is awesome!', 'approved', '2017-01-11'),
(2, 19, 'Ivan', 'ivan23@gmail.com', 'JS is great!!!', 'approved', '2017-01-11'),
(3, 20, 'Igor', 'Igor26@mail.ru', 'HTML5 is awesome!', 'approved', '2017-01-11'),
(4, 19, 'Jerry', 'Jerry@yahoo.com', 'Yes it is!', 'unapproved', '2017-01-11'),
(5, 23, 'Anton', 'vvv333@mail.ru', 'Bootstrap, a sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.', 'approved', '2017-01-12'),
(6, 23, 'Oleksandr', 'pipipipi@gmail.com', 'Bootstrap ships with vanilla CSS, but its source code utilizes the two most popular CSS preprocessors, Less and Sass. Quickly get started with precompiled CSS or build on the source.', 'approved', '2017-01-12'),
(7, 21, 'Max', 'maximus@mail.ru', 'Sass has two syntaxes. The most commonly used syntax is known as â€œSCSSâ€ (for â€œSassy CSSâ€), and is a superset of CSS3â€™s syntax. This means that every valid CSS3 stylesheet is valid SCSS as well. SCSS files use the extension .scss.', 'approved', '2017-01-12');

-- --------------------------------------------------------

--
-- Структура таблиці `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`) VALUES
(18, 26, 'PHP', 'Admin', '2017-01-11', 'php_pic.png', '<h5 style="text-align: justify;">PHP is&nbsp;a server-side scripting language designed primarily for web development but also used as a general-purpose programming language.</h5>', 'PHP, MySQL', 1, 'published'),
(19, 26, 'JavaScript', 'Eddie', '2017-01-11', 'js_pic.png', '<p style="text-align: justify;">JavaScript&nbsp;is a high-level, dynamic, untyped, and interpreted programming language.</p>', 'JS, jQuery, Bootstrap, HTML', 2, 'published'),
(20, 26, 'HTML', 'Viktor', '2017-01-11', 'html5.jpg', '<p style="text-align: justify;">HyperText Markup Language (HTML) is the standard markup language for creating web pages and web applications.</p>', 'HTML, Bootstrap, CSS', 1, 'published'),
(21, 31, 'SASS', 'Evgeniy', '2017-01-12', 'sass-logo-new.jpg', '<p>An extension of CSS that adds power and elegance to the basic language.</p>', 'SASS, CSS', 1, 'published'),
(22, 28, 'jQuery', 'Nazar', '2017-01-11', 'jquery_pic.png', '<p>The purpose of&nbsp;jQuery is&nbsp;to make it much easier to use JavaScript on your website.</p>', 'JS, jQuery, Bootstrap, HTML', 0, 'draft'),
(23, 30, 'Bootstrap', 'Vladlen', '2017-01-12', 'bootstrap_pic.png', '<p>The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web.</p>', 'bootstrap, layout, css', 2, 'published');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(30, 'Admin', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Oleksandr', 'Vernyhora', 'ukralex1@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(31, 'Dmytro', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Dmytro', 'Tokar', 'dimas@ukr.net', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(32, 'Ivan', '$2y$10$iusesomecrazystrings2uvgnjnDOGIE6JPA9zzq36EdPnYMUav/S', '', '', 'ivanovich@example.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(33, 'Andriy', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Andriy', 'Shevchenko', 'andrew@ukr.net', '', 'subscriber', '$2y$10$iusesomecrazystrings22');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Індекси таблиці `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Індекси таблиці `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблиці `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблиці `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
