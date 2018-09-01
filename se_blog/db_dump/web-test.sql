-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Sep 01, 2018 at 06:58 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `type`, `user_id`, `created_at`, `updated_at`, `filename`, `mime`, `original_filename`) VALUES
(1, 'Why developers should know how to write', '<p id=\"24ba\" class=\"graf graf--p graf-after--h3\">I recently came across an&nbsp;<a class=\"markup--anchor markup--p-anchor\" href=\"https://www.fastcompany.com/3068938/forget-coding-writing-is-the-new-unicorn-skill\" target=\"_blank\" rel=\"noopener\" data-href=\"https://www.fastcompany.com/3068938/forget-coding-writing-is-the-new-unicorn-skill\">article by John Maeda</a>&nbsp;about how writing &mdash; not coding &mdash; is design&rsquo;s unicorn skill. That got me thinking about how writing plays a role in the life of developers.</p>\r\n<p id=\"3a70\" class=\"graf graf--p graf-after--p\">In today&rsquo;s data-driven, data-heavy world, there&rsquo;s so much content to consume. We&rsquo;re constantly bombarded by videos, pictures, advertisements, podcasts, and articles. Each of these</p>\r\n<p class=\"graf graf--p graf-after--p\">media has a different type of appeal, and it always seems like there&rsquo;s strong competition to try to attract and retain our attention.</p>\r\n<figure id=\"c708\" class=\"graf graf--figure graf-after--p\">\r\n<div class=\"aspectRatioPlaceholder is-locked\">edited</div>\r\n</figure>', 'Mobile', 2, '2018-09-01 01:24:09', '2018-09-01 01:24:26', 'php690C.tmp.jpeg', 'image/jpeg', '1_BQFBHRJzbJEBazsKdW2dgA.jpeg'),
(2, 'RuboCop: enable, disable and configure linter checks for your Ruby code', '<pre id=\"1210\" class=\"graf graf--pre graf-after--figure\"># rubocop:enable/disable &lt;linter check name, ...&gt;</pre>\r\n<p id=\"dd74\" class=\"graf graf--p graf-after--pre\"><a class=\"markup--anchor markup--p-anchor\" href=\"https://github.com/rubocop-hq/rubocop\" target=\"_blank\" rel=\"noopener\" data-href=\"https://github.com/rubocop-hq/rubocop\">RuboCop</a>&nbsp;can be a convenient static code analysis tool to apply the&nbsp;<a class=\"markup--anchor markup--p-anchor\" href=\"https://github.com/rubocop-hq/ruby-style-guide\" target=\"_blank\" rel=\"noopener\" data-href=\"https://github.com/rubocop-hq/ruby-style-guide\">Ruby style guide</a>&nbsp;to your apps. Sometimes the rules it enforces are not suitable for some of your files and you need to disable or customise the checks RuboCop uses.</p>\r\n<p id=\"981e\" class=\"graf graf--p graf-after--p\">In this quick tutorial I will show you some options to enable and disable RuboCop code checks, called &ldquo;<a class=\"markup--anchor markup--p-anchor\" href=\"https://rubocop.readthedocs.io/en/latest/cops/\" target=\"_blank\" rel=\"noopener\" data-href=\"https://rubocop.readthedocs.io/en/latest/cops/\">cops</a>&rdquo;, so that it works effectively for your application.</p>\r\n<ul class=\"postList\">\r\n<li id=\"7df0\" class=\"graf graf--li graf-after--p\"><a class=\"markup--anchor markup--li-anchor\" href=\"https://medium.freecodecamp.org/rubocop-enable-disable-and-configure-linter-checks-for-your-ruby-code-475fbf11046a#3f8e\" data-href=\"#3f8e\">Disable and enable cops within a file</a></li>\r\n<li id=\"0f0b\" class=\"graf graf--li graf-after--li\"><a class=\"markup--anchor markup--li-anchor\" href=\"https://medium.freecodecamp.org/rubocop-enable-disable-and-configure-linter-checks-for-your-ruby-code-475fbf11046a#b088\" data-href=\"#b088\">Configure your&nbsp;.rubocop.yml</a></li>\r\n<li id=\"5c90\" class=\"graf graf--li graf-after--li\"><a class=\"markup--anchor markup--li-anchor\" href=\"https://medium.freecodecamp.org/rubocop-enable-disable-and-configure-linter-checks-for-your-ruby-code-475fbf11046a#eb20\" data-href=\"#eb20\">Useful RuboCop CLI commands</a></li>\r\n<li id=\"028e\" class=\"graf graf--li graf-after--li\"><a class=\"markup--anchor markup--li-anchor\" href=\"https://medium.freecodecamp.org/rubocop-enable-disable-and-configure-linter-checks-for-your-ruby-code-475fbf11046a#5c01\" data-href=\"#5c01\">Find out more</a></li>\r\n</ul>\r\n<blockquote id=\"be32\" class=\"graf graf--pullquote graf-after--li\">In RuboCop lingo the various checks performed on the code are called cops. Each cop is responsible for detecting one particular offense. There are several cop departments, grouping the cops by class of offense.<br /> &mdash; <a class=\"markup--anchor markup--pullquote-anchor\" href=\"https://rubocop.readthedocs.io/en/latest/cops/\" target=\"_blank\" rel=\"noopener\" data-href=\"https://rubocop.readthedocs.io/en/latest/cops/\">RuboCop docs:&nbsp;Cops</a></blockquote>\r\n<h3 id=\"3f8e\" class=\"graf graf--h3 graf-after--pullquote\">Disable and enable cops within a&nbsp;file</h3>\r\n<p id=\"d6df\" class=\"graf graf--p graf-after--h3\">You can disable a code check within a file, for example a function or section of your code, through annotating it with comments RuboCop can read.</p>\r\n<p id=\"a2a6\" class=\"graf graf--p graf-after--p\">These start with&nbsp;<code class=\"markup--code markup--p-code\"># rubocop:disable</code>&nbsp;followed by the the checks you want to disable. You can specify one cop or many separated by a comma.</p>\r\n<pre id=\"552c\" class=\"graf graf--pre graf-after--p\"># rubocop:disable Metrics/LineLength, Style/StringLiterals, ...</pre>\r\n<h4 id=\"b499\" class=\"graf graf--h4 graf-after--pre\">Disable cops on a single&nbsp;line</h4>\r\n<p id=\"29af\" class=\"graf graf--p graf-after--h4\">If you add the RuboCop comment at the end of a line it will disable it for just that aspect, such as a method, block or class.</p>\r\n<pre id=\"b0fb\" class=\"graf graf--pre graf-after--p\">def very_long_method # rubocop:disable Metrics/MethodLength<br />   ...<br />end</pre>\r\n<p id=\"2a38\" class=\"graf graf--p graf-after--pre\">This choice is best if you just want to change how one aspect in a file is affected by RuboCop without needing to think about reenabling the checks again.</p>\r\n<h4 id=\"44f6\" class=\"graf graf--h4 graf-after--p\">Disable cops until you reenable&nbsp;them</h4>\r\n<p id=\"04a6\" class=\"graf graf--p graf-after--h4\">Another option is to disable checks before the start of a section of code, and then enable them again at a point you specify. Similar the RuboCop comment to disable cops, the comment to activate checks again is&nbsp;<code class=\"markup--code markup--p-code\"># rubocop:enable</code>followed by the name of the relevant cops.</p>\r\n<pre id=\"a030\" class=\"graf graf--pre graf-after--p\"># rubocop:disable Metrics/LineLength, Style/StringLiterals</pre>\r\n<pre id=\"49f6\" class=\"graf graf--pre graf-after--pre\">[The code you want to exclude from the RuboCop check]</pre>\r\n<pre id=\"e1a9\" class=\"graf graf--pre graf-after--pre\"># rubocop:enable Metrics/LineLength, Style/StringLiterals</pre>', 'AI', 2, '2018-09-01 01:25:18', '2018-09-01 01:25:18', 'php7751.tmp.png', 'image/png', 'robo.png'),
(3, 'Aug 29 How to host multiple domain names and projects on one server', '<p id=\"9a27\" class=\"graf graf--p graf-after--figure\">I own multiple domain names, and each one hosts a different side project. For the longest time, everything that required &lsquo;hosting&rsquo; was hosted on Heroku. But their free tier can be quite limited, it can also get costly quickly if you are paying for each separate project. So instead, I decided to explore putting all of them together using NGINX (recommended to me by&nbsp;<a class=\"markup--user markup--p-user\" href=\"https://medium.com/@wongmjane\" target=\"_blank\" rel=\"noopener\" data-href=\"https://medium.com/@wongmjane\" data-anchor-type=\"2\" data-user-id=\"f55715c4c91c\" data-action-value=\"f55715c4c91c\" data-action=\"show-user-card\" data-action-type=\"hover\">Jane Manchun Wong</a>).</p>\r\n<h3 id=\"5f57\" class=\"graf graf--h3 graf-after--p\">Required Resources</h3>\r\n<h4 id=\"4870\" class=\"graf graf--h4 graf-after--h3\">Virtual Private Server&nbsp;(VPS)</h4>\r\n<p id=\"7b92\" class=\"graf graf--p graf-after--h4\">You&rsquo;ll need a virtual server such as&nbsp;<a class=\"markup--user markup--p-user\" href=\"https://medium.com/@digitalocean\" target=\"_blank\" rel=\"noopener\" data-href=\"https://medium.com/@digitalocean\" data-anchor-type=\"2\" data-user-id=\"9ee8d41c2743\" data-action-value=\"9ee8d41c2743\" data-action=\"show-user-card\" data-action-type=\"hover\">DigitalOcean</a>&nbsp;or EC2 by&nbsp;<a class=\"markup--user markup--p-user\" href=\"https://medium.com/@AWSUserGroups\" target=\"_blank\" rel=\"noopener\" data-href=\"https://medium.com/@AWSUserGroups\" data-anchor-type=\"2\" data-user-id=\"2f1c5444c886\" data-action-value=\"2f1c5444c886\" data-action=\"show-user-card\" data-action-type=\"hover\">AWS</a>. Personally I uses&nbsp;<a class=\"markup--anchor markup--p-anchor\" href=\"https://www.vultr.com/?ref=7358373\" target=\"_blank\" rel=\"noopener\" data-href=\"https://www.vultr.com/?ref=7358373\">Vultr</a>&nbsp;(here&rsquo;s the&nbsp;<a class=\"markup--anchor markup--p-anchor\" href=\"http://vultr.com/\" target=\"_blank\" rel=\"noopener\" data-href=\"http://vultr.com/\">non-referral link</a>) which costs me about $2.50 / month.</p>\r\n<h4 id=\"f404\" class=\"graf graf--h4 graf-after--p\">Domain Names</h4>\r\n<p id=\"ea57\" class=\"graf graf--p graf-after--h4\">You will need to register a few domain names. Assuming that you probably already have them, make sure your domain names are pointing at the name servers of your VPS. There should be a DNS section in your domain name service dashboard where you can select &ldquo;custom DNS&rdquo; or something similar. If you are not sure what the nameservers of your VPS are, you should be able to find that info easily through a simple search of &ldquo;nameserver&rdquo; + VPS service name.</p>\r\n<h3 id=\"bbf3\" class=\"graf graf--h3 graf-after--p\">Setting up&nbsp;NGINX</h3>\r\n<h4 id=\"18e4\" class=\"graf graf--h4 graf-after--h3\">Installation and basic&nbsp;setup</h4>\r\n<p id=\"381b\" class=\"graf graf--p graf-after--h4\"><em class=\"markup--em markup--p-em\">Reference from&nbsp;</em><a class=\"markup--anchor markup--p-anchor\" href=\"https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04\" target=\"_blank\" rel=\"noopener\" data-href=\"https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04\"><em class=\"markup--em markup--p-em\">How To Install Nginx on Ubuntu 16.04</em></a></p>\r\n<p id=\"b0cb\" class=\"graf graf--p graf-after--p\">Run the following commands through SSH-ing into the VPS. It will install NGINX, set firewall rules allowing it, and set NGINX to autostart on boot.</p>\r\n<figure id=\"ace4\" class=\"graf graf--figure graf--iframe graf-after--p\">\r\n<div class=\"aspectRatioPlaceholder is-locked\">\r\n<div class=\"aspectRatioPlaceholder-fill\">&nbsp;</div>\r\n<div class=\"iframeContainer\"><iframe src=\"https://medium.freecodecamp.org/media/c71a6443bec25f1e87c1d72e955b2253?postId=7aed4f56e7a1\" width=\"700\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-media-id=\"c71a6443bec25f1e87c1d72e955b2253\" data-mce-fragment=\"1\"></iframe></div>\r\n</div>\r\n</figure>\r\n<h4 id=\"8c75\" class=\"graf graf--h4 graf-after--figure\">Configuration setup</h4>\r\n<p id=\"f16e\" class=\"graf graf--p graf-after--h4\"><em class=\"markup--em markup--p-em\">Reference from&nbsp;</em><a class=\"markup--anchor markup--p-anchor\" href=\"https://geekflare.com/multiple-domains-on-one-server-with-apache-nginx/\" target=\"_blank\" rel=\"noopener\" data-href=\"https://geekflare.com/multiple-domains-on-one-server-with-apache-nginx/\"><em class=\"markup--em markup--p-em\">Host Multiple Domains on One Server/IP with Apache or nginx</em></a></p>\r\n<p id=\"0d10\" class=\"graf graf--p graf-after--p\">The default virtual.conf location should be at /etc/nginx/conf.d/virtual.conf. I recommend backing up the default file before making any changes. (If it doesn&rsquo;t exist, you can just create it.) Edit the file to look something like the following:</p>\r\n<figure id=\"bc2f\" class=\"graf graf--figure graf--iframe graf-after--p\">\r\n<div class=\"aspectRatioPlaceholder is-locked\">\r\n<div class=\"aspectRatioPlaceholder-fill\">&nbsp;</div>\r\n<div class=\"iframeContainer\"><iframe src=\"https://medium.freecodecamp.org/media/a1fa49fcce2b19f61a88436d9d9ee97f?postId=7aed4f56e7a1\" width=\"700\" height=\"250\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-media-id=\"a1fa49fcce2b19f61a88436d9d9ee97f\" data-mce-fragment=\"1\"></iframe></div>\r\n</div>\r\n</figure>\r\n<p id=\"c309\" class=\"graf graf--p graf-after--figure\">Here are a few things to look at:</p>', 'Mobile', 2, '2018-09-01 01:26:20', '2018-09-01 01:26:20', 'php683A.tmp.jpg', 'image/jpeg', 'pc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_31_111252_create-blogs-table', 1),
(4, '2018_08_31_152544_update-blogs-table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `isAdmin`) VALUES
(1, 'BurbaCodes', 'dilushadasanayaka@gmail.com', '$2y$10$rO5B61MhRXNG9GMnc/IsQ.XfVgS.uewYhaitRwfLzH62Awo8bN4Yy', '5HfjQE87tU7jyF02cvrbkzl9eeHS9SM9gPoJT1PCUHWnEScuKUKMA7O6boAV', '2018-08-31 02:13:15', '2018-08-31 02:13:15', 0),
(2, 'Dilusha Dasanayaka', 'dilushadasanayaka@yahoo.com.au', '$2y$10$MzZ/dkKk6Ujdinb.d85NyO4KrW2YZxDpT05kHSWdXNfOBtWf36w4i', '7wIswPdImMAGPhoSGYRhmUGdUTCHXhE0qcUzg9Om4YbjiN0GxXmNZ3uQIgnd', '2018-08-31 03:24:41', '2018-08-31 03:24:41', 1),
(3, 'banuka', 'd@gmail.com', '$2y$10$aTwqdVo2QfIXbHwtacgh1eXZGpoxOz7OjfpGPtDA2I8mgt0VraUqO', '1DcbmPhELE7HOVo3KyZMD2G10z4LlLHZnbvjltZlB7wKjptPnb3zalYNTtg2', '2018-08-31 11:55:26', '2018-08-31 11:55:26', 1),
(4, 'slitt_research', 'b@g.com', '$2y$10$joFtXrGhz1LGsP1Yq1DeE.l6rXbczdOTTfOoes2uPyg7JCfeLw/zO', NULL, '2018-09-01 01:27:44', '2018-09-01 01:27:44', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
