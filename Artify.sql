-- MySQL dump 10.13  Distrib 8.2.0, for macos13 (arm64)
--
-- Host: localhost    Database: Artify
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artist` (
  `ArtistId` int NOT NULL AUTO_INCREMENT,
  `Bio` varchar(500) DEFAULT NULL,
  `ArtistStyle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ArtistId`),
  CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`ArtistId`) REFERENCES `User` (`UId`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES (71,'Vincent van Gogh, a Dutch post-impressionist painter, is among the most famous and influential figures in Western art history. His work is noted for its bold color, emotional honesty, and rough beauty. Van Gogh struggled with mental illness throughout his life and remained poor and virtually unknown throughout his life.','Post-Impressionism'),(72,'Pablo Picasso, a Spanish painter, sculptor, and one of the most influential artists of the 20th century, co-founded the Cubist movement. His work is categorized into periods, including the Blue Period, Rose Period, and his involvement in Surrealism. Picasso\'s innovation in art brought him universal renown.','Cubism, Surrealism'),(73,'Leonardo da Vinci, an Italian polymath of the High Renaissance, was a painter, draftsman, engineer, scientist, theorist, sculptor, and architect. His works are epitomized by \"The Last Supper\" and \"Mona Lisa\". Da Vinci is widely considered one of the greatest painters of all time and a symbol of the Renaissance.','High Renaissance'),(74,'Claude Monet, the founder of French Impressionist painting, is known for his dedication to capturing the movement of life and nature. His works like \"Impression, Sunrise\" and series of \"Water Lilies\" had a great impact on the evolution of modern art. Monet\'s exploration of light and color was pioneering.','Impressionism'),(75,'Salvador Dalí, a prominent Spanish surrealist painter, was known for his striking and bizarre images. His best-known work, \"The Persistence of Memory\", features melting clocks. Dalí’s expansive artistic repertoire included film, sculpture, and photography.','Surrealism'),(76,'Georgia O’Keeffe, an American modernist artist, was known for her paintings of enlarged flowers, New York skyscrapers, and New Mexico landscapes. O’Keeffe has been recognized as the \"Mother of American modernism\". Her art style is characterized by vivid colors and bold forms.','Modernism'),(77,'Frida Kahlo, a Mexican painter known for her many portraits, self-portraits, and works inspired by the nature and artifacts of Mexico. Her works are often characterized by their vibrant colors and mix of realism and symbolism. She is celebrated for her depiction of the female experience and form.','Surrealism, Symbolism'),(78,'Jackson Pollock, an influential American painter and a major figure in the abstract expressionist movement. He was well known for his unique style of drip painting. Pollock\'s dramatic techniques and action paintings, such as \"Autumn Rhythm\", \"Blue Poles\", and \"Convergence\", revolutionized the world of modern art.','Abstract Expressionism'),(79,'Andy Warhol, a leading figure in the visual art movement known as Pop Art. His works explore the relationship between artistic expression, culture, and advertisement. Warhol is known for his iconic works like \"Campbell\'s Soup Cans\" and \"Marilyn Diptych\", which challenge the concepts of art.','Pop Art'),(80,'Michelangelo, an Italian sculptor, painter, architect, and poet of the High Renaissance, exerted an unparalleled influence on the development of Western art. His works, including the \"Sistine Chapel Ceiling\" and \"David\", are among some of the most famous in art history.','Renaissance'),(81,'Rembrandt, a Dutch painter and etcher, is generally considered one of the greatest painters and printmakers in European art history. His works, such as \"The Night Watch\", are famous for their vivid realism and emotional depth. Rembrandt\'s contribution to art came in a period known as the Dutch Golden Age.','Baroque'),(82,'Johannes Vermeer, a Dutch Baroque Period painter who specialized in domestic interior scenes of middle-class life. Vermeer is particularly renowned for his masterly treatment and use of light in his work. \"Girl with a Pearl Earring\" is among his most famous.','Baroque'),(83,'Gustav Klimt, an Austrian symbolist painter, noted for his paintings, murals, sketches, and other objets d\'art. Klimt\'s primary subject was the female body, and his works are marked by a frank eroticism. His most famous works include \"The Kiss\" and \"Portrait of Adele Bloch-Bauer I\".','Symbolism'),(84,'Henri Matisse, a French artist, known for both his use of color and his fluid and original draughtsmanship. He was a draughtsman, printmaker, and sculptor, but is known primarily as a painter. Matisse is regarded, along with Picasso, as one of the artists who helped to define the revolutionary developments in the visual arts.','Fauvism'),(85,'Raphael, an Italian painter and architect of the High Renaissance. His work is admired for its clarity of form, ease of composition, and visual achievement of the Neoplatonic ideal of human grandeur. Raphael\'s most famous works include \"The School of Athens\" and his numerous Madonna paintings.','High Renaissance'),(86,'Caravaggio, an Italian painter who created a name for himself with his realistic observation of the human state, both physical and emotional, and dramatic use of lighting. His influence on the new Baroque style was profound and can be seen in his works like \"Judith Beheading Holofernes\".','Baroque'),(87,'Francisco Goya, a Spanish romantic painter and printmaker regarded as the last of the Old Masters and the first of the moderns. Goya was a court painter to the Spanish Crown and a chronicler of history. He has been regarded as both a Romantic and a precursor to the Expressionist movement.','Romanticism'),(88,'Edvard Munch, a Norwegian painter whose works explores themes of love, fear, death, melancholia, and anxiety. His best-known work, \"The Scream\", has become one of the iconic images of world art, often interpreted as representing the universal anxiety of modern man.','Expressionism'),(89,'Titian, an Italian painter of the Venetian school, known for his versatility with subjects, ranging from mythological to religious scenes. He was a master of color, and his technique had a lasting influence on Western art. Titian\'s works include \"Venus of Urbino\" and \"Assumption of the Virgin\".','Renaissance'),(90,'Paul Cézanne, a French artist and Post-Impressionist painter whose work laid the foundations of the transition from the 19th-century conception of artistic endeavor to a new and radically different world of art in the 20th century. Cézanne\'s often repetitive, exploratory brushstrokes are highly characteristic.','Post-Impressionism'),(91,'Jan van Eyck, an Early Netherlandish painter active in Bruges and one of the most significant Northern Renaissance artists of the 15th century. Van Eyck is often credited with inventing oil painting technique. His most famous work is \"The Arnolfini Portrait\".','Northern Renaissance'),(92,'Albrecht Dürer, a German painter, printmaker, and theorist of the German Renaissance. Dürer established his reputation and influence across Europe in his twenties due to his high-quality woodcut prints. He was also known for his watercolors and engravings.','Northern Renaissance'),(93,'Wassily Kandinsky, a Russian painter and art theorist credited with painting one of the first recognized purely abstract works. His work points to the emotional power of color and abstract form. Kandinsky\'s artistry also encompassed his theoretical writings on color theory and spirituality.','Abstract Art'),(94,'Edgar Degas, a French Impressionist artist famous for his pastel drawings and oil paintings. Degas also produced bronze sculptures, prints, and drawings. He is especially identified with the subject of dance; more than half of his works depict dancers.','Impressionism'),(95,'Peter Paul Rubens, a Flemish artist and diplomat, considered the most influential artist of the Flemish Baroque tradition. Rubens specialized in making altarpieces, portraits, landscapes, and history paintings of mythological and allegorical subjects.','Baroque'),(96,'Marc Chagall, a Russian-French artist of Belarusian Jewish origin, associated with several major artistic styles. Chagall\'s works were noted for their emotional impact, often incorporating elements of fantasy and dreams in a unique blend of symbolism and vivid color.','Modernism'),(97,'Eugène Delacroix, a central figure in the Romantic movement, known for his expressive brushstrokes and emphasis on color rather than clarity of outline and form. Delacroix\'s passion for the exotic is evident in his dramatic and colorful scenes, often depicting historical or contemporary events. His masterpieces include \"Liberty Leading the People\" and \"Death of Sardanapalus.\"','Romanticism'),(98,'Sandro Botticelli was a key figure in the early Renaissance, renowned for his poetic and graceful paintings. His works are known for their linear elegance and sensuous depiction of mythological and religious subjects. Botticelli’s most famous works include \"The Birth of Venus\" and \"Primavera,\" which remain icons of artistic achievement.','Early Renaissance'),(99,'Gustave Courbet, a pivotal figure in the development of Realism, sought to challenge conventional art by depicting unidealized peasants and workers. His bold, unorthodox subjects and his development of a realist style were groundbreaking. His famous works include \"The Stone Breakers\" and \"A Burial at Ornans,\" which depicted the realities of rural life.','Realism'),(100,'Hieronymus Bosch, a Dutch/Netherlandish painter, is celebrated for his detailed, symbolic, and often fantastical religious works. Known for his use of fantastical imagery to illustrate moral and religious concepts, Bosch\'s most famous work is \"The Garden of Earthly Delights,\" a triptych portraying Eden, earthly pleasures, and hell.','Northern Renaissance'),(101,'Banksy is an anonymous England-based street artist, political activist, and film director. His works of political and social commentary have been featured on streets, walls, and bridges of cities throughout the world.','Street Art'),(102,'Ai Weiwei is a Chinese contemporary artist and activist. His work often reflects political and social commentary, particularly his criticism of the Chinese government. His art encompasses a broad range of mediums, including sculpture, installation, photography, and film.','Contemporary Art'),(103,'Yayoi Kusama is a Japanese contemporary artist who works primarily in sculpture and installation, but is also active in painting, performance, film, fashion, poetry, fiction, and other arts. Her work is based on conceptual art and shows some attributes of feminism, minimalism, surrealism, and abstract expressionism.','Contemporary Art'),(104,'Jeff Koons is an American artist known for working with popular culture subjects and his reproductions of banal objects, such as balloon animals produced in stainless steel with mirror-finish surfaces. He is widely regarded as one of the most important, influential, controversial, and highest-paid artists of the post-war era.','Contemporary Art'),(105,'Damien Hirst is an English artist, entrepreneur, and art collector. He is one of the Young British Artists who dominated the art scene in the UK during the 1990s. He is reportedly the United Kingdom\'s richest living artist, with his wealth valued at £215m in the Sunday Times Rich List.','Contemporary Art');
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artwork`
--

