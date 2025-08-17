-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2025 at 07:22 PM
-- Server version: 8.0.42-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Assistance with Daily Personal Activities (High-intensity)', 'assistance-with-daily-personal-activities-high-intensity', 3, '2024-08-09 14:36:21', '2024-08-18 10:23:39'),
(2, 'Assistance with Daily Personal Activities', 'assistance-with-daily-personal-activities', 3, '2024-08-09 14:36:21', '2024-08-18 10:25:40'),
(3, 'Assistance with Travel and Transport', 'assistance-with-travel-and-transport', 3, '2024-08-09 14:36:21', '2024-08-18 10:26:19'),
(4, 'Community Nursing Care', 'community-nursing-care', 3, '2024-08-09 14:36:21', '2024-08-18 10:26:40'),
(5, 'Assistance with Daily Tasks in a group or shared living', 'assistance-with-daily-tasks-in-a-group-or-shared-living', 3, '2024-08-09 14:36:21', '2024-08-18 10:27:23'),
(6, 'Assistance with Household Tasks', 'assistance-with-household-tasks', 3, '2024-08-18 10:27:57', '2024-08-18 10:27:57'),
(7, 'Participation in the community', 'participation-in-the-community', 3, '2024-08-18 10:28:18', '2024-08-18 10:28:18'),
(8, 'Group and Center Based Activities', 'group-and-center-based-activities', 3, '2024-08-18 10:29:02', '2024-08-18 10:29:02'),
(9, 'Development of Daily living and Life Skills', 'development-of-daily-living-and-life-skills', 3, '2024-08-18 10:29:31', '2024-08-18 10:29:31'),
(10, 'Assist Life Stage Transition', 'assist-life-stage-transition', 3, '2024-08-18 10:30:03', '2024-08-18 10:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `commentable_type`, `commentable_id`, `created_at`, `updated_at`) VALUES
(1, 'hi test', 3, 'App\\Models\\Post', 18, '2024-09-14 20:38:44', '2024-09-14 20:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_210814_create_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_12_27_115853_create_categories_table', 1),
(7, '2022_12_27_115916_create_posts_table', 1),
(8, '2023_01_05_224832_create_settings_table', 1),
(9, '2023_01_07_092440_create_pages_table', 1),
(10, '2023_01_09_192208_create_tags_table', 1),
(11, '2023_01_09_192602_create_post_tag_table', 1),
(12, '2023_05_10_065356_create_jobs_table', 1),
(13, '2023_05_21_124852_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navbar` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@yopmail.com', '$2y$10$DxbSnrz2b4onIE6EgYhRuehckEwxVZaESp0uTQVIk1bKBa/rDJgqm', '2024-08-09 14:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `image`, `status`, `views`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(18, 'Assistance With Daily Personal Activities (High Intensity)', 'assistance-with-daily-personal-activities-high-intensity', '<!-- Section 1: What is High Intensity ADLs? -->\n<div style=\"display: flex; align-items: center; margin-bottom: 40px; gap: 20px;\">\n    <!-- Image Column -->\n    <div style=\"width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/2.jpg\" \n             alt=\"High Intensity ADLs\" \n             style=\"width: 100%; max-width: 500px; height: 300px; border-radius: 20px; object-fit: cover; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\">\n    </div>\n    <!-- Text Column -->\n    <div style=\"width: 50%; text-align: justify;\">\n        <h3 style=\"margin-bottom: 15px;\">What is High Intensity ADL’s?</h3>\n        <p>High Intensity Assistance with Daily Living (ADL) refers to support services for participants with complex or intensive care needs. These supports require specialized skills or training from support workers to ensure the participant\'s safety and well-being. Examples include assistance with complex personal care tasks such as wound care, tube feeding, or managing challenging behaviors. The High Intensity ADL services provided include:</p>\n        <ul style=\"list-style-position: inside; padding-left: 0; margin-top: 15px;\">\n            <li>1 - Diabetes Management</li>\n            <li>2 - Epilepsy and High-Risk Seizures</li>\n            <li>3 - Complex Wound and Pressure Injury Care</li>\n            <li>4 - Medication Management</li>\n            <li>5 - Complex Bowel Management</li>\n            <li>6 - Enteral Feeding</li>\n            <li>7 - PEG Feeding Management</li>\n            <li>8 - Subcutaneous Injections</li>\n            <li>9 - Stoma Care</li>\n            <li>10 - Urinary Catheter Care</li>\n            <li>11 - Swallowing and Eating Difficulties</li>\n        </ul>\n    </div>\n</div>\n\n<!-- Section 2: How can I access High Intensity ADLs? -->\n<div style=\"display: flex; align-items: center; margin-bottom: 40px; gap: 20px;\">\n    <!-- Text Column -->\n    <div style=\"width: 50%; text-align: justify;\">\n        <h3 style=\"margin-bottom: 15px;\">How can I access High Intensity ADL’s through my NDIS plan?</h3>\n        <p>You can access High Intensity Assistance with Daily Living (ADLs) through the Core Support Budget of your NDIS Plan. These supports are for participants with complex needs that require specialized care. To ensure your plan includes the necessary funding, work with your Support Coordinator or Local Area Coordinator (LAC) to allocate resources properly for your high-intensity needs. We are committed to providing exceptional care, focusing on compassion and expertise, to improve the quality of life for those with complex health care needs.</p>\n    </div>\n    <!-- Image Column -->\n    <div style=\"width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/3.jpg\" \n             alt=\"Access High Intensity ADLs\" \n             style=\"width: 100%; max-width: 500px; height: 300px; border-radius: 20px; object-fit: cover; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\">\n    </div>\n</div>\n', 'images/posts/F6aW6rzqBDsryz51SbcD5BfMTgGN9ITaH5GsJdLZ.jpg', 1, 5, 1, 3, '2024-08-09 14:36:22', '2024-11-22 12:48:54'),
(24, 'Assistance With Daily Personal Activities', 'assistance-with-daily-personal-activities', '<!-- First Section: What is Assist with Life Stage Transition -->\n<div style=\"display: flex; align-items: center; gap: 20px; margin-bottom: 40px;\">\n    <!-- Text Column -->\n    <div style=\"flex: 1; width: 50%; text-align: justify;\">\n        <h3 style=\"margin-bottom: 15px;\">What is Assist with Life Stage Transition</h3>\n        <p>Assistance with life stage transitions under the NDIS helps you manage and adapt to significant life changes, such as moving from school to work, transitioning to independent living, or adjusting to new circumstances. This support includes help with decision-making, planning, and building your capacity to manage new responsibilities and challenges. The goal is to ensure you have the necessary tools and guidance to smoothly navigate these transitions.</p>\n        <p>If you’re an NDIS participant, you can access support for community participation through the Core Budget of your NDIS Plan.</p>\n    </div>\n    \n    <!-- Circular Image Column -->\n    <div style=\"width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/8.jpg\" \n             alt=\"Life Stage Transition\" \n             style=\"width: 350px; height: 350px; border-radius: 50%; object-fit: cover; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\">\n    </div>\n</div>\n\n<!-- Second Section: How We Support Participants -->\n<div style=\"display: flex; align-items: center; gap: 20px; margin-bottom: 40px;\">\n    <!-- Circular Image Column -->\n    <div style=\"width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/118.jpeg\" \n             alt=\"Life Stage Transition Support\" \n             style=\"width: 350px; height: 350px; border-radius: 50%; object-fit: cover; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\">\n    </div>\n\n    <!-- Text Column -->\n    <div style=\"flex: 1; width: 50%; text-align: justify;\">\n        <h3 style=\"margin-bottom: 15px;\">How We Support Participants</h3>\n        <ul style=\"list-style-position: inside; padding-left: 0; margin-top: 0;\">\n            <li><strong>Building Connections:</strong> We actively work to enhance participants\' connections with broader support systems, helping them engage with community resources and networks.</li>\n            <li><strong>Understanding Sponsored Supports:</strong> We offer clear, ongoing explanations about the purpose and benefits of support services, ensuring participants understand how these services meet their individual needs and goals.</li>\n            <li><strong>Community Involvement:</strong> We promote greater awareness and understanding, enabling participants to make more meaningful contributions to their communities.</li>\n            <li><strong>Advanced Care Support:</strong> We assist participants in fully understanding their care plan, offering continuous support and addressing any questions or concerns that arise.</li>\n            <li><strong>Ongoing Assistance:</strong> Our team provides continuous help to ensure participants can navigate their care plans effectively and fully benefit from the support services offered.</li>\n        </ul>\n    </div>\n</div>\n', 'images/posts/jxPasX0AzPSN0JKNfVKdsHMvRrBmHieombfJf1Oh.jpg', 1, 3, 2, 3, '2024-08-09 14:36:22', '2024-11-22 12:50:33'),
(29, 'Assistance with Travel and Transport', 'assistance-with-travel-and-transport', '<!-- First Section: Travel and Transportation Support -->\n<div style=\"display: flex; align-items: center; gap: 20px; margin-bottom: 40px;\">\n    <!-- Text Column -->\n    <div style=\"flex: 1; text-align: justify;\">\n        <h3 style=\"margin-bottom: 15px;\">Travel and Transportation Support</h3>\n        <p>Our travel and transportation assistance helps individuals reach destinations that may otherwise be inaccessible. We offer support to enhance your ability to travel independently, by ensuring you can access:</p>\n        <ul style=\"list-style-position: inside; padding-left: 0; margin-top: 10px;\">\n            <li><strong>Community Activities:</strong> Engage with local events and social opportunities</li>\n            <li><strong>Work:</strong> Safely and comfortably travel to and from your workplace</li>\n            <li><strong>Education:</strong> Attend classes or educational programs with ease</li>\n            <li><strong>Appointments:</strong> Reach medical or other important appointments on time</li>\n        </ul>\n    </div>\n\n    <!-- Circular Image Column -->\n    <div style=\"flex: 1; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/9.jpg\" \n             alt=\"Travel Support Image\" \n             style=\"width: 350px; height: 350px; border-radius: 50%; object-fit: cover; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\">\n    </div>\n</div>\n\n<!-- Second Section: Additional Text -->\n<div style=\"display: flex; align-items: center; gap: 20px; margin-bottom: 40px;\">\n    <!-- Circular Image Column -->\n    <div style=\"flex: 1; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/119.jpg\" \n             alt=\"Reliable Transportation Image\" \n             style=\"width: 350px; height: 350px; border-radius: 50%; object-fit: cover; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\">\n    </div>\n\n    <!-- Text Column -->\n    <div style=\"flex: 1; text-align: justify;\">\n        <p>Our services are designed to provide reliable transportation and support, helping you stay connected and achieve your personal goals. We are dedicated to ensuring your journey is safe, comfortable, and efficient, allowing you to focus on your activities and aspirations.</p>\n    </div>\n</div>\n', 'images/posts/knydODd56ITnhSkldNggfZGLqY3BNSH24PnsYzgb.jpg', 1, 2, 3, 3, '2024-08-09 14:36:22', '2024-11-20 08:55:38'),
(47, 'Community Nursing Care', 'community-nursing-care', '<!-- First section: Half text, half circular image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p><strong>Clinical Nursing Support</strong></p>\n        <p>Our Clinical Nursing Support, available through the NDIS Community Nursing Care program, offers specialized assistance for individuals requiring advanced medical care. Our dedicated community nurses work closely with participants and their families to prevent illness, maintain health, and manage existing conditions. Our aim is to deliver top-quality nursing care, ensuring you or your loved ones can enjoy a fulfilling and comfortable life.</p>\n    </div>\n\n    <!-- Circular image takes 50% of the width -->\n    <div style=\"flex: 1; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/10.jpg\" \n             alt=\"Clinical Nursing Image\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\n    </div>\n</div>\n\n<!-- Second section: Half text, half list -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p><strong>Our licensed nurses provide a broad range of services, including:</strong></p>\n        <ul style=\"list-style-position: inside; padding-left: 0;\">\n            <li><strong>Medication Support, Monitoring, and Administration:</strong> Ensuring correct medication usage and tracking its effects.</li>\n            <li><strong>Catheter Changes:</strong> Skilled management and replacement of catheters.</li>\n            <li><strong>Wound Care:</strong> Treatment and management of wounds to promote healing.</li>\n            <li><strong>Regular Monitoring of Fitness and Vital Signs:</strong> Keeping track of physical health and vital indicators.</li>\n        </ul>\n        <p>We are committed to offering compassionate, professional care tailored to your specific needs.</p>\n    </div>\n</div>\n', 'images/posts/i01yWDL67Jl4Z804D67YfDEUs9Tg0v2S1ZKqafLJ.jpg', 1, 1, 4, 3, '2024-08-09 14:36:22', '2024-09-30 18:18:58'),
(48, 'Assistance with daily tasks in a group or shared living', 'assistance-with-daily-tasks-in-a-group-or-shared-living-td', '<!-- First Section: Supported Independent Living -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p><strong>Supported Independent Living (SIL)</strong></p>\n        <p>At PDS, we believe that Supported Independent Living (SIL) should be an enriching experience that not only helps you maintain your current independence but helps you thrive in a comfortable and supportive environment. Your NDIS SIL accommodation should be a place where you feel safe, comfortable, and confident - a place you are proud to call home.</p>\n        <p>Our services are designed to empower participants to live as independently as possible in a shared living environment. We help and supervise participants to find short-term housing solutions tailored to individual needs. Our support includes:</p>\n        <ul style=\"list-style-type: circle; padding-left: 20px;\">\n            <li><strong>Personal Assistance with Daily Living Tasks:</strong> Help with everyday activities to foster independence.</li>\n            <li><strong>Development of Person-Centered Housing Solutions:</strong> Assisting in finding and creating the most effective living arrangements.</li>\n            <li><strong>Support with Skill-Building Duties:</strong> Aid with tasks like meal preparation, cooking, and cleaning to enhance daily living skills.</li>\n            <li><strong>Personalized Care from a Dedicated Carer:</strong> One-on-one support to address individual needs and preferences.</li>\n        </ul>\n    </div>\n\n    <!-- Circular image takes 50% of the width -->\n    <div style=\"flex: 1; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/11.jpg\" \n             alt=\"Supported Independent Living Image\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\">\n    </div>\n</div>\n', 'images/posts/ywAgGZ7uHwxbY0H2a0w4GCW4e5cTlkcaN4TWxDY3.jpg', 1, 2, 5, 3, '2024-08-09 14:36:22', '2024-10-01 08:10:05'),
(51, 'Assistance with Household tasks', 'assistance-with-household-tasks', '<!-- First  section: Half text, half circular image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p><strong>What We Offer at PDS</strong></p>\n        <p>PDS provides flexible and personalized support for all your household needs, whether you require a little help or extensive assistance around the house. Our services are designed to maintain your independence and comfort, tailored to your specific requirements.</p>\n    </div>\n\n    <!-- Circular image takes 50% of the width, fixed larger size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/14.jpg\" \n             alt=\"General Cleaning\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover;\">\n    </div>\n</div>\n\n<!-- Second section: Half circular image, half text -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Circular image takes 50% of the width, fixed larger size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/15.jpg\" \n             alt=\"Washing and Ironing\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover;\">\n    </div>\n\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; text-align: justify;\">\n        <p>We offer a range of household support, including:</p>\n        <ul style=\"list-style-position: inside; padding-left: 0;\">\n            <li><strong>General Cleaning:</strong> Dusting, vacuuming, mopping, and overall tidying.</li>\n            <li><strong>Washing and Ironing:</strong> Managing laundry and ironing tasks.</li>\n            <li><strong>Shopping and Meal Preparation:</strong> Assisting with grocery shopping and preparing meals.</li>\n        </ul>\n    </div>\n</div>\n\n<!-- Third section: Half text, half circular image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p>Our dedicated staff consults with you and your family to prioritize needs, identify specific requirements, and deliver services in a way that best suits your preferences. Our aim is to ensure a smooth and comfortable home environment, allowing you to focus on what matters most to you.</p>\n    </div>\n\n    <!-- Circular image takes 50% of the width, fixed larger size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/16.jpg\" \n             alt=\"Help with Pets and Gardening\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover;\">\n    </div>\n</div>\n', 'images/posts/E4eCulqL0cADh2m4FqiNWQVaud3vPYhqp7HX4WYd.jpg', 1, 1, 6, 3, '2024-08-18 10:44:01', '2024-09-30 18:19:37'),
(52, 'Participation in the community', 'participation-in-the-community', '<!-- First  section: Equal width and height for text and image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: stretch; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width and same height as image -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify; height: 300px;\">\n        <p><strong>What is Community Participation</strong></p>\n        <p>At PDS, we ensure that our clients engage in enjoyable and meaningful activities that enhance their daily lives. We focus on skill development by offering diverse experiences that help individuals build and strengthen their talents and abilities.</p>\n        <p>PDS also promotes active community involvement, supporting clients in becoming active participants in both familiar and new community settings. Additionally, we provide opportunities for cultural exposure, allowing clients to engage with and learn about different communities and cultures, broadening their horizons and enriching their lives.</p>\n    </div>\n\n    <!-- Image takes 50% of the width and retains full image -->\n    <img src=\"/storage/images/posts/17.jpg\" \n         alt=\"Community Participation\" \n         style=\"flex: 1; width: 300px; height: 300px; border-radius: 15px; object-fit: contain;\">\n</div>\n\n<!-- Second section: Equal width and height for text and image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: stretch; margin-bottom: 20px;\">\n    <!-- Image takes 50% of the width and retains full image -->\n    <img src=\"/storage/images/posts/18.jpg\" \n         alt=\"Skill Development\" \n         style=\"flex: 1; width: 300px; height: 300px; border-radius: 15px; object-fit: contain; margin-right: 20px;\">\n\n    <!-- Text takes 50% of the width and same height as image -->\n    <div style=\"flex: 1; width: 50%; text-align: justify; height: 300px;\">\n        <p><strong>How We Support Participation:</strong></p>\n        <ul style=\"list-style-position: inside; padding-left: 0;\">\n            <li><strong>Activity Planning:</strong> Assist participants in organizing and planning leisure activities tailored to their interests.</li>\n            <li><strong>Skill Development:</strong> Provide training and support to help clients develop the skills necessary for successful community engagement.</li>\n            <li><strong>Community Integration:</strong> Support clients in joining and participating in community groups, events, and activities.</li>\n            <li><strong>Cultural Exposure:</strong> Offer opportunities for clients to experience and learn about different cultures and communities.</li>\n            <li><strong>Transport Services:</strong> Provide transportation to preferred communities to facilitate active involvement.</li>\n        </ul>\n        <p>Our goal is to foster meaningful connections and enhance the quality of life for our clients through active and engaged participation in their communities.</p>\n    </div>\n</div>\n', 'images/posts/abgtbX7LNq9ob12amDqYimmqfnmRQAzWe7XPMoAa.jpg', 1, 1, 7, 3, '2024-08-18 10:45:07', '2024-09-30 18:18:48'),
(53, 'Group & Center - Based Activity', 'group-center-based-activity', '<!-- First  section: Half text, half circular image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p><strong>What We Offer at PDS</strong></p>\n             <p>  Our aim is to help participants build genuine friendships and peer networks while acquiring new skills through group activities. We organize and offer opportunities for clients to engage in specific interest groups that foster skill development.        </p>\n    </div>\n\n    <!-- Circular image takes 50% of the width, fixed larger size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/19.jpg\" \n             alt=\"General Cleaning\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover;\">\n    </div>\n</div>\n\n<!-- Second section: Half circular image, half text -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Circular image takes 50% of the width, fixed larger size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/20.jpg\" \n             alt=\"Washing and Ironing\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover;\">\n    </div>\n\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; text-align: justify;\">\n        <p>\n\nKey areas of focus include life skills tailored to the client\'s interests such as:\n</p>\n        \n        <ul style=\"list-style-position: inside; padding-left: 0;\">\n            <li><strong>shopping and cooking</strong> </li>\n            <li><strong>health and wellness programs</strong> </li>\n            <li><strong>educational opportunities</strong> </li>\n        </ul>\n    </div>\n</div>\n\n<!-- Third section: Half text, half circular image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p>Based on client preferences, we organize camps, art and theatre classes, sporting events, and trips to movies and galleries, ensuring a meaningful and enjoyable experience.</p>\n    </div>\n\n    <!-- Circular image takes 50% of the width, fixed larger size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/21.jpg\" \n             alt=\"Help with Pets and Gardening\" \n             style=\"width: 300px; height: 300px; border-radius: 50%; object-fit: cover;\">\n    </div>\n</div>', 'images/posts/mpfQjEo9asv2eZsnjbjQVK1teJPiPndLo8x6mTk5.jpg', 1, 2, 8, 3, '2024-08-18 10:46:25', '2024-10-03 05:32:42'),
(54, 'Development of Daily Living and Life Skills', 'development-of-daily-living-and-life-skills', '<!-- First section: Half text, half rounded rectangle image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p>\n            <strong>Enhancing Independence Through Skill Development</strong><br><br>\n            Our goal is to empower clients by strengthening their autonomy through tailored training and development activities for both participants and their carers. By offering support in areas such as travel and daily living activities, we aim to foster independence and self-sufficiency.\n        </p>\n    </div>\n\n    <!-- Larger rounded rectangle image takes 50% of the width, with 400px x 400px size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/12.jpg\" \n             alt=\"Skill Development\" \n             style=\"width: 400px; height: 400px; border-radius: 20px; object-fit: cover;\">\n    </div>\n</div>\n\n<!-- Second section: Half text, half larger circular image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Larger circular image takes 50% of the width, with 400px x 400px size -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/13.jpg\" \n             alt=\"Skill Development Circular\" \n             style=\"width: 400px; height: 400px; border-radius: 50%; object-fit: cover;\">\n    </div>\n\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; text-align: justify;\">\n        <p>\n            We focus on developing essential daily living skills while considering each individual\'s strengths and preferences. Our collaborative approach ensures participants gain the necessary skills to live as independently as possible. We offer support in developing competencies such as:\n        </p>\n        <ul style=\"list-style-type: circle; padding-left: 20px;\">\n            <li>Personal Care: Skills in showering, dressing, and grooming.</li>\n            <li>Daily Life Skills: Techniques for meal preparation, cleaning, laundry, and more.</li>\n            <li>Public Transport: Navigating and using public transportation effectively.</li>\n            <li>Shopping: Managing grocery and personal shopping tasks.</li>\n            <li>Budgeting and Household Management: Handling finances and managing household responsibilities.</li>\n            <li>Literacy and Numeracy: Enhancing reading, writing, and basic math skills.</li>\n        </ul>\n    </div>\n</div>\n', 'images/posts/RskK8rnWs3g5nbsWp5IatrTVt1srMGtsEiVkMwNu.jpg', 1, 2, 9, 3, '2024-08-18 10:47:47', '2024-11-21 10:38:00'),
(55, 'Assist Life Stage Transition', 'assist-life-stage-transition', '<!-- First section: Half text, half circular image -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-right: 20px; text-align: justify;\">\n        <p><b>What is Assist with Life Stage Transition</b><br>Assistance with life stage transitions under the NDIS helps you manage and adapt to significant life changes, such as moving from school to work, transitioning to independent living, or adjusting to new circumstances. This support includes help with decision-making, planning, and building your capacity to manage new responsibilities and challenges. The goal is to ensure you have the necessary tools and guidance to smoothly navigate these transitions.</p>\n        <p>If you’re an NDIS participant, you can access support for community participation through the Core Budget of your NDIS Plan.</p>\n    </div>\n\n    <!-- Circular image takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/5.jpg\" \n             alt=\"Life Stage Transition Image\" \n             style=\"width: 400px; height: 400px; border-radius: 50%; object-fit: cover;\">\n    </div>\n</div>\n\n<p><strong>How We Support Participants:</strong></p>\n\n<!-- Second section: Half circular image, half text -->\n<div style=\"display: flex; flex-wrap: wrap; justify-content: space-between; align-items: center; margin-bottom: 20px;\">\n    <!-- Circular image takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; display: flex; justify-content: center;\">\n        <img src=\"/storage/images/posts/6.png\" \n             alt=\"Life Stage Transition Image 2\" \n             style=\"width: 400px; height: 400px; border-radius: 50%; object-fit: cover;\">\n    </div>\n\n    <!-- Text takes 50% of the width -->\n    <div style=\"flex: 1; width: 50%; padding-left: 20px; text-align: justify;\">\n        <ul style=\"list-style-position: inside; padding-left: 0;\">\n            <li><strong>Building Connections:</strong> We actively work to enhance participants\' connections with broader support systems, helping them engage with community resources and networks.</li>\n            <li><strong>Understanding Sponsored Supports:</strong> We offer clear, ongoing explanations about the purpose and benefits of support services, ensuring participants understand how these services meet their individual needs and goals.</li>\n            <li><strong>Community Involvement:</strong> We promote greater awareness and understanding, enabling participants to make more meaningful contributions to their communities.</li>\n            <li><strong>Advanced Care Support:</strong> We assist participants in fully understanding their care plan, offering continuous support and addressing any questions or concerns that arise.</li>\n            <li><strong>Ongoing Assistance:</strong> Our team provides continuous help to ensure participants can navigate their care plans effectively and fully benefit from the support services offered.</li>\n        </ul>\n    </div>\n</div>\n', 'images/posts/ZtgV5ot53viv5dxiVXsMzRNxkwDu5dYozoIUDrHI.jpg', 1, 7, 10, 3, '2024-08-18 10:48:38', '2024-11-22 12:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 18, 1, NULL, NULL),
(2, 18, 2, NULL, NULL),
(3, 18, 3, NULL, NULL),
(4, 24, 1, NULL, NULL),
(5, 24, 2, NULL, NULL),
(6, 24, 3, NULL, NULL),
(7, 29, 1, NULL, NULL),
(8, 29, 2, NULL, NULL),
(9, 29, 3, NULL, NULL),
(10, 47, 1, NULL, NULL),
(11, 47, 2, NULL, NULL),
(12, 47, 3, NULL, NULL),
(13, 48, 1, NULL, NULL),
(14, 48, 2, NULL, NULL),
(15, 48, 3, NULL, NULL),
(16, 51, 1, NULL, NULL),
(17, 51, 2, NULL, NULL),
(18, 51, 3, NULL, NULL),
(19, 52, 1, NULL, NULL),
(20, 52, 2, NULL, NULL),
(21, 52, 3, NULL, NULL),
(22, 53, 1, NULL, NULL),
(23, 53, 2, NULL, NULL),
(24, 53, 3, NULL, NULL),
(25, 54, 1, NULL, NULL),
(26, 54, 2, NULL, NULL),
(27, 54, 3, NULL, NULL),
(28, 55, 1, NULL, NULL),
(29, 55, 2, NULL, NULL),
(30, 55, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2024-08-09 14:36:17', '2024-08-09 14:36:17'),
(2, 'Writer', '2024-08-09 14:36:17', '2024-08-09 14:36:17'),
(3, 'User', '2024-08-09 14:36:17', '2024-08-09 14:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `about` text COLLATE utf8mb4_unicode_ci,
  `copy_rights` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_insta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_email`, `description`, `about`, `copy_rights`, `url_fb`, `url_insta`, `url_twitter`, `url_linkedin`, `created_at`, `updated_at`) VALUES
(1, 'PDS', 'admin@yopmail.com', 'Pioneer Disability Services', 'It is so easy for you. It is just a few steps away. Contact us by any of the following methods.  ﻿Filling the form, Email or phone call. We will get back to you ASAP.', 'All Rights Reserved', 'https://facebook.com', 'https://www.instagram.com/', 'https://www.twitter.com', 'https://linkedin.com', '2024-08-09 14:36:21', '2024-08-14 05:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Call : 75 675 683 575', '2024-08-09 14:36:22', '2024-08-14 05:08:17'),
(2, 'Email:', '2024-08-09 14:36:22', '2024-08-18 10:31:33'),
(3, 'Address: 17 Grace Perry Street, Wright, ACT 2611', '2024-08-09 14:36:22', '2024-08-18 10:34:04'),
(4, 'deserunt', '2024-08-09 14:36:22', '2024-08-09 14:36:22'),
(5, 'tempore', '2024-08-09 14:36:22', '2024-08-09 14:36:22'),
(6, 'numquam', '2024-08-09 14:36:22', '2024-08-09 14:36:22'),
(7, 'aliquam', '2024-08-09 14:36:22', '2024-08-09 14:36:22'),
(8, 'aut', '2024-08-09 14:36:22', '2024-08-09 14:36:22'),
(9, 'officia', '2024-08-09 14:36:22', '2024-08-09 14:36:22'),
(10, 'nihil', '2024-08-09 14:36:22', '2024-08-09 14:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL DEFAULT '3',
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_insta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_letter` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `bio`, `avatar`, `url_fb`, `url_insta`, `url_twitter`, `url_linkedin`, `news_letter`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Pioneer Disability Services', 'admin@yopmail.com', '2024-08-09 14:36:21', '$2y$10$9ZevfTPfkCx5VD8mZBIOYO702/GmzQicZt2ETOcG2lPtMRMomg/dO', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ul4vOZGcHuj7VGCpnrqYFyen9fKXE4AgaX6x5WR1ZRF0S6vQlWb4YfvBvaag', '2024-08-09 14:36:21', '2024-08-09 14:36:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
