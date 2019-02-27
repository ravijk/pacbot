/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 5.6.27-log : Database - pacmandata
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pacmandata` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `pacmandata`;

/*Table structure for table `ASGC_Issues` */

SET @region='$region';
SET @account='$account';
SET @eshost='$eshost';
SET @esport='$esport';
SET @LOGGING_ES_HOST_NAME='$LOGGING_ES_HOST_NAME';
SET @LOGGING_ES_PORT='$LOGGING_ES_PORT';
SET @ES_HOST_NAME='$ES_HOST_NAME';
SET @ES_PORT='$ES_PORT';
SET @ES_CLUSTER_NAME='$ES_CLUSTER_NAME';
SET @ES_PORT_ADMIN='$ES_PORT_ADMIN';
SET @ES_HEIMDALL_HOST_NAME='$ES_HEIMDALL_HOST_NAME';
SET @ES_HEIMDALL_PORT='$ES_HEIMDALL_PORT';
SET @ES_HEIMDALL_CLUSTER_NAME='$ES_HEIMDALL_CLUSTER_NAME';
SET @ES_HEIMDALL_PORT_ADMIN='$ES_HEIMDALL_PORT_ADMIN';
SET @ES_UPDATE_HOST='$ES_UPDATE_HOST';
SET @ES_UPDATE_PORT='$ES_UPDATE_PORT';
SET @ES_UPDATE_CLUSTER_NAME='$ES_UPDATE_CLUSTER_NAME';
SET @REDSHIFT_URL='$REDSHIFT_URL';
SET @REDSHIFT_USER_NAME='$REDSHIFT_USER_NAME';
SET @REDSHIFT_PASSWORD='$REDSHIFT_PASSWORD';
SET @PACMAN_HOST_NAME='$PACMAN_HOST_NAME';
SET @RDS_URL='$RDS_URL';
SET @RDS_USERNAME='$RDS_USERNAME';
SET @RDS_PASSWORD='$RDS_PASSWORD';
SET @JOB_BUCKET_REGION='$JOB_BUCKET_REGION';
SET @RULE_JOB_BUCKET_NAME='$RULE_JOB_BUCKET_NAME';
SET @JOB_LAMBDA_REGION='$JOB_LAMBDA_REGION';
SET @JOB_FUNCTION_NAME='$JOB_FUNCTION_NAME';
SET @JOB_FUNCTION_ARN='$JOB_FUNCTION_ARN';
SET @RULE_BUCKET_REGION='$RULE_BUCKET_REGION';
SET @RULE_JOB_BUCKET_NAME='$RULE_JOB_BUCKET_NAME';
SET @RULE_LAMBDA_REGION='$RULE_LAMBDA_REGION';
SET @RULE_FUNCTION_NAME='$RULE_FUNCTION_NAME';
SET @RULE_FUNCTION_ARN='$RULE_FUNCTION_ARN';
SET @CLOUD_INSIGHTS_TOKEN_URL='$CLOUD_INSIGHTS_TOKEN_URL';
SET @CLOUD_INSIGHTS_COST_URL='$CLOUD_INSIGHTS_COST_URL';
SET @SVC_CORP_USER_ID='$SVC_CORP_USER_ID';
SET @SVC_CORP_PASSWORD='$SVC_CORP_PASSWORD';
SET @CERTIFICATE_FEATURE_ENABLED='$CERTIFICATE_FEATURE_ENABLED';
SET @PATCHING_FEATURE_ENABLED='$PATCHING_FEATURE_ENABLED';
SET @VULNERABILITY_FEATURE_ENABLED='$VULNERABILITY_FEATURE_ENABLED';
SET @MAIL_SERVER='$MAIL_SERVER';
SET @PACMAN_S3='$PACMAN_S3';
SET @DATA_IN_DIR ='$DATA_IN_DIR';
SET @DATA_BKP_DIR ='$DATA_BKP_DIR';
SET @PAC_ROLE ='$PAC_ROLE';
SET @BASE_REGION ='$BASE_REGION';
SET @DATA_IN_S3 ='$DATA_IN_S3';
SET @BASE_ACCOUNT ='$BASE_ACCOUNT';
SET @PAC_RO_ROLE ='$PAC_RO_ROLE';


DROP TABLE IF EXISTS `OmniSearch_Config`;

CREATE TABLE `OmniSearch_Config` (
  `SEARCH_CATEGORY` varchar(100) COLLATE utf8_bin NOT NULL,
  `RESOURCE_TYPE` varchar(100) COLLATE utf8_bin NOT NULL,
  `REFINE_BY_FIELDS` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `RETURN_FIELDS` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `PacmanSubscriptions` */

DROP TABLE IF EXISTS `PacmanSubscriptions`;

CREATE TABLE `PacmanSubscriptions` (
  `subscriptionId` bigint(75) NOT NULL AUTO_INCREMENT,
  `emailId` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `subscriptionValue` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `Pacman_Asset_Config` */

DROP TABLE IF EXISTS `Pacman_Asset_Config`;

CREATE TABLE `Pacman_Asset_Config` (
  `resourceId` varchar(75) COLLATE utf8_bin NOT NULL,
  `configType` varchar(75) COLLATE utf8_bin NOT NULL,
  `config` text COLLATE utf8_bin,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`resourceId`,`configType`,`createdDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_AssetGroupDetails` */

DROP TABLE IF EXISTS `cf_AssetGroupDetails`;

CREATE TABLE `cf_AssetGroupDetails` (
  `groupId` varchar(75) COLLATE utf8_bin NOT NULL DEFAULT '',
  `groupName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `dataSource` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `displayName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `groupType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `createdBy` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `createdUser` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `modifiedUser` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `modifiedDate` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `aliasQuery` text COLLATE utf8_bin,
  `isVisible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_AssetGroupException` */

DROP TABLE IF EXISTS `cf_AssetGroupException`;

