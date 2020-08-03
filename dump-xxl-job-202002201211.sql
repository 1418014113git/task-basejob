-- MySQL dump 10.13  Distrib 5.7.13, for Win64 (x86_64)
--
-- Host: 192.168.42.230    Database: xxl-job
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
-- Table structure for table `XXL_JOB_QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_CALENDARS`
--

LOCK TABLES `XXL_JOB_QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_JOB_DETAILS`
--

LOCK TABLES `XXL_JOB_QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_LOCKS`
--

LOCK TABLES `XXL_JOB_QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_LOCKS` VALUES ('getSchedulerFactoryBean','STATE_ACCESS'),('getSchedulerFactoryBean','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `XXL_JOB_QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_SCHEDULER_STATE` VALUES ('getSchedulerFactoryBean','localhost.localdomain1574643732808',1575897721054,5000);
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `XXL_JOB_QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  CONSTRAINT `XXL_JOB_QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `XXL_JOB_QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGERS`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_GROUP`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_GROUP` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) NOT NULL COMMENT '执行器AppName',
  `title` varchar(12) NOT NULL COMMENT '执行器名称',
  `order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `address_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '执行器地址类型：0=自动注册、1=手动录入',
  `address_list` varchar(512) DEFAULT NULL COMMENT '执行器地址列表，多地址逗号分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_GROUP`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_GROUP` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_GROUP` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGER_GROUP` VALUES (2,'hsyz-task-yqxx','舆情信息',1,0,'192.168.122.1:9999');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_INFO`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_INFO` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_cron` varchar(128) NOT NULL COMMENT '任务执行CRON',
  `job_desc` varchar(255) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL COMMENT '作者',
  `alarm_email` varchar(255) DEFAULT NULL COMMENT '报警邮件',
  `executor_route_strategy` varchar(50) DEFAULT NULL COMMENT '执行器路由策略',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `executor_block_strategy` varchar(50) DEFAULT NULL COMMENT '阻塞处理策略',
  `executor_timeout` int(11) NOT NULL DEFAULT '0' COMMENT '任务执行超时时间，单位秒',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `glue_type` varchar(50) NOT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) DEFAULT NULL COMMENT 'GLUE备注',
  `glue_updatetime` datetime DEFAULT NULL COMMENT 'GLUE更新时间',
  `child_jobid` varchar(255) DEFAULT NULL COMMENT '子任务ID，多个逗号分隔',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_INFO`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_INFO` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_INFO` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGER_INFO` VALUES (1,2,'0 5 * * * ? *','测试任务1','2018-11-03 22:21:31','2019-11-18 11:05:14','XXL','','FIRST','mysqlToEsJobHandler','','SERIAL_EXECUTION',0,0,'BEAN','','GLUE代码初始化','2018-11-03 22:21:31','');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_LOG`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_LOG` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `executor_address` varchar(255) DEFAULT NULL COMMENT '执行器地址，本次执行的地址',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `executor_sharding_param` varchar(20) DEFAULT NULL COMMENT '执行器任务分片参数，格式如 1/2',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `trigger_time` datetime DEFAULT NULL COMMENT '调度-时间',
  `trigger_code` int(11) NOT NULL COMMENT '调度-结果',
  `trigger_msg` text COMMENT '调度-日志',
  `handle_time` datetime DEFAULT NULL COMMENT '执行-时间',
  `handle_code` int(11) NOT NULL COMMENT '执行-状态',
  `handle_msg` text COMMENT '执行-日志',
  `alarm_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '告警状态：0-默认、1-无需告警、2-告警成功、3-告警失败',
  PRIMARY KEY (`id`),
  KEY `I_trigger_time` (`trigger_time`),
  KEY `I_handle_code` (`handle_code`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_LOG`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_LOG` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOG` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGER_LOG` VALUES (1,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 18:55:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 18:55:18',200,'',0),(2,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:44:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(3,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:45:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(4,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:45:45',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(5,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:46:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572522365525, request:XxlRpcRequest{requestId=\'cbb31b08-42b0-488f-accc-591e8a86a735\', createMillisTime=1572522360523, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=5, logDateTim=1572522360444, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(6,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:46:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572522410527, request:XxlRpcRequest{requestId=\'ab5c5896-6150-436c-b495-46da6224e909\', createMillisTime=1572522405526, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=6, logDateTim=1572522405443, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(7,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:47:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572522425472, request:XxlRpcRequest{requestId=\'0e64a328-9f8b-4840-b951-64fb8d57d9be\', createMillisTime=1572522420471, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=7, logDateTim=1572522420397, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(8,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:47:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(9,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:48:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(10,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:48:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(11,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:49:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(12,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:49:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(13,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:50:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(14,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:50:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(15,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:51:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(16,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:51:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(17,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:52:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(18,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:52:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\r\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\r\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\r\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:665)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:612)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:529)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:491)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: java.net.ConnectException: Connection refused: no further information\r\n	... 11 more\r\n',NULL,0,NULL,1),(19,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:53:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\r\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\r\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\r\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:665)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:612)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:529)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:491)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: java.net.ConnectException: Connection refused: no further information\r\n	... 11 more\r\n',NULL,0,NULL,1),(20,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:53:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(21,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:54:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(22,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:54:46',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(23,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:55:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(24,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:55:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572522950956, request:XxlRpcRequest{requestId=\'32fc9ad4-edf6-40e0-8a54-331fa01a167e\', createMillisTime=1572522945955, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=24, logDateTim=1572522945770, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(25,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:56:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572522965669, request:XxlRpcRequest{requestId=\'87b1525f-7c27-45d4-a6d4-1f98c20fa75d\', createMillisTime=1572522960667, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=25, logDateTim=1572522960583, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(26,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:57:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(27,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:57:05',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(28,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:57:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(29,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:58:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(30,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 19:58:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(31,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:59:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572523145891, request:XxlRpcRequest{requestId=\'030b4b29-0477-4c23-84c2-31759142e705\', createMillisTime=1572523140859, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=31, logDateTim=1572523140762, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(32,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 19:59:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\r\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\r\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\r\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:665)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:612)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:529)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:491)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: java.net.ConnectException: Connection refused: no further information\r\n	... 11 more\r\n',NULL,0,NULL,1),(33,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:00:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(34,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:00:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(35,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:01:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(36,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:01:45',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(37,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:02:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572523325755, request:XxlRpcRequest{requestId=\'92104e2f-c90f-4493-b8ac-1acc366864b1\', createMillisTime=1572523320745, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=37, logDateTim=1572523320527, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(38,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:02:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572523370788, request:XxlRpcRequest{requestId=\'fd158df1-0b42-434f-94f4-fe1e0be56104\', createMillisTime=1572523365787, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=38, logDateTim=1572523365650, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(39,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:03:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: xxl-rpc, request timeout at:1572523385907, request:XxlRpcRequest{requestId=\'4c1ad4c8-f32a-4ab0-9a16-618a91487250\', createMillisTime=1572523380907, accessToken=\'\', className=\'com.nmghr.job.core.biz.ExecutorBiz\', methodName=\'run\', parameterTypes=[class com.nmghr.job.core.biz.model.TriggerParam], parameters=[TriggerParam{jobId=1, executorHandler=\'demoJobHandler\', executorParams=\'\', executorBlockStrategy=\'SERIAL_EXECUTION\', executorTimeout=0, logId=39, logDateTim=1572523380760, glueType=\'BEAN\', glueSource=\'\', glueUpdatetime=1541254891000, broadcastIndex=0, broadcastTotal=1}], version=\'null\'}\r\n	at com.nmghr.rpc.remoting.net.params.XxlRpcFutureResponse.get(XxlRpcFutureResponse.java:117)\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:220)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\n',NULL,0,NULL,1),(40,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:03:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(41,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:04:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(42,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:04:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(43,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:05:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(44,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:05:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(45,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:06:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(46,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:06:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(47,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:07:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(48,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:07:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(49,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:08:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(50,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:08:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(51,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:09:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(52,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:09:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(53,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:10:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(54,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:10:46',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(55,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:11:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(56,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:11:46',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(57,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:12:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(58,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:13:28',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(59,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:13:29',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(60,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:15:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:26:38',500,'java.net.SocketTimeoutException: timeout\r\n	at okio.Okio$4.newTimeoutException(Okio.java:230)\r\n	at okio.AsyncTimeout.exit(AsyncTimeout.java:285)\r\n	at okio.AsyncTimeout$2.read(AsyncTimeout.java:241)\r\n	at okio.RealBufferedSource.indexOf(RealBufferedSource.java:345)\r\n	at okio.RealBufferedSource.readUtf8LineStrict(RealBufferedSource.java:217)\r\n	at okio.RealBufferedSource.readUtf8LineStrict(RealBufferedSource.java:211)\r\n	at okhttp3.internal.http1.Http1Codec.readResponseHeaders(Http1Codec.java:187)\r\n	at okhttp3.internal.http.CallServerInterceptor.intercept(CallServerInterceptor.java:88)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.connection.ConnectInterceptor.intercept(ConnectInterceptor.java:45)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:121)\r\n	at okhttp3.internal.cache.CacheInterceptor.intercept(CacheInterceptor.java:93)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:121)\r\n	at okhttp3.internal.http.BridgeInterceptor.intercept(BridgeInterceptor.java:93)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RetryAndFollowUpInterceptor.intercept(RetryAndFollowUpInterceptor.java:125)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:121)\r\n	at okhttp3.RealCall.getResponseWithInterceptorChain(RealCall.java:200)\r\n	at okhttp3.RealCall.execute(RealCall.java:77)\r\n	at com.nmghr.util.OkHttpUtil.execute(OkHttpUtil.java:41)\r\n	at com.nmghr.util.OkHttpUtil.getStringFromServer(OkHttpUtil.java:52)\r\n	at com.nmghr.service.YCService.getData(YCService.java:141)\r\n	at com.nmghr.service.YCService.getYcInfo(YCService.java:120)\r\n	at com.nmghr.service.DemoJobHandler.execute(DemoJobHandler.java:34)\r\n	at com.nmghr.job.core.thread.JobThread.run(JobThread.java:153)\r\nCaused by: java.net.SocketTimeoutException: Read timed out\r\n	at java.net.SocketInputStream.socketRead0(Native Method)\r\n	at java.net.SocketInputStream.socketRead(SocketInputStream.java:116)\r\n	at java.net.SocketInputStream.read(SocketInputStream.java:171)\r\n	at java.net.SocketInputStream.read(SocketInputStream.java:141)\r\n	at okio.Okio$2.read(Okio.java:139)\r\n	at okio.AsyncTimeout$2.read(AsyncTimeout.java:237)\r\n	... 25 more\r\n',1),(61,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:15:17',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:26:48',500,'java.net.SocketTimeoutException: Read timed out\r\n	at java.net.SocketInputStream.socketRead0(Native Method)\r\n	at java.net.SocketInputStream.socketRead(SocketInputStream.java:116)\r\n	at java.net.SocketInputStream.read(SocketInputStream.java:171)\r\n	at java.net.SocketInputStream.read(SocketInputStream.java:141)\r\n	at okio.Okio$2.read(Okio.java:139)\r\n	at okio.AsyncTimeout$2.read(AsyncTimeout.java:237)\r\n	at okio.RealBufferedSource.indexOf(RealBufferedSource.java:345)\r\n	at okio.RealBufferedSource.readUtf8LineStrict(RealBufferedSource.java:217)\r\n	at okio.RealBufferedSource.readUtf8LineStrict(RealBufferedSource.java:211)\r\n	at okhttp3.internal.http1.Http1Codec.readResponseHeaders(Http1Codec.java:187)\r\n	at okhttp3.internal.http.CallServerInterceptor.intercept(CallServerInterceptor.java:88)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.connection.ConnectInterceptor.intercept(ConnectInterceptor.java:45)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:121)\r\n	at okhttp3.internal.cache.CacheInterceptor.intercept(CacheInterceptor.java:93)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:121)\r\n	at okhttp3.internal.http.BridgeInterceptor.intercept(BridgeInterceptor.java:93)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RetryAndFollowUpInterceptor.intercept(RetryAndFollowUpInterceptor.java:125)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:147)\r\n	at okhttp3.internal.http.RealInterceptorChain.proceed(RealInterceptorChain.java:121)\r\n	at okhttp3.RealCall.getResponseWithInterceptorChain(RealCall.java:200)\r\n	at okhttp3.RealCall.execute(RealCall.java:77)\r\n	at com.nmghr.util.OkHttpUtil.execute(OkHttpUtil.java:41)\r\n	at com.nmghr.util.OkHttpUtil.getStringFromServer(OkHttpUtil.java:52)\r\n	at com.nmghr.service.YCService.getData(YCService.java:141)\r\n	at com.nmghr.service.YCService.getYcInfo(YCService.java:102)\r\n	at com.nmghr.service.DemoJobHandler.execute(DemoJobHandler.java:34)\r\n	at com.nmghr.job.core.thread.JobThread.run(JobThread.java:153)\r\n',1),(62,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:16:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:27:39',200,'',0),(63,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:16:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:28:00',200,'',0),(64,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:17:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:28:21',200,'',0),(65,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:17:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:28:40',200,'',0),(66,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:18:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:28:57',200,'',0),(67,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:18:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:29:14',200,'',0),(68,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:19:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:29:36',200,'',0),(69,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:19:17',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:29:57',200,'',0),(70,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:20:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:30:14',200,'',0),(71,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:20:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:30:34',200,'',0),(72,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:21:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:30:55',200,'',0),(73,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:21:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:31:14',200,'',0),(74,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:22:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:31:34',200,'',0),(75,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:22:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:31:52',200,'',0),(76,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:23:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:32:13',200,'',0),(77,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:23:17',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:32:35',200,'',0),(78,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:24:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:32:51',200,'',0),(79,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:24:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(80,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:25:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(81,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:25:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(82,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:26:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(83,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:26:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(84,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:27:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(85,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:27:17',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(86,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:28:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(87,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:28:17',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(88,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:29:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(89,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:29:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(90,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:30:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(91,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:30:17',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(92,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:31:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(93,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:31:18',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(94,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:32:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(95,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:32:17',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(96,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:33:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(97,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:33:17',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\r\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\r\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\r\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:665)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:612)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:529)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:491)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: java.net.ConnectException: Connection refused: no further information\r\n	... 11 more\r\n',NULL,0,NULL,1),(98,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:34:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\r\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\r\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\r\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:665)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:612)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:529)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:491)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: java.net.ConnectException: Connection refused: no further information\r\n	... 11 more\r\n',NULL,0,NULL,1),(99,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:34:17',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.105:9999\r\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\r\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\r\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\r\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:665)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:612)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:529)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:491)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: java.net.ConnectException: Connection refused: no further information\r\n	... 11 more\r\n',NULL,0,NULL,1),(100,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:36:18',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(101,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 20:37:00',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(102,1,1,'192.168.1.105:9999','demoJobHandler','',NULL,0,'2019-10-31 20:39:00',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.105:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.105:9999<br>code：200<br>msg：null','2019-10-31 20:47:43',200,'',0),(103,1,1,NULL,'demoJobHandler','',NULL,0,'2019-10-31 21:39:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(104,1,1,NULL,'demoJobHandler','',NULL,0,'2019-11-01 09:39:20',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>',NULL,0,NULL,1),(105,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 09:53:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null','2019-11-01 09:53:21',200,'',0),(106,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 09:59:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null','2019-11-01 09:59:02',200,'',0),(107,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 10:05:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null','2019-11-01 10:05:04',200,'',0),(108,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 10:25:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(109,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 10:36:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null','2019-11-01 10:36:02',200,'',0),(110,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 10:38:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null','2019-11-01 10:47:33',200,'',0),(111,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 11:00:20',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null',NULL,0,NULL,0),(112,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 11:03:01',500,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.106:9999\r\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\r\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\r\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\r\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: no further information: /192.168.1.106:9999\r\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\r\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\r\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\r\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:665)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:612)\r\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:529)\r\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:491)\r\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\r\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\r\n	... 1 more\r\nCaused by: java.net.ConnectException: Connection refused: no further information\r\n	... 11 more\r\n',NULL,0,NULL,1),(113,1,1,'192.168.1.106:9999','demoJobHandler','',NULL,0,'2019-11-01 11:05:01',200,'任务触发类型：Cron触发<br>调度机器：192.168.1.106<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.1.106:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.1.106:9999<br>code：200<br>msg：null','2019-11-01 11:15:11',200,'',0),(114,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-18 11:00:58',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-18 11:00:58',200,'',0),(115,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-18 11:03:46',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-18 11:03:46',200,'',0),(116,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-18 19:08:47',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-18 19:08:55',200,'',0),(117,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-18 19:10:16',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-18 19:10:23',200,'',0),(118,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:13:58',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:14:06',200,'',0),(119,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:14:19',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:14:26',200,'',0),(120,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:16:02',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:16:10',200,'',0),(121,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:16:13',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:16:18',200,'',0),(122,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:17:23',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:17:24',200,'',0),(123,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:17:59',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:17:59',200,'',0),(124,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:55:59',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999, 192.168.52.209:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:56:08',200,'',0),(125,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:56:06',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999, 192.168.52.209:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:56:15',200,'',0),(126,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:56:13',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999, 192.168.52.209:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:56:22',200,'',0),(127,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:56:21',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999, 192.168.52.209:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:56:28',200,'',0),(128,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-19 07:56:28',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999, 192.168.52.209:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-19 07:56:28',200,'',0),(129,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-22 14:03:31',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-22 14:03:32',200,'',0),(130,2,1,'172.16.6.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-25 09:47:41',500,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[172.16.6.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：172.16.6.1:9999<br>code：500<br>msg：com.nmghr.rpc.util.XxlRpcException: io.netty.channel.ConnectTimeoutException: connection timed out: /172.16.6.1:9999\n	at com.nmghr.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:228)\n	at com.sun.proxy.$Proxy81.run(Unknown Source)\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:189)\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:142)\n	at com.nmghr.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:76)\n	at com.nmghr.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:78)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at java.lang.Thread.run(Thread.java:745)\nCaused by: io.netty.channel.ConnectTimeoutException: connection timed out: /172.16.6.1:9999\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe$1.run(AbstractNioChannel.java:267)\n	at io.netty.util.concurrent.PromiseTask$RunnableAdapter.call(PromiseTask.java:38)\n	at io.netty.util.concurrent.ScheduledFutureTask.run(ScheduledFutureTask.java:127)\n	at io.netty.util.concurrent.AbstractEventExecutor.safeExecute(AbstractEventExecutor.java:163)\n	at io.netty.util.concurrent.SingleThreadEventExecutor.runAllTasks(SingleThreadEventExecutor.java:404)\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:495)\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:905)\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\n	... 1 more\n',NULL,0,NULL,1),(131,2,1,'192.168.122.1:9999','mysqlToEsJobHandler','',NULL,0,'2019-11-25 10:11:08',200,'任务触发类型：手动触发<br>调度机器：192.168.122.1<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:9999]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:9999<br>code：200<br>msg：null','2019-11-25 10:11:13',200,'',0);
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_LOGGLUE`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_LOGGLUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) DEFAULT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) NOT NULL COMMENT 'GLUE备注',
  `add_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_LOGGLUE`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` DISABLE KEYS */;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_LOGGLUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `XXL_JOB_QRTZ_TRIGGER_REGISTRY`
--

DROP TABLE IF EXISTS `XXL_JOB_QRTZ_TRIGGER_REGISTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XXL_JOB_QRTZ_TRIGGER_REGISTRY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(255) NOT NULL,
  `registry_key` varchar(255) NOT NULL,
  `registry_value` varchar(255) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `XXL_JOB_QRTZ_TRIGGER_REGISTRY`
--

LOCK TABLES `XXL_JOB_QRTZ_TRIGGER_REGISTRY` WRITE;
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_REGISTRY` DISABLE KEYS */;
INSERT INTO `XXL_JOB_QRTZ_TRIGGER_REGISTRY` VALUES (78,'EXECUTOR','hsyz-task-yqxx','192.168.122.1:9999','2019-12-09 15:17:39');
/*!40000 ALTER TABLE `XXL_JOB_QRTZ_TRIGGER_REGISTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'xxl-job'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-20 12:11:34
