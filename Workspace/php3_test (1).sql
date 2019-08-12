-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 05, 2019 at 01:27 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php3_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `cate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cate`) VALUES
(1, 'Phone'),
(2, 'Laptop'),
(8, 'Laptop12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_10_133614_create_product_table', 1),
(4, '2019_07_13_065428_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'images/default.jpg',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(17,3) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(20) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `detail`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Dean Jacobs', 'images/15bf5337edf3b5b46d8d904d1417d75f.jpg', 2761.000, 'Nemo praesentium neque optio aliquam consequatur esse laudantium. Veritatis aspernatur architecto praesentium.', 4476, 1, NULL, NULL),
(3, 'Ally Carter', 'images/3a9f36428b526c333934cbdae5747560.jpg', 8487.000, 'Id eius corrupti ipsa sed minus enim. Sequi dolore laudantium totam rerum omnis recusandae ratione veniam. Cumque distinctio consequatur molestiae qui non.', 1644, 0, NULL, NULL),
(4, 'Lavonne Klocko DVM', 'images/082703888f213fcf6a22e4e0cf541f84.jpg', 4651.000, 'Quo maiores beatae optio ipsa. Dolores voluptatum rerum facilis blanditiis reprehenderit est vero. Voluptas non quod itaque temporibus rerum eos et. Temporibus debitis rem nemo amet consectetur.', 1095, 1, NULL, NULL),
(5, 'Zachery Howell', 'images/811c51cafdd1fb950c065ef9c1e7d559.jpg', 8901.000, 'Pariatur animi aspernatur laudantium ipsum. Voluptas animi et beatae molestias eos molestias. Error aliquid nemo eum qui eos.', 3935, 1, NULL, NULL),
(6, 'Diamond Nolan', 'images/477bfad4c685ab5ee11c1a0b57af41de.jpg', 7639.000, 'Unde doloremque voluptate sunt qui. Error eaque eum et est voluptatem sint. Est rerum totam dolorem ullam dolores.', 1754, 0, NULL, NULL),
(7, 'Akeem Mertz', 'images/0e34293db9d28ccb2bffdecebd516d61.jpg', 4160.000, 'Debitis minus quidem ut cupiditate accusantium aut. Est fugit assumenda optio. Tempora quam earum molestiae et et.', 8462, 1, NULL, NULL),
(8, 'Geovany Gorczany I', 'images/0e42292edaac1603966f3e5e7ff23663.jpg', 2998.000, 'Doloribus aut harum sint molestiae repellendus. Et incidunt eius dolor dolores quasi praesentium et. Asperiores ab sint perferendis est.', 4789, 0, NULL, NULL),
(9, 'Jacklyn Koepp', 'images/b0a879a43a2de39bbd6499eb313b6f63.jpg', 4580.000, 'Voluptas eveniet libero et blanditiis natus rem qui. Ipsum omnis et ut numquam sint voluptate. Rem facere qui sunt.', 3031, 0, NULL, NULL),
(10, 'Mr. Ross Kuhn', 'images/37d6e72d8dbf2c7073f8ff767715f4af.jpg', 5821.000, 'Rerum quia quae magnam expedita odit. Excepturi in autem saepe autem sunt velit velit. Id autem rerum qui dicta dignissimos cum. Veniam ratione cupiditate in rerum.', 5502, 0, NULL, NULL),
(11, 'Nelle Brekke MD', 'images/b009a8a89c9d674bab2fcfc8ba1ad515.jpg', 1469.000, 'Sunt dolorem eum et repellendus aut. Est quisquam recusandae aperiam nemo. Id ut officiis ad praesentium. Consequatur est autem debitis voluptatem.', 4113, 1, NULL, NULL),
(12, 'Madyson Champlin MD', 'images/d63031468a15c0bd5ec0ca06dc8f98d0.jpg', 5377.000, 'Voluptas optio ea qui inventore possimus accusamus maiores. At eum molestias iste error cumque possimus dolorem ratione. Eum omnis ea ipsum totam omnis explicabo.', 1582, 1, NULL, NULL),
(13, 'Gilbert Dare', 'images/dd71f7660cd27a728886cc392afe551f.jpg', 2603.000, 'Nihil repellat in blanditiis harum hic illo. Quam dolorem corporis esse quia omnis. Ipsa quidem doloremque incidunt dolor.', 2022, 1, NULL, NULL),
(14, 'Zachery McGlynn', 'images/844acc7f673245bc6f474b2abbc1eeaa.jpg', 8915.000, 'Et eum vel nesciunt autem. Sit est id et esse quaerat. Et itaque tempore nihil autem neque a fugiat.', 6677, 0, NULL, NULL),
(15, 'Dr. Evalyn Parisian', 'images/aa79fb6c905e16ad58bd6b886cc20dd6.jpg', 4693.000, 'Ducimus dolor nisi debitis et necessitatibus officiis. Dolore et rerum facere voluptates voluptas. Est est provident alias.', 7826, 1, NULL, NULL),
(16, 'Ms. Anabelle Rutherford', 'images/b8669af42dd419c1d0916ceee0a048a5.jpg', 8391.000, 'Explicabo quae facere inventore quae nulla provident. Dolores accusantium at rerum. Omnis fugiat blanditiis modi odit aut sint. Velit qui saepe doloribus quas.', 8726, 0, NULL, NULL),
(17, 'Shakira Bartell', 'images/85e15f1879116fb280e001cde9c9c55d.jpg', 2400.000, 'Occaecati aliquid excepturi qui. Nisi unde non facilis in eligendi. Praesentium repudiandae aut est sint occaecati labore. Rerum et autem deserunt sed aspernatur. A iusto rerum a similique.', 2019, 1, NULL, NULL),
(18, 'Mr. Bradly D\'Amore', 'images/84425bde2c01db86ba8221e74032cb65.jpg', 1585.000, 'Ut possimus sit dolor temporibus fugit sint. Qui quasi ex sapiente nesciunt. Omnis sit ipsa dolorem repudiandae consectetur quas amet maiores. Voluptas veniam hic non omnis.', 1556, 0, NULL, NULL),
(19, 'Dan Breitenberg', 'images/95122c631fd5c1047e982236d51a2560.jpg', 4503.000, 'Harum facere ipsa ut possimus. Quae reprehenderit alias molestiae et. Aliquam odio rerum quo debitis maxime qui sapiente. Id nihil qui sit reprehenderit voluptatibus.', 2392, 1, NULL, NULL),
(20, 'Donald Mosciski', 'images/1d4187a1f98c28d15745298829aa185e.jpg', 7366.000, 'Ad impedit accusamus qui pariatur ut et. Facere eum quas vel eius. Omnis animi est fugiat voluptas eveniet repudiandae.', 2045, 0, NULL, NULL),
(21, 'Isac Romaguera', 'images/e77c8604e444ebfbda231d35e1a53c82.jpg', 4319.000, 'Asperiores quos non nisi quo non dolore. Mollitia et quod dolorem sed sed aut in. Ad error necessitatibus in soluta minus et.', 8485, 1, NULL, NULL),
(22, 'Morris Willms', 'images/a2ff6bd59e69f4109dbf0b490807342c.jpg', 5449.000, 'Enim iste excepturi quia vel voluptas. Sequi in ratione rerum expedita. Labore impedit vero aliquid doloribus. Placeat iste maxime minima eius vel unde.', 6839, 0, NULL, NULL),
(23, 'Alanis Anderson', 'images/6daeff56f57ed125e844f3b1772f7dc2.jpg', 3179.000, 'Dolores sint ratione suscipit dolorem amet. Deleniti omnis suscipit nulla voluptate exercitationem aliquam. Est natus excepturi in sequi repellendus qui aliquam.', 5434, 0, NULL, NULL),
(24, 'Kaylin Cruickshank III', 'images/340bb8c4c6a555ecdeeb2e0c74cc4f61.jpg', 1672.000, 'Labore sed voluptas est voluptatem. Et atque sunt nihil officia saepe illum. Aliquid facere quibusdam atque est voluptas voluptas. Maiores consectetur enim ipsum dignissimos.', 5908, 1, NULL, NULL),
(25, 'Prof. Heidi Braun', 'images/ce92bb8e95810cb574a569333e65ae72.jpg', 1327.000, 'Pariatur saepe eum quis iure asperiores dolor. Ullam ut dolorem ut est inventore deleniti aut. Repellat incidunt non quo aspernatur ducimus est illo.', 1828, 1, NULL, NULL),
(26, 'Wilfredo Russel', 'images/b7458e145a7aa91b7d3cc031df7ade29.jpg', 2125.000, 'Minima odit rerum excepturi cumque rem quos sint. Error repellat adipisci voluptatem dignissimos possimus labore rerum eius. Aut corrupti doloribus non quam.', 3344, 1, NULL, NULL),
(27, 'Makenzie Gorczany', 'images/80dddf92fa325956dd488246f9e33ff1.jpg', 4719.000, 'Aliquam ut magni est consequatur. Aperiam sed delectus perspiciatis consequuntur. Dolores voluptate optio necessitatibus.', 2172, 1, NULL, NULL),
(28, 'Henderson Stamm', 'images/a736f698ac516865044cf4307bbab25e.jpg', 2874.000, 'Incidunt consequatur modi non sed ab culpa. Aut consequatur illo officia velit et. Beatae nesciunt numquam nam culpa hic.', 2158, 1, NULL, NULL),
(29, 'Beulah Orn III', 'images/42475313e074244d62a9c0e323b0b608.jpg', 5776.000, 'Aspernatur qui sint porro molestias tenetur necessitatibus ipsam cumque. Nulla perferendis occaecati neque odio. Impedit et sed in accusantium.', 1033, 1, NULL, NULL),
(30, 'Lucienne Dickens', 'images/a80ca58d5aa1d86c002a17fdc4d0347b.jpg', 4625.000, 'Dolores non commodi nihil quis. Dolorem aliquid expedita quam quae. Dignissimos porro laudantium consectetur eaque sint est dolorum.', 1804, 0, NULL, NULL),
(31, 'Parker Mohr', 'images/79c3779d2ee217392d6a8364891f1bbb.jpg', 1316.000, 'Voluptates ullam optio corporis et facilis. Porro et incidunt laboriosam iusto. Vel natus dolor ducimus error et illo.', 6015, 1, NULL, NULL),
(32, 'Mr. Adrien Koelpin', 'images/751ad5f6fb96188905fff94fd2769ca5.jpg', 8606.000, 'Vero molestiae qui atque fugit vel sit. Amet harum vel molestiae commodi sit. Rem explicabo libero ab molestiae porro consectetur quam sit.', 7272, 0, NULL, NULL),
(33, 'Mr. Milton Bradtke', 'images/a0b796926b15168444313e70666eaf54.jpg', 3278.000, 'Facilis illum ullam quia aut est consequatur. Veritatis nesciunt adipisci est aspernatur eum. Tenetur impedit facilis perspiciatis exercitationem. Minus laborum et eos molestiae est.', 8838, 0, NULL, NULL),
(34, 'Mrs. Zola Hyatt DDS', 'images/efa2db3d2514fa897e14964e65a9f407.jpg', 6970.000, 'Distinctio blanditiis iure quae reiciendis repellat id est. Optio ab dolor quibusdam omnis. Corrupti eaque et dolorum ut.', 1083, 0, NULL, NULL),
(35, 'Gaylord Stehr', 'images/c2b58594c5e5f66fe20b21e08f2b9d77.jpg', 8506.000, 'Architecto suscipit enim quam sunt. Voluptatem non dolor omnis amet. Voluptatem alias quisquam reprehenderit omnis distinctio ut iure.', 7401, 1, NULL, NULL),
(36, 'Elinor Klocko II', 'images/a2e01360644015db542ec94a2e8efb2c.jpg', 5916.000, 'Iste fuga error voluptate debitis. Fugiat distinctio laboriosam animi est molestiae cumque asperiores.', 4580, 0, NULL, NULL),
(37, 'Monte Jones V', 'images/05d6dc8797095ce52a93aa3a1eaaf593.jpg', 6106.000, 'Possimus et saepe assumenda laborum laborum ut mollitia animi. Nemo quia minima sed nemo ut. Qui natus ea facere quidem beatae. Sunt eveniet accusantium sunt.', 6749, 1, NULL, NULL),
(38, 'Annalise Jacobs', 'images/16566441423d3dc57cc7f307fd9f4c1b.jpg', 2154.000, 'Laudantium exercitationem minima possimus placeat. Blanditiis reiciendis vitae dolorum nihil sint qui.', 4322, 0, NULL, NULL),
(39, 'Miss Eda O\'Conner', 'images/d6629b4df94264261a38e519172f6e1d.jpg', 7448.000, 'Dolor qui perferendis voluptate eum minima voluptatum officia. Consequuntur quo dolorum dolorum sequi iste quae.', 8631, 0, NULL, NULL),
(40, 'Dr. Emilio Beier', 'images/5a1187c27ccdbcfeb403e14bec511c1d.jpg', 7525.000, 'Provident delectus in est aut aspernatur. Inventore cum recusandae voluptatem ut. Rem fuga voluptas odit optio repellat eius quos. A autem fuga iste aliquam sed est qui laborum.', 7916, 1, NULL, NULL),
(41, 'Dr. Beverly Shields I', 'images/50b960471d923ea37be6e4844b3a0c48.jpg', 7872.000, 'Porro porro dolorem quo. Itaque non nesciunt sint modi. Doloremque ut quo qui reprehenderit voluptates.', 1797, 0, NULL, NULL),
(42, 'Maximo Simonis', 'images/fa88d95dbdec850f7aae58ff4b717163.jpg', 6872.000, 'Qui voluptatem facilis rerum rerum autem ea quibusdam quo. Error repellat molestiae ab quaerat reprehenderit. Itaque fuga iste eveniet. A fuga explicabo ut cupiditate nam.', 1488, 0, NULL, NULL),
(43, 'Catherine Greenfelder DDS', 'images/05a9da527985299f2cedd28bb337f526.jpg', 3152.000, 'Velit natus sit dolores sapiente deserunt at quia. Sit quam molestiae natus quaerat magni distinctio animi. Est est repudiandae similique in laborum nesciunt.', 5520, 0, NULL, NULL),
(44, 'Mrs. Nya Wilderman', 'images/f0dc5bd6418dfa06b0bf43e8b3a99245.jpg', 6140.000, 'Minima nesciunt saepe dolor. Consectetur necessitatibus et recusandae. Rerum est id deleniti explicabo cum. Adipisci natus nemo repellat optio. Adipisci aut ea quam ad in et quia.', 5817, 1, NULL, NULL),
(45, 'Junior Schultz', 'images/00b179e3f40ec8345f6ccd35f92ec066.jpg', 5895.000, 'Consequatur voluptatibus vero sit qui ut nemo deserunt. Nostrum laudantium optio veritatis. In vel minus velit rem est et. Eos nisi officiis omnis est.', 2094, 1, NULL, NULL),
(46, 'Cydney Considine', 'images/a666dd7e7385ec85310d30ee7a4f069e.jpg', 4550.000, 'Eum perferendis fugiat aspernatur dolor officiis maiores. Ratione similique nihil quaerat. Est aut illum distinctio minus amet dolorem sed.', 3468, 0, NULL, NULL),
(47, 'Adolfo Renner II', 'images/abb58a7a2006c74129e6c39833158e2d.jpg', 3668.000, 'Ducimus repellendus sunt beatae est voluptas. Tenetur error beatae quia. Vitae autem quia debitis fugiat. Voluptates laboriosam nam consectetur inventore hic vero ducimus.', 3483, 0, NULL, NULL),
(48, 'Dr. Amber Hessel', 'images/da10da63d8a0f238e83febff617ce008.jpg', 8174.000, 'Molestiae consequuntur aspernatur nostrum ex rem sequi deserunt. Rerum laudantium veritatis accusantium eligendi. Eius magni consequatur recusandae atque. Excepturi dolor ea et illum sed.', 7433, 1, NULL, NULL),
(49, 'Lisa Marvin', 'images/c91e7c6bd79cdf29c6cf2279324af618.jpg', 4996.000, 'Non non maxime maiores aut. Et cumque quas repudiandae amet corrupti eum nemo. Voluptatibus saepe vitae sed ut. Magnam corrupti qui tenetur quia.', 1296, 1, NULL, NULL),
(50, 'Mr. Craig Nienow', 'images/8a5b945b6e1f7b5f310dcb0cbc52f146.jpg', 2191.000, 'Voluptas enim quo eveniet velit cupiditate et. Eius autem explicabo quia dolore nihil ipsam accusamus. Ut sed ut at magnam quaerat suscipit.', 3929, 0, NULL, NULL),
(51, 'Kristian Kuhn', 'images/35ae500d21a32d59302cc39221e64225.jpg', 7597.000, 'Perferendis ut eius ullam dicta quidem dolor eos ut. Dolor et ratione maiores magnam.', 1298, 1, NULL, NULL),
(52, 'Myron Gleichner', 'images/fb38d1a0d28510ed054b150cb3f330c2.jpg', 8086.000, 'Repellat voluptas voluptatem culpa. Ducimus dolores voluptatem et quod autem porro. Id animi iste facere aliquid reprehenderit molestiae eum.', 7112, 1, NULL, NULL),
(53, 'Marquis Kovacek', 'images/3a864fe3a51db2a4f53b6b823fde2f09.jpg', 1998.000, 'Aliquid vel at voluptas dolorem. Praesentium similique ea aliquam maxime. Possimus et recusandae cum tempore quas voluptatem sit.', 5692, 1, NULL, NULL),
(54, 'Hoyt Hand', 'images/c319227a2bd50095ca196c270a7f3f7d.jpg', 6652.000, 'Minus dolorem autem qui ratione porro voluptatem hic. Molestiae non fugiat eius voluptatibus. Consectetur sit at enim harum vel molestias praesentium.', 3711, 1, NULL, NULL),
(55, 'Mr. Bradley Kris I', 'images/a2b3b0794fc29fc605a1d5e64afb680b.jpg', 3358.000, 'Voluptatum sapiente saepe quo labore temporibus. Delectus ut sed sed fugiat similique. Consequatur eum sed similique consequatur qui inventore. Ut omnis minima consectetur nobis facilis ea.', 8364, 0, NULL, NULL),
(56, 'Randal Bergnaum', 'images/ae3cb66c6f763ca14d9967bc5d354acc.jpg', 6995.000, 'Itaque quasi qui voluptates qui. Laboriosam tempora in veniam maiores est beatae temporibus. Perferendis maiores in fugiat iste possimus.', 8592, 0, NULL, NULL),
(57, 'Hope Botsford', 'images/aed0c423a40a200c05b361e404130e9d.jpg', 8078.000, 'Consequatur sed sapiente voluptates. Fuga sed dolores quis repellat facilis porro. Possimus qui culpa natus architecto. Id temporibus qui blanditiis nisi nostrum facere ad.', 4764, 1, NULL, NULL),
(58, 'Wallace Cole II', 'images/bf371c397076e5b095b9a3c3729f3f04.jpg', 5279.000, 'Repellat ut molestias mollitia vel eos. Aut consequuntur placeat vel et. Reiciendis et mollitia non quia labore nisi. Aut tenetur perspiciatis reiciendis odit ut sunt.', 1583, 0, NULL, NULL),
(59, 'Seamus Donnelly III', 'images/55c2924808afb035f2e30b4b3b344930.jpg', 5745.000, 'Qui ut asperiores molestias ea aut quod mollitia. Et autem ea distinctio sit. Reiciendis laboriosam ea exercitationem autem sapiente aliquam magnam.', 3928, 0, NULL, NULL),
(60, 'Mrs. Amya Oberbrunner', 'images/e825e46c886cab230f5bab92aa0f030f.jpg', 6739.000, 'Nam aliquid placeat dignissimos nobis. Maiores voluptas rem voluptatem harum inventore. Quae voluptatem sunt esse voluptatum. Voluptates quibusdam earum blanditiis quia.', 3926, 1, NULL, NULL),
(61, 'Lonie Ledner', 'images/90c55c59fe946373c5c820403b786c34.jpg', 3882.000, 'Dolor voluptatum eius occaecati. Sed dolorum sit sit sequi in. Id et quo accusantium rerum aliquid occaecati est. Enim sed ex atque non ea similique ipsum.', 8572, 0, NULL, NULL),
(62, 'Mrs. Jessyca Hills', 'images/c4cc4040b29f720d845b4d956425f311.jpg', 8289.000, 'Sit omnis dolores maxime fugit atque dolorum. Aut aut iure sunt deleniti perspiciatis est sed. Dolorem voluptate atque ab omnis.', 4086, 1, NULL, NULL),
(63, 'Krista Welch', 'images/5efc0017ed94f29754ed63a304c173a2.jpg', 5491.000, 'Delectus est dolores qui vero rem eum voluptatibus. Nam facere ut numquam magnam qui. Sunt repellendus ipsum occaecati numquam explicabo itaque id.', 3005, 1, NULL, NULL),
(64, 'Dejuan Casper', 'images/1afd86396550bbe9b091544cf91d0ca9.jpg', 1778.000, 'Qui consequuntur ut deleniti ex sed aut velit velit. Et placeat qui quam et ex rem. Consequatur tempore quia autem repellat.', 1225, 0, NULL, NULL),
(65, 'Stephen Labadie', 'images/a3289c3e85fcc65aa36828fb9b8d769c.jpg', 6257.000, 'Natus neque minima fugit. Sit facere architecto molestias inventore. Autem perspiciatis quos nulla nemo eum eos.', 7770, 1, NULL, NULL),
(66, 'Mrs. Allie Larkin Jr.', 'images/621b72025688ec884f37d2cfa333743e.jpg', 6663.000, 'Ex nisi et ex. Numquam excepturi at qui dolor dicta. In voluptatem quia aut et ea voluptas.', 1148, 0, NULL, NULL),
(67, 'Judson Wilkinson DDS', 'images/b34c4dc8df878b0d5be4d66e24820e73.jpg', 3226.000, 'Nihil id repellat recusandae modi voluptatem voluptatem rerum. Doloremque voluptates totam aut repellat aliquam ipsa consequuntur. Ea quam sed voluptatem atque.', 6391, 0, NULL, NULL),
(68, 'Dr. Forrest Mann', 'images/78fdf7d48210e1a2a1abee3f39b7a501.jpg', 3732.000, 'Est perferendis nisi nemo nihil. Quia dicta eum sed consequuntur. Qui qui similique eos commodi. Soluta occaecati at dignissimos officiis nobis.', 4956, 1, NULL, NULL),
(69, 'Mr. Grover Bergnaum', 'images/4d9c577fd5283093ceeae08a31b97ff6.jpg', 1435.000, 'Corrupti vitae et in sint blanditiis sunt. Atque quo hic voluptatem perspiciatis iure non voluptatem. Sit reprehenderit et numquam temporibus vel qui unde.', 8227, 0, NULL, NULL),
(70, 'Maci Beier', 'images/deca17319fe909af5097fb31536cad53.jpg', 3007.000, 'Aliquam blanditiis aperiam sint ea dicta incidunt maiores. Maiores voluptate et commodi adipisci eos voluptatem dolore. Illo omnis illo corrupti tempore qui.', 6407, 1, NULL, NULL),
(71, 'Ms. Kristina Koch', 'images/0a7fd0674a742f011fea75176e231be5.jpg', 1016.000, 'Odio et dolores recusandae pariatur quasi pariatur. Laborum odio totam et veritatis numquam cum animi aut. Commodi velit quam maxime quis.', 7179, 1, NULL, NULL),
(72, 'Darby Miller', 'images/64ac0ce9bddeb4bc6447813e55f5727d.jpg', 4001.000, 'Repudiandae quia autem sint voluptatum. Esse est enim fugiat quod delectus numquam. Sunt consequatur voluptas soluta autem consequatur occaecati.', 8272, 0, NULL, NULL),
(73, 'Mrs. Lillian Erdman DDS', 'images/4cba7674b57ac1b5d6e3bba8426cd04d.jpg', 1049.000, 'Cum error reiciendis quia recusandae saepe. Perferendis tempora tempore saepe qui in iusto nisi. Accusamus est impedit eum mollitia. Natus ut sit sit.', 3478, 0, NULL, NULL),
(74, 'Dr. Bertram Ernser', 'images/2ba29dc65f7224d13f0d398a57c5968c.jpg', 6656.000, 'Minus sit odio et. Sequi nihil voluptas beatae quisquam aliquam unde. Quia ut veritatis voluptates nostrum ut maxime.', 1010, 0, NULL, NULL),
(75, 'Prof. Coby Schimmel', 'images/1fad819e7f26e09c76ff0cba4d812d06.jpg', 5916.000, 'Et nihil dolor dolores qui quia quis quod. Illo alias autem est qui. Dignissimos illo molestiae necessitatibus dignissimos.', 4150, 0, NULL, NULL),
(76, 'Hipolito Denesik', 'images/d5322e3a9b3c411e5287fad7b6b4609b.jpg', 7678.000, 'Dolorem sed nisi amet. Corporis neque quasi voluptatum odit et dolorem. Nostrum eos non eos quibusdam. Quia sed odit quia incidunt.', 8958, 0, NULL, NULL),
(77, 'Grace Nicolas', 'images/c6dcc5ea9bee1f7dbbfd772a2d17ee5b.jpg', 5827.000, 'Quam numquam accusamus aut doloremque ut. Numquam corrupti ducimus voluptatem. Quidem aliquid impedit ea voluptatem dolorum eius quis. Dolore ut dicta ut non sit laboriosam.', 8681, 1, NULL, NULL),
(78, 'Nathanael Leannon', 'images/d2c9c929f2f2e7a05bc84fded248c365.jpg', 5716.000, 'Id quia doloremque aliquid omnis asperiores nihil sit. Corrupti consequatur est est quos molestiae nemo qui. Necessitatibus accusamus voluptas iste molestiae eligendi a sint totam.', 3794, 1, NULL, NULL),
(79, 'Leola Towne', 'images/ad3a44c26d54f1ceb5feff22aace36b4.jpg', 1530.000, 'Sit nostrum perferendis enim vitae magni assumenda. Voluptatibus quia harum cum voluptatem et. Non ut omnis laborum harum eos ullam. Distinctio nisi enim fuga recusandae non.', 4418, 0, NULL, NULL),
(80, 'Aniya Goodwin', 'images/b2ca389d04b223551fd04db96f62541e.jpg', 8210.000, 'Exercitationem neque dolores corporis nisi et. Quia velit voluptatum nulla facere qui. Explicabo iure dolor quaerat ut.', 7316, 0, NULL, NULL),
(81, 'Robert Conroy', 'images/3032efc419929809b093ad3b48cd36d3.jpg', 2523.000, 'Id corporis et iure et et ipsum. Iure nihil consequatur mollitia aut magni culpa ea. Corporis nihil omnis culpa. Et hic aut nihil. Ipsum soluta qui doloribus et optio commodi aspernatur.', 8498, 0, NULL, NULL),
(82, 'Blanche Jacobi', 'images/12108c454a265c6e16a9f410e7448f90.jpg', 6483.000, 'Aliquam rerum cum est minima est. Est rerum minima quidem nemo maiores sed distinctio sint. Enim nihil dolores pariatur eaque. Aut non iusto nostrum quia dolor praesentium.', 3631, 0, NULL, NULL),
(83, 'Jameson Predovic DDS', 'images/576f8b8d84d90b9f89803d7fe6818a29.jpg', 6236.000, 'Dolores voluptatem alias repudiandae quo odio. Natus voluptas debitis eaque qui numquam nobis distinctio consequatur. Rerum aut quod eos similique accusantium excepturi minus temporibus.', 1737, 0, NULL, NULL),
(84, 'Dr. Christina Jacobson III', 'images/aedbcfe82f9330309f42b6d91d336b91.jpg', 7042.000, 'Ducimus debitis doloremque similique libero. Beatae asperiores eaque nostrum veritatis officiis. Tempore corporis et rerum aspernatur.', 2864, 1, NULL, NULL),
(85, 'Dr. Quincy Zieme', 'images/8b4c3253072f0661ba46fa07ad2285a9.jpg', 7245.000, 'Fugiat fuga ab ea sint voluptatum. Aperiam atque non eos nemo vitae aut.', 2030, 1, NULL, NULL),
(86, 'Dr. Selina Rowe', 'images/44910ffc5d36e6babbd2da5bfde0fc67.jpg', 7971.000, 'Aliquam placeat est nulla quo doloremque non. Repellat dolorum magnam sequi dolorem porro delectus omnis. Eum temporibus molestiae et dolorem tenetur quaerat alias.', 3165, 0, NULL, NULL),
(87, 'Porter Nolan IV', 'images/451d62d32be8fe4fdc891b3cfec4fffc.jpg', 1137.000, 'Qui aliquam maiores ipsam aut dolor placeat nemo. Quaerat id aperiam porro nobis repellat harum. Sit dolor natus modi vero ratione nihil.', 7278, 0, NULL, NULL),
(88, 'Felipa O\'Keefe', 'images/91cf05cc1214918b4adb189d716059fb.jpg', 2034.000, 'Placeat est ad omnis veniam nisi voluptas sequi. Vitae similique in nemo ad praesentium nobis. Quaerat natus excepturi aspernatur soluta odio.', 4461, 0, NULL, NULL),
(89, 'Aubree Donnelly DVM', 'images/7d22230369ae0db2b38f581760d0ac17.jpg', 5683.000, 'Tempora qui quis voluptatem voluptatum. Quisquam magni sed et qui unde molestiae fugiat.', 6888, 0, NULL, NULL),
(90, 'Alysa Hill', 'images/e0313924823380f6b8c3ca2103af2e22.jpg', 2030.000, 'Et consequatur quidem optio nostrum qui. Minima sit commodi velit odio magnam et eius perferendis. In laborum voluptatem quae in aut facilis.', 5218, 0, NULL, NULL),
(91, 'Lew Schulist', 'images/ae8612e5ac6b4cb158eadccb4ce89d43.jpg', 7938.000, 'Expedita atque omnis assumenda aut reprehenderit molestias quo. Ullam est veritatis et impedit in cumque. Aspernatur atque aspernatur minus.', 2510, 1, NULL, NULL),
(92, 'Rolando Walter', 'images/5443b9cc0c38d5e0b0e490231641241d.jpg', 6800.000, 'Quam velit enim voluptatem. Sit dolor cum delectus tenetur incidunt. Et magnam quia non. Cupiditate aut ad facere dolorem placeat aspernatur quia sit.', 5842, 0, NULL, NULL),
(93, 'Jacquelyn Runte', 'images/0170adbf5d2bc546555c08e974242bf9.jpg', 8006.000, 'Sapiente eos quo omnis ratione ducimus dolorem qui. Optio eum mollitia reprehenderit odit beatae culpa itaque. Et esse repellat officiis vel iste unde dolorem.', 6269, 0, NULL, NULL),
(94, 'Dr. Esther Ratke', 'images/78a75889ceae0dfe0e0895fa5464f363.jpg', 7735.000, 'Numquam et error ut in quibusdam. Et repellendus inventore rem ea voluptatem provident optio. Culpa est natus et esse eos. Tempora aut culpa voluptatem maxime.', 6150, 1, NULL, NULL),
(95, 'Alec Volkman', 'images/79c05945e9276875213ebf75318a510d.jpg', 7963.000, 'Omnis voluptate iusto facere sit. Porro dignissimos ut sint totam. Consectetur eum reprehenderit nisi eum eaque et. Sequi asperiores totam pariatur impedit fuga assumenda.', 1262, 1, NULL, NULL),
(96, 'Miss Tia Donnelly PhD', 'images/0d639dd68f2de345a6841111e904963e.jpg', 6021.000, 'Dolores eum corrupti error. Ab eligendi expedita laborum nulla quibusdam. Quo praesentium iusto qui praesentium nihil mollitia. Autem enim similique eligendi expedita. Ducimus in omnis officiis et.', 1317, 1, NULL, NULL),
(97, 'Isaias Lind', 'images/d88490afa90c6a4bb0568211ee234c06.jpg', 7313.000, 'Aliquid recusandae optio eaque eos sint non. Et deserunt beatae aperiam. Ipsam omnis placeat nostrum consequatur error et. Labore eaque ab voluptates veniam est.', 6669, 1, NULL, NULL),
(98, 'Martina Heidenreich', 'images/252f3ef429845a2d22abb897953c5e5a.jpg', 2512.000, 'Eum et voluptatem eveniet rerum iusto pariatur. Dolor aut officiis eum et excepturi. Libero ut ea et perspiciatis voluptatum quisquam expedita sit. Tenetur quis ullam recusandae ducimus vel.', 4120, 0, NULL, NULL),
(99, 'Lenny Hermiston', 'images/ac1b4cf9d94f71085dbc673110011ce8.jpg', 4240.000, 'Et pariatur totam sint illum. Nihil aliquid facilis possimus ea neque eos. Magnam velit amet fuga incidunt. Consequatur laboriosam sit quia ut. Qui est quasi ea sunt qui ea similique.', 7583, 1, NULL, NULL),
(569, '1', 'images/products/5d438ecb5f8fa-Screenshot-from-2019-08-01-07-26-16.png', 2.000, '3', 4, 1, '2019-08-01 18:15:55', '2019-08-01 18:15:55'),
(570, 'tutrinh', 'images/products/5d438f646799f-Screenshot-from-2019-08-01-07-26-16.png', 44.000, '3', 22, 0, '2019-08-01 18:18:28', '2019-08-01 18:18:28'),
(571, 'ttttttttttt', 'images/products/5d47b55b958a7-Screenshot-from-2019-08-01-07-25-10.png', 44.000, '24', 2, 0, '2019-08-04 21:49:31', '2019-08-04 21:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'TU', 'tutdph04873@fpt.edu.vn', '2019-07-24 17:00:00', '123456789', '1', NULL, NULL),
(2, 'Son', 'son@gmail.com', '2019-07-25 17:00:00', '123456789', '1', NULL, NULL),
(3, 'lam', 'lam@gmail.com', '2019-07-03 17:00:00', '123456789', '1', NULL, NULL),
(4, 'thien', 'thiendeptrai@gmail.com', '2019-07-17 17:00:00', '123456789', '2', NULL, NULL),
(5, 'lien', 'lien@gmaill.com', NULL, '123456789', '4', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