CREATE TABLE `cf_AssetGroupException` (
  `id_` bigint(20) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `targetType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `ruleName` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ruleId` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `exceptionName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `exceptionReason` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `dataSource` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_AssetGroupOwnerDetails` */

DROP TABLE IF EXISTS `cf_AssetGroupOwnerDetails`;

CREATE TABLE `cf_AssetGroupOwnerDetails` (
  `ownerId` varchar(100) COLLATE utf8_bin NOT NULL,
  `ownnerName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `assetGroupName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ownerEmailId` text COLLATE utf8_bin,
  PRIMARY KEY (`ownerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_AssetGroupTargetDetails` */

DROP TABLE IF EXISTS `cf_AssetGroupTargetDetails`;

CREATE TABLE `cf_AssetGroupTargetDetails` (
  `id_` varchar(75) COLLATE utf8_bin NOT NULL DEFAULT '',
  `groupId` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `targetType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `attributeName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `attributeValue` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_AssetGroupUserRoles` */

DROP TABLE IF EXISTS `cf_AssetGroupUserRoles`;

CREATE TABLE `cf_AssetGroupUserRoles` (
  `agUserRoleId` varchar(75) COLLATE utf8_bin NOT NULL,
  `assetGroupName` varchar(75) COLLATE utf8_bin NOT NULL,
  `assetGroupRole` int(75) NOT NULL,
  PRIMARY KEY (`agUserRoleId`,`assetGroupName`,`assetGroupRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `cf_Certificate`;

CREATE TABLE `cf_Certificate` (
  `id_` bigint(20) NOT NULL,
  `domainName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `certType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `validFrom` datetime DEFAULT NULL,
  `validTo` datetime DEFAULT NULL,
  `application` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `environment` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `appContact` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `updatedBy` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `certStatus` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



/*Table structure for table `cf_Datasource` */

DROP TABLE IF EXISTS `cf_Datasource`;

CREATE TABLE `cf_Datasource` (
  `dataSourceId` bigint(20) NOT NULL,
  `dataSourceName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `dataSourceDesc` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `config` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`dataSourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_Domain` */

DROP TABLE IF EXISTS `cf_Domain`;

CREATE TABLE `cf_Domain` (
  `domainName` varchar(75) COLLATE utf8_bin NOT NULL,
  `domainDesc` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `config` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `userId` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`domainName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


/*Table structure for table `cf_JobScheduler` */

DROP TABLE IF EXISTS `cf_JobScheduler`;

CREATE TABLE `cf_JobScheduler` (
  `jobId` varchar(75) COLLATE utf8_bin NOT NULL,
  `jobUUID` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `jobName` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `jobType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `jobParams` text COLLATE utf8_bin,
  `jobFrequency` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `jobExecutable` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `jobArn` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `userId` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`jobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_Jobs` */

DROP TABLE IF EXISTS `cf_Jobs`;

CREATE TABLE `cf_Jobs` (
  `jobId` bigint(20) NOT NULL,
  `rulesetId` bigint(20) DEFAULT NULL,
  `cronExpression` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`jobId`),
  KEY `IX_6A2145F9` (`rulesetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



/*Table structure for table `cf_OwnerDetails` */

DROP TABLE IF EXISTS `cf_OwnerDetails`;

CREATE TABLE `cf_OwnerDetails` (
  `contactId` varchar(100) COLLATE utf8_bin NOT NULL,
  `ownerName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ownerEmail` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


/*Table structure for table `cf_PatchStats_Kernel` */

DROP TABLE IF EXISTS `cf_PatchStats_Kernel`;

CREATE TABLE `cf_PatchStats_Kernel` (
  `awsaccount` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `instanceid` varchar(75) COLLATE utf8_bin NOT NULL,
  `rectype` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `ipaddressaws` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `nametag` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `vpcid` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `ipaddressrhs` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `rhshostname` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `systemid` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `gid` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `group_` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `kernel` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `nopendingerratas` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `erratadetails` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `iscompliant` tinyint(4) DEFAULT NULL,
  `isregistered` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`instanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_Policy` */

DROP TABLE IF EXISTS `cf_Policy`;

CREATE TABLE `cf_Policy` (
  `policyId` varchar(75) COLLATE utf8_bin NOT NULL,
  `policyName` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `policyDesc` text COLLATE utf8_bin,
  `resolution` longtext COLLATE utf8_bin,
  `policyUrl` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `policyVersion` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  PRIMARY KEY (`policyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


/*Table structure for table `cf_Rbac` */

DROP TABLE IF EXISTS `cf_Rbac`;

CREATE TABLE `cf_Rbac` (
  `rbacId` bigint(20) NOT NULL,
  `rbacType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `userOrGroupId` bigint(20) DEFAULT NULL,
  `applicationName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `environmentName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `stackName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `roleName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`rbacId`),
  KEY `IX_18DB1388` (`rbacType`,`userOrGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


/*Table structure for table `cf_RemediationCriteria` */

DROP TABLE IF EXISTS `cf_RemediationCriteria`;

CREATE TABLE `cf_RemediationCriteria` (
  `action` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `matchingString` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `subAction` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;




/*Table structure for table `cf_RuleInstance` */

DROP TABLE IF EXISTS `cf_RuleInstance`;

CREATE TABLE `cf_RuleInstance` (
  `ruleId` varchar(200) COLLATE utf8_bin NOT NULL,
  `ruleUUID` varchar(200) COLLATE utf8_bin NOT NULL,
  `policyId` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ruleName` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `targetType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `assetGroup` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `alexaKeyword` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ruleParams` longtext COLLATE utf8_bin,
  `ruleFrequency` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `ruleExecutable` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `ruleRestUrl` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `ruleType` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `ruleArn` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `userId` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `displayName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `severity` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ruleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


/*Table structure for table `cf_SystemConfiguration` */

DROP TABLE IF EXISTS `cf_SystemConfiguration`;

CREATE TABLE `cf_SystemConfiguration` (
  `id_` int(11) DEFAULT NULL,
  `environment` varchar(75) COLLATE utf8_bin NOT NULL,
  `keyname` varchar(75) COLLATE utf8_bin NOT NULL,
  `value` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`environment`,`keyname`),
  KEY `IX_7196BB48` (`environment`,`keyname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_Target` */

DROP TABLE IF EXISTS `cf_Target`;

CREATE TABLE `cf_Target` (
  `targetName` varchar(75) COLLATE utf8_bin NOT NULL,
  `targetDesc` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `dataSourceName` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `targetConfig` text COLLATE utf8_bin,
  `status` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `userId` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  `endpoint` text COLLATE utf8_bin,
  `createdDate` date DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `domain` varchar(75) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`targetName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `cf_pac_updatable_fields` */

DROP TABLE IF EXISTS `cf_pac_updatable_fields`;

CREATE TABLE `cf_pac_updatable_fields` (
  `resourceType` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `displayFields` text COLLATE utf8_bin,
  `updatableFields` longtext COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


/*Table structure for table `oauth_access_token` */

DROP TABLE IF EXISTS `oauth_access_token`;

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `oauth_approvals` */

DROP TABLE IF EXISTS `oauth_approvals`;

CREATE TABLE `oauth_approvals` (
  `userId` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `oauth_client_owner` */

DROP TABLE IF EXISTS `oauth_client_owner`;

CREATE TABLE `oauth_client_owner` (
  `clientId` varchar(75) COLLATE utf8_bin NOT NULL,
  `user` varchar(75) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`clientId`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `oauth_client_token` */

DROP TABLE IF EXISTS `oauth_client_token`;

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `oauth_code` */

DROP TABLE IF EXISTS `oauth_code`;

CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `oauth_refresh_token` */

DROP TABLE IF EXISTS `oauth_refresh_token`;

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `oauth_user` */

DROP TABLE IF EXISTS `oauth_user`;

CREATE TABLE `oauth_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(75) DEFAULT NULL,
  `user_name` varchar(75) DEFAULT NULL,
  `first_name` varchar(75) DEFAULT NULL,
  `last_name` varchar(75) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;

/*Table structure for table `pac_rule_engine_autofix_actions` */

DROP TABLE IF EXISTS `pac_rule_engine_autofix_actions`;

CREATE TABLE `pac_rule_engine_autofix_actions` (
  `resourceId` varchar(100) COLLATE utf8_bin NOT NULL,
  `lastActionTime` datetime NOT NULL,
  `action` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`resourceId`,`lastActionTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_projections` */

DROP TABLE IF EXISTS `pac_v2_projections`;

CREATE TABLE `pac_v2_projections` (
  `resourceType` varchar(100) COLLATE utf8_bin NOT NULL,
  `year` decimal(65,0) NOT NULL,
  `quarter` decimal(65,0) NOT NULL,
  `week` decimal(65,0) NOT NULL,
  `projection` bigint(65) DEFAULT NULL,
  PRIMARY KEY (`resourceType`,`year`,`quarter`,`week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_ruleCategory_weightage` */

DROP TABLE IF EXISTS `pac_v2_ruleCategory_weightage`;

CREATE TABLE `pac_v2_ruleCategory_weightage` (
  `ruleCategory` varchar(50) COLLATE utf8_bin NOT NULL,
  `domain` varchar(50) COLLATE utf8_bin NOT NULL,
  `weightage` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ruleCategory`,`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_ui_download_filters` */

DROP TABLE IF EXISTS `pac_v2_ui_download_filters`;

CREATE TABLE `pac_v2_ui_download_filters` (
  `serviceId` int(100) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `serviceEndpoint` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`serviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_ui_filters` */

DROP TABLE IF EXISTS `pac_v2_ui_filters`;

CREATE TABLE `pac_v2_ui_filters` (
  `filterId` int(25) NOT NULL AUTO_INCREMENT,
  `filterName` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`filterId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_ui_options` */

DROP TABLE IF EXISTS `pac_v2_ui_options`;

CREATE TABLE `pac_v2_ui_options` (
  `optionId` int(25) NOT NULL AUTO_INCREMENT,
  `filterId` int(25) NOT NULL,
  `optionName` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `optionValue` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `optionURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`optionId`),
  KEY `filterId` (`filterId`),
  CONSTRAINT `filterId` FOREIGN KEY (`filterId`) REFERENCES `pac_v2_ui_filters` (`filterId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_ui_widget_faqs` */

DROP TABLE IF EXISTS `pac_v2_ui_widget_faqs`;

CREATE TABLE `pac_v2_ui_widget_faqs` (
  `faqId` int(11) NOT NULL AUTO_INCREMENT,
  `widgetId` int(11) NOT NULL,
  `widgetName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `faqName` text COLLATE utf8_bin,
  `faqAnswer` text COLLATE utf8_bin,
  PRIMARY KEY (`faqId`),
  KEY `widgetId` (`widgetId`),
  CONSTRAINT `pac_v2_ui_widget_faqs_ibfk_1` FOREIGN KEY (`widgetId`) REFERENCES `pac_v2_ui_widgets` (`widgetId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_ui_widgets` */

DROP TABLE IF EXISTS `pac_v2_ui_widgets`;

CREATE TABLE `pac_v2_ui_widgets` (
  `widgetId` int(11) NOT NULL AUTO_INCREMENT,
  `pageName` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `widgetName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`widgetId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `pac_v2_userpreferences` */

DROP TABLE IF EXISTS `pac_v2_userpreferences`;

CREATE TABLE `pac_v2_userpreferences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `defaultAssetGroup` text COLLATE utf8_bin,
  `recentlyViewedAG` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `qartz_BLOB_TRIGGERS` */

DROP TABLE IF EXISTS `qartz_BLOB_TRIGGERS`;

CREATE TABLE `qartz_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_CALENDARS` */

DROP TABLE IF EXISTS `qartz_CALENDARS`;

CREATE TABLE `qartz_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_CRON_TRIGGERS` */

DROP TABLE IF EXISTS `qartz_CRON_TRIGGERS`;

CREATE TABLE `qartz_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_FIRED_TRIGGERS` */

DROP TABLE IF EXISTS `qartz_FIRED_TRIGGERS`;

CREATE TABLE `qartz_FIRED_TRIGGERS` (
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
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QARTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QARTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QARTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QARTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QARTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QARTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_JOB_DETAILS` */

DROP TABLE IF EXISTS `qartz_JOB_DETAILS`;

CREATE TABLE `qartz_JOB_DETAILS` (
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
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QARTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QARTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_LOCKS` */

DROP TABLE IF EXISTS `qartz_LOCKS`;

CREATE TABLE `qartz_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_PAUSED_TRIGGER_GRPS` */

DROP TABLE IF EXISTS `qartz_PAUSED_TRIGGER_GRPS`;

CREATE TABLE `qartz_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_SCHEDULER_STATE` */

DROP TABLE IF EXISTS `qartz_SCHEDULER_STATE`;

CREATE TABLE `qartz_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_SIMPLE_TRIGGERS` */

DROP TABLE IF EXISTS `qartz_SIMPLE_TRIGGERS`;

CREATE TABLE `qartz_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_SIMPROP_TRIGGERS` */

DROP TABLE IF EXISTS `qartz_SIMPROP_TRIGGERS`;

CREATE TABLE `qartz_SIMPROP_TRIGGERS` (
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
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_TRIGGERS` */

DROP TABLE IF EXISTS `qartz_TRIGGERS`;

CREATE TABLE `qartz_TRIGGERS` (
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
  KEY `IDX_QARTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QARTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QARTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QARTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QARTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QARTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QARTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QARTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QARTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QARTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QARTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QARTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `qartz_TRIGGERS` */

DROP TABLE IF EXISTS `oauth_user_role_mapping`;
CREATE TABLE `oauth_user_role_mapping` (
  `userRoleId` varchar(225) DEFAULT NULL,
  `userId` varchar(225) DEFAULT NULL,
  `roleId` varchar(225) DEFAULT NULL,
  `clientId` varchar(300) DEFAULT NULL,
  `allocator` varchar(300) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `oauth_user_credentials`;
CREATE TABLE `oauth_user_credentials` (
    `id` bigint (75),
    `password` varchar (225),
    `type` varchar (225)
);

DROP TABLE IF EXISTS `oauth_user_roles`;
CREATE TABLE `oauth_user_roles` (
  `roleId` varchar(225) DEFAULT NULL,
  `roleName` varchar(225) DEFAULT NULL,
  `roleDesc` varchar(225) DEFAULT NULL,
  `writePermission` int(15) DEFAULT NULL,
  `owner` varchar(225) DEFAULT NULL,
  `client` varchar(225) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `index` varchar(100) DEFAULT NULL,
  `mappings` longtext,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `pac_config_relation`;

CREATE TABLE `pac_config_relation` (
  `application` varchar(2048) COLLATE utf8_bin NOT NULL,
  `parent` varchar(2048) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `pac_config_key_metadata`;

CREATE TABLE `pac_config_key_metadata` (
  `cfkey` varchar(200) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `cfkey` (`cfkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `pac_config_properties`;

CREATE TABLE `pac_config_properties` (
  `cfkey` text COLLATE utf8_bin,
  `value` text COLLATE utf8_bin,
  `application` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `profile` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `createdBy` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `modifiedBy` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `modifiedDate` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


DROP TABLE IF EXISTS `pacman_field_override`;

CREATE TABLE pacman_field_override
(
   resourcetype varchar(50),
   _resourceid text,
   fieldname varchar(100),
   fieldvalue varchar(200),
   updatedby varchar(100),
   updatedon varchar(50)
);


DROP TABLE IF EXISTS `cf_pac_updatable_fields`;

CREATE TABLE cf_pac_updatable_fields
(
   resourceType varchar(100),
   displayFields longtext,
   updatableFields longtext
);


DROP TABLE IF EXISTS `cf_Aws_Accounts`;

CREATE TABLE cf_Aws_Accounts
(
   accountName varchar(200),
   accountId varchar(200),
   accountDesc longtext,
   createdBy varchar(100),
   createdDate varchar(20),
   modifiedBy varchar(100),
   modifiedDate varchar(20),
   id varchar(100) NOT NULL,
   roleCreated varchar(50),
   policiesAttached varchar(50),
   accountTrustUpdate varchar(50),
   baseAccountPolicyUpdate varchar(50),
   status varchar(50)
)
;


/*Insert task to necessary tables*/
insert  into `task`(`id`,`index`,`mappings`,`data`) values (1,'exceptions','{\"mappings\":{\"sticky_exceptions\":{\"properties\":{\"assetGroup\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"dataSource\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"exceptionName\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"exceptionReason\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"expiryDate\":{\"type\":\"date\"},\"targetTypes\":{\"properties\":{\"name\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"rules\":{\"properties\":{\"ruleId\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"ruleName\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}}}}}}}}}}',NULL),(2,'faqs','{\"mappings\":{\"widgetinfo\":{\"properties\":{\"widgetid\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"widgetname\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}}}},\"faqinfo\":{\"properties\":{\"answer\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"faqid\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"faqname\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"tag\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}},\"widgetid\":{\"type\":\"text\",\"fields\":{\"keyword\":{\"type\":\"keyword\",\"ignore_above\":256}}}}}}}','{\"index\": {\"_index\": \"faqs\", \"_type\": \"widgetinfo\", \"_id\": \"w1\"}}\r{\"widgetid\":\"w1\",\"widgetname\":\"compliance overview\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"widgetinfo\", \"_id\": \"w2\"}}\r{\"widgetid\":\"w2\",\"widgetname\":\"patching\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"widgetinfo\", \"_id\": \"w3\"}}\r{\"widgetid\":\"w3\",\"widgetname\":\"tagging\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"widgetinfo\", \"_id\": \"w4\"}}\r{\"widgetid\":\"w4\",\"widgetname\":\"vulnerabilities\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"widgetinfo\", \"_id\": \"w5\"}}\r{\"widgetid\":\"w5\",\"widgetname\":\"certificates\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"faqinfo\", \"_id\": \"w2q7\"}}\r{\"faqid\":\"q7\",\"faqname\":\"How is unpatched count calculated ?\",\"answer\":\"Total assets which does not have updated kernel version.\",\"widgetid\":\"w2\",\"tag\":\"patching\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"faqinfo\", \"_id\": \"w3q4\"}}\r{\"faqid\":\"q4\",\"faqname\":\"How is tagging compliance % calculated ?\",\"answer\":\"Tagging compliance is calculated by dividing total taggable assets by total tagged assets.\",\"widgetid\":\"w3\",\"tag\":\"tagging\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"faqinfo\", \"_id\": \"w1q1\"}}\r{\"faqid\":\"q1\",\"faqname\":\"What is shown in this graph?\",\"answer\":\"This multi ring donut represents the overall compliance percentage. Policies are grouped into categories like security, governance, cost optimization and tagging. Rings in the donut represents compliance percentage for each of those categories.  The rolled up percentage value for a given category is calculated by doing a weighted average of compliance percentage values of individual policies in that category. Weights are assigned based on the importance of the policy. Overall rolled up number in the middle of the donut represents uber compliance percentage for the selected asset group. This value is calculated by doing a simple average of compliance percentage values of the four categories.\",\"widgetid\":\"w1\",\"tag\":\"over-all\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"faqinfo\", \"_id\": \"w4q5\"}}\r{\"faqid\":\"q5\",\"faqname\":\"How is vulnerabilities compliance % calculated ?\",\"answer\":\"Vulnerabilities compliance is calculated by dividing total vulnerable assets by total servers, if an asset is not scanned by qualys , then the asset is considered as vulnerable.\",\"widgetid\":\"w4\",\"tag\":\"vulnerabilities\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"faqinfo\", \"_id\": \"w5q3\"}}\r{\"faqid\":\"q3\",\"faqname\":\"How is certificates compliance % calculated ?\",\"answer\":\"Total non-expired certificates divided by total certificates\",\"widgetid\":\"w5\",\"tag\":\"certificates\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"faqinfo\", \"_id\": \"w3q8\"}}\r{\"faqid\":\"q8\",\"faqname\":\"How is untagged count calculated ?\",\"answer\":\"Total assets which is missing either application/environment tags or both tags.\",\"widgetid\":\"w3\",\"tag\":\"tagging\"}\r{\"index\": {\"_index\": \"faqs\", \"_type\": \"faqinfo\", \"_id\": \"w2q2\"}}\r{\"faqid\":\"q2\",\"faqname\":\"How is patching compliance % calculated ?\",\"answer\":\"Total patched resources divided by total running resources\",\"widgetid\":\"w2\",\"tag\":\"patching\"}');

/*Insert Data Source to necessary tables*/

INSERT  INTO `cf_Datasource`(`dataSourceId`,`dataSourceName`,`dataSourceDesc`,`config`,`createdDate`,`modifiedDate`) VALUES (1,'aws','Amazon WebService','N/A','2017-08-01','2018-03-09');

/*Insert Data Asset Group to necessary tables*/

INSERT INTO cf_AssetGroupDetails (groupId,groupName,dataSource,displayName,groupType,createdBy,createdUser,createdDate,modifiedUser,modifiedDate,description,aliasQuery,isVisible) VALUES ('201','aws','aws','aws all','admin','Cloud Security','','','pacman','03/26/2018 23:00','Asset Group to segregate all data related to aws.','',true);
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11501','201','ec2','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11502','201','s3','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11503','201','appelb','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11504','201','asg','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11505','201','classicelb','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11506','201','stack','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11507','201','dynamodb','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11508','201','efs','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11509','201','emr','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11510','201','lambda','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11511','201','nat','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11512','201','eni','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11513','201','rdscluster','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11514','201','rdsdb','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11515','201','redshift','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11516','201','sg','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11517','201','snapshot','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11518','201','subnet','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11519','201','targetgroup','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11520','201','volume','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11521','201','vpc','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11522','201','api','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11523','201','iamuser','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11526','201','iamrole','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11527','201','rdssnapshot','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11528','201','account','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11529','201','checks','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11530','201','kms','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11531','201','phd','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11532','201','cloudfront','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11533','201','cert','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11534','201','wafdomain','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11535','201','corpdomain','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11536','201','elasticip','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('11537','201','routetable','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67701','201','internetgateway','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67702','201','launchconfig','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67703','201','networkacl','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67704','201','vpngateway','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67705','201','asgpolicy','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67706','201','snstopic','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67707','201','dhcpoption','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67708','201','peeringconnection','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67709','201','customergateway','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67710','201','vpnconnection','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67711','201','directconnect','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67712','201','virtualinterface','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67713','201','elasticsearch','all','all');
INSERT INTO cf_AssetGroupTargetDetails (id_,groupId,targetType,attributeName,attributeValue) VALUES ('67714','201','elasticache','all','all');

/*Insert Domain in required table*/

INSERT INTO cf_Domain (domainName,domainDesc,config,createdDate,modifiedDate,userId) VALUES ('Infra & Platforms','Domain for Infra & Platforms','{}',{d '2018-04-09'},{d '2018-08-03'},'user123');

/*Insert Target data in required table*/
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('account','Aws Accounts','Other','aws','{"key":"accountid","id":"accountid"}','enabled',null,concat(@eshost,':',@esport,'/aws_account/account'),{d '2017-09-07'},{d '2017-09-07'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('api','api','Application Service','aws','{"key":"accountid,region,id","id":"id"}','enabled',null,concat(@eshost,':',@esport,'/aws_api/api'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('appelb','appelb','Compute','aws','{"key":"accountid,region,loadbalancername","id":"loadbalancername"}','enabled',null,concat(@eshost,':',@esport,'/aws_appelb/appelb'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('asg','asg','Compute','aws','{"key":"accountid,region,autoscalinggrouparn","id":"autoscalinggrouparn"}','enabled',null,concat(@eshost,':',@esport,'/aws_asg/asg'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('asgpolicy','ASG Scaling policy','Compute','aws','{"key":"accountid,region,policyname","id":"policyname"}','active',920825,concat(@eshost,':',@esport,'/aws_asgpolicy/asgpolicy'),{d '2017-11-29'},{d '2017-11-29'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('cert','Certificates','Other','aws','{"key":"","id":""}','enabled',null,concat(@eshost,':',@esport,'/aws_cert/cert'),{d '2017-10-24'},{d '2017-10-24'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('checks','Trusted Advisor Checks','Other','aws','{"key":"accountid,checkid","id":"checkid"}','enabled',null,concat(@eshost,':',@esport,'/aws_checks/checks'),{d '2017-09-27'},{d '2017-09-27'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('classicelb','classicelb','Compute','aws','{"key":"accountid,region,loadbalancername","id":"loadbalancername"}','enabled',null,concat(@eshost,':',@esport,'/aws_classicelb/classicelb'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('cloudfront','Cloud Front','Networking & Content Delivery','aws','{"key":"accountid,id","id":"id"}','enabled',null,concat(@eshost,':',@esport,'/aws_cloudfront/cloudfront'),{d '2017-10-24'},{d '2017-10-24'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('corpdomain','Internal CORP Domains','Other','aws','{"key":"","id":""}','enabled',null,concat(@eshost,':',@esport,'/aws_corpdomain/corpdomain'),{d '2017-11-13'},{d '2017-11-13'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('customergateway','Customer Gateway','Networking & Content Delivery','aws','{"key":"accountid,region,customergatewayid","id":"customergatewayid"}','active',20433,concat(@eshost,':',@esport,'/aws_customergateway/customergateway'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('dhcpoption','DHCP Option Sets','Networking & Content Delivery','aws','{"key":"accountid,region,dhcpoptionsid","id":"dhcpoptionsid"}','active',20433,concat(@eshost,':',@esport,'/aws_dhcpoption/dhcpoption'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('directconnect','Direct Connect','Networking & Content Delivery','aws','{"key":"accountid,region,connectionid","id":"connectionid"}','active',20433,concat(@eshost,':',@esport,'/aws_directconnect/directconnect'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('dynamodb','dynamodb','Database','aws','{"key":"accountid,region,tablearn","id":"tablearn"}','enabled',null,concat(@eshost,':',@esport,'/aws_dynamodb/dynamodb'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('ec2','ec2','Compute','aws','{"key":"accountid,region,instanceid","id":"instanceid"}','enabled',null,concat(@eshost,':',@esport,'/aws_ec2/ec2'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('efs','efs','Storage','aws','{"key":"accountid,region,filesystemid","id":"filesystemid"}','enabled',null,concat(@eshost,':',@esport,'/aws_efs/efs'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('elasticip','Elastic IP','Networking & Content Delivery','aws','{"key":"accountid,region,publicip","id":"publicip"}','active',920825,concat(@eshost,':',@esport,'/aws_elasticip/elasticip'),{d '2017-11-29'},{d '2017-11-29'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('elasticsearch','Elasticsearch Service','Analytics','aws','{"key":"accountid,region,domainid","id":"domainid"}','active',20433,concat(@eshost,':',@esport,'/aws_elasticsearch/elasticsearch'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('emr','emr','Analytics','aws','{"key":"accountid,region,id","id":"id"}','enabled',null,concat(@eshost,':',@esport,'/aws_emr/emr'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('eni','eni','Compute','aws','{"key":"accountid,region,networkinterfaceid","id":"networkinterfaceid"}','enabled',null,concat(@eshost,':',@esport,'/aws_eni/eni'),{d '2017-07-13'},{d '2017-07-13'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('iamrole','IAM Role','Identity','aws','{"key":"rolearn","id":"rolearn"}','enabled',null,concat(@eshost,':',@esport,'/aws_iamrole/iamrole'),{d '2017-08-28'},{d '2017-08-28'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('iamuser','IAM User','Identity','aws','{"key":"accountid,username","id":"username"}','enabled',null,concat(@eshost,':',@esport,'/aws_iamuser/iamuser'),{d '2017-08-08'},{d '2017-08-08'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('internetgateway','Internet gate way','Networking & Content Delivery','aws','{"key":"accountid,region,internetgatewayid","id":"internetgatewayid"}','active',920825,concat(@eshost,':',@esport,'/aws_internetgateway/internetgateway'),{d '2017-11-29'},{d '2017-11-29'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('kms','KMS','Identity','aws','{"key":"accountid,region,keyid","id":"keyid"}','enabled',null,concat(@eshost,':',@esport,'/aws_kms/kms'),{d '2017-10-24'},{d '2017-10-24'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('lambda','lambda','Compute','aws','{"key":"accountid,region,functionarn","id":"functionarn"}','enabled',null,concat(@eshost,':',@esport,'/aws_lambda/lambda'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('launchconfig','ASG Launch Configurations','Compute','aws','{"key":"accountid,region,launchconfigurationname","id":"launchconfigurationname"}','active',920825,concat(@eshost,':',@esport,'/aws_launchconfig/launchconfig'),{d '2017-11-29'},{d '2017-11-29'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('nat','nat','Compute','aws','{"key":"accountid,region,natgatewayid","id":"natgatewayid"}','enabled',null,concat(@eshost,':',@esport,'/aws_nat/nat'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('networkacl','Network ACL','Networking & Content Delivery','aws','{"key":"accountid,region,networkaclid","id":"networkaclid"}','active',920825,concat(@eshost,':',@esport,'/aws_networkacl/networkacl'),{d '2017-11-28'},{d '2017-11-28'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('onpremserver','On Premise Linux Servers','Compute','aws','{"key":"name","id":"name"}','active',20433,concat(@eshost,':',@esport,'/aws_onpremserver/onpremserver'),{d '2018-02-23'},{d '2018-02-23'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('peeringconnection','Peering Connection','Networking & Content Delivery','aws','{"key":"accountid,region,vpcpeeringconnectionid","id":"vpcpeeringconnectionid"}','active',20433,concat(@eshost,':',@esport,'/aws_peeringconnection/peeringconnection'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('phd','Personal Dashboard Info','Other','aws','{"key":"accountid,eventarn","id":"eventarn"}','enabled',null,concat(@eshost,':',@esport,'/aws_phd/phd'),{d '2017-10-24'},{d '2017-10-24'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('rdscluster','rdscluster','Database','aws','{"key":"accountid,region,dbclusterarn","id":"dbclusterarn"}','enabled',123,concat(@eshost,':',@esport,'/aws_rdscluster/rdscluster'),{d '2017-07-17'},{d '2018-08-03'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('rdsdb','rdsdb','Database','aws','{"key":"accountid,region,dbclusterarn","id":"dbclusterarn"}','enabled',null,concat(@eshost,':',@esport,'/aws_rdsdb/rdsdb'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('rdssnapshot','RDS Snapshot','Database','aws','{"key":"accountid,region,dbsnapshotidentifier","id":"dbsnapshotidentifier"}','enabled',null,concat(@eshost,':',@esport,'/aws_rdssnapshot/rdssnapshot'),{d '2017-08-28'},{d '2017-08-28'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('redshift','redshift','Database','aws','{"key":"accountid,region,clusteridentifier","id":"clusteridentifier"}','enabled',20433,concat(@eshost,':',@esport,'/aws_redshift/redshift'),{d '2017-07-17'},{d '2017-09-06'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('routetable','Route Table','Networking & Content Delivery','aws','{"key":"accountid,region,routetableid","id":"routetableid"}','active',920825,concat(@eshost,':',@esport,'/aws_routetable/routetable'),{d '2017-11-28'},{d '2017-11-28'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('s3','s3','Storage','aws','{"key":"accountid,region,name","id":"name"}','enabled',null,concat(@eshost,':',@esport,'/aws_s3/s3'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('sg','sg','Compute','aws','{"key":"accountid,region,groupid","id":"groupid"}','enabled',null,concat(@eshost,':',@esport,'/aws_sg/sg'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('snapshot','snapshot','Compute','aws','{"key":"accountid,region,snapshotid","id":"snapshotid"}','enabled',null,concat(@eshost,':',@esport,'/aws_snapshot/snapshot'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('snstopic','Simple Notification Service topics','Application Services','aws','{"key":"accountid,region,topicarn","id":"topicarn"}','active',20433,concat(@eshost,':',@esport,'/aws_snstopic/snstopic'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('stack','stack','Management Tools','aws','{"key":"accountid,region,stackid","id":"stackid"}','enabled',null,concat(@eshost,':',@esport,'/aws_stack/stack'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('subnet','subnet','Compute','aws','{"key":"accountid,region,subnetid","id":"subnetid"}','enabled',null,concat(@eshost,':',@esport,'/aws_subnet/subnet'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('targetgroup','targetgroup','Compute','aws','{"key":"accountid,region,targetgroupname","id":"targetgroupname"}','enabled',null,concat(@eshost,':',@esport,'/aws_targetgroup/targetgroup'),{d '2017-07-17'},{d '2017-07-17'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('virtualinterface','Virtual Interface','Networking & Content Delivery','aws','{"key":"accountid,region,virtualinterfaceid","id":"virtualinterfaceid"}','active',20433,concat(@eshost,':',@esport,'/aws_virtualinterface/virtualinterface'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('volume','volume','Storage','aws','{"key":"accountid,region,volumeid","id":"volumeid"}','enabled',20433,concat(@eshost,':',@esport,'/aws_volume/volume'),{d '2017-07-17'},{d '2017-11-03'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('vpc','vpc','Compute','aws','{"key":"accountid,region,vpcid","id":"vpcid"}','enabled',20433,concat(@eshost,':',@esport,'/aws_vpc/vpc'),{d '2017-07-17'},{d '2017-11-28'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('vpnconnection','VPN Connection','Networking & Content Delivery','aws','{"key":"accountid,region,vpnconnectionid","id":"vpnconnectionid"}','active',20433,concat(@eshost,':',@esport,'/aws_vpnconnection/vpnconnection'),{d '2018-03-26'},{d '2018-03-26'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('vpngateway','VPN Gateway','Networking & Content Delivery','aws','{"key":"accountid,region,vpngatewayid","id":"vpngatewayid"}','active',920825,concat(@eshost,':',@esport,'/aws_vpngateway/vpngateway'),{d '2017-11-29'},{d '2017-11-29'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('wafdomain','WAF Domains','Other','aws','{"key":"","id":""}','enabled',null,concat(@eshost,':',@esport,'/aws_wafdomain/wafdomain'),{d '2017-11-13'},{d '2017-11-13'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('elasticache','ElastiCache','Database','aws','{"key":"account,region,clustername","id":"arn"}','enabled',null,concat(@eshost,':',@esport,'/aws_elasticache/elasticache'),{d '2017-11-13'},{d '2017-11-13'},'Infra & Platforms');

INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('datastream','Kinesis Datastream','Analytics','aws','{"key":"streamarn","id":"streamarn"}','enabled','123',concat(@eshost,':',@esport,'/aws_datastream/datastream'),{d '2018-10-30'},{d '2018-10-30'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('deliverystream','Kinesis Fireshose','Analytics','aws','{"key":"deliverystreamarn","id":"deliverystreamarn"}','enabled','123',concat(@eshost,':',@esport,'/aws_deliverystream/deliverystream'),{d '2018-10-30'},{d '2018-10-30'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('videostream','Kinesis Videostream','Analytics','aws','{"key":"streamarn","id":"streamarn"}','enabled','123',concat(@eshost,':',@esport,'/aws_videostream/videostream'),{d '2018-10-30'},{d '2018-10-30'},'Infra & Platforms');
INSERT INTO cf_Target (targetName,targetDesc,category,dataSourceName,targetConfig,status,userId,endpoint,createdDate,modifiedDate,domain) VALUES ('reservedinstance','Reserved Instances','Compute','aws','{"key":"instanceid","id":"instanceid"}','','123',concat(@eshost,':',@esport,'/aws_reservedinstance/reservedinstance'),{d '2018-11-01'},{d '2018-11-01'},'Infra & Platforms');



/* Auth Related data */
insert into `oauth_client_details`(`client_id`,`resource_ids`,`client_secret`,`scope`,`authorized_grant_types`,`web_server_redirect_uri`,`authorities`,`access_token_validity`,`refresh_token_validity`,`additional_information`,`autoapprove`) values ('22e14922-87d7-4ee4-a470-da0bb10d45d3',NULL,'$2a$10$Is6r80wW65hKHUq6Wa8B6O3BLKqGOb5McDGbJUwVwfVvyeJBCf7ta','resource-access','implicit,authorization_code,refresh_token,password,client_credentials',NULL,'ROLE_CLIENT,ROLE_USER',NULL,NULL,NULL,'');
insert into `oauth_user`(`id`,`user_id`,`user_name`,`first_name`,`last_name`,`email`,`created_date`,`modified_date`) values (1,'user@pacbot.org','user','user','','user@pacbot.org','2018-06-26 18:21:56','2018-06-26 18:21:56'),(2,'admin@pacbot.org','admin','admin','','admin@pacbot.org','2018-06-26 18:21:56','2018-06-26 18:21:56');
insert into `oauth_user_credentials` (`id`, `password`, `type`) values('1','$2a$10$IKXbqqHbMBMa/1Cs3VhjGeye4EKVBen4dPwhTYB24cHgDouravEMa','db');
insert into `oauth_user_credentials` (`id`, `password`, `type`) values('2','$2a$10$G02s.dXgFAV7oKvYzvL5luq9FaBuzwNHeBLdbpncBazk5APkiVjUq','db');
insert into `oauth_user_roles`(`roleId`,`roleName`,`roleDesc`,`writePermission`,`owner`,`client`,`createdDate`,`modifiedDate`) values ('1','ROLE_USER','ROLE_USER',0,'asgc','22e14922-87d7-4ee4-a470-da0bb10d45d3','2018-01-23 00:00:00','2018-01-23 00:00:00'),('703','ROLE_ADMIN','ROLE_ADMIN',1,'asgc','22e14922-87d7-4ee4-a470-da0bb10d45d3','2018-03-13 17:26:58','2018-03-13 17:26:58');
insert into `oauth_user_role_mapping`(`userRoleId`,`userId`,`roleId`,`clientId`,`allocator`,`createdDate`,`modifiedDate`) values ('4747c0cf-63cc-4829-a1e8-f1e957ec5dd6','user@pacbot.org','1','22e14922-87d7-4ee4-a470-da0bb10d45d3','user123','2018-01-09 16:11:47','2018-01-09 16:11:47'),('4747c0cf-63cc-4829-a1e8-f1e957ec5dd7','admin@pacbot.org','1','22e14922-87d7-4ee4-a470-da0bb10d45d3','user123','2018-01-09 16:11:47','2018-01-09 16:11:47'),('f5b2a689-c185-11e8-9c73-12d01119b604','admin@pacbot.org','703','22e14922-87d7-4ee4-a470-da0bb10d45d3','user123','2018-01-09 16:11:47','2018-01-09 16:11:47');

/* Display and Update Fields */
INSERT INTO cf_pac_updatable_fields  (resourceType,displayFields,updatableFields) VALUES
 ('all_list','_resourceid,tags.Application,tags.Environment,_entitytype',null),
 ('all_taggable','_resourceid,tags.Application,tags.Environment,_entitytype,targetType,accountid,accountname,region',null),
 ('all_vulnerable','_resourceid,tags.Application,tags.Environment,_entitytype,accountid,accountname,region',null),
 ('all_patchable','_resourceid,tags.Application,tags.Environment,_entitytype',null);


/* Rule and Policy Initialisation */


INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_AWSCloudTrailConfig_version-1','AWSCloudTrailConfig','Cloudtrail logs provide the audit trail of who did what and when. Cloudtrail is enabled by default on all AWS accounts, this should not be turned off any time','Enable cloudtrail for all regions','','version-1','',710383,{d '2017-08-18'},{d '2017-08-18'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_AWSConfigEnabled_version-1','AWSConfigEnabled','AWS Config records all supported resources that it discovers in the region and maintain a timeline for each of the resource. AWS Config should always be in ''enabled'' stated','Enable AWS Config for each region','','version-1','',710383,{d '2017-08-18'},{d '2017-08-18'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Amazon-EC2-Reserved-Instance-Lease-Expiration_version-1','Amazon-EC2-Reserved-Instance-Lease-Expiration','Checks for Amazon EC2 Reserved Instances that are scheduled to expire within the next 30 days or have expired in the preceding 30 days. \nReserved Instances do not renew automatically; you can continue using an EC2 instance covered by the reservation without interruption, \nbut you will be charged On-Demand rates. New Reserved Instances can have the same parameters as the expired ones, or you can purchase \nReserved Instances with different parameters.The estimated monthly savings we show is the difference between the On-Demand and\nReserved Instance rates for the same instance type.\n\nAlert Criteria :\nYellow: The Reserved Instance lease expires in less than 30 days.\nYellow: The Reserved Instance lease expired in the preceding 30 days.','Consider purchasing a new Reserved Instance to replace the one that is nearing the end of its term, For more information \nsee <a href="https://aws.amazon.com/ec2/purchasing-options/reserved-instances/buyer/" target="_blank">How to Purchase Reserved Instances</a>\n<a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-concepts-buying.html" target="_blank">Buying Reserved Instances</a>,\nAdditional Resources : <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html" target="_blank">Reserved Instances</a>\n<a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html" target="_blank">Instance Types</a>','','version-1','',710383,{d '2018-05-28'},{d '2018-05-28'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_AmazonRDSIdleDBInstancesRule_version-1','AmazonRDSIdleDBInstancesRule','Checks the configuration of your Amazon Relational Database Service (Amazon RDS) for any DB instances that appear to be idle. If a DB instance has not had a connection for a prolonged period of time, you can delete the instance to reduce costs. If persistent storage is needed for data on the instance, you can use lower-cost options such as taking and retaining a DB snapshot. Manually created DB snapshots are retained until you delete them.','Consider taking a snapshot of the idle DB instance and then deleting it,See Deleting a DB Instance with a Final Snapshot','','version-1','',710383,{d '2018-03-15'},{d '2018-03-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ApiGatewayProtected_version-1','ApiGatewayProtected','AWS API gateway resources are by default publicly accessible, all of the API resources should be protected by a Authorizer or a API key. Unprotected API''s can lead to data leaks and security breaches.','Protect the API gateway with an API key OR Use a custom authorizers at the gateway level','','version-1','',710383,{d '2017-08-16'},{d '2017-08-16'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ApiGatewayProtected_version-2','ApiGatewayProtected','AWS API gateway resources are by default publicly accessible, all of the API resources should be protected by a Authorizer or a API key. Unprotected API''s can lead to data leaks and security breaches.','Protect the API gateway with an API key OR Use a custom authorizers at the gateway level','','version-2','',710383,{d '2017-08-24'},{d '2017-08-24'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ApiGatewayProtected_version-3','ApiGatewayProtected','AWS API gateway resources are by default publicly accessible, all of the API resources should be protected by a Authorizer or a API key. Unprotected API''s can lead to data leaks and security breaches.','Protect the API gateway with an API key OR Use a custom authorizers at the gateway level','','version-3','',333523,{d '2017-09-19'},{d '2017-09-19'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ApiGatewayProtected_version-4','ApiGatewayProtected','AWS API gateway resources are by default publicly accessible, all of the API resources should be protected by a Authorizer or a API key. Unprotected API''s can lead to data leaks and security breaches.','','','version-4','',76355,{d '2018-04-23'},{d '2018-04-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ApplicationTagsShouldBeValid_version-1','ApplicationTagsShouldBeValid','The value of ''Application'' tag  of the asset should be one of the  application names approved by the cloud intake team. Assets with wrong value for Application tag would generally get orphaned from monitoring, patching, centralized access control, etc. Lot of auomations rely on correct application tag and care should be taken to make sure all assets are tagged with correct value for this tag.','Add correct value for the Application tag.','','version-1','',710383,{d '2017-12-07'},{d '2017-12-07'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_AwsRoute53DNSForAccountsRule_version-1','AwsRoute53DNSForAccountsRule','Route 53 service is allowed to be used only in approved accounts. No other accounts should be using Route 53 service. Since Route 53 service is critical service for every application, a controlled environment is required for smooth operations. Also in order stop domain proliferation and enforce best practices, this service  is limited only to these two accounts.','Please work with pacbot@t-mobile.com for migration or exceptions','','version-1','',710383,{d '2018-02-16'},{d '2018-02-16'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_CheckAwsActivityInBlacklistedRegion_version-1','CheckAwsActivityInBlacklistedRegion','At T-Mobile we primarily use US regions. Any activity in regions outside of US regions is a violation of policy. It generally indicates malicious and un authorized activity','Reach out to pacbot@t-mobile.com for addressing malicious activity,In case of legitimate workloads please reach out to the same team for exception.','','version-1','',710383,{d '2018-02-16'},{d '2018-02-16'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_CheckEdpRepositoryRule_version-1','CheckEdpRepositoryRule','Every repository should have master and dev branches','','','version-1','',710383,{d '2018-02-28'},{d '2018-02-28'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_CheckGuardDutyIsEnabledForAllAccount_version-1','CheckGuardDutyIsEnabledForAllAccount','All the AWS accounts should have guard duty enabled. Amazon GuardDuty is a managed threat detection service that continuously monitors for malicious or unauthorized behavior to help you protect your AWS accounts and workloads. It monitors for activity such as unusual API calls or potentially unauthorized deployments that indicate a possible account compromise. GuardDuty also detects potentially compromised instances or reconnaissance by attackers','','','version-1','',710383,{d '2018-01-19'},{d '2018-01-19'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_CheckInactiveIamUser_version-1','CheckInactiveIamUser','IAM users who have not logged into AWS and have no API activity for 90 days will be considered inactive IAM users and their accounts will be terminated.','Reach out to pacbot@t-mobile.com for exceptions','','version-1','',710383,{d '2018-02-13'},{d '2018-02-13'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_CheckMongoDBPublicAccess_version-1','CheckMongoDBPublicAccess','To prevent data theft and data loss all Mongo DBs should be protected with access control mechanism. ','Disable anonymous access to MongoDB','','version-1','',2689645,{d '2017-09-01'},{d '2017-09-01'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_CloudWatchEventsForAllAccounts_version-1','CloudWatchEventsForAllAccounts','Events from all AWS account should be routed to a central event bus so that the events and be processed and analyzed centrally.','','','version-1','',710383,{d '2018-01-18'},{d '2018-01-18'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EC2WithPublicAccessForPort27017_version-1','EC2WithPublicAccessForPort27017','Global permission to access the well known services like TCP on port 27017 (Mongo DB) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',2689645,{d '2017-08-24'},{d '2017-08-24'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EC2WithPublicAccessForPort9600_version-1','EC2WithPublicAccessForPort9600','This rule checks for EC2 instance which has IP address and looks for any of SG group has CIDR IP to 0.0.0.0 for port 9600,if it find any then its an issue.',null,'','version-1','',2689645,{d '2017-08-23'},{d '2017-08-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EC2WithPublicAccessForPort9600_version-2','EC2WithPublicAccessForPort9600','This rule checks for EC2 instance which has IP address and looks for any of SG group has CIDR IP to 0.0.0.0 for port 9600,if it find any then its an issue.',null,'','version-2','',333523,{d '2017-08-30'},{d '2017-08-30'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EC2WithPublicAccessSSHPort22_version-1','EC2WithPublicAccessSSHPort22','This rule checks for EC2 instance which has IP address and looks for any of SG group has CIDR IP to 0.0.0.0 for SSH port,if it find any then its an issue.',null,'','version-1','',710383,{d '2017-08-18'},{d '2017-08-18'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EC2WithPublicAccessSSHPort22_version-2','EC2WithPublicAccessSSHPort22','SSH port 22 should not be accessible from internet. Port 22 should be open only to the internal 10.*.*.* network. Further reducing the permitted IP addresses or ranges allowed to communicate to destination hosts on TCP port 22 is recommended. An exposed SSH port 22 pose a great security risk. Dedicated bastion hosts can have port open to internet with appropriate SSH config.','Remove the rule from the security groups that allows inbound access from 0.0.0.0/0.','','version-2','',2689645,{d '2017-08-23'},{d '2017-08-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EC2WithPublicAccessSSHPort9600_version-1','EC2WithPublicAccessSSHPort9600','This rule checks for EC2 instance which has IP address and looks for any of SG group has CIDR IP to 0.0.0.0 for port 9600,if it find any then its an issue.',null,'','version-1','',2689645,{d '2017-08-23'},{d '2017-08-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EC2WithPublicIPAccess_version-1','EC2WithPublicIPAccess','EC2 instances should not be directly accessible from internet (Except for the servers in DMZ zone). Ideally these instances should be behind firewall (AWS WAF or any other firewall)','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-08-18'},{d '2017-08-18'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EbsSnapShot_version-1','EbsSnapShot','Depending on the purpose for which the EBS was used, the snapshot might carry sensistive information about our cloud ecosystem or might carry customer PII or CPNI or it could be anything. The cases where we need to make a snpashot public is very rare, those cases have to go through an exception process','Make the snapshot private','','version-1','',710383,{d '2017-08-16'},{d '2017-08-16'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2InstanceScannedByQualys_version-1','Ec2InstanceScannedByQualys','All assets in Cloud should be scanned by Qualys vulnerability assessment tool atleast once a month. It would be ideal to have the Qulays Cloud Agent installed on all the assets. This would eliminate the need to have manual external scans','Install Qualys Cloud Agent on the server or get the asset scanned manually by VMAS team every month','','version-1','',710383,{d '2017-11-14'},{d '2017-11-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2PublicAccessPortWithS5Vulnerability_version-1','Ec2PublicAccessPortWithS5Vulnerability','An Ec2 instance with remotely exploitable vulnerability (S5) should not be open to internet, this instance can be easily compromised from a remote location','Immediately remove the internet access,Apply the vulnerability fix','','version-1','',710383,{d '2018-01-11'},{d '2018-01-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2PublicAccessPortWithTarget_version-1','Ec2PublicAccessPortWithTarget','Global permission to access the well known services running on privileged ports should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-12-22'},{d '2017-12-22'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2SoppedInstanceForLong_version-2','Ec2SoppedInstanceForLong','EC2 Stopped Instances rule look for the stopped instances which are stopped  for more than 60 days.',null,'','version-2','',1205352,{d '2017-11-06'},{d '2017-11-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2SoppedInstanceForLong_version-3','Ec2SoppedInstanceForLong','EC2 Stopped Instances rule check for the stopped instances which are stopped  for more than 60 days.',null,'','version-3','',1205352,{d '2017-11-06'},{d '2017-11-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2SoppedInstanceForLong_version-4','Ec2SoppedInstanceForLong','EC2 Stopped Instances rule check for the stopped instances for more than 60 days.',null,'','version-4','',1205352,{d '2017-11-06'},{d '2017-11-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2SoppedInstanceForLong_version-5','Ec2SoppedInstanceForLong','EC2 Stopped Instances rule check for instances stopped for more than 60 days.',null,'','version-5','',1205352,{d '2017-11-13'},{d '2017-11-13'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2StoppedInstanceForLong_version-1','Ec2StoppedInstanceForLong','Stopped EC2 instances still incur cost for the volumes,elastic IP associated with it, potential AWS marketplace license costs as well.','Terminate the EC2 instance if it is no longer required.','','version-1','',710383,{d '2017-08-29'},{d '2017-08-29'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPubAccFTP-DataPort20_version-1','Ec2WithPubAccFTP-DataPort20','Global permission to access the well known services like TCP on port 20  should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-10-20'},{d '2017-10-20'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPubAccPort1434_version-1','Ec2WithPubAccPort1434','Global permission to access the well known services like TCP on port 1434 (SQL Browser) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-07'},{d '2017-09-07'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPubAccSMTPPort25_version-1','Ec2WithPubAccSMTPPort25','Global permission to access the well known services like SMTP on port 25 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-10-20'},{d '2017-10-20'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPubAccUDP-Port-53_version-1','Ec2WithPubAccUDP-Port-53','Global permission to access the well known services like UDP on port 53 (Nameservers) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-10-20'},{d '2017-10-20'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessCifsPort445_version-1','Ec2WithPublicAccessCifsPort445','Global permission to access the well known services like TCP on port 445 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-15'},{d '2017-09-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessFtp21port_version-1','Ec2WithPublicAccessFtp21port','Global permission to access the well known services like TCP on port 21 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-10-20'},{d '2017-10-20'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessMySql4333_version-1','Ec2WithPublicAccessMySql4333','Global permission to access the well known services like TCP on port 4333 (MINISQL Server) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-14'},{d '2017-09-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessMySqlPort3306_version-1','Ec2WithPublicAccessMySqlPort3306','Global permission to access the well known services like TCP on port 3306 (MySQL) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessNetBIOSPort137_version-1','Ec2WithPublicAccessNetBIOSPort137','Global permission to access the well known services like TCP on port 137 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-15'},{d '2017-09-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessNetBIOSPort138_version-1','Ec2WithPublicAccessNetBIOSPort138','Global permission to access the well known services like TCP on port 138 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-15'},{d '2017-09-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessNonWebPorts443_version-1','Ec2WithPublicAccessNonWebPorts443','Global permission to access the well known services like TCP on port 443 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessNonWebPorts80_version-1','Ec2WithPublicAccessNonWebPorts80','Global permission to access the well known services like HTTP on port 80 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessPort8080_version-1','Ec2WithPublicAccessPort8080','This rule creates an issue, if the port 8080 is open to internet.',null,null,'version-1',null,null,{d '2018-09-07'},{d '2018-09-07'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessPostgreSqlPort5432_version-1','Ec2WithPublicAccessPostgreSqlPort5432','Global permission to access the well known services like TCP on port 5432 (POSTGRESQL) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessRdpPort3389_version-1','Ec2WithPublicAccessRdpPort3389','RDP port 3389 should not be accessible from internet. Port 3389 should be open only to the internal 10.*.*.* network. Further reducing the permitted IP addresses or ranges allowed to communicate to destination hosts on RDP port 3389 is recommended. An exposed RDP port 3389 pose a great security risk.','Remove the rule from the security groups that allows inbound access from 0.0.0.0/0.','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessRpcPort135_version-1','Ec2WithPublicAccessRpcPort135','Global permission to access the well known services like TCP on port 135 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessSmbPort445_version-1','Ec2WithPublicAccessSmbPort445','Global permission to access the well known services like TCP on port 445 should not be allowed','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessSql1433_version-1','Ec2WithPublicAccessSql1433','Global permission to access the well known services like TCP on port 1433 (SQL Server) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessTelnetPort23_version-1','Ec2WithPublicAccessTelnetPort23','Global permission to access the well known services like TCP/UDP on port 23 should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessVncPort5500_version-1','Ec2WithPublicAccessVncPort5500','Global permission to access the well known services like TCP on port 5500 (VNC) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-14'},{d '2017-09-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithPublicAccessVncServerPort5900_version-1','Ec2WithPublicAccessVncServerPort5900','Global permission to access the well known services like TCP on port 5900 (VNC) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-09-14'},{d '2017-09-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Ec2WithSeverityVulnerability_version-1','Ec2WithSeverityVulnerability','If an EC2 Instance having S5, S4 and S3 vulnerability report it as an issue with severity high, medium and low respectively','','','version-1','',710383,{d '2018-03-08'},{d '2018-03-08'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EveryProjectShouldHaveMasterBranch-Asif_version-1','EveryProjectShouldHaveMasterBranch-Asif','EveryProjectShouldHaveMasterBranch-Asif','','','version-1','',1205352,{d '2018-05-10'},{d '2018-05-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_EveryProjectShouldHaveRepository_version-1','EveryProjectShouldHaveRepository','Every project should have a repository','','','version-1','',710383,{d '2018-03-27'},{d '2018-03-27'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_GuardDutyFindingsExists_version-1','GuardDutyFindingsExists','Amazon GuardDuty is a managed threat detection service that continuously monitors your VPC flow logs, CloudTrail event logs and DNS logs for malicious or unauthorized behavior. When GuardDuty detects a suspicious or unexpected behavior in your AWS account, it generates a finding. A finding is a notification that contains information about a potential security threat identified by the GuardDuty service. The finding details includes data about the finding actor, the AWS resource(s) involved in the suspicious activity, the time when the activity occurred and so on.','Follow the step by step guide line provided for each finding from the Guard Duty console,Please reach out to pacbot@t-mobile.com in case of any queries about how to fix a finding','','version-1','',710383,{d '2018-02-12'},{d '2018-02-12'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_IamAccessKeyRotatedInEvery90Days_version-1','IamAccessKeyRotatedInEvery90Days','Access keys of IAM accounts should be rotated every 90 days in order to decrease the likelihood of accidental exposures and protect  AWS resources against unauthorized access','Rotate the access keys every 90 days','','version-1','',710383,{d '2017-08-11'},{d '2017-08-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_IamIdentityProviderWithADFS_version-1','IamIdentityProviderWithADFS','All the AWS accounts should use CORP ADFS identity provider.','','','version-1','',710383,{d '2018-01-15'},{d '2018-01-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_IamPasswordPolicy_version-1','IamPasswordPolicy','Enforce a strong password policy on IAM console authentications. By default AWS does not configure the maximal strength password complexity policy on your behalf.','Log into your AWS console,Go to the IAM service,On the left menu select Password Policy which should be the bottom option,Set the Minimum Password Length form field to 12 (or higher) and Select each of the checkboxes so that all four required  complexity options are selected,Depending on your corporate policy you may wish to allow users to change their own passwords,We recommend that you permit users to do so,Apply your new password policy and you have satisfied this security remediation','','version-1','',710383,{d '2018-01-08'},{d '2018-01-08'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_IamWithPermanentAccessKeysExceptServiceAccount_version-1','IamWithPermanentAccessKeysExceptServiceAccount','Every AWS account is configured one IAM Identity provider. This identity provider  is required for logging into AWS with CORP AD account','Add the CORP AD ADFS provider configuration back to the AWS account','','version-1','',710383,{d '2017-08-11'},{d '2017-08-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_IdleLoadBalancerRule_version-1','IdleLoadBalancerRule','Checks your Elastic Load Balancing configuration for load balancers that are not actively used. Any load balancer that is configured accrues charges. If a load balancer has no associated back-end instances or if network traffic is severely limited, the load balancer is not being used effectively.','If your load balancer has no active back-end instance then consider registering instances or deleting your load balancer, SeeÂ Registering Your Amazon EC2 Instances with Your Load BalancerÂ orÂ Delete Your Load Balancer,If your load balancer has had a low request count then consider deleting your load balancer.Â ','','version-1','',710383,{d '2018-02-25'},{d '2018-02-25'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_LambdaFunMemorySize_version-1','LambdaFunMemorySize','This rule checks, If the given lambda function''s memory size exceeds more than 512 Mb, then its an issue.',null,'','version-1','',710383,{d '2017-09-05'},{d '2017-09-05'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_LambdaFunThrottleInvocationsRule_version-1','LambdaFunThrottleInvocationsRule','Lambda function throttle invocations should not exceed the threshold','Review the code and design and inspect if there is any problem with the logic. If it known and expected behaviour please request for an exception.','','version-1','',710383,{d '2017-10-13'},{d '2017-10-13'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_LambdaFunWithAdmin-OrIamPrivileges_version-1','LambdaFunWithAdmin-OrIamPrivileges','Lambda functions should not have administrative permissions (Managed Policy : AdministratorAccess). Least privileges should be granted to lambda functions. Also IAM privileges should never be granted to lambda functions. (Exceptional cases has to be reviewed and prior whitelisting would be required.)','Remove AdministratorAccess policy associated with lambda functions,Remove IAM privileges associated with the lambda function','','version-1','',710383,{d '2018-02-15'},{d '2018-02-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_LambdaFunWithAdmin-OrIamPrivileges_version-2','LambdaFunWithAdmin-OrIamPrivileges','Lambda functions should not have administrative permissions (Managed Policy : AdministratorAccess). Least privileges should be granted to lambda functions. Also IAM privileges should never be granted to lambda functions. (Exceptional cases has to be reviewed and prior whitelisting would be required.)','','','version-2','',76355,{d '2018-04-23'},{d '2018-04-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_LambdaInvocationRule_version-1','LambdaInvocationRule','AWS Lambda is cheap but is pay per use. An errant lambda function calling itself, cyclic lambda function calls bentween functions can result is huge bills. Any lambda functions that is going to exceed 1 million executions a day should be reviewed.','Review the code and design and inspect if there is any problem with the logic. If it known and expected behaviour please request for an exception.','','version-1','',1205352,{d '2017-09-15'},{d '2017-09-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_LambdaWithVPC_version-1','LambdaWithVPC','This rule checks for lambda which are associated with any VPC, if so then creates an issue.',null,'','version-1','',710383,{d '2017-10-26'},{d '2017-10-26'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Lambdacost_version-1','Lambdacost','AWS Lambda is cheap but is pay per use. An errant lambda function calling itself, cyclic lambda function calls bentween functions can result is huge bills. Any lambda functions that is going to exceed 25 dollars should be reviewed.','Review the code and design and inspect if there is any problem with the logic. If it known and expected behaviour please request for an exception.','','version-1','',1205352,{d '2017-09-15'},{d '2017-09-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_LowUtilizationAmazonEC2InstancesRule_version-1','LowUtilizationAmazonEC2InstancesRule','Checks the Amazon Elastic Compute Cloud (Amazon EC2) instances that were running at any time during the last 14 days and alerts you if the daily CPU utilization was 10% or less and network I/O was 5 MB or less on 4 or more days. Running instances generate hourly usage charges. Although some scenarios can result in low utilization by design, you can often lower your costs by managing the number and size of your instances. \nAn instance had 10% or less daily average CPU utilization and 5 MB or less network I/O on at least 4 of the previous 14 days','Consider stopping or terminating instances that have low utilization, or scale the number of instances by using Auto Scaling.','','version-1','',710383,{d '2018-03-12'},{d '2018-03-12'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Non-role-task-members_version-1','Non-role-task-members','Only roles can be a member of a task\nAny task group (t_*) that contains a memberof which is not a role (r_*)','','','version-1','',710383,{d '2018-05-23'},{d '2018-05-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_NonAdminAccountsWithIAMFullAccess_version-1','NonAdminAccountsWithIAMFullAccess','As per AWS policy management standards, only the role named ''Admin'' have access to IAM. No other AWS role is supposed have IAM access.','Remove the IAM privilleges from that role.','','version-1','',710383,{d '2017-08-11'},{d '2017-08-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_NonStandardRegionRule_version-1','NonStandardRegionRule','T-Mobile using resources some standard region (us-est/west). As part of this rule if the resource finds non-standard region it should report as violation.',null,null,'version-1',null,null,{d '2018-08-30'},{d '2018-08-30'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Onprem-asset-scanned-by-qualys-API_version-1','Onprem-asset-scanned-by-qualys-API','Onprem assets should be scanned by Qualys vulnerability assessment tool atleast once a month. It would be ideal to have the Qulays Cloud Agent installed on all the assets. This would eliminate the need to have manual external scans','','','version-1','',710383,{d '2018-05-14'},{d '2018-05-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_RdsSnapshotWithPublicAccess_version-1','RdsSnapshotWithPublicAccess','A RDS snapshot may contain sensitive or customer information. No RDS snapshot should be made public from our accounts. There are very rare cases where this might be required. Those cases have to go through exception process. ','Make the snapshot private','','version-1','',710383,{d '2017-08-16'},{d '2017-08-16'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_RedShiftPublicAccess_version-1','RedShiftPublicAccess','A Redshift snapshot may contain sensitive or customer information. No RDS snapshot should be made public from our accounts. There are very rare cases where this might be required. Those cases have to go through exception process. ','Make the snapshot private','','version-1','',710383,{d '2017-10-09'},{d '2017-10-09'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Repository-complies-with-a-branching-strategy_version-1','Repository-complies-with-a-branching-strategy','This policy checks that repository in Bitbucket follows a matured branching strategy - \n1.Repository should either follow git flow workflow\n2.Or repository should follow trunck based workflow\n3. Or repository follws feature branch based workflow','Follow gitflow workflow branching strategy (https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow), Follow trunk or forking based  branching strategy (https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow), Follow feature branch based workflow (https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)','','version-1','',710383,{d '2018-04-05'},{d '2018-04-05'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Repository-complies-with-a-branching-strategy_version-2','Repository-complies-with-a-branching-strategy','This policy checks that repository in Bit-bucket follows a mature branching strategy \n1. Repository follows git flow workflow\n2. Or repository follows trunk based workflow \n3. Or repository follows feature branch based workflow','','','version-2','',1205352,{d '2018-06-14'},{d '2018-06-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Repository-complies-with-trunk-based-strategy_version-1','Repository-complies-with-trunk-based-strategy','This policy checks that repository in Bitbucket follows trunk branching strategy\n\n1. Repository should only have a master branch\n2. Repository should only have Feature branches other than Master branch','If there are branches other than Feature, Merge and delete the branches, In future only create feature branches.','','version-1','',710383,{d '2018-04-05'},{d '2018-04-05'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Repository-should-not-have-stale-branch_version-1','Repository-should-not-have-stale-branch','This policy checks if branches in a repository, other than master/develop/release are not active for more than two weeks','','','version-1','',1205352,{d '2018-04-06'},{d '2018-04-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Repository-should-not-have-stale-branch_version-2','Repository-should-not-have-stale-branch','This policy checks if branches, other than master/develop/release had a commit in the last two weeks','','','version-2','',1205352,{d '2018-05-23'},{d '2018-05-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_RepositoryCompliesWithTruckBasedStrategy_version-1','RepositoryCompliesWithTruckBasedStrategy','Repository should only have a master branch','','','version-1','',710383,{d '2018-03-27'},{d '2018-03-27'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_RepositoryShouldNotHaveMoreBranches_version-1','RepositoryShouldNotHaveMoreBranches','Every Repository should not have more than <X> branches at a time','','','version-1','',710383,{d '2018-03-27'},{d '2018-03-27'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Respository-Policy_version-1','Respository-Policy','This policy checks that repository in Bitbucket follows git flow branching strategy - \n1.Repo should have exactly 1 master branch\n2.Repo should have exactly 1 develop branch\n3.Repo should have branches prefixed with /hotfix, /release ,/feature, /bugfix ','Follow gitflow workflow branching strategy (https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)','','version-1','',1205352,{d '2018-03-27'},{d '2018-03-27'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_S3-apptag-policy-by-Asif_version-1','S3-apptag-policy-by-Asif','S3-apptag-policy-by-Asif','','','version-1','',1205352,{d '2018-06-18'},{d '2018-06-18'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_S3BucketWithGlobalReadPermission_version-1','S3BucketWithGlobalReadPermission','Unprotected S3 buckets are one of the major causes for data theft and intrusions. Except for the S3 buckets used for hosting static website, none of the S3 buckets should be globally accessible for unauthenticated users or for Any AWS Authenticate Users.','S3 buckets should be protected by using the bucket ACL and bucket policies,If you want to share data via S3 buckets to other users,you could create pre-signed URLs which will be valid only for short duration.For all automation related work use the bucket policy and grant access to the required roles.','','version-1','',2689645,{d '2017-08-17'},{d '2017-08-17'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_S3BucketWithGlobalWritePermission_version-1','S3BucketWithGlobalWritePermission','AWS S3 buckets cannot be publicly accessed for WRITE actions in order to protect S3 data from unauthorized users. An S3 bucket that allows WRITE (UPLOAD/DELETE) access to everyone (i.e. anonymous users) can provide attackers the capability to add, delete and replace objects within the bucket, which can lead to S3 data loss or unintended changes to applications using that bucket or possibly a huge bill.','Make the S3 bucket private by applying ACLs or bucket policies','','version-1','',2689645,{d '2017-08-17'},{d '2017-08-17'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_SGWithAnywhereAccess_version-1','SGWithAnywhereAccess','It is best practice to allows required ip ranges and specific port in the security groups that will be used for securing EC2 instances in private subnets.','Edit the security groups and allow only specific IP ranges and ports','','version-1','',710383,{d '2017-08-11'},{d '2017-08-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_SSMAgentCheckRule_version-1','SSMAgentCheckRule','This rule checks if EC2 instance has SSM agent with pingstatus as Online, if not its an issue','','','version-1','',710383,{d '2018-05-26'},{d '2018-05-26'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ServiceLimitRule_version-1','ServiceLimitRule','All AWS service limits should be extended from time to time based on the growing needs. Cloudformation execution, Auotscalling or A,B deplymnet for production workloads may fail if the service limit is reached  causing downtime. Proactively service limits should be extended when limit thresholds reach 75% or above','Open a case with AWS and increase the service limits','','version-1','',710383,{d '2017-10-17'},{d '2017-10-17'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_SgWithRdpPortHasGlobalAccess_version-1','SgWithRdpPortHasGlobalAccess','Global permission to access the well known services like RDP on port 3389 (Windows RDP) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',710383,{d '2017-08-11'},{d '2017-08-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_TaggingRule_version-1','TaggingRule','All AWS assets should be tagged with following mandatory tags. Application,  Environment, Role and Stack. Assets without these mandatory tags will be marked as non-complaint. Below is an example for the tag value pairs.\n\nTag name: Application\nExample value: Rebellion\n\nNotes\nThis value for the application tag should be the approved application name give for the project during the cloud on-boarding process. Unknown applications will be marked for review and possible termination.\n\nTag name: Environment\nExample value: Production or Non Production or Non Production::qat1 or Non Production::dit1 (Refer Naming guide)\n\nNotes\nThe value for environment should distinguish the asset as a Production or Non Production class. You can further qualify Non Production assets using the :: separator. Look at the examples 3 and 4.\n\nTag name: Stack\nExample Value: Apache Httpd\n\nTag name: Role\nExample value: Webserver\n\n \nEach asset should at least have these 4 mandatory tags. You can have additional tags as well.','Add the mandatory tags to the assets,Follow the Cloud Asset Tagging guidelines.','','version-1','',710383,{d '2017-11-02'},{d '2017-11-02'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Underutilized-Amazon-EBS-Volumes_version-1','Underutilized-Amazon-EBS-Volumes','Checks Amazon Elastic Block Store (Amazon EBS) volume configurations and warns when volumes appear to be underused. Charges begin when a volume is created. If a volume remains unattached or has very low write activity (excluding boot volumes) for a period of time, the volume is probably not being used.\n\nAlert Criteria\nYellow: A volume is unattached or had less than 1 IOPS per day for the past 7 days.','Consider creating a snapshot and deleting the volume to reduce costs','','version-1','',710383,{d '2018-05-14'},{d '2018-05-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_UnderutilizedAmazonRedshiftClustersRule_version-1','UnderutilizedAmazonRedshiftClustersRule','Checks your Amazon Redshift configuration for clusters that appear to be underutilized. If an Amazon Redshift cluster has not had a connection for a prolonged period of time or is using a low amount of CPU, you can use lower-cost options such as downsizing the cluster or shutting down the cluster and taking a final snapshot. Final snapshots are retained even after you delete your cluster\nAlert Criteria\nYellow: A running cluster has not had a connection in the last 7 days.\nYellow: A running cluster had less than 5% cluster-wide average CPU utilization for 99% of the last 7 days.','Consider shutting down the cluster and taking a final snapshot, or downsizing the cluster\n','','version-1','',710383,{d '2018-03-14'},{d '2018-03-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_UntaggedOrUnusedEbsRule_version-1','UntaggedOrUnusedEbsRule','This rule checks the untagged or unused Ebs volume to avoid the cost',null,null,'version-1',null,null,{d '2018-08-21'},{d '2018-08-21'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_Unused-Security-group_version-1','Unused-Security-group','Cleaning up un-used security groups is best practice to keep the security groups upto date and relevant.','Delete the unused security groups','','version-1','',710383,{d '2017-10-09'},{d '2017-10-09'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_UnusedApplicationElbRule_version-1','UnusedApplicationElbRule','Un-used assets should be terminated promptly for obvious cost saving reasons','Terminate the ELB if it is no longer required','','version-1','',710383,{d '2017-09-28'},{d '2017-09-28'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_UnusedClassicElbRule_version-1','UnusedClassicElbRule','Un-used assets should be terminated promptly for obvious cost saving reasons','Terminate the ELB if it is no longer required','','version-1','',710383,{d '2017-09-28'},{d '2017-09-28'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_UnusedEBSRule_version-1','UnusedEBSRule','Un-used assets should be terminated promptly for obvious cost saving reasons','Delete the volume if it is no longer required','','version-1','',710383,{d '2017-10-13'},{d '2017-10-13'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_UnusedElasticIpRule_version-1','UnusedElasticIpRule','Checks for Elastic IP addresses (EIPs) that are not associated with a running Amazon Elastic Compute Cloud (Amazon EC2) instance. EIPs are static IP addresses designed for dynamic cloud computing. Unlike traditional static IP addresses, EIPs can mask the failure of an instance or Availability Zone by remapping a public IP address to another instance in your account. A nominal charge is imposed for an EIP that is not associated with a running instance.\n','Associate the EIP with a running active instance, or release the unassociated EIP','','version-1','',710383,{d '2018-02-01'},{d '2018-02-01'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_VpcFlowLogsEnabled_version-1','VpcFlowLogsEnabled','VPC flow logs provide vital information for debugging and forensic exercise in case of any incidents. These should be always enabled','Enable VPC flow logs','','version-1','',710383,{d '2017-08-11'},{d '2017-08-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_VpcFlowLogsEnabled_version-2','VpcFlowLogsEnabled','This rule checks  the VPC flow log enabled for a given VPC id,account & region else its an issue',null,'','version-2','',20433,{d '2017-08-21'},{d '2017-08-21'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_apacheserver-public-access_version-1','apacheserver-public-access','This rule check EC2 private IP can be accessed with port 80 to the public',null,'','version-1','',1205352,{d '2017-08-15'},{d '2017-08-15'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-1','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-1','',1205352,{d '2017-08-10'},{d '2017-08-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-10','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-10','',333523,{d '2017-09-28'},{d '2017-09-28'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-11','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-11','',333523,{d '2017-09-29'},{d '2017-09-29'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-12','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-12','',333523,{d '2017-10-10'},{d '2017-10-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-13','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-13','',333523,{d '2017-10-13'},{d '2017-10-13'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-14','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-14','',333523,{d '2017-11-02'},{d '2017-11-02'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-2','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-2','',333523,{d '2017-08-16'},{d '2017-08-16'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-3','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-3','',333523,{d '2017-08-17'},{d '2017-08-17'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-4','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-4','',333523,{d '2017-08-23'},{d '2017-08-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-5','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-5','',333523,{d '2017-08-24'},{d '2017-08-24'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-6','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-6','',333523,{d '2017-08-28'},{d '2017-08-28'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-7','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-7','',333523,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-8','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-8','',333523,{d '2017-09-08'},{d '2017-09-08'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_applicationelb_version-9','applicationelb','This rule checks for Application ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-9','',333523,{d '2017-09-12'},{d '2017-09-12'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_certificate-expiry-policy_version-1','certificate-expiry-policy','All SSL certificates must be renewed before specified days of the expiry and installed in the corresponding system','Renew and install the certficate before the specified threshold','','version-1','',1205352,{d '2017-10-26'},{d '2017-10-26'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_classicelbmandatory_version-1','classicelbmandatory','This rule checks for Classic ELB mandatory tags maintained for given LB in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-1','',1205352,{d '2017-08-10'},{d '2017-08-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_cloud-kernel-compliance_version-1','cloud-kernel-compliance','All Linux servers in AWS cloud should be patched as per the quarterly patching criteria published for the entire organization','Patch the operating system as per the criteria defined for the current quarter','','version-1','',1205352,{d '2017-09-14'},{d '2017-09-14'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_dryrundemo_version-1','dryrundemo','Simple policy creation demo','','','version-1','',70245,{d '2018-01-12'},{d '2018-01-12'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ebsmandatorytags_version-1','ebsmandatorytags','This rule checks for EBS mandatory tags maintained for given volume in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-1','',1205352,{d '2017-08-10'},{d '2017-08-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ec2deperecatedinstancetype_version-1','ec2deperecatedinstancetype','Deprecated Ec2 instance types (Old generation instance types) should not be used. Using old generation instance types have cost implication, they are not covered in our RI purchase as well','Stop the instance and change the instance type to a newer generation one and start it','','version-1','',1205352,{d '2017-08-11'},{d '2017-08-11'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ec2mandatorytags_version-1','ec2mandatorytags','This rule checks for EC2 mandatory tags maintained for given instance in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-1','',1205352,{d '2017-08-10'},{d '2017-08-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_ec2publicaccesstoport9200_version-1','ec2publicaccesstoport9200','Global permission to access the well known services like TCP on Port 9200 (Elastic Search) should not be allowed.','Do not allow global access to well known ports of an EC2 instance directly (except for 80 and 443)','','version-1','',1205352,{d '2017-08-23'},{d '2017-08-23'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_es-access_version-1','es-access','This Rule check for EC2 private IP address is accessible internally.',null,'','version-1','',1205352,{d '2017-08-22'},{d '2017-08-22'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_esearch_version-1','esearch','This rule checks for elastic search accessible internally.',null,'','version-1','',1205352,{d '2017-08-22'},{d '2017-08-22'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_lambdamandatorytags_version-1','lambdamandatorytags','This rule checks for Lambda mandatory tags maintained for given function in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-1','',1205352,{d '2017-08-10'},{d '2017-08-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_onpremisekernelversion_version-1','onpremisekernelversion','This rule checks for the on-premise servers kernel version is compliant. If it is not compliant it will create an issue.',null,'','version-1','',1205352,{d '2017-08-16'},{d '2017-08-16'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_rdsdb_version-1','rdsdb','A publicly accessible database end-point would be vulnerable to bruteforce login attempts and subsequent data loss. Unauthorised access should be restircted to minimize security risks.','To restrict access to any publicly accessible RDS database instance you must disable the database Publicly Accessible flag and update the VPC security group associated with the instance.','','version-1','',1205352,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_s3mandatorytags_version-1','s3mandatorytags','This rule checks for S3 mandatory tags maintained for given bucket in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-1','',1205352,{d '2017-08-10'},{d '2017-08-10'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_serverless-rule_version-1','serverless-rule','Serverless rule',null,'','version-1','',20433,{d '2017-09-06'},{d '2017-09-06'});
INSERT INTO cf_Policy (policyId,policyName,policyDesc,resolution,policyUrl,policyVersion,status,userId,createdDate,modifiedDate) VALUES ('PacMan_sgmandatorytags_version-1','sgmandatorytags','This rule checks for Security Group mandatory tags maintained for given SG in AWS account. If any of the mandatory tags are missing it will create an issue.',null,'','version-1','',1205352,{d '2017-08-10'},{d '2017-08-10'});

/* Rule  Initialisation */

INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_VpcFlowLogsEnabled_version-1_VpcFlowLogsEnabled_vpc','aws_account_should_have_vpclogs_enabled','PacMan_VpcFlowLogsEnabled_version-1','VpcFlowLogsEnabled','vpc','aws','VpcFlowLogsEnabled','{"params":[{"encrypt":"false","value":"role/pac_ro","key":"roleIdentifyingString"},{"encrypt":"false","value":"check-for-vpc-flowlog-enabled","key":"ruleKey"},{"encrypt":false,"value":"high","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"security","key":"ruleCategory"}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_VpcFlowLogsEnabled_version-1_VpcFlowLogsEnabled_vpc","autofix":false,"alexaKeyword":"VpcFlowLogsEnabled","ruleRestUrl":"","targetType":"vpc","pac_ds":"aws","policyId":"PacMan_VpcFlowLogsEnabled_version-1","assetGroup":"aws","ruleUUID":"aws_account_should_have_vpclogs_enabled","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_account_should_have_vpclogs_enabled'),'ENABLED','ASGC','VPC flowlogs should be enabled for all VPCs',{d '2017-08-11'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_Unused-Security-group_version-1_UnusedSecurityGroup_sg','aws_security_groups_should_not_be_unused','PacMan_Unused-Security-group_version-1','UnusedSecurityGroup','sg','aws','UnusedSecurityGroup','{"params":[{"encrypt":false,"value":"check-for-unused-security-group","key":"ruleKey"},{"encrypt":false,"value":"governance","key":"ruleCategory"},{"encrypt":false,"value":"low","key":"severity"},{"encrypt":false,"value":",","key":"splitterChar"},{"key":"fixKey","value":"unused-sg-auto-fix","isValueNew":true,"encrypt":false},{"key":"esServiceWithSgUrl","value":"/aws/ec2_secgroups/_search,/aws/rdsdb_secgroups/_search,/aws/rdscluster_secgroups/_search,/aws/redshift_secgroups/_search,/aws_lambda/lambda_secgroups/_search,/aws_appelb/appelb_secgroups/_search,/aws_classicelb/classicelb_secgroups/_search,/aws/elasticsearch/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_Unused-Security-group_version-1_UnusedSecurityGroup_sg","autofix":false,"alexaKeyword":"UnusedSecurityGroup","ruleRestUrl":"","targetType":"sg","pac_ds":"aws","policyId":"PacMan_Unused-Security-group_version-1","assetGroup":"aws","ruleUUID":"aws_security_groups_should_not_be_unused","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_security_groups_should_not_be_unused'),'ENABLED','ASGC','Security groups should not be in unused state',{d '2017-10-16'},{d '2018-12-18'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_UnusedElasticIpRule_version-1_UnusedElasticIpRule_elasticip','aws_elasticip_should_not_be_unused','PacMan_UnusedElasticIpRule_version-1','UnusedElasticIpRule','elasticip','aws-all','UnusedElasticIpRule','{"params":[{"encrypt":false,"value":"check-for-unused-elastic-ip","key":"ruleKey"},{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"governance","key":"ruleCategory"},{"key":"esElasticIpUrl","value":"/aws_elasticip/elasticip/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_UnusedElasticIpRule_version-1_UnusedElasticIpRule_elasticip","autofix":false,"alexaKeyword":"UnusedElasticIpRule","ruleRestUrl":"","targetType":"elasticip","pac_ds":"aws","policyId":"PacMan_UnusedElasticIpRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_elasticip_should_not_be_unused","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_elasticip_should_not_be_unused'),'ENABLED','ASGC','Elastic Ip''s should not be in unused state',{d '2018-02-01'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_UnusedEBSRule_version-1_UnusedEbsRule_volume','aws_ebs_volume_should_not_be_unused','PacMan_UnusedEBSRule_version-1','UnusedEbsRule','volume','aws','UnusedEBSRule','{"params":[{"encrypt":false,"value":"check-for-unused-ebs-rule","key":"ruleKey"},{"encrypt":false,"value":"governance","key":"ruleCategory"},{"encrypt":false,"value":"low","key":"severity"},{"key":"esEbsWithInstanceUrl","value":"/aws/volume_attachments/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_UnusedEBSRule_version-1_UnusedEbsRule_volume","autofix":false,"alexaKeyword":"UnusedEBSRule","ruleRestUrl":"","targetType":"volume","pac_ds":"aws","policyId":"PacMan_UnusedEBSRule_version-1","assetGroup":"aws","ruleUUID":"aws_ebs_volume_should_not_be_unused","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ebs_volume_should_not_be_unused'),'ENABLED','ASGC','EBS volumes should not be in unused state',{d '2017-10-13'},{d '2018-11-12'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_UnusedClassicElbRule_version-1_UnusedClassicElbRule_classicelb','aws_classic_elb_should_not_be_unused','PacMan_UnusedClassicElbRule_version-1','UnusedClassicElbRule','classicelb','aws','UnusedClassicElbRule','{"params":[{"encrypt":false,"value":"check-for-unused-classic-elb","key":"ruleKey"},{"encrypt":false,"value":"true","key":"threadsafe"},{"encrypt":false,"value":"governance","key":"ruleCategory"},{"encrypt":false,"value":"low","key":"severity"},{"key":"esClassicElbWithInstanceUrl","value":"/aws/classicelb_instances/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"sdfsd","key":"sdf"}],"ruleId":"PacMan_UnusedClassicElbRule_version-1_UnusedClassicElbRule_classicelb","autofix":false,"alexaKeyword":"UnusedClassicElbRule","ruleRestUrl":"","targetType":"classicelb","pac_ds":"aws","policyId":"PacMan_UnusedClassicElbRule_version-1","assetGroup":"aws","ruleUUID":"aws_classic_elb_should_not_be_unused","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_classic_elb_should_not_be_unused'),'ENABLED','ASGC','Classic ELB should not be in unused state',{d '2017-09-28'},{d '2018-11-12'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_UnusedApplicationElbRule_version-1_UnusedApplicationElbRule_appelb','aws_app_elb_should_not_be_unused','PacMan_UnusedApplicationElbRule_version-1','UnusedApplicationElbRule','appelb','aws','UnusedApplicationElbRule','{"params":[{"encrypt":"false","value":"check-for-unused-application-elb","key":"ruleKey"},{"encrypt":false,"value":"governance","key":"ruleCategory"},{"encrypt":false,"value":"low","key":"severity"},{"key":"esAppElbWithInstanceUrl","value":"/aws/appelb_instances/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_UnusedApplicationElbRule_version-1_UnusedApplicationElbRule_appelb","autofix":false,"alexaKeyword":"UnusedApplicationElbRule","ruleRestUrl":"","targetType":"appelb","pac_ds":"aws","policyId":"PacMan_UnusedApplicationElbRule_version-1","assetGroup":"aws","ruleUUID":"aws_app_elb_should_not_be_unused","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_app_elb_should_not_be_unused'),'ENABLED','ASGC','Application ELB should not be in unused state',{d '2017-09-28'},{d '2018-11-12'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_UntaggedOrUnusedEbsRule_version-1_version-1_UntaggedOrUnusedEbsRule_volume','aws_ebs_volumes_should_not_be_tagged_and_under_utilized','PacMan_UntaggedOrUnusedEbsRule_version-1','UntaggedOrUnusedEbsRule','volume','aws-all','UntaggedOrUnusedEbsRule','{"params":[{"key":"ruleKey","value":"check-for-unused-or-untagged-ebs-rule","encrypt":false},{"key":"esEbsWithInstanceUrl","value":"/aws/volume_attachments/_search","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"severity","value":"high","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_UntaggedOrUnusedEbsRule_version-1_version-1_UntaggedOrUnusedEbsRule_volume","autofix":false,"alexaKeyword":"UntaggedOrUnusedEbsRule","ruleRestUrl":"","targetType":"volume","pac_ds":"aws","policyId":"PacMan_UntaggedOrUnusedEbsRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_ebs_volumes_should_not_be_tagged_and_under_utilized","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ebs_volumes_should_not_be_tagged_and_under_utilized'),'ENABLED','ASGC','EBS volumes should not be in unused or untagged state',{d '2018-08-22'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_UnderutilizedAmazonRedshiftClustersRule_version-1_UnderutilizedAmazonRedshiftClustersRule_redshift','aws_redshift_clusters_should_not_be_under_utilized','PacMan_UnderutilizedAmazonRedshiftClustersRule_version-1','UnderutilizedAmazonRedshiftClustersRule','redshift','aws-all','UnderutilizedAmazonRedshiftClustersRule','{"params":[{"encrypt":false,"value":"check-for-under-utilized-amazon-redshift-clusters","key":"ruleKey"},{"encrypt":false,"value":"low","key":"severity"},{"encrypt":false,"value":"G31sQ1E9U","key":"checkId"},{"isValueNew":true,"encrypt":false,"value":"costOptimization","key":"ruleCategory"},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_UnderutilizedAmazonRedshiftClustersRule_version-1_UnderutilizedAmazonRedshiftClustersRule_redshift","autofix":false,"alexaKeyword":"UnderutilizedAmazonRedshiftClustersRule","ruleRestUrl":"","targetType":"redshift","pac_ds":"aws","policyId":"PacMan_UnderutilizedAmazonRedshiftClustersRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_redshift_clusters_should_not_be_under_utilized","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_redshift_clusters_should_not_be_under_utilized'),'ENABLED','ASGC','Amazon Redshift clusters should not be underutilized',{d '2018-03-14'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_Underutilized-Amazon-EBS-Volumes_version-1_Underutilized-EBS-Volumes_volume','aws_ebs_volume_should_not_be_under_utilized','PacMan_Underutilized-Amazon-EBS-Volumes_version-1','Underutilized EBS Volumes','volume','aws-all','Underutilized Amazon EBS Volumes','{"params":[{"encrypt":false,"value":"check-for-underutilized-EBS-Volumes","key":"ruleKey"},{"encrypt":false,"value":"DAvU99Dc4C","key":"checkId"},{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"costOptimization","key":"ruleCategory"},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_Underutilized-Amazon-EBS-Volumes_version-1_Underutilized-EBS-Volumes_volume","autofix":false,"alexaKeyword":"Underutilized Amazon EBS Volumes","ruleRestUrl":"","targetType":"volume","pac_ds":"aws","policyId":"PacMan_Underutilized-Amazon-EBS-Volumes_version-1","assetGroup":"aws-all","ruleUUID":"aws_ebs_volume_should_not_be_under_utilized","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ebs_volume_should_not_be_under_utilized'),'ENABLED','ASGC','Amazon EBS volumes should not be underutilized ',{d '2018-05-14'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_VpcTaggingRule_vpc','aws_vpc_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','VpcTaggingRule','vpc','aws','VpcTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_VpcTaggingRule_vpc","autofix":false,"alexaKeyword":"VpcTaggingRule","ruleRestUrl":"","targetType":"vpc","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_vpc_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_vpc_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','VPCs should be tagged with mandatory tags',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_VolumeTaggingRule_volume','aws_volume_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','VolumeTaggingRule','volume','aws','VolumeTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"low","key":"severity"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_VolumeTaggingRule_volume","autofix":false,"alexaKeyword":"VolumeTaggingRule","ruleRestUrl":"","targetType":"volume","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_volume_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_volume_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','EBS volumes should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_version-1_ElasticSearchTaggingRule_elasticsearch','aws_elasticsearch_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','ElasticSearchTaggingRule','elasticsearch','aws-all','ElasticSearchTaggingRule','{"params":[{"key":"ruleKey","value":"check-for-missing-mandatory-tags","encrypt":false},{"key":"splitterChar","value":",","encrypt":false},{"key":"severity","value":"high","encrypt":false},{"key":"mandatoryTags","value":"Application,Environment,Stack,Role","encrypt":false},{"key":"ruleCategory","value":"tagging","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_version-1_ElasticSearchTaggingRule_elasticsearch","autofix":false,"alexaKeyword":"ElasticSearchTaggingRule","ruleRestUrl":"","targetType":"elasticsearch","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_elasticsearch_should_be_tagged_with_mandatory_tags","ruleType":"Manage Rule"}','0 0/12 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_elasticsearch_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Elastic search resources should be tagged with mandatory tags ',{d '2018-08-29'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_SubnetTaggingRule_subnet','aws_subnet_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','SubnetTaggingRule','subnet','aws','SubnetTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_SubnetTaggingRule_subnet","autofix":false,"alexaKeyword":"SubnetTaggingRule","ruleRestUrl":"","targetType":"subnet","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_subnet_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_subnet_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Subnets should be tagged with mandatory tags  ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_StackTaggingRule_stack','aws_stack_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','StackTaggingRule','stack','aws','StackTaggingRule','{"params":[{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_StackTaggingRule_stack","autofix":false,"alexaKeyword":"StackTaggingRule","ruleRestUrl":"","targetType":"stack","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_stack_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_stack_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Cloud formation stacks should be tagged with mandatory tags',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_SnapshotTaggingRule_snapshot','aws_snapshot_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','SnapshotTaggingRule','snapshot','aws','SnapshotTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"encrypt":false,"value":"true","key":"threadsafe"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_SnapshotTaggingRule_snapshot","autofix":false,"alexaKeyword":"SnapshotTaggingRule","ruleRestUrl":"","targetType":"snapshot","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_snapshot_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_snapshot_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','EBS snapshots should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_SgTaggingRule_sg','aws_sg_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','SgTaggingRule','sg','aws','SgTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"low","key":"severity"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_SgTaggingRule_sg","autofix":false,"alexaKeyword":"SgTaggingRule","ruleRestUrl":"","targetType":"sg","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_sg_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_sg_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Security groups should be tagged with mandatory tags',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_S3TaggingRule_s3','aws_s3_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','S3TaggingRule','s3','aws','S3TaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"high","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_S3TaggingRule_s3","autofix":false,"alexaKeyword":"S3TaggingRule","ruleRestUrl":"","targetType":"s3","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_s3_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_s3_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','S3 should be tagged with mandatory tags',{d '2017-11-02'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_RedshiftTaggingRule_redshift','aws_redshift_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','RedshiftTaggingRule','redshift','aws','RedshiftTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_RedshiftTaggingRule_redshift","autofix":false,"alexaKeyword":"RedshiftTaggingRule","ruleRestUrl":"","targetType":"redshift","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_redshift_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_redshift_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Redshift should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_RdsdbTaggingRule_rdsdb','aws_rdsdb_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','RdsdbTaggingRule','rdsdb','aws','RdsdbTaggingRule','{"params":[{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"high","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_RdsdbTaggingRule_rdsdb","autofix":false,"alexaKeyword":"RdsdbTaggingRule","ruleRestUrl":"","targetType":"rdsdb","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_rdsdb_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_rdsdb_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','RDS database should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_LambdaTaggingRule_lambda','aws_lambda_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','LambdaTaggingRule','lambda','aws','LambdaTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_LambdaTaggingRule_lambda","autofix":false,"alexaKeyword":"LambdaTaggingRule","ruleRestUrl":"","targetType":"lambda","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_lambda_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_lambda_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Lambda functions should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_KmsTaggingRule_kms','aws_kms_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','KmsTaggingRule','kms','aws','KmsTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_KmsTaggingRule_kms","autofix":false,"alexaKeyword":"KmsTaggingRule","ruleRestUrl":"","targetType":"kms","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_kms_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_kms_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','AWS KMS should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_EmrTaggingRule_emr','aws_emr_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','EmrTaggingRule','emr','aws','EmrTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_EmrTaggingRule_emr","autofix":false,"alexaKeyword":"EmrTaggingRule","ruleRestUrl":"","targetType":"emr","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_emr_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_emr_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','AWS EMR should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_ElasticacheTaggingRule_elasticache','aws_elasticache_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','ElasticacheTaggingRule','elasticache','aws-all','ElasticacheTaggingRule','{"params":[{"key":"ruleKey","value":"check-for-missing-mandatory-tags","encrypt":false},{"key":"splitterChar","value":",","encrypt":false},{"key":"severity","value":"high","encrypt":false},{"key":"mandatoryTags","value":"Application,Environment,Stack,Role","encrypt":false},{"key":"ruleCategory","value":"tagging","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_ElasticacheTaggingRule_elasticache","autofix":false,"alexaKeyword":"ElasticacheTaggingRule","ruleRestUrl":"","targetType":"elasticache","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_elasticache_should_be_tagged_with_mandatory_tags","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_elasticache_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Elasticache should be tagged with mandatory tags ',{d '2018-09-10'},{d '2018-09-10'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_EfsTaggingRule_efs','aws_efs_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','EfsTaggingRule','efs','aws','EfsTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_EfsTaggingRule_efs","autofix":false,"alexaKeyword":"EfsTaggingRule","ruleRestUrl":"","targetType":"efs","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_efs_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_efs_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','EFS should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_Ec2TaggingRule_ec2','aws_ec2_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','Ec2TaggingRule','ec2','aws','Ec2TaggingRule','{"params":[{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_Ec2TaggingRule_ec2","autofix":false,"alexaKeyword":"Ec2TaggingRule","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_ec2_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','EC2 instances should be tagged with mandatory tags ',{d '2017-11-02'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_DynamodbTaggingRule_dynamodb','aws_dynamodb_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','DynamodbTaggingRule','dynamodb','aws','DynamodbTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_DynamodbTaggingRule_dynamodb","autofix":false,"alexaKeyword":"DynamodbTaggingRule","ruleRestUrl":"","targetType":"dynamodb","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_dynamodb_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_dynamodb_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Dynamo db should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_CloudfrontTaggingRule_cloudfront','aws_cloudfront_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','CloudfrontTaggingRule','cloudfront','aws','CloudfrontTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_CloudfrontTaggingRule_cloudfront","autofix":false,"alexaKeyword":"CloudfrontTaggingRule","ruleRestUrl":"","targetType":"cloudfront","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_cloudfront_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_cloudfront_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Cloudfront should be tagged with mandatory tags',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_ClassicelbTaggingRule_classicelb','aws_classic_elb_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','ClassicelbTaggingRule','classicelb','aws','ClassicelbTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"low","key":"severity"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_ClassicelbTaggingRule_classicelb","autofix":false,"alexaKeyword":"ClassicelbTaggingRule","ruleRestUrl":"","targetType":"classicelb","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_classic_elb_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_classic_elb_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Classic ELB should be tagged with mandatory tags',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_AsgTaggingRule_asg','aws_asg_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','AsgTaggingRule','asg','aws','AsgTaggingRule','{"params":[{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_AsgTaggingRule_asg","autofix":false,"alexaKeyword":"AsgTaggingRule","ruleRestUrl":"","targetType":"asg","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_asg_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_asg_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Auto scaling groups should be tagged with mandatory tags ',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_TaggingRule_version-1_AppelbTaggingRule_appelb','aws_app_elb_should_be_tagged_with_mandatory_tags','PacMan_TaggingRule_version-1','AppelbTaggingRule','appelb','aws','AppelbTaggingRule','{"params":[{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"check-for-missing-mandatory-tags","key":"ruleKey"},{"encrypt":false,"value":"low","key":"severity"},{"encrypt":false,"value":"Application,Environment,Stack,Role","key":"mandatoryTags"},{"isValueNew":true,"encrypt":false,"value":"tagging","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_TaggingRule_version-1_AppelbTaggingRule_appelb","autofix":false,"alexaKeyword":"AppelbTaggingRule","ruleRestUrl":"","targetType":"appelb","pac_ds":"aws","policyId":"PacMan_TaggingRule_version-1","assetGroup":"aws","ruleUUID":"aws_app_elb_should_be_tagged_with_mandatory_tags","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_app_elb_should_be_tagged_with_mandatory_tags'),'ENABLED','ASGC','Application ELB  should be tagged with mandatory tags',{d '2017-11-03'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_SQS_Public_Access_Rule_version-1_SQS_Public_access_rule_sqs','aws_sqs_should_not_have_public_access','PacMan_SQS_Public_Access_Rule_version-1','SQS_Public_access_rule','sqs','aws-all','sqs public access','{"params":[{"key":"severity","value":"critical","encrypt":false},{"key":"ruleCategory","value":"security","encrypt":false},{"key":"ruleKey","value":"check-for-sqs-public-access","isValueNew":true,"encrypt":false},{"key":"threadsafe","value":"true","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_SQS_Public_Access_Rule_version-1_SQS_Public_access_rule_sqs","autofix":false,"alexaKeyword":"sqs public access","ruleRestUrl":"","targetType":"sqs","pac_ds":"aws","policyId":"PacMan_SQS_Public_Access_Rule_version-1","assetGroup":"aws-all","ruleUUID":"aws_sqs_should_not_have_public_access","ruleType":"Manage Rule"}','0 0/2 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_sqs_should_not_have_public_access'),'ENABLED','ASGC','Non-White listed SQS resources should not be publicly accessible',{d '2018-11-10'},{d '2018-11-14'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_SGWithAnywhereAccess_version-1_SgWithSshPort22OpenToInternetAccess_sg','aws_sg_should_not_have_public_access_with_port22','PacMan_SGWithAnywhereAccess_version-1','SgWithSshPort22OpenToInternetAccess','sg','aws-all','SgWithSshPort22OpenToInternetAccess','{"params":[{"key":"ruleKey","value":"check-for-security-group-global-access","encrypt":false},{"key":"severity","value":"high","encrypt":false},{"key":"ruleCategory","value":"security","encrypt":false},{"key":"cidrIp","value":"0.0.0.0/0","encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","encrypt":false},{"key":"portToCheck","value":"22","encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_SGWithAnywhereAccess_version-1_SgWithSshPort22OpenToInternetAccess_sg","autofix":false,"alexaKeyword":"SgWithSshPort22OpenToInternetAccess","ruleRestUrl":"","targetType":"sg","pac_ds":"aws","policyId":"PacMan_SGWithAnywhereAccess_version-1","assetGroup":"aws-all","ruleUUID":"aws_sg_should_not_have_public_access_with_port22","ruleType":"ManageRule"}','0 0/6 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_sg_should_not_have_public_access_with_port22'),'ENABLED','ASGC','Security group with SSH port 22 should not be open to the internet',{d '2018-10-01'},{d '2018-11-02'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_SGWithAnywhereAccess_version-1_SgWithAnywhereAccess_sg','aws_sg_should_not_have_anywhere_access_with_anyport','PacMan_SGWithAnywhereAccess_version-1','SgWithAnywhereAccess','sg','aws','SgWithAnywhereAccess','{"params":[{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"0.0.0.0/0","key":"cidrIp"},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","isValueNew":true,"encrypt":false},{"key":"workerThreadCount","value":"50","isValueNew":true,"encrypt":false},{"key":"portToCheck","value":"ANY","isValueNew":true,"encrypt":false},{"key":"ruleKey","value":"check-for-security-group-global-access","isValueNew":true,"encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_SGWithAnywhereAccess_version-1_SgWithAnywhereAccess_sg","autofix":false,"alexaKeyword":"SgWithAnywhereAccess","ruleRestUrl":"","targetType":"sg","pac_ds":"aws","policyId":"PacMan_SGWithAnywhereAccess_version-1","assetGroup":"aws","ruleUUID":"aws_sg_should_not_have_anywhere_access_with_anyport","ruleType":"ManageRule"}','0 0/6 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_sg_should_not_have_anywhere_access_with_anyport'),'ENABLED','ASGC','Unapproved security groups should not have inbound rule allowing 0.0.0.0/0 for any port.',{d '2017-08-11'},{d '2018-11-08'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_ServiceLimitRule_version-1_ServiceLimitRule_account','aws_account_service_limit_rule','PacMan_ServiceLimitRule_version-1','ServiceLimitRule','account','aws','ServiceLimitRule','{"params":[{"encrypt":false,"value":"check-for-service-limit","key":"ruleKey"},{"encrypt":false,"value":"true","key":"threadsafe"},{"encrypt":false,"value":"governance","key":"ruleCategory"},{"encrypt":false,"value":"medium","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"eW7HH0l7J9","key":"checkId"},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_ServiceLimitRule_version-1_ServiceLimitRule_account","autofix":false,"alexaKeyword":"ServiceLimitRule","ruleRestUrl":"","targetType":"account","pac_ds":"aws","policyId":"PacMan_ServiceLimitRule_version-1","assetGroup":"aws","ruleUUID":"aws_account_service_limit_rule","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_account_service_limit_rule'),'ENABLED','ASGC','AWS service limits should be upgraded to match growing needs',{d '2017-10-17'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_S3GlobalAccess_version-1_S3BucketShouldnotpubliclyaccessble_s3','aws_s3_should_not_be_publicly_accessible','PacMan_S3GlobalAccess_version-1','S3BucketShouldnotpubliclyaccessble','s3','aws-all','s3GlobalAccess','{"params":[{"key":"apiKeyValue","value":"g_dtvoc2SBvmiiIFhfbJwLJ7H3RKHBlBqh7kq7rVDLz-IDzbFhNcQduJYH9RMAlq","encrypt":true},{"key":"apiKeyName","value":"R8JVrYZEmOdl65dBftXTFQ","encrypt":true},{"key":"ruleCategory","value":"security","encrypt":false},{"key":"severity","value":"critical","encrypt":false},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","encrypt":false},{"key":"apiGWURL","value":"","encrypt":false},{"key":"ruleKey","value":"check-for-s3-global-access","isValueNew":true,"encrypt":false},{"key":"checkId","value":"Pfx0RwqBli","isValueNew":true,"encrypt":false},{"key":"roleIdentifyingString","value":"role/pac_ro","isValueNew":true,"encrypt":false},{"key":"fixKey","value":"s3-global-access-fix","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_S3GlobalAccess_version-1_S3BucketShouldnotpubliclyaccessble_s3","autofix":false,"alexaKeyword":"s3GlobalAccess","ruleRestUrl":"","targetType":"s3","pac_ds":"aws","policyId":"PacMan_S3GlobalAccess_version-1","assetGroup":"aws-all","ruleUUID":"aws_s3_should_not_be_publicly_accessible","ruleType":"ManageRule"}','0 0/2 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_s3_should_not_be_publicly_accessible'),'ENABLED','ASGC','Non whitelisted S3 buckets should not be publicly accessible ',{d '2018-10-09'},{d '2018-12-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_RedShiftPublicAccess_version-1_RedShiftPublicAccess_redshift','aws_redshift_should_not_be_publicly_accessible','PacMan_RedShiftPublicAccess_version-1','RedShiftPublicAccess','redshift','aws','RedShift','{"params":[{"encrypt":false,"value":"check-for-redshift-public-access","key":"ruleKey"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"critical","key":"severity"},{"key":"cidrIp","value":"0.0.0.0/0","isValueNew":true,"encrypt":false},{"key":"esRedshiftSgURL","value":"/aws/redshift_secgroups/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","isValueNew":true,"encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","isValueNew":true,"encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false},{"key":"internetGateWay","value":"igw","isValueNew":true,"encrypt":false},{"key":"defaultCidrIp","value":"10.0.0.0/8","isValueNew":true,"encrypt":false},{"key":"fixKey","value":"publicly-accessible-redshift","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_RedShiftPublicAccess_version-1_RedShiftPublicAccess_redshift","autofix":false,"alexaKeyword":"RedShift","ruleRestUrl":"","targetType":"redshift","pac_ds":"aws","policyId":"PacMan_RedShiftPublicAccess_version-1","assetGroup":"aws","ruleUUID":"aws_redshift_should_not_be_publicly_accessible","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_redshift_should_not_be_publicly_accessible'),'ENABLED','ASGC','Redshift attached Security Group should not be publicly accessible',{d '2017-10-09'},{d '2018-12-10'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_RdsSnapshotWithPublicAccess_version-1_RdsSnapshotWithPublicAccess_rdssnapshot','aws_rdssnapshot_should_not_be_there_in_non_standard_region','PacMan_RdsSnapshotWithPublicAccess_version-1','RdsSnapshotWithPublicAccess','rdssnapshot','aws','RdsSnapshotWithPublicAccess','{"params":[{"encrypt":"false","value":"check-for-rds-snapshot-with-public-access","key":"ruleKey"},{"encrypt":false,"value":"critical","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"rSs93HQwa1","key":"checkId"},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_RdsSnapshotWithPublicAccess_version-1_RdsSnapshotWithPublicAccess_rdssnapshot","autofix":false,"alexaKeyword":"RdsSnapshotWithPublicAccess","ruleRestUrl":"","targetType":"rdssnapshot","pac_ds":"aws","policyId":"PacMan_RdsSnapshotWithPublicAccess_version-1","assetGroup":"aws","ruleUUID":"aws_rdssnapshot_should_not_be_there_in_non_standard_region","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_rdssnapshot_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','RDS snapshot should not be publicly accessible',{d '2017-08-31'},{d '2018-12-10'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_rdsdb_version-1_RdsDbPublicAccess_rdsdb','aws_rdsdb_should_not_be_publicly_accessible','PacMan_rdsdb_version-1','RdsDbPublicAccess','rdsdb','aws','rdsdb','{"params":[{"encrypt":false,"value":"check-for-rds-db-public-access","key":"ruleKey"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"critical","key":"severity"},{"key":"cidrIp","value":"0.0.0.0/0","isValueNew":true,"encrypt":false},{"key":"esRdsDbSgUrl","value":"/aws/rdsdb_secgroups/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","isValueNew":true,"encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","isValueNew":true,"encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false},{"key":"internetGateWay","value":"igw","isValueNew":true,"encrypt":false},{"key":"defaultCidrIp","value":"10.0.0.0/8","isValueNew":true,"encrypt":false},{"key":"fixKey","value":"publicly-accessible-rdsdb","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_rdsdb_version-1_RdsDbPublicAccess_rdsdb","autofix":false,"alexaKeyword":"rdsdb","ruleRestUrl":"","targetType":"rdsdb","pac_ds":"aws","policyId":"PacMan_rdsdb_version-1","assetGroup":"aws","ruleUUID":"aws_rdsdb_should_not_be_publicly_accessible","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_rdsdb_should_not_be_publicly_accessible'),'ENABLED','ASGC','RDS database endpoints should not be publicly accessible',{d '2017-10-09'},{d '2018-12-10'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_VpcWithNonStandardRule_vpc','aws_vpc_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','VpcWithNonStandardRule','vpc','aws-all','VpcWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_VpcWithNonStandardRule_vpc","autofix":false,"alexaKeyword":"VpcWithNonStandardRule","ruleRestUrl":"","targetType":"vpc","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_vpc_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_vpc_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','VPC resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_VolumeWithNonStandardRegion_volume','aws_volume_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','VolumeWithNonStandardRegion','volume','aws-all','VolumeWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_VolumeWithNonStandardRegion_volume","autofix":false,"alexaKeyword":"VolumeWithNonStandardRegion","ruleRestUrl":"","targetType":"volume","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_volume_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_volume_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','EBS Volume should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_SubnetWithNonStandardRegion_subnet','aws_subnet_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','SubnetWithNonStandardRegion','subnet','aws-all','SubnetWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_SubnetWithNonStandardRegion_subnet","autofix":false,"alexaKeyword":"SubnetWithNonStandardRegion","ruleRestUrl":"","targetType":"subnet","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_subnet_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_subnet_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Subnet should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_StackWithNonStandardRegion_stack','aws_stack_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','StackWithNonStandardRegion','stack','aws-all','StackWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_StackWithNonStandardRegion_stack","autofix":false,"alexaKeyword":"StackWithNonStandardRegion","ruleRestUrl":"","targetType":"stack","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_stack_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_stack_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Stack should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_SnstopicWithNonStandardRegion_snstopic','aws_snstopic_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','SnstopicWithNonStandardRegion','snstopic','aws-all','SnstopicWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_SnstopicWithNonStandardRegion_snstopic","autofix":false,"alexaKeyword":"SnstopicWithNonStandardRegion","ruleRestUrl":"","targetType":"snstopic","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_snstopic_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_snstopic_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Snstopic should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_SnapshotWithNonStandardRegion_snapshot','aws_snapshot_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','SnapshotWithNonStandardRegion','snapshot','aws-all','SnapshotWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_SnapshotWithNonStandardRegion_snapshot","autofix":false,"alexaKeyword":"SnapshotWithNonStandardRegion","ruleRestUrl":"","targetType":"snapshot","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_snapshot_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_snapshot_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Snapshot should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_SgWithNonStandardRegion_sg','aws_sg_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','SgWithNonStandardRegion','sg','aws-all','SgWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_SgWithNonStandardRegion_sg","autofix":false,"alexaKeyword":"SgWithNonStandardRegion","ruleRestUrl":"","targetType":"sg","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_sg_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_sg_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Security group should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_S3WithNonStandardRegion_s3','aws_s3_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','S3WithNonStandardRegion','s3','aws-all','S3WithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_S3WithNonStandardRegion_s3","autofix":false,"alexaKeyword":"S3WithNonStandardRegion","ruleRestUrl":"","targetType":"s3","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_s3_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_s3_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','S3 should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_ResourceWithNonStandardRule_ec2','aws_ec2_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','ResourceWithNonStandardRule','ec2','aws-all','Ec2WithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_ResourceWithNonStandardRule_ec2","autofix":false,"alexaKeyword":"Ec2WithNonStandardRegion","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_ec2_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','EC2 instance should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_RdsSnapshotWithNonStandardRegion_rdssnapshot','aws_rdssnapshot_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','RdsSnapshotWithNonStandardRegion','rdssnapshot','aws-all','RdsSnapshotWithNonStandardRegion','{"params":[{"key":"threadsafe","value":"true","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_RdsSnapshotWithNonStandardRegion_rdssnapshot","autofix":false,"alexaKeyword":"RdsSnapshotWithNonStandardRegion","ruleRestUrl":"","targetType":"rdssnapshot","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_rdssnapshot_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_rdssnapshot_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','RDS Snapshot should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_LaunchconfigWithNonStandardRegion_launchconfig','aws_launchconfig_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','LaunchconfigWithNonStandardRegion','launchconfig','aws-all','LaunchconfigWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_LaunchconfigWithNonStandardRegion_launchconfig","autofix":false,"alexaKeyword":"LaunchconfigWithNonStandardRegion","ruleRestUrl":"","targetType":"launchconfig","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_launchconfig_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_launchconfig_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Launchconfig should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_LambdaWithNonStandardRegion_lambda','aws_lambda_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','LambdaWithNonStandardRegion','lambda','aws-all','LambdaWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_LambdaWithNonStandardRegion_lambda","autofix":false,"alexaKeyword":"LambdaWithNonStandardRegion","ruleRestUrl":"","targetType":"lambda","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_lambda_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_lambda_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Lambda should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_ClassicelbWithNonStandardRegion_classicelb','aws_classicelb_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','ClassicelbWithNonStandardRegion','classicelb','aws-all','ClassicelbWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_ClassicelbWithNonStandardRegion_classicelb","autofix":false,"alexaKeyword":"ClassicelbWithNonStandardRegion","ruleRestUrl":"","targetType":"classicelb","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_classicelb_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_classicelb_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Classicelb should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_version-1_AsgWithNonStandardRegion_asg','aws_asg_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','AsgWithNonStandardRegion','asg','aws-all','AsgWithNonStandardRegion','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_version-1_AsgWithNonStandardRegion_asg","autofix":false,"alexaKeyword":"AsgWithNonStandardRegion","ruleRestUrl":"","targetType":"asg","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_asg_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_asg_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Asg should have standard region',{d '2018-08-30'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_RedshiftWithNonStandardRule_redshift','aws_redshift_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','RedshiftWithNonStandardRule','redshift','aws-all','RedshiftWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_RedshiftWithNonStandardRule_redshift","autofix":false,"alexaKeyword":"RedshiftWithNonStandardRule","ruleRestUrl":"","targetType":"redshift","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_redshift_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_redshift_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Redshift resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_RdsdbWithNonStandardRule_rdsdb','aws_rdsdb_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','RdsdbWithNonStandardRule','rdsdb','aws-all','RdsdbWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_RdsdbWithNonStandardRule_rdsdb","autofix":false,"alexaKeyword":"RdsdbWithNonStandardRule","ruleRestUrl":"","targetType":"rdsdb","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_rdsdb_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_rdsdb_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Rdsdb resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_KmsWithNonStandardRule_kms','aws_kms_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','KmsWithNonStandardRule','kms','aws-all','KmsWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_KmsWithNonStandardRule_kms","autofix":false,"alexaKeyword":"KmsWithNonStandardRule","ruleRestUrl":"","targetType":"kms","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_kms_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_kms_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','KMS resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_EniWithNonStandardRule_eni','aws_eni_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','EniWithNonStandardRule','eni','aws-all','EniWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_EniWithNonStandardRule_eni","autofix":false,"alexaKeyword":"EniWithNonStandardRule","ruleRestUrl":"","targetType":"eni","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_eni_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_eni_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Eni resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_EmrWithNonStandardRule_emr','aws_emr_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','EmrWithNonStandardRule','emr','aws-all','EmrWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_EmrWithNonStandardRule_emr","autofix":false,"alexaKeyword":"EmrWithNonStandardRule","ruleRestUrl":"","targetType":"emr","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_emr_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_emr_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Emr resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_ElasticsearchWithNonStandardRule_elasticsearch','aws_elasticsearch_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','ElasticsearchWithNonStandardRule','elasticsearch','aws-all','ElasticsearchWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_ElasticsearchWithNonStandardRule_elasticsearch","autofix":false,"alexaKeyword":"ElasticsearchWithNonStandardRule","ruleRestUrl":"","targetType":"elasticsearch","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_elasticsearch_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_elasticsearch_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Elasticsearch resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_ElasticipWithNonStandardRule_elasticip','aws_elasticip_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','ElasticipWithNonStandardRule','elasticip','aws-all','ElasticipWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_ElasticipWithNonStandardRule_elasticip","autofix":false,"alexaKeyword":"ElasticipWithNonStandardRule","ruleRestUrl":"","targetType":"elasticip","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_elasticip_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_elasticip_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Elasticip resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_ElasticacheWithNonStandardRule_elasticache','aws_elasticahe_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','ElasticacheWithNonStandardRule','elasticache','aws-all','ElasticacheWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_ElasticacheWithNonStandardRule_elasticache","autofix":false,"alexaKeyword":"ElasticacheWithNonStandardRule","ruleRestUrl":"","targetType":"elasticache","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_elasticahe_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_elasticahe_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Elasticache resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_EfsWithNonStandardRule_efs','aws_efs_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','EfsWithNonStandardRule','efs','aws-all','EfsWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_EfsWithNonStandardRule_efs","autofix":false,"alexaKeyword":"EfsWithNonStandardRule","ruleRestUrl":"","targetType":"efs","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_efs_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_efs_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Efs resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_DynamodbWithNonStandardRule_dynamodb','aws_dynamodb_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','DynamodbWithNonStandardRule','dynamodb','aws-all','DynamodbWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_DynamodbWithNonStandardRule_dynamodb","autofix":false,"alexaKeyword":"DynamodbWithNonStandardRule","ruleRestUrl":"","targetType":"dynamodb","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_dynamodb_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_dynamodb_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Dynamodb should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_AppelbWithNonStandardRule_appelb','aws_app_elb_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','AppelbWithNonStandardRule','appelb','aws-all','AppelbWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_AppelbWithNonStandardRule_appelb","autofix":false,"alexaKeyword":"AppelbWithNonStandardRule","ruleRestUrl":"","targetType":"appelb","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_app_elb_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_app_elb_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','Appelb resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonStandardRegionRule_version-1_ApiWithNonStandardRule_api','aws_api_resource_should_not_be_there_in_non_standard_region','PacMan_NonStandardRegionRule_version-1','ApiWithNonStandardRule','api','aws-all','ApiWithNonStandardRule','{"params":[{"key":"splitterChar","value":",","encrypt":false},{"key":"ruleKey","value":"check-for-non-standard-region-rule","encrypt":false},{"key":"severity","value":"low","encrypt":false},{"key":"ruleCategory","value":"governance","encrypt":false},{"key":"standardRegions","value":"us-west-2,us-east-1,us-east-2,us-west-1","encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_NonStandardRegionRule_version-1_ApiWithNonStandardRule_api","autofix":false,"alexaKeyword":"ApiWithNonStandardRule","ruleRestUrl":"","targetType":"api","pac_ds":"aws","policyId":"PacMan_NonStandardRegionRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_api_resource_should_not_be_there_in_non_standard_region","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_api_resource_should_not_be_there_in_non_standard_region'),'ENABLED','ASGC','API resource should have standard region',{d '2018-10-03'},{d '2018-10-03'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_NonAdminAccountsWithIAMFullAccess_version-1_IAMAccessGrantForNonAdminAccountRule_iamrole','aws_non_admin_iam_role_should_not_have_iam_full_access','PacMan_NonAdminAccountsWithIAMFullAccess_version-1','IAMAccessGrantForNonAdminAccountRule','iamrole','aws','IAMAccessGrantForNonAdminAccountRule','{"assetGroup":"aws","policyId":"PacMan_NonAdminAccountsWithIAMFullAccess_version-1","environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleUUID":"aws_non_admin_iam_role_should_not_have_iam_full_access","ruleType":"ManageRule","pac_ds":"aws","targetType":"iamrole","params":[{"encrypt":"false","value":"role/pac_ro","key":"roleIdentifyingString"},{"encrypt":"false","value":"Admin","key":"adminRolesToCompare"},{"encrypt":"false","value":"check-non-admin-accounts-for-iamfullccess","key":"ruleKey"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"high","key":"severity"}],"ruleId":"PacMan_NonAdminAccountsWithIAMFullAccess_version-1_IAMAccessGrantForNonAdminAccountRule_iamrole","autofix":false,"alexaKeyword":"IAMAccessGrantForNonAdminAccountRule","ruleRestUrl":""}','0 0/6 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_non_admin_iam_role_should_not_have_iam_full_access'),'ENABLED','710383','Non Admin IAM roles should not have full IAM access',{d '2017-08-31'},{d '2018-02-09'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_LambdaFunWithAdmin-OrIamPrivileges_version-1_LambdaFunWithAdminOrIamPrivileges_lambda','aws_lambda_function_should_not_have_administrative_privilege','PacMan_LambdaFunWithAdmin-OrIamPrivileges_version-1','LambdaFunWithAdminOrIamPrivileges','lambda','aws-all','LambdaFunWithAdmin-OrIamPrivileges','{"params":[{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"check-for-lambda-fun-with-admin-or-IAM-privileges","key":"ruleKey"},{"encrypt":false,"value":"PacMan_NonAdminAccountsWithIAMFullAccess_version-1_IAMAccessGrantForNonAdminAccountRule_iamrole","key":"nonAdminAccntsWithIAMFullAccessRuleId"},{"key":"esNonAdminAccntsWithIAMFullAccessUrl","value":"/aws/issue_iamrole/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_LambdaFunWithAdmin-OrIamPrivileges_version-1_LambdaFunWithAdminOrIamPrivileges_lambda","autofix":false,"alexaKeyword":"LambdaFunWithAdmin-OrIamPrivileges","ruleRestUrl":"","targetType":"lambda","pac_ds":"aws","policyId":"PacMan_LambdaFunWithAdmin-OrIamPrivileges_version-1","assetGroup":"aws-all","ruleUUID":"aws_lambda_function_should_not_have_administrative_privilege","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_lambda_function_should_not_have_administrative_privilege'),'ENABLED','ASGC','Lambda functions should not have administrative permissions',{d '2018-02-15'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_IdleLoadBalancerRule_version-1_IdleLoadbalancerRule_classicelb','aws_classic_elb_should_not_be_in_idle_state','PacMan_IdleLoadBalancerRule_version-1','IdleLoadbalancerRule','classicelb','aws-all','IdleLoadBalancer','{"params":[{"encrypt":false,"value":"check-for-idle-load-balancers","key":"ruleKey"},{"encrypt":false,"value":"hjLMh88uM8","key":"checkId"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"costOptimization","key":"ruleCategory"},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_IdleLoadBalancerRule_version-1_IdleLoadbalancerRule_classicelb","autofix":false,"alexaKeyword":"IdleLoadBalancer","ruleRestUrl":"","targetType":"classicelb","pac_ds":"aws","policyId":"PacMan_IdleLoadBalancerRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_classic_elb_should_not_be_in_idle_state","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_classic_elb_should_not_be_in_idle_state'),'ENABLED','ASGC','Loadbalncer''s should not be idle ',{d '2018-02-25'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_IamPasswordPolicy_version-1_IamPasswordPolicy_account','aws_accounts_should_follow_iam_password_policy','PacMan_IamPasswordPolicy_version-1','IamPasswordPolicy','account','aws-all','IamPasswordPolicy','{"assetGroup":"aws-all","policyId":"PacMan_IamPasswordPolicy_version-1","environmentVariables":[],"ruleUUID":"aws_accounts_should_follow_iam_password_policy","ruleType":"ManageRule","pac_ds":"aws","targetType":"account","params":[{"encrypt":false,"value":"role/pac_ro","key":"roleIdentifyingString"},{"encrypt":false,"value":"check-iam-password-policy","key":"ruleKey"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"90","key":"maxPasswordAge"},{"encrypt":false,"value":"true","key":"requireSymbols"},{"encrypt":false,"value":"true","key":"requireNumbers"},{"encrypt":false,"value":"true","key":"requireUppercaseCharacters"},{"encrypt":false,"value":"true","key":"requireLowercaseCharacters"},{"encrypt":false,"value":"true","key":"allowUsersToChangePassword"},{"encrypt":false,"value":"true","key":"expirePasswords"},{"encrypt":false,"value":"false","key":"hardExpiry"},{"encrypt":false,"value":"critical","key":"severity"},{"encrypt":false,"value":"14","key":"minPasswordLength"},{"encrypt":false,"value":"24","key":"lastPasswordsToRemember"},{"encrypt":false,"value":"iam-password-policy-fix","key":"fixKey"}],"ruleId":"PacMan_IamPasswordPolicy_version-1_IamPasswordPolicy_account","autofix":false,"alexaKeyword":"IamPasswordPolicy","ruleRestUrl":""}','0 0/6 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_accounts_should_follow_iam_password_policy'),'ENABLED','1205352','All AWS accounts should follow the IAM password policy',{d '2018-01-08'},{d '2018-06-29'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_IamAccessKeyRotatedInEvery90Days_version-1_IamAccessKeyRotatedInEvery90Days_iamuser','aws_iam_keys_should_be_rotated_every_target_period','PacMan_IamAccessKeyRotatedInEvery90Days_version-1','IamAccessKeyRotatedInEvery90Days','iamuser','aws','IamAccessKeyRotatedInEvery90Days','{"assetGroup":"aws","policyId":"PacMan_IamAccessKeyRotatedInEvery90Days_version-1","environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleUUID":"aws_iam_keys_should_be_rotated_every_target_period","ruleType":"ManageRule","pac_ds":"aws","targetType":"iamuser","params":[{"encrypt":"false","value":"role/pac_ro","key":"roleIdentifyingString"},{"encrypt":"false","value":"check-for-accesskeys-rotated-in-every-90-days","key":"ruleKey"},{"encrypt":false,"value":"high","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"security","key":"ruleCategory"}],"ruleId":"PacMan_IamAccessKeyRotatedInEvery90Days_version-1_IamAccessKeyRotatedInEvery90Days_iamuser","autofix":false,"alexaKeyword":"IamAccessKeyRotatedInEvery90Days","ruleRestUrl":""}','0 0/6 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_iam_keys_should_be_rotated_every_target_period'),'ENABLED','1205352','IAM accesskey must be rotated every 90 days',{d '2017-08-30'},{d '2018-01-05'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_GuardDutyFindingsExists_version-1_GuardDutyFindingsExists_ec2','aws_ec2_should_not_have_guardduty_findings','PacMan_GuardDutyFindingsExists_version-1','GuardDutyFindingsExists','ec2','aws-all','GuardDutyFindingsExists','{"params":[{"encrypt":false,"value":"check-guard-duty-findings-exists","key":"ruleKey"},{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"key":"esGuardDutyUrl","value":"/guardduty/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_GuardDutyFindingsExists_version-1_GuardDutyFindingsExists_ec2","autofix":false,"alexaKeyword":"GuardDutyFindingsExists","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_GuardDutyFindingsExists_version-1","assetGroup":"aws-all","ruleUUID":"aws_ec2_should_not_have_guardduty_findings","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_should_not_have_guardduty_findings'),'ENABLED','ASGC','EC2 instance should not have guard duty findings',{d '2018-02-12'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_ElbWithPublicAccess_version-1_ClassicElbWithPublicAccess_classicelb','aws_classic_elb_should_not_be_publicly_accessible','PacMan_ElbWithPublicAccess_version-1','ClassicElbWithPublicAccess','classicelb','aws-all','ClassicElbWithPublicAccess','{"params":[{"key":"ruleKey","value":"check-for-elb-public-access","encrypt":false},{"key":"internetGateWay","value":"igw","encrypt":false},{"key":"severity","value":"critical","encrypt":false},{"key":"ruleCategory","value":"security","encrypt":false},{"key":"cidrIp","value":"0.0.0.0/0","encrypt":false},{"key":"esElbWithSGUrl","value":"/aws/classicelb_secgroups/_search","encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false},{"key":"defaultCidrIp","value":"10.0.0.0/8","isValueNew":true,"encrypt":false},{"key":"fixKey","value":"publicly-accessible-classicelb","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_ElbWithPublicAccess_version-1_ClassicElbWithPublicAccess_classicelb","autofix":false,"alexaKeyword":"ClassicElbWithPublicAccess","ruleRestUrl":"","targetType":"classicelb","pac_ds":"aws","policyId":"PacMan_ElbWithPublicAccess_version-1","assetGroup":"aws-all","ruleUUID":"aws_classic_elb_should_not_be_publicly_accessible","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_classic_elb_should_not_be_publicly_accessible'),'ENABLED','ASGC','ClassicELB should not be exposed to internet',{d '2018-10-12'},{d '2018-12-10'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_ElbWithPublicAccess_version-1_ApplicationElbWithPublicAccess_appelb','aws_application_elb_should_not_be_publicly_accessible','PacMan_ElbWithPublicAccess_version-1','ApplicationElbWithPublicAccess','appelb','aws-all','ApplicationElbWithPublicAccess','{"params":[{"key":"ruleKey","value":"check-for-elb-public-access","encrypt":false},{"key":"internetGateWay","value":"igw","encrypt":false},{"key":"severity","value":"critical","encrypt":false},{"key":"ruleCategory","value":"security","encrypt":false},{"key":"cidrIp","value":"0.0.0.0/0","encrypt":false},{"key":"esElbWithSGUrl","value":"/aws/appelb_secgroups/_search","encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false},{"key":"defaultCidrIp","value":"10.0.0.0/8","isValueNew":true,"encrypt":false},{"key":"fixKey","value":"publicly-accessible-appelb","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_ElbWithPublicAccess_version-1_ApplicationElbWithPublicAccess_appelb","autofix":false,"alexaKeyword":"ApplicationElbWithPublicAccess","ruleRestUrl":"","targetType":"appelb","pac_ds":"aws","policyId":"PacMan_ElbWithPublicAccess_version-1","assetGroup":"aws-all","ruleUUID":"aws_application_elb_should_not_be_publicly_accessible","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_application_elb_should_not_be_publicly_accessible'),'ENABLED','ASGC','Application ELB should not be exposed to internet',{d '2018-10-11'},{d '2018-12-10'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_ElasticSearchPublicAccess_version-1_ElasticSearchPublicAccessRule_elasticsearch','aws_elasticsearch_endpoint_should_not_be_publicly_accessible','PacMan_ElasticSearchPublicAccess_version-1','ElasticSearchPublicAccessRule','elasticsearch','aws-all','ElasticSearchPublicAccessRule','{"params":[{"key":"ruleKey","value":"check-for-elastic-search-public-access","encrypt":false},{"key":"severity","value":"critical","encrypt":false},{"key":"ruleCategory","value":"security","encrypt":false},{"key":"internetGateWay","value":"igw","isValueNew":true,"encrypt":false},{"key":"cidrIp","value":"0.0.0.0/0","isValueNew":true,"encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","isValueNew":true,"encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","isValueNew":true,"encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false},{"key":"defaultCidrIp","value":"10.0.0.0/8","isValueNew":true,"encrypt":false},{"key":"fixKey","value":"publicly-accessible-elasticsearch","isValueNew":true,"encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_ElasticSearchPublicAccess_version-1_ElasticSearchPublicAccessRule_elasticsearch","autofix":false,"alexaKeyword":"ElasticSearchPublicAccessRule","ruleRestUrl":"","targetType":"elasticsearch","pac_ds":"aws","policyId":"PacMan_ElasticSearchPublicAccess_version-1","assetGroup":"aws-all","ruleUUID":"aws_elasticsearch_endpoint_should_not_be_publicly_accessible","ruleType":"Manage Rule"}','0 0/6 * * ? *','','','Manage Rule',concat('arn:aws:events:',@region,':',@account,':rule/aws_elasticsearch_endpoint_should_not_be_publicly_accessible'),'ENABLED','ASGC','Elastic Search endpoint should not be open to internet',{d '2018-10-10'},{d '2018-12-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_EC2WithPublicIPAccess_version-1_Ec2WithPublicAccess_ec2','aws_ec2_should_not_be_publicly_accessible_with_any_port','PacMan_EC2WithPublicIPAccess_version-1','Ec2WithPublicAccess','ec2','aws','Ec2WithPublicAccess','{"params":[{"encrypt":"false","value":"igw","key":"internetGateWay"},{"encrypt":"false","value":"check-for-ec2-public-access","key":"ruleKey"},{"encrypt":false,"value":"critical","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"0.0.0.0/0","key":"cidrIp"},{"key":"esEc2SgURL","value":"/aws/ec2_secgroups/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","isValueNew":true,"encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","isValueNew":true,"encrypt":false},{"key":"esSubnetURL","value":"/aws_subnet/_search","isValueNew":true,"encrypt":false},{"key":"cidripv6","value":"::/0","isValueNew":true,"encrypt":false},{"key":"defaultCidrIp","value":"10.0.0.0/8","isValueNew":true,"encrypt":false},{"key":"fixKey","value":"ec2-global-access-fix","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_EC2WithPublicIPAccess_version-1_Ec2WithPublicAccess_ec2","autofix":false,"alexaKeyword":"Ec2WithPublicAccess","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_EC2WithPublicIPAccess_version-1","assetGroup":"aws","ruleUUID":"aws_ec2_should_not_be_publicly_accessible_with_any_port","ruleType":"ManageRule"}','0 0/2 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_should_not_be_publicly_accessible_with_any_port'),'ENABLED','ASGC','EC2 instances should not have any publicly accessible ports',{d '2017-08-18'},{d '2018-12-10'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_EC2WithPublicAccessSSHPort22_version-2_EC2WithPublicAccessForConfiguredPort22_ec2','aws_ec2_should_not_be_publicly_accessible_on_port22','PacMan_EC2WithPublicAccessSSHPort22_version-2','EC2WithPublicAccessForConfiguredPort22','ec2','aws','EC2WithPublicAccessForConfiguredPort22','{"params":[{"encrypt":false,"value":"igw","key":"internetGateWay"},{"encrypt":false,"value":"22","key":"portToCheck"},{"encrypt":false,"value":"check-for-ec2-with-public-access-for-configured-port","key":"ruleKey"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"critical","key":"severity"},{"encrypt":false,"value":"0.0.0.0/0","key":"cidrIp"},{"key":"esEc2SgURL","value":"/aws/ec2_secgroups/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","isValueNew":true,"encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","isValueNew":true,"encrypt":false},{"key":"esSubnetURL","value":"/aws_subnet/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_EC2WithPublicAccessSSHPort22_version-2_EC2WithPublicAccessForConfiguredPort22_ec2","autofix":false,"alexaKeyword":"EC2WithPublicAccessForConfiguredPort22","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_EC2WithPublicAccessSSHPort22_version-2","assetGroup":"aws","ruleUUID":"aws_ec2_should_not_be_publicly_accessible_on_port22","ruleType":"ManageRule"}','0 0/2 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_should_not_be_publicly_accessible_on_port22'),'ENABLED','ASGC','EC2 instances should not be publicly accessible on SSH port 22',{d '2017-08-23'},{d '2018-11-09'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_Ec2WithPublicAccessNonWebPorts80_version-1_Ec2WithPublicAccessNonWebPort80_ec2','aws_ec2_should_not_be_publicly_accessible_on_port80','PacMan_Ec2WithPublicAccessNonWebPorts80_version-1','Ec2WithPublicAccessNonWebPort80','ec2','aws','Ec2WithPublicAccessNonWebPort80','{"params":[{"encrypt":"false","value":"igw","key":"internetGateWay"},{"encrypt":"false","value":"80","key":"portToCheck"},{"encrypt":"false","value":"check-for-ec2-with-public-access-for-configured-port","key":"ruleKey"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"0.0.0.0/0","key":"cidrIp"},{"key":"esEc2SgURL","value":"/aws/ec2_secgroups/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableAssociationsURL","value":"/aws_routetable/routetable_associations/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableRoutesURL","value":"/aws_routetable/routetable_routes/_search","isValueNew":true,"encrypt":false},{"key":"esRoutetableURL","value":"/aws_routetable/routetable/_search","isValueNew":true,"encrypt":false},{"key":"esSgRulesUrl","value":"/aws_sg/sg_rules/_search","isValueNew":true,"encrypt":false},{"key":"esSubnetURL","value":"/aws_subnet/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_Ec2WithPublicAccessNonWebPorts80_version-1_Ec2WithPublicAccessNonWebPort80_ec2","autofix":false,"alexaKeyword":"Ec2WithPublicAccessNonWebPort80","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_Ec2WithPublicAccessNonWebPorts80_version-1","assetGroup":"aws","ruleUUID":"aws_ec2_should_not_be_publicly_accessible_on_port80","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_should_not_be_publicly_accessible_on_port80'),'ENABLED','ASGC','EC2 instances should not be publicly accessible on port 80 ',{d '2017-09-06'},{d '2018-09-28'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_Ec2StoppedInstanceForLong_version-1_Ec2StoppedInstanceForLong_ec2','aws_ec2_should_not_be_stopped_state_for_too_long','PacMan_Ec2StoppedInstanceForLong_version-1','Ec2StoppedInstanceForLong','ec2','aws','Ec2StoppedInstanceForLong','{"params":[{"encrypt":"false","value":"role/pac_ro","key":"roleIdentifyingString"},{"encrypt":"false","value":"true","key":"threadsafe"},{"encrypt":"false","value":"check-for-stopped-instance-for-long","key":"ruleKey"},{"encrypt":false,"value":"90","key":"targetstoppedDuration"},{"encrypt":false,"value":"governance","key":"ruleCategory"},{"encrypt":false,"value":"low","key":"severity"}],"environmentVariables":[{"encrypt":false,"value":"123","key":"abc"}],"ruleId":"PacMan_Ec2StoppedInstanceForLong_version-1_Ec2StoppedInstanceForLong_ec2","autofix":false,"alexaKeyword":"Ec2StoppedInstanceForLong","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_Ec2StoppedInstanceForLong_version-1","assetGroup":"aws","ruleUUID":"aws_ec2_should_not_be_stopped_state_for_too_long","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_should_not_be_stopped_state_for_too_long'),'ENABLED','ASGC','EC2 instances should not be in stopped state for more than 60 days',{d '2017-08-29'},{d '2018-11-12'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_ec2deperecatedinstancetype_version-1_ec2deprecatedinstancetype_ec2','aws_ec2_instances_should_not_use_deprecates_instance_types','PacMan_ec2deperecatedinstancetype_version-1','ec2deprecatedinstancetype','ec2','aws','ec2deprecatedinstancetype','{"params":[{"encrypt":false,"value":"role/pac_ro","key":"roleIdentifyingString"},{"encrypt":false,"value":"m1,m2,t1,c1,c2","key":"deprecatedInstanceType"},{"encrypt":false,"value":"true","key":"threadsafe"},{"encrypt":false,"value":"check-for-deprecated-instance-type","key":"ruleKey"},{"encrypt":false,"value":",","key":"splitterChar"},{"encrypt":false,"value":"medium","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"governance","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_ec2deperecatedinstancetype_version-1_ec2deprecatedinstancetype_ec2","autofix":false,"alexaKeyword":"ec2deprecatedinstancetype","ruleRestUrl":"","targetType":"ec2","pac_ds":"aws","policyId":"PacMan_ec2deperecatedinstancetype_version-1","assetGroup":"aws","ruleUUID":"aws_ec2_instances_should_not_use_deprecates_instance_types","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_instances_should_not_use_deprecates_instance_types'),'ENABLED','ASGC','Deprecated EC2 instances types should not be used to launch instances',{d '2017-08-11'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_EbsSnapShot_version-1_EbsSnapShot_snapshot','aws_ec2_instances_should_not_use_deprecates_instance_types','PacMan_EbsSnapShot_version-1','EbsSnapShot','snapshot','aws','EbsSnapShot','{"params":[{"encrypt":false,"value":"check-for-ebs-snapshot-with-public-access","key":"ruleKey"},{"encrypt":false,"value":"critical","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"ePs02jT06w","key":"checkId"},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_EbsSnapShot_version-1_EbsSnapShot_snapshot","autofix":false,"alexaKeyword":"EbsSnapShot","ruleRestUrl":"","targetType":"snapshot","pac_ds":"aws","policyId":"PacMan_EbsSnapShot_version-1","assetGroup":"aws","ruleUUID":"aws_ec2_instances_should_not_use_deprecates_instance_types","ruleType":"ManageRule"}','0 0/23 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_ec2_instances_should_not_use_deprecates_instance_types'),'ENABLED','ASGC','EBS snapshots should not be publicly accessible',{d '2017-08-16'},{d '2018-09-19'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_CheckInactiveIamUser_version-1_CheckInactiveIamUser_iamuser','aws_iam_users_should_not_be_inactive_for_than_target_period','PacMan_CheckInactiveIamUser_version-1','CheckInactiveIamUser','iamuser','aws-all','CheckInactiveIamUser','{"assetGroup":"aws-all","policyId":"PacMan_CheckInactiveIamUser_version-1","environmentVariables":[],"ruleUUID":"aws_iam_users_should_not_be_inactive_for_than_target_period","ruleType":"ManageRule","pac_ds":"aws","targetType":"iamuser","params":[{"encrypt":false,"value":"90","key":"pwdInactiveDuration"},{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"},{"encrypt":false,"value":"check-for-inactive-iam-users","key":"ruleKey"},{"encrypt":false,"value":"true","key":"threadsafe"}],"ruleId":"PacMan_CheckInactiveIamUser_version-1_CheckInactiveIamUser_iamuser","autofix":false,"alexaKeyword":"CheckInactiveIamUser","ruleRestUrl":""}','0 0/6 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_iam_users_should_not_be_inactive_for_than_target_period'),'ENABLED','710383','IAM users should not be inactive for more than 90 days',{d '2018-02-13'},{d '2018-02-13'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_CheckGuardDutyIsEnabledForAllAccount_version-1_CheckGuardDutyIsEnabledForAllAccount_account','aws_guardduty_should_be_enabled','PacMan_CheckGuardDutyIsEnabledForAllAccount_version-1','CheckGuardDutyIsEnabledForAllAccount','account','aws-all','CheckGuardDutyIsEnabledForAllAccount','{"params":[{"encrypt":false,"value":"check-guard-duty-enabled-for-all-accounts","key":"ruleKey"},{"encrypt":false,"value":"role/pac_ro","key":"roleIdentifyingString"},{"encrypt":false,"value":"high","key":"severity"},{"encrypt":false,"value":"security","key":"ruleCategory"}],"environmentVariables":[],"ruleId":"PacMan_CheckGuardDutyIsEnabledForAllAccount_version-1_CheckGuardDutyIsEnabledForAllAccount_account","autofix":false,"alexaKeyword":"CheckGuardDutyIsEnabledForAllAccount","ruleRestUrl":"","targetType":"account","pac_ds":"aws","policyId":"PacMan_CheckGuardDutyIsEnabledForAllAccount_version-1","assetGroup":"aws-all","ruleUUID":"aws_guardduty_should_be_enabled","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_guardduty_should_be_enabled'),'ENABLED','ASGC','AWS Guard Duty service should be enabled on all regions of all AWS accounts',{d '2018-01-19'},{d '2018-08-31'},null,null);
INSERT INTO cf_RuleInstance (ruleId,ruleUUID,policyId,ruleName,targetType,assetGroup,alexaKeyword,ruleParams,ruleFrequency,ruleExecutable,ruleRestUrl,ruleType,ruleArn,status,userId,displayName,createdDate,modifiedDate,severity,category) VALUES ('PacMan_AmazonRDSIdleDBInstancesRule_version-1_AmazonRDSIdleDBInstancesRule_rdsdb','aws_rds_instances_should_not_tbe_idle_state','PacMan_AmazonRDSIdleDBInstancesRule_version-1','AmazonRDSIdleDBInstancesRule','rdsdb','aws-all','AmazonRDSIdleDBInstancesRule','{"params":[{"encrypt":false,"value":"Ti39halfu8","key":"checkId"},{"encrypt":false,"value":"check-for-amazon-RDS-idle-DB-instances","key":"ruleKey"},{"encrypt":false,"value":"low","key":"severity"},{"isValueNew":true,"encrypt":false,"value":"costOptimization","key":"ruleCategory"},{"key":"esServiceURL","value":"/aws_checks/checks_resources/_search","isValueNew":true,"encrypt":false}],"environmentVariables":[],"ruleId":"PacMan_AmazonRDSIdleDBInstancesRule_version-1_AmazonRDSIdleDBInstancesRule_rdsdb","autofix":false,"alexaKeyword":"AmazonRDSIdleDBInstancesRule","ruleRestUrl":"","targetType":"rdsdb","pac_ds":"aws","policyId":"PacMan_AmazonRDSIdleDBInstancesRule_version-1","assetGroup":"aws-all","ruleUUID":"aws_rds_instances_should_not_tbe_idle_state","ruleType":"ManageRule"}','0 0/12 * * ? *','','','ManageRule',concat('arn:aws:events:',@region,':',@account,':rule/aws_rds_instances_should_not_tbe_idle_state'),'ENABLED','ASGC','Amazon RDS DB instances should not be idle',{d '2018-03-15'},{d '2018-09-19'},null,null);

/* Omni Seach Configuration */

INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','All','accountname,region,tags.Application,tags.Environment,tags.Stack,tags.Role','_resourceid,searchcategory,tags[],accountname,_entitytype');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','api','','region,name');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','appelb','scheme,vpcid,type','region,scheme,vpcid,type');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','asg','healthchecktype','region,healthchecktype');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','asgpolicy','policytype,adjustmenttype','region,autoscalinggroupname,policytype');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','cert','','');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','checks','','');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','classicelb','scheme,vpcid','region,scheme,vpcid');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','cloudfront','status,enabled,priceclass,httpversion,ipv6enabled','domainname,status,httpversion,aliases');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','corpdomain','','');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','dynamodb','tablestatus','region,tablestatus');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','ec2 ','availabilityzone,statename,instancetype,imageid,platform,subnetid','availabilityzone,privateipaddress,statename,instancetype');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','efs','performancemode,lifecyclestate','region,performancemode,lifecyclestate');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','elasticip','','networkinterfaceid,privateipaddress,region');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','emr','instancecollectiontype,releaselabel','region,instancecollectiontype,releaselabel');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','eni','status,sourcedestcheck,vpcid,subnetid','region,privateipaddress,status,vpcid,subnetid');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','iamrole','','description');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','iamuser','passwordresetrequired,mfaenabled','');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','internetgateway','','region');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','kms','keystate,keyenabled,keyusage,rotationstatus','region,keystate');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','lambda','memorysize,runtime,timeout','region,runtime');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','launchconfig','instancetype,ebsoptimized,instancemonitoringenabled','instancetype,region');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','nat','vpcid,subnetid,state','region,vpcid,subnetid,state');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','networkacl','vpcid,isdefault','vpcid,region');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','onpremserver','os,used_for,u_business_service,location,company,firewall_status,u_patching_director,install_staus','ip_address,os,os_version,comapny');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','phd','','');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','rdscluster','multiaz,engine,engineversion','region,engine,engineversion');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','rdsdb','dbinstanceclass,dbinstancestatus,engine,engineversion,licensemodel,multiaz,publiclyaccessible','region,engine,engineversion');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','rdssnapshot','snapshottype,encrypted,engine,engineversion,storagetype','vpcid,availabilityzone,engine,engineversion');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','redshift','nodetype,publiclyaccessible','region,nodetype,vpcid');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','routetable','vpcid','vpcid,region');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','s3','versionstatus','region,creationdate,versionstatus');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','sg','vpcid','region,vpcid');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','snapshot','encrypted,state','region,volumeid,state');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','stack','disablerollback,status','region,status');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','subnet','vpcid,availabilityzone,defaultforaz,state','availabilityzone,cidrblock,state');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','targetgroup','','region,vpcid,protocol,port');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','volume','volumetype,availabilityzone,encrypted,state','volumetype,availabilityzone,state');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','vpc','','region,cidrblock,state');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','vpngateway','state,type','region,state,type');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','elasticache','engine,nodetype,engineversion','region,engine');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Assets','wafdomain','','');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Policy Violations','All','severity,policyId','_id,issueid,resourceid,severity,_entitytype,_resourceid');
INSERT INTO OmniSearch_Config (SEARCH_CATEGORY,RESOURCE_TYPE,REFINE_BY_FIELDS,RETURN_FIELDS) VALUES ('Vulnerabilities','All','severity,category,vulntype','qid,vulntype,category,_entitytype,_resourceid');


/* RUle Category Weightage */
INSERT INTO pac_v2_ruleCategory_weightage (ruleCategory,domain,weightage) VALUES ('costOptimization','Infra & Platforms',20);
INSERT INTO pac_v2_ruleCategory_weightage (ruleCategory,domain,weightage) VALUES ('governance','Infra & Platforms',20);
INSERT INTO pac_v2_ruleCategory_weightage (ruleCategory,domain,weightage) VALUES ('security','Infra & Platforms',50);
INSERT INTO pac_v2_ruleCategory_weightage (ruleCategory,domain,weightage) VALUES ('tagging','Infra & Platforms',10);


/* UI FIlter */

INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (1,'Issue');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (2,'vulnerbility');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (3,'asset');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (4,'compliance');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (5,'tagging');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (6,'certificates');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (7,'patching');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (8,'AssetListing');
INSERT INTO pac_v2_ui_filters (filterId,filterName) VALUES (9,'digitaldev');

/* UI Filter Options */

INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (1,1,'Policy','policyId.keyword','/compliance/v1/filters/policies?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (2,1,'Rule','ruleId.keyword','/compliance/v1/filters/rules?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (3,1,'Region','region.keyword','/compliance/v1/filters/regions?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (4,1,'AccountName','accountid.keyword','/compliance/v1/filters/accounts?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (5,1,'Application','tags.Application.keyword','/compliance/v1/filters/application?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (6,1,'Environment','tags.Environment.keyword','/compliance/v1/filters/environment?ag=aws&application=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (7,2,'Application','tags.Application.keyword','/compliance/v1/filters/application?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (8,2,'Environment','tags.Environment.keyword','/compliance/v1/filters/environment?ag=aws&application=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (9,3,'Application','tags.Application.keyword','/compliance/v1/filters/application?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (12,4,'Resource Type','targetType.keyword','/compliance/v1/filters/targettype?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (13,8,'Application ','application ','/compliance/v1/filters/application?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (14,8,'Environment  ','environment ','/compliance/v1/filters/environment?ag=aws&application=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (15,8,'Resource Type','resourceType ','/compliance/v1/filters/targettype?ag=aws');
INSERT INTO pac_v2_ui_options (optionId,filterId,optionName,optionValue,optionURL) VALUES (16,9,'Application','tags.Application.keyword','/compliance/v1/filters/application?ag=aws');

/* UI Widgets */
INSERT INTO pac_v2_ui_widgets (widgetId,pageName,widgetName) VALUES (1,'Tagging','TaggingSummary');
INSERT INTO pac_v2_ui_widgets (widgetId,pageName,widgetName) VALUES (2,'Tagging','Total Tag Compliance');
INSERT INTO pac_v2_ui_widgets (widgetId,pageName,widgetName) VALUES (3,'Tagging','Tagging Compliance Trend');
INSERT INTO pac_v2_ui_widgets (widgetId,pageName,widgetName) VALUES (4,'ComplianceOverview','OverallCompliance,tagging,patching,vulnerabilites');

/* UI Widgets faqs */
INSERT INTO pac_v2_ui_widget_faqs (faqId,widgetId,widgetName,faqName,faqAnswer) VALUES (1,1,'Tagging Summary','How overall Compliance% calculated ?','Total assets which has Application and Environment tag devided by total taggable Assets.');
INSERT INTO pac_v2_ui_widget_faqs (faqId,widgetId,widgetName,faqName,faqAnswer) VALUES (2,1,'Tagging Summary','How an AssetGroup Un-tagged count calculted ?','Total assets which is missing application,Environment tag.');
INSERT INTO pac_v2_ui_widget_faqs (faqId,widgetId,widgetName,faqName,faqAnswer) VALUES (3,4,'OverallCompliance,tagging,patching,vulnerabilites','How overall % calculated ?','It''s average of patching,certificates,tagging,vulnerbilites and other policies percentage');
INSERT INTO pac_v2_ui_widget_faqs (faqId,widgetId,widgetName,faqName,faqAnswer) VALUES (7,4,'OverallCompliance,tagging,patching,vulnerabilites','How patching % calculated ?','total patched running ec2 instances /total running ec2 instances');
INSERT INTO pac_v2_ui_widget_faqs (faqId,widgetId,widgetName,faqName,faqAnswer) VALUES (8,4,'OverallCompliance,tagging,patching,vulnerabilites','How tagging % calculated ?','total tagged assets /total assets');
INSERT INTO pac_v2_ui_widget_faqs (faqId,widgetId,widgetName,faqName,faqAnswer) VALUES (9,4,'OverallCompliance,tagging,patching,vulnerabilites','How vulnerabilities % calculated ?','total vulnerable ec2 assets/total ec2 assets.  ');
INSERT INTO pac_v2_ui_widget_faqs (faqId,widgetId,widgetName,faqName,faqAnswer) VALUES (10,4,'OverallCompliance,tagging,patching,vulnerabilites','How other policies % calculated',null);


INSERT INTO pac_v2_ui_download_filters (serviceId,serviceName,serviceEndpoint) VALUES
 (1,'Violations','/api/compliance/v1/issues'),
 (2,'NonComplaincePolicies','/api/compliance/v1/noncompliancepolicy'),
 (3,'PatchingDetails','/api/compliance/v1/patching/detail'),
 (4,'TaggingDetailsByApplication','/api/compliance/v1/tagging/summarybyapplication'),
 (5,'CertificateDetails','/api/compliance/v1/certificates/detail'),
 (6,'VulnerabilitiesDetails','/api/compliance/v1/vulnerabilities/detail'),
 (7,'Assets','/api/asset/v1//list/assets'),
 (8,'PatchableAssets','/api/asset/v1/list/assets/patchable'),
 (9,'ScannedAssets','/api/asset/v1/list/assets/scanned'),
 (10,'TaggableAssets','/api/asset/v1/list/assets/taggable'),
 (11,'VulnerableAssets','/api/asset/v1/list/assets/vulnerable'),
 (12,'PullRequestAssetsByState','/api/devstandards/v1/pullrequests/asset/bystates'),
 (13,'PullRequestAsstesByAge','/api/devstandards/v1/pullrequests/assets/openstate'),
 (14,'ApplicationOrRepositoryDistribution','/api/devstandards/v1/repositories/assets/repositoryorapplicationdistribution');


INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('application','root');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('batch','application');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('api','application');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('compliance-service','api');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('asset-service','api');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('notification-service','api');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('statistics-service','api');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('auth-service','api');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('dev-standards-service','api');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('admin-service','api');
INSERT INTO pac_config_relation (`application`,`parent`) VALUES ('magenta-skill','api');
INSERT INTO pac_config_relation (application,parent) VALUES ('data-shipper','batch');
INSERT INTO pac_config_relation (application,parent) VALUES ('inventory','batch');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('admin.api-role','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('admin.push.notification.pollinterval.milliseconds','description');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[0].name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[0].url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[0].version','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[1].name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[1].url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[1].version','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[2].name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[2].url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[2].version','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[3].name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[3].url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[3].version','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[4].name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[4].url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[4].version','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[5].name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[5].url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[5].version','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[6].name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[6].url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('api.services[6].version','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('application.cors.allowed.domains','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('auth.active','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('aws.access-key','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('aws.secret-key','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.activedirectory.client-id','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.activedirectory.client-secret','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.activedirectory.scope','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.activedirectory.scopeDesc','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.activedirectory.state','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.activedirectory.tenant-id','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.authorizeEndpoint','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.id-token.claims.email','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.id-token.claims.first-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.id-token.claims.last-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.id-token.claims.user-id','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.id-token.claims.user-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.issuer','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('azure.public-key','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('base.account','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('branch.maxBranchAge','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('cloudinsights.corp-password','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('cloudinsights.corp-user-id','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('cloudinsights.costurl','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('cloudinsights.tokenurl','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('cron.frequency.weekly-report-sync-trigger','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('date.format','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('days-range.age','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('discovery.role','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.admin-host','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.clusterName','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.clusterName-heimdall','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.dev-ingest-host','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.dev-ingest-port','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.host','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.host-heimdall','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.port','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.port-admin','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.port-admin-heimdall','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.port-heimdall','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.update-clusterName','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.update-host','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('elastic-search.update-port','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('endpoints.refresh.sensitive','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('features.certificate.enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('features.patching.enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('features.vulnerability.enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('formats.date','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('hystrix.command.default.execution.isolation.thread.timeoutInMilliseconds','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('hystrix.shareSecurityContext','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('job.lambda.action-disabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('job.lambda.action-enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('job.lambda.function-arn','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('job.lambda.function-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('job.lambda.principal','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('job.lambda.target-id','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('job.s3.bucket-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.ad.domain','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.ad.provider-url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.ad.search-base','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.baseDn','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.connectionTimeout','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.domain','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.hostList','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.naming.authentication','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.naming.context-factory','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.nt.domain','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.nt.provider-url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.nt.search-base','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.port','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('ldap.responseTimeout','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('logging.config','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('logging.consoleLoggingLevel','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('logging.esHost','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('logging.esLoggingLevel','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('logging.esPort','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('magenta.cache.name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('magenta.default-background','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('magenta.error-background','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('magenta.goodbye-background','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('magenta.goodbye-greeting','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('magenta.welcome-background','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('magenta.welcome-greeting','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('management.endpoints.web.exposure.include','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('management.health.rabbit.enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('management.security.enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('monitoring.contextRootNames','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('pacman.api.oauth2.client-id','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('pacman.api.oauth2.client-secret','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('pacman.service-password','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('pacman.service-user','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('pacman.url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('projections.assetgroups','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('projections.targetTypes','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('redshift.password','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('redshift.url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('redshift.userName','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('remind.cron','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('remind.email.subject','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('remind.email.text','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule-engine.invoke.url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule.lambda.action-disabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule.lambda.action-enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule.lambda.function-arn','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule.lambda.function-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule.lambda.principal','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule.lambda.target-id','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('rule.s3.bucket-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('security.basic.enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('security.oauth2.resource.user-info-uri','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('server.context-path','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('server.contextPath','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('server.servlet.context-path','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.dns.name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.url.admin','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.url.asset','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.url.auth','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.url.compliance','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.url.devstandards','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.url.pac_auth','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('service.url.statistics','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.boot.admin.client.instance.health-url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.boot.admin.client.instance.management-url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.boot.admin.client.instance.service-url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.boot.admin.client.password','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.boot.admin.client.url[0]','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.boot.admin.client.username','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.cache.cache-names','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.cache.caffeine.spec','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.cloud.bus.enabled','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.datasource.driver-class-name','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.datasource.password','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.datasource.url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.datasource.username','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.jpa.hibernate.naming.physical-strategy','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.mail.defaultEncoding','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.mail.host','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.mail.port','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.mail.protocol','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.sleuth.sampler.probability','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.zipkin.baseUrl','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('spring.zipkin.sender.type','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('swagger.auth.whitelist','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('tagging.mandatoryTags','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('target-types.categories','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('template.digest-mail.url','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('time.zone','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('vulnerability.summary.severity','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('vulnerability.types','Description PlaceHolder');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('s3.role','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('s3.region','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('s3.processed','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('s3.data','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('s3','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('region.ignore','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('file.path','');
INSERT INTO pac_config_key_metadata (`cfkey`,`description`) VALUES ('base.region','');

INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('logging.config','classpath:spring-logback.xml','application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('logging.esLoggingLevel','WARN','application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('logging.consoleLoggingLevel','INFO','application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('logging.esHost',concat(@LOGGING_ES_HOST_NAME,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('logging.esPort',concat(@LOGGING_ES_PORT,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.host',concat(@ES_HOST_NAME,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.port',concat(@ES_PORT,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.clusterName',concat(@ES_CLUSTER_NAME,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.port-admin',concat(@ES_PORT_ADMIN,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.host-heimdall',concat(@ES_HEIMDALL_HOST_NAME,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.port-heimdall',concat(@ES_HEIMDALL_PORT,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.clusterName-heimdall',concat(@ES_HEIMDALL_CLUSTER_NAME,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.port-admin-heimdall',concat(@ES_HEIMDALL_PORT_ADMIN,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.update-host',concat(@ES_UPDATE_HOST,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.update-port',concat(@ES_UPDATE_PORT,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.update-clusterName',concat(@ES_UPDATE_CLUSTER_NAME,''),'application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('formats.date','yyyy-MM-dd\'T\'HH:mm:ss.SSSZ','application','prd','latest',NULL,NULL,NULL,NULL);



INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('ldap.naming.context-factory','com.sun.jndi.ldap.LdapCtxFactory','application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('ldap.naming.authentication','simple','application','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('service.dns.name',concat(@PACMAN_HOST_NAME,''),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('service.url.compliance',concat(@PACMAN_HOST_NAME,'/api/compliance'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('service.url.asset',concat(@PACMAN_HOST_NAME,'/api/asset'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('service.url.statistics',concat(@PACMAN_HOST_NAME,'/api/statistics'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('service.url.devstandards',concat(@PACMAN_HOST_NAME,'/api/devstandards'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('service.url.auth',concat(@PACMAN_HOST_NAME,'/api/auth'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('service.url.admin',concat(@PACMAN_HOST_NAME,'/api/admin'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('endpoints.refresh.sensitive','false','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('hystrix.command.default.execution.isolation.thread.timeoutInMilliseconds','100000','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('application.cors.allowed.domains','all','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('monitoring.contextRootNames','asset,compliance,statistics,devstandards,auth,admin','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('auth.active','db','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.cache.cache-names','trends,compliance,assets,trendsvuln','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.cache.caffeine.spec','maximumSize=500, expireAfterWrite=6h','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.datasource.url',concat(@RDS_URL,''),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.datasource.username',concat(@RDS_USERNAME,''),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.datasource.password',concat(@RDS_PASSWORD,''),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.datasource.driver-class-name','com.mysql.jdbc.Driver','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.cloud.bus.enabled','false','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[0].name','Admin Service','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[0].url',concat(@PACMAN_HOST_NAME,'/api/admin/v2/api-docs'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[0].version','2','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[1].name','Auth Service','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[1].url',concat(@PACMAN_HOST_NAME,'/api/auth/v2/api-docs'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[1].version','2','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[2].name','Asset Service','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[2].url',concat(@PACMAN_HOST_NAME,'/api/asset/v2/api-docs'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[2].version','2','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[3].name','Notification Service','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[3].url',concat(@PACMAN_HOST_NAME,'/api/notifications/v2/api-docs'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[3].version','2','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[4].name','Compliance Service','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[4].url',concat(@PACMAN_HOST_NAME,'/api/compliance/v2/api-docs'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[4].version','2','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[5].name','Statistics Service','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[5].url',concat(@PACMAN_HOST_NAME,'/api/statistics/v2/api-docs'),'api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('api.services[5].version','2','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('tagging.mandatoryTags','Application,Environment','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('vulnerability.types','ec2,onpremserver','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('vulnerability.summary.severity','5','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('swagger.auth.whitelist','/configuration/security,/swagger-ui.html,/api.html,/webjars/**,/user,/public/**,/api.html,/css/styles.js,/js/swagger.js,/js/swagger-ui.js,/js/swagger-oauth.js,/images/pacman_logo.svg,/images/favicon-32x32.png,/images/favicon-16x16.png,/images/favicon.ico,/docs/v1/api.html,/v2/api-docs/**,/v2/swagger.json,/webjars/springfox-swagger-ui/css/**,/webjars/springfox-swagger-ui/js/**,/configuration/ui,/swagger-resources/**,/configuration/**,/imgs/**,/css/**,/css/font/**,/proxy*/**,/hystrix/monitor/**,/hystrix/**/images/pacman_logo.svg,/images/favicon-32x32.png,/images/favicon-16x16.png,/images/favicon.ico,/docs/v1/api.html,/v2/api-docs/**,/v2/swagger.json,/webjars/springfox-swagger-ui/css/**,/webjars/springfox-swagger-ui/js/**,/configuration/ui,/swagger-resources/**,/configuration/**,/imgs/**,/css/**,/css/font/**,/proxy*/**,/hystrix/monitor/**,/hystrix/**,/refresh','api','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('server.servlet.context-path','/api/admin','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('aws.access-key','','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('aws.secret-key','','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('admin.api-role','ROLE_ADMIN2, ROLE_ADMIN','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.s3.bucket-region',concat(@JOB_BUCKET_REGION,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.s3.bucket-name',concat(@RULE_JOB_BUCKET_NAME,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.lambda.region',concat(@JOB_LAMBDA_REGION,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.lambda.target-id','jobTargetId','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.lambda.function-name',concat(@JOB_FUNCTION_NAME,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.lambda.function-arn',concat(@JOB_FUNCTION_ARN,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.lambda.principal','events.amazonaws.com','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.lambda.action-enabled','lambda:InvokeFunction','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('job.lambda.action-disabled','lambda:DisableInvokeFunction','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.s3.bucket-region',concat(@RULE_BUCKET_REGION,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.s3.bucket-name',concat(@RULE_JOB_BUCKET_NAME,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.lambda.region',concat(@RULE_LAMBDA_REGION,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.lambda.target-id','ruleTargetId','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.lambda.function-name',concat(@RULE_FUNCTION_NAME,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.lambda.function-arn',concat(@RULE_FUNCTION_ARN,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.lambda.principal','events.amazonaws.com','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.lambda.action-enabled','lambda:InvokeFunction','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule.lambda.action-disabled','lambda:DisableInvokeFunction','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('management.security.enabled','false','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('security.basic.enabled','false','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('security.oauth2.client.user-authorization-uri',concat(@PACMAN_HOST_NAME,'/api/auth/oauth/authorize'),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.dev-ingest-host',concat(@ES_UPDATE_HOST,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.dev-ingest-port',concat(@ES_UPDATE_PORT,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.port',concat(@ES_UPDATE_PORT,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('elastic-search.host',concat(@ES_UPDATE_HOST,''),'admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('target-types.categories','Compute,Developer Tools,Analytics,Application Services,Storage,Management Tools,Messaging,Artificial Intelligence,Database,Business Productivity,Security,Identity & Compliance,Networking & Content Delivery,Contact Center,Internet Of Things,Desktop & App Streaming,Desktop & App Streaming,Migration,Mobile Services,Game Development,Contact Center,Application Integration','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('pacman.api.oauth2.client-id','22e14922-87d7-4ee4-a470-da0bb10d45d3','admin-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('server.servlet.context-path','/api/asset','asset-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('cloudinsights.tokenurl',concat(@CLOUD_INSIGHTS_TOKEN_URL,''),'asset-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('cloudinsights.costurl',concat(@CLOUD_INSIGHTS_COST_URL,''),'asset-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('cloudinsights.corp-user-id',concat(@SVC_CORP_USER_ID,''),'asset-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('cloudinsights.corp-password',concat(@SVC_CORP_PASSWORD,''),'asset-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('server.servlet.context-path','/api/auth','auth-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('pacman.api.oauth2.client-id','22e14922-87d7-4ee4-a470-da0bb10d45d3','auth-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('pacman.api.oauth2.client-secret','csrWpc5p7JFF4vEZBkwGCAh67kGQGwXv46qug7v5ZwtKg','auth-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('server.servlet.context-path','/api/compliance','compliance-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('rule-engine.invoke.url','submitRuleExecutionJob','compliance-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('projections.assetgroups','cloud-vm,onprem-vm,all-vm','compliance-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('projections.targetTypes','onpremserver,ec2','compliance-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('features.certificate.enabled',concat(@CERTIFICATE_FEATURE_ENABLED,''),'compliance-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('features.patching.enabled',concat(@PATCHING_FEATURE_ENABLED,''),'compliance-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties(`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('features.vulnerability.enabled',concat(@VULNERABILITY_FEATURE_ENABLED,''),'compliance-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('server.servlet.context-path','/api/notifications','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('remind.cron','0 0 0 * * *','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('remind.email.text','Hey, {0}! We\'ve missed you here on Pacman. It\'s time to check your compliance, Pacman team','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('remind.email.subject','Pacman reminder','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('backup.cron','0 0 12 * * *','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('backup.email.text','Howdy, {0}. Your account backup is ready.\r\n\r\nCheers,\r\nPiggyMetrics team','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('backup.email.subject','PiggyMetrics account backup','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('backup.email.attachment','backup.json','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.freemarker.suffix','.html','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.mail.host',concat(@MAIL_SERVER,''),'notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.mail.port','25','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.mail.protocol','smtp','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('spring.mail.defaultEncoding','UTF-8','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('cron.frequency.weekly-report-sync-trigger','0 0 9 ? * MON *','notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('template.digest-mail.url',concat('https://s3.amazonaws.com/',@PACMAN_S3,'/index.html'),'notification-service','prd','latest',NULL,NULL,NULL,NULL);
INSERT INTO pac_config_properties (`cfkey`,`value`,`application`,`profile`,`label`,`createdBy`,`createdDate`,`modifiedBy`,`modifiedDate`) VALUES ('server.servlet.context-path','/api/statistics','statistics-service','prd','latest',NULL,NULL,NULL,NULL);

INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('region.ignore','us-gov-west-1,cn-north-1,cn-northwest-1','inventory','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('file.path','/home/ec2-user/data','inventory','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('spring.datasource.url',concat(@RDS_URL,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('spring.datasource.username',concat(@RDS_USERNAME,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('spring.datasource.password',concat(@RDS_PASSWORD,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('s3.data',concat(@DATA_IN_DIR,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('s3.processed',concat(@DATA_BKP_DIR,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('s3.role',concat(@PAC_ROLE,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('s3.region',concat(@BASE_REGION,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('s3',concat(@DATA_IN_S3,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('base.account',concat(@BASE_ACCOUNT,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('base.region',concat(@BASE_REGION,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('discovery.role',concat(@PAC_RO_ROLE,''),'inventory','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('elastic-search.host',concat(@ES_HOST_NAME,''),'batch','prd','latest',null,null,null,null);
INSERT INTO pac_config_properties (cfkey,value,application,profile,label,createdBy,createdDate,modifiedBy,modifiedDate) VALUES ('elastic-search.port',concat(@ES_PORT,''),'batch','prd','latest',null,null,null,null);

