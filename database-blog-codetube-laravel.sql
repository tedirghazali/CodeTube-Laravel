-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: blogdb
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (26,'2014_10_12_000000_create_users_table',1),(27,'2014_10_12_100000_create_password_resets_table',1),(28,'2018_04_18_035846_create_posts_table',1),(29,'2018_04_28_052118_create_verifications_table',1),(30,'2018_05_01_022702_create_files_table',1),(31,'2018_05_30_015009_create_social_accounts_table',1),(32,'2018_06_02_061429_create_products_table',1),(33,'2018_06_28_074004_create_ratings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://www.rmabrokers.com/wp-content/themes/bb-theme/img/default-img.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (51,'Atque omnis in esse quae.','Eius distinctio eum qui dicta magni sint aut. Molestiae inventore omnis fuga velit quae. Quisquam vel quia ipsa tempore et dignissimos at soluta.',50,6,'http://loremflickr.com/400/300/animal?random=319','2018-07-03 21:38:49','2018-07-03 21:38:49'),(52,'Commodi ab quaerat est ut.','Iure qui consequuntur voluptatem. Iste quisquam officiis autem doloremque. Ea repellendus tempora alias dicta.',93,23,'http://loremflickr.com/400/300/animal?random=396','2018-07-03 21:38:49','2018-07-03 21:38:49'),(53,'Sint possimus et tenetur sint pariatur consequatur ea sint.','Id voluptatibus explicabo repellendus rem nisi. Deserunt quis incidunt unde dolore debitis consequatur. Expedita libero omnis in similique. Cumque dolorem quia et in qui atque.',65,16,'http://loremflickr.com/400/300/animal?random=395','2018-07-03 21:38:49','2018-07-03 21:38:49'),(54,'Consequatur quibusdam maiores in molestiae labore laudantium ea.','Ut corrupti ipsa alias saepe. Id eum quae nihil libero aut aut. Vitae modi dolore qui debitis saepe qui voluptas alias. Numquam ut molestiae dolorem facilis.',88,18,'http://loremflickr.com/400/300/animal?random=387','2018-07-03 21:38:50','2018-07-03 21:38:50'),(55,'Et necessitatibus minima exercitationem neque.','Nostrum assumenda hic ipsum consequatur quae at. Deserunt quas enim aut placeat magnam numquam impedit ab. Et rerum consectetur eum sunt praesentium.',64,9,'http://loremflickr.com/400/300/animal?random=385','2018-07-03 21:38:50','2018-07-03 21:38:50'),(56,'Iusto nihil sit sunt culpa perspiciatis eaque unde deserunt.','Voluptas praesentium illo molestiae qui saepe nulla. Rerum recusandae facilis beatae dolores repudiandae. Inventore deserunt quia provident quam totam.',27,10,'http://loremflickr.com/400/300/animal?random=329','2018-07-03 21:38:50','2018-07-03 21:38:50'),(57,'Quia et quae officia sapiente.','Ut et odit doloribus. Aut ut corporis dolorem. Aperiam eum fugiat esse aut.',76,14,'http://loremflickr.com/400/300/animal?random=373','2018-07-03 21:38:50','2018-07-03 21:38:50'),(58,'Perspiciatis deleniti mollitia doloremque.','Dolores veritatis aut ad porro qui vel voluptatem deserunt. Odio magni maiores eos enim qui quia porro. Commodi distinctio quia quia voluptatem. Aut et omnis autem iste sunt.',10,18,'http://loremflickr.com/400/300/animal?random=313','2018-07-03 21:38:50','2018-07-03 21:38:50'),(59,'Perferendis iure ullam et voluptates iusto tempora corporis.','Vel ea nihil quo quia eum et atque. Rerum vitae ducimus est aut similique repudiandae maxime.',91,17,'http://loremflickr.com/400/300/animal?random=38','2018-07-03 21:38:50','2018-07-03 21:38:50'),(60,'Maxime in aut sed et.','Earum error et qui qui eos itaque. Sint ratione corrupti odit qui. Dolor pariatur consequuntur adipisci dicta est ab molestias. Doloremque nesciunt qui quisquam corporis.',45,17,'http://loremflickr.com/400/300/animal?random=319','2018-07-03 21:38:50','2018-07-03 21:38:50'),(61,'Quod ea ut nobis nesciunt.','Rem aut est velit placeat rem. In dolor aperiam quibusdam sequi nobis sunt omnis. Inventore ea et iusto suscipit et quaerat.',8,24,'http://loremflickr.com/400/300/animal?random=345','2018-07-03 21:38:50','2018-07-03 21:38:50'),(62,'Aut id incidunt dolorem pariatur consequatur.','Voluptatum repellat recusandae nesciunt. Sequi magnam nihil nam est. Nihil culpa aspernatur porro perspiciatis error. Nisi sapiente recusandae dignissimos et.',17,9,'http://loremflickr.com/400/300/animal?random=349','2018-07-03 21:38:50','2018-07-03 21:38:50'),(63,'Nulla sunt suscipit vitae accusantium repudiandae laudantium praesentium.','Nostrum ad qui inventore quibusdam. Et dolorem temporibus aliquid et quasi. Totam dolorem ratione iure repellendus voluptatibus.',71,22,'http://loremflickr.com/400/300/animal?random=348','2018-07-03 21:38:50','2018-07-03 21:38:50'),(64,'Qui maiores natus sed neque aspernatur similique consequatur.','Enim nesciunt aliquid error voluptatem ratione in. Ullam et sunt eius fugit occaecati qui aut. Beatae quia libero amet a.',22,13,'http://loremflickr.com/400/300/animal?random=32','2018-07-03 21:38:50','2018-07-03 21:38:50'),(65,'Sit natus omnis sunt eum dicta dolorum.','Odio cum laborum aut possimus magnam sapiente id. Eos sint fuga corporis. Accusamus eveniet neque voluptas quos cumque. Reiciendis corrupti aut cumque eum ad et labore dolorum.',23,7,'http://loremflickr.com/400/300/animal?random=335','2018-07-03 21:38:50','2018-07-03 21:38:50'),(66,'Laborum ratione repudiandae tempora quia.','Dolor laboriosam quos voluptas doloremque molestiae voluptatem ex. Vel temporibus incidunt rerum quia pariatur veniam ipsam illo. Delectus beatae harum doloremque illo beatae sit.',59,17,'http://loremflickr.com/400/300/animal?random=327','2018-07-03 21:38:50','2018-07-03 21:38:50'),(67,'Ea delectus alias voluptatem quo.','Ut qui nisi dicta autem. Voluptates nemo nihil deleniti laboriosam harum. Id labore incidunt non voluptas adipisci. Fuga voluptas repellendus beatae et ut voluptas excepturi labore.',89,18,'http://loremflickr.com/400/300/animal?random=363','2018-07-03 21:38:50','2018-07-03 21:38:50'),(68,'Est itaque totam et occaecati odio et id.','Sit rerum neque molestias iste voluptatibus et error. Quisquam ratione voluptas omnis quia ullam ad. Distinctio vitae sint quidem assumenda commodi.',28,6,'http://loremflickr.com/400/300/animal?random=348','2018-07-03 21:38:50','2018-07-03 21:38:50'),(69,'Consectetur omnis eveniet numquam reiciendis.','Sequi dolores sint velit qui amet. Aliquam rerum nihil tempora sequi harum. Eos aut eum molestiae vel. Aut sed modi ut magni ad cum.',6,8,'http://loremflickr.com/400/300/animal?random=321','2018-07-03 21:38:50','2018-07-03 21:38:50'),(70,'At nihil praesentium ut eligendi.','Numquam voluptatum tenetur totam magnam at rerum veritatis. Veritatis sed rerum esse est ut laborum. Aperiam est iure similique. Cumque excepturi aut esse.',53,15,'http://loremflickr.com/400/300/animal?random=363','2018-07-03 21:38:50','2018-07-03 21:38:50'),(71,'Fugit illum voluptates illum voluptatum eligendi debitis tenetur.','Eligendi eveniet sint placeat nam natus quia repellat. Voluptates ut architecto et dolores vitae. Sed et voluptatem eveniet sed maiores. Qui cupiditate ut quasi quod voluptatem voluptas quis.',12,11,'http://loremflickr.com/400/300/animal?random=399','2018-07-03 21:38:50','2018-07-03 21:38:50'),(72,'Nisi magni rerum eos molestiae.','Error alias a non. Qui ipsum consequatur dignissimos et sunt quis.',95,22,'http://loremflickr.com/400/300/animal?random=354','2018-07-03 21:38:50','2018-07-03 21:38:50'),(73,'Molestiae quis provident aut similique aperiam.','Eligendi eum corrupti aut omnis. Facilis odit ut officiis amet consequuntur incidunt. Quos velit aut quos similique et. Assumenda animi enim facere similique. Ut repudiandae nobis minus placeat.',68,7,'http://loremflickr.com/400/300/animal?random=37','2018-07-03 21:38:51','2018-07-03 21:38:51'),(74,'Accusantium sed aut eaque sequi qui ut.','Voluptas ex vero est excepturi. Quo rerum consectetur fugit provident labore incidunt. Quia nemo dolorum amet nobis. Laboriosam doloribus soluta dolore blanditiis occaecati perferendis aut.',37,6,'http://loremflickr.com/400/300/animal?random=356','2018-07-03 21:38:51','2018-07-03 21:38:51'),(75,'Sed sed repudiandae doloribus aut in.','Aliquid ut quam non ad corporis ipsum. Porro reprehenderit rem incidunt. Unde ut dolor id inventore et odio.',24,24,'http://loremflickr.com/400/300/animal?random=36','2018-07-03 21:38:51','2018-07-03 21:38:51'),(76,'Laudantium id architecto sapiente et aut similique.','Quisquam in voluptas repellat aperiam. Assumenda consequatur id ut eos et nihil praesentium. Eveniet harum est dolores corporis natus nemo magnam facilis. Enim consequatur non qui eum.',47,20,'http://loremflickr.com/400/300/animal?random=342','2018-07-03 21:38:51','2018-07-03 21:38:51'),(77,'Sed numquam maiores dolores quia.','Minima rerum quis animi fuga. Dolor incidunt dignissimos dignissimos quisquam. Qui corrupti delectus molestiae dolorem repudiandae. Molestiae laborum delectus hic maiores eligendi adipisci vel.',72,14,'http://loremflickr.com/400/300/animal?random=385','2018-07-03 21:38:51','2018-07-03 21:38:51'),(78,'Doloremque repudiandae voluptatem culpa pariatur odio.','Voluptatem recusandae accusantium consectetur laboriosam et. Dolor dicta dolores eveniet.',96,24,'http://loremflickr.com/400/300/animal?random=373','2018-07-03 21:38:51','2018-07-03 21:38:51'),(79,'Sed expedita in at nobis.','Voluptatem non similique laboriosam sint ut maxime in. Necessitatibus quisquam et eius qui. Qui reprehenderit sit ullam dolorem velit impedit maiores.',99,14,'http://loremflickr.com/400/300/animal?random=338','2018-07-03 21:38:51','2018-07-03 21:38:51'),(80,'Facere similique illo et dolor et quasi quis.','Optio sunt in accusamus minus omnis laboriosam voluptas esse. Voluptatibus vel et et nisi reprehenderit delectus. Culpa neque quos vel deserunt. Voluptate officiis nesciunt accusamus nesciunt harum.',30,6,'http://loremflickr.com/400/300/animal?random=328','2018-07-03 21:38:51','2018-07-03 21:38:51'),(81,'Aut necessitatibus suscipit nihil autem quaerat voluptatem dignissimos.','Rerum necessitatibus maxime sunt est et. Incidunt ad qui quis id nesciunt. Maiores laudantium laboriosam harum sint ut maiores necessitatibus. Similique optio ipsam quis.',55,15,'http://loremflickr.com/400/300/animal?random=345','2018-07-03 21:38:51','2018-07-03 21:38:51'),(82,'Aut officiis iste aut in.','Ea ut ullam non vel et corrupti voluptatem. Ex consequatur tempora adipisci ducimus quibusdam quasi et. Nostrum impedit excepturi distinctio nihil at ducimus.',60,14,'http://loremflickr.com/400/300/animal?random=335','2018-07-03 21:38:51','2018-07-03 21:38:51'),(83,'Est architecto labore omnis voluptatem quod expedita.','Et veniam doloremque qui blanditiis. Quibusdam ea asperiores commodi quaerat similique et. Aut qui eveniet quas praesentium quia non itaque.',13,17,'http://loremflickr.com/400/300/animal?random=326','2018-07-03 21:38:51','2018-07-03 21:38:51'),(84,'Dolores atque aperiam odit reprehenderit enim quia consequatur.','Nihil eaque asperiores voluptates occaecati vel. Ipsum nobis omnis nisi tempora totam quaerat repudiandae. Maiores quis sit et et corporis et doloribus.',72,19,'http://loremflickr.com/400/300/animal?random=359','2018-07-03 21:38:51','2018-07-03 21:38:51'),(85,'Est quia atque molestiae veritatis.','Voluptatum nemo debitis quae. Nesciunt saepe est in provident facilis aspernatur dicta quis. Veniam odio saepe deleniti ut sit.',42,21,'http://loremflickr.com/400/300/animal?random=343','2018-07-03 21:38:51','2018-07-03 21:38:51'),(86,'Rerum deserunt sint sunt voluptates consequatur.','Non ut itaque maxime ratione amet impedit. Nihil dolorem blanditiis harum. Possimus minima quia dolor nostrum harum et. Consequatur ut aut velit reiciendis incidunt quos quo.',33,12,'http://loremflickr.com/400/300/animal?random=330','2018-07-03 21:38:51','2018-07-03 21:38:51'),(87,'Quis aliquam et eligendi accusantium.','Doloremque adipisci cumque quae est quae expedita porro in. Voluptas ut nam harum minus. Sed sit reiciendis voluptatem ut.',34,17,'http://loremflickr.com/400/300/animal?random=384','2018-07-03 21:38:51','2018-07-03 21:38:51'),(88,'Minima est dolores provident distinctio culpa.','Dolorum aut sunt id recusandae. Dignissimos placeat aut explicabo dolorem eos quia. Quis sint saepe dignissimos aut voluptatum dolorum. Et voluptatem dolores fuga quia.',59,12,'http://loremflickr.com/400/300/animal?random=384','2018-07-03 21:38:51','2018-07-03 21:38:51'),(89,'Rerum voluptatem aperiam repudiandae consequatur nihil nihil qui voluptas.','Autem atque ut nam deserunt nesciunt vel qui. Ea natus similique velit vel ea ut sint possimus. Unde veniam in voluptatibus. Vel ut accusamus suscipit id.',40,7,'http://loremflickr.com/400/300/animal?random=384','2018-07-03 21:38:51','2018-07-03 21:38:51'),(90,'Tempora rem deserunt delectus libero ad rem.','Non eligendi quas qui cum non et unde magni. Quis aliquam doloribus facere iste aut pariatur. Nostrum et assumenda debitis dolorum dolorum natus. Dolor facilis ut sunt aut veniam sunt sapiente.',77,6,'http://loremflickr.com/400/300/animal?random=311','2018-07-03 21:38:51','2018-07-03 21:38:51'),(91,'Accusamus et fuga est aspernatur quaerat qui maxime corrupti.','Velit provident ut odit qui labore unde qui recusandae. Dolorum vel quia qui assumenda consequatur architecto. Facere ipsum temporibus ex quia.',75,9,'http://loremflickr.com/400/300/animal?random=385','2018-07-03 21:38:51','2018-07-03 21:38:51'),(92,'Tenetur officiis illum inventore saepe fuga similique rerum.','Voluptate iusto velit porro quae inventore vel. Et omnis consequatur enim ducimus error nisi dolor.',84,13,'http://loremflickr.com/400/300/animal?random=399','2018-07-03 21:38:51','2018-07-03 21:38:51'),(93,'Aut architecto dolorem veritatis repudiandae.','Ut at deleniti quibusdam expedita ut deleniti. Delectus ratione libero ipsa dolorem alias ratione voluptatem. A adipisci fugit necessitatibus mollitia cum.',85,16,'http://loremflickr.com/400/300/animal?random=341','2018-07-03 21:38:51','2018-07-03 21:38:51'),(94,'Aut est et ipsum occaecati qui alias veniam.','Sapiente blanditiis quasi praesentium sapiente. Nesciunt omnis est temporibus cum iure. Deleniti dolores repudiandae dolor. Velit illo voluptas rerum enim iusto delectus.',99,20,'http://loremflickr.com/400/300/animal?random=319','2018-07-03 21:38:51','2018-07-03 21:38:51'),(95,'Voluptatibus et cupiditate maxime officiis.','Ipsam sed et non quos et. Sed voluptatem autem modi voluptatum sed. Fugit quae et molestiae aut accusamus mollitia cum sint.',11,12,'http://loremflickr.com/400/300/animal?random=356','2018-07-03 21:38:52','2018-07-03 21:38:52'),(96,'Vero minus at voluptates molestiae.','Quia dolorem vel similique et. Est quaerat omnis vel sunt dolor eum dolorem. Neque et ut quis quam. Ea necessitatibus laborum vel reprehenderit incidunt.',32,25,'http://loremflickr.com/400/300/animal?random=365','2018-07-03 21:38:52','2018-07-03 21:38:52'),(97,'Ut enim velit eligendi dolores error.','Omnis provident nihil ex ut quis qui qui. Fuga occaecati inventore cupiditate blanditiis at. Distinctio accusamus accusantium nam iusto voluptas quasi qui.',76,21,'http://loremflickr.com/400/300/animal?random=394','2018-07-03 21:38:52','2018-07-03 21:38:52'),(98,'Enim repudiandae assumenda voluptatem totam et eius neque.','Ut doloremque incidunt odit et dolorem. Est ut incidunt omnis. Est illum blanditiis expedita quam tempore nesciunt quod. Qui id placeat dolore nobis.',95,7,'http://loremflickr.com/400/300/animal?random=343','2018-07-03 21:38:52','2018-07-03 21:38:52'),(99,'Quia sint consequatur sapiente adipisci.','Sapiente quia voluptatem voluptatem. Ut dolor non temporibus iure expedita eum natus.',38,20,'http://loremflickr.com/400/300/animal?random=390','2018-07-03 21:38:52','2018-07-03 21:38:52'),(100,'Nihil voluptatum incidunt iure est et quaerat repellat.','Iure officia debitis est iure assumenda. Officia tenetur veniam harum. At quis explicabo autem voluptatem sit soluta.',26,10,'http://loremflickr.com/400/300/animal?random=371','2018-07-03 21:38:52','2018-07-03 21:38:52'),(101,'Quia fugit ut aut quo voluptatem veniam non.','Dolorum dolorem voluptatum ratione totam et et. Voluptatum quam aut quo hic accusamus pariatur. Aliquam qui hic placeat perferendis neque. Id dolorem et perspiciatis aut consequatur quia laudantium.',64,9,'http://loremflickr.com/400/300/animal?random=379','2018-07-03 21:38:52','2018-07-03 21:38:52'),(102,'Tempore et et omnis provident consequatur qui aut ad.','Natus nihil maxime explicabo facere veritatis modi voluptas nemo. Ducimus veniam possimus consequatur. Maxime vitae in quas id id. Error magnam in dolorum soluta.',11,16,'http://loremflickr.com/400/300/animal?random=351','2018-07-03 21:38:52','2018-07-03 21:38:52'),(103,'Odio harum dignissimos voluptatem aut culpa tempora in harum.','Ut libero totam eos ut voluptatum. Et esse numquam aspernatur occaecati qui beatae ullam. Illum ad id doloribus fugit. Aperiam eveniet aut quisquam totam libero eveniet sit.',41,22,'http://loremflickr.com/400/300/animal?random=33','2018-07-03 21:38:52','2018-07-03 21:38:52'),(104,'Dolorum voluptatum eligendi dicta praesentium alias.','Qui porro ad eius et ipsam atque delectus hic. Recusandae deleniti sed reiciendis quod corporis quisquam nam. Est sint voluptatem doloremque et illo rerum aut autem.',61,18,'http://loremflickr.com/400/300/animal?random=32','2018-07-03 21:38:52','2018-07-03 21:38:52'),(105,'Mollitia aut alias et eum magnam.','Est quisquam velit quaerat quam quos consequatur non. Dignissimos eos quo aut sit ab.',65,17,'http://loremflickr.com/400/300/animal?random=333','2018-07-03 21:38:52','2018-07-03 21:38:52'),(106,'Cupiditate atque voluptatibus cumque est quia iure fugit.','Consequatur autem ullam ut. Quidem eius eaque blanditiis est. Qui corrupti deleniti alias sapiente iure deleniti. Et a et laboriosam quia rerum nihil quasi.',88,11,'http://loremflickr.com/400/300/animal?random=315','2018-07-03 21:38:52','2018-07-03 21:38:52'),(107,'Mollitia aspernatur veniam soluta fuga.','Aut qui vitae esse consectetur ut et. Quasi soluta sit rem ipsum. Sed eaque asperiores rerum quibusdam. Occaecati quis quisquam commodi earum.',19,8,'http://loremflickr.com/400/300/animal?random=333','2018-07-03 21:38:52','2018-07-03 21:38:52'),(108,'Sint autem ipsum temporibus enim deserunt ut harum iste.','Labore tempore qui atque voluptatem ea. Labore dolor iure inventore dolorem. Voluptas nam fuga porro ut ducimus.',50,21,'http://loremflickr.com/400/300/animal?random=387','2018-07-03 21:38:52','2018-07-03 21:38:52'),(109,'Sint voluptate quod non iusto nam molestias saepe.','Quam a quod aperiam voluptatem porro. Alias consequatur occaecati sit reprehenderit facilis voluptas non fugiat. Aliquam omnis et qui rem. Qui sunt aut id.',89,7,'http://loremflickr.com/400/300/animal?random=374','2018-07-03 21:38:52','2018-07-03 21:38:52'),(110,'Repudiandae hic ipsum quaerat nam.','Dolores modi sunt minima quas doloribus. Culpa veniam ut repellat occaecati repellat ut. Qui asperiores dolores possimus aliquam. Eius saepe dolorem ab aliquid incidunt.',57,19,'http://loremflickr.com/400/300/animal?random=329','2018-07-03 21:38:52','2018-07-03 21:38:52'),(111,'Voluptas exercitationem fugit iure expedita enim.','Vitae et voluptatem odit hic. Optio totam et pariatur fugiat et nostrum consequatur. Nisi voluptatem dolore dicta odit aperiam. Nam nulla corrupti id quas.',95,24,'http://loremflickr.com/400/300/animal?random=374','2018-07-03 21:38:52','2018-07-03 21:38:52'),(112,'Est tempore dolor laborum delectus iure.','Aut qui ratione sit fugit. Voluptatem omnis reprehenderit enim ut ullam voluptas. Quo libero facere consequatur qui esse qui. Ut et quas nisi est cupiditate.',57,5,'http://loremflickr.com/400/300/animal?random=358','2018-07-03 21:38:52','2018-07-03 21:38:52'),(113,'Libero dolores voluptatem quia distinctio vel.','Eaque aperiam voluptatem dicta qui eum dolores. Vel velit aut et accusamus. Quaerat laborum suscipit rerum. Ullam dolor maiores nulla molestiae omnis.',7,11,'http://loremflickr.com/400/300/animal?random=344','2018-07-03 21:38:52','2018-07-03 21:38:52'),(114,'Et sed atque quia rem veritatis quia ad reiciendis.','Vel velit et doloremque sed ab. Quos alias totam accusamus non maxime odio. Perspiciatis eum quod ipsum et. Omnis fugiat omnis numquam harum dolores deserunt maiores magni.',92,16,'http://loremflickr.com/400/300/animal?random=331','2018-07-03 21:38:52','2018-07-03 21:38:52'),(115,'Optio quisquam reprehenderit dicta reiciendis et officia.','Voluptatem est quam accusantium ea non repudiandae. Officiis ut ut corporis labore. Delectus deserunt eum quis molestiae enim quas. Corrupti animi vel quo illum.',77,10,'http://loremflickr.com/400/300/animal?random=380','2018-07-03 21:38:53','2018-07-03 21:38:53'),(116,'Cum est dolores sit ut quisquam ipsum.','Voluptatum autem perspiciatis atque consequatur. Dicta tempora qui est magni sed qui occaecati. Sit tenetur tenetur sapiente cum. Odit dignissimos libero reprehenderit odit eius dolorem odio iste.',30,25,'http://loremflickr.com/400/300/animal?random=384','2018-07-03 21:38:53','2018-07-03 21:38:53'),(117,'In mollitia voluptas vitae fugiat.','Consectetur consequatur magnam inventore dolore ea. Quia quisquam aut provident. Qui tenetur eum tempore hic sed. Consectetur sunt nesciunt quaerat.',59,6,'http://loremflickr.com/400/300/animal?random=375','2018-07-03 21:38:53','2018-07-03 21:38:53'),(118,'Consequatur possimus qui et quaerat velit.','Eum et consectetur et amet. Repellendus sunt quia necessitatibus velit saepe cupiditate sed. Magni molestias dolores deleniti rerum nulla.',56,7,'http://loremflickr.com/400/300/animal?random=363','2018-07-03 21:38:53','2018-07-03 21:38:53'),(119,'Et non qui quo provident numquam deserunt quidem necessitatibus.','Id et quidem iusto ut reiciendis voluptas. Ut voluptatem doloremque officiis delectus velit laudantium veritatis. Debitis quo excepturi repudiandae voluptatem totam.',94,19,'http://loremflickr.com/400/300/animal?random=384','2018-07-03 21:38:53','2018-07-03 21:38:53'),(120,'Consequatur sed enim accusamus voluptatem dolorem.','Ut itaque aut assumenda illo neque unde debitis. Deleniti vitae ratione quo similique accusamus aut velit. Tempore blanditiis nemo sed quia minus et qui.',51,15,'http://loremflickr.com/400/300/animal?random=360','2018-07-03 21:38:53','2018-07-03 21:38:53'),(121,'Eum nemo sapiente non non quidem et.','Consequatur itaque illo assumenda ullam. Voluptatem nulla qui recusandae voluptas facilis est. Et consequuntur eum veniam rerum sequi ex. Atque aperiam porro ut vitae consequatur.',60,11,'http://loremflickr.com/400/300/animal?random=328','2018-07-03 21:38:53','2018-07-03 21:38:53'),(122,'Expedita sed illum non quaerat magnam suscipit ea.','Cumque eius dolor debitis aut non et commodi. Laudantium sit aliquam atque reprehenderit. Dolore eius voluptate quia numquam odio veritatis eum.',71,14,'http://loremflickr.com/400/300/animal?random=314','2018-07-03 21:38:53','2018-07-03 21:38:53'),(123,'Ipsam in debitis suscipit in fugit.','Cupiditate consectetur a numquam qui. Et dicta ipsam est aut. Mollitia vel mollitia cupiditate quidem velit fuga quasi. Dicta deleniti ab asperiores qui dolores.',64,13,'http://loremflickr.com/400/300/animal?random=375','2018-07-03 21:38:53','2018-07-03 21:38:53'),(124,'Voluptas a omnis impedit ad magni.','Hic quis iusto neque minima eligendi voluptatem. Nihil ex fugit autem ut consequatur qui doloremque. Et quo laborum aliquid cum eaque.',78,25,'http://loremflickr.com/400/300/animal?random=368','2018-07-03 21:38:53','2018-07-03 21:38:53'),(125,'Expedita placeat distinctio explicabo quia est quisquam quos.','Fugit quam sit quia quos. Sint ipsam explicabo voluptatem ut. Iusto quasi voluptatibus facilis perferendis voluptate. Mollitia qui sunt temporibus aspernatur nam velit.',63,21,'http://loremflickr.com/400/300/animal?random=36','2018-07-03 21:38:53','2018-07-03 21:38:53'),(126,'Amet dolorum dolorum odit voluptatibus nihil suscipit.','Voluptatem qui magni quibusdam et provident delectus suscipit fugit. Excepturi quasi est et magnam. Tempora harum vel veniam beatae nobis alias.',17,19,'http://loremflickr.com/400/300/animal?random=388','2018-07-03 21:38:53','2018-07-03 21:38:53'),(127,'Omnis ducimus doloremque cum esse dignissimos praesentium error velit.','Veniam necessitatibus velit voluptas ut totam. Non sed earum itaque saepe blanditiis. Accusamus et distinctio similique temporibus assumenda in deserunt est.',65,21,'http://loremflickr.com/400/300/animal?random=349','2018-07-03 21:38:53','2018-07-03 21:38:53'),(128,'Nemo vel sed consequatur nam unde esse sint officiis.','Dignissimos sit corrupti quam. Vitae ipsa est ratione est minus quis. Facilis id quis error sit.',38,25,'http://loremflickr.com/400/300/animal?random=37','2018-07-03 21:38:53','2018-07-03 21:38:53'),(129,'Quasi animi velit provident esse quisquam vitae ut.','Corporis adipisci repudiandae voluptatem. Optio itaque quasi quis ut dignissimos nam fugiat modi. Consequatur rerum nihil voluptate. Esse natus voluptatem consectetur omnis accusamus laborum.',11,9,'http://loremflickr.com/400/300/animal?random=391','2018-07-03 21:38:53','2018-07-03 21:38:53'),(130,'Quia minima dolores illo libero sed quia voluptatem officia.','Est aut labore reprehenderit veritatis modi qui. Vel aliquam adipisci ex. Est quasi ab qui sed corrupti fugit quia. Dolor id ea nesciunt eveniet.',20,10,'http://loremflickr.com/400/300/animal?random=345','2018-07-03 21:38:53','2018-07-03 21:38:53'),(131,'Ad quia enim omnis accusantium.','Et non dolorem quo molestiae nemo consequatur vel. Est id odit iusto vitae. Ex cumque magnam ad hic laborum deserunt.',68,23,'http://loremflickr.com/400/300/animal?random=398','2018-07-03 21:38:53','2018-07-03 21:38:53'),(132,'Maiores molestias molestias aut deserunt rem aliquam magni.','Et enim totam voluptas iure id. Quis provident veritatis ipsa deleniti quia sunt rerum. Qui repellat quaerat nisi eum debitis iure quasi.',76,23,'http://loremflickr.com/400/300/animal?random=360','2018-07-03 21:38:53','2018-07-03 21:38:53'),(133,'Temporibus quam sunt et adipisci.','Magni aut laboriosam omnis quia neque quos. Ea possimus fugiat voluptates minus eveniet. Dolorem recusandae vero quo quod.',25,20,'http://loremflickr.com/400/300/animal?random=337','2018-07-03 21:38:53','2018-07-03 21:38:53'),(134,'Commodi architecto modi culpa quia reprehenderit.','Id rerum laboriosam quis et quod dolores consequuntur. Omnis provident cum blanditiis unde facilis deleniti aut. Maiores omnis velit suscipit possimus minima commodi aliquid.',91,18,'http://loremflickr.com/400/300/animal?random=338','2018-07-03 21:38:53','2018-07-03 21:38:53'),(135,'Itaque atque velit quas illo.','Porro dolor libero nihil sint dolor dolores. Quis enim est error quia corporis labore dolor.',41,16,'http://loremflickr.com/400/300/animal?random=379','2018-07-03 21:38:53','2018-07-03 21:38:53'),(136,'Accusantium laudantium quia vitae non qui corporis placeat.','Labore alias iusto tempore ut. Ea est voluptate eum consequatur iusto. Itaque quis vel officia nihil minus nisi autem.',48,16,'http://loremflickr.com/400/300/animal?random=314','2018-07-03 21:38:53','2018-07-03 21:38:53'),(137,'Blanditiis deleniti dolorum eius tempore fugiat.','Nemo dolores veritatis repellendus et optio tempora. Est minus et reprehenderit voluptatem quo neque beatae. Vel cum exercitationem nihil veniam nesciunt laboriosam. Et facilis iste ullam excepturi.',61,21,'http://loremflickr.com/400/300/animal?random=392','2018-07-03 21:38:54','2018-07-03 21:38:54'),(138,'Ut quis eum voluptatum ducimus.','Consequatur error non unde quaerat iure dicta ut. Est doloremque sint sapiente nobis laborum aliquid. In voluptatem iure vero ipsam voluptas ut.',9,13,'http://loremflickr.com/400/300/animal?random=36','2018-07-03 21:38:54','2018-07-03 21:38:54'),(139,'Occaecati aliquid deleniti deserunt consequuntur excepturi natus.','Et nihil unde aliquam et et. Deleniti quia iusto corporis accusamus asperiores et. Ratione odio voluptatem ullam minima.',47,7,'http://loremflickr.com/400/300/animal?random=330','2018-07-03 21:38:54','2018-07-03 21:38:54'),(140,'Atque quo aut vitae occaecati nemo consequuntur.','Aut earum inventore vel perspiciatis excepturi perferendis. Amet earum et suscipit quia rerum. Nemo voluptatibus dolorum nihil et. A sit illo voluptates sed vel quasi.',56,23,'http://loremflickr.com/400/300/animal?random=325','2018-07-03 21:38:54','2018-07-03 21:38:54'),(141,'Deserunt est debitis minus ullam placeat cupiditate.','Quasi suscipit minus qui dolorum voluptatem eum. Dignissimos quos eveniet iure est repellat molestiae odio. Illo consequuntur vel maiores voluptas vel explicabo facere. Ea numquam et hic totam.',25,9,'http://loremflickr.com/400/300/animal?random=386','2018-07-03 21:38:54','2018-07-03 21:38:54'),(142,'Omnis ullam laboriosam est et.','Qui minima earum illum voluptates ut occaecati sunt. Vero nihil harum aut in ad. Aut exercitationem quasi incidunt quaerat. Dolorum iure est suscipit non provident qui est voluptatem.',25,15,'http://loremflickr.com/400/300/animal?random=324','2018-07-03 21:38:54','2018-07-03 21:38:54'),(143,'Qui placeat ipsum in voluptates ut sed qui.','Qui et error nihil nesciunt impedit fuga porro eveniet. Nihil sit et est sed maiores beatae dicta. Blanditiis perferendis enim accusamus magni qui. Aut ut porro labore pariatur et.',65,13,'http://loremflickr.com/400/300/animal?random=344','2018-07-03 21:38:54','2018-07-03 21:38:54'),(144,'Iure est quis soluta accusamus ea omnis quo aut.','Similique dolor et rem culpa ut quas. Corporis id aliquid rem impedit explicabo qui.',7,15,'http://loremflickr.com/400/300/animal?random=388','2018-07-03 21:38:54','2018-07-03 21:38:54'),(145,'Nam qui ut et dolore.','Voluptas enim consequuntur sint maxime est. Quae et maiores omnis quos placeat quidem amet earum. Deleniti laudantium ea nostrum incidunt.',35,11,'http://loremflickr.com/400/300/animal?random=365','2018-07-03 21:38:54','2018-07-03 21:38:54'),(146,'Est et eius voluptatibus id.','Sequi quidem doloremque qui. Rem consequatur consequatur modi voluptate exercitationem esse aut. Dolores minus ut dolorem ea cumque.',96,14,'http://loremflickr.com/400/300/animal?random=324','2018-07-03 21:38:54','2018-07-03 21:38:54'),(147,'Corporis error ea ratione nihil ut sint.','Natus et aliquam sed aliquid. Repellat pariatur quia odio porro praesentium. Architecto libero delectus autem totam magni dolor. Modi aut magnam sapiente cupiditate ut.',95,17,'http://loremflickr.com/400/300/animal?random=355','2018-07-03 21:38:54','2018-07-03 21:38:54'),(148,'Dignissimos facilis doloribus qui molestiae.','Numquam ipsum natus explicabo atque officiis nesciunt et. Aspernatur dicta sit provident voluptates qui recusandae magnam dolorem. Neque quam saepe omnis explicabo cupiditate.',32,24,'http://loremflickr.com/400/300/animal?random=364','2018-07-03 21:38:54','2018-07-03 21:38:54'),(149,'Quis temporibus corporis temporibus dolor rerum.','Ea dolor voluptas est beatae sit. Quis et et eum ut aut delectus. Error distinctio recusandae ad ipsam. Alias debitis quia dolorem magni autem recusandae.',19,24,'http://loremflickr.com/400/300/animal?random=39','2018-07-03 21:38:54','2018-07-03 21:38:54'),(150,'Enim expedita quae ea possimus vitae et.','Maiores accusamus dolore voluptas velit illo et. Harum odio qui nisi vel aut impedit necessitatibus.',97,17,'http://loremflickr.com/400/300/animal?random=356','2018-07-03 21:38:54','2018-07-03 21:38:54');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,40,1,3.5,'2018-06-28 00:59:32','2018-06-28 00:59:32'),(4,40,2,4,'2018-06-28 01:01:40','2018-06-28 01:01:40'),(6,40,3,1.5,'2018-06-28 01:02:13','2018-06-28 01:02:13'),(7,41,3,4,'2018-06-28 21:05:48','2018-06-28 21:05:48'),(8,41,3,2.5,'2018-06-28 21:06:23','2018-06-28 21:06:23'),(9,41,3,5,'2018-06-28 21:06:48','2018-06-28 21:06:48'),(10,41,3,5,'2018-06-28 21:07:05','2018-06-28 21:07:05'),(11,42,3,4.5,'2018-06-28 21:07:36','2018-06-28 21:07:36'),(12,43,3,4.5,'2018-06-28 21:26:11','2018-06-28 21:26:11');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifications` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifications`
--

LOCK TABLES `verifications` WRITE;
/*!40000 ALTER TABLE `verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `verifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-04 12:06:49
