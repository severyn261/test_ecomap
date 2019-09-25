-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: ecomap-db.cjc2siunmkts.us-east-2.rds.amazonaws.com    Database: ecomap_db
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `problem_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_date` int(11) unsigned NOT NULL,
  `updated_date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'blya dyadku ne strilyay',3,0,4,1568992013,NULL),(2,'Ne mozhna tak robyt\' !!!',3,0,6,1568992085,NULL),(11,'☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆☆',3,0,4,1568992868,NULL),(12,'☆☆☆☆☆☆☆☆☆☆☆☆',3,0,2,1568992871,NULL),(15,'Did you solve this issue????',3,0,2,1568996683,NULL),(16,'dont forget to save planet!',3,0,2,1568996706,NULL),(17,'we have so many comments under this issue',3,0,2,1568996731,NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'cleaning','Як організувати прибирання в парку?','Коротка інструкція про те, як органзувати прибирання в парку','<ol>\n    <li>Обійди територію парку\n      <ol>\n        <li>запиши собі місця найбільших засмічень</li>\n        <li>вибери місце з гарним орієнтиром для зустрічі з активістами</li>\n        <li>вибери місце зручне для під’їзду сміттєвоза</li>\n      </ol>\n    </li>\n    <li>Вибери зручний день і час для проведення прибирання протягом 2-3 годин. Домовся про це з адміністрацією парку, якщо така є</li>\n    <li>Домовся із перевізником про вивезення сміття в зазначений день і потрібний час із місця зручного для під’їзду сміттєвоза\n      <ol>\n        <li>Перевізнику відходів важливо, щоб вони були якісно посортовані ‐ домовся з ним про кількість фракцій і про те, які типи сміття можна класти разом з іншими</li>\n        <li>Домовся про мінімальну кількість відходів, яку готовий вивезти перевізник. В середньому за 2-3 години один учасник збирає 3-4 120-літрових пакети зі сміттям. Загалом же більше половини сміття буде змішане (деякі перевізники його не забирають принципово), а все інше буде окремо скло і окремо пластик у різних співвідношеннях (яке залежить від багатьох факторів)</li>\n        <li>Перевізнику важливо, щоб про нього написали (на сайті і в соц.мережах), що він зробив таку гарну справу ‐ допоміг вивезти відходи! Підготуйся зробити це і розказати про такі плани на зустрічі з його представником</li>\n        <li>Перевізник зможе краще виконати свою частину роботи, якщо матиме на руках карту із точними вказівками, куди їхати. <a href=\"http://purpose.com.ua/LDU/Maps.doc\">Ось приклад</a> такої карти (зроблено за допомогою Google Maps)</li>\n      </ol>\n    </li>\n\n    <li>Максимально широко повідом про заплановану акцію\n      <ol>\n        <li>в різних соціальних мережах</li>\n        <li>за допомогою об’яв на дошках для оголошень на будинках навколо парку</li>\n        <li>попроси друзів та знайомих поширити запрошення на акцію і прийти самим</li>\n        <li>Залучи на акцію найближчі до парку організації ‐ домовся про участь хоча б 5-10 чоловік від кожної:\n          <ol>\n            <li>школи</li>\n            <li>ВНЗ\n              <ol>\n                <li>За декілька днів до акції обов’язково особисто поговоріть із тими, хто приведе на акцію студентів або школярів ‐ важливо налаштувати цих керівників на позитивне ставлення до акції ‐ щоб вони саме так подавали її своїм підопічним (щоб участь в акції не була зіпсована негативним до неї ставленням!)</li>\n              </ol>\n            </li>\n            <li>громадські організації</li>\n            <li>компанії та підприємства\n              <ol>\n                <li>Організаціям та компаніям часто важливо, щоб про них написали (на сайті і в соц.мережах), що вони зробили таку гарну справу ‐ допомогли провести акцію! Підготуйся зробити це і розказати про такі плани на зустрічі з їх представниками</li>\n                <li>Ось приклад <a href=\"https://docs.google.com/document/pub?id=1DdguRFaLp3Mb5tl4AB4QnEZn2KZNiNi6i3HiPSaG3LQ\">партнерської пропозиції</a> і того, що партнер може <a href=\"https://docs.google.com/document/pub?id=1QMTIpVDrzE3zi8r4mxA4a42awDlUnSh3QHAarmq9IrY\">отримати за підтримку</a> акції</li>\n              </ol>\n            </li>\n            <li>відомих людей\n              <ol>\n                <li>Ось приклад <a href=\"https://docs.google.com/document/pub?id=1j9k5OZkg9Sq9SUALsDcm5ONga4MkjwcPlF9LEU2h13w\">пропозиції для відомої людини</a></li>\n              </ol>\n            </li>\n          </ol>\n        </li>\n      </ol>\n    </li>\n  \n\n    <li>Оціни можливу кількість учасників акції і забезпеч кожного матеріалами для прибирання (іх можна придбати за допомогою організацій з п.5)\n      <ol>\n        <li>Три пакети для сміття по 120 літрів кожен</li>\n        <li>Пара рукавичок з матерії</li>\n        <li>не обов’язково 0,5 літрів води</li>\n        <li>не обов’язково 1-2 вологих серветки або рідкий антисептик\n          <ul>\n            <li>Ось <a href=\"https://docs.google.com/spreadsheet/pub?hl=uk&amp;hl=uk&amp;key=0AiZ6hAt9NrE_dDhuR2hHTGN4NnFhMXFVNTM0QUZOOHc&amp;output=html\">приклад розрахунку бюджету</a> акції</li>\n          </ul>\n        </li>\n      </ol>\n    </li>\n\n    <li>Знайди собі 1-2 помічників. Чітко розподіліть між собою ролі під час проведення акції\n      <ol>\n        <li>інструктаж учасників про роздільний збір сміття і обережність поводження з ним\n          <ul>\n            <li>Ось <a href=\"https://docs.google.com/document/pub?id=1EPoVAX8_8m3MIf9p3xBlk9RRprY-Nw2r7qVeb_uW8hc\">приклад інструкції для учасників</a> ‐ краще її зачитати вголос (з листочків її не читають)</li>\n          </ul>\n        </li>\n        <li>видача матеріалів для прибирання</li>\n        <li>фотографування, запис відео-інтерв’ю</li>\n        <li>залучення до прибирання відвідувачів парку</li>\n        <li>зв’язок з водієм сміттєвоза</li>\n        <li>облік результатів акції (ось приклад анкети для координатораприбирання в парку)\n          <ol>\n            <li>кількість учасників прибирання ‐ їх краще рахувати під час видачі рукавиць</li><li><span>кількість зібраних пакетів з пластиком</span><br></li><li><span>кількість зібраних пакетів зі склом</span><br></li><li><span>кількість зібраних пакетів з іншим сміттям</span></li></ol>\n        </li>\n      </ol>\n    </li>\n  \n    <li>Проведи акцію</li>\n  </ol>\n  <p>Подякуй учасникам (у найкращих і найбільш свідомих бажано взяти контакти для подальшої співпраці) та залученим організаціям. Опублікуй подяку, результати акції, фото та записані відео-інтерв’ю в соціальних мережах і в блогах. Перешли на <a href=\"mailto:info@letsdoit.org.ua\">info@letsdoit.org.ua</a> результати акції та посилання на фотографії та відео.</p>\n  <p>Все про сміття та як з ним боротися знає аполітична некомерційна громадська ініціатива «Зробимо Україну чистою!», частина Всесвітнього руху <a href=\"http://letsdoitworld.org\">\"Let’s do it!\" (http://letsdoitworld.org)</a>.</p>\n  <p>Мета ініціативи ‐ докорінно змінити ставлення українців до життєвого простору, прищепити в суспільстві потребу не смітити та дбати про довкілля. Досягти її можна, змінивши повсякденні звички людей ‐ шляхом дій, спрямованих на створення в Україні чистоти і краси (працюючи над вирішенням проблеми, людина стає частиною рішення).</p>\n  <a href=\"http://letsdoit.org.ua/\">http://letsdoit.org.ua/</a>','прибирання, самоорганізація, чистота, волонтерствоб парк','Коротка інструкція про те, як органзувати прибирання в парку',1),(2,'illegal','Як зупинити незаконну забудову?','Коротка інструкція про те, як заборонити незаконну забудову','<p>Незаконні забудови — одна з найболючіших проблем жителів середніх та великих українських міст. Зневірені в ефективності будь-якого протесту проти дій забудовників, громадяни у кращому випадку звертаються за допомогою до громадських організацій чи політичних партій (які протестну енергію можуть використовувати у корисливих цілях), а в гіршому — просто безсило спостерігають за тим, як на місці дитячого майданчику чи скверу поряд з їхнім будинком виростає багатоповерхівка чи торговельно-розважальний монстр із заліза та бетону.</p>\n    <p>Отже, якщо поряд з вашим будинком поставили паркан та починають завозити будівельні матеріали, а вам це зовсім не до смаку, то вам потрібно:</p>\n    <p><i>Створити ініціативну групу.</i> Зрозумійте, що самотужки ви нічого змінити не зможете. При цьому не варто очікувати, що сусіди з великим ентузіазмом сприймуть ваші ідеї — розчарування в громадянській активності, породжене безліччю продажних пікетів та «майданів», занадто велике. Тому на початку вас буде підтримувати лічена кількість однодумців. Проте ваш щонайменший успіх у боротьбі із забудовою одразу призведе до зростання числа активістів.</p>\n    <p><i>Перевірити законність будівництва.</i> Згідно зі статтею 376 Цивільного кодексу України, будівництво є законним лише за наступних умов: воно здійснюється на спеціально відведеній для цього ділянці, має всі необхідні дозволи, проходить у цілковитій відповідності з проектом і без порушення стандартних будівельних норм і правил та за умови позитивного вердикту громадських слухань. У <a href=\"http://zakon0.rada.gov.ua/laws/show/1699-14\">Законі України \"Про планування і забудову територій\"</a>, ст. 23 написано: \"Планування окремої земельної ділянки, побудова на ньому будинків і споруд власниками або користувачами здійснюється з урахуванням інтересів інших власників або користувачів земельних ділянок, будинків і споруд”.  Недотримання будь-якої з цих вимог призводить до оголошення будівництва самочинним, після чого воно підлягає знесенню за рахунок забудовника.<b> Звертатися необхідно до місцевої адміністрації </b>та&nbsp;<a href=\"http://www.dabi.gov.ua/\">управління державного архітектурно-будівельного контролю</a>&nbsp;(гаряча лінія: 0-800-210-011). У разі істотного відхилення від проекту, яке порушує суспільні інтереси, суд за позовом відповідного органу державної влади чи місцевого самоврядування може змусити забудовника провести перебудову. Позивачами у такій справі можуть бути лише вищезазначені органи. Звідси порада: з самого початку боротьби проінформуйте про неї місцеву владу, наприклад, написавши листа і підкріпивши його якомога більшою кількістю підписів місцевих жителів.</p>\n    <p>У будь-якому разі вам необхідно буде розширювати коло учасників протесту. Для цього знаходьте своїх «колег по нещастю» в інших районах міста, проводьте збори, обмінюйтесь досвідом. Розширення числа активістів неодмінно породить проблему лідерства. Але практика свідчить, що антизабудовні кампанії є більш ефективними, коли не мають конкретних лідерів, яких можна підкупити чи іншим чином нейтралізувати. Обмежтеся колом взаємозамінних координаторів, але всі важливі рішення ухвалюйте винятково загальними зборами.</p>\n    <p>Низовий рух, який стрімко розширюється, неодмінно приверне увагу громадських організацій та (особливо!) політичних партій. Так чи інакше вони будуть намагатися використати вас у своїх цілях. Вам важливо цього не допустити, натомість зробити те саме з ними. Партії та організації часто володіють вкрай необхідними для вас ресурсами, насамперед організаційними, і можуть бути корисними. Але в будь-якому разі співпрацюйте з ними обережно і одразу припиняйте співпрацю, якщо помічаєте з їхнього боку відвертий піар. Конфіденційною інформацією намагайтеся особливо не ділитися — немає жодної гарантії, що за певну винагороду від забудовника вони елементарно не «здадуть» йому всі дані.</p>\n    <p><i>Час грає на вашу користь.</i> Будь-яке затягування процесу забудови — вам на руку. В умовах економічної кризи та жорсткої конкуренції забудовник не зможе дозволити довгий простій якогось об’єкту, до якого ви його змушуєте, і йому доведеться відступити.</p>\n    <p><br></p>','незаконно, забудова, зупинити, держава, самоорганізація','Коротка інструкція про те, як заборонити незаконну забудову.',1);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` enum('GET','PUT','POST','DELETE') NOT NULL,
  `modifier` enum('Any','Own','None') NOT NULL DEFAULT 'None',
  `resource_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,'GET','Any',1,'Вхід на головну сторінку сайту'),(2,'POST','Any',17,'Логін на сайт'),(3,'POST','Any',16,'Кінець сесії сайту'),(4,'GET','Any',16,'Вихід з сайту'),(5,'POST','Any',6,'Перевірка існування емейлу'),(6,'POST','Any',14,'Реєстрація на сайті'),(7,'GET','Own',20,'Детальна інформація профілю користувача'),(8,'GET','Any',20,'Детальна інформація профілю всіх користувачів'),(9,'GET','Any',11,'Переглядати ресурси сайту в адмінці'),(10,'POST','Any',11,'Додавати ресурси доступу в адмінці'),(11,'GET','Any',3,'Перегляди список прав в адмінці'),(12,'GET','Any',7,'Перегляд прав доступу в адмінці'),(13,'POST','Any',7,'Додавання прав доступу в адмінці'),(14,'POST','Any',2,'Привязати права доступу до ролі'),(15,'GET','Any',2,'Перегляд прав доступу конкретної ролі'),(16,'GET','Any',18,'Перегляд списку ролей сайту'),(17,'POST','Any',18,'Створення нової ролі користувачів на сайті'),(18,'PUT','Any',2,'Зміна прав доступу до ресурсу сайту для конкретної ролі'),(19,'GET','Any',13,'Перегляд довідкових ресурсів сайту (F.A.Q)'),(20,'DELETE','Any',11,'Видалення ресурсів доступу сайту із кабінету адміністратора'),(21,'PUT','Any',11,'Редагування ресурсів доступу сайту'),(22,'DELETE','Any',7,'Видалення прав доступу до ресурсу сайту в кабінеті адміністратора'),(23,'PUT','Any',7,'Редагування прав доступу до ресурсів сайту'),(24,'DELETE','Any',2,'Видалення прав доступу для ролі користувача'),(25,'PUT','Any',18,'Редагування назви ролі користувачів сайту'),(26,'DELETE','Any',18,'Видалення ролі користувача із бази даних'),(27,'GET','Any',15,'Перегляд доданих оповіщень про проблеми на мапі сайту'),(28,'GET','Any',19,'Перегляд детальної інформаціі оповіщення про проблему на мапі'),(29,'GET','Own',23,'Перегляд оповіщень користувача в кабінеті'),(30,'GET','Any',23,'Перегляд всіх оповіщень в кабінеті'),(31,'GET','Any',25,'Перегляд довідкових ресурсів сайту (F.A.Q)'),(32,'GET','Any',10,'Перегляд ролей користувачів'),(33,'POST','Any',10,'Зміна ролі користувача'),(34,'PUT','Any',22,'Редагування сторінки з довідковою інформацією'),(35,'POST','Any',8,'Додавання нової сторінки довідкової інформації'),(37,'DELETE','Any',21,'Видалення сторінки довідкової інформації'),(38,'GET','Any',12,'Відображення списку користувачів'),(39,'GET','Any',24,'Логін на сайт за допомогою сторонніх сервісів OAuth'),(40,'POST','Any',24,'Забезпечення авторизаціі на сайті за допомогою OAuth'),(41,'POST','Any',5,'Додавання оповіщень про проблеми на мапу'),(42,'POST','Any',26,'Додавання фотографії до оповіщення про проблему'),(43,'POST','Any',4,'Зміна паролю профілю'),(44,'POST','Any',9,'Зміна фотографії профілю'),(45,'DELETE','Any',9,'Видалення фото профілю'),(46,'POST','Any',27,'Відновлення забутого паролю профілю'),(47,'GET','Any',28,'Перегляд всіх доданих ововіщень про проблеми на сайті'),(52,'POST','Any',31,'Додавання коментарів до існуючої проблеми'),(53,'GET','Any',33,'Перегляд коментарів доданих проблем'),(54,'GET','Any',34,'Підтвердження відновлення паролю'),(55,'PUT','Any',27,'Зміна паролю при запиті через емейл'),(56,'DELETE','Any',35,'Відправка мейлу на видалення користувача'),(57,'GET','Any',36,'Підтвердження видалення користувача'),(58,'DELETE','Any',37,'Видалення користувача з сайту'),(59,'GET','Any',38,'Перегляд типу проблеми'),(60,'DELETE','Any',38,'Видалення типу проблеми'),(61,'POST','Any',38,'Додавання типу проблеми'),(62,'PUT','Any',38,'Редагування типу проблеми'),(63,'POST','Any',41,'Додавання підписок на проблеми у профіль'),(64,'DELETE','Any',42,'Видалення підписки на проблему'),(65,'GET','Any',43,'Перегляд підписок користувача в кабінеті'),(66,'POST','Any',44,'Зміна псевдоніму користувача'),(67,'GET','Any',45,'Отримати відповіді до коментарів'),(68,'GET','Any',46,'Пошук проблем юзера по нікнейму'),(69,'GET','Any',47,'Пошук підписок юзера по нікнейму'),(70,'GET','Any',48,'Перегляд адміном підписок користувача в кабінеті'),(71,'GET','Any',49,'Пошук коментарів по псевдоніму.'),(72,'POST','Any',50,'Перевірка існування псевдоніму.'),(73,'GET','Any',51,'Типи проблем для фільтрації.'),(74,'GET','Any',52,'Перегляд коментарів всіх користувачів як адмін.'),(76,'POST','Any',54,'Редагування коментаря.'),(77,'GET','Any',55,'Отримати тимчасові дані'),(78,'DELETE','Any',55,'Стерти всі тимчасові дані'),(79,'GET','Any',56,'Радіус для типів проблем.'),(80,'GET','Any',57,'Перегляд статистики по даті.'),(81,'GET','Any',58,'Статистика, топ 10 найпопулярніших Ecomap проблем'),(82,'GET','Any',59,'Статистика, топ 10 найважливіших Ecomap проблем'),(83,'GET','Any',60,'Статистика за весь період'),(84,'GET','Any',61,'Статистика, топ 10 найобговорюваніших Ecomap проблем'),(85,'DELETE','Any',62,'Видалення коментаря.'),(86,'PUT','Any',64,'Видалення проблеми юзером(проблема переноситься на аноніма).'),(87,'PUT','Any',63,'Редагування проблеми.'),(88,'DELETE','Any',64,'Видалення проблеми.'),(89,'PUT','Any',65,'Зміна статусу та підтвердження проблеми.'),(90,'DELETE','Any',66,'Видалення фото проблеми.'),(91,'GET','Any',67,'Генерувати XML для EcoMap аплікації');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `problem_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,'/uploads/problems/21/ec9e78b754b41c805f21dd41d3d33873.png','Саня за кермом',21,1);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) NOT NULL,
  `proposal` varchar(255) NOT NULL,
  `severity` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '1',
  `status` enum('Solved','Unsolved') NOT NULL DEFAULT 'Unsolved',
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_date` int(11) unsigned NOT NULL,
  `problem_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `update_date` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (1,'Немиті літаки','Помийте іх','none','1','Unsolved',49.544,31.569,1,1439177111,3,1,NULL),(2,'Сміття забагато','content','none','5','Unsolved',48.44,29.468,1,1441866311,2,1,NULL),(3,'Дядечко з ружжом','content','none','7','Unsolved',48.34,29.468,1,1450006860,6,1,NULL),(4,'Відлетіли кудись чайки','content','none','3','Unsolved',50.54,28.45,1,1452202915,4,1,NULL),(5,'Шалені пандочки','Заспокійливе ім','none','2','Unsolved',49.44,31.468,1,1452506860,5,1,NULL),(6,'Пересихання річок','content','none','4','Unsolved',48.54,29.468,1,1456006860,6,1,NULL),(7,'Логово змій','content','none','3','Unsolved',48.74,29.468,1,1455904560,7,1,NULL),(8,'Вирубка лісів','content','none','3','Unsolved',48.84,29.468,1,1455900060,1,1,NULL),(9,'Дача Януковича','content','none','3','Unsolved',50.54,28.468,1,1455900860,3,1,NULL),(10,'Занадто довго дощ','content','none','5','Unsolved',51.54,28.45,1,1455006860,7,1,NULL),(11,'Забруднення нафтою','content','none','1','Unsolved',51.74,28.45,1,1458002915,6,1,NULL),(12,'Дикі тигри','content','none','4','Unsolved',51.55,28.45,1,1458102915,5,1,NULL),(13,'Забагато сміття','content','none','6','Solved',51.44,28.45,1,1458120915,2,1,NULL),(14,'Шторм на морі','content','none','3','Unsolved',49.34,32.45,1,1458122915,1,1,NULL),(15,'Проблема сміття у Львові','Побудувати сміттєпереробний завод','none','3','Unsolved',49.9083,24.0388,1,1425524584,2,1,NULL),(16,'Побудова у парковій зоні','Відсутність місць для відпочинку','none','3','Unsolved',50.4622,30.4884,1,1432327402,3,1,NULL),(17,'Акули в Дніпрі','Небезпечно плавати разом з такими маленькими рибками','none','3','Unsolved',50.4424,30.5684,1,1434793411,4,1,NULL),(18,'Вмирають буйволи','Їх встає все менше і менше','none','4','Unsolved',48.7989,23.4448,1,1441138942,5,1,NULL),(19,'Вбили всіх оленів','А там олені, олені не бриті і не голені...','none','4','Unsolved',48.4798,23.5684,1,1455228691,6,1,NULL),(20,'Крим наш','Забрали Крим, проте скоро він повернеться','none','4','Unsolved',45.4817,34.0247,1,1457613808,7,1,NULL),(21,'DEMO 3','Вже скоро','Зробити як Саня','1','Unsolved',49.8327,23.9993,1,1569057918,7,1,1569058147);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_activity`
--

DROP TABLE IF EXISTS `problem_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_date` int(11) unsigned NOT NULL,
  `problem_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `activity_type` enum('Added','Removed','Updated','Vote') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_activity`
--

LOCK TABLES `problem_activity` WRITE;
/*!40000 ALTER TABLE `problem_activity` DISABLE KEYS */;
INSERT INTO `problem_activity` VALUES (1,1568992013,3,4,'Updated'),(2,1568992085,3,6,'Updated'),(3,1568992104,3,2,'Updated'),(4,1568992165,21,4,'Added'),(5,1568992537,21,2,'Updated'),(6,1568992654,21,2,'Updated'),(7,1568992675,3,4,'Updated'),(8,1568992685,3,2,'Updated'),(9,1568992756,5,4,'Updated'),(10,1568992759,5,2,'Updated'),(11,1568992793,1,2,'Updated'),(12,1568992868,3,4,'Updated'),(13,1568992871,3,2,'Updated'),(14,1568993030,22,4,'Added'),(15,1568993033,23,4,'Added'),(16,1568993112,23,4,'Updated'),(17,1568993183,23,2,'Updated'),(18,1568996683,3,2,'Updated'),(19,1568996706,3,2,'Updated'),(20,1568996731,3,2,'Updated'),(21,1569057918,21,1,'Added');
/*!40000 ALTER TABLE `problem_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_type`
--

DROP TABLE IF EXISTS `problem_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `radius` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_type`
--

LOCK TABLES `problem_type` WRITE;
/*!40000 ALTER TABLE `problem_type` DISABLE KEYS */;
INSERT INTO `problem_type` VALUES (1,'1.png','Проблеми лісів',500),(2,'2.png','Сміттєзвалища',500),(3,'3.png','Незаконна забудова',500),(4,'4.png','Проблеми водойм',500),(5,'5.png','Загрози біорізноманіттю',500),(6,'6.png','Браконьєрство',500),(7,'7.png','Інші проблеми',500);
/*!40000 ALTER TABLE `problem_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource_name` (`resource_name`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'/'),(8,'/api/addResource'),(3,'/api/all_permissions'),(28,'/api/all_usersProblem'),(52,'/api/all_users_comments'),(24,'/api/authorize/:provider'),(54,'/api/change_comment'),(44,'/api/change_nickname'),(4,'/api/change_password'),(58,'/api/countSubscriptions'),(21,'/api/deleteResource/:idPage'),(62,'/api/delete_comment'),(36,'/api/delete_user_page/:hash'),(35,'/api/delete_user_request'),(22,'/api/editResource/:idPage'),(6,'/api/email_exist'),(13,'/api/getTitles'),(17,'/api/login'),(16,'/api/logout'),(50,'/api/nickname_exist'),(47,'/api/nickname_subscriptions'),(7,'/api/permissions'),(26,'/api/photo/:idProblem'),(66,'/api/photo_delete'),(31,'/api/problem/add_comment'),(15,'/api/problems'),(61,'/api/problems_comments_stats'),(56,'/api/problems_radius/:idType'),(59,'/api/problems_severity_stats'),(33,'/api/problem_comments/:idProblem'),(65,'/api/problem_confirmation'),(64,'/api/problem_delete'),(19,'/api/problem_detailed_info/:idProblem'),(63,'/api/problem_edit'),(5,'/api/problem_post'),(45,'/api/problem_subcomments/:idParent'),(38,'/api/problem_type'),(51,'/api/problem_type_filtration'),(14,'/api/register'),(11,'/api/resources'),(25,'/api/resources/:alias'),(27,'/api/restore_password'),(34,'/api/restore_password_page/:hash'),(18,'/api/roles'),(2,'/api/role_permissions'),(46,'/api/search_usersProblem'),(57,'/api/statisticPieChar'),(60,'/api/statistic_all'),(42,'/api/subscription_delete'),(41,'/api/subscription_post'),(55,'/api/tempdata'),(23,'/api/usersProblem/:idUser'),(48,'/api/usersSubscriptions'),(43,'/api/usersSubscriptions/:idUser'),(9,'/api/user_avatar'),(37,'/api/user_delete'),(20,'/api/user_detailed_info/:idUser'),(12,'/api/user_page'),(10,'/api/user_roles'),(67,'/sitemap'),(49,'api/search_users_comments');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(3,'moderator'),(2,'user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,8),(8,1,9),(9,1,10),(10,1,11),(11,1,12),(12,1,13),(13,1,14),(14,1,15),(15,1,16),(16,1,17),(17,1,18),(18,1,19),(19,1,20),(20,1,21),(21,1,22),(22,1,23),(23,1,24),(24,1,25),(25,1,26),(26,1,27),(27,1,28),(28,1,30),(29,1,31),(30,1,32),(31,1,33),(32,1,34),(33,1,35),(34,1,37),(35,1,38),(36,1,39),(37,1,40),(38,1,41),(39,1,42),(40,1,43),(41,1,44),(42,1,45),(43,1,46),(44,1,47),(46,1,52),(47,1,53),(48,1,54),(49,1,55),(50,1,56),(51,1,57),(52,1,58),(53,1,59),(54,1,60),(55,1,61),(56,1,62),(57,1,63),(58,1,64),(59,1,65),(60,1,66),(61,1,67),(62,1,68),(63,1,69),(64,1,70),(65,1,72),(66,1,73),(67,1,74),(69,1,76),(70,1,77),(71,1,78),(72,1,79),(73,1,80),(74,1,81),(75,1,82),(76,1,83),(77,1,84),(78,1,85),(79,1,87),(80,1,88),(81,2,1),(82,2,2),(83,2,3),(84,2,4),(85,2,5),(86,2,6),(87,2,7),(88,2,19),(89,2,27),(90,2,28),(91,2,29),(92,2,31),(93,2,39),(94,2,40),(95,2,41),(96,2,42),(97,2,43),(98,2,44),(99,2,45),(100,2,46),(102,2,52),(103,2,53),(104,2,54),(105,2,55),(106,2,56),(107,2,57),(108,2,58),(109,2,59),(110,2,63),(111,2,64),(112,2,65),(113,2,66),(114,2,67),(115,2,68),(116,2,69),(117,2,70),(118,2,72),(119,2,73),(120,2,74),(122,2,76),(123,2,79),(124,2,80),(125,2,81),(126,2,82),(127,2,83),(128,2,84),(129,2,85),(130,2,86),(131,3,1),(132,3,2),(133,3,3),(134,3,4),(135,3,5),(136,3,6),(137,3,72),(138,3,73),(139,3,74),(140,3,75),(141,3,80),(142,3,81),(143,3,82),(144,3,83),(145,3,84),(146,3,85),(147,3,87),(148,3,88),(149,4,1),(150,2,87),(151,3,89),(152,1,89),(153,2,90),(154,3,90),(155,1,90),(156,3,7),(157,3,19),(158,3,27),(159,3,28),(160,3,29),(161,3,30),(162,3,31),(163,3,34),(164,3,35),(165,3,37),(166,3,38),(167,3,39),(168,3,40),(169,3,41),(170,3,42),(171,3,43),(172,3,44),(173,3,45),(174,3,46),(175,3,47),(176,3,52),(177,3,53),(178,3,54),(179,3,55),(180,3,56),(181,3,57),(182,3,58),(183,3,59),(184,3,61),(185,3,62),(186,3,63),(187,3,64),(188,3,65),(189,3,66),(190,3,67),(191,3,68),(192,3,69),(193,3,71),(194,3,76),(195,3,79),(196,3,60),(197,3,70),(198,1,91),(199,2,91),(200,3,91);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problem_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `date_subscriptions` int(11) NOT NULL,
  `severity` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,2,1,17000002,'2'),(2,1,1,2,'1'),(3,5,1,1230000,'5'),(4,3,4,1568992075,'1');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `oauth_provider` varchar(100) DEFAULT NULL,
  `oauth_uid` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','admin','admin@gmail.com','/uploads/user_profile/userid_1/profile_id1.png','9a658604ff31e6c369431be9f49361df',NULL,NULL),(2,'anon','anonimovich','anonchik','anonymous@i.ua',NULL,'9a658604ff31e6c369431be9f49361df',NULL,NULL),(3,'Severyn','Vashchuk','sevko','severyn@test.com','/uploads/user_profile/userid_3/profile_id3.png','122c0b939fca3410bed21e571c8e71ff',NULL,NULL),(4,'fuckoff','fuckoff','DIMA','fuckoff@gmail.com','/uploads/user_profile/userid_4/profile_id4.png','58beac1ad2e356ba38c4ad30637c1f45',NULL,NULL),(5,'Yaroslav','Kerychynskyi','gare','gare@i.ua',NULL,'c52bafa39c7f405811f02d18a1703e2a',NULL,NULL),(6,'Di','Kuzmenko','DiKu','fdjkghd@df.com','/uploads/user_profile/userid_6/profile_id6.png','941cb3e14902d7e84f1a6feb7c3c0e51',NULL,NULL),(7,'SeverynTop','ZaSvoiGroshi','ZTebePyvo','severynmolodets@gmail.com',NULL,'719ba3a7fec483c65be7fee64d93814d',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation`
--

DROP TABLE IF EXISTS `user_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_operation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash_sum` varchar(255) NOT NULL,
  `creation_date` int(11) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `type` enum('password','delete') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation`
--

LOCK TABLES `user_operation` WRITE;
/*!40000 ALTER TABLE `user_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,2),(5,5,2),(6,6,2),(7,7,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 10:17:43
