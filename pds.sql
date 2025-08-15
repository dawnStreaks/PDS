-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2024 at 04:43 PM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.18

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

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `slug`, `navbar`, `footer`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Contact Us', '<p>At Pioneer Disability Services, we value communication and are always here to assist you. Whether you have questions about our services, need support, or want to learn more about how we can help, feel free to reach out to us.</p><p><br></p><h3><strong>Get in Touch</strong></h3><p><strong>Phone:</strong><br>Speak directly with one of our friendly team members.<br><strong>[Your Phone Number]</strong></p><p><strong>Email:</strong><br>Send us an email, and we’ll get back to you as soon as possible.<br><strong>[Your Email Address]</strong></p><p><strong>Address:</strong><br>Visit us in person at our accessible location.<br><strong>[Your Physical Address]</strong></p><p><strong>Office Hours:</strong><br>We are available during the following hours:</p><ul><li>Monday to Friday: 9:00 AM - 5:00 PM</li><li>Saturday: 10:00 AM - 2:00 PM</li><li>Sunday: Closed</li></ul><h3><strong>Find Us on Social Media</strong></h3><p>Stay connected with us through our social media channels for the latest updates, events, and community stories.</p><ul><li><strong>Facebook:</strong> [Your Facebook Link]</li><li><strong>Twitter:</strong> [Your Twitter Link]</li><li><strong>Instagram:</strong> [Your Instagram Link]</li><li><strong>LinkedIn:</strong> [Your LinkedIn Link]</li></ul><hr><h3><strong>Accessibility Support</strong></h3><p>We are committed to ensuring our services are accessible to everyone. If you need assistance accessing our website or services, please don’t hesitate to contact us.</p><p><strong>Accessibility Support:</strong></p><ul><li>Phone: [Your Accessibility Support Phone Number]</li><li>Email: [Your Accessibility Support Email Address]</li></ul><hr><p></p><p><br></p><p></p>', 'contact-us', 1, 0, 3, '2024-08-09 14:36:22', '2024-08-12 10:20:27'),
(5, 'About Us', '<h3><strong>Who We Are</strong></h3><p>We are a dedicated team of professionals and caregivers who believe in the potential of every individual, regardless of their abilities. Our services are designed to meet the diverse needs of those we serve, offering personalized support to help them thrive in their communities.</p><hr>', 'about-us', 1, 0, 3, '2024-08-09 14:36:22', '2024-08-12 10:16:23'),
(9, 'Home', '<h3><strong>Welcome to Pioneer Disability Services<br></strong></h3><p><strong>Empowering Lives, Enhancing Abilities</strong></p><p>At Pioneer Disability Services, we are committed to providing comprehensive services and support for individuals with disabilities. Our mission is to empower everyone to live life to the fullest, with dignity, independence, and the opportunity to achieve their goals.</p>', 'Home', 1, 0, 3, '2024-08-09 14:36:22', '2024-08-12 10:14:43');

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
(18, 'Assistance With Daily Personal Activities (High Intensity)', 'assistance-with-daily-personal-activities-high-intensity', '<p><b>What is High Intensity ADL’s?</b><br></p><p>High Intensity Assistance with Daily Living (ADL) refers to support services for participants with complex or intensive care needs. These supports require specialized skills or training from support workers to ensure the participant\'s safety and well-being. Examples include assistance with complex personal care tasks such as wound care, tube feeding, or managing challenging behaviors. The High Intensity ADL services provided include </p><ul><li>1-Diabetes Management </li><li>2-Epilepsy and High-Risk Seizures </li><li>3-Complex Wound and Pressure Injury Care </li><li>4-Medication Management </li><li>5-Complex Bowel Management </li><li>6-Enteral Feeding </li><li>7-PEG Feeding Management</li></ul><p> 8-Subcutaneous Injections</p><p>9-Stoma Care<br>10-Urinary Catheter Care<br>11-Swallowing and Eating Difficulties</p><p><br></p><p><b>How can I access High Intensity ADL’s through my NDIS plan</b><br></p><p>You can access High Intensity Assistance with Daily Living (ADLs) through the Core Support Budget of your NDIS Plan. These supports are for participants with complex needs that require specialized care. To ensure your plan includes the necessary funding, work with your Support Coordinator or Local Area Coordinator (LAC) to allocate resources properly for your high-intensity needs. We are committed to providing exceptional care, focusing on compassion and expertise, to improve the quality of life for those with complex health care needs.</p>', 'images/posts/F6aW6rzqBDsryz51SbcD5BfMTgGN9ITaH5GsJdLZ.jpg', 1, 1, 1, 3, '2024-08-09 14:36:22', '2024-08-30 18:51:59'),
(24, 'Assistance With Daily Personal Activities', 'assistance-with-daily-personal-activities', '<p><strong>What is Assistance with Daily Personal Activities?<br></strong></p><p><strong>Assistance with Daily Personal Activities</strong> refers to the essential tasks and routines that individuals with disabilities may need support with to maintain their independence and well-being within their own homes. This can include help with personal activities such as bathing, grooming, mobility, and household chores like cleaning and laundry. Support workers provide this assistance, ensuring participants can carry out their daily routines with ease and comfort.</p><p><br></p><p><strong>PDS Support Workers Can Help You With:</strong></p><p>PDS support workers provide personalized assistance for daily activities based on your unique needs. Our services include:</p><ul><li><strong>Showering or Bathing:</strong> Assistance with personal hygiene routines.</li><li><strong>Toileting:</strong> Support for bathroom needs.</li><li><strong>Meal Preparation:</strong> Preparing nutritious meals based on dietary requirements.</li><li><strong>Dressing:</strong> Help with choosing and putting on clothing.</li><li><strong>Grooming:</strong> Aid with personal grooming tasks.</li><li><strong>Shopping or Outings:</strong> Assistance with shopping trips and recreational activities.</li><li><strong>Mobility and Hoist Transfers:</strong> Support with moving around and using hoists safely.</li><li><strong>Feeding Assistance:</strong> Helping with meals as needed.</li><li><strong>Attending Medical Appointments:</strong> Accompaniment and support for healthcare visits.</li><li><strong>In-Home Support:</strong> Lawn and garden maintenance to keep your environment safe.</li></ul><p></p>', 'images/posts/jxPasX0AzPSN0JKNfVKdsHMvRrBmHieombfJf1Oh.jpg', 1, 0, 2, 3, '2024-08-09 14:36:22', '2024-08-30 18:18:07'),
(29, 'Assistance with Travel and Transport', 'assistance-with-travel-and-transport', '<div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"5e50a427-59b8-46ac-95dd-848654bbbe94\" dir=\"auto\" class=\"min-h-[20px] text-message flex w-full flex-col items-end gap-2 break-words [.text-message+&amp;]:mt-5 overflow-x-auto whitespace-normal\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><p><strong>Travel and Transportation Support</strong></p><p>Our travel and transportation assistance&nbsp;helps individuals reach destinations that may otherwise be inaccessible. We offer support to enhance your ability to travel independently, by ensuring you can access:</p><ul><li><strong>Community Activities</strong>: Engage with local events and social opportunities</li><li><strong>Work</strong>: Safely and comfortably travel to and from your workplace</li><li><strong>Education</strong>: Attend classes or educational programs with ease</li><li><strong>Appointments</strong>: Reach medical or other important appointments on time</li></ul><p>Our services are designed to provide reliable transportation and support, helping you stay connected and achieve your personal goals.</p></div></div></div></div><div class=\"mt-1 flex gap-3 empty:hidden -ml-2\"><div class=\"items-center justify-start rounded-xl p-1 flex\"><div class=\"flex items-center\"><span class=\"\" data-state=\"closed\"><br></span></div></div></div>', 'images/posts/knydODd56ITnhSkldNggfZGLqY3BNSH24PnsYzgb.jpg', 1, 0, 3, 3, '2024-08-09 14:36:22', '2024-08-31 06:03:23'),
(47, 'Community Nursing Care', 'community-nursing-care', '<div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"3afc3dcc-cee1-4dae-850e-afa0067d16b8\" dir=\"auto\" class=\"min-h-[20px] text-message flex w-full flex-col items-end gap-2 break-words [.text-message+&amp;]:mt-5 overflow-x-auto whitespace-normal\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><p><strong>Clinical Nursing Support</strong></p><p>Our Clinical Nursing Support, available through the NDIS Community Nursing Care program, offers specialized assistance for individuals requiring advanced medical care. Our dedicated community nurses work closely with participants and their families to prevent illness, maintain health, and manage existing conditions. Our aim is to deliver top-quality nursing care, ensuring you or your loved ones can enjoy a fulfilling and comfortable life.</p><p><strong>Our licensed nurses provide a broad range of services, including:</strong></p><ul><li><strong>Medication Support, Monitoring, and Administration:</strong> Ensuring correct medication usage and tracking its effects.</li><li><strong>Catheter Changes:</strong> Skilled management and replacement of catheters.</li><li><strong>Wound Care:</strong> Treatment and management of wounds to promote healing.</li><li><strong>Regular Monitoring of Fitness and Vital Signs:</strong> Keeping track of physical health and vital indicators.</li></ul><p>We are committed to offering compassionate, professional care tailored to your specific needs.</p></div></div></div></div><div class=\"mt-1 flex gap-3 empty:hidden -ml-2\"><div class=\"items-center justify-start rounded-xl p-1 flex\"><div class=\"flex items-center\"><span class=\"\" data-state=\"closed\"><br></span></div></div></div>', 'images/posts/i01yWDL67Jl4Z804D67YfDEUs9Tg0v2S1ZKqafLJ.jpg', 1, 0, 4, 3, '2024-08-09 14:36:22', '2024-08-30 18:28:04'),
(48, 'Assistance with daily tasks in a group or shared living', 'assistance-with-daily-tasks-in-a-group-or-shared-living-td', 'Assistance with daily tasks in a group or shared living', 'images/posts/ywAgGZ7uHwxbY0H2a0w4GCW4e5cTlkcaN4TWxDY3.jpg', 1, 0, 5, 3, '2024-08-09 14:36:22', '2024-08-22 09:38:32'),
(51, 'Assistance with Household tasks', 'assistance-with-household-tasks', '<div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"72d8f230-8702-48f4-86ce-48152d7ec1e8\" dir=\"auto\" class=\"min-h-[20px] text-message flex w-full flex-col items-end gap-2 break-words [.text-message+&amp;]:mt-5 overflow-x-auto whitespace-normal\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><p><strong>What We Offer at PDS</strong></p><p>PDS provides flexible and personalized support for all your household needs, whether you require a little help or extensive assistance around the house. Our services are designed to maintain your independence and comfort, tailored to your specific requirements.</p><p>We offer a range of household support, including:</p><ul><li><strong>General Cleaning:</strong> Dusting, vacuuming, mopping, and overall tidying.</li><li><strong>Washing and Ironing:</strong> Managing laundry and ironing tasks.</li><li><strong>Shopping and Meal Preparation:</strong> Assisting with grocery shopping and preparing meals.</li><li><strong>Help with Pets:</strong> Supporting pet care needs.</li><li><strong>Watering Plants and Gardening:</strong> Maintaining indoor and outdoor plants.</li></ul><p>Our dedicated staff consults with you and your family to prioritize needs, identify specific requirements, and deliver services in a way that best suits your preferences. Our aim is to ensure a smooth and comfortable home environment, allowing you to focus on what matters most to you.</p></div></div></div></div><div class=\"mt-1 flex gap-3 empty:hidden -ml-2\"><div class=\"items-center justify-start rounded-xl p-1 flex\"><div class=\"flex items-center\"><span class=\"\" data-state=\"closed\"><br></span></div></div></div><p></p>', 'images/posts/E4eCulqL0cADh2m4FqiNWQVaud3vPYhqp7HX4WYd.jpg', 1, 0, 6, 3, '2024-08-18 10:44:01', '2024-08-30 18:40:11'),
(52, 'Participation in the community', 'participation-in-the-community', '<div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"ae6750c0-8dfd-4544-978a-47fa95a8d6f3\" dir=\"auto\" class=\"min-h-[20px] text-message flex w-full flex-col items-end gap-2 break-words [.text-message+&amp;]:mt-5 overflow-x-auto whitespace-normal\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><p><strong>What is Community Participation</strong></p><p>At PDS, we ensure that our clients engage in enjoyable and meaningful activities that enhance their daily lives. We focus on skill development by offering diverse experiences that help individuals build and strengthen their talents and abilities.</p><p>PDS also promotes active community involvement, supporting clients in becoming active participants in both familiar and new community settings. Additionally, we provide opportunities for cultural exposure, allowing clients to engage with and learn about different communities and cultures, broadening their horizons and enriching their lives.</p><p>We aim to provide training and developmental opportunities that empower our clients with the skills needed to actively engage in social, recreational, and community activities.</p><p><strong>How We Support Participation:</strong></p><ul><li><strong>Activity Planning:</strong> Assist participants in organizing and planning leisure activities tailored to their interests.</li><li><strong>Skill Development:</strong> Provide training and support to help clients develop the skills necessary for successful community engagement.</li><li><strong>Community Integration:</strong> Support clients in joining and participating in community groups, events, and activities.</li><li><strong>Cultural Exposure:</strong> Offer opportunities for clients to experience and learn about different cultures and communities.</li><li><strong>Transport Services:</strong> Provide transportation to preferred communities to facilitate active involvement.</li></ul><p>Our goal is to foster meaningful connections and enhance the quality of life for our clients through active and engaged participation in their communities.</p></div></div></div></div><div class=\"mt-1 flex gap-3 empty:hidden -ml-2\"><div class=\"items-center justify-start rounded-xl p-1 flex\"><div class=\"flex items-center\"><span class=\"\" data-state=\"closed\"><br></span></div></div></div><p></p>', 'images/posts/abgtbX7LNq9ob12amDqYimmqfnmRQAzWe7XPMoAa.jpg', 1, 0, 7, 3, '2024-08-18 10:45:07', '2024-08-30 18:44:08'),
(53, 'Group & Center - Based Activity', 'group-center-based-activity', '<p><b>Group &amp; Center - Based Activity</b></p><div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"bd01a3ea-e9dc-4daa-bfe9-f1fe757a28ee\" dir=\"auto\" class=\"min-h-[20px] text-message flex w-full flex-col items-end gap-2 break-words [.text-message+&amp;]:mt-5 overflow-x-auto whitespace-normal\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><div class=\"flex max-w-full flex-col flex-grow\"><div data-message-author-role=\"assistant\" data-message-id=\"a4bf7952-5c71-4e71-9c2a-5a950943e9c7\" dir=\"auto\" class=\"min-h-[20px] text-message flex w-full flex-col items-end gap-2 break-words [.text-message+&amp;]:mt-5 overflow-x-auto whitespace-normal\"><div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\"><div class=\"markdown prose w-full break-words dark:prose-invert light\"><p>Our aim is to help participants build genuine friendships and peer networks while acquiring new skills through group activities. We organize and offer opportunities for clients to engage in specific interest groups that foster skill development.</p><p><strong>Key Areas of Focus:</strong></p><ul><li><strong>Life Skills:</strong> Activities that enhance practical skills such as shopping and cooking.</li><li><strong>Health and Wellness:</strong> Programs designed to promote overall well-being.</li><li><strong>Education:</strong> Learning opportunities tailored to client interests.</li></ul><p><strong>Activity Options:</strong></p><p>Based on client preferences, we arrange various activities, including:</p><ul><li><strong>Camps</strong></li><li><strong>Art and Theatre Classes</strong></li><li><strong>Sporting Events</strong></li><li><strong>Trips to Movies and Galleries</strong></li></ul><p>We tailor these activities to align with the client\'s personal interests, ensuring a meaningful and enjoyable experience.</p></div></div></div></div><div class=\"mt-1 flex gap-3 empty:hidden -ml-2\"><div class=\"items-center justify-start rounded-xl p-1 flex\"><div class=\"flex items-center\"><span class=\"\" data-state=\"closed\"><br></span></div></div></div><div class=\"items-center justify-start rounded-xl p-1 flex\"><div class=\"flex items-center\"><span class=\"\" data-state=\"closed\"></span></div></div></div></div></div></div><p></p>', 'images/posts/mpfQjEo9asv2eZsnjbjQVK1teJPiPndLo8x6mTk5.jpg', 1, 0, 8, 3, '2024-08-18 10:46:25', '2024-08-30 18:50:04'),
(54, 'Development of Daily Living and Life Skills', 'development-of-daily-living-and-life-skills', '<p>Development of Daily Living and Life Skills<br></p>', 'images/posts/RskK8rnWs3g5nbsWp5IatrTVt1srMGtsEiVkMwNu.jpg', 1, 0, 9, 3, '2024-08-18 10:47:47', '2024-08-22 09:36:43'),
(55, 'Assist Life Stage Transition', 'assist-life-stage-transition', '<p><b>What is Assist with Life Stage Transition</b><br>Assistance with life stage transitions under the NDIS helps you manage and adapt to significant life changes, such as moving from school to work, transitioning to independent living, or adjusting to new circumstances. This support includes help with decision-making, planning, and building your capacity to manage new responsibilities and challenges. The goal is to ensure you have the necessary tools and guidance to smoothly navigate these transitions.</p><p><br></p><p>If you’re an NDIS participant, you can access support for community participation through the Core Budget of your NDIS Plan.</p><p><strong><br></strong></p><p><strong>How We Support Participants:</strong></p><ul><li><strong>Building Connections:</strong> We actively work to enhance participants\' connections with broader support systems, helping them engage with community resources and networks.</li><li><strong>Understanding Sponsored Supports:</strong> We offer clear, ongoing explanations about the purpose and benefits of support services, ensuring participants understand how these services meet their individual needs and goals.</li><li><p><strong>Community Involvement:</strong> We promote greater awareness and understanding, enabling participants to make more meaningful contributions to their communities.</p><p><strong>Advanced Care Support:</strong></p></li><li><strong>Comprehending the Care Plan:</strong> We assist participants in fully understanding their care plan, offering continuous support and addressing any questions or concerns that arise.</li><li><strong>Ongoing Assistance:</strong> Our team provides continuous help to ensure participants can navigate their care plans effectively and fully benefit from the support services offered.</li></ul><p></p>', 'images/posts/ZtgV5ot53viv5dxiVXsMzRNxkwDu5dYozoIUDrHI.jpg', 1, 2, 10, 3, '2024-08-18 10:48:38', '2024-08-30 18:11:03');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
