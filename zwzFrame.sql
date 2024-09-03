-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.38 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 zwzframe 的数据库结构
DROP DATABASE IF EXISTS `zwzframe`;
CREATE DATABASE IF NOT EXISTS `zwzframe` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `zwzframe`;

-- 导出  表 zwzframe.a_department 结构
DROP TABLE IF EXISTS `a_department`;
CREATE TABLE IF NOT EXISTS `a_department` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_department 的数据：~3 rows (大约)
DELETE FROM `a_department`;
INSERT INTO `a_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `parent_id`, `sort_order`, `status`, `title`, `is_parent`) VALUES
	('1464487288363945985', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '0', 1.00, 0, '部门A', b'0'),
	('1464487332064399361', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '0', 2.00, 0, '部门B', b'0'),
	('1464487379074158593', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '0', 3.00, 0, '部门C', b'0');

-- 导出  表 zwzframe.a_department_header 结构
DROP TABLE IF EXISTS `a_department_header`;
CREATE TABLE IF NOT EXISTS `a_department_header` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_department_header 的数据：~0 rows (大约)
DELETE FROM `a_department_header`;

-- 导出  表 zwzframe.a_dict 结构
DROP TABLE IF EXISTS `a_dict`;
CREATE TABLE IF NOT EXISTS `a_dict` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_dict 的数据：~4 rows (大约)
DELETE FROM `a_dict`;
INSERT INTO `a_dict` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `title`, `type`, `sort_order`) VALUES
	('1536612750841745408', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', '学历', 'education', 3.00),
	('1536613395229446144', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', '在职状态', 'occupationStatus', 4.00),
	('75135930788220928', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '性别', 'sex', 0.00),
	('75388696739713024', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '分权限', 'permission_type', 2.00);

-- 导出  表 zwzframe.a_dict_data 结构
DROP TABLE IF EXISTS `a_dict_data`;
CREATE TABLE IF NOT EXISTS `a_dict_data` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_dict_data 的数据：~20 rows (大约)
DELETE FROM `a_dict_data`;
INSERT INTO `a_dict_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `dict_id`, `sort_order`, `status`, `title`, `value`) VALUES
	('1536612796106674176', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', '1536612750841745408', 1.00, 0, '博士', '博士'),
	('1536612834962706432', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', '1536612750841745408', 2.00, 0, '硕士', '硕士'),
	('1536612883465637888', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '1536612750841745408', 3.00, 0, '本科', '本科'),
	('1536612930576060416', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '1536612750841745408', 4.00, 0, '专科', '专科'),
	('1536612993519980544', 'admin', '2024-09-03 09:46:20.000000', 0, '', '2024-09-03 09:46:20.000000', '', '1536612750841745408', 5.00, 0, '高中及以下', '高中及以下'),
	('1536613425902391296', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', '1536613395229446144', 1.00, 0, '在职', '在职'),
	('1536613447544999936', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', '1536613395229446144', 2.00, 0, '离职', '离职'),
	('75158227712479232', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75135930788220928', 0.00, 0, '男', '男'),
	('75159254272577536', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75135930788220928', 1.00, 0, '女', '女'),
	('75159898425397248', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75135930788220928', 2.00, -1, '保密', '保密'),
	('75390886501945344', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 1.00, 0, '添加操作(add)', 'add'),
	('75390993939042304', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 2.00, 0, '编辑操作(edit)', 'edit'),
	('75391067532300288', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 3.00, 0, '删除操作(delete)', 'delete'),
	('75391126902673408', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 4.00, 0, '清空操作(clear)', 'clear'),
	('75391192883269632', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 5.00, 0, '启用操作(enable)', 'enable'),
	('75391251024711680', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 6.00, 0, '禁用操作(disable)', 'disable'),
	('75391297124306944', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 7.00, 0, '搜索操作(search)', 'search'),
	('75391343379091456', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 8.00, 0, '上传文件(upload)', 'upload'),
	('75391407526776832', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 9.00, 0, '导出操作(output)', 'output'),
	('75391475042488320', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', '75388696739713024', 10.00, 0, '导入操作(input)', 'input');

-- 导出  表 zwzframe.a_file 结构
DROP TABLE IF EXISTS `a_file`;
CREATE TABLE IF NOT EXISTS `a_file` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_file 的数据：~5 rows (大约)
DELETE FROM `a_file`;
INSERT INTO `a_file` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `size`, `type`, `url`, `f_key`, `location`) VALUES
	('1663727083915972608', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '测试PDF.pdf', 369573, 'application/pdf', 'C:\\\\oa-file/20230531/a8ba652e01e44946a01c236533d25e7c.pdf', 'a8ba652e01e44946a01c236533d25e7c.pdf', 0);

-- 导出  表 zwzframe.a_log 结构
DROP TABLE IF EXISTS `a_log`;
CREATE TABLE IF NOT EXISTS `a_log` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `cost_time` int unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` text,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` int DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_log 的数据：~419 rows (大约)
DELETE FROM `a_log`;
INSERT INTO `a_log` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `cost_time`, `ip`, `ip_info`, `name`, `request_param`, `request_type`, `request_url`, `username`, `log_type`, `code`, `device`) VALUES
	('1830836482693271552', NULL, '2024-09-03 13:13:27.503000', 0, NULL, '2024-09-03 13:13:27.503000', 76, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"20","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', '管理员', 2, 'LOG-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836482693271553', NULL, '2024-09-03 13:13:27.490000', 0, NULL, '2024-09-03 13:13:27.490000', 64, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', '管理员', 2, 'LOG-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836492965122048', NULL, '2024-09-03 13:13:29.903000', 0, NULL, '2024-09-03 13:13:29.903000', 28, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836504159719428', NULL, '2024-09-03 13:13:32.573000', 0, NULL, '2024-09-03 13:13:32.573000', 36, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', '管理员', 2, 'ROLE-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836567934111744', NULL, '2024-09-03 13:13:47.822000', 0, NULL, '2024-09-03 13:13:47.822000', 85, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"1536606659751841795","permIds":""}', 'POST', '/zwz/role/editRolePerm', '管理员', 2, 'ROLE-04', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836569641193474', NULL, '2024-09-03 13:13:48.188000', 0, NULL, '2024-09-03 13:13:48.188000', 43, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', '管理员', 2, 'ROLE-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836569817354240', NULL, '2024-09-03 13:13:48.230000', 0, NULL, '2024-09-03 13:13:48.230000', 85, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836600247029760', NULL, '2024-09-03 13:13:55.510000', 0, NULL, '2024-09-03 13:13:55.510000', 64, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"1536606659751841799","permIds":"125909152017944576,1464484663442673664,5129710648430593,1663723467998105600,1663723511849553920,1663723538621796352,40238597734928384,1663724125664972800,1663724149731889152,1663724174398590976,5129710648430594,1663724230593875968,1663724255319298048,1663724279579152384,1663724334755221504,5129710648430595,1663724386382909440,1663724413914320896,1663724441433149440,56309618086776832,1663724628767543296,1663724665174102016,1663726175089987584,41363147411427328,1530689602321518592,1663724779984785408,1663724805096083456,1663724828114423808,1535166438371889152"}', 'POST', '/zwz/role/editRolePerm', '管理员', 2, 'ROLE-04', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836601874419725', NULL, '2024-09-03 13:13:55.869000', 0, NULL, '2024-09-03 13:13:55.869000', 30, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', '管理员', 2, 'ROLE-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836601970888704', NULL, '2024-09-03 13:13:55.891000', 0, NULL, '2024-09-03 13:13:55.891000', 53, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836611852668928', NULL, '2024-09-03 13:13:58.241000', 0, NULL, '2024-09-03 13:13:58.241000', 21, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836625165389824', NULL, '2024-09-03 13:14:01.417000', 0, NULL, '2024-09-03 13:14:01.417000', 35, '127.0.0.1', '本地测试', '删除菜单', '{"ids":"1536599942410407936,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560"}', 'POST', '/zwz/permission/delByIds', '管理员', 2, 'PERMISSION-05', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836626230743040', NULL, '2024-09-03 13:14:01.672000', 0, NULL, '2024-09-03 13:14:01.672000', 27, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836626629201920', NULL, '2024-09-03 13:14:01.769000', 0, NULL, '2024-09-03 13:14:01.769000', 25, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836626679533568', NULL, '2024-09-03 13:14:01.821000', 0, NULL, '2024-09-03 13:14:01.821000', 78, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', '管理员', 2, 'PERMISSION-04', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836648066289664', NULL, '2024-09-03 13:14:06.925000', 0, NULL, '2024-09-03 13:14:06.925000', 76, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836649337163776', NULL, '2024-09-03 13:14:07.185000', 0, NULL, '2024-09-03 13:14:07.185000', 25, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836649341358082', NULL, '2024-09-03 13:14:07.219000', 0, NULL, '2024-09-03 13:14:07.219000', 60, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836649345552387', NULL, '2024-09-03 13:14:07.224000', 0, NULL, '2024-09-03 13:14:07.224000', 66, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836649383301120', NULL, '2024-09-03 13:14:07.241000', 0, NULL, '2024-09-03 13:14:07.241000', 81, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836662935097362', NULL, '2024-09-03 13:14:10.429000', 0, NULL, '2024-09-03 13:14:10.429000', 34, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', '管理员', 2, 'ROLE-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836666764496896', NULL, '2024-09-03 13:14:11.340000', 0, NULL, '2024-09-03 13:14:11.340000', 28, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836667871793152', NULL, '2024-09-03 13:14:11.606000', 0, NULL, '2024-09-03 13:14:11.606000', 29, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', '管理员', 2, 'LOG-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836669813755904', NULL, '2024-09-03 13:14:12.068000', 0, NULL, '2024-09-03 13:14:12.068000', 28, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', '管理员', 2, 'DICT-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836671084630017', NULL, '2024-09-03 13:14:12.373000', 0, NULL, '2024-09-03 13:14:12.373000', 35, '127.0.0.1', '本地测试', '查询数据字典值', '{"name":"","status":"","pageNumber":"1","pageSize":"10","sort":"sortOrder","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', '管理员', 2, 'DICT_DATA-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836678739234816', NULL, '2024-09-03 13:14:14.227000', 0, NULL, '2024-09-03 13:14:14.227000', 59, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', '管理员', 2, 'SETTING-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836678739234817', NULL, '2024-09-03 13:14:14.232000', 0, NULL, '2024-09-03 13:14:14.232000', 62, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', '管理员', 2, 'SETTING-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836678739234818', NULL, '2024-09-03 13:14:14.197000', 0, NULL, '2024-09-03 13:14:14.197000', 29, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', '管理员', 2, 'SETTING-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836678760206336', NULL, '2024-09-03 13:14:14.223000', 0, NULL, '2024-09-03 13:14:14.223000', 53, '127.0.0.1', '本地测试', '查询系统文件', '{"name":"","fkey":"","type":"","pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc","startDate":"","endDate":""}', 'GET', '/zwz/file/getByCondition', '管理员', 2, 'FILE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836681264205827', NULL, '2024-09-03 13:14:14.795000', 0, NULL, '2024-09-03 13:14:14.795000', 31, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836682530885632', NULL, '2024-09-03 13:14:15.098000', 0, NULL, '2024-09-03 13:14:15.098000', 26, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836682530885633', NULL, '2024-09-03 13:14:15.100000', 0, NULL, '2024-09-03 13:14:15.100000', 27, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', '管理员', 2, 'USER-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836684216995845', NULL, '2024-09-03 13:14:15.503000', 0, NULL, '2024-09-03 13:14:15.503000', 26, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836684221190149', NULL, '2024-09-03 13:14:15.505000', 0, NULL, '2024-09-03 13:14:15.505000', 30, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836684229578752', NULL, '2024-09-03 13:14:15.501000', 0, NULL, '2024-09-03 13:14:15.501000', 23, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836684229578753', NULL, '2024-09-03 13:14:15.505000', 0, NULL, '2024-09-03 13:14:15.505000', 29, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836684258938880', NULL, '2024-09-03 13:14:15.554000', 0, NULL, '2024-09-03 13:14:15.554000', 79, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836830916972544', NULL, '2024-09-03 13:14:50.519000', 0, NULL, '2024-09-03 13:14:50.519000', 71, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836832896684039', NULL, '2024-09-03 13:14:50.953000', 0, NULL, '2024-09-03 13:14:50.953000', 28, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836832905072640', NULL, '2024-09-03 13:14:50.989000', 0, NULL, '2024-09-03 13:14:50.989000', 68, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836832909266946', NULL, '2024-09-03 13:14:51.012000', 0, NULL, '2024-09-03 13:14:51.012000', 88, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836832921849856', NULL, '2024-09-03 13:14:50.995000', 0, NULL, '2024-09-03 13:14:50.995000', 69, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830836833676824576', NULL, '2024-09-03 13:14:51.139000', 0, NULL, '2024-09-03 13:14:51.139000', 45, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837499170263040', NULL, '2024-09-03 13:17:29.841000', 0, NULL, '2024-09-03 13:17:29.841000', 73, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837964918362112', NULL, '2024-09-03 13:19:21.165000', 0, NULL, '2024-09-03 13:19:21.165000', 320, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837968789704704', NULL, '2024-09-03 13:19:21.783000', 0, NULL, '2024-09-03 13:19:21.783000', 43, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837968944893952', NULL, '2024-09-03 13:19:21.815000', 0, NULL, '2024-09-03 13:19:21.815000', 58, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837969083305984', NULL, '2024-09-03 13:19:21.887000', 0, NULL, '2024-09-03 13:19:21.887000', 119, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837969083305985', NULL, '2024-09-03 13:19:21.843000', 0, NULL, '2024-09-03 13:19:21.843000', 66, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837970408706048', NULL, '2024-09-03 13:19:22.150000', 0, NULL, '2024-09-03 13:19:22.150000', 108, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837999680753664', NULL, '2024-09-03 13:19:29.127000', 0, NULL, '2024-09-03 13:19:29.127000', 27, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', '管理员', 2, 'DICT-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830837999747862528', NULL, '2024-09-03 13:19:29.200000', 0, NULL, '2024-09-03 13:19:29.200000', 97, '127.0.0.1', '本地测试', '查询数据字典值', '{"name":"","status":"","pageNumber":"1","pageSize":"10","sort":"sortOrder","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', '管理员', 2, 'DICT_DATA-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838004613255168', NULL, '2024-09-03 13:19:30.311000', 0, NULL, '2024-09-03 13:19:30.311000', 44, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', '管理员', 2, 'LOG-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838038096384000', NULL, '2024-09-03 13:19:38.297000', 0, NULL, '2024-09-03 13:19:38.297000', 49, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"3008","captchaId":"e6b0633f421346e68ca786333e796806","saveLogin":"true"}', 'POST', '/zwz/login', '管理员', 1, '', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838039421784064', NULL, '2024-09-03 13:19:38.607000', 0, NULL, '2024-09-03 13:19:38.607000', 33, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '管理员', 2, 'USER-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838040537468928', NULL, '2024-09-03 13:19:38.873000', 0, NULL, '2024-09-03 13:19:38.873000', 32, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838047734894592', NULL, '2024-09-03 13:19:40.591000', 0, NULL, '2024-09-03 13:19:40.591000', 37, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838060548493312', NULL, '2024-09-03 13:19:43.651000', 0, NULL, '2024-09-03 13:19:43.651000', 35, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838060569464832', NULL, '2024-09-03 13:19:43.684000', 0, NULL, '2024-09-03 13:19:43.684000', 69, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838060582047744', NULL, '2024-09-03 13:19:43.705000', 0, NULL, '2024-09-03 13:19:43.705000', 75, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838060598824960', NULL, '2024-09-03 13:19:43.716000', 0, NULL, '2024-09-03 13:19:43.716000', 90, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838061869699072', NULL, '2024-09-03 13:19:43.959000', 0, NULL, '2024-09-03 13:19:43.959000', 44, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838062771474432', NULL, '2024-09-03 13:19:44.179000', 0, NULL, '2024-09-03 13:19:44.179000', 44, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838064038154240', NULL, '2024-09-03 13:19:44.482000', 0, NULL, '2024-09-03 13:19:44.482000', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838064038154241', NULL, '2024-09-03 13:19:44.478000', 0, NULL, '2024-09-03 13:19:44.478000', 35, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', '管理员', 2, 'USER-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838065262891008', NULL, '2024-09-03 13:19:44.769000', 0, NULL, '2024-09-03 13:19:44.769000', 56, '127.0.0.1', '本地测试', '查询系统文件', '{"name":"","fkey":"","type":"","pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc","startDate":"","endDate":""}', 'GET', '/zwz/file/getByCondition', '管理员', 2, 'FILE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838066512793601', NULL, '2024-09-03 13:19:45.070000', 0, NULL, '2024-09-03 13:19:45.070000', 33, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', '管理员', 2, 'SETTING-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838066512793602', NULL, '2024-09-03 13:19:45.070000', 0, NULL, '2024-09-03 13:19:45.070000', 33, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', '管理员', 2, 'SETTING-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838066516987904', NULL, '2024-09-03 13:19:45.063000', 0, NULL, '2024-09-03 13:19:45.063000', 25, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', '管理员', 2, 'SETTING-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838067825610752', NULL, '2024-09-03 13:19:45.380000', 0, NULL, '2024-09-03 13:19:45.380000', 53, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', '管理员', 2, 'ROLE-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830838070023426048', NULL, '2024-09-03 13:19:45.907000', 0, NULL, '2024-09-03 13:19:45.907000', 41, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839922341318657', NULL, '2024-09-03 13:27:07.585000', 0, NULL, '2024-09-03 13:27:07.585000', 81, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839922358095872', NULL, '2024-09-03 13:27:07.588000', 0, NULL, '2024-09-03 13:27:07.588000', 84, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839922370678785', NULL, '2024-09-03 13:27:07.593000', 0, NULL, '2024-09-03 13:27:07.593000', 89, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839922370678786', NULL, '2024-09-03 13:27:07.575000', 0, NULL, '2024-09-03 13:27:07.575000', 69, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839922446176256', NULL, '2024-09-03 13:27:07.616000', 0, NULL, '2024-09-03 13:27:07.616000', 114, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839924304252928', NULL, '2024-09-03 13:27:08.000000', 0, NULL, '2024-09-03 13:27:08.000000', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839925608681475', NULL, '2024-09-03 13:27:08.313000', 0, NULL, '2024-09-03 13:27:08.313000', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830839925612875776', NULL, '2024-09-03 13:27:08.309000', 0, NULL, '2024-09-03 13:27:08.309000', 32, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', '管理员', 2, 'USER-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840007078842368', NULL, '2024-09-03 13:27:27.766000', 0, NULL, '2024-09-03 13:27:27.766000', 61, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"5475","captchaId":"61d0eec12b3b4e1da473bf0887272d57","saveLogin":"true"}', 'POST', '/zwz/login', '管理员', 1, '', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840007129174016', NULL, '2024-09-03 13:27:27.779000', 0, NULL, '2024-09-03 13:27:27.779000', 63, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '管理员', 2, 'USER-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840008827867136', NULL, '2024-09-03 13:27:28.151000', 0, NULL, '2024-09-03 13:27:28.151000', 39, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840015656194048', NULL, '2024-09-03 13:27:29.787000', 0, NULL, '2024-09-03 13:27:29.787000', 38, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840027127615488', NULL, '2024-09-03 13:27:32.513000', 0, NULL, '2024-09-03 13:27:32.513000', 29, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840027140198400', NULL, '2024-09-03 13:27:32.514000', 0, NULL, '2024-09-03 13:27:32.514000', 30, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840027156975622', NULL, '2024-09-03 13:27:32.570000', 0, NULL, '2024-09-03 13:27:32.570000', 86, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840027156975623', NULL, '2024-09-03 13:27:32.560000', 0, NULL, '2024-09-03 13:27:32.560000', 76, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840028494958592', NULL, '2024-09-03 13:27:32.840000', 0, NULL, '2024-09-03 13:27:32.840000', 43, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840032450187264', NULL, '2024-09-03 13:27:33.789000', 0, NULL, '2024-09-03 13:27:33.789000', 39, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840283030491136', NULL, '2024-09-03 13:28:33.585000', 0, NULL, '2024-09-03 13:28:33.585000', 90, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '管理员', 2, 'PERMISSION-02', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840284842430464', NULL, '2024-09-03 13:28:33.960000', 0, NULL, '2024-09-03 13:28:33.960000', 36, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840295978307584', NULL, '2024-09-03 13:28:36.614000', 0, NULL, '2024-09-03 13:28:36.614000', 31, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840295995084800', NULL, '2024-09-03 13:28:36.655000', 0, NULL, '2024-09-03 13:28:36.655000', 73, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840296007667712', NULL, '2024-09-03 13:28:36.663000', 0, NULL, '2024-09-03 13:28:36.663000', 77, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840296007667713', NULL, '2024-09-03 13:28:36.674000', 0, NULL, '2024-09-03 13:28:36.674000', 89, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840297278541824', NULL, '2024-09-03 13:28:36.925000', 0, NULL, '2024-09-03 13:28:36.925000', 41, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840319181197312', NULL, '2024-09-03 13:28:42.144000', 0, NULL, '2024-09-03 13:28:42.144000', 33, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840319189585920', NULL, '2024-09-03 13:28:42.181000', 0, NULL, '2024-09-03 13:28:42.181000', 69, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840320443682819', NULL, '2024-09-03 13:28:42.443000', 0, NULL, '2024-09-03 13:28:42.443000', 23, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840320468848641', NULL, '2024-09-03 13:28:42.451000', 0, NULL, '2024-09-03 13:28:42.451000', 32, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840320502403073', NULL, '2024-09-03 13:28:42.508000', 0, NULL, '2024-09-03 13:28:42.508000', 88, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840440627269632', NULL, '2024-09-03 13:29:11.150000', 0, NULL, '2024-09-03 13:29:11.150000', 83, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840441248026624', NULL, '2024-09-03 13:29:11.247000', 0, NULL, '2024-09-03 13:29:11.247000', 30, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840441906532352', NULL, '2024-09-03 13:29:11.405000', 0, NULL, '2024-09-03 13:29:11.405000', 28, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840441927503872', NULL, '2024-09-03 13:29:11.457000', 0, NULL, '2024-09-03 13:29:11.457000', 79, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840441977835520', NULL, '2024-09-03 13:29:11.457000', 0, NULL, '2024-09-03 13:29:11.457000', 79, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840467709890560', NULL, '2024-09-03 13:29:17.608000', 0, NULL, '2024-09-03 13:29:17.608000', 91, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840468989153280', NULL, '2024-09-03 13:29:17.861000', 0, NULL, '2024-09-03 13:29:17.861000', 27, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', '管理员', 2, 'ROLE-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840469010124800', NULL, '2024-09-03 13:29:17.899000', 0, NULL, '2024-09-03 13:29:17.899000', 65, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', '管理员', 2, 'DICT_DATA-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840469022707714', NULL, '2024-09-03 13:29:17.910000', 0, NULL, '2024-09-03 13:29:17.910000', 76, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', '管理员', 2, 'DEP-01', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	('1830840469056262144', NULL, '2024-09-03 13:29:17.928000', 0, NULL, '2024-09-03 13:29:17.928000', 93, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', '管理员', 2, 'USER-07', 'PC端 | Chrome 128.0.0.0 | Windows Windows 10 or Windows Server 2016');

-- 导出  表 zwzframe.a_permission 结构
DROP TABLE IF EXISTS `a_permission`;
CREATE TABLE IF NOT EXISTS `a_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_permission 的数据：~39 rows (大约)
DELETE FROM `a_permission`;
INSERT INTO `a_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `name`, `parent_id`, `type`, `sort_order`, `component`, `path`, `title`, `icon`, `level`, `button_type`, `status`, `show_always`) VALUES
	('125909152017944576', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'zwz', '0', -1, 1.00, '', '', '前后端分离开发模板', 'md-home', 0, '', 0, b'1'),
	('1464484663442673664', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'userTwoMenu', '125909152017944576', 0, 1.00, 'Main', '/baseMenu', '系统基础模块', 'md-analytics', 1, '', 0, b'1'),
	('1530689602321518592', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', 'dict', '1464484663442673664', 0, 7.00, 'dict/dict/index', 'dict', '数据字典', 'ios-apps', 2, '', 0, b'1'),
	('1535166438371889152', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '', 'vue', '1464484663442673664', 0, 8.00, 'code/vue/index', 'vue', '测试菜单', 'md-bug', 2, '', 0, b'1'),
	('1663723467998105600', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430593', 1, 1.00, '', '无', '添加用户', '', 3, 'add', 0, NULL),
	('1663723511849553920', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430593', 1, 2.00, '', '无', '编辑用户', '', 3, 'edit', 0, NULL),
	('1663723538621796352', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430593', 1, 3.00, '', '无', '删除用户', '', 3, 'delete', 0, NULL),
	('1663724125664972800', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '40238597734928384', 1, 1.00, '', '无', '添加部门', '', 3, 'add', 0, NULL),
	('1663724149731889152', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '40238597734928384', 1, 2.00, '', '无', '编辑部门', '', 3, 'edit', 0, NULL),
	('1663724174398590976', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '40238597734928384', 1, 3.00, '', '无', '删除部门', '', 3, 'delete', 0, NULL),
	('1663724230593875968', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430594', 1, 1.00, '', '无', '添加角色', '', 3, 'add', 0, NULL),
	('1663724255319298048', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430594', 1, 2.00, '', '无', '编辑角色', '', 3, 'edit', 0, NULL),
	('1663724279579152384', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430594', 1, 3.00, '', '无', '删除角色', '', 3, 'delete', 0, NULL),
	('1663724334755221504', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430594', 1, 4.00, '', '无', '分配角色权限', '', 3, 'enable', 0, NULL),
	('1663724386382909440', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430595', 1, 1.00, '', '无', '添加菜单', '', 3, 'add', 0, NULL),
	('1663724413914320896', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430595', 1, 2.00, '', '无', '编辑菜单', '', 3, 'edit', 0, NULL),
	('1663724441433149440', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '5129710648430595', 1, 3.00, '', '无', '删除菜单', '', 3, 'delete', 0, NULL),
	('1663724628767543296', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '56309618086776832', 1, 1.00, '', '无', '上传文件', '', 3, 'add', 0, NULL),
	('1663724665174102016', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '56309618086776832', 1, 2.00, '', '无', '删除文件', '', 3, 'delete', 0, NULL),
	('1663724779984785408', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '1530689602321518592', 1, 1.00, '', '无', '添加数据字典', '', 3, 'add', 0, NULL),
	('1663724805096083456', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '1530689602321518592', 1, 2.00, '', '无', '编辑数据字典', '', 3, 'edit', 0, NULL),
	('1663724828114423808', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '1530689602321518592', 1, 3.00, '', '无', '删除数据字典', '', 3, 'delete', 0, NULL),
	('1663726175089987584', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', NULL, '', '56309618086776832', 1, 3.00, '', '无', '文件存储配置', '', 3, 'enable', 0, NULL),
	('40238597734928384', '', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'department-admin', '1464484663442673664', 0, 2.00, 'roster/department/department', 'dep', '部门管理', 'md-git-branch', 2, '', 0, b'1'),
	('41363147411427328', '', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'log-manage', '1464484663442673664', 0, 6.00, 'log/log/index', 'log', '日志管理', 'md-list-box', 2, '', 0, b'1'),
	('5129710648430593', '', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'user-admin', '1464484663442673664', 0, 1.00, 'roster/user/user', 'user', '用户管理', 'md-person', 2, '', 0, b'1'),
	('5129710648430594', '', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'role-manage', '1464484663442673664', 0, 3.00, 'role/role/index', 'role', '角色管理', 'md-contacts', 2, '', 0, b'1'),
	('5129710648430595', '', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'menu-manage', '1464484663442673664', 0, 4.00, 'menu/menu/index', 'menu', '菜单管理', 'md-menu', 2, '', 0, b'1'),
	('56309618086776832', '', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '', 'file-admin', '1464484663442673664', 0, 5.00, 'file/file/index', 'file', '文件管理', 'ios-folder', 2, '', 0, b'1');

-- 导出  表 zwzframe.a_role 结构
DROP TABLE IF EXISTS `a_role`;
CREATE TABLE IF NOT EXISTS `a_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_role 的数据：~2 rows (大约)
DELETE FROM `a_role`;
INSERT INTO `a_role` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `del_flag`, `default_role`, `description`, `data_type`) VALUES
	('1536606659751841795', '', '2024-09-03 09:46:20.000000', 'admin', '2024-09-03 09:46:20.000000', 'ROLE_USER', 0, b'1', '用户', 0),
	('1536606659751841799', '', '2024-09-03 09:46:20.000000', 'admin', '2024-09-03 09:46:20.000000', 'ROLE_ADMIN', 0, b'0', '管理员', 0);

-- 导出  表 zwzframe.a_role_permission 结构
DROP TABLE IF EXISTS `a_role_permission`;
CREATE TABLE IF NOT EXISTS `a_role_permission` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `permission_id` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_role_permission 的数据：~59 rows (大约)
DELETE FROM `a_role_permission`;
INSERT INTO `a_role_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `permission_id`, `role_id`) VALUES
	('1464514325862551552', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '125909152017944576', '1536606659751841799'),
	('1464514325862551553', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '1464484663442673664', '1536606659751841799'),
	('1464514325862551554', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '5129710648430593', '1536606659751841799'),
	('1464514325862551564', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '40238597734928384', '1536606659751841799'),
	('1464514325862551569', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '56309618086776832', '1536606659751841799'),
	('1464514325862551584', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '5129710648430594', '1536606659751841799'),
	('1464514325862551590', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '5129710648430595', '1536606659751841799'),
	('1464514325862551595', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '41363147411427328', '1536606659751841799'),
	('1530689747004035072', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1530689602321518592', '1536606659751841799'),
	('1535166468684124160', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1535166438371889152', '1536606659751841799'),
	('1663723894789509121', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663723467998105600', '1536606659751841799'),
	('1663723894827257856', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663723511849553920', '1536606659751841799'),
	('1663723894848229376', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663723538621796352', '1536606659751841799'),
	('1663725019009781777', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724125664972800', '1536606659751841799'),
	('1663725019018170368', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724149731889152', '1536606659751841799'),
	('1663725019022364672', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724174398590976', '1536606659751841799'),
	('1663725019030753280', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724230593875968', '1536606659751841799'),
	('1663725019034947584', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724255319298048', '1536606659751841799'),
	('1663725019039141888', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724279579152384', '1536606659751841799'),
	('1663725019047530496', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724334755221504', '1536606659751841799'),
	('1663725019051724800', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724386382909440', '1536606659751841799'),
	('1663725019055919104', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724413914320896', '1536606659751841799'),
	('1663725019060113408', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724441433149440', '1536606659751841799'),
	('1663725019064307712', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724628767543296', '1536606659751841799'),
	('1663725019072696320', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724665174102016', '1536606659751841799'),
	('1663725019076890624', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724779984785408', '1536606659751841799'),
	('1663725019081084928', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724805096083456', '1536606659751841799'),
	('1663725019085279232', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663724828114423808', '1536606659751841799'),
	('1663726203963576322', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1663726175089987584', '1536606659751841799');

-- 导出  表 zwzframe.a_setting 结构
DROP TABLE IF EXISTS `a_setting`;
CREATE TABLE IF NOT EXISTS `a_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_setting 的数据：~3 rows (大约)
DELETE FROM `a_setting`;
INSERT INTO `a_setting` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `value`) VALUES
	('FILE_HTTP', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', 'http://'),
	('FILE_PATH', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', 'C:\\\\oa-file'),
	('FILE_VIEW', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '127.0.0.1:8080/zwz/file/view');

-- 导出  表 zwzframe.a_user 结构
DROP TABLE IF EXISTS `a_user`;
CREATE TABLE IF NOT EXISTS `a_user` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `department_id` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `my_door` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_user 的数据：~4 rows (大约)
DELETE FROM `a_user`;
INSERT INTO `a_user` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`, `avatar`, `description`, `email`, `mobile`, `nickname`, `password`, `sex`, `status`, `type`, `username`, `del_flag`, `department_id`, `street`, `pass_strength`, `department_title`, `birth`, `my_door`) VALUES
	('1464764315201572864', '', '2024-09-03 09:46:20.000000', 'admin', '2024-09-03 09:46:20.000000', '["330000","330600","330602"]', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '浙江大学', '916077357@qq.com', '17857054388', '管理员', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', 0, 1, 'admin', 0, '1464487288363945985', '', '弱', '部门A', '2023-05-16 14:36:38.000000', 'user-adminZWZ666department-adminZWZ666file-adminZWZ666role-manageZWZ666menu-manageZWZ666log-manage'),
	('1464764315201572865', '', '2024-09-03 09:46:20.000000', 'admin', '2024-09-03 09:46:20.000000', '["110000","110100","110105"]', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '浙江大学', '13600000001@qq.com', '13600000001', '用户A', '$2a$10$E59nactOiILAzQvfcs0JFOYuZp06d4bLhugEadyQuygpmiLc0W.ha', '女', 0, 0, '13600000001', 0, '1464487288363945985', '', '弱', '部门A', '2023-05-16 14:35:43.000000', ''),
	('1464772465946398721', '', '2024-09-03 09:46:20.000000', 'admin', '2024-09-03 09:46:20.000000', '["110000","110100","110105"]', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '浙江大学', '13600000002@qq.com', '13600000002', '用户B', '$2a$10$vJyLo1RhFORH/SAu3sc9aeb37I5JRy5UugaN7fIt/e2vvsz6JWJCm', '女', 0, 0, '13600000002', 0, '1464487288363945985', '', '弱', '部门A', '2023-05-16 14:35:44.000000', ''),
	('1527830053524738048', 'admin', '2024-09-03 09:46:20.000000', NULL, '2024-09-03 09:46:20.000000', '["110000","110100","110106"]', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '浙江大学', '13600000003@qq.com', '13600000003', '用户C', '$2a$10$oeP4aplYnswfQ44pK6lAO.Np9BuPYJGRwo17THO7CUNlIQoVGsPmy', '男', 0, 0, '13600000003', 0, '1464487288363945985', '', '弱', '部门A', '2023-05-16 14:35:44.000000', '');

-- 导出  表 zwzframe.a_user_role 结构
DROP TABLE IF EXISTS `a_user_role`;
CREATE TABLE IF NOT EXISTS `a_user_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 正在导出表  zwzframe.a_user_role 的数据：~6 rows (大约)
DELETE FROM `a_user_role`;
INSERT INTO `a_user_role` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `role_id`, `user_id`) VALUES
	('1464487931975700480', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '1536606659751841799', '1464764315201572864'),
	('1486220872917323776', 'admin', '2024-09-03 09:46:20.000000', 0, 'admin', '2024-09-03 09:46:20.000000', '1536606659751841795', '1464764315201572865'),
	('1526802492967489537', NULL, '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1536606659751841795', '1526802492443201536'),
	('1526819095553642497', NULL, '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1536606659751841795', '1526819095159377920'),
	('1527829917801254912', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1536606659751841795', '1464772465946398721'),
	('1527830053889642496', 'admin', '2024-09-03 09:46:20.000000', 0, NULL, '2024-09-03 09:46:20.000000', '1536606659751841795', '1527830053524738048');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
