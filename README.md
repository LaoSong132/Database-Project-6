# This repository includes activities for ITCS 3160 - Database-Project-6.

## Index
* [Group members](#Group-members)
* [Introduction](#Introduction)
* [Use Case for Rating System](#Use-Case-for-Rating-System)
* [Business Rules](#Business-Rules)
* [EERD](#EERD)
* [MySQL Queries](#MySQL-Queries)
* [Stored Procedure](#Stored-Procedure)
* [Description of Future Work](#Description-of-Future-Work)
* [MySQL dump](#MySQL-dump)
* [PPT Video](#PPT-Video)

## Group members
    Sarah Chen,
    Truong Dang,
    Brian King,
    Yuanming Song,
    Aaron Ye
    
## Introduction
### The purpose of this project is to further work upon a database designed by a previous team in order to properly analyze and select data from said database. For the purposes of this project, members of an established group will examine given qualitative and quantitative information on a food delivery service company for UNCC and develop an adequate understanding of the structure of the database by assessing and working upon the provided EERD and SQL database. From the already existing EERD amongst other information provided, essential elements such as business rules, a use case diagram, a data dictionary, along with a normalized EERD must be designed. Group members must also implement a functional rating system for applicable entities within the relational database utilizing proper guidelines on normalization. To fulfill these requirements, appropriate knowledge of SQL must be demonstrated in order to complete specifics including procedure creation, query optimization, and complex query results.

## <span style="color:blue">Use Case for Rating System</span>
![](Project%20Use%20Case%20Diagram%20(1).jpg)

## <span style="color:blue">Business Rules</span>
* A valid credit/debit card must be available for order confirmation.
* All meals in a single order must be delivered to the same location. 
* All meals in a single order must be paid for using the same payment method.
* User must be at least 21 to order alcoholic beverages
* Minor(18 and under) are not allowed to place orders on this application
* No access from third parties allowed
* Application has the rights to revoke account if false information is detected
* A review must have a user writing it and a subject (driver or location) that is being reviewed
* A driver cannot review themself
* A driver and location can have many reviews written about them
* A review must only be between 1 and 5 stars inclusively
* A user can only review a driver or location once each

## <span style="color:blue">EERD</span>
![](Project_EERD.png)
![](Data_Dictionary1.PNG)
![](Data_Dictionary2.PNG)
![](Data_Dictionary3.PNG)
![](Data_Dictionary4.PNG)
![](Data_Dictionary5.PNG)

## MySQL Queries
## Stored Procedure
## Web/App Implementation (Optional) or Description of Future Work
## MySQL dump
```
DROP TABLE `restaurant_review`;

CREATE TABLE `restaurant_review` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `review_id` int,
  `person_id` int,
  `restaurant_id` int,
  `star_rating` int default NULL,
  `description` TEXT default NULL,
  `date` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (1,1,1,3,"sem semper erat, in consectetuer ipsum nunc id","09102021"),(2,2,2,2,"diam. Pellentesque habitant morbi","04102021"),(3,3,3,5,"risus varius orci, in consequat enim","09052020"),(4,4,4,2,"mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,","20062021"),(5,5,5,1,"sem eget massa.","07102021"),(6,6,6,3,"urna. Vivamus molestie dapibus ligula. Aliquam","05112021"),(7,7,7,4,"volutpat. Nulla dignissim. Maecenas ornare egestas ligula.","16092020"),(8,8,8,3,"Cras vulputate","11112021"),(9,9,9,5,"rutrum magna. Cras convallis convallis dolor. Quisque","20052020"),(10,10,10,3,"Fusce dolor quam, elementum at, egestas a,","07022021");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (11,11,11,2,"quis arcu vel quam dignissim pharetra.","31052020"),(12,12,12,4,"sem, vitae aliquam eros","18082021"),(13,13,13,3,"odio. Nam interdum enim non nisi. Aenean eget metus. In","15102020"),(14,14,14,4,"netus et malesuada fames","02012021"),(15,15,15,2,"scelerisque neque sed sem egestas blandit. Nam nulla","18072021"),(16,16,16,4,"velit","12112020"),(17,17,17,5,"sem. Nulla interdum. Curabitur dictum. Phasellus","16072021"),(18,18,18,2,"Nullam suscipit, est ac facilisis facilisis, magna","14062021"),(19,19,19,2,"feugiat metus sit amet ante. Vivamus non lorem vitae odio","17022021"),(20,20,20,4,"elit. Etiam laoreet, libero et tristique pellentesque, tellus sem","27052020");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (21,21,21,3,"ullamcorper. Duis","04052021"),(22,22,22,2,"pede","13052021"),(23,23,23,3,"est mauris, rhoncus id, mollis","28052021"),(24,24,24,2,"Cras","17112020"),(25,25,25,5,"enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.","02092021"),(26,26,26,2,"taciti sociosqu ad litora torquent per","31012021"),(27,27,27,1,"Curae; Donec tincidunt. Donec","25052021"),(28,28,28,4,"egestas a,","10072020"),(29,29,29,2,"a sollicitudin orci sem eget massa. Suspendisse eleifend.","21082021"),(30,30,30,2,"Nulla eget metus eu erat semper","23052020");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (31,31,31,4,"Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue.","22062021"),(32,32,32,5,"amet risus. Donec egestas. Aliquam nec","01052020"),(33,33,33,4,"eu dui. Cum sociis natoque penatibus et magnis","24082021"),(34,34,34,4,"tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,","04032021"),(35,35,35,2,"at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas","22032020"),(36,36,36,4,"parturient","18092021"),(37,37,37,2,"ante. Nunc","03042020"),(38,38,38,4,"eu tempor erat neque non quam.","21022020"),(39,39,39,4,"Donec est. Nunc ullamcorper, velit in aliquet","10052021"),(40,40,40,3,"Proin dolor. Nulla semper tellus id nunc","04012020");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (41,41,41,3,"metus facilisis","07032020"),(42,42,42,4,"Class aptent taciti sociosqu ad litora torquent per conubia","04032020"),(43,43,43,5,"vel est tempor bibendum. Donec felis","19012020"),(44,44,44,3,"sed, sapien. Nunc pulvinar","15082021"),(45,45,45,1,"placerat eget, venenatis a, magna.","28072020"),(46,46,46,5,"Quisque fringilla euismod","30092021"),(47,47,47,4,"varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas","12122020"),(48,48,48,4,"In lorem. Donec elementum, lorem ut","04032020"),(49,49,49,3,"augue ac ipsum. Phasellus vitae mauris sit","02032021"),(50,50,50,4,"consectetuer adipiscing elit.","31102021");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (51,51,51,5,"amet ante. Vivamus non lorem vitae","19022020"),(52,52,52,4,"aliquam arcu. Aliquam ultrices","03122020"),(53,53,53,5,"Cras dictum ultricies ligula. Nullam enim. Sed nulla","05032020"),(54,54,54,3,"nisi magna sed dui. Fusce aliquam,","14112021"),(55,55,55,3,"diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.","22112021"),(56,56,56,2,"Praesent eu nulla","16122020"),(57,57,57,4,"enim, sit amet ornare lectus","03032021"),(58,58,58,1,"egestas lacinia. Sed congue,","28092020"),(59,59,59,4,"odio. Nam","03012020"),(60,60,60,5,"dui augue eu tellus. Phasellus elit pede, malesuada","14102020");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (61,61,61,2,"varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem","09032021"),(62,62,62,4,"condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec","29102021"),(63,63,63,4,"Ut tincidunt vehicula","15072021"),(64,64,64,3,"consequat enim diam vel arcu. Curabitur ut odio","30062021"),(65,65,65,3,"erat. Etiam vestibulum massa rutrum","31102021"),(66,66,66,1,"ullamcorper viverra.","10072020"),(67,67,67,3,"sit","02092020"),(68,68,68,4,"eros nec tellus. Nunc lectus pede, ultrices","26092020"),(69,69,69,2,"elit fermentum risus, at fringilla","17042021"),(70,70,70,1,"convallis erat, eget tincidunt","26052021");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (71,71,71,2,"elit. Aliquam","05102021"),(72,72,72,2,"fringilla purus mauris a","15082020"),(73,73,73,2,"metus. In lorem.","14052021"),(74,74,74,2,"ac mattis semper, dui lectus","25122020"),(75,75,75,3,"dolor, tempus non, lacinia at,","21042021"),(76,76,76,3,"a nunc. In at pede. Cras vulputate velit eu","03122021"),(77,77,77,5,"urna. Ut tincidunt vehicula risus. Nulla","06012021"),(78,78,78,1,"sapien imperdiet ornare. In faucibus. Morbi","28102020"),(79,79,79,5,"Fusce diam nunc, ullamcorper eu,","26102020"),(80,80,80,3,"nisl. Nulla eu","14072021");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (81,81,81,4,"sit amet,","27102020"),(82,82,82,2,"ipsum sodales purus,","15032021"),(83,83,83,3,"sit amet lorem semper auctor. Mauris vel","26122019"),(84,84,84,2,"amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque,","13062021"),(85,85,85,3,"Curabitur massa.","18012020"),(86,86,86,5,"tristique pellentesque, tellus sem","29102021"),(87,87,87,2,"Morbi quis urna.","13122019"),(88,88,88,2,"lacus. Ut nec","12032021"),(89,89,89,2,"egestas nunc sed libero.","10042020"),(90,90,90,1,"adipiscing ligula. Aenean gravida","06062020");
INSERT INTO `restaurant_review` (`review_id`,`person_id`,`restaurant_id`,`star_rating`,`description`,`date`) VALUES (91,91,91,2,"eu augue porttitor","23022020"),(92,92,92,1,"magna.","17092020"),(93,93,93,5,"mauris, rhoncus id,","12012021"),(94,94,94,4,"Aliquam tincidunt,","26102021"),(95,95,95,2,"nibh enim,","20112020"),(96,96,96,5,"erat eget ipsum. Suspendisse sagittis.","12112020"),(97,97,97,5,"Integer mollis. Integer tincidunt aliquam arcu. Aliquam","18112020"),(98,98,98,5,"dui, in sodales","08102020"),(99,99,99,1,"Nulla eu neque","23012021"),(100,100,100,5,"sed,","23032021");
```
```
DROP TABLE `driver_review`;

CREATE TABLE `driver_review` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `review_id` int,
  `person_id` int,
  `driver_id` int default NULL,
  `star_rating` int default NULL,
  `description` TEXT default NULL,
  `date` varchar(255),
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (1,1,3,5,"accumsan convallis, ante lectus convallis est, vitae sodales nisi","28092020"),(2,2,1,1,"eu nibh vulputate mauris sagittis placerat.","23042021"),(3,3,5,3,"amet, consectetuer adipiscing elit. Etiam laoreet, libero et","11032021"),(4,4,1,3,"in molestie tortor nibh sit amet orci. Ut sagittis lobortis","09032021"),(5,5,4,3,"et","02122020"),(6,6,4,4,"per inceptos hymenaeos. Mauris ut","13112020"),(7,7,8,3,"ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis","09052021"),(8,8,2,5,"vitae odio","05052020"),(9,9,1,2,"ligula tortor, dictum eu,","02052021"),(10,10,6,4,"ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy","20082021");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (11,11,8,2,"Cras lorem lorem, luctus ut, pellentesque eget,","11082021"),(12,12,7,2,"orci,","22042021"),(13,13,6,1,"tempor erat neque non quam.","17102020"),(14,14,6,4,"natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.","06022020"),(15,15,3,5,"ligula. Nullam","23042020"),(16,16,7,1,"nisi. Mauris nulla. Integer urna. Vivamus molestie","05082020"),(17,17,5,1,"Donec felis orci, adipiscing non, luctus sit","23102021"),(18,18,3,1,"faucibus ut,","22072021"),(19,19,6,3,"semper egestas, urna justo faucibus lectus, a sollicitudin orci sem","13122020"),(20,20,1,4,"non, lacinia at, iaculis quis, pede. Praesent eu dui.","22112020");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (21,21,8,3,"ipsum. Phasellus vitae mauris sit amet lorem","27092020"),(22,22,7,1,"dictum cursus. Nunc mauris elit, dictum eu, eleifend","05052020"),(23,23,2,2,"nisl elementum purus, accumsan","16032020"),(24,24,4,2,"arcu. Vestibulum ante ipsum primis in faucibus","11122020"),(25,25,8,4,"Suspendisse","20092020"),(26,26,3,2,"a,","21112020"),(27,27,4,2,"ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,","19012021"),(28,28,2,1,"feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum","07052020"),(29,29,6,1,"neque venenatis","06102020"),(30,30,4,5,"a, magna. Lorem","01012021");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (31,31,7,3,"eu, ligula. Aenean euismod mauris eu elit. Nulla","08112020"),(32,32,7,3,"Cras dolor","10052020"),(33,33,2,3,"Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi","12122019"),(34,34,7,5,"tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula","08052021"),(35,35,8,1,"urna suscipit nonummy. Fusce fermentum fermentum","02062021"),(36,36,6,5,"felis orci, adipiscing non,","21032021"),(37,37,2,4,"mi. Aliquam gravida mauris ut mi. Duis","28102020"),(38,38,5,3,"et","02052020"),(39,39,1,3,"odio vel est tempor bibendum.","06032020"),(40,40,1,2,"eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris","24062021");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (41,41,7,1,"elit, dictum eu, eleifend nec,","24042020"),(42,42,1,2,"congue,","28042020"),(43,43,6,1,"ornare, libero at auctor ullamcorper, nisl arcu iaculis enim,","20072020"),(44,44,8,4,"massa rutrum magna. Cras convallis convallis","24112021"),(45,45,8,5,"vulputate, lacus. Cras","04042020"),(46,46,2,4,"Donec egestas. Duis ac arcu. Nunc mauris. Morbi non","11092020"),(47,47,6,4,"sit amet diam eu","04082020"),(48,48,2,4,"tincidunt. Donec vitae erat vel pede","22122019"),(49,49,2,5,"primis in","29062020"),(50,50,4,3,"odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis","28092021");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (51,51,5,3,"nunc risus varius orci, in consequat","11062021"),(52,52,5,5,"pharetra, felis eget varius ultrices, mauris ipsum porta","08092021"),(53,53,5,2,"nec tellus. Nunc lectus","05102021"),(54,54,6,2,"parturient montes, nascetur ridiculus mus. Donec","06102021"),(55,55,7,1,"pede, nonummy ut, molestie in, tempus eu,","03062020"),(56,56,5,1,"dictum cursus. Nunc mauris elit, dictum","08122019"),(57,57,7,1,"malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis","20092020"),(58,58,6,3,"sit amet metus. Aliquam erat volutpat. Nulla facilisis.","04062020"),(59,59,4,2,"orci luctus et ultrices posuere","13092020"),(60,60,2,2,"eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.","20042021");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (61,61,2,1,"consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,","13082021"),(62,62,3,3,"adipiscing. Mauris molestie pharetra nibh. Aliquam","22122019"),(63,63,4,3,"sed, est. Nunc laoreet lectus quis massa. Mauris","25022020"),(64,64,8,1,"lacinia. Sed congue, elit sed consequat","30032020"),(65,65,4,3,"bibendum ullamcorper. Duis","14022020"),(66,66,4,5,"a mi fringilla","27062020"),(67,67,1,4,"tellus, imperdiet non, vestibulum","16092021"),(68,68,6,1,"mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae","26042021"),(69,69,2,2,"lectus quis massa. Mauris vestibulum, neque sed","29092020"),(70,70,2,3,"turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum","07072020");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (71,71,7,5,"at sem molestie sodales. Mauris blandit","09112021"),(72,72,4,3,"leo, in lobortis tellus justo","02112020"),(73,73,6,2,"Suspendisse aliquet, sem ut cursus luctus,","30122020"),(74,74,2,3,"eu tempor erat neque non quam.","01062021"),(75,75,3,4,"leo elementum sem, vitae aliquam","06072020"),(76,76,7,3,"vitae aliquam eros turpis non","28062020"),(77,77,5,3,"lectus convallis","17022020"),(78,78,8,5,"malesuada fames ac turpis egestas. Fusce aliquet magna a neque.","14102021"),(79,79,4,4,"sit amet nulla. Donec non","20022020"),(80,80,5,3,"Nunc mauris elit, dictum eu, eleifend nec, malesuada","03022020");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (81,81,1,1,"neque sed sem egestas","25062021"),(82,82,4,5,"risus odio, auctor vitae,","18102020"),(83,83,7,4,"ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque","15032020"),(84,84,8,1,"elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.","10052021"),(85,85,7,2,"a ultricies adipiscing, enim","04112021"),(86,86,8,1,"non massa non ante bibendum ullamcorper. Duis cursus, diam at","03042020"),(87,87,4,3,"tempor","24012020"),(88,88,6,5,"tellus. Phasellus elit pede, malesuada vel, venenatis","10032020"),(89,89,4,2,"amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.","19032021"),(90,90,6,3,"vel, convallis","02032020");
INSERT INTO `driver_review` (`review_id`,`person_id`,`driver_id`,`star_rating`,`description`,`date`) VALUES (91,91,1,2,"ornare, libero at","25112021"),(92,92,8,4,"at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare","03052020"),(93,93,6,4,"felis. Donec tempor,","17072021"),(94,94,3,3,"rutrum eu, ultrices sit amet, risus. Donec","31072020"),(95,95,6,1,"mi. Duis risus odio, auctor vitae,","07022021"),(96,96,8,3,"nec,","03082021"),(97,97,4,2,"aliquam eros","09052021"),(98,98,2,5,"ornare egestas ligula. Nullam feugiat placerat","29042020"),(99,99,7,4,"aliquam eros turpis non enim. Mauris quis","19012021"),(100,100,7,1,"tristique ac, eleifend vitae, erat.","23072020");
```
## PPT Video
