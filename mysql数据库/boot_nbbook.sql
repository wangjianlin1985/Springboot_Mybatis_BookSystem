-- --------------------------------------------------------
-- 主机:                          127.0.0.1
-- Server version:               10.3.14-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for boot_nbbook
CREATE DATABASE IF NOT EXISTS `boot_nbbook` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `boot_nbbook`;

-- Dumping structure for table boot_nbbook.book_info
CREATE TABLE IF NOT EXISTS `book_info` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_isbn` varchar(32) DEFAULT NULL,
  `book_name` varchar(64) DEFAULT NULL,
  `book_author` varchar(64) DEFAULT NULL,
  `book_publish` varchar(64) DEFAULT NULL,
  `book_price` decimal(10,2) DEFAULT NULL,
  `book_state` int(11) DEFAULT 0,
  `book_type` int(11) DEFAULT NULL,
  `book_introduction` text DEFAULT NULL,
  `book_shelf` int(11) DEFAULT NULL,
  `book_create_time` datetime DEFAULT NULL,
  `book_last_modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE,
  KEY `fk_bookType` (`book_type`) USING BTREE,
  CONSTRAINT `fk_bookType` FOREIGN KEY (`book_type`) REFERENCES `book_type` (`book_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.book_info: ~11 rows (approximately)
/*!40000 ALTER TABLE `book_info` DISABLE KEYS */;
INSERT INTO `book_info` (`book_id`, `book_isbn`, `book_name`, `book_author`, `book_publish`, `book_price`, `book_state`, `book_type`, `book_introduction`, `book_shelf`, `book_create_time`, `book_last_modify_time`) VALUES
	(1, '9787302519287', 'Excel企业经营数据分析实战', '张倩', '清华大学出版社', 79.00, 0, 31, '本书是一本介绍Excel 2016企业经营数据实用操作的书籍，全面系统地介绍了Excel 2016的技术特点和企业数据实战应用知识。本书通过大量的实用案例，帮助读者快速掌握Excel的应用技巧，这些案例也适合读者直接在工作中借鉴使用。 本书共分11章，内容涉及企业数据高效录入、数据的整理和规范、数据的初步处理、数据的常规分析、公式和函数的应用、图表的应用、数据分析工具的应用及Excel的应用综合。 本书既可作为Excel初学者的入门指南，也可作为中、高级用户的实用参考手册，还可作为各类办公人员的培训教材', 1, '2019-04-16 10:12:03', '2019-06-24 12:16:22'),
	(2, '9787302515807', '零基础学WordPress', '老王经销商', '清华大学出版社', 79.00, 0, 31, '本书通过对安装使用WordPress搭建自媒体站点的前期、中期、后期进行详细讲解，使读者全面了解和掌握作为一个自媒体网站站长应掌握的域名、服务器、WordPress等方面的基础知识，同时通过实例站点与图书社区为读者提供了相关资源与服务，是一本绝无仅有、不可多得的技术书籍。\n全书分为3大部分，共21章节。第1～9章着重介绍域名的基础知识、购买域名的支付方式、购买域名的基本流程、域名备案的常规流程以及域名解析的常用方法；第10～17章着重介绍Linux的简单概念、相关社区的提问方法、使用服务器的基础知识、服务器安全的基础知识、权限管理的基础知识、使用防火墙的基础知识、操作数据库的基础知识、WordPress加速的基础知识以及管理账号密码的基础知识；第18～21章着重介绍安装使用WordPress过程中的基础知识、实例站点的建设流程。\n\n本书适合有志于成为优秀自媒体人的入门读者，也适合作为高等院校的选修计算机教材，还可供对搭建独立个人博客有兴趣的人士以及对建设独立企业官网有需求的中小企业参考。', 1, '2019-04-16 10:18:58', '2019-06-24 12:00:01'),
	(3, '9787302505945', '零基础入门学习C语言——带你学C带你飞（微课视频版）', '小甲鱼', '清华大学出版社', 79.00, 0, 23, '《零基础入门学习C语言——带你学C带你飞（微课视频版）》提倡“理解为主，应用为王”，通过列举一些有趣的例子，让读者在实践中理解概念。《零基础入门学习C语言——带你学C带你飞（微课视频版）》从变量、数据类型、取值范围等基本知识开始讲解，深入介绍分支与循环，讲到指针的时候，分散难点，依次讲解数组与指针、函数与指针、结构体与指针，每个知识点结合恰当的实例进行演示，环环相扣，内容详尽。\n编程知识深似海，小甲鱼没办法仅通过一《零基础入门学习C语言——带你学C带你飞（微课视频版）》将所有的知识都灌输给读者，但能够做到的是培养读者对编程的兴趣，提高编写代码的水平，锻炼自学的能力。\n\n《零基础入门学习C语言——带你学C带你飞（微课视频版）》贯彻的核心理念是：实用、好玩、参与。\n\n《零基础入门学习C语言——带你学C带你飞（微课视频版）》适合学习C语言的入门读者，也适用于对编程一无所知，但渴望用编程改变世界的朋友。', 2, '2019-04-16 10:21:15', '2019-06-24 12:17:29'),
	(4, '9787302523352', 'JSP Servlet Tomcat应用开发从零开始学（第2版）', '林龙 刘华贞', '清华大学出版社', 79.00, 1, 23, '本书全面介绍了JSP开发中涉及的相关技术要点和实战技巧。全书结构清晰，难度循序渐进，结合丰富的示例使零基础的读者能够熟练掌握JSP的开发、部署以及优化。\n本书分为3篇：第1篇为Java Web基础开发，内容包括搭建Java Web开发环境、JSP基础语法、JSP内置对象、Servlet技术、请求与响应、会话管理、Servlet进阶API、过滤器、监听器等；第2篇为Java Web高级开发，内容包括MySQL 8数据库开发、JSP与Java Bean、EL标签、JSTL标签库、自定义标签、JDBC详解、XML概述、资源国际化等；第3篇为Java Web实战，内容包括两个典型的系统，即家校通门户网站（JSP HTML CSS）、在线购物系统（JSP Java Bean MySQL）。\n\n本书内容精练、结构清晰、注重实战，适合广大Java Web初学人员学习，同时也非常适合大中专院校师生学习阅读，还可作为高等院校计算机及相关专业的教材使用。', 2, '2019-04-16 10:23:01', '2019-06-24 12:14:41'),
	(6, '9787302517559', 'Android 7应用程序开发教程', '李波', '清华大学出版社', 89.00, 0, 23, 'Android系统是目前最为流行的智能手机操作系统之一，面向Android系统的应用开发是目前的技术热点。本书针对Android SDK 7，结合全新的Android Studio开发环境，对Android应用编程基础知识进行讲解，易于读者理论联系实践，尽快掌握Android系统编程知识。\n本书分为14章，使用Java开发语言，内容主要包括Android 系统的发展历史、系统架构、应用程序框架、界面开发、网络访问、多媒体应用程序开发、数据存储等。本书每一章都给出实例，使读者进一步巩固所学的知识，提高综合实战能力。\n\n本书既适合熟悉Java编程的Android初学者和具有一定Android编程经验的用户，也可供广大计算机工作者和软件开发者参考。', 2, '2019-04-16 10:28:32', '2019-06-24 12:20:05'),
	(8, '9787302518082', 'AutoCAD 2018中文版入门与提高——土木工程设计', 'CAD/CAM/CAE技术联盟', '清华大学出版社', 89.80, 0, 23, '本书共分为3个部分15章，第1～5章为AutoCAD基础篇，包括AutoCAD2018基础入门，绘图基础与控制，图形的绘制与编辑，图形的尺寸、文字标注与表格，使用块、外部参照和设计中心等；第6～11章为建筑施工图篇，包括建筑施工图制图标准（2010版），建筑总平面图、平面图、立面图、剖面图、详图等的概述与绘制方法；第12～15章为结构施工图篇，包括建筑结构图制图标准（2010版），基础平面图与详图的概述与绘制方法，楼层结构平面图的概述与绘制方法，楼梯结构详图的概述与绘制方法。', 3, '2019-04-16 10:32:09', '2019-04-16 10:32:09'),
	(9, '9787302515654', 'Oracle 12c数据库入门与应用', '靳智良、冯海燕', '清华大学出版社', 66.00, 0, 23, 'Oracle数据库系统是数据库领域最优秀的数据库之一，《Oracle 12c数据库入门与应用》以Oracle最新版本12c为蓝本，系统地讲述了Oracle数据库的概念、管理和应用开发等内容。全书结构合理、内容翔实、示例丰富、语言简洁。从实际角度出发，系统地介绍了数据库和Oracle的相关概念和原理、数据维护(查询、更新和删除)、Oracle数据库管理(如安装与启动、用户权限)以及Oracle的应用开发基础，并在最后通过设计医院预约挂号系统数据库讲解开发的详细过程。\n《Oracle 12c数据库入门与应用》面向数据库管理人员和数据库开发人员，是初学者很好的入门教程，对Oracle管理员和应用程序开发员也有很好的学习和参考价值，也可以作为各大、中专院校相关专业的参考用书和相关培训机构的培训教材。', 3, '2019-04-16 10:34:42', '2019-04-16 10:34:42'),
	(10, '9787302524281', 'MySQL 5.7从入门到精通（视频教学版）（第2版）', '张工厂', '清华大学出版社', 138.00, 1, 23, '本书主要包括MySQL的安装与配置、数据库的创建、数据表的创建、数据类型和运算符、MySQL函数、查询数据、数据表的操作（插入、更新与删除数据）、索引、存储过程和函数、视图、触发器、用户管理、数据备份与还原、日志以及性能优化。最后通过3个综合案例的数据库设计，进一步讲述MySQL在实际工作中的应用。重点介绍MySQL安装与配置、数据类型和运算符以及数据表的操作。本书注重实战操作，帮助读者循序渐进地掌握MySQL中的各项技术。\n本书共有480个实例和19个综合案例，还有大量的经典习题。随书赠送了近20小时培训班形式的视频教学录像，详细讲解了书中每一个知识点和每一个数据库操作的方法和技巧。同时光盘中还提供了本书所有例子的源代码，读者可以直接查看和调用。\n\n本书适合MySQL数据库初学者、MySQL数据库开发人员和MySQL数据库管理员，同时也能作为高等院校和培训学校相关专业师生的教学用书。', 3, '2019-04-16 10:41:25', '2019-06-06 14:41:08'),
	(14, '9787302511083', '敏捷软件开发：用户故事实战', '迈克·科恩（Mike Cohn）著　王凌宇　译', '清华大学出版社', 69.80, 0, 23, '<p><img alt="" src="/uploads/2019/04/16/13/13/e45d5c9b-8d16-4ab7-b60a-c430a0802ce8.jpg" style="height:500px; width:369px" /></p>\n\n<p>作为敏捷社区的经典名作，《敏捷软件开发：用户故事实战》不负众望，为软件行业提供了一种高效的需求过程，通过用户故事来节省时间、消除重复工作和开发更优秀的软件。要想构建可以满足用户需求的软件，最好的方法是从&ldquo;用户故事&rdquo;开始，用简明扼要的语言清楚明确地描述对实际用户有价值的功能。在本书中，敏捷实干家提供了一个详尽的蓝图来指导读者如何编写用户故事，如何在软件开发生命周期中实际运用用户故事。</p>\n\n<p>《敏捷软件开发：用户故事实战》共5部分21章，介绍了如何写出理想的用户故事，造成用户故事不理想的因素有哪些，如何在无法直接接触到用户的情况下有效搜集用户故事，如何对写好的用户故事进行整理、排优先级并在此基础上进行计划、管理和测试。</p>\n\n<p>《敏捷软件开发：用户故事实战》适合采用XP、Scrum甚至其他自主敏捷方法的所有开发、测试、分析师和项目负责人阅读和参考，可以帮助他们以更少的人手在更短的时间内开发出更符合用户需求的产品或服务。</p>\n', 3, '2019-04-16 17:10:54', '2019-04-16 17:10:54'),
	(17, '9787302519287', '马克思主义', '马克思', '清华大学出版社', 30.00, 0, 2, '', 2, '2019-06-06 14:17:55', '2019-06-06 14:17:55'),
	(18, '9787302519123', '毛泽东思想', '毛泽东', '清华大学出版社', 30.00, 0, 36, '', 2, '2019-06-06 14:19:29', '2019-06-06 14:19:29');
/*!40000 ALTER TABLE `book_info` ENABLE KEYS */;

-- Dumping structure for table boot_nbbook.book_type
CREATE TABLE IF NOT EXISTS `book_type` (
  `book_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_type_name` varchar(64) DEFAULT NULL,
  `book_type_parent_id` int(11) DEFAULT NULL,
  `book_type_create_time` datetime DEFAULT NULL,
  `book_type_last_modify_time` datetime DEFAULT NULL,
  `book_type_note` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`book_type_id`) USING BTREE,
  KEY `fk_book_type` (`book_type_parent_id`) USING BTREE,
  CONSTRAINT `fk_book_type` FOREIGN KEY (`book_type_parent_id`) REFERENCES `book_type` (`book_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.book_type: ~75 rows (approximately)
/*!40000 ALTER TABLE `book_type` DISABLE KEYS */;
INSERT INTO `book_type` (`book_type_id`, `book_type_name`, `book_type_parent_id`, `book_type_create_time`, `book_type_last_modify_time`, `book_type_note`) VALUES
	(1, '所有分类', NULL, '2019-04-09 16:42:00', '2019-04-09 16:42:00', NULL),
	(2, '马列主义毛邓思想', 1, '2019-04-09 16:43:00', '2019-04-19 21:26:15', ''),
	(3, '哲学', 1, '2019-04-09 16:43:20', '2019-04-09 16:43:20', NULL),
	(4, '社会科学总论', 1, '2019-04-09 16:43:20', '2019-04-09 16:43:20', NULL),
	(5, '政治、法律', 1, '2019-04-09 16:43:20', '2019-04-09 16:43:20', NULL),
	(6, '军事', 1, '2019-04-09 16:43:21', '2019-04-09 16:43:21', NULL),
	(7, '经济', 1, '2019-04-09 16:43:25', '2019-04-09 16:43:25', NULL),
	(8, '文化、科学、教育、体育', 1, '2019-04-09 16:43:26', '2019-04-09 16:43:26', NULL),
	(9, '语言、文字', 1, '2019-04-09 16:47:00', '2019-04-09 16:47:00', NULL),
	(10, '文学', 1, '2019-04-09 16:47:00', '2019-04-09 16:47:00', NULL),
	(11, '艺术', 1, '2019-04-09 16:47:00', '2019-04-09 16:47:00', NULL),
	(12, '历史、地理', 1, '2019-04-09 16:47:00', '2019-04-09 16:47:00', NULL),
	(13, '自然科学总论', 1, '2019-04-09 16:47:00', '2019-04-09 16:47:00', NULL),
	(14, '数理科学和化学', 1, '2019-04-09 16:47:00', '2019-04-09 16:47:00', NULL),
	(15, '天文学、地球科学', 1, '2019-04-09 16:47:00', '2019-04-09 16:47:00', NULL),
	(16, '生物科学', 1, '2019-04-09 16:47:20', '2019-04-09 16:47:20', NULL),
	(17, '医药、卫生', 1, '2019-04-09 16:47:20', '2019-04-09 16:47:20', NULL),
	(18, '农业科学', 1, '2019-04-09 16:47:20', '2019-04-09 16:47:20', NULL),
	(19, '工业技术', 1, '2019-04-09 16:47:20', '2019-04-09 16:47:20', NULL),
	(20, '交通运输', 1, '2019-04-09 16:47:20', '2019-04-09 16:47:20', NULL),
	(21, '航空、航天', 1, '2019-04-09 16:47:20', '2019-04-09 16:47:20', NULL),
	(22, '环境科学、安全科学', 1, '2019-04-09 16:47:20', '2019-04-09 16:47:20', NULL),
	(23, '综合性图书', 1, '2019-04-09 16:51:20', '2019-04-09 16:51:20', NULL),
	(27, '测试分类1', 1, '2019-04-10 15:55:38', '2019-04-10 15:59:10', ''),
	(29, '测试分类2', 1, '2019-04-10 16:04:13', '2019-04-10 16:04:13', ''),
	(31, '测试2', 29, '2019-04-10 16:04:43', '2019-04-10 16:04:43', '222'),
	(32, '马克思、恩格斯著作', 2, '2019-04-10 16:14:30', '2019-04-10 16:14:30', ''),
	(33, '列宁著作', 2, '2019-04-10 16:14:41', '2019-04-10 16:14:41', ''),
	(34, '斯大林著作', 2, '2019-04-10 16:15:00', '2019-04-10 16:15:00', ''),
	(35, '毛泽东著作', 2, '2019-04-10 16:15:14', '2019-04-10 16:15:14', ''),
	(36, '马克思、恩格斯、列宁、斯大林、毛泽东著作汇编', 2, '2019-04-10 16:15:40', '2019-04-10 16:15:40', ''),
	(37, '马克思、恩格斯、列宁、斯大林、毛泽东的生平和传记', 2, '2019-04-10 16:16:00', '2019-04-10 16:16:00', ''),
	(38, '马克思主义、列宁主义、毛泽东思想的学习和研究', 2, '2019-04-10 16:16:21', '2019-04-10 16:16:21', ''),
	(39, '哲学理论', 3, '2019-04-10 16:16:37', '2019-04-10 16:16:37', ''),
	(40, '世界哲学', 3, '2019-04-10 16:16:47', '2019-04-10 16:16:47', ''),
	(41, '中国哲学', 3, '2019-04-10 16:17:59', '2019-04-10 16:17:59', ''),
	(42, '亚洲哲学', 3, '2019-04-10 16:18:10', '2019-04-10 16:18:10', ''),
	(43, '非洲哲学', 3, '2019-04-10 16:18:23', '2019-04-10 16:18:23', ''),
	(44, '欧洲哲学', 3, '2019-04-10 16:18:35', '2019-04-10 16:18:35', ''),
	(45, '大洋洲哲学', 3, '2019-04-10 16:18:44', '2019-04-10 16:18:44', ''),
	(46, '美洲哲学', 3, '2019-04-10 16:18:53', '2019-04-10 16:18:53', ''),
	(50, '思维科学', 3, '2019-04-10 16:24:58', '2019-04-10 16:24:58', ''),
	(51, '无神论、宗教', 3, '2019-04-10 16:25:18', '2019-04-10 16:25:18', ''),
	(52, '社会科学理论与方法论', 4, '2019-04-10 16:26:24', '2019-04-10 16:26:24', ''),
	(53, '社会科学现状、概况', 4, '2019-04-10 16:26:34', '2019-04-10 16:26:34', ''),
	(54, '机关、团体、会议', 4, '2019-04-10 16:26:44', '2019-04-10 16:26:44', ''),
	(55, '社会科学研究方法', 4, '2019-04-10 16:26:55', '2019-04-10 16:26:55', ''),
	(56, '社会科学教育与普及', 4, '2019-04-10 16:27:09', '2019-04-10 16:27:09', ''),
	(57, '社会科学丛书、文集、连续性出版物', 4, '2019-04-10 16:27:25', '2019-04-10 16:27:25', ''),
	(58, '社会科学参考工具书', 4, '2019-04-10 16:27:38', '2019-04-10 16:27:38', ''),
	(59, '社会科学文献检索工具书', 4, '2019-04-10 16:27:49', '2019-04-10 16:27:49', ''),
	(60, '统计学', 4, '2019-04-10 16:27:57', '2019-04-10 16:27:57', ''),
	(61, '政治理论', 5, '2019-04-10 16:29:38', '2019-04-10 16:29:38', ''),
	(62, '国际共产主义运动', 5, '2019-04-10 16:31:03', '2019-04-10 16:31:03', ''),
	(63, '中国共产党', 5, '2019-04-10 16:31:18', '2019-04-10 16:31:18', ''),
	(64, '军事理论', 6, '2019-04-10 16:34:34', '2019-04-10 16:34:34', ''),
	(65, '政治经济学', 7, '2019-04-10 16:34:46', '2019-04-10 16:34:46', ''),
	(66, '文化理论', 8, '2019-04-10 16:34:56', '2019-04-10 16:34:56', ''),
	(67, '语言学', 9, '2019-04-10 16:35:08', '2019-04-10 16:35:08', ''),
	(68, '文学理论', 10, '2019-04-10 16:35:18', '2019-04-10 16:35:18', ''),
	(69, '艺术理论', 11, '2019-04-10 16:35:30', '2019-04-10 16:35:30', ''),
	(70, '史学理论', 12, '2019-04-10 16:35:42', '2019-04-10 16:35:42', ''),
	(71, '自然科学理论与方法论', 13, '2019-04-10 16:36:12', '2019-04-10 16:36:12', ''),
	(72, '数学', 14, '2019-04-10 16:36:23', '2019-04-10 16:36:23', ''),
	(73, '天文学', 15, '2019-04-10 16:36:33', '2019-04-10 16:36:33', ''),
	(74, '普通生物学', 16, '2019-04-10 16:36:43', '2019-04-10 16:36:43', ''),
	(75, '预防医学、卫生学', 17, '2019-04-10 16:36:53', '2019-04-10 16:36:53', ''),
	(76, '农业基础科学', 18, '2019-04-10 16:37:06', '2019-04-10 16:37:06', ''),
	(77, '一般工业技术', 19, '2019-04-10 16:37:17', '2019-04-10 16:37:17', ''),
	(78, '综合运输', 20, '2019-04-10 16:37:45', '2019-04-10 16:37:45', ''),
	(79, '航空、航天技术的研究与探索', 21, '2019-04-10 16:38:05', '2019-04-10 16:38:05', ''),
	(80, '环境科学基础理论', 22, '2019-04-10 16:38:14', '2019-04-10 16:38:14', ''),
	(81, '丛书', 23, '2019-04-10 16:38:27', '2019-04-10 16:38:27', ''),
	(82, '百科全书、类书', 23, '2019-04-10 16:38:37', '2019-04-10 16:38:37', ''),
	(83, '测试1', 27, '2019-04-17 21:17:20', '2019-04-17 21:17:20', '');
/*!40000 ALTER TABLE `book_type` ENABLE KEYS */;

-- Dumping structure for table boot_nbbook.lend_return_list
CREATE TABLE IF NOT EXISTS `lend_return_list` (
  `lend_return_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `lend_date` date DEFAULT NULL,
  `should_lend_days` int(11) DEFAULT NULL,
  `should_return_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `is_damage` int(11) DEFAULT NULL,
  `damage_degree` varchar(32) DEFAULT NULL,
  `damage_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lend_return_id`) USING BTREE,
  KEY `fk_userId` (`user_id`) USING BTREE,
  KEY `fk_bookId` (`book_id`) USING BTREE,
  CONSTRAINT `fk_bookId` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.lend_return_list: ~17 rows (approximately)
/*!40000 ALTER TABLE `lend_return_list` DISABLE KEYS */;
INSERT INTO `lend_return_list` (`lend_return_id`, `book_id`, `user_id`, `lend_date`, `should_lend_days`, `should_return_date`, `return_date`, `is_damage`, `damage_degree`, `damage_note`) VALUES
	(1, 1, 155479343253180, '2019-04-17', 10, '2019-04-27', '2019-04-18', 0, NULL, NULL),
	(2, 2, 155479343253180, '2019-04-17', 20, '2019-05-07', '2019-04-19', 0, '', ''),
	(3, 3, 155479343253065, '2019-03-17', 10, '2019-03-27', '2019-04-19', 1, '轻微损毁', '损毁'),
	(4, 4, 155479343253065, '2019-04-17', 20, '2019-05-07', '2019-04-19', 0, '', ''),
	(5, 6, 155479343253065, '2019-04-17', 20, '2019-05-07', '2019-04-19', 0, '', ''),
	(9, 1, 155479343253065, '2019-04-18', 10, '2019-04-28', '2019-04-19', 0, '', ''),
	(10, 1, 155479343253180, '2019-04-19', 10, '2019-04-29', '2019-04-19', 0, '', ''),
	(11, 2, 155479343253111, '2019-04-19', 10, '2019-04-29', '2019-06-05', 1, '', ''),
	(12, 1, 155479343253065, '2019-06-05', 20, '2019-06-25', '2019-06-06', 1, '', ''),
	(13, 2, 155479343253111, '2019-06-06', 10, '2019-06-16', '2019-06-06', 1, '', ''),
	(14, 1, 155479343253065, '2019-06-06', 20, '2019-06-26', '2019-06-24', 0, '', ''),
	(15, 2, 155479343253065, '2019-06-06', 10, '2019-06-16', '2019-06-06', 1, '严重损毁', '书烧坏了'),
	(16, 3, 155479343253065, '2019-06-06', 20, '2019-06-26', '2019-06-24', 1, '轻微损毁', ''),
	(17, 10, 155479496654441, '2019-06-06', 20, '2019-06-26', NULL, NULL, NULL, NULL),
	(18, 2, 155479343253111, '2019-06-24', 10, '2019-07-04', '2019-06-24', 0, '', ''),
	(19, 4, 155479343253111, '2019-06-24', 20, '2019-07-14', NULL, NULL, NULL, NULL),
	(20, 6, 156134674481903, '2019-06-24', 20, '2019-07-14', '2019-06-24', 0, '', '');
/*!40000 ALTER TABLE `lend_return_list` ENABLE KEYS */;

-- Dumping structure for table boot_nbbook.permission
CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(64) NOT NULL,
  `permission_url` varchar(256) DEFAULT NULL,
  `permission_parent_id` int(11) DEFAULT NULL,
  `permission_icon` varchar(256) DEFAULT NULL,
  `permission_create_time` datetime DEFAULT NULL,
  `permission_last_modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE,
  KEY `fk_permission` (`permission_parent_id`) USING BTREE,
  CONSTRAINT `fk_permission` FOREIGN KEY (`permission_parent_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.permission: ~13 rows (approximately)
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` (`permission_id`, `permission_name`, `permission_url`, `permission_parent_id`, `permission_icon`, `permission_create_time`, `permission_last_modify_time`) VALUES
	(1, '系统菜单', NULL, NULL, 'fa fa-desktop', '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(2, '系统管理', '', 1, 'fa fa-cog', '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(3, '用户管理', '/admin/user', 2, 'fa fa-user', '2019-03-26 00:00:00', '2019-03-26 00:00:00'),
	(4, '角色管理', '/admin/role', 2, 'fa fa-list', '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(5, '图书管理', NULL, 1, 'fa fa-book', '2019-04-09 00:00:00', '2019-04-09 00:00:00'),
	(6, '图书分类管理', '/admin/booktype', 5, 'fa fa-file-text', '2019-04-09 15:50:00', '2019-04-09 15:50:00'),
	(7, '应用管理', '/admin/permission', 2, 'fa fa-tasks', '2019-04-10 18:37:00', '2019-04-10 18:37:00'),
	(9, '图书信息管理', '/admin/bookinfo', 5, 'fa fa-book', '2019-04-15 00:00:00', '2019-04-15 00:00:00'),
	(10, '借书管理', '/admin/booklend', 5, 'fa fa-edit', '2019-04-17 00:00:00', '2019-04-17 00:00:00'),
	(11, '还书管理', '/admin/bookreturn', 5, 'fa fa-pencil', '2019-04-18 00:00:00', '2019-04-18 00:00:00'),
	(12, '借阅者', NULL, 1, 'fa fa-user', '2019-04-19 00:00:00', '2019-04-19 00:00:00'),
	(13, '图书检索', '/admin/booksearch', 12, 'fa fa-book', '2019-04-19 00:00:00', '2019-04-19 00:00:00'),
	(14, '借还记录', '/admin/lendrecord', 12, 'fa fa-file-text-o', '2019-04-19 00:00:00', '2019-04-19 00:00:00');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;

-- Dumping structure for table boot_nbbook.role
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL,
  `role_create_time` datetime DEFAULT NULL,
  `role_last_modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.role: ~4 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`role_id`, `role_name`, `role_create_time`, `role_last_modify_time`) VALUES
	(1, '系统管理员', '2019-03-28 00:00:00', '2019-03-28 00:00:00'),
	(2, '借阅者', '2019-03-28 20:31:02', '2019-06-15 18:58:22'),
	(4, '图书管理员', '2019-03-29 16:03:45', '2019-03-29 19:13:34');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table boot_nbbook.role_permission
CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`role_permission_id`) USING BTREE,
  KEY `fk_role_permission_rs1` (`role_id`) USING BTREE,
  KEY `fk_role_permission_rs2` (`permission_id`) USING BTREE,
  CONSTRAINT `fk_role_permission_rs1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_role_permission_rs2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.role_permission: ~27 rows (approximately)
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` (`role_permission_id`, `role_id`, `permission_id`) VALUES
	(186, 4, 1),
	(187, 4, 2),
	(188, 4, 3),
	(189, 4, 4),
	(190, 4, 7),
	(191, 4, 5),
	(192, 4, 6),
	(193, 4, 9),
	(194, 4, 10),
	(195, 4, 11),
	(244, 2, 1),
	(245, 2, 5),
	(246, 2, 10),
	(247, 2, 11),
	(248, 2, 12),
	(249, 2, 13),
	(250, 2, 14),
	(251, 1, 1),
	(252, 1, 2),
	(253, 1, 3),
	(254, 1, 4),
	(255, 1, 7),
	(256, 1, 5),
	(257, 1, 6),
	(258, 1, 9),
	(259, 1, 10),
	(260, 1, 11);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;

-- Dumping structure for table boot_nbbook.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`role_user_id`) USING BTREE,
  KEY `fk_role_user_rs1` (`role_id`) USING BTREE,
  KEY `fk_role_user_rs2` (`user_id`) USING BTREE,
  CONSTRAINT `fk_role_user_rs1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_role_user_rs2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.role_user: ~6 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`role_user_id`, `user_id`, `role_id`) VALUES
	(27, 155479343250980, 1),
	(28, 155479343250980, 4),
	(33, 156134664952550, 4),
	(37, 156134674481903, 2),
	(38, 155479496654441, 2),
	(39, 155479343253180, 4),
	(40, 156274257516315, 2);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table boot_nbbook.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password` char(32) NOT NULL,
  `user_email` varchar(64) NOT NULL,
  `user_phone` varchar(32) NOT NULL,
  `user_state` int(11) NOT NULL DEFAULT 1,
  `user_create_time` datetime DEFAULT NULL,
  `user_last_modify_time` datetime DEFAULT NULL,
  `user_true_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table boot_nbbook.user: ~7 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_email`, `user_phone`, `user_state`, `user_create_time`, `user_last_modify_time`, `user_true_name`) VALUES
	(155479343250980, 'admin', 'ba3873f74a5b46a4f93816721dad7345', '1176239106@qq.com', '13515107277', 1, '2019-03-12 00:00:00', '2019-04-17 13:38:20', '超级管理员'),
	(155479343253065, 'huangjianzhi', '72934d0fcf958f9026c850da8780b719', '826243171@qq.com', '13515107279', 0, '2019-03-13 19:07:52', '2019-06-24 11:27:03', '黄剑'),
	(155479343253111, 'luhailiang', 'de9a78320c69837c3016129de02d2837', 'luhailiang98@gmail.com', '13515107280', 1, '2019-03-17 15:13:57', '2019-06-24 11:09:56', '陆海亮'),
	(155479343253180, 'hejialiang', 'ba3873f74a5b46a4f93816721dad7345', '893524733@qq.com', '18218121213', 1, '2019-03-18 22:30:50', '2019-04-17 20:59:25', '何嘉亮'),
	(155479496654441, 'guoweiyu', 'ba3873f74a5b46a4f93816721dad7345', '1402009986@qq.com', '13515107777', 1, '2019-04-09 15:29:30', '2019-04-17 16:13:47', '郭为宇'),
	(156134664952550, 'ruanjieyu', 'cdec75e6d1ffc9c72698f3a25ea88f93', '1299345445@qq.com', '15340544719', 1, '2019-06-24 11:24:10', '2019-06-24 11:24:10', '阮婕妤'),
	(156134674481903, 'shixin', '15f4d943f3eb1a759c56c5ccc78cc715', '541783693@qq.com', '13505851913', 1, '2019-06-24 11:25:45', '2019-06-24 11:25:45', '石馨'),
	(156274257516315, 'user', 'ba3873f74a5b46a4f93816721dad7345', '1347845688@qq.com', '13022502404', 1, '2019-07-10 15:09:35', '2019-07-10 15:09:35', 'test');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