DROP TABLE IF EXISTS `Artwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artwork` (
  `ArtworkID` int NOT NULL AUTO_INCREMENT,
  `ATitle` varchar(100) DEFAULT NULL,
  `AStyle` varchar(50) DEFAULT NULL,
  `AType` varchar(50) DEFAULT NULL,
  `Image` longblob,
  `Description` varchar(500) DEFAULT NULL,
  `IsSold` tinyint(1) DEFAULT NULL,
  `VisitorID` int DEFAULT NULL,
  `SaleDate` date DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Gallery` int DEFAULT NULL,
  PRIMARY KEY (`ArtworkID`),
  KEY `VisitorID` (`VisitorID`),
  KEY `Gallery` (`Gallery`),
  CONSTRAINT `artwork_ibfk_1` FOREIGN KEY (`VisitorID`) REFERENCES `Visitor` (`VisitorID`),
  CONSTRAINT `artwork_ibfk_2` FOREIGN KEY (`Gallery`) REFERENCES `Gallery` (`GalleryID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artwork`
--

LOCK TABLES `Artwork` WRITE;
/*!40000 ALTER TABLE `Artwork` DISABLE KEYS */;
INSERT INTO `Artwork` VALUES (1,'Starry Night','Post-Impressionism','Oil on Canvas',NULL,'A vibrant night sky over a small town',1,106,'2024-01-22',450000,1),(2,'Sunflowers','Post-Impressionism','Oil on Canvas',NULL,'Vibrant sunflowers in a vase',0,NULL,NULL,300000,1),(3,'Guernica','Cubism','Oil on Canvas',NULL,'A powerful political statement on the tragedies of war',0,NULL,NULL,500000,2),(4,'The Weeping Woman','Cubism','Oil on Canvas',NULL,'A depiction of sorrow and pain',1,106,'2024-01-22',350000,2),(5,'Mona Lisa','High Renaissance','Oil on Wood',NULL,'The most famous portrait with an enigmatic smile',0,NULL,NULL,400000,3),(6,'The Last Supper','High Renaissance','Mural',NULL,'Iconic religious scene with dramatic composition',0,NULL,NULL,480000,3),(7,'Water Lilies','Impressionism','Oil on Canvas',NULL,'A series of approximately 250 oil paintings of water lilies',0,NULL,NULL,320000,4),(8,'Impression, Sunrise','Impressionism','Oil on Canvas',NULL,'The painting that led to the name of the Impressionist movement',1,106,'2024-01-22',280000,4),(9,'The Persistence of Memory','Surrealism','Oil on Canvas',NULL,'A surreal landscape with melting clocks',0,NULL,NULL,450000,5),(10,'Swans Reflecting Elephants','Surrealism','Oil on Canvas',NULL,'A classic example of Dalí’s double images',0,NULL,NULL,410000,5),(11,'Blue and Green Music','Modernism','Oil on Canvas',NULL,'An abstract blend of color suggesting musical rhythm',0,NULL,NULL,270000,6),(12,'Red Canna','Modernism','Oil on Canvas',NULL,'Vibrant depiction of a red flower, showcasing O’Keeffe’s distinctive style',0,NULL,NULL,260000,6),(13,'The Two Fridas','Surrealism','Oil on Canvas',NULL,'A double self-portrait representing Frida’s dual heritage',0,NULL,NULL,350000,7),(14,'Self-Portrait with Thorn Necklace and Hummingbird','Surrealism','Oil on Canvas',NULL,'A symbolic self-portrait reflecting personal suffering',0,NULL,NULL,300000,7),(15,'No. 5, 1948','Abstract Expressionism','Oil on Fiberboard',NULL,'An iconic piece of abstract expressionist art',0,NULL,NULL,480000,8),(16,'Convergence','Abstract Expressionism','Oil on Canvas',NULL,'A vibrant example of Pollock’s unique drip painting technique',1,106,'2024-01-22',425000,8),(17,'Campbell’s Soup Cans','Pop Art','Synthetic Polymer Paint on Canvas',NULL,'A pivotal piece in the development of Pop Art',0,NULL,NULL,390000,9),(18,'Marilyn Diptych','Pop Art','Acrylic on Canvas',NULL,'Warhol’s famous portrayal of Marilyn Monroe',0,NULL,NULL,460000,9),(19,'David','Renaissance','Marble Sculpture',NULL,'A masterpiece of Renaissance sculpture by Michelangelo',0,NULL,NULL,500000,10),(20,'Sistine Chapel Ceiling','Renaissance','Fresco',NULL,'A cornerstone work of High Renaissance art',0,NULL,NULL,490000,10),(21,'The Night Watch','Baroque','Oil on Canvas',NULL,'A famous 1642 painting by Rembrandt, depicting a city guard',0,NULL,NULL,310000,11),(22,'The Storm on the Sea of Galilee','Baroque','Oil on Canvas',NULL,'Rembrandt’s only known seascape',0,NULL,NULL,280000,11),(23,'Girl with a Pearl Earring','Baroque','Oil on Canvas',NULL,'Vermeer’s most famous work, often referred to as the Mona Lisa of the North',0,NULL,NULL,330000,12),(24,'The Milkmaid','Baroque','Oil on Canvas',NULL,'A depiction of a domestic kitchen maid by Vermeer',0,NULL,NULL,300000,12),(25,'The Kiss','Symbolism','Oil and Gold Leaf on Canvas',NULL,'Klimt’s iconic piece symbolizing love and intimacy',0,NULL,NULL,470000,13),(26,'Portrait of Adele Bloch-Bauer I','Symbolism','Oil, Silver, and Gold on Canvas',NULL,'One of Klimt’s most acclaimed works',0,NULL,NULL,450000,13),(27,'The Dance','Fauvism','Oil on Canvas',NULL,'Matisse’s vibrant depiction of dancing figures',0,NULL,NULL,320000,14),(28,'Woman with a Hat','Fauvism','Oil on Canvas',NULL,'A colorful portrait by Matisse, known for its radical use of color',0,NULL,NULL,290000,14),(29,'The School of Athens','High Renaissance','Fresco',NULL,'Raphael’s masterpiece depicting philosophy, featuring famous thinkers',0,NULL,NULL,480000,15),(30,'Sistine Madonna','High Renaissance','Oil on Canvas',NULL,'One of Raphael’s most famous Madonnas',0,NULL,NULL,410000,15),(31,'Judith Beheading Holofernes','Baroque','Oil on Canvas',NULL,'Caravaggio’s dramatic and intense depiction of the biblical story',0,NULL,NULL,350000,16),(32,'Basket of Fruit','Baroque','Oil on Canvas',NULL,'A still life by Caravaggio, remarkable for its realism',0,NULL,NULL,270000,16),(33,'The Third of May 1808','Romanticism','Oil on Canvas',NULL,'Goya’s powerful portrayal of the Spanish resistance to Napoleon',0,NULL,NULL,400000,17),(34,'Saturn Devouring His Son','Romanticism','Oil Mural transferred to Canvas',NULL,'A haunting image by Goya, depicting the myth of Saturn',0,NULL,NULL,360000,17),(35,'The Scream','Expressionism','Oil, Tempera, and Pastel on Cardboard',NULL,'Munch’s iconic expression of human anxiety',0,NULL,NULL,420000,18),(36,'Madonna','Expressionism','Oil on Canvas',NULL,'Edvard Munch’s evocative artwork blending sensuality and spirituality',0,NULL,NULL,380000,18),(37,'Venus of Urbino','Renaissance','Oil on Canvas',NULL,'Titian’s celebrated portrayal of the goddess Venus',0,NULL,NULL,460000,19),(38,'Assumption of the Virgin','Renaissance','Oil on Canvas',NULL,'A masterpiece by Titian, depicting the Virgin Mary’s ascent to heaven',0,NULL,NULL,440000,19),(39,'The Basket of Apples','Post-Impressionism','Oil on Canvas',NULL,'A still life by Cézanne, showcasing his unique perspective',0,NULL,NULL,340000,20),(40,'Mont Sainte-Victoire','Post-Impressionism','Oil on Canvas',NULL,'One of Cézanne’s series of paintings featuring the French mountain',0,NULL,NULL,370000,20),(41,'The Arnolfini Portrait','Northern Renaissance','Oil on Oak',NULL,'Jan van Eyck’s portrait, known for its intricate detail and symbolism',0,NULL,NULL,310000,1),(42,'The Ghent Altarpiece','Northern Renaissance','Oil on Wood',NULL,'A large and complex early 15th-century polyptych by van Eyck',0,NULL,NULL,350000,1),(43,'Melencolia I','Northern Renaissance','Engraving',NULL,'Albrecht Dürer’s famous engraving, rich in symbolism',0,NULL,NULL,270000,2),(44,'Knight, Death, and the Devil','Northern Renaissance','Engraving',NULL,'Dürer’s remarkable copper engraving depicting a knight’s journey',0,NULL,NULL,290000,2),(45,'Composition VIII','Abstract Art','Oil on Canvas',NULL,'Kandinsky’s abstract composition, known for its geometric forms',0,NULL,NULL,330000,3),(46,'On White II','Abstract Art','Oil on Canvas',NULL,'A pioneering abstract work by Kandinsky, emphasizing on form and color',0,NULL,NULL,320000,3),(47,'The Ballet Class','Impressionism','Oil on Canvas',NULL,'Degas’ depiction of young ballet dancers',0,NULL,NULL,340000,4),(48,'L\'Absinthe','Impressionism','Oil on Canvas',NULL,'A provocative painting by Degas, portraying the loneliness in modern cities',0,NULL,NULL,280000,4),(49,'The Descent from the Cross','Baroque','Oil on Canvas',NULL,'Rubens’ dramatic Baroque masterpiece',0,NULL,NULL,360000,5),(50,'The Massacre of the Innocents','Baroque','Oil on Wood',NULL,'A powerful and emotional painting by Rubens',0,NULL,NULL,400000,5),(51,'I and the Village','Modernism','Oil on Canvas',NULL,'Chagall’s early modernist work, reflecting his Russian-Jewish heritage',0,NULL,NULL,310000,6),(52,'The Birthday','Modernism','Oil on Canvas',NULL,'Marc Chagall’s romantic portrayal of love and celebration',0,NULL,NULL,290000,6),(53,'Liberty Leading the People','Romanticism','Oil on Canvas',NULL,'Delacroix’s iconic representation of the French Revolution',0,NULL,NULL,420000,7),(54,'Death of Sardanapalus','Romanticism','Oil on Canvas',NULL,'A dramatic and vibrant work by Delacroix, depicting the last moments of Sardanapalus',0,NULL,NULL,400000,7),(55,'The Birth of Venus','Early Renaissance','Tempera on Canvas',NULL,'Botticelli’s famous depiction of the goddess Venus emerging from the sea',0,NULL,NULL,480000,8),(56,'Primavera','Early Renaissance','Tempera on Panel',NULL,'A complex and allegorical work by Botticelli, full of mythological symbolism',0,NULL,NULL,460000,8),(57,'The Stone Breakers','Realism','Oil on Canvas',NULL,'Courbet’s groundbreaking painting, portraying the life of common peasants',0,NULL,NULL,320000,9),(58,'A Burial at Ornans','Realism','Oil on Canvas',NULL,'One of Courbet’s major works, depicting a provincial funeral',0,NULL,NULL,340000,9),(59,'The Garden of Earthly Delights','Northern Renaissance','Oil on Oak',NULL,'Hieronymus Bosch’s triptych, famous for its detailed and fantastical imagery',0,NULL,NULL,450000,20),(60,'The Haywain Triptych','Northern Renaissance','Oil on Wood',NULL,'A Bosch masterpiece, depicting a journey from paradise to hell',0,NULL,NULL,430000,10),(61,'Girl With Balloon','Street Art','Stencil',NULL,'A well-known series of stencil murals depicting a young girl with a red, heart-shaped balloon.',0,NULL,NULL,300000,2),(62,'The Flower Thrower','Street Art','Stencil',NULL,'Depicts a rioter in throwing a bouquet of flowers.',0,NULL,NULL,350000,2),(63,'Sunflower Seeds','Contemporary Art','Sculpture',NULL,'Millions of small ceramic sunflower seeds, each hand-painted.',0,NULL,NULL,500000,3),(64,'Dropping a Han Dynasty Urn','Contemporary Art','Photography',NULL,'A series of three black and white photographs showing Ai dropping a 2000-year-old ceremonial urn.',0,NULL,NULL,200000,3),(65,'Infinity Mirrored Room','Contemporary Art','Installation',NULL,'A mirror-lined chamber with a dazzling and seemingly endless LED light display.',0,NULL,NULL,1000000,4),(66,'Pumpkin','Contemporary Art','Sculpture',NULL,'A large sculpture of a pumpkin, adorned with her signature polka dot motif.',0,NULL,NULL,800000,4),(67,'Balloon Dog','Contemporary Art','Sculpture',NULL,'A series of large sculptures resembling balloon animals, created in stainless steel with mirror-finish surfaces.',0,NULL,NULL,1500000,5),(68,'Rabbit','Contemporary Art','Sculpture',NULL,'A stainless steel sculpture with a highly reflective surface, shaped like a rabbit.',0,NULL,NULL,900000,5),(69,'For the Love of God','Contemporary Art','Sculpture',NULL,'A platinum cast of a human skull encrusted with diamonds.',0,NULL,NULL,10000000,6),(70,'The Physical Impossibility of Death in the Mind of Someone Living','Contemporary Art','Installation',NULL,'A tiger shark preserved in formaldehyde in a vitrine.',1,106,'2024-01-22',8000000,6);
/*!40000 ALTER TABLE `Artwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClosedDays`
--

DROP TABLE IF EXISTS `ClosedDays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ClosedDays` (
  `GalleryID` int NOT NULL AUTO_INCREMENT,
  `ClosedDay` varchar(10) NOT NULL,
  PRIMARY KEY (`GalleryID`,`ClosedDay`),
  CONSTRAINT `closeddays_ibfk_1` FOREIGN KEY (`GalleryID`) REFERENCES `Gallery` (`GalleryID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClosedDays`
--

LOCK TABLES `ClosedDays` WRITE;
/*!40000 ALTER TABLE `ClosedDays` DISABLE KEYS */;
INSERT INTO `ClosedDays` VALUES (1,'Thursday'),(1,'Tuesday'),(2,'Monday'),(3,'Wednesday'),(4,'Thursday'),(5,'Friday'),(5,'Saturday'),(6,'Saturday'),(7,'Sunday'),(8,'Monday'),(9,'Tuesday'),(10,'Sunday'),(10,'Wednesday'),(11,'Thursday'),(12,'Friday'),(13,'Saturday'),(14,'Sunday'),(15,'Monday'),(16,'Monday'),(16,'Tuesday'),(17,'Wednesday'),(18,'Thursday'),(19,'Friday'),(20,'Saturday');
/*!40000 ALTER TABLE `ClosedDays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CreateArt`
--

DROP TABLE IF EXISTS `CreateArt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CreateArt` (
  `ArtistID` int NOT NULL,
  `ArtworkID` int NOT NULL,
  PRIMARY KEY (`ArtistID`,`ArtworkID`),
  KEY `ArtworkID` (`ArtworkID`),
  CONSTRAINT `createart_ibfk_1` FOREIGN KEY (`ArtistID`) REFERENCES `Artist` (`ArtistId`),
  CONSTRAINT `createart_ibfk_2` FOREIGN KEY (`ArtworkID`) REFERENCES `Artwork` (`ArtworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CreateArt`
--

LOCK TABLES `CreateArt` WRITE;
/*!40000 ALTER TABLE `CreateArt` DISABLE KEYS */;
INSERT INTO `CreateArt` VALUES (71,1),(71,2),(72,3),(72,4),(73,5),(73,6),(74,7),(74,8),(75,9),(75,10),(76,11),(76,12),(77,13),(77,14),(78,15),(78,16),(79,17),(79,18),(80,19),(80,20),(81,21),(81,22),(82,23),(82,24),(83,25),(83,26),(84,27),(84,28),(85,29),(85,30),(86,31),(86,32),(87,33),(87,34),(88,35),(88,36),(89,37),(89,38),(90,39),(90,40),(91,41),(91,42),(92,43),(92,44),(93,45),(93,46),(94,47),(94,48),(95,49),(95,50),(96,51),(96,52),(97,53),(97,54),(98,55),(98,56),(99,57),(99,58),(100,59),(100,60),(101,61),(101,62),(102,63),(102,64),(103,65),(103,66),(104,67),(104,68),(105,69),(105,70);
/*!40000 ALTER TABLE `CreateArt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Display`
--

DROP TABLE IF EXISTS `Display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Display` (
  `ArtworkID` int NOT NULL,
  `ExhibitionID` int NOT NULL,
  PRIMARY KEY (`ArtworkID`,`ExhibitionID`),
  KEY `ExhibitionID` (`ExhibitionID`),
  CONSTRAINT `display_ibfk_1` FOREIGN KEY (`ArtworkID`) REFERENCES `Artwork` (`ArtworkID`),
  CONSTRAINT `display_ibfk_2` FOREIGN KEY (`ExhibitionID`) REFERENCES `Exhibition` (`ExhibitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Display`
--

LOCK TABLES `Display` WRITE;
/*!40000 ALTER TABLE `Display` DISABLE KEYS */;
INSERT INTO `Display` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,2),(30,2),(1,3),(2,3),(3,3),(4,3),(5,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,3),(40,3),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,5),(22,5),(23,5),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(30,5),(31,5),(32,5),(33,5),(34,5),(35,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(36,6),(37,6),(38,6),(39,6),(40,6),(11,7),(12,7),(13,7),(14,7),(15,7),(16,7),(17,7),(18,7),(19,7),(20,7),(21,7),(22,7),(23,7),(24,7),(25,7),(26,8),(27,8),(28,8),(29,8),(30,8),(31,8),(32,8),(33,8),(34,8),(35,8),(36,8),(37,8),(38,8),(39,8),(40,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),(11,9),(12,9),(13,9),(14,9),(15,9),(16,10),(17,10),(18,10),(19,10),(20,10),(21,10),(22,10),(23,10),(24,10),(25,10),(26,10),(27,10),(28,10),(29,10),(30,10),(1,11),(2,11),(3,11),(4,11),(5,11),(31,11),(32,11),(33,11),(34,11),(35,11),(36,11),(37,11),(38,11),(39,11),(40,11),(6,12),(7,12),(8,12),(9,12),(10,12),(11,12),(12,12),(13,12),(14,12),(15,12),(16,12),(17,12),(18,12),(19,12),(20,12),(21,13),(22,13),(23,13),(24,13),(25,13),(26,13),(27,13),(28,13),(29,13),(30,13),(31,13),(32,13),(33,13),(34,13),(35,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(8,14),(9,14),(10,14),(36,14),(37,14),(38,14),(39,14),(40,14),(11,15),(12,15),(13,15),(14,15),(15,15),(16,15),(17,15),(18,15),(19,15),(20,15),(21,15),(22,15),(23,15),(24,15),(25,15),(26,16),(27,16),(28,16),(29,16),(30,16),(31,16),(32,16),(33,16),(34,16),(35,16),(36,16),(37,16),(38,16),(39,16),(40,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(10,17),(11,17),(12,17),(13,17),(14,17),(15,17),(16,18),(17,18),(18,18),(19,18),(20,18),(21,18),(22,18),(23,18),(24,18),(25,18),(26,18),(27,18),(28,18),(29,18),(30,18),(1,19),(2,19),(3,19),(4,19),(5,19),(31,19),(32,19),(33,19),(34,19),(35,19),(36,19),(37,19),(38,19),(39,19),(40,19),(6,20),(7,20),(8,20),(9,20),(10,20),(11,20),(12,20),(13,20),(14,20),(15,20),(16,20),(17,20),(18,20),(19,20),(20,20),(21,21),(22,21),(23,21),(24,21),(25,21),(26,21),(27,21),(28,21),(29,21),(30,21),(31,21),(32,21),(33,21),(34,21),(35,21),(1,22),(2,22),(3,22),(4,22),(5,22),(6,22),(7,22),(8,22),(9,22),(10,22),(36,22),(37,22),(38,22),(39,22),(40,22),(11,23),(12,23),(13,23),(14,23),(15,23),(16,23),(17,23),(18,23),(19,23),(20,23),(21,23),(22,23),(23,23),(24,23),(25,23),(26,24),(27,24),(28,24),(29,24),(30,24),(31,24),(32,24),(33,24),(34,24),(35,24),(36,24),(37,24),(38,24),(39,24),(40,24),(1,25),(2,25),(3,25),(4,25),(5,25),(6,25),(7,25),(8,25),(9,25),(10,25),(11,25),(12,25),(13,25),(14,25),(15,25),(16,26),(17,26),(18,26),(19,26),(20,26),(21,26),(22,26),(23,26),(24,26),(25,26),(26,26),(27,26),(28,26),(29,26),(30,26),(1,27),(2,27),(3,27),(4,27),(5,27),(31,27),(32,27),(33,27),(34,27),(35,27),(36,27),(37,27),(38,27),(39,27),(40,27),(6,28),(7,28),(8,28),(9,28),(10,28),(11,28),(12,28),(13,28),(14,28),(15,28),(16,28),(17,28),(18,28),(19,28),(20,28),(21,29),(22,29),(23,29),(24,29),(25,29),(26,29),(27,29),(28,29),(29,29),(30,29),(31,29),(32,29),(33,29),(34,29),(35,29),(1,30),(2,30),(3,30),(4,30),(5,30),(6,30),(7,30),(8,30),(9,30),(10,30),(36,30),(37,30),(38,30),(39,30),(40,30),(11,31),(12,31),(13,31),(14,31),(15,31),(16,31),(17,31),(18,31),(19,31),(20,31),(21,31),(22,31),(23,31),(24,31),(25,31),(26,32),(27,32),(28,32),(29,32),(30,32),(31,32),(32,32),(33,32),(34,32),(35,32),(36,32),(37,32),(38,32),(39,32),(40,32),(1,33),(2,33),(3,33),(4,33),(5,33),(6,33),(7,33),(8,33),(9,33),(10,33),(11,33),(12,33),(13,33),(14,33),(15,33),(16,34),(17,34),(18,34),(19,34),(20,34),(21,34),(22,34),(23,34),(24,34),(25,34),(26,34),(27,34),(28,34),(29,34),(30,34),(1,35),(2,35),(3,35),(4,35),(5,35),(31,35),(32,35),(33,35),(34,35),(35,35),(36,35),(37,35),(38,35),(39,35),(40,35),(6,36),(7,36),(8,36),(9,36),(10,36),(11,36),(12,36),(13,36),(14,36),(15,36),(16,36),(17,36),(18,36),(19,36),(20,36),(21,37),(22,37),(23,37),(24,37),(25,37),(26,37),(27,37),(28,37),(29,37),(30,37),(31,37),(32,37),(33,37),(34,37),(35,37),(1,38),(2,38),(3,38),(4,38),(5,38),(6,38),(7,38),(8,38),(9,38),(10,38),(36,38),(37,38),(38,38),(39,38),(40,38),(11,39),(12,39),(13,39),(14,39),(15,39),(16,39),(17,39),(18,39),(19,39),(20,39),(21,39),(22,39),(23,39),(24,39),(25,39),(26,40),(27,40),(28,40),(29,40),(30,40),(31,40),(32,40),(33,40),(34,40),(35,40),(36,40),(37,40),(38,40),(39,40),(40,40);
/*!40000 ALTER TABLE `Display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Exhibition`
--

DROP TABLE IF EXISTS `Exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Exhibition` (
  `ExhibitionID` int NOT NULL AUTO_INCREMENT,
  `ETitle` varchar(50) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ExhibitionID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exhibition`
--

LOCK TABLES `Exhibition` WRITE;
/*!40000 ALTER TABLE `Exhibition` DISABLE KEYS */;
INSERT INTO `Exhibition` VALUES (1,'Impressionist Dreams','2024-01-15','2024-03-10','In Person'),(2,'Sculptures in Time','2024-02-01','2024-04-15','Online'),(3,'Modern Art Revival','2024-03-20','2024-06-20','In Person'),(4,'Ancient Civilizations','2024-04-05','2024-07-05','Online'),(5,'Renaissance Revisited','2024-05-10','2024-08-15','In Person'),(6,'Contemporary Visions','2024-06-01','2024-09-01','Online'),(7,'Exploring Expressionism','2024-07-15','2024-10-10','In Person'),(8,'Digital Art Showcase','2024-08-20','2024-11-20','Online'),(9,'Baroque Brilliance','2024-09-05','2024-12-05','In Person'),(10,'Futurism and Beyond','2024-10-15','2024-12-31','Online'),(11,'Cubist Conceptions','2024-11-01','2025-01-30','In Person'),(12,'Photography Evolved','2024-12-10','2025-03-10','Online'),(13,'Surrealist Sensations','2025-01-15','2025-04-15','In Person'),(14,'Abstract Adventures','2025-02-01','2025-05-01','Online'),(15,'Neo-Classical Nuances','2025-03-20','2025-06-20','In Person'),(16,'Art of the Middle Ages','2025-04-10','2025-07-10','Online'),(17,'Avant-Garde Artistry','2025-05-15','2025-08-15','In Person'),(18,'Portraits of the Past','2025-06-05','2025-09-05','Online'),(19,'Landscapes Through Time','2025-07-01','2025-10-01','In Person'),(20,'Street Art Spectacle','2025-08-15','2025-11-15','Online'),(21,'Watercolor Wonders','2025-09-10','2025-12-10','In Person'),(22,'Graphic Design Gala','2025-10-20','2026-01-20','Online'),(23,'Art Deco Delight','2025-11-15','2026-02-15','In Person'),(24,'Sculptural Studies','2025-12-01','2026-03-01','Online'),(25,'Pop Art Phenomenon','2026-01-10','2026-04-10','In Person'),(26,'Expressionist Explorations','2026-02-20','2026-05-20','Online'),(27,'Historical Portraiture','2026-03-15','2026-06-15','In Person'),(28,'Digital Art Dynamics','2026-04-05','2026-07-05','Online'),(29,'Rococo Revival','2026-05-01','2026-08-01','In Person'),(30,'Visionary Video Art','2026-06-15','2026-09-15','Online'),(31,'Classical Sculptures','2026-07-10','2026-10-10','In Person'),(32,'Minimalist Movements','2026-08-01','2026-11-01','Online'),(33,'Art Nouveau Narratives','2026-09-20','2026-12-20','In Person'),(34,'Environmental Art Exhibition','2026-10-15','2027-01-15','Online'),(35,'Collage and Composition','2026-11-10','2027-02-10','In Person'),(36,'Performance Art Perspectives','2026-12-05','2027-03-05','Online'),(37,'Cinematic Art Concepts','2027-01-01','2027-04-01','In Person'),(38,'Urban Art Uncovered','2027-02-15','2027-05-15','Online'),(39,'Gallery of Glass','2027-03-10','2027-06-10','In Person'),(40,'Folk Art Festival','2027-04-20','2027-07-20','Online');
/*!40000 ALTER TABLE `Exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gallery`
--

DROP TABLE IF EXISTS `Gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gallery` (
  `GalleryID` int NOT NULL AUTO_INCREMENT,
  `GName` varchar(50) DEFAULT NULL,
  `GAddress` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`GalleryID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gallery`
--

LOCK TABLES `Gallery` WRITE;
/*!40000 ALTER TABLE `Gallery` DISABLE KEYS */;
INSERT INTO `Gallery` VALUES (1,'Louvre Museum','Rue de Rivoli, 75001 Paris, France'),(2,'The British Museum','Great Russell St, London WC1B 3DG, UK'),(3,'The Metropolitan Museum of Art','1000 5th Ave, New York, NY 10028, USA'),(4,'Vatican Museums','Viale Vaticano, 00165 Vatican City'),(5,'The Uffizi Gallery','Piazzale degli Uffizi, 6, 50122 Firenze FI, Italy'),(6,'The Prado Museum','Calle de Ruiz de Alarcón, 23, 28014 Madrid, Spain'),(7,'State Hermitage Museum','Palace Square, 2, St Petersburg, Russia, 190000'),(8,'Rijksmuseum','Museumstraat 1, 1071 XX Amsterdam, Netherlands'),(9,'Tate Modern','Bankside, London SE1 9TG, UK'),(10,'National Gallery of Art','Constitution Ave NW, Washington, DC 20565, USA'),(11,'Museo Nacional Centro de Arte Reina Sofía','Calle de Sta. Isabel, 52, 28012 Madrid, Spain'),(12,'Guggenheim Museum Bilbao','Abandoibarra Etorb., 2, 48009 Bilbo, Bizkaia, Spain'),(13,'Musée d\'Orsay','1 Rue de la Légion d\'Honneur, 75007 Paris, France'),(14,'National Gallery','Trafalgar Square, Charing Cross, London WC2N 5DN, UK'),(15,'The Art Institute of Chicago','111 S Michigan Ave, Chicago, IL 60603, USA'),(16,'Centre Pompidou','Place Georges-Pompidou, 75004 Paris, France'),(17,'Museo del Prado','Calle de Ruiz de Alarcon, 23, 28014 Madrid, Spain'),(18,'National Palace Museum','No. 221, Sec 2, Zhi Shan Rd, Shilin District, Taipei City, Taiwan 111'),(19,'Victoria and Albert Museum','Cromwell Rd, Knightsbridge, London SW7 2RL, UK'),(20,'Museum of Modern Art (MoMA)','11 W 53rd St, New York, NY 10019, USA');
/*!40000 ALTER TABLE `Gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review` (
  `UserID` int NOT NULL,
  `ArtworkID` int NOT NULL,
  `Rating` int DEFAULT NULL,
  PRIMARY KEY (`UserID`,`ArtworkID`),
  KEY `ArtworkID` (`ArtworkID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UId`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`ArtworkID`) REFERENCES `Artwork` (`ArtworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,30,4),(1,47,3),(2,24,3),(2,29,5),(2,30,4),(3,32,5),(4,33,4),(4,37,3),(4,41,5),(4,60,4),(5,20,5),(5,40,5),(5,54,3),(6,16,4),(6,45,5),(6,59,4),(7,5,4),(7,20,5),(8,49,5),(9,3,5),(9,26,5),(9,40,3),(11,29,4),(12,10,4),(12,22,5),(13,6,3),(13,14,4),(13,16,4),(13,47,4),(14,10,4),(14,25,4),(14,46,5),(14,48,4),(14,57,5),(17,24,4),(17,42,4),(18,5,4),(18,19,4),(18,34,4),(18,42,5),(18,50,4),(19,12,3),(19,20,5),(19,26,3),(19,45,4),(20,40,4),(20,56,3),(21,2,4),(21,15,4),(21,21,3),(21,38,3),(21,49,4),(22,23,5),(23,11,3),(23,27,4),(23,28,4),(23,51,3),(23,58,4),(24,29,4),(24,44,4),(26,22,3),(27,4,5),(27,8,3),(27,32,5),(30,56,5),(30,59,4),(31,14,4),(31,43,4),(32,31,3),(32,55,4),(33,3,4),(33,7,5),(33,25,3),(33,33,4),(33,38,4),(33,46,4),(34,2,4),(34,16,3),(34,21,4),(34,35,3),(35,1,3),(35,8,4),(35,27,3),(35,28,4),(36,9,4),(36,37,5),(36,43,5),(37,9,4),(37,15,3),(37,26,3),(37,45,5),(38,1,4),(38,52,4),(39,11,5),(40,32,3),(40,38,4),(41,14,5),(42,22,5),(43,6,3),(43,19,4),(45,1,4),(45,15,4),(45,18,3),(45,25,3),(46,10,5),(46,18,4),(46,47,4),(47,7,4),(47,34,4),(47,43,5),(47,52,5),(47,56,4),(48,4,5),(48,17,5),(48,57,3),(49,27,3),(49,59,3),(49,60,3),(50,11,3),(50,48,4),(51,2,3),(51,4,5),(51,17,5),(51,36,3),(51,44,3),(51,48,3),(52,24,5),(53,18,3),(53,28,4),(53,39,3),(54,8,3),(54,53,3),(55,13,4),(55,23,4),(55,51,4),(55,58,3),(56,5,3),(56,34,4),(56,35,3),(56,49,3),(57,46,4),(57,55,5),(57,60,5),(58,6,3),(58,12,4),(58,58,4),(59,19,4),(59,41,3),(59,53,3),(59,54,3),(60,50,4),(60,53,3),(61,12,5),(61,50,5),(62,42,5),(62,52,3),(62,55,4),(64,31,4),(64,39,3),(64,51,3),(65,30,4),(65,36,5),(66,3,3),(66,7,4),(66,31,4),(66,35,5),(66,36,4),(66,54,3),(66,57,5),(67,13,3),(67,17,4),(67,33,3),(67,39,5),(68,9,3),(68,23,3),(69,13,5),(69,41,4),(69,44,4),(70,21,3),(70,37,5);
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Review_Comments`
--

DROP TABLE IF EXISTS `Review_Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Review_Comments` (
  `UserID` int NOT NULL,
  `ArtworkID` int NOT NULL,
  `Comment` varchar(500) NOT NULL,
  PRIMARY KEY (`UserID`,`ArtworkID`,`Comment`),
  KEY `ArtworkID` (`ArtworkID`),
  CONSTRAINT `review_comments_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UId`),
  CONSTRAINT `review_comments_ibfk_2` FOREIGN KEY (`ArtworkID`) REFERENCES `Artwork` (`ArtworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review_Comments`
--

LOCK TABLES `Review_Comments` WRITE;
/*!40000 ALTER TABLE `Review_Comments` DISABLE KEYS */;
INSERT INTO `Review_Comments` VALUES (41,1,'Van Gogh’s brushwork is stunning in this piece.'),(101,1,'A mesmerizing night sky, truly captivating.'),(102,1,'Starry Night evokes such powerful emotions.'),(32,2,'The vibrancy of the sunflowers is remarkable.'),(59,2,'Feels like a sunny day in a field.'),(103,2,'An uplifting and warm portrayal of nature.'),(18,3,'Picasso’s masterpiece, both haunting and compelling.'),(104,3,'Guernica is a profound statement on war.'),(105,3,'The monochromatic palette intensifies the impact.'),(23,4,'Captures the essence of despair beautifully.'),(34,4,'A striking expression of grief and sorrow.'),(42,4,'The Weeping Woman\'s emotions are so raw.'),(3,5,'Da Vinci’s use of sfumato technique is masterful.'),(11,5,'A timeless piece that captivates everyone.'),(53,5,'Mona Lisa’s smile is truly enigmatic.'),(44,6,'The Last Supper’s composition is revolutionary.'),(53,6,'Da Vinci’s portrayal of this biblical scene is iconic.'),(69,6,'Each apostle’s expression is captured perfectly.'),(4,7,'Monet’s Water Lilies are a soothing sight.'),(9,7,'Feels like stepping into a serene garden.'),(60,7,'The play of light and shadow is brilliant.'),(24,8,'The harborside view is so peaceful.'),(26,8,'Monet’s brushstrokes create a stunning visual effect.'),(59,8,'Impression, Sunrise makes you feel the dawn.'),(8,9,'Dalí’s dreamscapes are fascinating.'),(28,9,'The Persistence of Memory is surreal.'),(64,9,'Melting clocks in a desert, an intriguing concept.'),(35,10,'Swans Reflecting Elephants is a visual paradox.'),(42,10,'A clever play on reflections and reality.'),(69,10,'Dalí’s creativity knows no bounds.'),(12,21,'The details in this painting are so lifelike.'),(20,21,'The Night Watch is a captivating historical scene.'),(37,21,'Rembrandt’s use of light and shadow is extraordinary.'),(51,22,'The Storm on the Sea of Galilee is so dynamic and powerful.'),(54,22,'Feel the storm’s fury in Rembrandt’s brushwork.'),(63,22,'An immersive and dramatic seascape.'),(32,23,'Vermeer’s masterpiece, her gaze is haunting.'),(36,23,'Girl with a Pearl Earring has a mysterious allure.'),(53,23,'Such simplicity yet so captivating.'),(44,24,'The colors and light in this painting are incredible.'),(52,24,'A beautiful depiction of everyday life.'),(60,24,'The Milkmaid is a testament to Vermeer’s talent.'),(16,25,'The Kiss is a perfect blend of romance and art.'),(35,25,'A timeless portrayal of love and passion.'),(52,25,'Klimt’s use of gold leaf is stunning.'),(13,26,'Klimt’s ornamental style is so unique.'),(19,26,'The detail and gold in this painting are extraordinary.'),(63,26,'Portrait of Adele Bloch-Bauer I is mesmerizing.'),(27,27,'Feels like the figures could leap off the canvas.'),(27,27,'The Dance is full of vibrant energy.'),(58,27,'Matisse’s bold colors are so expressive.'),(2,28,'Woman with a Hat is a riot of colors.'),(4,28,'An avant-garde portrayal of beauty.'),(53,28,'Matisse’s expressionism in this piece is striking.'),(38,29,'A grand and thought-provoking fresco.'),(61,29,'The School of Athens is a Renaissance triumph.'),(63,29,'Raphael’s depiction of philosophers is unparalleled.'),(34,30,'The cherubs at the bottom are so iconic.'),(46,30,'Raphael’s skill in this painting is awe-inspiring.'),(54,30,'Sistine Madonna’s beauty is divine.'),(4,31,'Caravaggio’s dramatic style is so evident here.'),(14,31,'Judith Beheading Holofernes is both shocking and powerful.'),(39,31,'A captivating and intense biblical scene.'),(23,32,'The fruit’s texture and color are incredibly vivid.'),(27,32,'Caravaggio’s still life is so detailed and lifelike.'),(40,32,'Basket of Fruit is stunning in its realism.'),(6,33,'An emotional and powerful historical painting.'),(15,33,'The Third of May 1808 is a haunting war scene.'),(47,33,'Goya’s depiction of the horror of war is impactful.'),(2,34,'Saturn Devouring His Son is disturbing yet compelling.'),(54,34,'Goya’s imagination in this work is both dark and profound.'),(58,34,'The intensity of this painting is unforgettable.'),(8,35,'Munch’s use of color and form is extraordinary.'),(23,35,'The Scream captures existential angst like no other.'),(47,35,'A haunting portrayal of human emotion.'),(35,36,'A provocative and unconventional depiction of Madonna.'),(64,36,'Munch’s expressionist style is very evident in this work.'),(70,36,'Madonna’s blend of the sacred and the erotic is intriguing.'),(1,37,'Titian’s use of color and composition is stunning.'),(43,37,'A sensuous and beautiful Renaissance painting.'),(53,37,'Venus of Urbino is a masterful depiction of the female form.'),(3,38,'Assumption of the Virgin is an awe-inspiring work.'),(14,38,'The use of color and light is exceptional.'),(58,38,'Titian’s depiction of this religious scene is magnificent.'),(18,39,'A fascinating play of shapes and shadows.'),(33,39,'The Basket of Apples is a still life like no other.'),(55,39,'Cézanne’s unique perspective is intriguing.'),(38,40,'Cézanne’s landscape paintings are unparalleled.'),(56,40,'A peaceful and calming depiction of nature.'),(65,40,'Mont Sainte-Victoire has such a serene beauty.'),(11,41,'The Arnolfini Portrait’s detail is extraordinary.'),(35,41,'Van Eyck’s realism in this painting is breathtaking.'),(64,41,'A captivating glimpse into the 15th century.'),(37,42,'The Ghent Altarpiece is a stunning piece of art history.'),(41,42,'An incredible altarpiece, rich in symbolism.'),(41,42,'Van Eyck’s mastery of oil painting is on full display.'),(5,43,'Dürer’s engraving technique is masterful.'),(5,43,'Melencolia I’s symbolism is intriguing and deep.'),(10,43,'A thought-provoking work of art.'),(32,44,'Dürer’s attention to detail is remarkable.'),(40,44,'A powerful representation of the human condition.'),(52,44,'Knight, Death, and the Devil is hauntingly beautiful.'),(42,45,'Kandinsky’s abstract art is both bold and beautiful.'),(44,45,'Composition VIII’s use of geometric shapes is mesmerizing.'),(56,45,'A vibrant and dynamic painting.'),(12,46,'An engaging and complex abstract piece.'),(35,46,'On White II is a fantastic example of abstract expression.'),(46,46,'Kandinsky’s use of color and form is innovative.'),(9,47,'The Ballet Class captures the grace of dancers perfectly.'),(30,47,'A beautiful glimpse into the world of ballet.'),(69,47,'Degas’ portrayal of ballet dancers is iconic.'),(2,48,'L\'Absinthe’s portrayal of urban isolation is striking.'),(7,48,'Captures the mood of Parisian life in the 19th century.'),(62,48,'Degas’ realism in this painting is poignant.'),(6,49,'Rubens’ mastery of Baroque artistry is evident.'),(36,49,'A dramatic and moving religious scene.'),(52,49,'The Descent from the Cross is emotionally powerful.'),(26,50,'Rubens’ use of color and motion is masterful.'),(34,50,'A heart-wrenching depiction of a biblical story.'),(55,50,'The Massacre of the Innocents is both tragic and compelling.'),(3,51,'I and the Village’s whimsical style is captivating.'),(30,51,'Chagall’s blend of fantasy and reality is unique.'),(46,51,'A colorful and dreamlike depiction of village life.'),(27,52,'An intimate portrayal of celebration.'),(29,52,'Chagall\'s use of color in this piece is stunning.'),(40,52,'Chagall\'s use of color in this piece is stunning.'),(56,52,'An intimate portrayal of celebration.'),(64,52,'The Birthday is filled with joy and love.'),(1,53,'Captures the spirit of the French Revolution.'),(27,53,'Delacroix’s romantic style really shines through.'),(37,53,'Captures the spirit of the French Revolution.'),(43,53,'Liberty Leading the People is a powerful historic painting.'),(46,53,'Liberty Leading the People is a powerful historic painting.'),(58,53,'Delacroix’s romantic style really shines through.'),(6,54,'Death of Sardanapalus is dramatic and intense.'),(24,54,'Delacroix’s use of vivid colors is extraordinary.'),(30,54,'A masterpiece depicting the fall of an empire.'),(31,54,'Death of Sardanapalus is dramatic and intense.'),(35,54,'A masterpiece depicting the fall of an empire.'),(53,54,'Delacroix’s use of vivid colors is extraordinary.'),(1,55,'The Birth of Venus is an iconic symbol of beauty.'),(14,55,'A Renaissance masterpiece.'),(19,55,'Botticelli’s depiction of Venus is simply divine.'),(30,55,'Botticelli’s depiction of Venus is simply divine.'),(39,55,'The Birth of Venus is an iconic symbol of beauty.'),(47,55,'A Renaissance masterpiece.'),(9,56,'The beauty of spring brought to life.'),(16,56,'Primavera is a stunning allegorical work.'),(31,56,'Primavera is a stunning allegorical work.'),(36,56,'The beauty of spring brought to life.'),(42,56,'Botticelli’s mythological scene is enchanting.'),(46,56,'Botticelli’s mythological scene is enchanting.'),(3,57,'Courbet’s portrayal of peasant life is eye-opening.'),(24,57,'Courbet’s portrayal of peasant life is eye-opening.'),(26,57,'A moving depiction of hard labor.'),(56,57,'The Stone Breakers is raw and realistic.'),(61,57,'The Stone Breakers is raw and realistic.'),(62,57,'A moving depiction of hard labor.'),(3,58,'Depicts the solemnity of life and death.'),(28,58,'A Burial at Ornans is somber yet captivating.'),(34,58,'Courbet’s realism in this funeral scene is impressive.'),(47,58,'Depicts the solemnity of life and death.'),(65,58,'Courbet’s realism in this funeral scene is impressive.'),(69,58,'A Burial at Ornans is somber yet captivating.'),(16,59,'The Garden of Earthly Delights is fascinatingly complex.'),(25,59,'Bosch’s imagination in this triptych is unrivaled.'),(34,59,'Bosch’s imagination in this triptych is unrivaled.'),(55,59,'A surreal journey through paradise and hell.'),(61,59,'A surreal journey through paradise and hell.'),(68,59,'The Garden of Earthly Delights is fascinatingly complex.'),(4,60,'Bosch’s use of detail and symbolism is incredible.'),(6,60,'The Haywain Triptych is both beautiful and bizarre.'),(10,60,'The Haywain Triptych is both beautiful and bizarre.'),(14,60,'An intriguing depiction of human folly and vice.'),(20,60,'Bosch’s use of detail and symbolism is incredible.'),(50,60,'An intriguing depiction of human folly and vice.');
/*!40000 ALTER TABLE `Review_Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schedule`
--

DROP TABLE IF EXISTS `Schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Schedule` (
  `GalleryID` int NOT NULL,
  `ExhibitionID` int NOT NULL,
  PRIMARY KEY (`GalleryID`,`ExhibitionID`),
  KEY `ExhibitionID` (`ExhibitionID`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`GalleryID`) REFERENCES `Gallery` (`GalleryID`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`ExhibitionID`) REFERENCES `Exhibition` (`ExhibitionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schedule`
--

LOCK TABLES `Schedule` WRITE;
/*!40000 ALTER TABLE `Schedule` DISABLE KEYS */;
INSERT INTO `Schedule` VALUES (1,1),(1,2),(8,2),(18,2),(2,3),(1,4),(8,4),(18,4),(3,5),(1,6),(9,6),(19,6),(4,7),(2,8),(9,8),(19,8),(5,9),(2,10),(10,10),(20,10),(6,11),(2,12),(10,12),(20,12),(7,13),(3,14),(11,14),(8,15),(3,16),(11,16),(9,17),(3,18),(12,18),(10,19),(4,20),(12,20),(11,21),(4,22),(13,22),(12,23),(4,24),(13,24),(13,25),(5,26),(14,26),(14,27),(5,28),(14,28),(15,29),(5,30),(15,30),(16,31),(6,32),(15,32),(17,33),(6,34),(16,34),(18,35),(6,36),(16,36),(19,37),(7,38),(17,38),(20,39),(7,40),(17,40);
/*!40000 ALTER TABLE `Schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `UId` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) DEFAULT NULL,
  `UserName` char(10) DEFAULT NULL,
  `UPassword` char(8) DEFAULT NULL,
  PRIMARY KEY (`UId`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Alex Johnson','AJohnson','X1a2B3c4'),(2,'Maria Garcia','MGarcia','Y5f6G7h8'),(3,'David Smith','DSmith','Z9j0K1l2'),(4,'Emma Wilson','EWilson','W3m4N5o6'),(5,'Michael Brown','MBrown','P7q8R9s0'),(6,'Sophia Davis','SDavis','T1u2V3w4'),(7,'James Miller','JMiller','X5y6Z7a8'),(8,'Isabella Martinez','IMartinez','B9c0D1e2'),(9,'William Taylor','WTaylor','F3g4H5i6'),(10,'Olivia Anderson','OAnderson','J7k8L9m0'),(11,'Benjamin Lee','BLee','Q1r2S3t4'),(12,'Ava Hernandez','AHernandez','U5v6W7x8'),(13,'Lucas Moore','LMoore','E9f0G1h2'),(14,'Mia Thomas','MThomas','I3j4K5l6'),(15,'Mason Jackson','MJackson','M7n8O9p0'),(16,'Charlotte White','CWhite','A1b2C3d4'),(17,'Ethan Harris','EHarris','E5f6G7h8'),(18,'Amelia Martin','AMartin','I9j0K1l2'),(19,'Noah Thompson','NThompson','M3n4O5p6'),(20,'Harper Gonzalez','HGonzalez','Q7r8S9t0'),(21,'Logan Rodriguez','LRodriguez','U1v2W3x4'),(22,'Lily Martinez','LMartinez','Y5z6A7b8'),(23,'Jacob Hall','JHall','C9d0E1f2'),(24,'Ella Young','EYoung','G3h4I5j6'),(25,'Aiden King','AKing','K7l8M9n0'),(26,'Zoe Wright','ZWright','O1p2Q3r4'),(27,'Samuel Lopez','SLopez','S5t6U7v8'),(28,'Grace Hill','GHill','W9x0Y1z2'),(29,'Gabriel Clark','GClark','A3b4C5d6'),(30,'Scarlett Green','SGreen','E7f8G9h0'),(31,'Oliver Adams','OAdams','I1j2K3l4'),(32,'Chloe Nelson','CNelson','M5n6O7p8'),(33,'Carter Baker','CBaker','Q9r0S1t2'),(34,'Aubrey Campbell','ACampbell','U3v4W5x6'),(35,'Jack Rivera','JRivera','Y7z8A9b0'),(36,'Luna Turner','LTurner','C1d2E3f4'),(37,'Isaac Martinez','IMartinez','G5h6I7j8'),(38,'Layla Roberts','LRoberts','K9l0M1n2'),(39,'Owen Perry','OPerry','O3p4Q5r6'),(40,'Avery Lee','ALee','S7t8U9v0'),(41,'Sebastian Walker','SWalker','W1x2Y3z4'),(42,'Riley Scott','RScott','A5b6C7d8'),(43,'Zoey Hall','ZHall','E9f0G1h2'),(44,'Christian Young','CYoung','I3j4K5l6'),(45,'Ellie Edwards','EEdwards','M7n8O9p0'),(46,'Nathan Ramirez','NRamirez','A1b2C3d4'),(47,'Peyton Allen','PAllen','E5f6G7h8'),(48,'Madison King','MKing','I9j0K1l2'),(49,'Liam Hernandez','LHernandez','M3n4O5p6'),(50,'Brooklyn Moore','BMoore','Q7r8S9t0'),(51,'Caleb Taylor','CTaylor','U1v2W3x4'),(52,'Hailey Anderson','HAnderson','Y5z6A7b8'),(53,'Tyler Wright','TWright','C9d0E1f2'),(54,'Chloe Johnson','CJohnson','G3h4I5j6'),(55,'Ryan Evans','REvans','K7l8M9n0'),(56,'Emma White','EWhite','O1p2Q3r4'),(57,'Joshua Wilson','JWilson','S5t6U7v8'),(58,'Sofia Martin','SMartin','W9x0Y1z2'),(59,'Andrew Clark','AClark','A3b4C5d6'),(60,'Victoria Rodriguez','VRodriguez','E7f8G9h0'),(61,'Daniel Hernandez','DHernandez','I1j2K3l4'),(62,'Megan Lewis','MLewis','M5n6O7p8'),(63,'Ethan Carter','ECarter','Q9r0S1t2'),(64,'Natalie Wright','NWright','U3v4W5x6'),(65,'Ethan Martinez','EMartinez','Y7z8A9b0'),(66,'Isabella Clark','IMartinez','C1d2E3f4'),(67,'Mason Rodriguez','MRodriguez','G5h6I7j8'),(68,'Sophia Lewis','SLewis','K9l0M1n2'),(69,'Logan Lee','LLee','O3p4Q5r6'),(70,'Ava Walker','AWalker','S7t8U9v0'),(71,'Vincent van Gogh',NULL,NULL),(72,'Pablo Picasso',NULL,NULL),(73,'Leonardo da Vinci',NULL,NULL),(74,'Claude Monet',NULL,NULL),(75,'Salvador Dalí',NULL,NULL),(76,'Georgia O\'Keeffe',NULL,NULL),(77,'Frida Kahlo',NULL,NULL),(78,'Jackson Pollock',NULL,NULL),(79,'Andy Warhol',NULL,NULL),(80,'Michelangelo',NULL,NULL),(81,'Rembrandt',NULL,NULL),(82,'Johannes Vermeer',NULL,NULL),(83,'Gustav Klimt',NULL,NULL),(84,'Henri Matisse',NULL,NULL),(85,'Raphael',NULL,NULL),(86,'Caravaggio',NULL,NULL),(87,'Francisco Goya',NULL,NULL),(88,'Edvard Munch',NULL,NULL),(89,'Titian',NULL,NULL),(90,'Paul Cézanne',NULL,NULL),(91,'Jan van Eyck',NULL,NULL),(92,'Albrecht Dürer',NULL,NULL),(93,'Wassily Kandinsky',NULL,NULL),(94,'Edgar Degas',NULL,NULL),(95,'Peter Paul Rubens',NULL,NULL),(96,'Marc Chagall',NULL,NULL),(97,'Eugène Delacroix',NULL,NULL),(98,'Sandro Botticelli',NULL,NULL),(99,'Gustave Courbet',NULL,NULL),(100,'Hieronymus Bosch',NULL,NULL),(101,'Banksy','BanksyArt','B1a2N3k4'),(102,'Ai Weiwei','AiWeiwei','A5i6W7e8'),(103,'Yayoi Kusama','Ykusama','Y9k0U1s2'),(104,'Jeff Koons','Jkoons','J3e4F5k6'),(105,'Damien Hirst','Dhirst','D7h8I9r0'),(106,'Fatma Nur Yasar','fnuryasar','12345678');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visitor`
--

DROP TABLE IF EXISTS `Visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Visitor` (
  `VisitorID` int NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DigitalWallet` int DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`VisitorID`),
  CONSTRAINT `visitor_ibfk_1` FOREIGN KEY (`VisitorID`) REFERENCES `User` (`UId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visitor`
--

LOCK TABLES `Visitor` WRITE;
/*!40000 ALTER TABLE `Visitor` DISABLE KEYS */;
INSERT INTO `Visitor` VALUES (1,'555-1001-001','alex.johnson@email.com',500000,'123 Maple Street, Springfield'),(2,'555-1001-002','maria.garcia@email.com',525000,'456 Oak Avenue, Riverdale'),(3,'555-1001-003','david.smith@email.com',550000,'789 Pine Road, Greensville'),(4,'555-1001-004','emma.wilson@email.com',575000,'1010 Cedar Blvd, Harmony'),(5,'555-1001-005','michael.brown@email.com',600000,'1111 Birch Lane, Metroville'),(6,'555-1001-006','sophia.davis@email.com',625000,'1212 Elm Street, Brookside'),(7,'555-1001-007','james.miller@email.com',650000,'1313 Willow Way, Fairview'),(8,'555-1001-008','isabella.martinez@email.com',675000,'1414 Maple Avenue, Westfield'),(9,'555-1001-009','william.taylor@email.com',700000,'1515 Oak Street, Eastwood'),(10,'555-1001-010','olivia.anderson@email.com',725000,'1616 Pine Lane, Northtown'),(11,'555-1001-011','benjamin.lee@email.com',750000,'1717 Cedar Path, Lakeside'),(12,'555-1001-012','ava.hernandez@email.com',775000,'1818 Birch Drive, Ridgeview'),(13,'555-1001-013','lucas.moore@email.com',800000,'1919 Elm Circle, Oakdale'),(14,'555-1001-014','mia.thomas@email.com',825000,'2020 Willow Road, Highland'),(15,'555-1001-015','mason.jackson@email.com',850000,'2121 Maple Court, Meadowland'),(16,'555-1001-016','charlotte.white@email.com',875000,'2222 Oak Lane, Sunnyvale'),(17,'555-1001-017','ethan.harris@email.com',900000,'2323 Pine Street, Cliffside'),(18,'555-1001-018','amelia.martin@email.com',925000,'2424 Cedar Avenue, Rivertown'),(19,'555-1001-019','noah.thompson@email.com',950000,'2525 Birch Road, Stonebridge'),(20,'555-1001-020','harper.gonzalez@email.com',975000,'2626 Elm Way, Brookhaven'),(21,'555-1001-021','logan.rodriguez@email.com',1000000,'2727 Willow Street, Creekwood'),(22,'555-1001-022','lily.martinez@email.com',1025000,'2828 Maple Drive, Lakeview'),(23,'555-1001-023','jacob.hall@email.com',1050000,'2929 Oak Circle, Valleyview'),(24,'555-1001-024','ella.young@email.com',1075000,'3030 Pine Avenue, Hilltop'),(25,'555-1001-025','aiden.king@email.com',1100000,'3131 Cedar Street, Rosewood'),(26,'555-1001-026','zoe.wright@email.com',1125000,'3232 Birch Lane, Seaside'),(27,'555-1001-027','samuel.lopez@email.com',1150000,'3333 Elm Road, Forestville'),(28,'555-1001-028','grace.hill@email.com',1175000,'3434 Willow Court, Orchard Park'),(29,'555-1001-029','gabriel.clark@email.com',1200000,'3535 Maple Terrace, New Dawn'),(30,'555-1001-030','scarlett.green@email.com',1225000,'3636 Oak Place, Eagle Ridge'),(31,'555-1001-031','oliver.adams@email.com',1250000,'3737 Pine Way, Silverton'),(32,'555-1001-032','chloe.nelson@email.com',1275000,'3838 Cedar Blvd, Greenwood'),(33,'555-1001-033','carter.baker@email.com',1300000,'3939 Birch Avenue, Twin Pines'),(34,'555-1001-034','aubrey.campbell@email.com',1325000,'4040 Elm Street, Harmony Grove'),(35,'555-1001-035','jack.rivera@email.com',1350000,'4141 Willow Lane, Sunset Valley'),(36,'555-1001-036','luna.turner@email.com',1375000,'4242 Maple Road, Riverbend'),(37,'555-1001-037','isaac.martinez@email.com',1400000,'4343 Oak Street, Crestwood'),(38,'555-1001-038','layla.roberts@email.com',1425000,'4444 Pine Circle, Windy Hills'),(39,'555-1001-039','owen.perry@email.com',1450000,'4545 Cedar Drive, Oceanview'),(40,'555-1001-040','avery.lee@email.com',1475000,'4646 Birch Path, Starlight Town'),(41,'555-1001-041','sebastian.walker@email.com',1500000,'4747 Elm Avenue, Grandview'),(42,'555-1001-042','riley.scott@email.com',1525000,'4848 Willow Way, Lakeshore'),(43,'555-1001-043','zoey.hall@email.com',1550000,'4949 Maple Street, Eastwood'),(44,'555-1001-044','christian.young@email.com',1575000,'5050 Oak Lane, Westridge'),(45,'555-1001-045','ellie.edwards@email.com',1600000,'5151 Pine Drive, Northwoods'),(46,'555-1001-046','nathan.ramirez@email.com',1625000,'5252 Cedar Avenue, Bayview'),(47,'555-1001-047','peyton.allen@email.com',1650000,'5353 Birch Road, Rivercrest'),(48,'555-1001-048','madison.king@email.com',1675000,'5454 Elm Lane, Cliffhaven'),(49,'555-1001-049','liam.hernandez@email.com',1700000,'5555 Willow Blvd, Autumn Ridge'),(50,'555-1001-050','brooklyn.moore@email.com',1725000,'5656 Maple Way, Silverleaf'),(51,'555-1001-051','caleb.taylor@email.com',1750000,'5757 Oak Court, Evergreen Estates'),(52,'555-1001-052','hailey.anderson@email.com',1775000,'5858 Pine Street, Bluewater Bay'),(53,'555-1001-053','tyler.wright@email.com',1800000,'5959 Cedar Path, Skyline Heights'),(54,'555-1001-054','chloe.johnson@email.com',1825000,'6060 Birch Avenue, Whispering Pines'),(55,'555-1001-055','ryan.evans@email.com',1850000,'6161 Elm Terrace, Marina Point'),(56,'555-1001-056','emma.white@email.com',1875000,'6262 Willow Lane, Golden Meadows'),(57,'555-1001-057','joshua.wilson@email.com',1900000,'6363 Maple Drive, Copperfield'),(58,'555-1001-058','sofia.martin@email.com',1925000,'6464 Oak Street, Avalon Park'),(59,'555-1001-059','andrew.clark@email.com',1950000,'6565 Pine Circle, Lake Harmony'),(60,'555-1001-060','victoria.rodriguez@email.com',1975000,'6666 Cedar Road, Orchard Hills'),(61,'555-1001-061','daniel.hernandez@email.com',2000000,'6767 Birch Blvd, Vista Ridge'),(62,'555-1001-062','megan.lewis@email.com',2025000,'6868 Elm Place, River Run'),(63,'555-1001-063','ethan.carter@email.com',2050000,'6969 Willow Way, Aspen Grove'),(64,'555-0164-064','natalie.wright@email.com',2075000,'7070 Maple Street, Meadowbrook'),(65,'555-0165-065','ethan.martinez@email.com',2100000,'7171 Oak Avenue, Highland Park'),(66,'555-0166-066','isabella.clark@email.com',2125000,'7272 Pine Lane, Summerfield'),(67,'555-0167-067','mason.rodriguez@email.com',2150000,'7373 Cedar Street, Sunset Hills'),(68,'555-0168-068','sophia.lewis@email.com',2175000,'7474 Birch Road, Crystal Lake'),(69,'555-0169-069','logan.lee@email.com',2200000,'7575 Elm Drive, Eagle\'s Nest'),(70,'555-0170-070','ava.walker@email.com',2225000,'7676 Willow Court, Pine Ridge'),(106,'+905061774809','fatmanuryasar5@gmail.com',1000000,'Üsküdar/Istanbul');
/*!40000 ALTER TABLE `Visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23  0:31:39
