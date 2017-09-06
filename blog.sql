-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Сен 06 2017 г., 12:30
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'PHP Tuts', NULL, NULL),
(2, 'Ruby on Rails Tutorials', NULL, NULL),
(3, 'Marketing Tutorial', NULL, NULL),
(4, 'Personal updates', '2017-02-17 02:31:22', '2017-02-17 02:31:22'),
(5, 'New category', '2017-02-17 17:57:58', '2017-02-17 17:57:58'),
(6, 'Newest category', '2017-02-17 18:21:08', '2017-02-17 18:21:08'),
(7, 'new', '2017-09-06 07:22:25', '2017-09-06 07:22:25');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `approved`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Alex Curtis', 'alex@gmail.com', 'First comment added', 1, 1, '2017-05-19 21:46:33', '2017-05-19 21:46:33'),
(2, 'alex', 'alex@curtis.com', 'The second one', 1, 1, '2017-05-19 21:51:14', '2017-05-19 21:51:14'),
(3, 'alext', 'alex@laravel.com', 'The third one comment', 1, 1, '2017-05-19 21:52:29', '2017-05-19 21:52:29'),
(4, 'Come', 'coem@gmail.com', 'Second post comment that is', 1, 4, '2017-05-19 22:18:37', '2017-05-19 22:18:37'),
(5, 'Great', 'great@gmail.com', 'Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolor', 1, 7, '2017-05-24 20:29:52', '2017-05-24 20:29:52'),
(6, 'Anit', 'anit@gmail.com', 'Lorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum dolorLorem ipsum d', 1, 7, '2017-05-24 20:30:42', '2017-05-24 20:30:42'),
(7, 'New comment', 'new@gmail.com', 'Lorem ipsum dolor sit amet consecteur delit  Lorem ipsum dolor sit amet consecteur delit Lorem ipsum dolor \r\nLorem ipsum dolor sit amet consecteur delit', 1, 1, '2017-05-25 21:13:48', '2017-05-25 21:13:48'),
(8, 'dmitry', 'dmypasat@gmail.com', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', 1, 1, '2017-05-26 17:56:25', '2017-05-26 17:56:25'),
(9, 'jasael', 'jasael.puesan@prestashop.com', 'Lorem ipsum dolor', 1, 1, '2017-05-26 17:58:34', '2017-05-26 17:58:34'),
(10, 'artur', 'inbox.artarta@gmail.com', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit ame', 1, 1, '2017-05-26 18:00:21', '2017-05-26 18:00:21'),
(11, 'hello', 'hello@devmarketer.io', 'hello Ilorem ipsum', 1, 1, '2017-05-26 18:13:49', '2017-05-26 18:13:49'),
(13, 'Another one', 'alex@laravel.com', 'Lorem ipsum dolor sit amet consecteur Lorem ipsum dolor sit amet consecteur edt', 1, 10, '2017-05-30 16:09:34', '2017-05-31 19:29:14'),
(14, 'Name com', 'saz@gmail.com', 'orem ipsum dolor sit amet consecteur Lorem ipsum dolor sit amet consecteur edt', 1, 10, '2017-05-31 20:12:08', '2017-05-31 20:12:08'),
(15, 'Named ', 'anit@gmail.com', 'orem ipsum dolor sit amet consecteur Lorem ipsum dolor sit amet', 1, 10, '2017-05-31 20:21:13', '2017-05-31 20:21:13'),
(16, 'hello', 'dmypasat@gmail.com', 'Lorem ipsum dolor sit amet', 1, 13, '2017-08-30 05:44:03', '2017-08-30 05:44:03'),
(17, 'Dmitry', 'gmai@gmail.com', 'ghfghfgh', 1, 4, '2017-09-05 13:02:59', '2017-09-05 13:02:59');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_01_16_150455_create_posts_table', 1),
(7, '2017_02_11_155039_add_slug_to_users', 1),
(8, '2017_02_16_114730_create_categories_table', 2),
(9, '2017_02_16_120048_add_category_id_to_posts', 2),
(10, '2017_02_17_164454_create_tags_table', 3),
(11, '2017_02_17_175713_create_post_tag_table', 4),
(12, '2017_05_18_121937_create_comments_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'This a first post', 'This is our first post that we have ever created. Thank you for the post', 'first-post', 1, '2017-02-12 22:06:20', '2017-02-12 22:06:20'),
(2, 'Awesomeness', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in replorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur rehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in lorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur culpa qui officia deserunt mollit anim id est laborum."', 'awesomeness', 1, '2017-02-13 18:27:15', '2017-02-13 18:51:31'),
(3, 'Great balls on fire', ' aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehendese who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the cfhlaims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."', 'great-ball', 2, '2017-02-13 18:28:23', '2017-02-13 20:35:49'),
(4, 'Howdy Partners', '"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorstem, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physicastem, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physica', 'howdy-partner', 4, '2017-02-13 18:29:04', '2017-02-17 19:28:35'),
(5, 'Newest blog post', 'This is newest post. We are proud to save this and write this', 'newest-blog', 4, '2017-02-17 18:40:51', '2017-02-17 18:40:51'),
(6, 'Marketing marked', 'body of marketing body of marketing body of marketing body of marketing body of marketing body of marketing body of marketing body of marketing body of marketing body of marketing body of marketing', 'marked', 3, '2017-02-21 23:34:00', '2017-02-21 23:34:00'),
(7, 'Marketing marked', 'body for this post', 'marked-mark', 1, '2017-02-21 23:38:26', '2017-02-21 23:38:26'),
(8, 'Marketing marked', 'body body body body body body', 'marked-mark-m', 1, '2017-02-21 23:39:58', '2017-02-21 23:39:58'),
(9, 'Again', 'af again af again ag again', 'againly', 1, '2017-02-21 23:42:20', '2017-02-21 23:42:20'),
(10, 'finding', 'body for findingbody for findingbody for findingbody for findingv', 'find-sl', 1, '2017-02-21 23:53:25', '2017-02-21 23:53:25'),
(11, 'slay', 'boy body bodyu body boyhd ', 'sling', 3, '2017-02-22 00:01:53', '2017-02-22 00:01:53'),
(12, 'fast', 'body body body body fast fast', 'fast-fast', 1, '2017-02-22 00:04:19', '2017-02-22 00:04:19'),
(13, 'New title', 'hello everybbody haw are you doing', 'new-sl', 4, '2017-02-22 18:05:40', '2017-02-22 18:05:40'),
(14, 'New post', '<h2><strong>Welcome back</strong></h2>\n<div><strong>Welcome</strong> this <em>is <strong>wiht</strong></em> tmce</div>\n<div style="text-align: justify; padding-left: 30px;">Lorem ipsum dolor sit amet consecteru</div>\n<p style="text-align: justify; padding-left: 30px;">Lorem ipsum dolor sit amet consecteru</p>\n<p style="text-align: justify; padding-left: 30px;">Lorem ipsum dolor sit amet consecteru</p>', 'new-post', 1, '2017-06-01 17:43:28', '2017-06-01 18:56:05'),
(15, 'Hack', '<p><strong>This is</strong> a <span style="text-decoration:underline;">hacked </span><strong>post</strong></p>\r\n<p>&lt;script&gt;alert("this is a hacked post")&lt;script&gt;</p>\r\n<p> </p>\r\n<h2>this is the best</h2>', 'hack-post', 2, '2017-06-01 21:07:11', '2017-06-02 18:26:27');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 12, 1),
(2, 12, 4),
(3, 13, 2),
(4, 13, 4),
(5, 13, 5),
(9, 8, 1),
(10, 8, 2),
(11, 8, 3),
(12, 8, 4),
(13, 11, 2),
(14, 10, 2),
(15, 10, 3),
(16, 10, 4),
(17, 14, 1),
(18, 14, 5),
(19, 15, 2),
(20, 15, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Marketing', '2017-02-20 22:41:25', '2017-02-20 22:41:25'),
(2, 'PHP read', '2017-02-20 22:43:50', '2017-05-15 20:51:54'),
(3, 'Ruby on Rails', '2017-02-20 22:43:59', '2017-02-20 22:43:59'),
(4, 'Long post', '2017-02-20 22:44:09', '2017-02-20 22:44:09'),
(5, 'Quick tips', '2017-02-20 22:44:28', '2017-02-20 22:44:28'),
(6, 'Laravel', '2017-02-20 22:44:34', '2017-02-20 22:44:34');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'di.pasat', 'dmypasat@gmail.com', '$2y$10$cYS/p7l3.NcLwHqrX6sRNufgJJcY/.Qo4KGXsQQXZSw88aLLZNKRG', 'ZJIst79YPhBIHrcPvT56Uzv5O5IwikUVU5ql6Evmhy82mrYTM7THGYwTZbGY', '2017-02-16 05:00:10', '2017-09-06 07:24:02'),
(2, 'Dmitry', 'dipasatdi@gmail.com', '$2y$10$W9DIRPOiDWNiVxgqCiYc2OI5n7We6RuggOEgi4cxhVPQPDb.8vDYO', '6PVUlJXZK3YNlK5r37R9zREmx2hPRHKTZyWEASXWjkXbClqeRlbZ8oORgE9N', '2017-09-06 07:12:16', '2017-09-06 07:24:18');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
