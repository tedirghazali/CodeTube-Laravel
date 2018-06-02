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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (19,'2014_10_12_000000_create_users_table',1),(20,'2014_10_12_100000_create_password_resets_table',1),(21,'2018_04_18_035846_create_posts_table',1),(22,'2018_04_28_052118_create_verifications_table',1),(23,'2018_05_01_022702_create_files_table',1),(24,'2018_05_30_015009_create_social_accounts_table',1),(25,'2018_06_02_061429_create_products_table',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'updated name','updated description',45,200,'2018-06-01 23:18:46','2018-06-01 23:31:26'),(5,'Porro in enim.','Quasi itaque hic corporis quos impedit fuga quo. Et neque voluptatem modi voluptatem quia. Eos beatae eum dolore nihil optio.',500000,567,'2018-06-01 23:18:46','2018-06-01 23:18:46'),(6,'Eveniet esse ex.','Sint nihil reprehenderit minima. Voluptate enim et in veritatis atque sint ipsum. Quae labore illo nobis ut sed. Sit autem labore voluptas rerum quos.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(7,'Velit sit qui ipsa.','Quod quos praesentium commodi. Quasi qui suscipit voluptatem quisquam nihil consequatur porro rerum. Sit odio distinctio aut est consequuntur tempora. Ad harum et qui sequi unde consequatur sed.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(8,'Dignissimos fugit.','Debitis et nobis sint sed itaque vero recusandae laborum. Ut consequatur quisquam delectus officiis fugiat necessitatibus. Aliquam doloribus saepe debitis tenetur nesciunt.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(9,'Consequatur est.','Et aliquid maiores corporis autem sint labore consectetur. Eos placeat corporis quia enim et. In magni nobis porro iure.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(10,'Facere cumque.','Ut vel saepe sint non consequatur accusamus. Quod commodi aut vel corporis.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(11,'Est consequatur.','Perferendis animi libero itaque qui et et distinctio. Fugit atque quo rerum quibusdam iure illum. Eveniet earum ex voluptas nobis sequi ut repellendus. Ut sit et quo ea ad beatae.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(12,'Minus iure.','Nam maxime debitis non nam. Quos aut ut excepturi. Odio minus id dolores quidem. Cumque consequatur est qui aut non.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(13,'Voluptatum saepe.','Vitae qui nulla et rerum. Officia voluptatem modi quaerat omnis. Culpa et asperiores inventore quae qui at.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(14,'Ex eos magnam quam.','Sed quis est earum. Perspiciatis quas accusamus et rerum. Nostrum atque eius occaecati tempora amet perferendis. Fuga amet tempore quisquam id totam nostrum facilis.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(15,'Maxime vitae non.','Ut libero tempore eum totam voluptas occaecati. Iste enim voluptates numquam perferendis dolorem omnis. Eum odio ab qui at modi cupiditate.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(16,'Perferendis.','Libero dolor omnis provident sed laudantium ut vitae. Exercitationem quis ducimus est in. Ducimus molestias dolores quaerat. Minima architecto cum rerum quidem aut consequatur.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(17,'Ex sunt iste omnis.','Tempora ea qui nobis fugit sapiente deserunt. Non et a perferendis dolorem unde. Ea perferendis aspernatur dolor deleniti quis sint. Nostrum cumque ex repudiandae dolor accusamus adipisci recusandae.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(18,'Provident error.','Et aut ratione aut tempore sunt voluptatem aut. Exercitationem a modi distinctio cum. Impedit magni pariatur sunt et quis ea animi. Sunt natus sunt quia est rem.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(19,'Quos est unde est.','Ab et et molestiae dolore sed omnis. At nihil sunt ut aut et et. Veritatis quibusdam omnis praesentium est itaque veritatis. Facilis non aliquam vitae perferendis. Cum temporibus qui iste voluptatem.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(20,'Non et consectetur.','In ratione aliquid aut. Eaque cupiditate laborum est aut porro. Velit ratione voluptas omnis nemo dolor. Voluptas dicta a nihil ea consectetur. Officiis explicabo accusamus id nihil mollitia alias.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(21,'Eligendi dolorem.','Blanditiis et est et eius nostrum voluptatem odio. Et neque earum sequi aliquid atque tempora. Atque non cum aliquam earum iste repellat.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(22,'Magnam nisi quia.','Cumque autem enim sunt quia aut sint blanditiis. Fuga illo unde eaque vero. Et perspiciatis ut dolor nihil tenetur est praesentium accusantium. Soluta eum laborum debitis officiis nesciunt.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(23,'Sed quia earum.','Sed dicta et ratione sed. Adipisci quia quo molestias occaecati. Alias ex reiciendis aut velit excepturi.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(24,'Quia explicabo quo.','Voluptas modi laudantium beatae explicabo ut eum eius. Sit laboriosam totam sit voluptates laboriosam nam voluptate quis. Perspiciatis rerum minima soluta ut reiciendis harum ab.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(25,'Quod maiores sunt.','Voluptas non esse quaerat atque repellendus. Neque quibusdam amet provident perferendis. Nemo sunt a veritatis ullam dicta.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(26,'Incidunt recusandae.','Ut commodi ut officiis quos expedita adipisci. Facilis earum facere et omnis at nemo sed sint.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(27,'Soluta veniam velit.','Repellendus vel corrupti odio maiores pariatur quos excepturi. Est ad sed sunt at molestiae. Aut qui laborum ratione nihil nobis eveniet.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(28,'Ratione ipsum.','Deserunt libero laboriosam commodi corrupti. Deserunt enim consequatur est earum in aut unde enim. Dolores consequatur recusandae deserunt.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(29,'Magni fugit quas.','Sunt et nam inventore quisquam dolor. Autem accusamus perspiciatis fugiat alias. Assumenda inventore dolore harum quo quis veniam magni qui.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(30,'Libero consequatur.','Sed reprehenderit beatae necessitatibus rerum. Laborum in omnis neque voluptatum saepe. Culpa aliquam est saepe nihil omnis.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(31,'Non veritatis natus.','Tempora doloribus voluptatem voluptas accusamus ea. Incidunt sed sed dolor beatae debitis sint dolor. Nemo aliquam rerum iusto officiis.',500000,567,'2018-06-01 23:18:47','2018-06-01 23:18:47'),(32,'Beatae et officia.','Omnis qui sint aut. Atque soluta voluptatem rerum dignissimos mollitia beatae necessitatibus. Consequatur soluta ut delectus mollitia voluptatem consequatur libero.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(33,'Quia maxime.','Similique rerum vero et a tempore. Reiciendis omnis unde veritatis debitis nisi. Dicta illum quis labore dolor doloremque explicabo. Ut praesentium ut commodi expedita voluptatem.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(34,'Placeat sed soluta.','Laudantium vitae quo eum qui est accusantium. Provident voluptatibus culpa exercitationem sint aliquam corporis officiis. Quibusdam quasi nihil veritatis et laudantium corporis.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(35,'Perspiciatis.','Veniam sint accusantium eius tempora. Ipsa sed voluptatum cum aliquam blanditiis animi adipisci.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(36,'Laborum numquam.','Velit exercitationem ut voluptatem. Suscipit quia ipsum et aut rerum libero.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(37,'Eligendi ad totam.','Dolores non consectetur quia quo et at et. Voluptas velit placeat vero ex ut ut illo. Iure necessitatibus enim aut voluptatem itaque nihil accusantium. Rerum saepe est amet blanditiis et.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(38,'Nostrum odit aut et.','Facere occaecati dolorem atque iusto voluptate eaque. Reiciendis eum dicta ipsam molestias est perspiciatis in. Cumque libero inventore facere ut nihil ut sunt quis.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(39,'Asperiores iure.','Fugit quo veritatis nobis adipisci minus. Nostrum qui repudiandae voluptatem qui voluptatum. Sapiente tempore explicabo nobis architecto nostrum aspernatur. Sit praesentium atque eum.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(40,'Qui deserunt quis.','Iusto at at quos voluptatibus nemo quia aspernatur. Sit officiis corrupti ut. Deleniti dolore enim molestias cumque. Consequatur quam doloremque qui.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(41,'Error eos sunt.','Totam quibusdam et magnam sed exercitationem. Modi consequatur voluptatem temporibus praesentium et sit. In reiciendis saepe dolor.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(42,'Molestias ipsum.','Amet aut harum totam qui. Necessitatibus blanditiis doloremque debitis magni doloremque cumque. Eius quaerat illo cumque commodi odit.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(43,'Numquam doloribus.','Unde consequatur optio veniam quo. Debitis assumenda et eveniet eum nesciunt animi. Architecto placeat eum inventore est at occaecati eos.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(44,'Nulla qui officiis.','Nisi dolore optio et dolorem. Repellat doloribus est sit autem voluptate qui hic et. Mollitia voluptas cumque repudiandae explicabo quasi qui. Esse id id aliquid officiis maxime ratione et.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(45,'Dolor delectus et.','Natus ut ut eius. Aut laudantium eaque dolores quam est voluptatem reprehenderit. Doloremque ducimus pariatur culpa eum doloribus ut. Praesentium facere voluptas nihil ipsam.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(46,'Reiciendis eos.','Aspernatur ea sed assumenda quam voluptas aut. Cum voluptas dolor voluptatibus sed. Dolor qui aut esse quis deleniti.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(47,'Commodi non ad.','Ducimus necessitatibus nihil earum. Non omnis voluptatum inventore quaerat aut.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(48,'Fugiat nihil ipsam.','Neque deleniti dignissimos ea ut. Ad perspiciatis illum commodi et atque. Fuga consequatur ut repudiandae quis. Exercitationem unde corrupti corrupti sint nisi eum in eum.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(49,'Nisi at officiis.','Aut porro dignissimos pariatur nesciunt. Quia tempore ut consectetur voluptates et corrupti molestiae. Voluptas aut numquam qui molestiae quo ad.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(50,'Magnam asperiores.','Veritatis fugit quae amet ut. Nihil itaque esse suscipit aperiam quis possimus adipisci. Eaque eos quidem ex temporibus voluptas perferendis vitae. Qui ex natus commodi inventore quas voluptatem aut.',500000,567,'2018-06-01 23:18:48','2018-06-01 23:18:48'),(51,'Permen','candy',50000,20,'2018-06-01 23:29:30','2018-06-01 23:29:30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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

-- Dump completed on 2018-06-02 13:34:46
