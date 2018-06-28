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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Perspiciatis et aut.','Impedit explicabo corrupti magnam explicabo quod adipisci. Ut ut doloribus voluptates blanditiis. Nesciunt pariatur quae ullam doloribus delectus quae. Hic quo dolor cumque sed aut eius sed.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(2,'Odio dolorem illo.','Nesciunt aut sit quisquam asperiores. Et quis velit perferendis consequatur cumque. Maiores explicabo id delectus unde alias dolorum.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(3,'Nobis qui saepe.','Quo enim blanditiis eveniet occaecati. Adipisci ratione qui dicta placeat mollitia et. Facilis deleniti officia possimus consequatur. Enim veniam dolorem provident corporis delectus.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(4,'Ipsam possimus vel.','Quasi quo ab a quas accusantium et ipsa. Ad corrupti veritatis molestiae autem ut et molestiae. Dignissimos enim ab natus veniam dolores. Eos omnis et quia rerum laboriosam rerum.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(5,'Et placeat unde.','Ut id libero officiis reprehenderit minus. Nulla et et voluptatem et libero soluta et. Accusantium iste non voluptatem repellat sit iure consequatur.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(6,'Eos autem suscipit.','Perferendis repellat dicta est perspiciatis. Modi ipsam eos esse consequuntur magnam ipsa veniam. Qui maxime rerum amet autem.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(7,'Quidem culpa.','Cum occaecati incidunt qui culpa. Neque quisquam aspernatur sunt ab placeat. Et optio rerum officia accusantium et tempora. Aspernatur omnis occaecati est nobis dolore.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(8,'Quisquam ut ratione.','Ipsam cumque occaecati et voluptas corrupti doloribus rem ut. Mollitia ipsam autem est fugiat illo et sapiente perspiciatis. Beatae qui et veniam veritatis quia sunt possimus voluptatum.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(9,'Veritatis.','Et iure eius sed enim expedita autem facilis. Facere voluptatem quia ut quia rerum. Est molestiae ipsum eos voluptas.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(10,'Voluptatem vero et.','Voluptatum distinctio occaecati amet optio doloribus consequatur. Dicta doloribus et dolore culpa. Ea quae molestiae accusantium voluptatem. Ut tempore eaque deleniti quaerat excepturi ut illum.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(11,'Qui totam.','Nulla distinctio est et est ex modi voluptatem. Minima eos omnis sit perspiciatis qui excepturi. Et quas saepe at exercitationem adipisci dicta. Consectetur enim deserunt illum aliquid voluptatem.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(12,'Voluptate sit ipsum.','Quo eveniet molestiae reiciendis eum voluptatem omnis dolorem. Distinctio itaque sequi ab provident. Tenetur dolor dolorum et ut distinctio ad.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(13,'Ratione minima.','Nesciunt ut vitae quas aut. Excepturi quia dolor aperiam temporibus voluptas qui nemo aut.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(14,'Est officiis.','Quidem cupiditate suscipit et est. Nostrum suscipit deserunt dolorem corporis illo ducimus maiores. Natus et non assumenda labore iste mollitia. Nemo et velit aliquam dolor blanditiis iusto.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(15,'Iusto a cum aut.','Mollitia et quo dignissimos consequuntur. Iusto eos incidunt illum. Ut ut sint officiis nostrum eum tenetur possimus.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(16,'Consequatur fuga.','Rem nesciunt natus veritatis quidem. Voluptates facilis eligendi voluptates quidem accusantium. Sapiente qui quasi aperiam aut et commodi odio. Nostrum sed sint quo qui molestiae et.',500000,567,'2018-06-28 00:42:58','2018-06-28 00:42:58'),(17,'Debitis nihil.','Quis corrupti impedit qui provident vero. Commodi neque explicabo maxime aliquid optio. Beatae excepturi neque voluptatum blanditiis tempore est. Iure cum sint porro assumenda sunt sunt et.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(18,'Eaque et maiores ut.','Est officiis reprehenderit corrupti eum et. Placeat aut voluptatem ipsam. Rerum est perspiciatis illum. Animi odio et itaque quo est est.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(19,'Blanditiis aut sint.','Illo ea quia et dolore. Et molestias est sed dolores. Blanditiis porro sit rem iure nam. Quas soluta quasi iusto error voluptate.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(20,'Dicta magni nulla.','Illum veritatis ex excepturi odit et optio veniam. Accusamus corrupti eos quidem autem. Eligendi aut perspiciatis in assumenda. Velit modi veritatis aut voluptas aut iusto ad molestiae.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(21,'Harum voluptatem.','Fugiat enim ipsa cumque exercitationem voluptas. Et eligendi eum in est doloremque harum reiciendis. Iure consequuntur quas sit in.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(22,'Aut rerum quaerat.','Eos est at deleniti nesciunt qui voluptate suscipit. Esse nesciunt nobis nulla recusandae. Deserunt aut quia vel a officiis.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(23,'Animi magnam magnam.','Necessitatibus dolores iusto sit quo. Ut fugit aliquam qui hic ea. Quia odit quidem qui corrupti voluptatem.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(24,'Unde qui deserunt.','Magni hic dolores esse velit earum voluptatibus dolorum. Atque qui iure necessitatibus non. Et delectus quisquam quod.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(25,'Odit corporis.','Aut corrupti est cumque. Iure sed sunt est. Explicabo officia cum et saepe laborum. Sed sunt neque eum cumque veniam in aliquid.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(26,'Earum dignissimos.','Est autem a molestias non dolorum. Omnis ea velit eligendi sint sunt sed consequuntur. Voluptas velit est expedita a fugit omnis voluptatem.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(27,'Fugit sunt non illo.','Minima tempora in reprehenderit quia saepe eius. Aut consequatur eum delectus velit modi. Cupiditate veritatis vitae harum cupiditate ratione neque amet.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(28,'Nihil velit.','Dolores quibusdam sunt possimus explicabo rerum libero praesentium laboriosam. Nihil eveniet animi corporis. Et itaque adipisci minus perspiciatis optio ut.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(29,'Quia voluptatum.','Nemo temporibus eos cum accusamus voluptas aspernatur. Illum consequuntur rerum qui sint. Voluptas consequatur est consequatur velit quas.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(30,'Magnam modi qui.','Ratione quam repellat ipsa distinctio porro rerum at voluptas. Culpa cumque repellat et. Commodi dolorum unde non dicta nam.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(31,'Sint et voluptate.','Praesentium in repellendus qui voluptatem optio corporis. Soluta laborum corporis officia sunt quo et id. Quasi itaque dolor ut qui. Rerum velit aut nihil aut dolor error optio.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(32,'Qui officiis facere.','Minus qui omnis dolores animi. Quaerat sapiente et velit. Nobis dolore recusandae nisi est qui eveniet ut tempore. Quod itaque natus eos.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(33,'Sed et laboriosam.','Accusamus omnis mollitia et autem nisi vero error. Eveniet placeat aspernatur sit sed laudantium animi deleniti. Qui ut sint in alias explicabo ea qui.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(34,'Quo ad ea non est.','Id quis sed aut qui officia optio. Hic pariatur repellat aliquid sint molestiae vel dolore. Omnis et veniam explicabo sapiente.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(35,'Ducimus rerum a.','Expedita libero accusamus eum sunt ut exercitationem corporis dolorem. Quis voluptas explicabo omnis repudiandae. Perferendis dolorum corporis et ipsum et.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(36,'Perspiciatis in.','Alias dolores reprehenderit ipsam. Quibusdam non voluptates nisi non odio quod aut. Sequi officia nemo quia facere. Maiores impedit deleniti qui alias in.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(37,'Rerum voluptas.','Recusandae ratione officia quaerat dolor. Aut odit sed modi incidunt impedit. Laudantium autem facere repudiandae sint id sint. Ut dolores dolore tempora dicta.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(38,'Ut tempora maxime.','Voluptatem hic necessitatibus ipsa mollitia. Non voluptatem ab consequatur consequuntur distinctio inventore voluptatem.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(39,'Quod ex adipisci.','Nam asperiores excepturi ut ut doloremque ad ab. Quisquam error doloribus quibusdam voluptatem sunt omnis aperiam. Praesentium nihil ad nobis velit autem repudiandae voluptatem.',500000,567,'2018-06-28 00:42:59','2018-06-28 00:42:59'),(40,'Expedita maxime in.','Est laudantium et at aut magni. Earum architecto quos tempore. Quas aut quasi amet incidunt nostrum ut ab. Qui tenetur dolores tempora eos pariatur. Deserunt doloremque nam voluptatum omnis.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(41,'Sit tempore culpa.','Nobis quod omnis consequatur earum deserunt non. Possimus est pariatur unde ea cumque. Incidunt minus temporibus tempora et maxime et dolor.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(42,'Et non saepe.','Maxime natus minus incidunt laboriosam sit dignissimos. Voluptatem tenetur perferendis aperiam molestiae. Sunt expedita dolor corporis.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(43,'Delectus tempore.','Quia recusandae sequi exercitationem sint. Magnam necessitatibus sunt ipsa non maiores aliquam. Non deserunt qui blanditiis tempora et.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(44,'Atque molestiae.','Quas maiores nihil consequatur voluptas atque. Quaerat quas dolorem eveniet officia atque est. Tenetur reiciendis corporis eos aspernatur itaque quaerat. Perferendis ducimus sint dicta itaque ipsum.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(45,'Impedit et.','Autem soluta autem voluptatem quo qui soluta. Tempore laboriosam enim esse est aut iusto. Quae omnis iure impedit et dolor cumque.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(46,'Culpa minus.','Sint est quia dolores sapiente reprehenderit totam. Aspernatur aspernatur iste tempore. Rerum qui pariatur praesentium hic voluptates consequatur laboriosam. Nisi dolorem ut qui aut nemo.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(47,'Vero quis quibusdam.','Quae accusantium sapiente fugiat similique voluptas asperiores. Molestias voluptatem amet repellat voluptates dolorum. Voluptas nemo rerum enim rem expedita atque.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(48,'Harum sit qui.','Beatae occaecati ut qui. Voluptas repellat ullam nihil minima veniam. Deserunt rerum quia eum dolor eaque fuga.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(49,'Est commodi.','Sit ut eum alias et repudiandae vero. Repellat odio necessitatibus fugit odit. Atque rerum est sequi voluptas sint voluptatem. Quod aliquam voluptatibus asperiores doloribus quas sed molestiae.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00'),(50,'Inventore inventore.','Incidunt est dolorem ut minima minus. Debitis quo ut suscipit voluptatem perspiciatis ea. Maxime aspernatur dignissimos sequi voluptatum.',500000,567,'2018-06-28 00:43:00','2018-06-28 00:43:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,40,1,3.5,'2018-06-28 00:59:32','2018-06-28 00:59:32'),(4,40,2,4,'2018-06-28 01:01:40','2018-06-28 01:01:40'),(6,40,3,1.5,'2018-06-28 01:02:13','2018-06-28 01:02:13');
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

-- Dump completed on 2018-06-28 17:22:07
