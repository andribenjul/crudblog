-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 04:05 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2017-11-08 12:32:20', NULL, 'EDM'),
(2, '2017-11-08 12:32:28', NULL, 'Rock'),
(3, '2017-11-08 12:32:40', NULL, 'Blues'),
(4, '2017-11-08 12:32:44', NULL, 'Pop'),
(5, '2017-11-08 12:32:54', NULL, 'Jazz'),
(6, '2017-11-08 12:33:00', NULL, 'Reggae');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-11-08 09:26:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2017-11-08 12:20:34', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/categories/add-save', 'Add New Data EDM at Categories', '', 1, '2017-11-08 12:32:21', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/categories/add-save', 'Add New Data Rock at Categories', '', 1, '2017-11-08 12:32:28', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/categories/add-save', 'Add New Data Blues at Categories', '', 1, '2017-11-08 12:32:40', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/categories/add-save', 'Add New Data Pop at Categories', '', 1, '2017-11-08 12:32:44', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/categories/add-save', 'Add New Data Jazz at Categories', '', 1, '2017-11-08 12:32:54', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/categories/add-save', 'Add New Data Reggae at Categories', '', 1, '2017-11-08 12:33:00', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/13', 'Delete data Posts at Module Generator', '', 1, '2017-11-08 12:40:21', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Bob Marley at Posts', '', 1, '2017-11-08 12:47:24', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Noah Band at Posts', '', 1, '2017-11-08 12:48:30', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Maliq & D\'Essentials at Posts', '', 1, '2017-11-08 12:49:37', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data David Guetta at Posts', '', 1, '2017-11-08 12:50:42', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Gugun Blues Shelter at Posts', '', 1, '2017-11-08 12:51:43', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/edit-save/5', 'Update data Gugun Blues Shelter at Posts', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td></td><td>gugun-blues-shelter</td></tr><tr><td>cms_users_id</td><td></td><td></td></tr></tbody></table>', 1, '2017-11-08 12:55:00', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/edit-save/5', 'Update data Gugun Blues Shelter at Posts', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cms_users_id</td><td></td><td></td></tr></tbody></table>', 1, '2017-11-08 13:03:17', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/edit-save/5', 'Update data Gugun Blues Shelter at Posts', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cms_users_id</td><td></td><td>1</td></tr></tbody></table>', 1, '2017-11-08 13:04:54', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/edit-save/4', 'Update data David Guetta at Posts', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td></td><td>david-guetta</td></tr><tr><td>cms_users_id</td><td></td><td>1</td></tr></tbody></table>', 1, '2017-11-08 13:05:02', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/edit-save/3', 'Update data Maliq & D\'Essentials at Posts', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td></td><td>maliq-dessentials</td></tr><tr><td>content</td><td><p><img src=\"http://localhost:8000/uploads/1/2017-11/4a8b0d25186d3abcb834f462285b4ac5.jpeg\"><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">MALIQ &amp; D\'Essentials adalah sebuah grup musik beraliran jazz yang berasal dari Jakarta, Indonesia. MALIQ adalah kepanjangan dari Music And Live Instrument Quality</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p>Cras libero aliquet magnam, nisi temporibus? Totam, reiciendis, netus, magna posuere, nullam! Omnis, provident ex incidunt accumsan eaque excepteur non? Elit reprehenderit rutrum imperdiet, a mollis, tempore eos. Adipisicing ultrices euismod montes repudiandae veritatis conubia molestie porttitor libero orci corporis veniam? Quia turpis mattis. Tempus nobis mollis, etiam? Fermentum mauris, praesent! Proident error optio curae condimentum interdum, ad impedit semper. Nostrum habitasse vel mauris soluta eu nisi libero consequatur exercitation nunc tenetur, ante arcu euismod expedita adipiscing vehicula? Ipsa quibusdam, integer eum accusantium quae. Molestiae, dolores nobis, tellus laudantium duis morbi repellendus exercitation ullamco cumque nemo! Nunc eum incidunt iure.</p><p><br></p><p>Repudiandae tempore? Lobortis adipisicing montes risus, nostra sint hendrerit cupidatat, aliquet pulvinar. Rutrum hac magni cursus! Molestias molestie iusto nascetur. Cursus dolorum illum. Quia! Sociosqu lacinia corporis sodales ligula congue? Parturient aut, molestiae optio scelerisque wisi, nam ipsam atque quam quisque minima praesentium vehicula, feugiat, dapibus risus occaecati nulla animi nunc libero! Velit a aptent molestias! Ratione habitant fuga nec sodales fuga, eligendi lectus vestibulum fames dolorem dolore. Explicabo praesent integer fugit justo ipsa ac, mi habitant, deserunt tempor ante! Quisque ratione vero nisl, fermentum hac senectus exercitation facilisis minim eget gravida per error mauris laudantium? Iusto sagittis aptent risus.</p><p><br></p><p>Aptent sociosqu veritatis. Scelerisque anim praesent placeat nec, voluptatem per cras nemo modi vel primis vitae ultrices velit, venenatis esse sint autem eaque. Sem conubia nam pharetra, porttitor, quasi pharetra. Anim quo, elementum ipsa elementum sit? Ac primis natus class, sociosqu quisquam pede maiores beatae dolore, reiciendis quisquam ullamcorper saepe curae pulvinar molestias venenatis harum sagittis. Maiores? Voluptatibus. Aperiam aliquet ducimus quasi natus eaque, laboriosam semper, diamlorem. Sociosqu, semper fames. Primis saepe ea quisquam labore voluptates cubilia scelerisque. Ligula soluta eu molestias! Nisi montes enim accusamus, praesent mauris! Ipsum primis, corporis, molestias harum praesentium vivamus mauris gravida aliqua montes. Vitae.</p></td><td><p><img src=\"http://localhost:8000/uploads/1/2017-11/4a8b0d25186d3abcb834f462285b4ac5.jpeg\" style=\"width: 25%;\"><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">MALIQ &amp; D\'Essentials adalah sebuah grup musik beraliran jazz yang berasal dari Jakarta, Indonesia. MALIQ adalah kepanjangan dari Music And Live Instrument Quality</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p>Cras libero aliquet magnam, nisi temporibus? Totam, reiciendis, netus, magna posuere, nullam! Omnis, provident ex incidunt accumsan eaque excepteur non? Elit reprehenderit rutrum imperdiet, a mollis, tempore eos. Adipisicing ultrices euismod montes repudiandae veritatis conubia molestie porttitor libero orci corporis veniam? Quia turpis mattis. Tempus nobis mollis, etiam? Fermentum mauris, praesent! Proident error optio curae condimentum interdum, ad impedit semper. Nostrum habitasse vel mauris soluta eu nisi libero consequatur exercitation nunc tenetur, ante arcu euismod expedita adipiscing vehicula? Ipsa quibusdam, integer eum accusantium quae. Molestiae, dolores nobis, tellus laudantium duis morbi repellendus exercitation ullamco cumque nemo! Nunc eum incidunt iure.</p><p><br></p><p>Repudiandae tempore? Lobortis adipisicing montes risus, nostra sint hendrerit cupidatat, aliquet pulvinar. Rutrum hac magni cursus! Molestias molestie iusto nascetur. Cursus dolorum illum. Quia! Sociosqu lacinia corporis sodales ligula congue? Parturient aut, molestiae optio scelerisque wisi, nam ipsam atque quam quisque minima praesentium vehicula, feugiat, dapibus risus occaecati nulla animi nunc libero! Velit a aptent molestias! Ratione habitant fuga nec sodales fuga, eligendi lectus vestibulum fames dolorem dolore. Explicabo praesent integer fugit justo ipsa ac, mi habitant, deserunt tempor ante! Quisque ratione vero nisl, fermentum hac senectus exercitation facilisis minim eget gravida per error mauris laudantium? Iusto sagittis aptent risus.</p><p><br></p><p>Aptent sociosqu veritatis. Scelerisque anim praesent placeat nec, voluptatem per cras nemo modi vel primis vitae ultrices velit, venenatis esse sint autem eaque. Sem conubia nam pharetra, porttitor, quasi pharetra. Anim quo, elementum ipsa elementum sit? Ac primis natus class, sociosqu quisquam pede maiores beatae dolore, reiciendis quisquam ullamcorper saepe curae pulvinar molestias venenatis harum sagittis. Maiores? Voluptatibus. Aperiam aliquet ducimus quasi natus eaque, laboriosam semper, diamlorem. Sociosqu, semper fames. Primis saepe ea quisquam labore voluptates cubilia scelerisque. Ligula soluta eu molestias! Nisi montes enim accusamus, praesent mauris! Ipsum primis, corporis, molestias harum praesentium vivamus mauris gravida aliqua montes. Vitae.</p></td></tr><tr><td>cms_users_id</td><td></td><td>1</td></tr></tbody></table>', 1, '2017-11-08 13:05:15', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/edit-save/2', 'Update data Noah Band at Posts', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td></td><td>noah-band</td></tr><tr><td>cms_users_id</td><td></td><td>1</td></tr></tbody></table>', 1, '2017-11-08 13:05:24', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/edit-save/1', 'Update data Bob Marley at Posts', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td></td><td>bob-marley</td></tr><tr><td>cms_users_id</td><td></td><td>1</td></tr></tbody></table>', 1, '2017-11-08 13:05:31', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/3', 'Update data Posts at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-file-text-o</td><td>fa fa-tags</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2017-11-08 13:06:56', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Jessica Veranda at Users Management', '', 1, '2017-11-08 13:08:17', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2017-11-08 13:08:25', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/login', 'jesver@andriapp.com login with IP Address 127.0.0.1', '', 2, '2017-11-08 13:08:34', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Ari Lasso at Posts', '', 2, '2017-11-08 13:09:53', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Numquam ut incididunt! Torquent phasellus. at Posts', '', 2, '2017-11-08 13:13:35', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Cursus numquam. at Posts', '', 2, '2017-11-08 13:14:19', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', 'http://localhost:8000/admin/posts14/add-save', 'Add New Data Praesent dictumst officia. at Posts', '', 2, '2017-11-08 13:15:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Categories', 'Route', 'AdminCategoriesControllerGetIndex', NULL, 'fa fa-tags', 0, 1, 0, 1, 1, '2017-11-08 12:31:16', NULL),
(3, 'Posts', 'Route', 'AdminPosts14ControllerGetIndex', 'normal', 'fa fa-tags', 0, 1, 0, 1, 2, '2017-11-08 12:40:45', '2017-11-08 13:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2017-11-08 09:26:20', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2017-11-08 09:26:20', NULL, NULL),
(12, 'Categories', 'fa fa-tags', 'categories', 'categories', 'AdminCategoriesController', 0, 0, '2017-11-08 12:31:16', NULL, NULL),
(13, 'Posts', 'fa fa-file-text-o', 'posts', 'posts', 'AdminPostsController', 0, 0, '2017-11-08 12:33:59', NULL, '2017-11-08 12:40:21'),
(14, 'Posts', 'fa fa-file-text-o', 'posts14', 'posts', 'AdminPosts14Controller', 0, 0, '2017-11-08 12:40:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2017-11-08 09:26:20', NULL),
(2, 'Member', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2017-11-08 09:26:20', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2017-11-08 09:26:20', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2017-11-08 09:26:20', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2017-11-08 09:26:20', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2017-11-08 09:26:20', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2017-11-08 09:26:20', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2017-11-08 09:26:20', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2017-11-08 09:26:20', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2017-11-08 09:26:20', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2017-11-08 09:26:20', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2017-11-08 09:26:20', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 2, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2017-11-08 09:26:20', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2017-11-08 09:26:20', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2017-11-08 09:26:20', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2017-11-08 09:26:20', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2017-11-08 09:26:20', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', '', 'upload_image', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', '', 'upload_image', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2017-11-08 09:26:20', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2017-11-08 09:26:20', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$coVEcHxiBebZysIIoriBn.8Rs.YaiQJ2XTxWBAV4N1CtK3fx.EDba', 1, '2017-11-08 09:26:20', NULL, 'Active'),
(2, 'Jessica Veranda', 'uploads/1/2017-11/4tzzk72p.jpg', 'jesver@andriapp.com', '$2y$10$nfrZZEm9lVG6cIgH./mv2ebskI55OIJZWoF3uHOpfWBl709Uj6qa.', 2, '2017-11-08 13:08:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(26, '2017_11_08_192204_create_categories', 2),
(27, '2017_11_08_192432_create_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cms_users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `categories_id`, `title`, `slug`, `content`, `tags`, `cms_users_id`) VALUES
(1, '2017-11-08 12:47:24', '2017-11-08 13:05:31', 6, 'Bob Marley', 'bob-marley', '<p><img src=\"http://localhost:8000/uploads/1/2017-11/5ea305188859686489f18e2890c18eb0.jpg\"></p><p>Ridiculus quod vestibulum luctus blanditiis aperiam distinctio volutpat voluptatum aliquip sodales? Dignissim eaque ab facilis, quia pede anim mollit? Cupidatat, maecenas ut, ipsum accusamus lacinia nobis lectus qui, facilis nostrum justo proin rutrum, sodales lobortis nam! Odit consectetur. Nostrud semper. Laudantium nascetur montes laboriosam soluta esse earum aperiam! Molestie, placeat possimus quisque, nascetur sapiente elit excepteur ligula hendrerit tortor, dolore! Donec torquent volutpat, nostra nullam parturient turpis quisquam illo itaque quo torquent? Netus, optio excepturi purus fames, iste unde torquent. Diamlorem. Neque quibusdam amet. Auctor occaecati tempus, nobis dui vestibulum! Adipiscing laoreet amet doloribus sem mi. Rem delectus nibh distinctio.</p><p><br></p><p>Quia, platea cupiditate nostra amet quisque, blandit faucibus phasellus facilisis, veniam maiores ligula occaecat tempor quae, quidem elementum! Error varius. Laboris adipisicing duis convallis incidunt fugit. Leo illo rutrum eum inventore accumsan, do cum, rhoncus praesent? Quas, nesciunt proin aut soluta potenti feugiat dignissimos. Eligendi vestibulum, quibusdam unde. Cupiditate. Justo odio wisi arcu eum, maecenas diamlorem, eget natus at debitis, suspendisse asperiores hac explicabo accusamus reprehenderit ratione! Eligendi aut sequi! Porta a etiam rerum dolorum. Dicta erat magnis. Quisque iure luctus? Molestias voluptates, culpa bibendum tincidunt nascetur fugit pariatur magna habitasse. Risus fermentum suscipit laboriosam! Augue, sint porro dictum, id.</p><p><br></p><p>Orci pede itaque non conubia natoque. Quibusdam placeat volutpat, nisl qui expedita dis, natoque, suscipit. Eaque voluptates pulvinar montes ipsam exercitation sodales quas orci, magna fugiat est tempore quo illum! Quaerat? Voluptatum? Scelerisque cursus ultricies iusto ad quo faucibus distinctio, architecto aliquam, quos! Rerum? Sociis pellentesque aspernatur cum. Delectus aspernatur lacus. Praesentium sed, nobis quasi? Fusce, possimus aptent class praesentium? Explicabo nihil auctor, eu. Adipisicing, primis nullam magnis expedita corrupti aliquip risus imperdiet pariatur accusamus, urna sociosqu rhoncus excepturi quibusdam ac cursus tellus accusantium irure platea elementum, felis nonummy cum ipsa. Commodo per ea, vehicula dicta illo netus? Malesuada aptent.</p>', 'lorem,ipsum,dolor,sit,amet', 1),
(2, '2017-11-08 12:48:30', '2017-11-08 13:05:24', 4, 'Noah Band', 'noah-band', '<p><img src=\"http://localhost:8000/uploads/1/2017-11/fd67df207e71ad6203ad1b281e13c775.jpg\"><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">NOAH, adalah sebuah grup musik Pop/Rock alternatif dari Bandung, Indonesia. Grup musik ini dikenal sebagai grup musik terbesar atau paling terkenal di Indonesia, bahkan sedikitnya di dunia.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p>Augue dictumst molestias fuga voluptatum dapibus. Imperdiet wisi dignissim class perferendis similique debitis tempore ratione, aut lacus mi? Dictum consequatur illum dolore urna ducimus placerat luctus, magnis odio elementum taciti? Ipsa faucibus! Sociis non imperdiet molestiae. Consectetuer, dictumst! Incididunt sit, deleniti aute ex officia dolores, minim, consequatur aute? Dignissim dignissimos, nesciunt eiusmod sunt netus egestas deserunt faucibus nisi fuga animi. Incidunt hac eius laboris nostrum culpa, primis turpis id reprehenderit tempora cupidatat. Explicabo praesentium consequuntur! Cubilia, facilis porttitor ab quae ipsum parturient rem aptent, urna facilis molestias morbi magnis nec saepe ac, bibendum habitasse placerat, quo scelerisque excepteur, totam nunc.</p><p><br></p><p>Magna magni corrupti aliquet modi nascetur, iusto atque dolores dolorem, hac porta aperiam similique architecto libero earum reprehenderit numquam? Inventore risus? Aliquid rerum repellendus, assumenda curae erat ac. Tempora iaculis. Taciti dolor, ratione nisi condimentum eros, earum iusto cupidatat, nullam, cum. Repellat. Iure nam penatibus aliquam fugiat dolores, quasi adipiscing, eligendi dictum cum hac elementum voluptatem rutrum. Purus scelerisque euismod ad facilisi? Itaque, veritatis, dictumst saepe morbi consectetuer possimus anim, quod autem, vitae primis omnis tenetur adipiscing. Mollit rutrum atque odio fringilla autem turpis. Mollis molestiae reprehenderit quos? Dis elementum, quaerat arcu error urna perspiciatis interdum nullam dolore aliquip consequuntur.</p><p><br></p><p>Quia porro quaerat ducimus amet tempora optio pulvinar magni architecto quaerat consequat, unde nobis! Sequi arcu dolorem, vitae. Aliquam diam laboris vivamus iaculis illo adipiscing dolorum phasellus cupiditate magnam urna, cupiditate, ridiculus class habitant cursus reprehenderit nihil eum perferendis id voluptates hic vulputate venenatis ac? Sequi placerat massa praesent consectetuer temporibus ultrices, natus porro nullam quis quos voluptate nobis autem. Mattis lacus, nesciunt quod. Eaque molestiae, eligendi adipisci? Eleifend! Autem nostra dis, eos potenti sociosqu perspiciatis nisl, ornare? Aliquam aliquet eros ea diam debitis! Occaecati distinctio hac impedit temporibus potenti minus fringilla dis adipisci urna aperiam, quis eveniet praesent? Cubilia.</p>', 'lorem,ipsum,dolor,sit,amet', 1),
(3, '2017-11-08 12:49:37', '2017-11-08 13:05:15', 5, 'Maliq & D\'Essentials', 'maliq-dessentials', '<p><img src=\"http://localhost:8000/uploads/1/2017-11/4a8b0d25186d3abcb834f462285b4ac5.jpeg\" style=\"width: 25%;\"><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">MALIQ &amp; D\'Essentials adalah sebuah grup musik beraliran jazz yang berasal dari Jakarta, Indonesia. MALIQ adalah kepanjangan dari Music And Live Instrument Quality</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p>Cras libero aliquet magnam, nisi temporibus? Totam, reiciendis, netus, magna posuere, nullam! Omnis, provident ex incidunt accumsan eaque excepteur non? Elit reprehenderit rutrum imperdiet, a mollis, tempore eos. Adipisicing ultrices euismod montes repudiandae veritatis conubia molestie porttitor libero orci corporis veniam? Quia turpis mattis. Tempus nobis mollis, etiam? Fermentum mauris, praesent! Proident error optio curae condimentum interdum, ad impedit semper. Nostrum habitasse vel mauris soluta eu nisi libero consequatur exercitation nunc tenetur, ante arcu euismod expedita adipiscing vehicula? Ipsa quibusdam, integer eum accusantium quae. Molestiae, dolores nobis, tellus laudantium duis morbi repellendus exercitation ullamco cumque nemo! Nunc eum incidunt iure.</p><p><br></p><p>Repudiandae tempore? Lobortis adipisicing montes risus, nostra sint hendrerit cupidatat, aliquet pulvinar. Rutrum hac magni cursus! Molestias molestie iusto nascetur. Cursus dolorum illum. Quia! Sociosqu lacinia corporis sodales ligula congue? Parturient aut, molestiae optio scelerisque wisi, nam ipsam atque quam quisque minima praesentium vehicula, feugiat, dapibus risus occaecati nulla animi nunc libero! Velit a aptent molestias! Ratione habitant fuga nec sodales fuga, eligendi lectus vestibulum fames dolorem dolore. Explicabo praesent integer fugit justo ipsa ac, mi habitant, deserunt tempor ante! Quisque ratione vero nisl, fermentum hac senectus exercitation facilisis minim eget gravida per error mauris laudantium? Iusto sagittis aptent risus.</p><p><br></p><p>Aptent sociosqu veritatis. Scelerisque anim praesent placeat nec, voluptatem per cras nemo modi vel primis vitae ultrices velit, venenatis esse sint autem eaque. Sem conubia nam pharetra, porttitor, quasi pharetra. Anim quo, elementum ipsa elementum sit? Ac primis natus class, sociosqu quisquam pede maiores beatae dolore, reiciendis quisquam ullamcorper saepe curae pulvinar molestias venenatis harum sagittis. Maiores? Voluptatibus. Aperiam aliquet ducimus quasi natus eaque, laboriosam semper, diamlorem. Sociosqu, semper fames. Primis saepe ea quisquam labore voluptates cubilia scelerisque. Ligula soluta eu molestias! Nisi montes enim accusamus, praesent mauris! Ipsum primis, corporis, molestias harum praesentium vivamus mauris gravida aliqua montes. Vitae.</p>', 'lorem,ipsum,dolor,sit,amet', 1),
(4, '2017-11-08 12:50:42', '2017-11-08 13:05:02', 1, 'David Guetta', 'david-guetta', '<p><img src=\"http://localhost:8000/uploads/1/2017-11/76930cf61973c47d65b1c99437d5c6d3.jpg\" style=\"width: 25%;\"><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Pierre David Guetta merupakan seorang DJ berkebangsaan Perancis. Album pertamanya ialah Just a Little More Love dirilis pada tahun 2002. Dia dilahirkan di Paris. Berkarier di dunia musik sejak tahun 1984..</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p>Varius! Magnam aspernatur quam, fames aute venenatis ultrices inventore dolorem quod auctor, viverra etiam, explicabo, nostrum ipsa facilis. Vitae per. Per wisi placerat sequi, deleniti justo occaecat adipisicing? Aenean tristique, minim officiis cillum? Molestiae cubilia fuga natoque tincidunt, sint, tincidunt? Dui? Iaculis! Nullam eiusmod autem metus voluptatibus cumque? Lectus eget, officiis facere! Culpa veniam doloribus curabitur do faucibus blanditiis tincidunt? Praesent pharetra dolores urna eget eleifend elit proin, occaecat aenean, optio, nobis. Condimentum autem sint aptent reprehenderit similique rerum blanditiis? Qui ac? Porta eget, excepteur elit? Voluptatibus ridiculus iusto quae! Scelerisque nullam, aut! Aut luctus fuga? Ut quaerat augue earum.</p><p><br></p><p>Harum aptent eiusmod tempora! Aenean! Quisquam iusto arcu cubilia mollis mus pulvinar laudantium. Iusto dui. Vivamus faucibus dictumst? Velit. Felis, quaerat exercitationem purus ex. Odio varius distinctio eros adipisci? Tenetur pariatur parturient optio consectetuer blandit voluptatibus, ligula rhoncus illo, cupidatat beatae reiciendis blanditiis ullam, sed aliquet consequat rerum, sapien elit quis? Facilisis venenatis primis? Condimentum vulputate vestibulum egestas placerat magnis. Earum earum tortor sollicitudin molestie? Dui tempora voluptatibus, inventore distinctio natus consequatur repellat? Senectus interdum exercitation repudiandae eaque! Nulla ducimus nec hic inceptos laborum! Pariatur tempora porta aliquid corporis ac veniam magna, habitant expedita! Vestibulum aliquid! Quis earum egestas leo.</p><p><br></p><p>Eleifend lorem facilisis, curabitur odio dolorum eos ultricies euismod tortor magni id accumsan numquam pellentesque culpa saepe assumenda, deleniti hendrerit esse, vitae quas lacus, dis vivamus. Imperdiet. Eveniet praesentium itaque irure hac, veritatis suspendisse lobortis, cumque amet fugiat quidem dictum porro quam? Nobis? Ridiculus, primis? Augue eaque sem. Quisquam. Tempor! Facilisi maiores officiis dolorum luctus laborum beatae? Rerum. Aliquid augue, placeat consectetuer lectus mus alias impedit ullamcorper deleniti mi. Fugiat consequatur eget. Gravida mauris ridiculus pede, hic itaque maecenas impedit, eius rutrum praesent debitis pharetra, optio, maecenas porta. Ornare sapiente proident consequuntur? Aenean consequatur doloribus cum quasi id, taciti blandit.</p>', 'lorem,ipsum,dolor,sit,amet', 1),
(5, '2017-11-08 12:51:43', '2017-11-08 13:04:54', 3, 'Gugun Blues Shelter', 'gugun-blues-shelter', '<p><img src=\"http://localhost:8000/uploads/1/2017-11/01d4758a4dd473314eae636c99a3531a.jpg\"><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Gugun Blues Shelter, atau Gugun and The Blues Shelter adalah band Indonesia ber-aliran blues, yang dibentuk Jakarta, Indonesia, pada tahun 2004. Para anggotanya saat ini antara lain Gugun, Fajar and Bowie.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p>Tempore tempor eveniet aenean ac magni est praesentium hic porro vehicula turpis? Tenetur numquam nostra vulputate, mus omnis? Minim malesuada! Fugit! Ridiculus. Perferendis, architecto dolorem orci quos nam litora esse. Eget per sem viverra aspernatur iste, aspernatur animi erat, dolor. Quisque nam, conubia metus. Euismod adipisci autem accusamus? Dis dolor. Aspernatur possimus in cillum vehicula. Leo senectus porta mauris eleifend, fugit sint blanditiis? Tempora earum, placeat, dignissim error mollis tempus! Architecto itaque tempor blanditiis venenatis, dolor, laboris ullam, habitant maiores, beatae nonummy? Cras officiis, perferendis? Fringilla vehicula placerat! Vehicula ipsa, quod, molestiae aliquam adipisicing blanditiis mauris corrupti fusce anim optio.</p><p><br></p><p>Consequatur nonummy cubilia libero wisi mi corrupti neque pellentesque. Ridiculus luctus sequi semper laoreet libero, hymenaeos. Ut incidunt consectetur magnam aliquid recusandae, blandit id, repudiandae posuere, pulvinar lectus officiis praesent! Integer molestiae, adipiscing aliquid risus? Velit? Dolorum qui aut, felis. Congue enim? Justo dis montes, ultrices aute torquent at parturient nostrud occaecat qui dictumst porttitor quidem. Proin velit laboris quas netus incidunt officia. Architecto? Possimus vero justo maiores incididunt, platea diamlorem, id? Corporis ultricies elit donec repellendus fuga similique error! Nulla. Lorem netus augue. Excepteur, adipisci praesent scelerisque. Mattis aut. Varius, illo ut reiciendis curae praesentium? Tellus risus natoque leo.</p><p><br></p><p>Luctus hic imperdiet, nisi in placerat. Illum ac. Excepturi curabitur hymenaeos architecto quaerat, maxime rutrum hac hac aliqua mattis ad, incidunt commodo semper aliquet? Iste quasi quisquam sollicitudin aliquip id! Dignissim, officia! Enim possimus bibendum tempora, scelerisque alias gravida ipsum tenetur pharetra, consequuntur id sapien? Possimus venenatis egestas fugit doloremque occaecat libero, mus nobis! Itaque nostra! Potenti voluptatem est tempore. Consectetur officia orci provident? Duis curae? Aliquid placerat. Phasellus dictumst curae feugiat officiis placeat tellus voluptatem! Quisquam dignissim doloremque! Excepturi! Eu sagittis faucibus voluptatibus. Dolores aperiam? Rerum lobortis. Consectetuer nibh, sapiente diam tempus eaque incididunt laboriosam, dapibus eget aenean. Aliquip.</p>', 'lorem,ipsum,dolor,sit,amet', 1),
(6, '2017-11-08 13:09:53', NULL, 4, 'Ari Lasso', 'ari-lasso', '<p><img src=\"http://localhost:8000/uploads/2/2017-11/275683273cd9a5c6c8f044240bf2846f.jpg\"></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Ari Bernardus Lasso, atau lebih dikenal dengan nama Ari Lasso adalah penyanyi pop Indonesia. Pria berambut panjang dan tinggi sekitar 167 cm ini pernah tercatat sebagai vokalis grup band Dewa 19 yang</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p>Cupiditate sit platea. Molestias, corporis faucibus. Quam vestibulum accusamus quia eum praesentium labore habitant, voluptates velit necessitatibus nisi. Molestie lacinia molestias molestiae, molestias, earum ullamco in maiores quo, penatibus donec sapiente viverra, veniam mollit? Minus mus, quidem modi voluptatum illo praesentium debitis! Voluptatem sollicitudin sociosqu consectetuer! Occaecat rutrum pharetra dui, parturient torquent adipisci, aliquet, pretium cras, commodo elementum unde nunc explicabo mollis morbi officia? Parturient amet? Nisl rem nec. A, dolores veniam potenti sollicitudin ante vulputate. Debitis? Corporis commodi torquent. Totam sed voluptas venenatis habitant excepteur, atque, doloribus, quo elit sociosqu sodales dolorem numquam quasi sagittis ratione fringilla, ante? Mattis.</p><p><br></p><p>Facilisis autem laborum tempor ullamcorper deleniti, pellentesque nascetur, hymenaeos optio laboriosam quisque accumsan vestibulum omnis ligula. Vitae illo! Cillum mus erat ipsa adipisci labore totam, aute diamlorem feugiat, felis aute erat, officia deleniti porta tempore magna venenatis ligula nisi dolorem, atque minus, do praesentium, voluptate! Habitasse inceptos rhoncus, beatae, turpis error odit sem illum? Officiis cillum, suscipit, cupidatat wisi reiciendis aliquet perspiciatis nonummy beatae tempora molestie, maiores dignissimos similique posuere? Totam torquent. Facere imperdiet quisque vehicula nihil, nonummy! Odio quia, voluptas minim pede iure? Vel, gravida pulvinar suspendisse fermentum consectetur, lorem. Tenetur justo cupiditate rhoncus hendrerit mollitia donec ad? Malesuada.</p><p><br></p><p>Molestias voluptatum semper class impedit deleniti ornare, qui anim facilisis voluptatum cum dolores impedit adipisicing proin. Aenean occaecat. Rhoncus iaculis vel numquam provident? Numquam diam diamlorem habitasse perspiciatis beatae sunt aut illum odit, sagittis, recusandae quis, nisl mus. Maiores cillum sapiente sem est? Rerum, numquam beatae iaculis! Illum ultricies consequatur cras ullamco. Iure cillum, accusantium perferendis quidem ornare egestas luctus occaecati blandit aspernatur excepteur dicta fusce. Porro amet deserunt volutpat, dicta sint, eu aliquam erat, imperdiet rem illum tempora justo, molestias totam nostra interdum eu qui distinctio pellentesque, diam ad, dolores, torquent diamlorem natus asperiores hendrerit, amet autem cras eiusmod.</p>', 'lorem,ipsum,dolor,sit,amet', 2),
(7, '2017-11-08 13:13:34', NULL, 6, 'Numquam ut incididunt! Torquent phasellus.', 'numquam-ut-incididunt-torquent-phasellus', '<p><img src=\"http://localhost:8000/uploads/2/2017-11/a0c9cfb54417bfbc8d04bdc21cf0051b.jpeg\" style=\"width: 50%;\"></p><p>Asperiores corrupti sunt commodo libero, malesuada praesentium voluptates. Fringilla montes viverra, error rutrum delectus magnis! Eos, rem imperdiet iure. Maiores pellentesque consectetur doloremque mollit! Nunc inventore possimus ea adipiscing, debitis harum doloribus? Esse et, dis ratione erat nibh eius beatae turpis nemo. Donec vestibulum! Egestas iste atque nobis lacus, dictumst orci enim! Alias taciti eleifend adipiscing, expedita odit voluptate incididunt.</p><p><br></p><p>Fugit ullamcorper laborum ullam nec minim. Aliquam porta cras asperiores adipiscing quod feugiat feugiat provident, habitant! Pharetra, curae facilisi dui, eleifend, convallis quo feugiat lacus metus magna! Atque repellendus beatae. Sed, primis! Rutrum, sed illum. Varius! Quibusdam beatae temporibus iure nulla torquent diam praesent! Veniam, mus gravida atque eius eius felis fames gravida beatae? Inceptos curae, libero! Voluptatibus, nam, quod.</p><p><br></p><p>Facilis fringilla modi bibendum accusamus repudiandae, natoque aliquam sapiente penatibus odit tincidunt! Fames? Numquam explicabo suspendisse, ad, occaecati fugiat a porta eget! Cupiditate cras! Reprehenderit dolorem dignissimos curabitur enim asperiores, labore class odit quaerat laborum ut? Vehicula beatae nostra, phasellus officia leo? Rem laudantium aliqua ultrices nam per, pellentesque, dapibus pellentesque ridiculus curae mollis neque quis. Rem, incididunt mollit sit.</p>', 'lorem,ipsum,dolor,sit,amet', 2),
(8, '2017-11-08 13:14:19', NULL, 5, 'Cursus numquam.', 'cursus-numquam', '<p><img src=\"http://localhost:8000/uploads/2/2017-11/afeb03c16c050bdd96a6086c3ac7ffe9.jpg\"></p><p>Senectus aliquet quo saepe hymenaeos donec vehicula facilisi, impedit dolorum possimus dolore voluptatem tellus odit dictum provident? Aliquam totam duis accusamus voluptate cubilia ratione cras. Nam laoreet, ridiculus. Omnis repudiandae accusamus molestias eu rhoncus, cum exercitation? Porttitor sapien tempus proident, lobortis felis mollit quos nisi duis blandit in fugit libero sit. Deserunt mollitia faucibus asperiores sodales purus, ab sociis illo? Sociis amet beatae necessitatibus tenetur corrupti? Velit cursus nullam sapiente, aperiam wisi, architecto parturient etiam hymenaeos, metus nascetur, primis taciti. Atque impedit montes vel libero! Sapien? Hymenaeos mollit! Proin litora molestiae, aliquet occaecat, blandit, nihil, aperiam fusce aenean, dignissimos corrupti.</p><p><br></p><p>Et adipisicing autem. Nunc parturient eros id corporis earum! Lacus! Quo dapibus lacinia laborum, nihil gravida atque architecto iaculis harum, eveniet praesent? Cupidatat quo, nemo occaecati. Proident perspiciatis, mi nobis facilis quisquam, nulla, qui exercitation erat? Magna? Fringilla eu, irure! Veniam minim at congue molestie similique ullam amet? Nascetur, ultricies ligula, eiusmod cupiditate. Molestiae nemo fermentum lorem voluptatum tristique voluptatem integer facere dignissimos? Deleniti? Mollit, rerum. Mauris ac! Excepturi diamlorem? Minim asperiores ornare id cupidatat justo laboris excepturi! Eum distinctio! Pharetra nam incidunt cubilia, molestie pulvinar deleniti aliquid, tempora do officiis optio. Laboriosam sapiente voluptates quo nascetur, eiusmod. Dictum! Explicabo.</p>', 'lorem,ipsum,dolor,sit,amet', 2),
(9, '2017-11-08 13:15:02', NULL, 1, 'Praesent dictumst officia.', 'praesent-dictumst-officia', '<p><img src=\"http://localhost:8000/uploads/2/2017-11/c0354041f915e0999e8c56d9f940a4cc.jpg\"></p><p>Aperiam pede dolor consequat augue iste impedit bibendum, inventore pretium varius iste nemo omnis cum a? Commodo, illum distinctio tincidunt sapien unde expedita wisi lacus rem, perspiciatis tristique taciti aliquid! Molestie corrupti euismod voluptatum consequuntur dui, interdum error maxime, porta ornare tempus ipsam, aliquip purus, placeat, nunc consectetuer praesentium quibusdam, ullamcorper, ratione eius morbi tempor condimentum nisl, vero ipsum impedit cupiditate perspiciatis dapibus! Consequat! Pharetra quisquam, consectetuer consequat, curabitur? Similique accumsan culpa, ullamcorper veniam porta pretium eros wisi debitis metus temporibus cupidatat rhoncus molestias. Placerat iste mauris tellus alias? Occaecat dictumst cumque necessitatibus, magnis? Doloribus tempore. Porta integer totam gravida.</p><p><br></p><p>Nullam dignissimos ducimus accusantium sagittis soluta, dapibus condimentum? Aliqua faucibus molestie eligendi sint ipsum cubilia at, cubilia, odio, ultricies necessitatibus praesent ultrices iaculis modi turpis perferendis voluptas accumsan laborum cum enim repellat euismod fames adipisicing ultricies ipsa cras excepturi, iaculis! Ullamco perferendis? Nullam unde unde, litora, penatibus nemo nostra deserunt ultricies. Exercitation etiam tempus sociosqu repellendus, assumenda! Veritatis delectus potenti curabitur netus nesciunt nibh proident ullam! Tenetur torquent, vel, unde cupiditate elementum, autem illo dapibus cras, cursus platea! Quis aenean, mi. Facilisi fugit lobortis perferendis, adipisicing adipiscing dolor, etiam integer, senectus! Placeat nisl mi ligula venenatis! Laoreet corrupti blandit! Elementum.</p>', 'lorem,ipsum,dolor,sit,amet', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
