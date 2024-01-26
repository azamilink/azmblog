-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 01:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azm_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(2, 'UI Design', 'ui-Design', '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(3, 'Personal', 'personal', '2023-12-05 00:53:56', '2023-12-05 00:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_071016_create_posts_table', 1),
(6, '2023_11_17_085844_create_categories_table', 1),
(7, '2023_12_05_105514_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Sunt dolorem sit accusamus deleniti.', 'adipisci-dolores-tempore-pariatur-et-expedita-rerum', NULL, 'Tempora eaque ipsam et repellendus ea. Beatae officia eos officia.', '<p>Quae qui rem fuga exercitationem nisi qui. Odio ab sunt a aut ea animi nesciunt. Ex placeat quas consequatur esse optio debitis.</p><p>Molestiae mollitia reiciendis consectetur et consequatur eligendi dolores. Itaque qui accusantium deleniti. Ipsa aut reiciendis asperiores exercitationem.</p><p>Hic sed ducimus et quam. Rerum quam dolores consequatur repellat. Voluptatem inventore rerum qui in repellat aut dolores.</p><p>Ex rerum ab numquam quibusdam. Placeat illo est explicabo architecto dolor et alias. Quia in minima beatae molestias voluptatum.</p><p>Quia officia molestiae nisi aliquam maxime dolorem soluta. Dignissimos animi optio placeat ducimus. Debitis qui qui qui veniam.</p><p>Assumenda iste quo aut eligendi. Et cumque nihil ipsum aspernatur dolorem rerum nam sint. Odio reiciendis exercitationem commodi aut.</p><p>Fugit sint quos quasi cupiditate. Ab ad autem autem vero. Iure voluptas iure commodi culpa praesentium itaque. Dolor sequi ut voluptate ducimus et eius qui.</p><p>Ut nemo alias nobis natus non. Non voluptatibus ipsam amet. Dolor mollitia voluptatem totam sint ullam quia facilis. Explicabo ad culpa odit ut magnam nihil ut voluptate.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(2, 1, 2, 'Quo et saepe minima earum ipsum accusamus soluta repudiandae quia.', 'perferendis-nihil-accusamus-totam-aliquid', NULL, 'Perferendis velit qui omnis esse qui nostrum. Maxime debitis nostrum mollitia vero doloremque maiores aut laudantium. Impedit vel nisi repudiandae nisi voluptas voluptatem. Aut reprehenderit enim vel sed qui excepturi ab.', '<p>Ut fugit dolores ipsa eum ex numquam sint temporibus. Accusamus et fuga consequatur fugiat.</p><p>Iure veniam tenetur ab eligendi dicta rerum. Reprehenderit debitis dolorum aliquid earum placeat repellat ut. Assumenda earum accusamus sit eligendi necessitatibus sapiente facilis. Dolores molestias nostrum est ut et molestias quibusdam.</p><p>Consequatur dolore molestias in. Cum nisi non consequatur quae repellendus eos. Et assumenda sint aut.</p><p>Repellat magnam perspiciatis nam ducimus. Et excepturi laborum nam mollitia aut reprehenderit. Delectus voluptas et nesciunt.</p><p>Voluptas sunt nulla repellendus hic. Nihil maiores praesentium temporibus est voluptatum. Non incidunt nesciunt quidem quas odit.</p><p>Quae aliquam modi quia ut sint id. Doloribus ut nostrum nihil aut explicabo at quia. Molestias error enim maiores placeat consequatur pariatur dolor. Quo similique at non vitae quia. Vitae quia magnam officiis aliquid ab ut quisquam ut.</p><p>Cum magni et et magnam ipsa incidunt. Aut ut sed corrupti alias velit. Culpa iusto et aspernatur et.</p><p>Error et aperiam id repudiandae exercitationem corrupti. Libero dolor quia ab eius explicabo enim. Impedit aut nam facilis perferendis. Et velit soluta nulla ut et non.</p><p>Ut tempore aut dolores non maxime nemo in eum. Temporibus ut quia rerum ut dolorum. Enim optio numquam occaecati deserunt qui soluta ullam.</p><p>In in laborum voluptatem in dolores recusandae. Voluptatum quas dolorum rerum sint ut nobis. Adipisci vel nulla itaque maxime. In voluptatibus voluptate dignissimos.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(3, 2, 1, 'Quidem dolores odio et neque recusandae dolorum nemo et.', 'non-omnis-id-et-quia', NULL, 'Id est quia minus. Officia perferendis inventore dolores aut rerum. Odio veritatis error iste qui modi dolores. Aut non et reprehenderit pariatur adipisci sit ut.', '<p>Aspernatur et eveniet libero est magnam et. Deleniti est et explicabo quidem molestiae voluptas. Error quis et dolores culpa officia nostrum. Cupiditate et et exercitationem illum.</p><p>Aliquam voluptatibus doloribus quia minima. Nulla commodi enim laudantium ut eos quia dolor. Et quia possimus suscipit dolor quia eligendi voluptates blanditiis. Iusto nostrum ut totam fugiat ex est.</p><p>Molestiae exercitationem deserunt et at ut. In reiciendis non hic qui. Voluptas accusamus laboriosam quisquam rerum quaerat. Qui perferendis ea aliquam cupiditate. Perspiciatis quod et veniam.</p><p>Non nobis ut dolorem nam culpa sed. Rem ipsum optio omnis illo optio molestiae. Minus assumenda nesciunt enim accusamus ut voluptates asperiores.</p><p>Ex ducimus corporis autem dolore. Vero vitae voluptatum nisi accusamus blanditiis odit. Iusto quos atque mollitia ut minus et doloremque.</p><p>Sunt libero quo neque laboriosam doloremque magnam facilis. Architecto non nam voluptatibus sequi. Beatae est quod numquam necessitatibus error et. Sunt reprehenderit ut dolores officiis. Est sapiente ipsum quam iusto porro similique ut.</p><p>Enim dolorem neque beatae nihil incidunt facere. Error debitis ratione voluptas alias nemo sunt aut. Maiores quidem eveniet natus illo ut atque doloribus.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(4, 1, 2, 'Ut unde ab qui voluptas.', 'autem-soluta-facere-dignissimos-quis', NULL, 'Praesentium sit eos totam quae. Expedita id error qui soluta deleniti necessitatibus. Ratione sapiente ut est atque.', '<p>Repellat reprehenderit ex non repellendus voluptatem repellat. Est vel aut aliquid nisi est numquam asperiores rem. Non quia vero voluptate. Nisi autem saepe quia fugiat.</p><p>Voluptatum ullam quasi ex eius quam. Dolor est et dolores ad. Adipisci asperiores doloribus id consequatur suscipit officia saepe.</p><p>Fugiat nihil fuga quidem rerum. Provident ipsam consequatur animi omnis eligendi.</p><p>Quia nihil alias similique id reiciendis id optio. Totam ab animi consequatur labore voluptatibus reprehenderit quos. Modi deserunt ratione sit odio magnam quibusdam qui.</p><p>Sed facilis et omnis. Non in est veniam nihil voluptatem aliquam ratione. Provident est quam non inventore quis consequatur.</p><p>Non sint sit in. Excepturi in maxime ad qui rerum. Sit qui laudantium optio odit voluptates quaerat. Aut libero rerum eaque illum molestiae quia ipsa.</p><p>Est quia blanditiis perspiciatis voluptatem enim perferendis nihil. At et dolorem atque. Dicta est velit et quia aspernatur ea. Reiciendis a numquam perspiciatis voluptatem totam dolores aut suscipit.</p><p>At laborum dolor dolorem aspernatur dolor. Autem est et quis nihil porro illum. Repellendus quo dolores omnis sint voluptatum.</p><p>Suscipit hic aut dolores alias. Optio sunt ducimus repudiandae tenetur illum. Perferendis maiores vitae iste hic. Debitis odit error nihil consequatur molestiae est consequatur.</p><p>Et reprehenderit similique quam aut excepturi debitis voluptas. Eius et vel et perferendis. Et ea aut sit quae quo. Quia cumque veniam voluptas autem maiores natus nesciunt.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(5, 1, 1, 'Itaque distinctio aut.', 'repellat-eligendi-laboriosam-est-neque-libero', NULL, 'Non delectus veniam doloribus quo distinctio cumque. Dolores non et dolorem qui rerum. Quo non sint qui incidunt vel animi. Repudiandae ut veritatis nihil corrupti rem.', '<p>Quae voluptatem molestiae consectetur velit voluptates quis id. Aliquid pariatur cumque doloremque et. Ipsa alias eligendi quae corrupti et saepe cum.</p><p>Nisi sit suscipit dicta repellendus officiis. Et quia quaerat perspiciatis rerum ut velit sit beatae. Et non voluptas iure quaerat. Non magnam at molestiae excepturi. Voluptatem a natus doloribus et id qui officiis.</p><p>Ratione aspernatur aliquid illo tempore ut. Illo facilis est quaerat aut qui culpa quis. Possimus perferendis enim eum qui. Voluptas asperiores esse sint ut laudantium.</p><p>Sapiente in voluptatibus nam officia autem deleniti. Dolorem id aperiam esse veniam sunt aut.</p><p>Minima voluptates repellendus veniam repellat voluptates nemo qui earum. Voluptas illum ratione pariatur nihil. Dignissimos explicabo et mollitia sequi quaerat.</p><p>Harum in nam explicabo molestias nihil. Aut labore aut qui. Est sit iure quasi est. Id consequatur delectus quae consectetur.</p><p>Laboriosam quia et sequi repellendus fugit. Et repellendus tenetur officia ut. Nulla consequatur repellat iure non sunt.</p><p>Corrupti ex velit amet itaque dolor quia eius. Ut omnis quis ab quae rerum aut accusantium.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(6, 1, 2, 'Suscipit sint aperiam est ipsa quia qui.', 'voluptatem-doloremque-est-earum-quis', NULL, 'Ducimus laborum magnam blanditiis quam. Asperiores sed dolorem ut nulla. Animi sunt omnis alias quisquam consequatur repellat.', '<p>Quasi asperiores culpa et similique voluptates doloribus et. Voluptas dolor qui optio voluptatem vero. Aut aut est rerum et.</p><p>Molestiae ducimus aspernatur et eum omnis et. Sint in ex dolores est omnis et quia.</p><p>Molestiae quaerat qui id facilis provident distinctio quidem suscipit. Omnis quae est vero voluptas neque tenetur.</p><p>Quia perspiciatis unde modi. Est nihil aut eum assumenda in reiciendis. Debitis voluptates nobis delectus odit est consequatur recusandae.</p><p>Tempora et vitae provident unde ut harum. Sunt et dolores enim ullam illum. Ut qui beatae occaecati. Qui ea quo qui delectus autem et.</p><p>Velit maxime ad ab iure quasi eum quaerat. Corporis quod aut molestiae aut iste rerum sint. Laudantium occaecati voluptatem ab nostrum optio.</p><p>Perferendis voluptatem in accusantium. Illo impedit nam aut atque et quaerat dolores. Ipsa in distinctio est ut. Ducimus rerum alias omnis.</p><p>Aut cum voluptas molestiae necessitatibus nam. Accusamus qui nisi necessitatibus quae aut. Architecto deserunt sit deleniti sint vitae nostrum. Explicabo nostrum veritatis error neque.</p><p>Accusantium possimus quod molestiae aut ea. Rerum a totam ullam reprehenderit qui quis. Culpa et cum est optio quia quis. Voluptatem perferendis quaerat id consequatur.</p><p>Ut dolor et fuga. Qui dicta non aut ad dolor. Esse ut amet labore.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(7, 2, 1, 'Ipsa quis nihil earum velit ad blanditiis error explicabo cumque.', 'sint-ut-sed-eligendi-consequatur', NULL, 'Voluptate quia maxime eos soluta. Voluptatibus commodi debitis voluptates itaque ut aut. Dolorem aliquam quae aut. Soluta eos asperiores voluptate.', '<p>Quae non et voluptatem consequuntur. Sit ipsam dicta tempora delectus rerum officiis. Labore dolore non sequi natus ut esse et. Reiciendis dolor assumenda est ut.</p><p>Doloribus suscipit perferendis eveniet et. Et culpa molestias modi repellat enim doloribus.</p><p>Voluptatibus sapiente sed et excepturi. Ducimus et qui illo corporis voluptates. Nostrum culpa necessitatibus distinctio iure iste reprehenderit et accusamus. Omnis consectetur magni commodi aliquam aspernatur natus voluptas.</p><p>Vitae reiciendis ut porro labore ad earum nesciunt qui. Et est doloremque facere. Nulla quae esse aliquid voluptatem qui.</p><p>Est dicta voluptatum corporis explicabo qui quasi ut. Deserunt quod dolores sunt aut soluta ipsum hic iusto. Natus quas quibusdam officia sit.</p><p>Numquam sed maiores a vel ad mollitia. Praesentium nesciunt voluptate aliquid et quam autem odio. Voluptas minus est dolores sed quae ullam.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(8, 2, 3, 'Consectetur perspiciatis laboriosam.', 'sit-eius-sapiente-non-omnis-iure-quo', NULL, 'Quo dolores eos assumenda praesentium qui. Asperiores repellendus porro provident nostrum nihil odio.', '<p>Ea fugit earum sit ullam nostrum. Libero eum assumenda repudiandae ullam est deleniti non veritatis.</p><p>Ipsum eos voluptas assumenda est animi dolorum harum. Tempora necessitatibus voluptatibus rem sit. Ut officia quos vitae fugiat laudantium facere pariatur. Officiis cumque consequatur dolore.</p><p>Odio ullam adipisci est aliquam. Aut enim distinctio ullam. Doloribus est eaque libero autem voluptates temporibus rerum. Harum porro sed laudantium sed et laborum odit.</p><p>Mollitia provident eos facilis nihil sequi maiores dolorum perspiciatis. Earum deleniti adipisci recusandae facere voluptas. Harum a sed distinctio suscipit. Animi eaque dignissimos et ea.</p><p>Eveniet commodi quisquam illo numquam dolorem. Veritatis nihil qui autem eligendi ut rerum occaecati in. Natus expedita ut aspernatur sit quia aperiam velit. Numquam autem esse in labore error nulla.</p>', NULL, '2023-12-05 00:53:56', '2023-12-05 00:53:56'),
(9, 1, 1, 'Velit laboriosam aut aut vitae similique culpa modi rem.', 'porro-corrupti-omnis-excepturi-vero-et-vitae-corporis', NULL, 'Et est aperiam omnis dolore atque aut. Consectetur quas sapiente ut perferendis repudiandae vero distinctio. Vitae sapiente earum est assumenda rerum at velit. Labore nobis suscipit vero sunt tempore.', '<p>Fuga fugit qui voluptatem sed aliquid id. Officiis atque distinctio consequatur perferendis. Debitis in omnis voluptatibus recusandae.</p><p>Sit eos odio numquam modi. Aut nostrum qui rerum expedita. Dolor dolor molestiae vel doloribus dolorem facilis voluptatem odio. Sit impedit pariatur totam aliquam consequatur eos quia atque.</p><p>Velit aut qui eum sint. Et pariatur et corporis rerum repellendus voluptatibus. Velit expedita et voluptas ut. Corporis mollitia tempora at magnam.</p><p>Enim ipsum voluptas consequatur deserunt. In alias et suscipit voluptatibus qui eos consectetur. In aut iste distinctio ipsum ipsa alias voluptatem ex.</p><p>Neque et eaque earum quo maxime praesentium ratione fugiat. Consequuntur doloribus quo itaque laboriosam odit sit doloremque. Rerum aut libero eos id voluptatum aut quas veniam. Labore autem officiis sit sed quia. Architecto et nobis asperiores laborum delectus at.</p><p>Vitae rerum ut aut nihil voluptates incidunt eum aut. Est vel voluptatem similique beatae. Iure rerum voluptatem molestiae ipsa. Rem nulla aliquid esse velit suscipit id.</p><p>Labore officiis veniam dolorum earum rem dolores. Ea aliquam aperiam ducimus molestiae repudiandae hic. Qui molestias quo consequatur nobis harum. Consequuntur aut quo facilis quibusdam et et aut.</p><p>Quod dolor molestias hic vel dolorem. Sed unde magni ratione voluptas aut ad. Omnis et rerum qui qui necessitatibus architecto. Fugiat eum facere commodi doloremque deleniti quod optio.</p><p>Explicabo tenetur reiciendis dignissimos corporis aliquid accusantium. Perferendis sed voluptatem ratione pariatur ut magnam. Eaque qui nesciunt velit est nostrum.</p><p>Et vitae neque et molestiae facilis voluptas. Accusamus et non facilis dolorem fuga. Saepe unde in suscipit consequatur quae quidem deleniti. Id omnis unde sit.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(10, 2, 3, 'Repudiandae reprehenderit excepturi.', 'repellendus-voluptate-commodi-alias-ut-tempore', NULL, 'Aut iste soluta expedita unde laborum cupiditate. Aperiam explicabo aut commodi quibusdam ut nihil. Et aliquam cumque officia natus natus animi.', '<p>Nobis quam perspiciatis ut laudantium voluptatum sed atque quis. Eum aut consequatur saepe et dicta voluptate. Qui officiis error delectus sit.</p><p>Nesciunt autem sint similique. Minus minima quo odit ad labore. Est nihil enim ad quis quia qui rerum mollitia. Ad ut omnis veritatis quasi saepe optio accusamus.</p><p>Aut et corporis voluptas qui est. Sit quo perferendis consequatur est et perferendis. Velit quia magni hic rerum.</p><p>Et et eum odio rerum veritatis molestiae. Perspiciatis enim non dolores animi eum. Nemo nemo alias commodi impedit voluptatem et deleniti voluptas. Fuga similique explicabo non nostrum est quo nostrum.</p><p>Velit qui id sunt. Odio nobis eaque quia. Hic cumque animi sit soluta quia. Corporis facilis voluptatem non qui sint.</p><p>Nobis dolores dolore aut sit in minima vel. Commodi enim aut tempora minus aperiam ut sapiente. Blanditiis debitis quasi numquam quae odio sit sint nobis. Quis quis mollitia quibusdam cumque.</p><p>Qui iure vel mollitia explicabo non. Officiis dignissimos ducimus veritatis explicabo minima.</p><p>Doloribus accusantium numquam excepturi. Porro omnis sed dolorem rem ut tempora saepe. Eveniet pariatur asperiores nihil ut fugit est consequatur. Expedita et sit iure ut nemo quisquam.</p><p>Maiores dolorem non quidem minus omnis. Odio dicta ea unde repellat. Quisquam delectus veniam et adipisci in et. Et ipsum in aperiam.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(11, 2, 3, 'Ullam nulla molestiae.', 'vitae-nihil-laboriosam-ea-sunt-omnis-consectetur-cumque', NULL, 'Quaerat voluptatem molestiae nobis quae consequatur corporis atque consequatur. Est tempore amet quidem ex saepe dolore perspiciatis. Quod rerum ut reiciendis repellat. Nisi officiis praesentium aut quia ea est architecto.', '<p>Ipsam omnis ab quis dolores saepe. In doloribus cum sint pariatur repellat. Numquam quas rerum suscipit eum. Ut sunt nostrum aliquam veniam et quo aperiam.</p><p>Debitis maiores autem expedita ex. Dolor omnis eos optio expedita reiciendis. Quia laboriosam nobis quos quasi ea voluptas. Quasi sint aut sed quibusdam est quae dolores.</p><p>Animi et enim voluptatum voluptatem. Deleniti et aut necessitatibus repellendus qui repellendus neque nesciunt. Esse quia sit vel delectus quasi optio.</p><p>Et maiores delectus assumenda cum facilis aut vel. Quo aut ut ipsa error non. Consequatur amet non nesciunt quia.</p><p>Odio ratione vero non. At rerum aut provident nulla molestiae qui nihil. Quia sit cumque soluta qui quia vel nostrum. Repellat omnis quo natus et quos qui.</p><p>Beatae ratione reprehenderit magni dolorum eum. Neque qui quibusdam rerum voluptas nihil vel voluptatibus.</p><p>A ut cumque quia temporibus. Deserunt quo et sunt ducimus et ratione doloremque. Delectus rem ipsa nam ut quia veniam. Optio et dolore in placeat maxime.</p><p>Ut quam corporis aut. Sit eveniet maiores sed temporibus est laudantium. Perspiciatis ut quia ratione. Inventore et consequatur quisquam laudantium quo.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(12, 2, 3, 'Iure et qui et ab.', 'dignissimos-iste-commodi-iure-nam-dolore', NULL, 'Nisi porro accusantium doloribus. Laboriosam temporibus minima qui laboriosam porro dolore. Laudantium adipisci repudiandae a officiis consequatur exercitationem aperiam. Eum aperiam eum ratione amet sapiente et quia.', '<p>Non ad corrupti aperiam autem molestias. Culpa vel alias ullam est vero reprehenderit cupiditate. Fugit harum est et vero eius nihil. Dolores occaecati nulla dolor expedita omnis eos dolores.</p><p>Nisi illo cum et at qui porro. Laborum fuga est et assumenda doloribus ipsam.</p><p>Fugit totam autem quod cumque et ad. Ea nostrum dicta cum et totam provident velit. Laboriosam expedita exercitationem deleniti accusantium ipsa sunt accusamus. Nihil vel commodi esse qui dolores expedita.</p><p>Cupiditate et enim architecto provident similique et quisquam nisi. Dolores numquam consequatur qui eligendi recusandae modi. Quam dolorem et magnam sequi ut aut dolorem.</p><p>Ut asperiores quia quia laborum. Possimus accusantium possimus repellendus eaque. Quibusdam rem eaque nisi ea quia. Commodi quas tempora quia laboriosam.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(13, 1, 2, 'Dicta dolores quibusdam aut debitis libero unde.', 'esse-ipsa-deserunt-cupiditate', NULL, 'Non deserunt molestiae cupiditate doloribus. Maxime soluta velit error. Quis quis consectetur vero voluptatibus eveniet.', '<p>Voluptatem iusto repellendus perspiciatis architecto et veniam. Fugiat explicabo voluptatum adipisci et amet. Ut ratione fugit veritatis. Ducimus voluptatem fuga corporis optio consequuntur quam.</p><p>Similique exercitationem non sed vitae quod. Asperiores quia pariatur voluptate cumque eveniet. Eos in ut alias unde quae dicta.</p><p>Facere possimus beatae deserunt accusamus quis vero. Nemo aut aut quae a. Accusamus nihil aliquid eaque autem repellendus ipsum.</p><p>Odit qui exercitationem sunt. Eos odio porro accusamus perferendis fugiat vel. Velit consequatur dolorem corrupti quia delectus laudantium nihil. Assumenda eos non eveniet voluptatem unde est ut sequi.</p><p>Enim voluptatem dolor quae consequatur praesentium necessitatibus rerum beatae. Distinctio similique odit commodi sint possimus recusandae. Est consequuntur harum est officia quidem qui.</p><p>Rerum officiis sit debitis consequatur rerum tenetur veniam. Cupiditate inventore ad quia amet laborum perspiciatis est. Velit temporibus ut quod nemo aut reiciendis iure. Quod quae ratione consequatur in.</p><p>Cupiditate in quo aliquid voluptas facilis tempore. Quidem aut possimus dicta ea exercitationem soluta. Expedita tempore esse minima inventore. Non molestiae soluta est et doloremque laborum omnis.</p><p>Tempora aut vel delectus culpa porro. Pariatur rem saepe modi unde. Voluptatem deserunt sed fuga cum aut vel non. Iure iusto quia sunt deleniti aut.</p><p>Et aperiam et iusto et recusandae consequuntur a. Labore nihil amet illum accusamus quia non accusantium.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(14, 2, 1, 'Quia laborum.', 'perferendis-et-itaque-non-rerum-enim-reiciendis-modi-dolores', NULL, 'Quaerat omnis enim recusandae culpa quis. Hic harum facilis cumque et. Voluptatibus dolor ut repellendus itaque. Est quos aspernatur expedita itaque.', '<p>Ipsum dolorum reiciendis quia quam consequatur. Ut possimus est voluptatem. Necessitatibus veritatis eius eos dicta. Hic ipsam ad in fugiat quo sunt.</p><p>Ex debitis modi sint quasi aliquid accusantium. Consequuntur tenetur natus rerum impedit saepe. Occaecati consequatur aut voluptas sit vero iste voluptatem.</p><p>Ut autem nisi nemo cumque. Vel rerum eos quaerat ut voluptatum aut. Ut reprehenderit repellat illum exercitationem minus.</p><p>Omnis distinctio et nulla quis deleniti reiciendis consectetur qui. Voluptate veniam non non tempora ad quia quis. Quidem nesciunt qui rerum velit.</p><p>Id beatae laborum asperiores porro dolor nisi vero dicta. Nihil maiores veritatis deleniti autem quis. Laudantium omnis eaque et velit facilis.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(15, 2, 2, 'Maxime ipsa nostrum provident quae.', 'reprehenderit-delectus-illum-neque-id-harum-pariatur-officia', NULL, 'Fugit quae dolores unde sapiente vel eligendi. Quam quae accusamus explicabo pariatur minus culpa.', '<p>Exercitationem vel quisquam culpa est. Possimus in ab eum excepturi earum est. Ex labore ipsa provident deserunt. Deserunt eligendi omnis corporis aperiam.</p><p>Quia dolores delectus quia similique provident maiores rerum. Veritatis fugiat natus eligendi ea sit hic quasi. Quia eligendi eos nesciunt. Saepe reprehenderit praesentium delectus consequuntur et impedit.</p><p>Doloribus ea occaecati perspiciatis ea. Qui id vitae quisquam omnis perferendis dolor eum vitae. Dolore dolorum facilis nobis vel.</p><p>Sequi ut illo doloremque minima eaque pariatur. Ullam voluptate magni similique et numquam. Autem voluptas qui earum quod dignissimos nulla cumque. Ut saepe nesciunt qui recusandae dignissimos exercitationem doloribus.</p><p>Optio nihil rerum cum sed ut. Non autem in aut atque. Iure minus asperiores enim voluptatum. Qui officia numquam et aut ad.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(16, 2, 2, 'Ut sit et fugiat ut ratione.', 'aut-est-reiciendis-earum-quasi-magnam', NULL, 'Veniam beatae reiciendis et aut temporibus facere iste soluta. Tenetur quia perferendis laborum iste iste fugiat excepturi et. Non unde aut repudiandae incidunt suscipit sequi.', '<p>Aspernatur id voluptates deleniti et. Placeat velit veniam sit vitae in ab. Fuga et et quia saepe.</p><p>Velit repellendus id a tempora. Dolor dolorem quos ut qui unde rerum. Iusto ea pariatur voluptatum velit quos qui explicabo eveniet.</p><p>Quia mollitia vitae enim qui saepe aut. Id ut blanditiis modi. Et blanditiis sed aut ut tempore molestiae. Consequatur et non veniam. Aut laudantium culpa sed soluta.</p><p>Quod dolores asperiores ut quia quisquam dicta. Tempora molestias totam magni facilis facere. Quasi beatae officia placeat minima.</p><p>Esse dolore omnis non voluptatem adipisci. Sapiente maxime dolore atque vitae. Officia harum quia pariatur in laborum vel. Recusandae dolores asperiores voluptatum doloremque. Ea nemo rerum assumenda reiciendis non.</p><p>Possimus nobis quae a aperiam fuga ut. Officia quibusdam perferendis est ratione quas nihil enim voluptatem. Corrupti pariatur non vel. Maxime quidem voluptatibus eligendi sed minus rem sunt.</p><p>Est similique enim tempora labore. Optio qui facere iure a dolorum voluptas voluptatem. Atque voluptate pariatur odit non ut. Voluptates est omnis quia quis aut veniam quidem. Nihil voluptas ad natus officia.</p><p>Rerum sint vitae accusantium natus laudantium aliquid vitae. At laborum dolore aut consectetur. Quae voluptatem nam aut sint ipsam vel.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(17, 1, 1, 'Reprehenderit nihil hic corporis minus et nostrum.', 'ipsum-cupiditate-dolores-quia-atque-voluptatem-accusamus-quia', NULL, 'Reprehenderit fugiat totam voluptatem saepe possimus nihil ex. Quae qui et quia et esse. Ad nihil enim nobis et.', '<p>Suscipit fuga minima atque. Nihil repellat nemo odio totam est minus. Recusandae sed ut optio sunt temporibus in.</p><p>Modi rerum eos et accusantium qui quisquam. Et tempore labore ex voluptatem dignissimos quasi molestiae eveniet. Velit ut modi et ut ex ut.</p><p>Quos odit ipsam in ut sed expedita porro. Sit doloremque voluptatum dolor voluptas reiciendis temporibus vel. Dolor mollitia distinctio quae dolor. Autem sed dolor repellat aut quia ab.</p><p>Inventore tenetur est sint. Nihil alias eum ut rerum animi officia iusto. Beatae voluptatem quae ut neque sed. Et doloremque ut excepturi recusandae culpa dolorem voluptas quisquam.</p><p>Unde ea facilis minima quod. Quia voluptatem odit blanditiis. Harum sed voluptatem ducimus rerum modi.</p><p>Et et repellat aliquam labore inventore. Similique repudiandae nihil impedit autem. Asperiores aut perferendis consequatur. Rerum consequuntur repudiandae in qui eveniet quos velit occaecati.</p><p>Ullam repellat et natus. Aut aliquam ex saepe vitae omnis doloribus iure. Ut assumenda minus sunt ut voluptatem sit porro. Rem blanditiis voluptas repellendus similique quasi. Quis esse odit voluptas inventore.</p><p>Aut et quis blanditiis. Rerum sunt quas iste qui voluptas doloribus. Numquam sunt officiis quaerat consequatur. Iste sed aut perferendis recusandae atque accusantium.</p><p>Iusto est cupiditate quod ea quia quisquam aliquam. Fugit debitis velit commodi non nihil voluptas.</p><p>Ducimus repellat officia veritatis accusantium sit. Tenetur adipisci praesentium quod consectetur. Et et aut quia.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(18, 2, 3, 'Laboriosam sed odit earum sunt voluptates.', 'hic-sit-voluptate-numquam-et-atque', NULL, 'Est quia et quo. Harum autem sed voluptatem aut commodi ut nobis.', '<p>Illo eos corporis sit totam quaerat reprehenderit reiciendis. Accusamus consequatur aut qui a cumque. Facilis dolores et voluptatem molestiae eos. Minima inventore nesciunt voluptatem eius.</p><p>Enim blanditiis tenetur delectus ut ratione iste voluptatibus. Ea nesciunt quo illo magni asperiores sequi. A harum quae rerum qui sint fugit harum.</p><p>Itaque non qui repudiandae. Voluptate tempora nisi et ut. Nam fugit ut natus odit. Deleniti ea dolorem et velit magnam delectus.</p><p>Dicta qui sed non molestias. Eos ducimus facilis quae doloribus pariatur. Ut dicta nisi consectetur eaque temporibus non iure dolore.</p><p>Expedita repudiandae et officia ut quo eos sit. Recusandae enim commodi qui sit natus. Vitae qui in animi saepe voluptatem inventore.</p><p>Esse aut autem sunt sed. Sequi quasi adipisci in esse repellendus deserunt. Sit temporibus saepe et molestias quia dolore. Dolores suscipit quibusdam maiores et nisi et.</p><p>Accusantium maxime sunt alias architecto. Esse odit soluta voluptates. Qui asperiores maxime commodi possimus modi. Est rerum eius eius. Qui rerum molestiae ad numquam aut ex.</p><p>Repellendus quia ratione excepturi harum et enim. Aut sint veniam at sit earum voluptate. Qui sunt consectetur esse nam soluta. Ipsum ad at delectus quibusdam et consequatur officia.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(19, 2, 3, 'Et velit explicabo.', 'nulla-ut-magni-omnis-nostrum-reprehenderit-molestiae', NULL, 'Dignissimos cumque voluptas quisquam vel commodi. Quia maiores quia quia a exercitationem quae. Aut accusantium mollitia cupiditate odit neque excepturi possimus est.', '<p>Et nihil sunt optio. Dolorum aliquid voluptatem et veniam esse. Doloribus accusamus reiciendis non voluptas perferendis ducimus.</p><p>Quia aliquam temporibus omnis ducimus veritatis. Est alias quas ea tempore eos. Et blanditiis dicta ab repellendus repellendus. Et et officia ut perferendis nisi et itaque assumenda.</p><p>Eos eveniet voluptatem quos cum error facilis nisi. Et voluptatem sapiente aliquid nemo. Officia aliquid tenetur in in. Quidem aut est voluptatem veritatis ipsa.</p><p>Voluptatum facere est ipsam non quo provident aut. Eos dolorem quibusdam vitae quia. Cupiditate sint dolor vel et.</p><p>Quod corporis dolor qui dolores pariatur cumque. Provident minima facere recusandae non labore corrupti. Iste quas vero accusantium consequatur dignissimos nisi quis. Eaque magnam quos beatae debitis blanditiis.</p><p>Ipsam quasi recusandae ullam quod rerum. Dolorum modi eum aperiam et quae quibusdam. Aliquid consequatur sequi vel nesciunt et esse.</p><p>Voluptate doloremque earum accusantium. Doloribus quis reprehenderit consequatur non corrupti. Officia qui quisquam eos amet amet enim ullam. Modi velit vel aspernatur voluptate quas.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(20, 1, 3, 'Nemo quo consequatur.', 'quam-et-laudantium-vel-architecto-illum-sint-laborum', NULL, 'Vel voluptatibus quae maxime voluptas ut voluptatem et beatae. Commodi quia excepturi voluptatem esse quo quos.', '<p>Nihil cumque est ipsum. Iure odit sed nemo mollitia omnis. Perferendis alias eius laboriosam.</p><p>Ratione dolorem et et iusto ea libero. Doloremque perferendis dignissimos vel sed praesentium architecto. Velit occaecati est et nobis enim officia. Quo deleniti quos a rerum rerum.</p><p>Neque iure tempora nihil aut praesentium corporis. Dolore et sed sint et sunt quia. Quas eos modi asperiores enim quisquam quo illo. Eos aut sunt ipsa facere porro.</p><p>Adipisci corrupti architecto tempora incidunt deserunt voluptates. Consequuntur commodi omnis quas ad distinctio id laboriosam. Eos maiores dolor corporis voluptates. Rerum eligendi accusamus et aliquid quaerat.</p><p>Facilis aut omnis culpa accusantium expedita et sed. Qui dolor sapiente repudiandae nulla. Magni praesentium ipsa explicabo praesentium veritatis.</p>', NULL, '2023-12-05 00:53:57', '2023-12-05 00:53:57'),
(22, 3, 1, 'Pemandangan Alam', 'pemandangan-alam', 'post-images/yGJDx2gSZGwy2vxZ0ux4RofFPkgz0SWbAApCPi4u.jpg', 'Dolore minima tenetur totam maxime quisquam quam nulla porro inventore doloribus cum quas et, nesciunt nostrum illo esse. Quo voluptatem voluptatibus expedita asperiores neque facilis debitis, eos acc...', '<div>Dolore minima tenetur totam maxime quisquam quam nulla porro inventore doloribus cum quas et, nesciunt nostrum illo esse. Quo voluptatem voluptatibus expedita asperiores neque facilis debitis, eos accusantium, accusamus qui officia, dolore doloribus eveniet fugit! Eum commodi consequatur enim hic dolorum. Voluptates dignissimos alias architecto temporibus sint itaque, iusto fuga incidunt repellat.</div>', NULL, '2023-12-05 01:40:23', '2023-12-05 01:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Aswad Zami', 'aswadzami', 'zamiaswad@gmail.com', NULL, '$2y$10$nlQPyCzB27PATPrfeclJFOkJ/EMuxJ26A7gJnqLPyW/S2lbsWlrEO', NULL, '2023-12-05 00:53:54', '2023-12-05 00:53:54', 1),
(2, 'Cemani Tirta Megantara S.E.I', 'gina.ardianto', 'hnurdiyanti@example.org', '2023-12-05 00:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7aIOANfqPbKZGish4cueGYabgwqJ1oP7hjd5tVkJHHJkhzn8SRpuIxMnOYPB', '2023-12-05 00:53:56', '2023-12-05 00:53:56', 0),
(3, 'Putri Utami', 'gasti25', 'wastuti.elon@example.net', '2023-12-05 00:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WXTnWzpM3W', '2023-12-05 00:53:56', '2023-12-05 00:53:56', 0),
(4, 'Wisnu Wasita', 'fitria.wasita', 'viman01@example.net', '2023-12-05 00:53:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BMNfqXKexx', '2023-12-05 00:53:56', '2023-12-05 00:53:56', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
