--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
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
-- Table structure for table `comments`
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
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 18, 'Vasyl', 'vasya@gmail.com', 'PHP is awesome!', 'approved', '2017-01-11'),
(2, 19, 'Ivan', 'ivan23@gmail.com', 'JS is great!!!', 'approved', '2017-01-11'),
(3, 20, 'Igor', 'Igor26@mail.ru', 'HTML5 is awesome!', 'approved', '2017-01-11'),
(7, 21, 'Max', 'maximus@mail.ru', 'Sass has two syntaxes. The most commonly used syntax is known as â€œSCSSâ€ (for â€œSassy CSSâ€), and is a superset of CSS3â€™s syntax. This means that every valid CSS3 stylesheet is valid SCSS as well. SCSS files use the extension .scss.', 'approved', '2017-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(48, 26, 'Test user 3', '', 'Ivan', '2017-01-18', 'js_pic.png', '<p>kjgjhg dfgd fgvbn uyuiyuiyi</p>', 'js', 0, 'published', 0),
(49, 28, 'jQuery', '', 'Dmytro', '2017-01-18', 'jquery_pic.png', '<p>jjjj hhhh jjjj kkkk kkkk</p>', 'jQuery', 0, 'published', 3),
(55, 28, 'jQuery', '', 'Dmytro', '2017-01-18', 'jquery_pic.png', '<p>jjjj hhhh jjjj kkkk kkkk</p>', 'jQuery', 0, 'published', 0),
(56, 26, 'Test user 3', '', 'Ivan', '2017-01-18', 'js_pic.png', '<p>kjgjhg dfgd fgvbn uyuiyuiyi</p>', 'js', 0, 'published', 0),
(57, 26, 'Test user 3', '', 'Ivan', '2017-01-18', 'js_pic.png', '<p>kjgjhg dfgd fgvbn uyuiyuiyi</p>', 'js', 0, 'published', 0),
(58, 28, 'jQuery', '', 'Dmytro', '2017-01-18', 'jquery_pic.png', '<p>jjjj hhhh jjjj kkkk kkkk</p>', 'jQuery', 0, 'published', 0),
(59, 28, 'jQuery', '', 'Dmytro', '2017-01-18', 'jquery_pic.png', '<p>jjjj hhhh jjjj kkkk kkkk</p>', 'jQuery', 0, 'published', 0),
(60, 26, 'Test user 3', '', 'Ivan', '2017-01-18', 'js_pic.png', '<p>kjgjhg dfgd fgvbn uyuiyuiyi</p>', 'js', 0, 'published', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(30, 'Admin', '$2y$12$.lFm7KGZcnF6J56Farm3xOeZQRK9iutYdqH1iE35AVc7bqXOv4uAa', 'Oleksandr', 'Vernyhora', 'ukralex1@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(31, 'Dmytro', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Dmytro', 'Tokar', 'dimas@ukr.net', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(32, 'Ivan', '$2y$10$iusesomecrazystrings2uvgnjnDOGIE6JPA9zzq36EdPnYMUav/S', '', '', 'ivanovich@example.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(33, 'Andriy', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Andriy', 'Shevchenko', 'andrew@ukr.net', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(34, 'Giovanni', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', '', '', 'sirGio@example.com', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(36, 'Elena', '$2y$12$O0LPrxLjy2w26mfg82SHf.Ejt1e.jnPV0IbtSnQWQGehTu52x24o6', '', '', 'elena1@ukr.net', '', 'subscriber', '$2y$10$iusesomecrazystrings22'),
(37, 'Oleg', '$2y$12$EnLgeijkKHk78jpO5p8HcuPcV.urFR18Z56BOl7kOSp9UaSE3T486', '', '', 'olezhka@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(38, 'Ramaha', '$2y$12$/ZNs2OlNsnBEagQNcm64TeOR7P5rZog2r7mdhTJgB/uxm41kmamSO', 'Roman', 'Little', 'ramasha@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
