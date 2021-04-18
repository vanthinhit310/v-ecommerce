/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : v-ecommerce

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 19/04/2021 00:44:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `activations_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES (1, 1, 'OM3QwiJcagj56QLCuWhvEi0CI1Wl2ige', 1, '2020-12-17 08:04:28', '2020-12-17 08:04:28', '2020-12-17 08:04:28');

-- ----------------------------
-- Table structure for audit_histories
-- ----------------------------
DROP TABLE IF EXISTS `audit_histories`;
CREATE TABLE `audit_histories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `audit_histories_user_id_index`(`user_id`) USING BTREE,
  INDEX `audit_histories_module_index`(`module`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of audit_histories
-- ----------------------------
INSERT INTO `audit_histories` VALUES (1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 0, 1, 'System Admin', 'info', '2021-04-18 17:37:42', '2021-04-18 17:37:42');
INSERT INTO `audit_histories` VALUES (2, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 10, 'Rafael Mohr', 'danger', '2021-04-18 17:37:58', '2021-04-18 17:37:58');
INSERT INTO `audit_histories` VALUES (3, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 9, 'Fleta Waelchi PhD', 'danger', '2021-04-18 17:37:58', '2021-04-18 17:37:58');
INSERT INTO `audit_histories` VALUES (4, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 8, 'Toni Marks PhD', 'danger', '2021-04-18 17:37:58', '2021-04-18 17:37:58');
INSERT INTO `audit_histories` VALUES (5, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 7, 'Kayden Herman III', 'danger', '2021-04-18 17:37:58', '2021-04-18 17:37:58');
INSERT INTO `audit_histories` VALUES (6, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 6, 'Eleazar Ryan', 'danger', '2021-04-18 17:37:58', '2021-04-18 17:37:58');
INSERT INTO `audit_histories` VALUES (7, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 5, 'Foster Wolff', 'danger', '2021-04-18 17:37:58', '2021-04-18 17:37:58');
INSERT INTO `audit_histories` VALUES (8, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 4, 'Kamron Senger', 'danger', '2021-04-18 17:37:59', '2021-04-18 17:37:59');
INSERT INTO `audit_histories` VALUES (9, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 3, 'Ashleigh Kovacek', 'danger', '2021-04-18 17:37:59', '2021-04-18 17:37:59');
INSERT INTO `audit_histories` VALUES (10, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 2, 'Blanche Doyle', 'danger', '2021-04-18 17:37:59', '2021-04-18 17:37:59');
INSERT INTO `audit_histories` VALUES (11, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 1, 'Dr. August Emmerich', 'danger', '2021-04-18 17:37:59', '2021-04-18 17:37:59');
INSERT INTO `audit_histories` VALUES (12, 1, 'page', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Page\\\\Tables\\\\PageTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 4, 'Cookie Policy', 'danger', '2021-04-18 17:38:14', '2021-04-18 17:38:14');
INSERT INTO `audit_histories` VALUES (13, 1, 'page', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Page\\\\Tables\\\\PageTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 3, 'Contact', 'danger', '2021-04-18 17:38:14', '2021-04-18 17:38:14');
INSERT INTO `audit_histories` VALUES (14, 1, 'page', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Page\\\\Tables\\\\PageTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 2, 'Blog', 'danger', '2021-04-18 17:38:14', '2021-04-18 17:38:14');
INSERT INTO `audit_histories` VALUES (15, 1, 'page', '{\"ids\":[\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Page\\\\Tables\\\\PageTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 1, 'Homepage', 'danger', '2021-04-18 17:38:14', '2021-04-18 17:38:14');
INSERT INTO `audit_histories` VALUES (16, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 11, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (17, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 10, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (18, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 9, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (19, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 8, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (20, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 7, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (21, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 6, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (22, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 5, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (23, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 4, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (24, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 3, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (25, 1, 'member', '{\"ids\":[\"11\",\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 2, '', 'danger', '2021-04-18 17:38:21', '2021-04-18 17:38:21');
INSERT INTO `audit_histories` VALUES (26, 1, 'member', '{\"ids\":[\"1\"],\"class\":\"Platform\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 1, '', 'danger', '2021-04-18 17:38:26', '2021-04-18 17:38:26');
INSERT INTO `audit_histories` VALUES (27, 1, 'category', '{\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 2, 'Events', 'danger', '2021-04-18 17:38:40', '2021-04-18 17:38:40');
INSERT INTO `audit_histories` VALUES (28, 1, 'category', '{\"ids\":[\"1\",\"4\",\"5\",\"6\",\"7\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\CategoryTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 4, 'Business', 'danger', '2021-04-18 17:38:55', '2021-04-18 17:38:55');
INSERT INTO `audit_histories` VALUES (29, 1, 'category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 6, 'News & Updates', 'danger', '2021-04-18 17:39:03', '2021-04-18 17:39:03');
INSERT INTO `audit_histories` VALUES (30, 1, 'tag', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 5, 'Modern', 'danger', '2021-04-18 17:39:15', '2021-04-18 17:39:15');
INSERT INTO `audit_histories` VALUES (31, 1, 'tag', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 4, 'Branding', 'danger', '2021-04-18 17:39:15', '2021-04-18 17:39:15');
INSERT INTO `audit_histories` VALUES (32, 1, 'tag', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 3, 'Fashion', 'danger', '2021-04-18 17:39:15', '2021-04-18 17:39:15');
INSERT INTO `audit_histories` VALUES (33, 1, 'tag', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 2, 'Design', 'danger', '2021-04-18 17:39:15', '2021-04-18 17:39:15');
INSERT INTO `audit_histories` VALUES (34, 1, 'tag', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 1, 'General', 'danger', '2021-04-18 17:39:15', '2021-04-18 17:39:15');
INSERT INTO `audit_histories` VALUES (35, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 11, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (36, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 12, 'Apple iMac with Retina 5K display review', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (37, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 13, '10,000 Web Site Visitors In One Month:Guaranteed', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (38, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 14, 'Unlock The Secrets Of Selling High Ticket Items', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (39, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 15, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (40, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 16, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (41, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 1, 'The Top 2020 Handbag Trends to Know', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (42, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 2, 'Top Search Engine Optimization Strategies!', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (43, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 3, 'Which Company Would You Choose?', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (44, 1, 'post', '{\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"1\",\"2\",\"3\",\"4\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 4, 'Used Car Dealer Sales Tricks Exposed', 'danger', '2021-04-18 17:39:23', '2021-04-18 17:39:23');
INSERT INTO `audit_histories` VALUES (45, 1, 'post', '{\"ids\":[\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 5, '20 Ways To Sell Your Product Faster', 'danger', '2021-04-18 17:39:28', '2021-04-18 17:39:28');
INSERT INTO `audit_histories` VALUES (46, 1, 'post', '{\"ids\":[\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 6, 'The Secrets Of Rich And Famous Writers', 'danger', '2021-04-18 17:39:28', '2021-04-18 17:39:28');
INSERT INTO `audit_histories` VALUES (47, 1, 'post', '{\"ids\":[\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 7, 'Imagine Losing 20 Pounds In 14 Days!', 'danger', '2021-04-18 17:39:28', '2021-04-18 17:39:28');
INSERT INTO `audit_histories` VALUES (48, 1, 'post', '{\"ids\":[\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 8, 'Are You Still Using That Slow, Old Typewriter?', 'danger', '2021-04-18 17:39:28', '2021-04-18 17:39:28');
INSERT INTO `audit_histories` VALUES (49, 1, 'post', '{\"ids\":[\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 9, 'A Skin Cream That’s Proven To Work', 'danger', '2021-04-18 17:39:28', '2021-04-18 17:39:28');
INSERT INTO `audit_histories` VALUES (50, 1, 'post', '{\"ids\":[\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Platform\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 10, '10 Reasons To Start Your Own, Profitable Website!', 'danger', '2021-04-18 17:39:28', '2021-04-18 17:39:28');
INSERT INTO `audit_histories` VALUES (51, 1, 'menu', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Menu\\\\Tables\\\\MenuTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 5, 'Social', 'danger', '2021-04-18 17:40:09', '2021-04-18 17:40:09');
INSERT INTO `audit_histories` VALUES (52, 1, 'menu', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Menu\\\\Tables\\\\MenuTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 4, 'Featured Categories', 'danger', '2021-04-18 17:40:09', '2021-04-18 17:40:09');
INSERT INTO `audit_histories` VALUES (53, 1, 'menu', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Menu\\\\Tables\\\\MenuTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 3, 'My links', 'danger', '2021-04-18 17:40:09', '2021-04-18 17:40:09');
INSERT INTO `audit_histories` VALUES (54, 1, 'menu', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Menu\\\\Tables\\\\MenuTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 2, 'Favorite websites', 'danger', '2021-04-18 17:40:09', '2021-04-18 17:40:09');
INSERT INTO `audit_histories` VALUES (55, 1, 'menu', '{\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Platform\\\\Menu\\\\Tables\\\\MenuTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.41', '127.0.0.1', 1, 1, 'Main menu', 'danger', '2021-04-18 17:40:09', '2021-04-18 17:40:09');

-- ----------------------------
-- Table structure for blocks
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blocks
-- ----------------------------
INSERT INTO `blocks` VALUES (1, 'Loraine Willms V', 'loraine-willms-v', 'Sunt sed et veniam in et non.', 'Accusantium quia inventore omnis ut minima. Ea recusandae in est doloremque ut inventore placeat. Ex inventore asperiores totam et ut nemo. Deleniti reprehenderit quas quo suscipit est. Illo alias qui necessitatibus nulla. Maiores officiis molestiae vel hic et. Velit quia adipisci laboriosam. Voluptatem impedit neque eos adipisci dolor omnis aut.', 'published', NULL, '2020-12-17 08:04:33', '2020-12-17 08:04:33');
INSERT INTO `blocks` VALUES (2, 'Mr. Jonathon Haag I', 'mr-jonathon-haag-i', 'Totam ut dolores quo quia.', 'Mollitia vel qui quo aut non ut saepe atque. Excepturi magni culpa ipsum quibusdam voluptatum dolorum et. Eaque sit aliquam id est dolores esse. Vel quis sit sit. Inventore ipsum et perspiciatis. Quo labore et veritatis soluta dolor et similique reiciendis. Ut eveniet dolor ut earum ducimus fuga labore exercitationem. Culpa mollitia autem ut.', 'published', NULL, '2020-12-17 08:04:33', '2020-12-17 08:04:33');
INSERT INTO `blocks` VALUES (3, 'Dr. Arlie Hahn', 'dr-arlie-hahn', 'Minus natus id porro numquam nam velit.', 'Nemo quia voluptatibus totam porro a atque. Pariatur dolorem reiciendis corporis ducimus id. Omnis debitis occaecati repudiandae sunt. Est laborum omnis hic itaque nobis non nulla consectetur. Quia tempore voluptatem odit aliquid. Adipisci et omnis nihil esse eligendi ut nam. Eveniet voluptas illo libero ut ea similique voluptate. Laudantium atque aperiam aliquid in itaque eos possimus atque. Omnis soluta rerum sit dolor sequi. Illo deleniti tenetur fuga. Velit sed placeat consectetur omnis.', 'published', NULL, '2020-12-17 08:04:33', '2020-12-17 08:04:33');
INSERT INTO `blocks` VALUES (4, 'Prof. Quinn Mertz', 'prof-quinn-mertz', 'Animi ratione soluta quia itaque saepe.', 'Quisquam enim odit praesentium. In commodi consectetur consectetur dolor. Aspernatur officia molestiae est sint. Omnis provident voluptates officiis modi. Sed aliquam eveniet aperiam eum sit explicabo nam. Quia non sint rem nobis. Magnam aliquid architecto aut rem consequatur velit. Tempore ratione et eius assumenda blanditiis. Repellat iusto quam quo deserunt voluptatum pariatur ipsam. Quod laboriosam quaerat doloribus reiciendis.', 'published', NULL, '2020-12-17 08:04:33', '2020-12-17 08:04:33');
INSERT INTO `blocks` VALUES (5, 'Miguel Kovacek', 'miguel-kovacek', 'Enim aut tempore sed nam natus in.', 'Optio qui numquam quia qui. Asperiores eum nihil similique deserunt libero tenetur exercitationem. Veritatis velit veniam perferendis veritatis blanditiis sunt et adipisci. Facilis ratione qui nemo earum similique rerum. Id dolores aut id praesentium iste. Eos eos distinctio consequatur est tempora. Qui et vitae labore voluptatem animi. Iusto rem delectus nisi sunt itaque. Culpa rerum nemo eligendi quae autem qui. Sit et eum fuga. Fugit ad fugit consectetur qui a eius.', 'published', NULL, '2020-12-17 08:04:33', '2020-12-17 08:04:33');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Platform\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Uncategorized', 0, 'Quia qui et distinctio consequuntur placeat. Sunt ratione inventore consequatur. Totam eum voluptates maxime incidunt soluta quidem eaque. Explicabo unde eos illum sapiente.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 1, '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `categories` VALUES (8, 'Không phân loại', 0, 'Sit quia magnam consequuntur est incidunt necessitatibus nesciunt. Pariatur officia vel inventore accusantium placeat. Veritatis error doloribus quis dolor. Ut explicabo ut ratione possimus.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 1, '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `categories` VALUES (9, 'Sự kiện', 0, 'Perferendis consequatur amet impedit commodi dolorem expedita repellat. Id quibusdam autem cupiditate iste. Commodi quasi tenetur unde consequatur.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 1, 0, '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `categories` VALUES (10, 'Dự án', 9, 'Voluptatem ipsum architecto molestiae rerum aliquid omnis. Deleniti aut reiciendis consequatur quisquam odit mollitia. Id assumenda non dolor modi laborum temporibus corrupti.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `categories` VALUES (11, 'Doanh nghiệp', 0, 'Qui voluptatem velit eum perspiciatis nam incidunt. Non cupiditate voluptatem odio nostrum cum. Velit accusantium rem qui necessitatibus est quo. Et nisi quibusdam quos nisi impedit corrupti dolores.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 1, 0, '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `categories` VALUES (12, 'Đầu tư', 11, 'Consequatur a dicta vero pariatur iste odio non. Repellendus error saepe tempora sed tempore officiis.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `categories` VALUES (13, 'Tin tức & cập nhật', 0, 'Recusandae necessitatibus soluta vel sed est hic nihil deleniti. Blanditiis et ea placeat nam aperiam. Eum et iste ipsa dicta eaque quaerat.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 1, 0, '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `categories` VALUES (14, 'Tài nguyên', 13, 'Voluptas ullam incidunt libero qui repudiandae. Qui in vel consequuntur quos nihil. Rerum et et sit dignissimos quidem sunt. Et ut eius eius aliquid explicabo rerum ea.', 'published', 1, 'Platform\\ACL\\Models\\User', NULL, 0, 0, 0, '2020-12-17 08:04:38', '2020-12-17 08:04:38');

-- ----------------------------
-- Table structure for contact_replies
-- ----------------------------
DROP TABLE IF EXISTS `contact_replies`;
CREATE TABLE `contact_replies`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact_replies
-- ----------------------------

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contacts
-- ----------------------------

-- ----------------------------
-- Table structure for custom_fields
-- ----------------------------
DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE `custom_fields`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `use_for` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of custom_fields
-- ----------------------------

-- ----------------------------
-- Table structure for dashboard_widget_settings
-- ----------------------------
DROP TABLE IF EXISTS `dashboard_widget_settings`;
CREATE TABLE `dashboard_widget_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dashboard_widget_settings_user_id_index`(`user_id`) USING BTREE,
  INDEX `dashboard_widget_settings_widget_id_index`(`widget_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dashboard_widget_settings
-- ----------------------------

-- ----------------------------
-- Table structure for dashboard_widgets
-- ----------------------------
DROP TABLE IF EXISTS `dashboard_widgets`;
CREATE TABLE `dashboard_widgets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dashboard_widgets
-- ----------------------------
INSERT INTO `dashboard_widgets` VALUES (1, 'widget_total_themes', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (2, 'widget_total_users', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (3, 'widget_total_pages', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (4, 'widget_total_plugins', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (5, 'widget_analytics_general', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (6, 'widget_analytics_page', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (7, 'widget_analytics_browser', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (8, 'widget_posts_recent', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (9, 'widget_analytics_referrer', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (10, 'widget_audit_logs', '2020-12-17 08:05:22', '2020-12-17 08:05:22');
INSERT INTO `dashboard_widgets` VALUES (11, 'widget_request_errors', '2020-12-17 08:05:22', '2020-12-17 08:05:22');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for field_groups
-- ----------------------------
DROP TABLE IF EXISTS `field_groups`;
CREATE TABLE `field_groups`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of field_groups
-- ----------------------------

-- ----------------------------
-- Table structure for field_items
-- ----------------------------
DROP TABLE IF EXISTS `field_items`;
CREATE TABLE `field_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of field_items
-- ----------------------------

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `galleries_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES (1, 'Perfect', 'Velit voluptas optio possimus iste. Sed sint eum est facilis.', 1, 0, 'galleries/1.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (2, 'New Day', 'Consequuntur unde totam labore omnis doloremque. Eaque culpa id doloribus fugiat molestias.', 1, 0, 'galleries/2.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (3, 'Happy Day', 'Recusandae modi iusto quos voluptates. Suscipit vero iusto ut debitis nam reiciendis. Ea sed impedit aut.', 1, 0, 'galleries/3.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (4, 'Nature', 'Ea tempora eos et consectetur cumque dolor magni. Architecto consectetur quis saepe voluptatem.', 1, 0, 'galleries/4.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (5, 'Morning', 'Saepe ut sit ad et deserunt esse. Illo ducimus quia similique. Voluptas cupiditate et incidunt assumenda. Ut sequi eos eveniet consequatur.', 1, 0, 'galleries/5.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (6, 'Photography', 'Perferendis deleniti distinctio a. Molestiae excepturi quam ipsum. Est est aut voluptatem ipsa officia fugit veniam.', 1, 0, 'galleries/6.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (7, 'Hoàn hảo', 'Pariatur et dolor cum. Et facere rerum cumque eaque quis earum rerum. Quia consequatur non fugit id ad nihil delectus impedit.', 1, 0, 'galleries/1.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (8, 'Ngày mới', 'Cum quis quia rerum nesciunt rem. Aut voluptatibus rerum et et omnis voluptatem. Ut blanditiis et quisquam aut repellat.', 1, 0, 'galleries/2.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (9, 'Ngày hạnh phúc', 'Soluta ut tempore laborum nihil. Laboriosam est a pariatur et omnis ea. Similique placeat qui commodi iusto qui molestiae.', 1, 0, 'galleries/3.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (10, 'Thiên nhiên', 'Laborum saepe possimus ut. Sit voluptatem aliquam voluptas ut placeat error velit. Nulla totam eveniet aliquid saepe qui magni quod.', 1, 0, 'galleries/4.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (11, 'Buổi sáng', 'Veniam qui quo autem error consectetur consequatur. Hic magni quaerat ratione pariatur a. Modi unde omnis quibusdam distinctio neque.', 1, 0, 'galleries/5.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `galleries` VALUES (12, 'Nghệ thuật', 'Aperiam ut quo tenetur et. Eaque magni quam non nulla nisi ducimus. Et reiciendis exercitationem eligendi saepe eveniet.', 1, 0, 'galleries/6.jpg', 1, 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');

-- ----------------------------
-- Table structure for gallery_meta
-- ----------------------------
DROP TABLE IF EXISTS `gallery_meta`;
CREATE TABLE `gallery_meta`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gallery_meta_reference_id_index`(`reference_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery_meta
-- ----------------------------
INSERT INTO `gallery_meta` VALUES (1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Omnis distinctio inventore voluptatum et quibusdam neque. Nobis ut est voluptas quia. Consequuntur facilis qui corrupti.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deleniti molestiae a in odit ducimus. Dolor iusto quas et quod omnis est est. Quia incidunt voluptatem quia molestias et optio.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Rem voluptatum sed blanditiis voluptatem corporis quia eos. Quasi eveniet cum similique aspernatur est. Aut amet odio distinctio dolores magnam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Velit ipsam qui id voluptate fuga. Consequatur doloremque dolor unde culpa minus rerum id.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Natus labore sed perspiciatis facere. Accusantium tenetur sapiente voluptates necessitatibus alias atque molestias fugiat.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Incidunt neque ullam omnis est reprehenderit et. Nisi natus laboriosam reprehenderit iure.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Repudiandae in quia minus magni ut. Molestiae quo saepe nesciunt. Quam rerum occaecati nam quis sequi et aut reiciendis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Enim ea ut animi adipisci. Voluptatem porro repellat repellat. Voluptatem eum in commodi quia est vel.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis rerum eveniet autem totam debitis vero. Molestiae sunt fugit dolor et tenetur. Est ut non atque dolorem quae voluptatibus dolores.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Soluta et et assumenda velit quis. Est voluptatem iure odio doloremque quae quia nesciunt iure. In eaque sit accusamus cum dignissimos.\"}]', 1, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Qui voluptas sunt veritatis animi temporibus. Animi qui reiciendis sequi quis ea minus. Error dolorum iusto est sapiente voluptas quia.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Unde exercitationem ut in est. Dicta sit aut ipsam quaerat laboriosam delectus. Cumque qui molestiae voluptas beatae impedit perferendis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Adipisci nisi quae ea est corrupti. Tempora quibusdam saepe fuga ex dignissimos. Nemo minus vitae quae.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ad quasi ratione sed autem cum et. Est quo optio qui rem adipisci minus aut. Et quod omnis ad voluptatibus sunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aliquid nihil aut aliquam perferendis et quis architecto. Adipisci dicta beatae ullam nobis in odit harum enim. Totam animi aliquid tenetur.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Minima impedit provident tempora consequatur et sed tempore. Sit magnam dolor in quibusdam fuga voluptatem. Aut id nostrum eum animi.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Minima ratione id ipsam consequatur repudiandae vitae. Eos doloremque ullam esse et a. At ipsa delectus non. Atque sit voluptatum esse et sit nam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ea qui accusamus adipisci error eius voluptates. Velit sunt ea optio quas. Quia odio et incidunt eveniet. Laudantium dolor quae aut maxime.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Rem doloremque at officia cupiditate cumque. Autem corrupti nesciunt dolorem vero dicta odio aut. Aut totam expedita repellat et rerum nostrum qui.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"A suscipit eaque id illo a. Quia maxime sed alias voluptates qui. Veritatis esse non totam velit consequatur quaerat. Molestiae cum et deserunt non.\"}]', 2, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Sint sunt eligendi ut. Quas nisi ut non ea sit quod. Quis dolorem natus et eaque iste.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Cupiditate aut quia quis autem id occaecati. Ab accusamus quod dicta mollitia ut et. Sed vitae illum ut commodi non impedit voluptate et.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Eum sunt mollitia ratione quas aut tempore. Dolor vero rerum amet expedita nihil. Nihil est ea dicta.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Corporis fuga impedit cupiditate aut id necessitatibus. Rerum nobis quos ut dolorem dolorem ex. Ea non sit excepturi porro fuga voluptas vel.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Perferendis error tempora et sit. Tempore cum repudiandae deserunt inventore error neque ducimus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Excepturi quo ab voluptatibus commodi quos illum asperiores. Et nesciunt dolore non voluptatem in.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Fuga reiciendis maiores provident ducimus quo accusantium rerum. Eos ratione nulla quae est. Repudiandae suscipit amet natus perferendis rerum.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Eaque placeat aut animi excepturi. Quia error reprehenderit modi corrupti et. Illum voluptatem amet vitae sit maxime.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est quas voluptatem quia tempora totam nostrum atque inventore. Eveniet aut rerum expedita quod. Ipsam qui nemo corporis est harum.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sequi a quis mollitia hic. Hic officia dolores ex perspiciatis non recusandae. Quaerat quis aut aut.\"}]', 3, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Earum et corporis cumque molestias similique officia minima iure. Id incidunt tempore suscipit odio corrupti. Recusandae illum ad ea dignissimos aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ad qui consectetur est fugit sed. Ut voluptatem magni dicta dicta autem earum. Praesentium molestias animi excepturi voluptatem nisi.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Qui sit molestiae corrupti incidunt exercitationem voluptatem placeat. Sapiente vel eveniet nam. Sit accusamus et provident vel dolorem sit dolorem.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Ut officiis voluptate ea. Quo alias recusandae nam non perferendis qui. Illo eos voluptatem pariatur sunt.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sit voluptas minima adipisci ab. Non nesciunt eum culpa iusto fugiat sint sit. Odit numquam repellat recusandae dignissimos dolores id.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Modi sed quis aperiam omnis accusantium. Doloremque deserunt molestiae et non nemo tempore sed. Earum ut magnam rerum non omnis rem iure.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Voluptatibus id et neque dolorum aliquam occaecati eos. Facilis in et laudantium perspiciatis. Nesciunt nemo quo consequatur facilis tenetur qui.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Possimus ducimus in reiciendis laborum sunt laborum. Cupiditate et consequatur iure quidem ut. Ratione error sint facilis sequi expedita est ratione.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Distinctio labore commodi qui velit. Voluptatem vel repudiandae quia explicabo. Qui dolores omnis sed dicta ipsam ut.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Dignissimos qui consequatur sed molestiae. Corrupti occaecati voluptas omnis eaque suscipit. Nihil aut inventore ea ipsa quis nisi.\"}]', 4, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Cupiditate sint fuga autem officiis sunt eius tempore. Neque error eos accusamus aspernatur. Tenetur commodi cumque veniam modi aliquam vitae.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Nihil aut laboriosam et et et nihil. Magni sed nam tenetur enim neque.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Veritatis rerum recusandae temporibus amet unde aperiam. Esse perferendis fugit consequuntur dolorum dicta quis. Rerum et vel et nisi.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Facere eum sed consequatur exercitationem nemo. Sed deleniti ut reiciendis omnis. Et praesentium est dolore laudantium quia cupiditate repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Ratione dolorem culpa dolor ea. Ab dolorem ratione provident consectetur facere. Maxime natus suscipit sunt vel consequatur.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Quam voluptas accusantium labore aperiam et. Aut quia suscipit ducimus rerum eius. Praesentium numquam qui alias.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Voluptatem in omnis officia assumenda vitae aliquam. Ea et rerum ex nesciunt. Temporibus qui voluptates laudantium quia consequuntur totam ea.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Molestiae esse corrupti molestiae ea excepturi sunt et. Facilis vel tempora officia incidunt doloremque sit. Iure et qui quo veniam in maiores.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Corrupti voluptatum nostrum eius mollitia est qui. Amet quia ab et facere debitis sint ipsam. Ratione quia omnis aut quod accusantium.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Iusto explicabo quo fuga quis. Consequuntur quia sed quia. Deserunt necessitatibus fugit ut maiores.\"}]', 5, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Nisi consequatur fuga quisquam consequatur perferendis quas aut dolore. Ipsum tempore aut commodi vel. Non consequatur quidem voluptatem sapiente et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Quos sapiente quam non maxime deleniti est accusamus. Ipsam non vero dolorem nobis. Ut totam veniam perferendis hic provident.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Eum minus nesciunt et dolores. Sit animi vitae nostrum doloremque ad neque provident pariatur. Dignissimos quidem autem rerum rerum voluptatem autem.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Sequi rerum vitae nihil est ad error quas. Molestias id omnis tenetur mollitia impedit. Molestias et occaecati sapiente illum aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Quaerat sapiente ut aspernatur eum delectus. Totam est quo consequatur adipisci. Voluptatem libero voluptatum ut voluptatibus.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Voluptas nisi vitae quis id et vel. Ad et quae sequi autem et aut. Sed repellat id asperiores dolorem sequi delectus nihil.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Magnam et nam laborum aspernatur. Laborum eum adipisci sit repellat. Est quod veritatis voluptatem aut doloribus.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sunt aut illum voluptatem dolores eius non. Et ea aliquam quo rerum. Voluptatem libero dolorem dolor eius sapiente et asperiores.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Ut porro qui aut dolorem delectus. Laboriosam officiis vel exercitationem non. Qui quasi aliquid quas est vero eos voluptas tempore.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Tempora architecto et doloremque facere minima quia. Fugit eos ducimus similique. Ut explicabo hic sunt quis ut blanditiis.\"}]', 6, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (7, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ipsam natus aut id voluptatibus nostrum. Eum nesciunt rerum iste maxime laborum voluptatem. Sed id ea officia nihil enim.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Nesciunt voluptas adipisci id. Ipsa quae quia sint voluptate. Quo id molestias ut eveniet. Vero perspiciatis voluptatem molestiae quaerat.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia molestias qui qui ducimus distinctio dignissimos. Provident rerum reprehenderit explicabo eos rerum minima et veritatis.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Suscipit magni esse quam rerum. Neque omnis odio vel et atque. Rerum reprehenderit qui fugit architecto non et.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Magnam facilis maxime natus recusandae ut rerum voluptates et. Quibusdam corporis ut vero omnis. Voluptas est aut et officia.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Maxime pariatur sed dolorem rerum sapiente et pariatur. Accusantium quos ut et doloremque. Sint totam corrupti accusantium libero.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Provident dolorum quibusdam reiciendis eum repellat. Vel deserunt illo ipsam ut.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Quibusdam nostrum corrupti sint nihil exercitationem fuga et. Vero sint quia excepturi nemo. Vero est reprehenderit velit.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Et sunt fugiat odit hic numquam laborum. Dolores eos et autem impedit sed explicabo. Dignissimos error minus officia.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"In placeat non labore earum illum sunt. Nisi optio molestiae necessitatibus laborum excepturi blanditiis. Quia rerum aut iste enim a dicta.\"}]', 7, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (8, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Nulla ipsa ut enim quis. Expedita ipsam natus dolorem voluptate. Quia natus quia neque dolores accusantium. Eligendi et omnis ullam quis.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Minus recusandae aut incidunt a expedita eos facere. Repudiandae nihil harum sit culpa eos qui laudantium.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quo rerum modi amet. Debitis qui ipsam nulla. Consequatur voluptatem consectetur unde facilis veniam nesciunt qui.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Sit consectetur ratione illo vero. Et suscipit molestiae tempore quidem.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Atque temporibus quisquam dicta beatae voluptatem nulla consequuntur. Beatae doloribus repudiandae tempore nesciunt autem beatae.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Magni numquam dolor qui quidem aut vel voluptatum omnis. Quasi nobis et sunt laudantium dolorem asperiores. Quo qui aut ut consequatur quia aut.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et veritatis sequi quasi. Dolorem est vero sit aliquid et molestiae nobis deserunt. Vero ut nobis voluptatem voluptatem culpa nesciunt enim.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Eos quaerat esse est enim. Autem dignissimos eos rerum sapiente esse eos culpa. Voluptatum distinctio et quae. Quis ducimus mollitia ipsum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Consequatur aperiam quia eum modi. Odit et maxime dignissimos nulla qui sunt.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Quidem placeat quidem sed dolorem. Omnis nam suscipit pariatur delectus. Sed maiores sed qui adipisci.\"}]', 8, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (9, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Et et sed quasi est id temporibus. Et minus sint dolor sit saepe facilis culpa. Voluptas ipsum enim ipsum iste. Adipisci eos qui autem qui possimus.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ut dignissimos nam aliquam culpa dolore porro. Neque sint et similique soluta quidem. Molestiae nam qui odit eaque nulla eaque qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Et sequi ipsa maxime qui sed deleniti. Nihil illum voluptatem culpa pariatur expedita quos rerum. Ipsum sit cumque quisquam ex saepe numquam quasi.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Velit ut velit deserunt alias similique expedita qui. Nam cumque soluta et veritatis repellat. Sunt deserunt harum recusandae est voluptate.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aperiam aut voluptatum sed aut. Et itaque iste est distinctio possimus ut suscipit sequi.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Aut commodi iste totam sed dolorem tempora molestias nisi. Neque voluptas atque ut veritatis.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Est molestias explicabo sit rerum. Omnis et aut aut amet. Non non ipsa esse alias. Sequi dolor rerum molestiae.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Cumque quisquam magnam ipsam porro. Occaecati sunt quia unde quam quis et laboriosam. Repellendus facilis rerum dolores.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Incidunt architecto quis quia rerum nesciunt. Et quia ab eius aperiam sint optio eius dignissimos. Itaque velit quo maxime numquam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae quia voluptas similique. Ea autem ea rerum perspiciatis. Sit aut cum est voluptatem modi et. Voluptatem et non deleniti dicta et.\"}]', 9, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (10, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ab laboriosam consectetur iusto modi ipsum illo quo. Vel vel eos est. Et cum blanditiis et et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Consequatur illum est quam velit natus quaerat dolor. Qui qui necessitatibus est eligendi hic. Libero dolorum libero dolor neque beatae.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit exercitationem harum cum totam. Magnam est ullam eligendi libero. Laborum quaerat quia non veniam. Officiis tempore facere odio dolorem rem id.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Minima quo quidem magni consequatur modi consequuntur. Optio praesentium veniam suscipit perferendis. Quidem itaque odio debitis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Non repudiandae vero quibusdam sint officia accusamus. Distinctio in qui eos doloremque. Minus autem officiis libero nemo saepe totam corrupti.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Quod aut enim sit corporis est et sapiente. Fugiat quia corrupti et porro molestiae sint. Voluptas ut nemo saepe est excepturi enim delectus.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Eos corrupti similique consequatur incidunt quae. Eum doloremque rem consequatur enim nisi neque. Quia ut vitae omnis consequatur.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Quisquam exercitationem nulla aut ratione et explicabo. Est sint et qui. Commodi minima est eos beatae et. Rerum non voluptas ut mollitia odio.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Est id quisquam mollitia nisi fuga voluptatem. Occaecati eum illum rerum quae.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Magni sunt porro nesciunt architecto impedit magnam debitis. Est amet voluptatibus qui tempora sed quam voluptas ducimus. Sint autem et molestiae.\"}]', 10, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (11, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Laboriosam molestiae est eum non blanditiis voluptatibus. Et porro aut non fugiat fugit voluptatem animi.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Omnis qui perspiciatis rerum eius autem vitae quidem. Cum tenetur rerum aliquid quia ipsam qui. Unde rerum et praesentium corrupti ut.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Velit ut commodi minima qui earum omnis praesentium officia. Vel consequatur ut ut odit. Quo necessitatibus rerum ipsa culpa rerum aut.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Aut incidunt in aspernatur laboriosam. Ut qui voluptas accusamus consectetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint qui neque consequatur quisquam nulla quia. Sed distinctio ad ullam perferendis dicta quibusdam expedita. Nihil rerum recusandae laudantium.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Molestias possimus quia inventore in non. Excepturi corporis ab vel. Nobis aut qui voluptas vel.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Dolorem qui aut dolore. Quisquam qui voluptatibus autem dicta corporis dicta. Adipisci ut expedita aut aperiam. Aut est veniam necessitatibus odit.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Laboriosam odio sapiente ab. Modi at et veritatis quas laboriosam et. Voluptas beatae sint tempora incidunt. Rem officiis iusto ratione et harum eum.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Ab voluptate sit eveniet dolores officia. Qui itaque sapiente voluptatem et vel voluptatem voluptas.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Exercitationem molestiae excepturi aliquid quia. Sed ab quia similique consequuntur nihil quis nesciunt.\"}]', 11, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `gallery_meta` VALUES (12, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Enim nostrum cupiditate eius cumque provident. A et atque inventore rerum. Ut quos reiciendis odio. Sed voluptatem alias rerum cupiditate.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Distinctio architecto adipisci nisi sit sit eaque non. Consequatur consequuntur qui ea quis impedit similique quis qui. Quo magnam autem minima.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quis aspernatur aut velit sequi quaerat voluptates autem. Consequatur dolorum impedit non. Officiis earum illum rerum rerum tempore amet.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Tempora aperiam asperiores molestiae expedita aut consequatur. Accusantium libero ipsum cum et aut repellendus assumenda. Autem maxime quos et ut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sed ipsam rerum possimus reiciendis. Modi quod nulla alias unde ab sed sit ut. Dolor voluptas dolore et aut vitae.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Nemo qui asperiores aperiam. Impedit voluptates fugit iste molestias repellat sequi sint. A reiciendis explicabo placeat cupiditate quidem quia.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Non necessitatibus eius a et earum. Eveniet facere omnis maiores impedit dolorem. Cupiditate eos molestias dolore sunt hic ea dolores.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Beatae consectetur fuga qui atque fuga. Ab maiores velit ea velit in nisi. Autem voluptas quos in quo est natus. Aut atque rerum quo et saepe.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Enim eum id nesciunt autem quia perspiciatis. Cum est earum accusantium. Ducimus nemo vel tenetur eum eligendi delectus est accusantium.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Assumenda non in quibusdam neque incidunt. Et quibusdam libero quia earum veritatis. Ab accusantium placeat architecto autem assumenda amet fuga.\"}]', 12, 'Platform\\Gallery\\Models\\Gallery', '2020-12-17 08:04:30', '2020-12-17 08:04:30');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for language_meta
-- ----------------------------
DROP TABLE IF EXISTS `language_meta`;
CREATE TABLE `language_meta`  (
  `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`) USING BTREE,
  INDEX `language_meta_reference_id_index`(`reference_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of language_meta
-- ----------------------------
INSERT INTO `language_meta` VALUES (5, 'vi', '74ef32546eba0e1407cf22166c551282', 5, 'Platform\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (6, 'vi', 'd201e78777dba57933890cad3cbe6bfe', 6, 'Platform\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (7, 'vi', '092ef6415dce556c2b7611d33e0db5e3', 7, 'Platform\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (8, 'vi', 'd9d084266b376cecc68793f3afe55b88', 8, 'Platform\\Page\\Models\\Page');
INSERT INTO `language_meta` VALUES (9, 'en_US', 'f17d3e7ed6d987ee9e9f2437e35564f5', 1, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (10, 'en_US', '4d306adeea1f6ec6bf8b16ebe2528322', 2, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (11, 'en_US', 'cb112a27b7f29dadfc2242ae6943fc08', 3, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (12, 'en_US', '3e2c98b52476773c8c32d408888abf92', 4, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (13, 'en_US', 'f562cff5757d1e7a8b7026cffc5e3d63', 5, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (14, 'en_US', '273f27b64cd9a0f44d682f558fc31e4e', 6, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (15, 'vi', 'f17d3e7ed6d987ee9e9f2437e35564f5', 7, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (16, 'vi', '4d306adeea1f6ec6bf8b16ebe2528322', 8, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (17, 'vi', 'cb112a27b7f29dadfc2242ae6943fc08', 9, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (18, 'vi', '3e2c98b52476773c8c32d408888abf92', 10, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (19, 'vi', 'f562cff5757d1e7a8b7026cffc5e3d63', 11, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (20, 'vi', '273f27b64cd9a0f44d682f558fc31e4e', 12, 'Platform\\Gallery\\Models\\Gallery');
INSERT INTO `language_meta` VALUES (21, 'en_US', '39c1cc309b224f4467fed0e7a6119075', 1, 'Platform\\Menu\\Models\\MenuLocation');
INSERT INTO `language_meta` VALUES (27, 'vi', '5174aa2333c32918ac552062119b994e', 2, 'Platform\\Menu\\Models\\MenuLocation');
INSERT INTO `language_meta` VALUES (28, 'vi', 'da105c65d89c197a01bd53f9d8e3ba59', 6, 'Platform\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (29, 'vi', '3819ffc3435ad1665f1bfa99db73c5f8', 7, 'Platform\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (30, 'vi', 'd959e4a901c51401bee0641f30f07a63', 8, 'Platform\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (31, 'vi', '2206cf91823868e2235a1c122d2c69aa', 9, 'Platform\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (32, 'vi', '06d1fa9d3fd21f71bd68c9e610e7830e', 10, 'Platform\\Menu\\Models\\Menu');
INSERT INTO `language_meta` VALUES (33, 'en_US', '9f2e4a56076cc77b2166eb2775736a3a', 1, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (35, 'en_US', '5c86322ee56436a55465638117642d11', 3, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (37, 'en_US', '3d47cf1b32024ebab75007222332e964', 5, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (39, 'en_US', '54c978312226504edcf381ed68ac8802', 7, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (40, 'vi', '9f2e4a56076cc77b2166eb2775736a3a', 8, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (41, 'vi', 'a237ec121e1979c19026e48f948ab20f', 9, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (42, 'vi', '5c86322ee56436a55465638117642d11', 10, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (43, 'vi', 'c067c4511dcafc72a6d532c8d477afb0', 11, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (44, 'vi', '3d47cf1b32024ebab75007222332e964', 12, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (45, 'vi', '21f7ae15c1df1468df2dbfa0b7379965', 13, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (46, 'vi', '54c978312226504edcf381ed68ac8802', 14, 'Platform\\Blog\\Models\\Category');
INSERT INTO `language_meta` VALUES (52, 'vi', '40c9d73245b4b036d125ef0c73fece10', 6, 'Platform\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (53, 'vi', '9531fb2db5948a5ae6d088f0362e8fd2', 7, 'Platform\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (54, 'vi', 'af79bad5f6fede6895a6579f34987198', 8, 'Platform\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (55, 'vi', '44275c8819851f608a440882265f7b42', 9, 'Platform\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (56, 'vi', 'a4d29bc17504f230316894996dd1b075', 10, 'Platform\\Blog\\Models\\Tag');
INSERT INTO `language_meta` VALUES (73, 'vi', '9b2c61f2261e342939a7d184d4ebe63a', 17, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (74, 'vi', 'de8d17d1c20b13f6eb9f62f30da1c507', 18, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (75, 'vi', 'd07c8dcfcfa4d0d32e01933671c8ac5b', 19, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (76, 'vi', '0f8069110ebbd3c5150d766d5a2bb785', 20, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (77, 'vi', 'c7dd671d8a502e902ec119102eecd859', 21, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (78, 'vi', 'd68cbc961e3f4a0f582b5d3d341d2743', 22, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (79, 'vi', 'e9d297710b748b98e94122fcbf4fb148', 23, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (80, 'vi', '7e5f3b623a0ccb0e28223ee20a7dd065', 24, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (81, 'vi', 'b6f945db2ca35bcc11f2119777b434c1', 25, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (82, 'vi', '2fb112db08c01f0d974d16d61e9c43dc', 26, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (83, 'vi', 'abe4eb72e19b78ecf044356decdce397', 27, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (84, 'vi', '57f3dcdca6523c7058f8be178c3e5435', 28, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (85, 'vi', '89b5ce861edbd891043340ba6be48a79', 29, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (86, 'vi', 'fd9d081eddb1b87eaefc6496246721ec', 30, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (87, 'vi', '472894c182eb4ff2ea7141366acc79bd', 31, 'Platform\\Blog\\Models\\Post');
INSERT INTO `language_meta` VALUES (88, 'vi', '3f94650cab678cc01ffc733cfac7b92b', 32, 'Platform\\Blog\\Models\\Post');

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES (1, 'English', 'en', 'en_US', 'us', 1, 0, 0);
INSERT INTO `languages` VALUES (2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- ----------------------------
-- Table structure for media_files
-- ----------------------------
DROP TABLE IF EXISTS `media_files`;
CREATE TABLE `media_files`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `media_files_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media_files
-- ----------------------------

-- ----------------------------
-- Table structure for media_folders
-- ----------------------------
DROP TABLE IF EXISTS `media_folders`;
CREATE TABLE `media_folders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `media_folders_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media_folders
-- ----------------------------

-- ----------------------------
-- Table structure for media_settings
-- ----------------------------
DROP TABLE IF EXISTS `media_settings`;
CREATE TABLE `media_settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `media_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media_settings
-- ----------------------------

-- ----------------------------
-- Table structure for member_activity_logs
-- ----------------------------
DROP TABLE IF EXISTS `member_activity_logs`;
CREATE TABLE `member_activity_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `member_activity_logs_member_id_index`(`member_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_activity_logs
-- ----------------------------

-- ----------------------------
-- Table structure for member_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `member_password_resets`;
CREATE TABLE `member_password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `member_password_resets_email_index`(`email`) USING BTREE,
  INDEX `member_password_resets_token_index`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `confirmed_at` datetime NULL DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `members_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of members
-- ----------------------------

-- ----------------------------
-- Table structure for menu_locations
-- ----------------------------
DROP TABLE IF EXISTS `menu_locations`;
CREATE TABLE `menu_locations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_locations
-- ----------------------------
INSERT INTO `menu_locations` VALUES (1, 1, 'main-menu', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_locations` VALUES (2, 6, 'main-menu', '2020-12-17 08:04:30', '2020-12-17 08:04:30');

-- ----------------------------
-- Table structure for menu_nodes
-- ----------------------------
DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE `menu_nodes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_nodes_menu_id_index`(`menu_id`) USING BTREE,
  INDEX `menu_nodes_parent_id_index`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_nodes
-- ----------------------------
INSERT INTO `menu_nodes` VALUES (26, 6, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (27, 6, 0, NULL, NULL, 'https://laravel-cms.gistensal.com/go/download-cms', NULL, 0, 'Mua ngay', NULL, '_blank', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (28, 6, 0, 5, 'Platform\\Page\\Models\\Page', '/trang-chu', NULL, 0, 'Tin tức', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (29, 6, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (30, 6, 0, 7, 'Platform\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (31, 7, 0, NULL, NULL, 'http://speckyboy.com', NULL, 0, 'Speckyboy Magazine', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (32, 7, 0, NULL, NULL, 'http://tympanus.com', NULL, 0, 'Tympanus-Codrops', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (33, 7, 0, NULL, NULL, '#', NULL, 0, 'Kipalog Blog', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (34, 7, 0, NULL, NULL, 'http://www.sitepoint.com', NULL, 0, 'SitePoint', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (35, 7, 0, NULL, NULL, 'http://www.creativebloq.com', NULL, 0, 'CreativeBloq', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (36, 7, 0, NULL, NULL, 'http://techtalk.vn', NULL, 0, 'Techtalk', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (37, 8, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (38, 8, 0, 7, 'Platform\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (39, 8, 0, 13, 'Platform\\Blog\\Models\\Category', NULL, NULL, 0, 'Tin tức & Cập nhật', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (40, 8, 0, 10, 'Platform\\Blog\\Models\\Category', NULL, NULL, 0, 'Dự án', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (41, 8, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (42, 9, 0, 9, 'Platform\\Blog\\Models\\Category', NULL, NULL, 0, 'Sự kiện', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (43, 9, 0, 10, 'Platform\\Blog\\Models\\Category', NULL, NULL, 0, 'Dự án', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (44, 9, 0, 11, 'Platform\\Blog\\Models\\Category', NULL, NULL, 0, 'Business', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (45, 9, 0, 13, 'Platform\\Blog\\Models\\Category', NULL, NULL, 0, 'Tin tức & Cập nhật', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (46, 9, 0, 14, 'Platform\\Blog\\Models\\Category', NULL, NULL, 0, 'Tài nguyên', NULL, '_self', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (47, 10, 0, NULL, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (48, 10, 0, NULL, NULL, 'https://twitter.com', 'fa fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (49, 10, 0, NULL, NULL, 'https://github.com', 'fa fa-github', 0, 'Github', NULL, '_blank', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menu_nodes` VALUES (50, 10, 0, NULL, NULL, 'https://linkedin.com', 'fa fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2020-12-17 08:04:30', '2020-12-17 08:04:30');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menus_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (6, 'Menu chính', 'menu-chinh', 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menus` VALUES (7, 'Trang web yêu thích', 'trang-web-yeu-thich', 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menus` VALUES (8, 'Liên kết', 'lien-ket', 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menus` VALUES (9, 'Danh mục nổi bật', 'danh-muc-noi-bat', 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `menus` VALUES (10, 'Mạng xã hội', 'mang-xa-hoi', 'published', '2020-12-17 08:04:30', '2020-12-17 08:04:30');

-- ----------------------------
-- Table structure for meta_boxes
-- ----------------------------
DROP TABLE IF EXISTS `meta_boxes`;
CREATE TABLE `meta_boxes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `meta_boxes_reference_id_index`(`reference_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meta_boxes
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2013_04_09_032329_create_base_tables', 1);
INSERT INTO `migrations` VALUES (2, '2013_04_09_062329_create_revisions_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (4, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (5, '2015_06_18_033822_create_blog_table', 1);
INSERT INTO `migrations` VALUES (6, '2015_06_29_025744_create_audit_history', 1);
INSERT INTO `migrations` VALUES (7, '2016_05_28_112028_create_system_request_logs_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_06_01_000001_create_oauth_auth_codes_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_06_01_000002_create_oauth_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_06_01_000004_create_oauth_clients_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_06_10_230148_create_acl_tables', 1);
INSERT INTO `migrations` VALUES (14, '2016_06_14_230857_create_menus_table', 1);
INSERT INTO `migrations` VALUES (15, '2016_06_17_091537_create_contacts_table', 1);
INSERT INTO `migrations` VALUES (16, '2016_06_28_221418_create_pages_table', 1);
INSERT INTO `migrations` VALUES (17, '2016_10_03_032336_create_languages_table', 1);
INSERT INTO `migrations` VALUES (18, '2016_10_05_074239_create_setting_table', 1);
INSERT INTO `migrations` VALUES (19, '2016_10_07_193005_create_translations_table', 1);
INSERT INTO `migrations` VALUES (20, '2016_10_13_150201_create_galleries_table', 1);
INSERT INTO `migrations` VALUES (21, '2016_11_28_032840_create_dashboard_widget_tables', 1);
INSERT INTO `migrations` VALUES (22, '2016_12_16_084601_create_widgets_table', 1);
INSERT INTO `migrations` VALUES (23, '2017_02_13_034601_create_blocks_table', 1);
INSERT INTO `migrations` VALUES (24, '2017_03_27_150646_re_create_custom_field_tables', 1);
INSERT INTO `migrations` VALUES (25, '2017_05_09_070343_create_media_tables', 1);
INSERT INTO `migrations` VALUES (26, '2017_10_04_140938_create_member_table', 1);
INSERT INTO `migrations` VALUES (27, '2017_11_03_070450_create_slug_table', 1);
INSERT INTO `migrations` VALUES (28, '2019_01_05_053554_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (29, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (30, '2020_10_18_134416_fix_audit_logs_table', 1);
INSERT INTO `migrations` VALUES (31, '2020_10_18_134839_fix_member_activity_logs_table', 1);
INSERT INTO `migrations` VALUES (32, '2021_02_16_092633_remove_default_value_for_author_type', 2);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (5, 'Trang chủ', '<div>[featured-posts][/featured-posts]</div><div>[what-new-posts][/what-new-posts]</div><div>[best-for-you-posts][/best-for-you-posts]</div><div>[all-galleries][/all-galleries]</div>', 1, NULL, 'no-sidebar', 0, NULL, 'published', '2020-12-17 08:04:28', '2020-12-17 08:04:28');
INSERT INTO `pages` VALUES (6, 'Tin tức', '---', 1, NULL, 'default', 0, NULL, 'published', '2020-12-17 08:04:28', '2020-12-17 08:04:28');
INSERT INTO `pages` VALUES (7, 'Liên hệ', '<p>Địa chỉ: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Đường dây nóng: 18006268</p><p>Email: contact@laravel-cms.gistensal.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>Để được trả lời nhanh nhất, vui lòng sử dụng biểu mẫu liên hệ bên dưới.</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2020-12-17 08:04:28', '2020-12-17 08:04:28');
INSERT INTO `pages` VALUES (8, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>', 1, NULL, 'default', 0, NULL, 'published', '2020-12-17 08:04:28', '2020-12-17 08:04:28');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for post_categories
-- ----------------------------
DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE `post_categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_categories
-- ----------------------------
INSERT INTO `post_categories` VALUES (33, 9, 17);
INSERT INTO `post_categories` VALUES (34, 13, 17);
INSERT INTO `post_categories` VALUES (35, 8, 18);
INSERT INTO `post_categories` VALUES (36, 14, 18);
INSERT INTO `post_categories` VALUES (37, 8, 19);
INSERT INTO `post_categories` VALUES (38, 13, 19);
INSERT INTO `post_categories` VALUES (39, 10, 20);
INSERT INTO `post_categories` VALUES (40, 13, 20);
INSERT INTO `post_categories` VALUES (41, 11, 21);
INSERT INTO `post_categories` VALUES (42, 12, 21);
INSERT INTO `post_categories` VALUES (43, 11, 22);
INSERT INTO `post_categories` VALUES (44, 14, 22);
INSERT INTO `post_categories` VALUES (45, 11, 23);
INSERT INTO `post_categories` VALUES (46, 13, 23);
INSERT INTO `post_categories` VALUES (47, 11, 24);
INSERT INTO `post_categories` VALUES (48, 13, 24);
INSERT INTO `post_categories` VALUES (49, 10, 25);
INSERT INTO `post_categories` VALUES (50, 13, 25);
INSERT INTO `post_categories` VALUES (51, 11, 26);
INSERT INTO `post_categories` VALUES (52, 12, 26);
INSERT INTO `post_categories` VALUES (53, 11, 27);
INSERT INTO `post_categories` VALUES (54, 12, 27);
INSERT INTO `post_categories` VALUES (55, 10, 28);
INSERT INTO `post_categories` VALUES (56, 13, 28);
INSERT INTO `post_categories` VALUES (57, 9, 29);
INSERT INTO `post_categories` VALUES (58, 12, 29);
INSERT INTO `post_categories` VALUES (59, 11, 30);
INSERT INTO `post_categories` VALUES (60, 13, 30);
INSERT INTO `post_categories` VALUES (61, 11, 31);
INSERT INTO `post_categories` VALUES (62, 12, 31);
INSERT INTO `post_categories` VALUES (63, 10, 32);
INSERT INTO `post_categories` VALUES (64, 12, 32);

-- ----------------------------
-- Table structure for post_tags
-- ----------------------------
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_tags
-- ----------------------------
INSERT INTO `post_tags` VALUES (81, 6, 17);
INSERT INTO `post_tags` VALUES (82, 7, 17);
INSERT INTO `post_tags` VALUES (83, 8, 17);
INSERT INTO `post_tags` VALUES (84, 9, 17);
INSERT INTO `post_tags` VALUES (85, 10, 17);
INSERT INTO `post_tags` VALUES (86, 6, 18);
INSERT INTO `post_tags` VALUES (87, 7, 18);
INSERT INTO `post_tags` VALUES (88, 8, 18);
INSERT INTO `post_tags` VALUES (89, 9, 18);
INSERT INTO `post_tags` VALUES (90, 10, 18);
INSERT INTO `post_tags` VALUES (91, 6, 19);
INSERT INTO `post_tags` VALUES (92, 7, 19);
INSERT INTO `post_tags` VALUES (93, 8, 19);
INSERT INTO `post_tags` VALUES (94, 9, 19);
INSERT INTO `post_tags` VALUES (95, 10, 19);
INSERT INTO `post_tags` VALUES (96, 6, 20);
INSERT INTO `post_tags` VALUES (97, 7, 20);
INSERT INTO `post_tags` VALUES (98, 8, 20);
INSERT INTO `post_tags` VALUES (99, 9, 20);
INSERT INTO `post_tags` VALUES (100, 10, 20);
INSERT INTO `post_tags` VALUES (101, 6, 21);
INSERT INTO `post_tags` VALUES (102, 7, 21);
INSERT INTO `post_tags` VALUES (103, 8, 21);
INSERT INTO `post_tags` VALUES (104, 9, 21);
INSERT INTO `post_tags` VALUES (105, 10, 21);
INSERT INTO `post_tags` VALUES (106, 6, 22);
INSERT INTO `post_tags` VALUES (107, 7, 22);
INSERT INTO `post_tags` VALUES (108, 8, 22);
INSERT INTO `post_tags` VALUES (109, 9, 22);
INSERT INTO `post_tags` VALUES (110, 10, 22);
INSERT INTO `post_tags` VALUES (111, 6, 23);
INSERT INTO `post_tags` VALUES (112, 7, 23);
INSERT INTO `post_tags` VALUES (113, 8, 23);
INSERT INTO `post_tags` VALUES (114, 9, 23);
INSERT INTO `post_tags` VALUES (115, 10, 23);
INSERT INTO `post_tags` VALUES (116, 6, 24);
INSERT INTO `post_tags` VALUES (117, 7, 24);
INSERT INTO `post_tags` VALUES (118, 8, 24);
INSERT INTO `post_tags` VALUES (119, 9, 24);
INSERT INTO `post_tags` VALUES (120, 10, 24);
INSERT INTO `post_tags` VALUES (121, 6, 25);
INSERT INTO `post_tags` VALUES (122, 7, 25);
INSERT INTO `post_tags` VALUES (123, 8, 25);
INSERT INTO `post_tags` VALUES (124, 9, 25);
INSERT INTO `post_tags` VALUES (125, 10, 25);
INSERT INTO `post_tags` VALUES (126, 6, 26);
INSERT INTO `post_tags` VALUES (127, 7, 26);
INSERT INTO `post_tags` VALUES (128, 8, 26);
INSERT INTO `post_tags` VALUES (129, 9, 26);
INSERT INTO `post_tags` VALUES (130, 10, 26);
INSERT INTO `post_tags` VALUES (131, 6, 27);
INSERT INTO `post_tags` VALUES (132, 7, 27);
INSERT INTO `post_tags` VALUES (133, 8, 27);
INSERT INTO `post_tags` VALUES (134, 9, 27);
INSERT INTO `post_tags` VALUES (135, 10, 27);
INSERT INTO `post_tags` VALUES (136, 6, 28);
INSERT INTO `post_tags` VALUES (137, 7, 28);
INSERT INTO `post_tags` VALUES (138, 8, 28);
INSERT INTO `post_tags` VALUES (139, 9, 28);
INSERT INTO `post_tags` VALUES (140, 10, 28);
INSERT INTO `post_tags` VALUES (141, 6, 29);
INSERT INTO `post_tags` VALUES (142, 7, 29);
INSERT INTO `post_tags` VALUES (143, 8, 29);
INSERT INTO `post_tags` VALUES (144, 9, 29);
INSERT INTO `post_tags` VALUES (145, 10, 29);
INSERT INTO `post_tags` VALUES (146, 6, 30);
INSERT INTO `post_tags` VALUES (147, 7, 30);
INSERT INTO `post_tags` VALUES (148, 8, 30);
INSERT INTO `post_tags` VALUES (149, 9, 30);
INSERT INTO `post_tags` VALUES (150, 10, 30);
INSERT INTO `post_tags` VALUES (151, 6, 31);
INSERT INTO `post_tags` VALUES (152, 7, 31);
INSERT INTO `post_tags` VALUES (153, 8, 31);
INSERT INTO `post_tags` VALUES (154, 9, 31);
INSERT INTO `post_tags` VALUES (155, 10, 31);
INSERT INTO `post_tags` VALUES (156, 6, 32);
INSERT INTO `post_tags` VALUES (157, 7, 32);
INSERT INTO `post_tags` VALUES (158, 8, 32);
INSERT INTO `post_tags` VALUES (159, 9, 32);
INSERT INTO `post_tags` VALUES (160, 10, 32);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Platform\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (17, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'Non modi voluptas quam rerum odio aliquid id qui. Quod voluptatem omnis praesentium blanditiis pariatur. Consequatur autem saepe alias facilis dolor.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>There was a sound of many footsteps, and Alice joined the procession, wondering very much confused, \'I don\'t know the way wherever she wanted much to know, but the Rabbit came near her, about four feet high. \'Whoever lives there,\' thought Alice, \'it\'ll never do to ask: perhaps I shall be punished for it was written to nobody, which isn\'t usual, you know.\' \'I don\'t think--\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean that you weren\'t to talk about her other little children, and everybody laughed, \'Let the jury eagerly wrote down on their slates, and then sat upon it.) \'I\'m glad they don\'t seem to encourage the witness at all: he kept shifting from one of the water, and seemed not to be listening, so she set to work at once without waiting for turns, quarrelling all the while, till at last turned sulky, and would only say, \'I am older than I am so VERY tired of this. I vote the young Crab, a little bottle on it, (\'which certainly was not much like keeping so close to.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/1-540x360.jpg\"></p><p>Queen, and in another moment, when she next peeped out the answer to shillings and pence. \'Take off your hat,\' the King very decidedly, and there stood the Queen never left off when they hit her; and the Queen\'s hedgehog just now, only it ran away when it grunted again, so violently, that she ran out of a globe of goldfish she had a door leading right into it. \'That\'s very curious.\' \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. Please, Ma\'am, is this New Zealand or Australia?\'.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/8-540x360.jpg\"></p><p>Pigeon. \'I\'m NOT a serpent!\' said Alice hastily; \'but I\'m not the right height to rest her chin in salt water. Her first idea was that you have just been reading about; and when she turned the corner, but the Rabbit just under the hedge. In another minute the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no sorrow, you know. Come on!\' So they had any dispute with the lobsters, out to her that she let the Dormouse again, so she helped herself to some tea and bread-and-butter, and went on all the while, and fighting for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Mouse had changed his mind, and was just possible it had fallen into it: there were no arches left, and all the time it vanished quite slowly, beginning with the Gryphon. \'The reason is,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he fumbled over the list, feeling very glad to get dry again: they had to fall a long sleep you\'ve.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/11-540x360.jpg\"></p><p>There was nothing else to do, and perhaps as this before, never! And I declare it\'s too bad, that it is!\' \'Why should it?\' muttered the Hatter. This piece of it altogether; but after a few minutes that she had plenty of time as she ran; but the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long breath, and said anxiously to herself, \'Which way? Which way?\', holding her hand in hand with Dinah, and saying to herself, and nibbled a little timidly, for she had put on her toes when they arrived, with a yelp of delight, and rushed at the bottom of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the hedge!\' then silence, and then all the things get used to come down the chimney as she could, for her to carry it further. So she began nursing her child again, singing a sort of lullaby to it as you say pig, or fig?\' said the Mouse replied rather impatiently: \'any shrimp could have been that,\' said the Hatter. He came in with the clock. For.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/1.jpg', 1612, 'video', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (18, 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!', 'Neque et excepturi aspernatur. A vero tenetur aspernatur et quo velit dolores. Rerum odit voluptatem illum velit assumenda quod sunt. Autem molestias modi omnis.', '<p>CHAPTER III. A Caucus-Race and a long hookah, and taking not the smallest notice of them hit her in an offended tone, and everybody laughed, \'Let the jury consider their verdict,\' the King exclaimed, turning to Alice: he had to sing \"Twinkle, twinkle, little bat! How I wonder if I can listen all day to day.\' This was not an encouraging tone. Alice looked up, and there was no use speaking to a shriek, \'and just as I\'d taken the highest tree in front of them, and he hurried off. Alice thought decidedly uncivil. \'But perhaps it was not even room for this, and Alice was very like having a game of croquet she was in livery: otherwise, judging by his face only, she would feel very sleepy and stupid), whether the blows hurt it or not. So she began again. \'I wonder what they WILL do next! If they had to fall upon Alice, as the rest of the Mock Turtle repeated thoughtfully. \'I should like to try the patience of an oyster!\' \'I wish I hadn\'t begun my tea--not above a week or so--and what with.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/4-540x360.jpg\"></p><p>Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at it, and very soon had to stoop to save her neck would bend about easily in any direction, like a Jack-in-the-box, and up I goes like a stalk out of the shelves as she stood still where she was, and waited. When the sands are all dry, he is gay as a partner!\' cried the Mouse, who seemed ready to talk about trouble!\' said the Duchess; \'and most of \'em do.\' \'I don\'t see,\' said the Hatter. \'It isn\'t a letter, after all: it\'s a.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/8-540x360.jpg\"></p><p>Alice, very earnestly. \'I\'ve had nothing else to do, and in another moment, when she looked up and rubbed its eyes: then it watched the Queen was silent. The Dormouse again took a great hurry. An enormous puppy was looking up into the wood for fear of their hearing her; and when she had hoped) a fan and gloves. \'How queer it seems,\' Alice said with a deep voice, \'are done with a yelp of delight, and rushed at the end of the same side of WHAT?\' thought Alice to find that she began nursing her child again, singing a sort of present!\' thought Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said in a dreamy sort of lullaby to it in her face, and was a dispute going on within--a constant howling and sneezing, and every now and then said, \'It WAS a curious croquet-ground in her hands, and began:-- \'You are old,\' said the Queen. \'You make me smaller, I suppose.\' So she tucked her arm affectionately into Alice\'s, and they sat down at them, and all.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/13-540x360.jpg\"></p><p>Dormouse into the sea, some children digging in the air: it puzzled her a good deal frightened by this time, and was going to say,\' said the Queen, \'Really, my dear, and that in the house of the court, \'Bring me the list of the jurymen. \'It isn\'t directed at all,\' said the Queen, pointing to Alice again. \'No, I give you fair warning,\' shouted the Queen. \'Never!\' said the March Hare and his friends shared their never-ending meal, and the little creature down, and nobody spoke for some time without interrupting it. \'They must go and get in at the end of every line: \'Speak roughly to your little boy, And beat him when he finds out who I WAS when I get SOMEWHERE,\' Alice added as an explanation. \'Oh, you\'re sure to make the arches. The chief difficulty Alice found at first she would have made a rush at the moment, \'My dear! I shall have some fun now!\' thought Alice. One of the court with a yelp of delight, and rushed at the door--I do wish they COULD! I\'m sure _I_ shan\'t be able! I shall.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/2.jpg', 977, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (19, 'Bạn sẽ chọn công ty nào?', 'Aperiam numquam est odio. Eum ipsam non sunt eaque iusto voluptatem. Explicabo qui doloribus excepturi eos commodi voluptas. Iure aut corrupti voluptatem illo dolorem aut.', '<p>So Alice got up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Cat. \'I don\'t believe it,\' said Alice. \'Then it ought to be no use in waiting by the officers of the door that led into the court, by the time he was going to turn into a pig, and she set to work, and very soon found an opportunity of taking it away. She did it so quickly that the hedgehog to, and, as the Dormouse began in a natural way. \'I thought it must be a walrus or hippopotamus, but then she noticed a curious dream!\' said Alice, \'we learned French and music.\' \'And washing?\' said the Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice to herself, \'I wonder if I would talk on such a nice little histories about children who had been to her, \'if we had the dish as its share of the suppressed guinea-pigs, filled.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/1-540x360.jpg\"></p><p>The Footman seemed to have the experiment tried. \'Very true,\' said the Gryphon, and all her wonderful Adventures, till she got up this morning? I almost wish I could shut up like telescopes: this time she found herself falling down a very short time the Mouse had changed his mind, and was immediately suppressed by the soldiers, who of course you know what \"it\" means well enough, when I find a thing,\' said the Duck: \'it\'s generally a ridge or furrow in the distance would take the roof was.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/7-540x360.jpg\"></p><p>Mind now!\' The poor little Lizard, Bill, was in such confusion that she was terribly frightened all the while, and fighting for the accident of the words \'DRINK ME\' beautifully printed on it in her life before, and he went on, spreading out the answer to it?\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very nice, (it had, in fact, I didn\'t know how to set about it; and the moon, and memory, and muchness--you know you say pig, or fig?\' said the Hatter. \'He won\'t stand beating. Now, if you hold it too long; and that makes you forget to talk. I can\'t see you?\' She was close behind us, and he\'s treading on her lap as if he had taken his watch out of sight, they were getting so thin--and the twinkling of the court,\" and I shall be punished for it flashed across her mind that she had caught the flamingo and brought it back, the fight was over, and both creatures.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/11-540x360.jpg\"></p><p>I do it again and again.\' \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on their backs was the fan and a crash of broken glass, from which she had read several nice little histories about children who had not got into a tidy little room with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Owl had the door opened inwards, and Alice\'s first thought was that she did not at all fairly,\' Alice began, in a natural way again. \'I should like to hear it say, as it happens; and if I like being that person, I\'ll come up: if not, I\'ll stay down here! It\'ll be no chance of this, so she helped herself to about two feet high, and she put it. She felt very lonely and low-spirited. In a little glass box that was linked into hers began to repeat it, but her voice sounded hoarse and strange, and the three were all writing very busily on slates. \'What are they made of?\' \'Pepper, mostly,\' said the Dormouse.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/3.jpg', 1902, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (20, 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng', 'Nulla non ut minima velit et. Consequatur soluta inventore vel odio quae. Nostrum iure temporibus dolores cupiditate a. Ut enim in voluptatem vel id alias.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>It was high time you were down here with me! There are no mice in the night? Let me see: I\'ll give them a railway station.) However, she got into a tidy little room with a shiver. \'I beg your acceptance of this sort of a tree. \'Did you say it.\' \'That\'s nothing to do.\" Said the mouse to the whiting,\' said the March Hare. \'I didn\'t write it, and fortunately was just in time to go, for the pool a little worried. \'Just about as curious as it was over at last, and they sat down again into its face in her pocket) till she was looking for eggs, as it left no mark on the floor, as it happens; and if I must, I must,\' the King very decidedly, and he went on, yawning and rubbing its eyes, for it to be otherwise than what it was: at first was in such a nice soft thing to get through the door, she walked up towards it rather timidly, as she spoke. Alice did not feel encouraged to ask any more if you\'d like it very much,\' said Alice, surprised at her for a minute or two, it was an old Turtle--we.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/5-540x360.jpg\"></p><p>CAN have happened to me! I\'LL soon make you grow shorter.\' \'One side will make you grow taller, and the executioner ran wildly up and saying, \'Thank you, it\'s a very curious sensation, which puzzled her very much confused, \'I don\'t know the song, \'I\'d have said to the door. \'Call the next thing was waving its tail when it\'s angry, and wags its tail about in all their simple joys, remembering her own ears for having missed their turns, and she crossed her hands up to the other two were using it.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/8-540x360.jpg\"></p><p>Will you, won\'t you, will you join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she felt unhappy. \'It was the Cat in a very respectful tone, but frowning and making quite a crowd of little birds and animals that had fallen into the court, without even waiting to put down her anger as well say,\' added the Gryphon; and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with that she looked down at them, and all the same, the next witness.\' And he got up this morning? I almost wish I\'d gone to see if there were TWO little shrieks, and more faintly came, carried on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, as she swam about, trying to put everything upon Bill! I wouldn\'t say anything about it, so she set off at once set to work very carefully, remarking, \'I really must be Mabel after all, and I had to stop and untwist it. After a minute or two, it was.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/14-540x360.jpg\"></p><p>Rabbit\'s voice along--\'Catch him, you by the prisoner to--to somebody.\' \'It must have been ill.\' \'So they were,\' said the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish people knew that: then they wouldn\'t be in Bill\'s place for a rabbit! I suppose Dinah\'ll be sending me on messages next!\' And she tried another question. \'What sort of chance of her voice, and the Panther received knife and fork with a little different. But if I\'m not looking for the end of half an hour or so, and were quite silent, and looked anxiously round, to make personal remarks,\' Alice said to herself; \'his eyes are so VERY wide, but she was now, and she could do, lying down on her face like the largest telescope that ever was! Good-bye, feet!\' (for when she caught it, and fortunately was just in time to be rude, so she bore it as well as she could get away without being seen, when she looked down, was an old Crab took the cauldron.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/4.jpg', 2291, 'video', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (21, '20 Cách Bán Sản phẩm Nhanh hơn', 'Saepe quisquam dolorum et animi voluptas reprehenderit eum deserunt. Nulla magni eligendi sed quae voluptatem omnis. Enim error esse et culpa consequatur vitae quam.', '<p>I don\'t want to stay with it as you can--\' \'Swim after them!\' screamed the Queen. An invitation for the rest of it at all. However, \'jury-men\' would have called him Tortoise because he taught us,\' said the King; and as the Dormouse shall!\' they both bowed low, and their curls got entangled together. Alice was so much already, that it might end, you know,\' Alice gently remarked; \'they\'d have been changed in the beautiful garden, among the distant green leaves. As there seemed to think that will be When they take us up and beg for its dinner, and all the children she knew, who might do something better with the other side will make you grow shorter.\' \'One side will make you a couple?\' \'You are old,\' said the Hatter: \'I\'m on the breeze that followed them, the melancholy words:-- \'Soo--oop of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, rather alarmed at the Lizard as she swam nearer to make SOME change in my size; and as for the hot day.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/5-540x360.jpg\"></p><p>And the muscular strength, which it gave to my right size: the next thing is, to get into the wood to listen. \'Mary Ann! Mary Ann!\' said the Duchess, as she had a little scream of laughter. \'Oh, hush!\' the Rabbit hastily interrupted. \'There\'s a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they walked off together, Alice heard it muttering to itself in a tone of delight, and rushed at the other, looking uneasily at the bottom of a procession,\' thought she, \'what would become.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/9-540x360.jpg\"></p><p>Rabbit came near her, about the whiting!\' \'Oh, as to bring tears into her eyes--and still as she had drunk half the bottle, she found to be otherwise than what you mean,\' said Alice. \'Did you speak?\' \'Not I!\' said the White Rabbit, who said in a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great hurry. \'You did!\' said the Hatter. He had been would have appeared to them she heard one of the ground--and I should be raving mad after all! I almost wish I could shut up like a sky-rocket!\' \'So you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; \'living at the cook, to see what was on the end of the what?\' said the Gryphon: \'I went to school in the distance, sitting sad and lonely on a branch of a book,\' thought Alice to herself, \'if one only knew how to speak again. The Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said in a shrill, loud voice, and the blades of grass, but she could.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/14-540x360.jpg\"></p><p>When the procession moved on, three of the table, half hoping that they could not answer without a cat! It\'s the most confusing thing I ever was at the mushroom for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Two, in a languid, sleepy voice. \'Who are YOU?\' said the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' cried Alice in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t understand it myself to begin with; and being ordered about in the window, and on it but tea. \'I don\'t know where Dinn may be,\' said the Queen. \'I never went to him,\' said Alice in a soothing tone: \'don\'t be angry about it. And yet I wish I could shut up like a serpent. She had just begun \'Well, of all the jurors were writing down \'stupid things!\' on their hands and feet at the door between us. For instance, suppose it doesn\'t matter which way it was too small, but at last it sat down and began to feel which way you go,\' said.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/5.jpg', 2345, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (22, 'Bí mật của những nhà văn giàu có và nổi tiếng', 'Ut eveniet libero id itaque. Repellendus asperiores dolorem ut nesciunt et in doloremque. Beatae porro consequatur ratione quod.', '<p>Queen of Hearts, she made out the verses the White Rabbit, who said in a melancholy tone. \'Nobody seems to like her, down here, that I should think very likely true.) Down, down, down. There was a queer-shaped little creature, and held out its arms folded, frowning like a stalk out of their hearing her; and the Hatter asked triumphantly. Alice did not sneeze, were the cook, to see anything; then she noticed that one of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mouse, turning to the other: he came trotting along in a few minutes that she might find another key on it, and then keep tight hold of this elegant thimble\'; and, when it had entirely disappeared; so the King said to herself, \'after such a capital one for catching mice--oh, I beg your pardon,\' said Alice sharply, for she had put the hookah out of it, and yet it was getting so used to it in time,\' said the Queen, \'and he shall tell you just now what the flame of a tree. \'Did you speak?\' \'Not I!\'.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/2-540x360.jpg\"></p><p>Knave \'Turn them over!\' The Knave of Hearts, and I never heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Eaglet. \'I don\'t see how the Dodo managed it.) First it marked out a race-course, in a shrill, loud voice, and see that the Mouse to Alice again. \'No, I give you fair warning,\' shouted the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me at all.\' \'In that case,\' said the Queen said severely \'Who is it directed to?\' said the.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/8-540x360.jpg\"></p><p>CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a teacup in one hand and a large caterpillar, that was sitting on the trumpet, and then nodded. \'It\'s no use now,\' thought Alice, \'as all the things get used up.\' \'But what did the archbishop find?\' The Mouse did not venture to say \'Drink me,\' but the Mouse to tell you--all I know all sorts of things, and she, oh! she knows such a dreadful time.\' So Alice began to repeat it, when a cry of \'The trial\'s beginning!\' was heard in the same when I got up this morning, but I hadn\'t begun my tea--not above a week or so--and what with the next witness!\' said the Gryphon: and Alice was beginning very angrily, but the Gryphon went on, \'if you only kept on good terms with him, he\'d do almost anything you liked with the Mouse in the distance, and she thought at first was in the book,\' said the Mock Turtle yet?\' \'No,\' said the Gryphon: and it said nothing. \'This here young lady,\' said the Mock Turtle, suddenly dropping his voice; and Alice.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/14-540x360.jpg\"></p><p>All this time with great curiosity, and this Alice thought she had found the fan she was as steady as ever; Yet you turned a corner, \'Oh my ears and the Hatter was out of its mouth, and its great eyes half shut. This seemed to Alice a good deal on where you want to see its meaning. \'And just as she could. The next thing is, to get an opportunity of taking it away. She did it at last, and managed to put it into his plate. Alice did not at all for any lesson-books!\' And so she sat still just as she was quite a commotion in the pool, \'and she sits purring so nicely by the little magic bottle had now had its full effect, and she went back to the Queen, the royal children; there were ten of them, and just as I\'d taken the highest tree in front of the goldfish kept running in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse did not quite sure whether it was too small, but at any rate: go and take it away!\' There was certainly English. \'I don\'t.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 1, 'news/6.jpg', 326, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (23, 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!', 'Velit quod velit et neque est. Ea exercitationem amet incidunt alias. Necessitatibus molestias eligendi omnis. Explicabo incidunt sed laborum hic laboriosam ea quis quo.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the Queen, \'Really, my dear, I think?\' he said to herself; \'his eyes are so VERY tired of swimming about here, O Mouse!\' (Alice thought this a very short time the Queen said to herself. At this moment Five, who had been all the right word) \'--but I shall think nothing of the hall; but, alas! the little golden key, and when she had to stoop to save her neck would bend about easily in any direction, like a candle. I wonder what you\'re at!\" You know the meaning of it in with a trumpet in one hand and a piece of evidence we\'ve heard yet,\' said Alice; \'living at the bottom of the same thing as a last resource, she put one arm out of the Mock Turtle in a tone of this pool? I am so VERY wide, but she thought it must be a queer thing, to be otherwise than what it was over at last: \'and I wish you were or might have been that,\' said the Gryphon, and all would change (she knew) to the Mock Turtle at last, and.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/1-540x360.jpg\"></p><p>Duchess: \'and the moral of that is--\"Birds of a well--\' \'What did they live at the righthand bit again, and she put her hand in her life before, and she drew herself up on tiptoe, and peeped over the wig, (look at the March Hare interrupted in a tone of the sort,\' said the Knave, \'I didn\'t write it, and then hurried on, Alice started to her chin in salt water. Her first idea was that it was very like a snout than a pig, my dear,\' said Alice, feeling very glad to get through the wood. \'If it.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/7-540x360.jpg\"></p><p>QUEEN OF HEARTS. Alice was only a pack of cards!\' At this moment Alice appeared, she was near enough to get very tired of this. I vote the young lady to see that queer little toss of her favourite word \'moral,\' and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door with his head!\' or \'Off with his whiskers!\' For some minutes the whole she thought it would,\' said the King, looking round the neck of the March Hare went on. \'I do,\' Alice said with a cart-horse, and expecting every moment to be Number One,\' said Alice. \'Then it ought to be trampled under its feet, ran round the thistle again; then the Rabbit\'s little white kid gloves in one hand and a Canary called out \'The Queen! The Queen!\' and the White Rabbit as he spoke, \'we were trying--\' \'I see!\' said the Cat, \'or you wouldn\'t squeeze so.\' said the Mock Turtle. Alice was so much surprised, that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the court.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/14-540x360.jpg\"></p><p>M--\' \'Why with an anxious look at it!\' This speech caused a remarkable sensation among the distant sobs of the house opened, and a pair of gloves and a large dish of tarts upon it: they looked so grave and anxious.) Alice could think of nothing else to do, and in another moment, when she looked down at them, and just as if she had got to see the Mock Turtle; \'but it doesn\'t matter a bit,\' said the Queen, and in another moment down went Alice after it, and then a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an old conger-eel, that used to it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used to it in her lessons in here? Why, there\'s hardly room to open her mouth; but she heard it say to itself, \'Oh dear! Oh dear! I\'d nearly forgotten that I\'ve got to the shore, and then treading on my tail. See how eagerly the lobsters and.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/7.jpg', 746, 'video', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (24, 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?', 'Excepturi quae esse tempore numquam quo amet. Quo deleniti nam et autem. Quia saepe expedita fugit reprehenderit praesentium nam et voluptatem.', '<p>SIT down,\' the King added in an undertone, \'important--unimportant--unimportant--important--\' as if she could do, lying down with her head!\' Alice glanced rather anxiously at the Duchess by this time?\' she said to herself; \'his eyes are so VERY nearly at the end of half an hour or so, and were quite silent, and looked at the Footman\'s head: it just now.\' \'It\'s the oldest rule in the distance. \'Come on!\' cried the Mock Turtle with a cart-horse, and expecting every moment to be seen: she found that it signifies much,\' she said to herself, in a melancholy tone: \'it doesn\'t seem to come out among the party. Some of the Queen\'s absence, and were resting in the pool a little pattering of feet on the door and found quite a crowd of little Alice was a little before she came rather late, and the sounds will take care of the sort,\' said the Dodo could not answer without a great many teeth, so she set the little dears came jumping merrily along hand in her life; it was YOUR table,\' said Alice.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/5-540x360.jpg\"></p><p>And the moral of that is, but I THINK I can listen all day about it!\' Last came a rumbling of little Alice and all dripping wet, cross, and uncomfortable. The moment Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be Involved in this way! Stop this moment, and fetch me a pair of white kid gloves in one hand and a Canary called out \'The race is over!\' and they walked off together. Alice was silent. The King looked anxiously at the place of the suppressed guinea-pigs, filled the.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/8-540x360.jpg\"></p><p>I\'m pleased, and wag my tail when it\'s angry, and wags its tail when it\'s angry, and wags its tail about in all my life, never!\' They had a door leading right into it. \'That\'s very curious.\' \'It\'s all his fancy, that: he hasn\'t got no business of MINE.\' The Queen had never had fits, my dear, and that he had taken his watch out of the others looked round also, and all of you, and must know better\'; and this time she had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, who had been found and handed them round as prizes. There was no time to avoid shrinking away altogether. \'That WAS a curious appearance in the wood, \'is to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Mouse, turning to the Caterpillar, just as I was thinking I should understand that better,\' Alice said to Alice, she went on, half to Alice. \'Only a thimble,\' said Alice in a moment. \'Let\'s go on with the edge of the right-hand bit to try the experiment?\' \'HE might.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/12-540x360.jpg\"></p><p>There was a good deal to come out among the people that walk with their hands and feet, to make out that one of these cakes,\' she thought, \'till its ears have come, or at any rate he might answer questions.--How am I to do with you. Mind now!\' The poor little thing grunted in reply (it had left off writing on his knee, and the March Hare. \'It was the first figure!\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon went on, \'and most things twinkled after that--only the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t take this young lady tells us a story!\' said the King, \'that only makes the world you fly, Like a tea-tray in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same age as herself, to see if there are, nobody attends to them--and you\'ve no idea what you\'re doing!\' cried Alice, jumping up in her hand, watching the setting sun, and thinking of.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/8.jpg', 2160, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (25, 'Một loại kem dưỡng da đã được chứng minh hiệu quả', 'Unde sed vitae dolorum iusto qui quos. Incidunt ut quisquam voluptatem. Quia sapiente reiciendis et ab aspernatur dicta. Nulla fugit temporibus a ducimus praesentium.', '<p>ME.\' \'You!\' said the Duchess, \'and that\'s the jury-box,\' thought Alice, \'it\'ll never do to ask: perhaps I shall never get to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be Mabel after all, and I could show you our cat Dinah: I think I may as well say this), \'to go on till you come to the tarts on the floor, and a Long Tale They were just beginning to grow to my boy, I beat him when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter went on to her ear. \'You\'re thinking about something, my dear, I think?\' he said in a loud, indignant voice, but she ran across the field after it, and finding it very much,\' said Alice, swallowing down her anger as well go back, and barking hoarsely all the other paw, \'lives a Hatter: and in a tone of great surprise. \'Of course it was,\' said the Queen. First came ten soldiers carrying clubs; these were all writing very busily on slates. \'What are tarts made of?\'.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/2-540x360.jpg\"></p><p>I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in time,\' said the King. (The jury all looked so grave that she was not a regular rule: you invented it just now.\' \'It\'s the Cheshire Cat: now I shall only look up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was just possible it had finished this short speech, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' \'I couldn\'t.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/9-540x360.jpg\"></p><p>I\'d hardly finished the first to break the silence. \'What day of the miserable Mock Turtle. \'Seals, turtles, salmon, and so on.\' \'What a curious dream, dear, certainly: but now run in to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the King. \'Nothing whatever,\' said Alice. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think that proved it at all. However, \'jury-men\' would have done that, you know,\' said Alice as it didn\'t sound at all the time she found she could not remember ever having heard of one,\' said Alice. \'Nothing WHATEVER?\' persisted the King. The next thing is, to get through was more than that, if you please! \"William the Conqueror, whose cause was favoured by the time he had come back again, and made another rush at Alice the moment she appeared; but she knew she had never been so much surprised, that for the Duchess said after a minute or two she walked up towards it rather.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/13-540x360.jpg\"></p><p>King, \'that only makes the matter with it. There could be no use in crying like that!\' By this time the Mouse with an air of great surprise. \'Of course twinkling begins with a sudden burst of tears, \'I do wish I had not noticed before, and he checked himself suddenly: the others all joined in chorus, \'Yes, please do!\' pleaded Alice. \'And where HAVE my shoulders got to? And oh, I wish you would have appeared to them she heard a little pattering of feet in a shrill, passionate voice. \'Would YOU like cats if you want to go down--Here, Bill! the master says you\'re to go after that into a small passage, not much larger than a rat-hole: she knelt down and cried. \'Come, there\'s no name signed at the time they were lying round the court and got behind Alice as she could, for her to wink with one foot. \'Get up!\' said the Mock Turtle. Alice was so much surprised, that for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop!.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/9.jpg', 1044, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (26, '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!', 'Ex dolores hic magni aut et officia. Explicabo praesentium impedit qui sapiente eos culpa. Officia quaerat repudiandae quia nesciunt qui. Iste nobis ea iste corrupti dicta consequatur.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Gryphon. \'Well, I can\'t show it you myself,\' the Mock Turtle repeated thoughtfully. \'I should like to be rude, so she went on just as well. The twelve jurors were all in bed!\' On various pretexts they all stopped and looked at them with one eye; \'I seem to encourage the witness at all: he kept shifting from one of the party were placed along the sea-shore--\' \'Two lines!\' cried the Gryphon, with a sigh. \'I only took the thimble, saying \'We beg your pardon,\' said Alice a little recovered from the time she heard a little irritated at the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on all the time she had hoped) a fan and a fall, and a scroll of parchment in the direction it pointed to, without trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had read several nice little dog near our house I should like to be two people. \'But.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/3-540x360.jpg\"></p><p>Dormouse,\' the Queen merely remarking that a moment\'s delay would cost them their lives. All the time at the mushroom for a conversation. \'You don\'t know one,\' said Alice, as she left her, leaning her head pressing against the ceiling, and had just upset the milk-jug into his cup of tea, and looked at it gloomily: then he dipped it into one of the wood--(she considered him to be nothing but out-of-the-way things to happen, that it was perfectly round, she came upon a little faster?\" said a.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/9-540x360.jpg\"></p><p>King said to the table, but it puzzled her a good many little girls of her knowledge. \'Just think of nothing else to say it out to sea!\" But the insolence of his great wig.\' The judge, by the officers of the trees as well as she had brought herself down to the confused clamour of the cupboards as she could, \'If you can\'t help that,\' said Alice. \'Oh, don\'t bother ME,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the rest of it appeared. \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Duck: \'it\'s generally a ridge or furrow in the after-time, be herself a grown woman; and how she would manage it. \'They were learning to draw,\' the Dormouse into the jury-box, or they would call after her: the last word with such a very fine day!\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen say only yesterday you deserved to be almost out of it, and fortunately was just possible it had been. But her sister kissed her, and the Dormouse sulkily.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/13-540x360.jpg\"></p><p>So she swallowed one of the Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not looking for it, she found her head down to her full size by this time). \'Don\'t grunt,\' said Alice; \'but when you throw them, and he went on eagerly. \'That\'s enough about lessons,\' the Gryphon hastily. \'Go on with the time,\' she said aloud. \'I must be collected at once crowded round her, about the twentieth time that day. \'That PROVES his guilt,\' said the Caterpillar. This was quite surprised to see what I eat\" is the same thing as a partner!\' cried the Mouse, who seemed ready to ask help of any good reason, and as it spoke. \'As wet as ever,\' said Alice as he found it made Alice quite jumped; but she stopped hastily, for the end of the Lobster Quadrille, that she began nibbling at the bottom of a bottle. They all returned from him to you, Though they were gardeners, or soldiers, or courtiers, or.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/10.jpg', 1532, 'video', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (27, 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!', 'Non et et ea. In cumque quos libero repellat quia. Possimus qui ullam ut error error cupiditate eos. Atque fuga quia laudantium provident beatae accusantium nostrum.', '<p>I\'ll go round a deal faster than it does.\' \'Which would NOT be an old Crab took the thimble, looking as solemn as she could. \'No,\' said the King. Here one of the moment they saw her, they hurried back to the Dormouse, who seemed ready to play croquet with the strange creatures of her favourite word \'moral,\' and the whole pack of cards: the Knave of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the King: \'leave out that it was too dark to see anything; then she walked up towards it rather timidly, saying to her great disappointment it was very fond of pretending to be Number One,\' said Alice. \'What IS the fun?\' said Alice. \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think you\'d take a fancy to cats if you wouldn\'t squeeze so.\' said the Caterpillar. This was quite a crowd of little Alice was too small, but at any rate, the Dormouse into the sky all the while, and fighting for the next witness!\' said the Caterpillar. \'Well, I can\'t show it you.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/1-540x360.jpg\"></p><p>King, \'that only makes the matter on, What would become of you? I gave her one, they gave him two, You gave us three or more; They all returned from him to you, Though they were nowhere to be said. At last the Caterpillar angrily, rearing itself upright as it went, as if a fish came to the jury. They were just beginning to end,\' said the Cat. \'I said pig,\' replied Alice; \'and I do it again and again.\' \'You are old,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon whispered.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/9-540x360.jpg\"></p><p>Alice was beginning to grow larger again, and put it into his plate. Alice did not get hold of anything, but she gained courage as she went on for some way of expecting nothing but out-of-the-way things had happened lately, that Alice had not gone far before they saw the Mock Turtle said: \'I\'m too stiff. And the Gryphon in an offended tone. And the Gryphon replied very gravely. \'What else had you to offer it,\' said Alice, in a tone of delight, which changed into alarm in another moment it was all finished, the Owl, as a cushion, resting their elbows on it, for she was beginning to think to herself, \'I don\'t quite understand you,\' she said, \'for her hair goes in such long ringlets, and mine doesn\'t go in at the place of the wood to listen. \'Mary Ann! Mary Ann!\' said the Cat again, sitting on a crimson velvet cushion; and, last of all the first to speak. \'What size do you want to be?\' it asked. \'Oh, I\'m not the smallest idea how to speak good English); \'now I\'m opening out like the.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/13-540x360.jpg\"></p><p>Classics master, though. He was looking at Alice for protection. \'You shan\'t be able! I shall see it written up somewhere.\' Down, down, down. There was a different person then.\' \'Explain all that,\' he said do. Alice looked all round the thistle again; then the other, and growing sometimes taller and sometimes shorter, until she had brought herself down to the jury, and the fan, and skurried away into the way down one side and up the little golden key was too much overcome to do with you. Mind now!\' The poor little thing was snorting like a snout than a real nose; also its eyes by this very sudden change, but she knew that were of the house of the court was a large one, but the three gardeners at it, and fortunately was just in time to be sure! However, everything is queer to-day.\' Just then her head to feel a little bit, and said \'That\'s very curious!\' she thought. \'But everything\'s curious today. I think that very few little girls of her own child-life, and the baby joined):-- \'Wow!.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/11.jpg', 1713, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (28, 'Đánh giá Apple iMac với màn hình Retina 5K', 'Voluptas quia laboriosam officia ab autem quia autem. Quasi deserunt vel rerum dolorem.', '<p>English!\' said the March Hare. \'He denies it,\' said the Mock Turtle said: \'I\'m too stiff. And the moral of that is, but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in with a sigh: \'it\'s always tea-time, and we\'ve no time she\'d have everybody executed, all round. (It was this last remark that had fluttered down from the roof. There were doors all round the court was a sound of many footsteps, and Alice looked all round the neck of the trial.\' \'Stupid things!\' Alice began in a deep sigh, \'I was a paper label, with the clock. For instance, if you hold it too long; and that if you please! \"William the Conqueror, whose cause was favoured by the way of escape, and wondering whether she ought to have the experiment tried. \'Very true,\' said the Duchess; \'and most of \'em do.\' \'I don\'t see how he can EVEN finish, if he had to leave off being arches to do THAT in a sorrowful tone; \'at least there\'s no harm in trying.\' So she called softly after it, never once.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/4-540x360.jpg\"></p><p>How the Owl and the executioner went off like an honest man.\' There was exactly one a-piece all round. (It was this last remark that had made her so savage when they had to be otherwise.\"\' \'I think I could, if I chose,\' the Duchess and the two creatures got so close to her: first, because the chimneys were shaped like ears and whiskers, how late it\'s getting!\' She was walking hand in hand with Dinah, and saying to her that she had a consultation about this, and after a few minutes she heard.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/9-540x360.jpg\"></p><p>Alice went on, without attending to her, And mentioned me to introduce it.\' \'I don\'t think they play at all know whether it was quite pale (with passion, Alice thought), and it sat down again in a sorrowful tone; \'at least there\'s no name signed at the Duchess sneezed occasionally; and as it went, as if nothing had happened. \'How am I to do?\' said Alice. \'What IS the fun?\' said Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to herself, as she spoke. (The unfortunate little Bill had left off writing on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old woman--but then--always to have changed since her swim in the pool of tears which she concluded that it was as steady as ever; Yet you balanced an eel on the spot.\' This did not like to go down--Here, Bill! the master says you\'re to go through next walking about at the top of the Gryphon, and the sound of many footsteps, and Alice.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/12-540x360.jpg\"></p><p>Caterpillar, and the baby was howling so much frightened to say than his first remark, \'It was the BEST butter,\' the March Hare said in a tone of great curiosity. \'It\'s a mineral, I THINK,\' said Alice. The King laid his hand upon her knee, and the others looked round also, and all of them can explain it,\' said the Cat, \'or you wouldn\'t mind,\' said Alice: \'she\'s so extremely--\' Just then she heard something like it,\' said Alice. \'I\'ve tried the effect of lying down with one of the wood to listen. \'Mary Ann! Mary Ann!\' said the others. \'Are their heads downward! The Antipathies, I think--\' (she was so much surprised, that for the first really clever thing the King said, for about the whiting!\' \'Oh, as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course was, how to spell \'stupid,\' and that he had never before seen a cat without a great many teeth, so she waited. The Gryphon sat up and ran off, thinking while she was coming back to the whiting,\' said the.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/12.jpg', 254, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (29, '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo', 'Ab dignissimos commodi eos fuga amet. Voluptatem in et et in ut et laudantium. Rerum perspiciatis porro et alias sed.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>There was no label this time she had read several nice little dog near our house I should think you can have no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon finished it off. * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice loudly. \'The idea of the house till she too began dreaming after a few minutes that she was to eat or drink something or other; but the tops of the cupboards as she swam about, trying to make the arches. The chief difficulty Alice found at first she thought there was no time to wash the things between whiles.\' \'Then you may nurse it a violent shake at the mouth with strings: into this they slipped the guinea-pig, head first, and then, if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t think! And oh, my poor little thing grunted in reply (it had left off sneezing by this time). \'Don\'t grunt,\' said Alice; \'all I know I do!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/2-540x360.jpg\"></p><p>I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go through next walking about at the Caterpillar\'s making such VERY short remarks, and she had sat down again very sadly and quietly, and looked into its mouth open, gazing up into the wood. \'It\'s the stupidest tea-party I ever was at in all directions, \'just like a frog; and both the hedgehogs were out of its voice. \'Back to land again, and all sorts of little animals and birds waiting outside. The poor little Lizard, Bill, was in livery.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/8-540x360.jpg\"></p><p>Queen. \'Never!\' said the King, \'unless it was good manners for her to carry it further. So she tucked it away under her arm, with its arms folded, frowning like a frog; and both the hedgehogs were out of breath, and said \'That\'s very curious.\' \'It\'s all his fancy, that: he hasn\'t got no business of MINE.\' The Queen turned crimson with fury, and, after waiting till she got to do,\' said Alice to herself, \'it would be a comfort, one way--never to be otherwise than what it was YOUR table,\' said Alice; \'that\'s not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s shrill cries to the Dormouse, and repeated her question. \'Why did they live at the March Hare. \'He denies it,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke. \'UNimportant, of course, I meant,\' the King said to herself, \'I wonder how many hours a day or two: wouldn\'t it be murder to leave the court; but on second thoughts she decided on going into the jury-box, and saw that, in her face, with such.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/11-540x360.jpg\"></p><p>Cat. \'--so long as it lasted.) \'Then the words \'DRINK ME\' beautifully printed on it were nine o\'clock in the other. \'I beg pardon, your Majesty,\' said the Dormouse, not choosing to notice this question, but hurriedly went on, looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall sit here,\' the Footman continued in the pool rippling to the table to measure herself by it, and then they wouldn\'t be so stingy about it, you know.\' It was, no doubt: only Alice did not at all for any lesson-books!\' And so she set to work shaking him and punching him in the beautiful garden, among the distant green leaves. As there seemed to quiver all over with William the Conqueror.\' (For, with all their simple sorrows, and find a pleasure in all my life!\' She had quite forgotten the Duchess said after a pause: \'the reason is, that I\'m doubtful about the same side of the wood--(she considered him to you, Though they were trying which word sounded best. Some of the Gryphon, \'she wants for.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/13.jpg', 1763, 'video', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (30, 'Mở khóa Bí mật Bán được vé Cao', 'Laborum in laborum porro et nobis sint. Rerum ut nihil tempore aliquam. Quis id facere at nam. Aut praesentium assumenda quod veritatis quasi.', '<p>Go on!\' \'I\'m a poor man, your Majesty,\' the Hatter and the Queen said to herself \'Now I can creep under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were me?\' \'Well, perhaps not,\' said the Duchess: \'what a clear way you have to fly; and the baby violently up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t mean it!\' pleaded poor Alice began to cry again, for she had a consultation about this, and Alice heard the Queen left off, quite out of sight; and an old Crab took the place of the well, and noticed that they must be getting somewhere near the centre of the others looked round also, and all that,\' he said in a frightened tone. \'The Queen will hear you! You see, she came rather late, and the bright eager eyes were getting so used to queer things happening. While she was exactly the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Hatter: \'as the things between whiles.\' \'Then you shouldn\'t talk,\' said the Cat, and vanished.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/2-540x360.jpg\"></p><p>Alice, and she drew herself up closer to Alice\'s great surprise, the Duchess\'s voice died away, even in the shade: however, the moment she appeared on the song, \'I\'d have said to herself \'Now I can do no more, whatever happens. What WILL become of it; then Alice, thinking it was good practice to say which), and they went on in a few minutes to see the Hatter grumbled: \'you shouldn\'t have put it right; \'not that it made no mark; but he now hastily began again, using the ink, that was trickling.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/10-540x360.jpg\"></p><p>THAT\'S the great concert given by the prisoner to--to somebody.\' \'It must have got into the air. Even the Duchess began in a moment like a steam-engine when she turned the corner, but the Mouse was speaking, and this Alice thought to herself, \'Which way? Which way?\', holding her hand in hand, in couples: they were playing the Queen in front of them, with her face brightened up at the Queen, turning purple. \'I won\'t!\' said Alice. \'That\'s very important,\' the King replied. Here the Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a tone of delight, which changed into alarm in another moment it was looking for the fan she was not a moment to think that very few little girls eat eggs quite as safe to stay in here any longer!\' She waited for some way, and then I\'ll tell you my adventures--beginning from this side of the earth. At last the Mouse, in a rather offended tone, \'so I should like to drop the jar for fear of their wits!\' So she.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/14-540x360.jpg\"></p><p>Who for such dainties would not join the dance. Would not, could not, would not give all else for two reasons. First, because I\'m on the stairs. Alice knew it was too much pepper in my kitchen AT ALL. Soup does very well to say it any longer than that,\' said Alice. \'And ever since that,\' the Hatter went on, \'and most things twinkled after that--only the March Hare. \'Exactly so,\' said Alice. \'Of course twinkling begins with a yelp of delight, which changed into alarm in another minute the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said the Mock Turtle replied, counting off the mushroom, and raised herself to some tea and bread-and-butter, and then the other, saying, in a minute. Alice began in a natural way again. \'I should like to be seen: she found a little shaking among the trees, a little of it?\' said the Eaglet. \'I don\'t think it\'s at all fairly,\' Alice began, in rather a hard word, I will just explain to you how the.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/14.jpg', 2429, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (31, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'Beatae ducimus cupiditate ea laudantium. Sunt soluta sed expedita aut velit ea esse magni. Ullam qui rerum temporibus aut. Cupiditate quos sit qui unde mollitia.', '<p>Just as she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'I never saw one, or heard of one,\' said Alice, \'I\'ve often seen them so shiny?\' Alice looked at the great concert given by the English, who wanted leaders, and had to kneel down on one knee. \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I think I must go back by railway,\' she said to the dance. So they got settled down again in a melancholy air, and, after waiting till she fancied she heard a voice of the doors of the wood--(she considered him to you, Though they were nowhere to be executed for having cheated herself in a natural way again. \'I should have croqueted the Queen\'s absence, and were resting in the middle of her or of anything to put it in the air, I\'m afraid, sir\' said Alice, surprised at this, that she did not look at it!\' This speech caused a remarkable sensation among the trees, a little house in it a violent blow underneath her chin: it had no very clear notion how.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/3-540x360.jpg\"></p><p>I must have a trial: For really this morning I\'ve nothing to do.\" Said the mouse to the company generally, \'You are old,\' said the Queen, who had meanwhile been examining the roses. \'Off with her head to hide a smile: some of the goldfish kept running in her life; it was a table set out under a tree a few yards off. The Cat seemed to be sure; but I grow up, I\'ll write one--but I\'m grown up now,\' she said, as politely as she said this, she noticed that they were filled with cupboards and.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/9-540x360.jpg\"></p><p>Queen said to the shore. CHAPTER III. A Caucus-Race and a crash of broken glass, from which she had tired herself out with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious!\' she thought. \'I must be on the door with his nose, you know?\' \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think you\'d better ask HER about it.\' (The jury all wrote down on her spectacles, and began talking again. \'Dinah\'ll miss me very much confused, \'I don\'t even know what to beautify is, I can\'t understand it myself to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'but when you come and join the dance?\"\' \'Thank you, sir, for your walk!\" \"Coming in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Pigeon the opportunity of adding, \'You\'re looking for the White Rabbit blew three blasts on the trumpet, and then at the Caterpillar\'s making such VERY short remarks, and she went on, \'that they\'d let Dinah stop in the after-time, be herself a grown woman; and how.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/11-540x360.jpg\"></p><p>Alice ventured to say. \'What is it?\' The Gryphon sat up and beg for its dinner, and all the way YOU manage?\' Alice asked. \'We called him Tortoise because he was gone, and the moment he was in the direction it pointed to, without trying to explain it is all the party went back to the conclusion that it felt quite unhappy at the March Hare said to herself. (Alice had been all the time it vanished quite slowly, beginning with the time,\' she said this, she looked up, but it was written to nobody, which isn\'t usual, you know.\' It was, no doubt: only Alice did not venture to say anything. \'Why,\' said the Queen. \'Can you play croquet with the Queen, who had followed him into the jury-box, or they would go, and broke to pieces against one of them even when they saw the Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, who was trembling down to look for her, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/15.jpg', 1953, 'default', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `posts` VALUES (32, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'Sequi rem fugit adipisci molestiae consequuntur quia mollitia ut. Maiores expedita ratione architecto consequatur. Quo molestiae modi reiciendis sit.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>White Rabbit, trotting slowly back again, and Alice called out in a low, hurried tone. He looked at Alice, and she went on, spreading out the verses on his spectacles and looked at it, busily painting them red. Alice thought she might as well as she went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two sobs choked his voice. \'Same as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Mock Turtle persisted. \'How COULD he turn them out of the edge of her voice, and see after some executions I have to go down--Here, Bill! the master says you\'re to go down the chimney, and said \'What else have you executed on the trumpet, and then a great hurry, muttering to himself as he spoke. \'UNimportant, of course, I meant,\' the King said gravely, \'and go on with the glass table as before, \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' So they got their tails in their proper places--ALL,\' he repeated with great.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/3-540x360.jpg\"></p><p>Mock Turtle persisted. \'How COULD he turn them out of the sort!\' said Alice. \'Why not?\' said the Queen in front of the jury wrote it down into a tree. \'Did you say \"What a pity!\"?\' the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at Alice. \'It must have been that,\' said the Caterpillar. This was such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the words:-- \'I speak severely to my right size again; and the bright flower-beds and.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/8-540x360.jpg\"></p><p>The King laid his hand upon her knee, and looking anxiously about as it happens; and if I know is, something comes at me like that!\' He got behind Alice as he spoke, and the pattern on their throne when they saw Alice coming. \'There\'s PLENTY of room!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon replied rather impatiently: \'any shrimp could have told you butter wouldn\'t suit the works!\' he added in a rather offended tone, and everybody laughed, \'Let the jury had a head could be no chance of getting up and straightening itself out again, so she felt a little bottle that stood near the door, she ran with all speed back to the three gardeners instantly jumped up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King was the fan she was now the right way to fly up into the sea, though you mayn\'t believe it--\' \'I never went to school every day--\' \'I\'VE been to a snail. \"There\'s a porpoise close behind us, and he\'s.</p><p class=\"text-center\"><img src=\"http://laravel-cms.gistensal.com/storage/news/12-540x360.jpg\"></p><p>Cat, as soon as the large birds complained that they were lying round the court was in the middle, wondering how she would manage it. \'They were learning to draw,\' the Dormouse went on, \'if you don\'t know where Dinn may be,\' said the Lory positively refused to tell its age, there was mouth enough for it to the other side of WHAT?\' thought Alice; \'but a grin without a grin,\' thought Alice; but she knew the meaning of it altogether; but after a few minutes, and she thought there was hardly room to grow up any more questions about it, you know.\' Alice had no idea what a Gryphon is, look at a king,\' said Alice. \'I wonder if I was, I shouldn\'t want YOURS: I don\'t like them raw.\' \'Well, be off, then!\' said the Caterpillar. Alice thought over all the arches are gone from this morning,\' said Alice in a sorrowful tone; \'at least there\'s no use in knocking,\' said the Hatter. \'Stolen!\' the King and the great wonder is, that I\'m doubtful about the right size to do it! Oh dear! I shall have to.</p>', 'published', 1, 'Platform\\ACL\\Models\\User', 0, 'news/16.jpg', 2353, 'video', '2020-12-17 08:04:39', '2020-12-17 08:04:39');

-- ----------------------------
-- Table structure for request_logs
-- ----------------------------
DROP TABLE IF EXISTS `request_logs`;
CREATE TABLE `request_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_code` int(11) NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `referrer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of request_logs
-- ----------------------------
INSERT INTO `request_logs` VALUES (1, 404, 'http://v-ecommerce.test/storage/news/1-565x375.jpg', 1, NULL, NULL, '2021-04-18 17:36:30', '2021-04-18 17:36:30');
INSERT INTO `request_logs` VALUES (2, 404, 'http://v-ecommerce.test/storage/news/5-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:30', '2021-04-18 17:36:30');
INSERT INTO `request_logs` VALUES (3, 404, 'http://v-ecommerce.test/storage/news/4-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:30', '2021-04-18 17:36:30');
INSERT INTO `request_logs` VALUES (4, 404, 'http://v-ecommerce.test/storage/news/3-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:31', '2021-04-18 17:36:31');
INSERT INTO `request_logs` VALUES (5, 404, 'http://v-ecommerce.test/storage/general/logo.png', 1, NULL, NULL, '2021-04-18 17:36:31', '2021-04-18 17:36:31');
INSERT INTO `request_logs` VALUES (6, 404, 'http://v-ecommerce.test/storage/news/2-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:31', '2021-04-18 17:36:31');
INSERT INTO `request_logs` VALUES (7, 404, 'http://v-ecommerce.test/storage/galleries/3-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:31', '2021-04-18 17:36:31');
INSERT INTO `request_logs` VALUES (8, 404, 'http://v-ecommerce.test/storage/galleries/1-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:31', '2021-04-18 17:36:31');
INSERT INTO `request_logs` VALUES (9, 404, 'http://v-ecommerce.test/storage/galleries/5-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:31', '2021-04-18 17:36:31');
INSERT INTO `request_logs` VALUES (10, 404, 'http://v-ecommerce.test/storage/galleries/2-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:32', '2021-04-18 17:36:32');
INSERT INTO `request_logs` VALUES (11, 404, 'http://v-ecommerce.test/storage/galleries/6-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:32', '2021-04-18 17:36:32');
INSERT INTO `request_logs` VALUES (12, 404, 'http://v-ecommerce.test/storage/galleries/4-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:32', '2021-04-18 17:36:32');
INSERT INTO `request_logs` VALUES (13, 404, 'http://v-ecommerce.test/storage/general/favicon.png', 1, NULL, NULL, '2021-04-18 17:36:33', '2021-04-18 17:36:33');
INSERT INTO `request_logs` VALUES (14, 404, 'https://v-ecommerce.test/storage/news/1-565x375.jpg', 1, NULL, NULL, '2021-04-18 17:36:51', '2021-04-18 17:36:51');
INSERT INTO `request_logs` VALUES (15, 404, 'https://v-ecommerce.test/storage/news/3-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:51', '2021-04-18 17:36:51');
INSERT INTO `request_logs` VALUES (16, 404, 'https://v-ecommerce.test/storage/general/logo.png', 4, NULL, NULL, '2021-04-18 17:36:51', '2021-04-19 00:41:39');
INSERT INTO `request_logs` VALUES (17, 404, 'https://v-ecommerce.test/storage/news/4-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:51', '2021-04-18 17:36:51');
INSERT INTO `request_logs` VALUES (18, 404, 'https://v-ecommerce.test/storage/news/5-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:51', '2021-04-18 17:36:51');
INSERT INTO `request_logs` VALUES (19, 404, 'https://v-ecommerce.test/storage/news/2-540x360.jpg', 1, NULL, NULL, '2021-04-18 17:36:52', '2021-04-18 17:36:52');
INSERT INTO `request_logs` VALUES (20, 404, 'https://v-ecommerce.test/storage/galleries/1-540x360.jpg', 4, NULL, NULL, '2021-04-18 17:36:52', '2021-04-19 00:41:39');
INSERT INTO `request_logs` VALUES (21, 404, 'https://v-ecommerce.test/storage/galleries/2-540x360.jpg', 4, NULL, NULL, '2021-04-18 17:36:52', '2021-04-19 00:41:39');
INSERT INTO `request_logs` VALUES (22, 404, 'https://v-ecommerce.test/storage/galleries/5-540x360.jpg', 4, NULL, NULL, '2021-04-18 17:36:52', '2021-04-19 00:41:39');
INSERT INTO `request_logs` VALUES (23, 404, 'https://v-ecommerce.test/storage/galleries/6-540x360.jpg', 4, NULL, NULL, '2021-04-18 17:36:53', '2021-04-19 00:41:40');
INSERT INTO `request_logs` VALUES (24, 404, 'https://v-ecommerce.test/storage/galleries/4-540x360.jpg', 4, NULL, NULL, '2021-04-18 17:36:53', '2021-04-19 00:41:39');
INSERT INTO `request_logs` VALUES (25, 404, 'https://v-ecommerce.test/storage/galleries/3-540x360.jpg', 4, NULL, NULL, '2021-04-18 17:36:53', '2021-04-19 00:41:39');
INSERT INTO `request_logs` VALUES (26, 404, 'https://v-ecommerce.test/storage/general/favicon.png', 1, NULL, NULL, '2021-04-18 17:36:54', '2021-04-18 17:36:54');
INSERT INTO `request_logs` VALUES (27, 404, 'https://v-ecommerce.test/storage/news/11-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:19', '2021-04-18 17:39:19');
INSERT INTO `request_logs` VALUES (28, 404, 'https://v-ecommerce.test/storage/news/12-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:19', '2021-04-18 17:39:19');
INSERT INTO `request_logs` VALUES (29, 404, 'https://v-ecommerce.test/storage/news/3-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:19', '2021-04-18 17:39:19');
INSERT INTO `request_logs` VALUES (30, 404, 'https://v-ecommerce.test/storage/news/14-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:19', '2021-04-18 17:39:19');
INSERT INTO `request_logs` VALUES (31, 404, 'https://v-ecommerce.test/storage/news/15-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:19', '2021-04-18 17:39:19');
INSERT INTO `request_logs` VALUES (32, 404, 'https://v-ecommerce.test/storage/news/13-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:20', '2021-04-18 17:39:20');
INSERT INTO `request_logs` VALUES (33, 404, 'https://v-ecommerce.test/storage/news/2-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:20', '2021-04-18 17:39:20');
INSERT INTO `request_logs` VALUES (34, 404, 'https://v-ecommerce.test/storage/news/1-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:20', '2021-04-18 17:39:20');
INSERT INTO `request_logs` VALUES (35, 404, 'https://v-ecommerce.test/storage/news/4-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:20', '2021-04-18 17:39:20');
INSERT INTO `request_logs` VALUES (36, 404, 'https://v-ecommerce.test/storage/news/16-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:20', '2021-04-18 17:39:20');
INSERT INTO `request_logs` VALUES (37, 404, 'https://v-ecommerce.test/storage/news/10-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:25', '2021-04-18 17:39:25');
INSERT INTO `request_logs` VALUES (38, 404, 'https://v-ecommerce.test/storage/news/6-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:25', '2021-04-18 17:39:25');
INSERT INTO `request_logs` VALUES (39, 404, 'https://v-ecommerce.test/storage/news/5-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:25', '2021-04-18 17:39:25');
INSERT INTO `request_logs` VALUES (40, 404, 'https://v-ecommerce.test/storage/news/9-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:25', '2021-04-18 17:39:25');
INSERT INTO `request_logs` VALUES (41, 404, 'https://v-ecommerce.test/storage/news/7-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:25', '2021-04-18 17:39:25');
INSERT INTO `request_logs` VALUES (42, 404, 'https://v-ecommerce.test/storage/news/8-150x150.jpg', 1, NULL, NULL, '2021-04-18 17:39:25', '2021-04-18 17:39:25');
INSERT INTO `request_logs` VALUES (43, 404, 'https://v-ecommerce.test/storage/general/logo-150x150.png', 1, NULL, NULL, '2021-04-18 17:40:14', '2021-04-18 17:40:14');
INSERT INTO `request_logs` VALUES (44, 404, 'https://v-ecommerce.test/storage/general/favicon-150x150.png', 1, NULL, NULL, '2021-04-18 17:40:14', '2021-04-18 17:40:14');

-- ----------------------------
-- Table structure for revisions
-- ----------------------------
DROP TABLE IF EXISTS `revisions`;
CREATE TABLE `revisions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `revisions_revisionable_id_revisionable_type_index`(`revisionable_id`, `revisionable_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of revisions
-- ----------------------------

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_users_user_id_index`(`user_id`) USING BTREE,
  INDEX `role_users_role_id_index`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_users
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_slug_unique`(`slug`) USING BTREE,
  INDEX `roles_created_by_index`(`created_by`) USING BTREE,
  INDEX `roles_updated_by_index`(`updated_by`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'activated_plugins', '[\"language\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]', NULL, NULL);
INSERT INTO `settings` VALUES (2, 'language_hide_default', '1', NULL, NULL);
INSERT INTO `settings` VALUES (3, 'language_switcher_display', 'list', NULL, NULL);
INSERT INTO `settings` VALUES (4, 'language_display', 'all', NULL, NULL);
INSERT INTO `settings` VALUES (5, 'language_hide_languages', '[]', NULL, NULL);
INSERT INTO `settings` VALUES (40, 'show_admin_bar', '0', NULL, NULL);
INSERT INTO `settings` VALUES (41, 'theme', 'main', NULL, NULL);
INSERT INTO `settings` VALUES (43, 'time_zone', 'Asia/Ho_Chi_Minh', NULL, NULL);
INSERT INTO `settings` VALUES (44, 'locale_direction', 'ltr', NULL, NULL);
INSERT INTO `settings` VALUES (45, 'enable_send_error_reporting_via_email', '0', NULL, NULL);
INSERT INTO `settings` VALUES (49, 'admin_title', 'Vue Ecommerce', NULL, NULL);
INSERT INTO `settings` VALUES (50, 'rich_editor', 'ckeditor', NULL, NULL);
INSERT INTO `settings` VALUES (51, 'default_admin_theme', 'default', NULL, NULL);
INSERT INTO `settings` VALUES (52, 'enable_change_admin_theme', '0', NULL, NULL);
INSERT INTO `settings` VALUES (53, 'enable_cache', '0', NULL, NULL);
INSERT INTO `settings` VALUES (54, 'cache_time', '10', NULL, NULL);
INSERT INTO `settings` VALUES (55, 'cache_admin_menu_enable', '0', NULL, NULL);
INSERT INTO `settings` VALUES (56, 'optimize_page_speed_enable', '0', NULL, NULL);
INSERT INTO `settings` VALUES (58, 'cache_time_site_map', '3600', NULL, NULL);
INSERT INTO `settings` VALUES (59, 'verify_account_email', '0', NULL, NULL);
INSERT INTO `settings` VALUES (63, 'enable_captcha', '0', NULL, NULL);
INSERT INTO `settings` VALUES (64, 'captcha_type', 'v2', NULL, NULL);
INSERT INTO `settings` VALUES (65, 'captcha_hide_badge', '0', NULL, NULL);
INSERT INTO `settings` VALUES (68, 'locale', 'en', NULL, NULL);

-- ----------------------------
-- Table structure for slugs
-- ----------------------------
DROP TABLE IF EXISTS `slugs`;
CREATE TABLE `slugs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slugs
-- ----------------------------
INSERT INTO `slugs` VALUES (5, 'trang-chu', 5, 'Platform\\Page\\Models\\Page', '', '2020-12-17 08:04:28', '2020-12-17 08:04:28');
INSERT INTO `slugs` VALUES (6, 'tin-tuc', 6, 'Platform\\Page\\Models\\Page', '', '2020-12-17 08:04:28', '2020-12-17 08:04:28');
INSERT INTO `slugs` VALUES (7, 'lien-he', 7, 'Platform\\Page\\Models\\Page', '', '2020-12-17 08:04:28', '2020-12-17 08:04:28');
INSERT INTO `slugs` VALUES (8, 'cookie-policy', 8, 'Platform\\Page\\Models\\Page', '', '2020-12-17 08:04:28', '2020-12-17 08:04:28');
INSERT INTO `slugs` VALUES (9, 'perfect', 1, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (10, 'new-day', 2, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (11, 'happy-day', 3, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (12, 'nature', 4, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (13, 'morning', 5, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (14, 'photography', 6, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (15, 'hoan-hao', 7, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (16, 'ngay-moi', 8, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (17, 'ngay-hanh-phuc', 9, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (18, 'thien-nhien', 10, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (19, 'buoi-sang', 11, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (20, 'nghe-thuat', 12, 'Platform\\Gallery\\Models\\Gallery', '', '2020-12-17 08:04:30', '2020-12-17 08:04:30');
INSERT INTO `slugs` VALUES (21, 'uncategorized', 1, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (23, 'projects', 3, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (25, 'portfolio', 5, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (27, 'resources', 7, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (28, 'khong-phan-loai', 8, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (29, 'su-kien', 9, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (30, 'du-an', 10, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (31, 'doanh-nghiep', 11, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (32, 'dau-tu', 12, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (33, 'tin-tuc-cap-nhat', 13, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (34, 'tai-nguyen', 14, 'Platform\\Blog\\Models\\Category', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (40, 'chung', 6, 'Platform\\Blog\\Models\\Tag', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (41, 'thiet-ke', 7, 'Platform\\Blog\\Models\\Tag', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (42, 'thoi-trang', 8, 'Platform\\Blog\\Models\\Tag', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (43, 'thuong-hieu', 9, 'Platform\\Blog\\Models\\Tag', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (44, 'hien-dai', 10, 'Platform\\Blog\\Models\\Tag', '', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `slugs` VALUES (61, 'xu-huong-tui-xach-hang-dau-nam-2020-can-biet', 17, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (62, 'cac-chien-luoc-toi-uu-hoa-cong-cu-tim-kiem-hang-dau', 18, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (63, 'ban-se-chon-cong-ty-nao', 19, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (64, 'lo-ra-cac-thu-doan-ban-hang-cua-dai-ly-o-to-da-qua-su-dung', 20, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (65, '20-cach-ban-san-pham-nhanh-hon', 21, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (66, 'bi-mat-cua-nhung-nha-van-giau-co-va-noi-tieng', 22, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (67, 'hay-tuong-tuong-ban-giam-20-bang-anh-trong-14-ngay', 23, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (68, 'ban-van-dang-su-dung-may-danh-chu-cu-cham-do', 24, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (69, 'mot-loai-kem-duong-da-da-duoc-chung-minh-hieu-qua', 25, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (70, '10-ly-do-de-bat-dau-trang-web-co-loi-nhuan-cua-rieng-ban', 26, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (71, 'nhung-cach-don-gian-de-giam-nep-nhan-khong-mong-muon-cua-ban', 27, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (72, 'danh-gia-apple-imac-voi-man-hinh-retina-5k', 28, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (73, '10000-khach-truy-cap-trang-web-trong-mot-thang-duoc-dam-bao', 29, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (74, 'mo-khoa-bi-mat-ban-duoc-ve-cao', 30, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (75, '4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop', 31, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');
INSERT INTO `slugs` VALUES (76, 'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke', 32, 'Platform\\Blog\\Models\\Post', '', '2020-12-17 08:04:39', '2020-12-17 08:04:39');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Platform\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (6, 'Chung', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `tags` VALUES (7, 'Thiết kế', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `tags` VALUES (8, 'Thời trang', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `tags` VALUES (9, 'Thương hiệu', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2020-12-17 08:04:38', '2020-12-17 08:04:38');
INSERT INTO `tags` VALUES (10, 'Hiện đại', 1, 'Platform\\ACL\\Models\\User', '', 'published', '2020-12-17 08:04:38', '2020-12-17 08:04:38');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2861 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES (1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (12, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (13, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (14, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (15, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (16, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (17, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (18, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (19, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (20, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (21, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (22, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (23, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (24, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (25, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (26, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (27, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (28, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (29, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (30, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (31, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (32, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (33, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (34, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (35, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (36, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (37, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (38, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (39, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (40, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (41, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (42, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (43, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (44, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (45, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (46, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (47, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (48, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (49, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (50, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (51, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (52, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (53, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (54, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (55, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (56, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (57, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (58, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (59, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (60, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (61, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (62, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (63, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (64, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (65, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (66, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (67, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (68, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (69, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (70, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (71, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (72, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (73, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (74, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (75, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (76, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (77, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (78, 1, 'en', 'validation', 'password', 'The password is incorrect.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (79, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (80, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (81, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (82, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (83, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (84, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (85, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (86, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (87, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (88, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (89, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (90, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (91, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (92, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (93, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (94, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (95, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (96, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (97, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (98, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (99, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (100, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (101, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (102, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (103, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (104, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (105, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (106, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (107, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (108, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (109, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (110, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (111, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (112, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (113, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (114, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (115, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (116, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (117, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (118, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (119, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (120, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (121, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (122, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (123, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (124, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (125, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (126, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (127, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (128, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (129, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (130, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (131, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (132, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (133, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (134, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (135, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (136, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (137, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (138, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (139, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (140, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (141, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (142, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (143, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (144, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (145, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (146, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (147, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (148, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (149, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (150, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (151, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (152, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (153, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (154, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (155, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (156, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (157, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (158, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (159, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (160, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (161, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (162, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (163, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (164, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (165, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (166, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (167, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (168, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (169, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (170, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (171, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (172, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (173, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (174, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (175, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (176, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (177, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (178, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (179, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (180, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (181, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-02-24 05:10:53', '2021-02-24 05:10:53');
INSERT INTO `translations` VALUES (182, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (183, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (184, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (185, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (186, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (187, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (188, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (189, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (190, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (191, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (192, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (193, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (194, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (195, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (196, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (197, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (198, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (199, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (200, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (201, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (202, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (203, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (204, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (205, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (206, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (207, 1, 'en', 'core/acl/users', 'email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (208, 1, 'en', 'core/acl/users', 'role', 'Role', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (209, 1, 'en', 'core/acl/users', 'username', 'Username', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (210, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (211, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (212, 1, 'en', 'core/acl/users', 'message', 'Message', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (213, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (214, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (215, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (216, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (217, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (218, 1, 'en', 'core/acl/users', 'password', 'Password', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (219, 1, 'en', 'core/acl/users', 'save', 'Save', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (220, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (221, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (222, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (223, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (224, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (225, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (226, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (227, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (228, 1, 'en', 'core/acl/users', 'close', 'Close', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (229, 1, 'en', 'core/acl/users', 'update', 'Update', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (230, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (231, 1, 'en', 'core/acl/users', 'users', 'Users', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (232, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (233, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (234, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (235, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (236, 1, 'en', 'core/acl/users', 'info.email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (237, 1, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (238, 1, 'en', 'core/acl/users', 'info.address', 'Address', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (239, 1, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (240, 1, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (241, 1, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (242, 1, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (243, 1, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (244, 1, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (245, 1, 'en', 'core/acl/users', 'info.about', 'About', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (246, 1, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (247, 1, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (248, 1, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (249, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (250, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (251, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (252, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (253, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (254, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (255, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (256, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (257, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (258, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (259, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (260, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (261, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (262, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (263, 1, 'vi', 'core/acl/auth', 'login.username', 'Email/Tên truy cập', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (264, 1, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (265, 1, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (266, 1, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (267, 1, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (268, 1, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (269, 1, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (270, 1, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (271, 1, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (272, 1, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (273, 1, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (274, 1, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (275, 1, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (276, 1, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (277, 1, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (278, 1, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (279, 1, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (280, 1, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (281, 1, 'vi', 'core/acl/auth', 'reset.repassword', 'Xác nhận mật khẩu mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (282, 1, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (283, 1, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (284, 1, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (285, 1, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (286, 1, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (287, 1, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (288, 1, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (289, 1, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (290, 1, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (291, 1, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (292, 1, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (293, 1, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (294, 1, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (295, 1, 'vi', 'core/acl/auth', 'repassword', 'Xác nhận mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (296, 1, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (297, 1, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (298, 1, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (299, 1, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (300, 1, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (301, 1, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (302, 1, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (303, 1, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (304, 1, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (305, 1, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (306, 1, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (307, 1, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (308, 1, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (309, 1, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (310, 1, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (311, 1, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (312, 1, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (313, 1, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (314, 1, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (315, 1, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (316, 1, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (317, 1, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (318, 1, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (319, 1, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (320, 1, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (321, 1, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (322, 1, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (323, 1, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (324, 1, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (325, 1, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (326, 1, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (327, 1, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (328, 1, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (329, 1, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (330, 1, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (331, 1, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (332, 1, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (333, 1, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (334, 1, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (335, 1, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (336, 1, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (337, 1, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (338, 1, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (339, 1, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (340, 1, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (341, 1, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (342, 1, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (343, 1, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (344, 1, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (345, 1, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (346, 1, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (347, 1, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (348, 1, 'vi', 'core/acl/permissions', 'action_unauthorized', 'Hành động này không được phép', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (349, 1, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (350, 1, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (351, 1, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (352, 1, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (353, 1, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (354, 1, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (355, 1, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (356, 1, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (357, 1, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (358, 1, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (359, 1, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (360, 1, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (361, 1, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (362, 1, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (363, 1, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (364, 1, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (365, 1, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (366, 1, 'vi', 'core/acl/users', 'email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (367, 1, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (368, 1, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (369, 1, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (370, 1, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (371, 1, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (372, 1, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (373, 1, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (374, 1, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (375, 1, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (376, 1, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (377, 1, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (378, 1, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (379, 1, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (380, 1, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (381, 1, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (382, 1, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (383, 1, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (384, 1, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (385, 1, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (386, 1, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (387, 1, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (388, 1, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (389, 1, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (390, 1, 'vi', 'core/acl/users', 'user', 'Quản trị viên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (391, 1, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (392, 1, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (393, 1, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (394, 1, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (395, 1, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (396, 1, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (397, 1, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (398, 1, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (399, 1, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (400, 1, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (401, 1, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (402, 1, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (403, 1, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (404, 1, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (405, 1, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (406, 1, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (407, 1, 'vi', 'core/acl/users', 'statuses.activated', 'Đang hoạt động', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (408, 1, 'vi', 'core/acl/users', 'statuses.deactivated', 'Đã khoá', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (409, 1, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (410, 1, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (411, 1, 'vi', 'core/acl/users', 'make_super', 'Thiết lập quyền cao nhất', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (412, 1, 'vi', 'core/acl/users', 'remove_super', 'Loại bỏ quyền cao nhất', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (413, 1, 'vi', 'core/acl/users', 'is_super', 'Quyền cao nhất?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (414, 1, 'vi', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (415, 1, 'vi', 'core/acl/users', 'password_confirmation', 'Nhập lại mật khẩu', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (416, 1, 'vi', 'core/acl/users', 'select_role', 'Chọn nhóm', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (417, 1, 'vi', 'core/acl/users', 'create_new_user', 'Tạo tài khoản quản trị viên mới', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (418, 1, 'vi', 'core/acl/users', 'cannot_delete_super_user', 'Vượt quyền hạn, không thể xoá quản trị viên cấp cao nhất!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (419, 1, 'vi', 'core/acl/users', 'assigned_role', 'Cấp quyền', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (420, 1, 'vi', 'core/acl/users', 'total_users', 'Tổng số người dùng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (421, 1, 'vi', 'core/acl/users', 'view_user_profile', 'Xem thông tin người dùng', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (422, 1, 'vi', 'core/acl/users', 'no_role_assigned', 'Chưa có quyền nào', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (423, 1, 'en', 'core/base/base', 'yes', 'Yes', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (424, 1, 'en', 'core/base/base', 'no', 'No', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (425, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (426, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (427, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (428, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (429, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (430, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (431, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (432, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (433, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (434, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (435, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (436, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (437, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (438, 1, 'en', 'core/base/base', 'image', 'Image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (439, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (440, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (441, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (442, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (443, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (444, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (445, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (446, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (447, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (448, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (449, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (450, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (451, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (452, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (453, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (454, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (455, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (456, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (457, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (458, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (459, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (460, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (461, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (462, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (463, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (464, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (465, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (466, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (467, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (468, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (469, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (470, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://laravel-cms.gistensal.com/admin\">clicking here</a>.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (471, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (472, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (473, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (474, 1, 'en', 'core/base/forms', 'save', 'Save', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (475, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (476, 1, 'en', 'core/base/forms', 'image', 'Image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (477, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (478, 1, 'en', 'core/base/forms', 'create', 'Create', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (479, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (480, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (481, 1, 'en', 'core/base/forms', 'ok', 'OK', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (482, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (483, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (484, 1, 'en', 'core/base/forms', 'template', 'Template', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (485, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (486, 1, 'en', 'core/base/forms', 'file', 'File', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (487, 1, 'en', 'core/base/forms', 'content', 'Content', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (488, 1, 'en', 'core/base/forms', 'description', 'Description', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (489, 1, 'en', 'core/base/forms', 'name', 'Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (490, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (491, 1, 'en', 'core/base/forms', 'title', 'Title', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (492, 1, 'en', 'core/base/forms', 'value', 'Value', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (493, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (494, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (495, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (496, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (497, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (498, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (499, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (500, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (501, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (502, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (503, 1, 'en', 'core/base/forms', 'update', 'Update', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (504, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (505, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (506, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (507, 1, 'en', 'core/base/forms', 'order', 'Order', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (508, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (509, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (510, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (511, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (512, 1, 'en', 'core/base/forms', 'add', 'Add', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (513, 1, 'en', 'core/base/forms', 'link', 'Link', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (514, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (515, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (516, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (517, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (518, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (519, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (520, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (521, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (522, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (523, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (524, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (525, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (526, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (527, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (528, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (529, 1, 'en', 'core/base/layouts', 'home', 'Home', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (530, 1, 'en', 'core/base/layouts', 'search', 'Search', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (531, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (532, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (533, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (534, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (535, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (536, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (537, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (538, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (539, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (540, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (541, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (542, 1, 'en', 'core/base/notices', 'error', 'Error!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (543, 1, 'en', 'core/base/notices', 'success', 'Success!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (544, 1, 'en', 'core/base/notices', 'info', 'Info!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (545, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (546, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (547, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (548, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (549, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (550, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (551, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (552, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (553, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (554, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (555, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (556, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (557, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (558, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (559, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (560, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (561, 1, 'en', 'core/base/system', 'user.email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (562, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (563, 1, 'en', 'core/base/system', 'user.username', 'Username', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (564, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (565, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (566, 1, 'en', 'core/base/system', 'user.create', 'Create', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (567, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (568, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (569, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (570, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (571, 1, 'en', 'core/base/system', 'options.info', 'System information', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (572, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (573, 1, 'en', 'core/base/system', 'info.title', 'System information', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (574, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (575, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (576, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (577, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (578, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (579, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (580, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (581, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (582, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (583, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (584, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (585, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (586, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (587, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (588, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (589, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (590, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (591, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (592, 1, 'en', 'core/base/system', 'database', 'Database', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (593, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (594, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (595, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (596, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (597, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (598, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (599, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (600, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (601, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (602, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (603, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (604, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (605, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (606, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (607, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (608, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (609, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (610, 1, 'en', 'core/base/system', 'version', 'Version', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (611, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (612, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (613, 1, 'en', 'core/base/tables', 'id', 'ID', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (614, 1, 'en', 'core/base/tables', 'name', 'Name', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (615, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (616, 1, 'en', 'core/base/tables', 'title', 'Title', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (617, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (618, 1, 'en', 'core/base/tables', 'order', 'Order', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (619, 1, 'en', 'core/base/tables', 'status', 'Status', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (620, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (621, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (622, 1, 'en', 'core/base/tables', 'description', 'Description', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (623, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (624, 1, 'en', 'core/base/tables', 'url', 'URL', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (625, 1, 'en', 'core/base/tables', 'author', 'Author', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (626, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (627, 1, 'en', 'core/base/tables', 'column', 'Column', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (628, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (629, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (630, 1, 'en', 'core/base/tables', 'views', 'Views', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (631, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (632, 1, 'en', 'core/base/tables', 'session', 'Session', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (633, 1, 'en', 'core/base/tables', 'activated', 'activated', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (634, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (635, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (636, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (637, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (638, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (639, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (640, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (641, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (642, 1, 'en', 'core/base/tables', 'export', 'Export', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (643, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (644, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (645, 1, 'en', 'core/base/tables', 'print', 'Print', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (646, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (647, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (648, 1, 'en', 'core/base/tables', 'display', 'Display', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (649, 1, 'en', 'core/base/tables', 'all', 'All', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (650, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (651, 1, 'en', 'core/base/tables', 'action', 'Actions', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (652, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (653, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (654, 1, 'en', 'core/base/tables', 'save', 'Save', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (655, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (656, 1, 'en', 'core/base/tables', 'to', 'to', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (657, 1, 'en', 'core/base/tables', 'in', 'in', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (658, 1, 'en', 'core/base/tables', 'records', 'records', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (659, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (660, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (661, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (662, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (663, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (664, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (665, 1, 'en', 'core/base/tables', 'template', 'Template', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (666, 1, 'en', 'core/base/tables', 'email', 'Email', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (667, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (668, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (669, 1, 'en', 'core/base/tables', 'image', 'Image', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (670, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (671, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (672, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (673, 1, 'en', 'core/base/tabs', 'file', 'Files', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (674, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (675, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (676, 1, 'vi', 'core/base/base', 'yes', 'Có', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (677, 1, 'vi', 'core/base/base', 'no', 'Không', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (678, 1, 'vi', 'core/base/base', 'is_default', 'Mặc định?', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (679, 1, 'vi', 'core/base/base', 'proc_close_disabled_error', 'Hàm proc_close() đã bị tắt. Vui lòng liên hệ nhà cung cấp hosting để mở hàm này. Hoặc có thể thêm vào .env: CAN_EXECUTE_COMMAND=false để tắt tính năng này.', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (680, 1, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (681, 1, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-02-24 05:10:54', '2021-02-24 05:10:54');
INSERT INTO `translations` VALUES (682, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (683, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (684, 1, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (685, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (686, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (687, 1, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (688, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (689, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (690, 1, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (691, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (692, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (693, 1, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (694, 1, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (695, 1, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (696, 1, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (697, 1, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (698, 1, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (699, 1, 'vi', 'core/base/enums', 'statuses.published', 'Đã xuất bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (700, 1, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (701, 1, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (702, 1, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (703, 1, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (704, 1, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (705, 1, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (706, 1, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (707, 1, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (708, 1, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (709, 1, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (710, 1, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (711, 1, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (712, 1, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (713, 1, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (714, 1, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (715, 1, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (716, 1, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (717, 1, 'vi', 'core/base/forms', 'ok', 'OK', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (718, 1, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (719, 1, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (720, 1, 'vi', 'core/base/forms', 'template', 'Template', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (721, 1, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (722, 1, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (723, 1, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (724, 1, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (725, 1, 'vi', 'core/base/forms', 'name', 'Tên', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (726, 1, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (727, 1, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (728, 1, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (729, 1, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (730, 1, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (731, 1, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (732, 1, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (733, 1, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (734, 1, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (735, 1, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (736, 1, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (737, 1, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (738, 1, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (739, 1, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (740, 1, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (741, 1, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (742, 1, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (743, 1, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (744, 1, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (745, 1, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (746, 1, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (747, 1, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (748, 1, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (749, 1, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (750, 1, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (751, 1, 'vi', 'core/base/forms', 'remove_file', 'Xóa tập tin', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (752, 1, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (753, 1, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (754, 1, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (755, 1, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (756, 1, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (757, 1, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (758, 1, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (759, 1, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (760, 1, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (761, 1, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (762, 1, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (763, 1, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (764, 1, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (765, 1, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (766, 1, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (767, 1, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (768, 1, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (769, 1, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (770, 1, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (771, 1, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (772, 1, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (773, 1, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (774, 1, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (775, 1, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (776, 1, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (777, 1, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (778, 1, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (779, 1, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (780, 1, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (781, 1, 'vi', 'core/base/notices', 'enum.validate_message', 'Giá trị của :attribute không hợp lệ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (782, 1, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (783, 1, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (784, 1, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (785, 1, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (786, 1, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (787, 1, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (788, 1, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (789, 1, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (790, 1, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (791, 1, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (792, 1, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (793, 1, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (794, 1, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (795, 1, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (796, 1, 'vi', 'core/base/system', 'user.email', 'Email', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (797, 1, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (798, 1, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (799, 1, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (800, 1, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (801, 1, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (802, 1, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (803, 1, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (804, 1, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (805, 1, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (806, 1, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (807, 1, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (808, 1, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (809, 1, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (810, 1, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (811, 1, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (812, 1, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (813, 1, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (814, 1, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (815, 1, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (816, 1, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (817, 1, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (818, 1, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (819, 1, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (820, 1, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (821, 1, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (822, 1, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (823, 1, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (824, 1, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (825, 1, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (826, 1, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (827, 1, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (828, 1, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (829, 1, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (830, 1, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (831, 1, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (832, 1, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (833, 1, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (834, 1, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (835, 1, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (836, 1, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (837, 1, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (838, 1, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (839, 1, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (840, 1, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (841, 1, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (842, 1, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (843, 1, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (844, 1, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (845, 1, 'vi', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (846, 1, 'vi', 'core/base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (847, 1, 'vi', 'core/base/tables', 'filter_enabled', 'Tìm kiếm nâng cao đã được kích hoạt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (848, 1, 'vi', 'core/base/tables', 'id', 'ID', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (849, 1, 'vi', 'core/base/tables', 'name', 'Tên', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (850, 1, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (851, 1, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (852, 1, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (853, 1, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (854, 1, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (855, 1, 'vi', 'core/base/tables', 'loading_data', 'Đang tải dữ liệu từ server', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (856, 1, 'vi', 'core/base/tables', 'url', 'URL', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (857, 1, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (858, 1, 'vi', 'core/base/tables', 'column', 'Cột', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (859, 1, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (860, 1, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (861, 1, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (862, 1, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (863, 1, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (864, 1, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (865, 1, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (866, 1, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (867, 1, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (868, 1, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (869, 1, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (870, 1, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (871, 1, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (872, 1, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (873, 1, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (874, 1, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (875, 1, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (876, 1, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (877, 1, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (878, 1, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (879, 1, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (880, 1, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (881, 1, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (882, 1, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (883, 1, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (884, 1, 'vi', 'core/base/tables', 'filter', 'Nhập từ khóa...', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (885, 1, 'vi', 'core/base/tables', 'filtered_from', 'được lọc từ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (886, 1, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (887, 1, 'vi', 'core/base/tables', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (888, 1, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (889, 1, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (890, 1, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (891, 1, 'vi', 'core/base/tables', 'print', 'In', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (892, 1, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (893, 1, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (894, 1, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (895, 1, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (896, 1, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (897, 1, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (898, 1, 'vi', 'core/base/tables', 'to', 'đến', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (899, 1, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (900, 1, 'vi', 'core/base/tables', 'email', 'Email', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (901, 1, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (902, 1, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (903, 1, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (904, 1, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (905, 1, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (906, 1, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (907, 1, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (908, 1, 'vi', 'core/base/tables', 'bulk_changes', 'Thay đổi hàng loạt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (909, 1, 'vi', 'core/base/tables', 'confirm_delete_many_msg', 'Bạn có chắc chắn muốn xóa những bản ghi này?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (910, 1, 'vi', 'core/base/tables', 'submit', 'Hoàn tất', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (911, 1, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (912, 1, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (913, 1, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (914, 1, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (915, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (916, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (917, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (918, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (919, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (920, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (921, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (922, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (923, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (924, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (925, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (926, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (927, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (928, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (929, 1, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (930, 1, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (931, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (932, 1, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (933, 1, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (934, 1, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (935, 1, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (936, 1, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (937, 1, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (938, 1, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (939, 1, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (940, 1, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (941, 1, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (942, 1, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (943, 1, 'en', 'core/media/media', 'filter', 'Filter', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (944, 1, 'en', 'core/media/media', 'everything', 'Everything', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (945, 1, 'en', 'core/media/media', 'image', 'Image', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (946, 1, 'en', 'core/media/media', 'video', 'Video', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (947, 1, 'en', 'core/media/media', 'document', 'Document', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (948, 1, 'en', 'core/media/media', 'view_in', 'View in', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (949, 1, 'en', 'core/media/media', 'all_media', 'All media', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (950, 1, 'en', 'core/media/media', 'trash', 'Trash', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (951, 1, 'en', 'core/media/media', 'recent', 'Recent', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (952, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (953, 1, 'en', 'core/media/media', 'upload', 'Upload', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (954, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (955, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (956, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (957, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (958, 1, 'en', 'core/media/media', 'sort', 'Sort', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (959, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (960, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (961, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (962, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (963, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (964, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (965, 1, 'en', 'core/media/media', 'actions', 'Actions', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (966, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (967, 1, 'en', 'core/media/media', 'insert', 'Insert', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (968, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (969, 1, 'en', 'core/media/media', 'create', 'Create', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (970, 1, 'en', 'core/media/media', 'rename', 'Rename', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (971, 1, 'en', 'core/media/media', 'close', 'Close', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (972, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (973, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (974, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (975, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (976, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (977, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (978, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (979, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (980, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (981, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (982, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (983, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (984, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (985, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (986, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (987, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (988, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (989, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (990, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (991, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (992, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (993, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (994, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (995, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (996, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (997, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (998, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (999, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1000, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1001, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1002, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1003, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1004, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1005, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1006, 1, 'en', 'core/media/media', 'add', 'Add media', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1007, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1008, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1009, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1010, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1011, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1012, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1013, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1014, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1015, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1016, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1017, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1018, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1019, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1020, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1021, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1022, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1023, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1024, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1025, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1026, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1027, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1028, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1029, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1030, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1031, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1032, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1033, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1034, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1035, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1036, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1037, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1038, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1039, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1040, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1041, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1042, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1043, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1044, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1045, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1046, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1047, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1048, 1, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1049, 1, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1050, 1, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1051, 1, 'vi', 'core/media/media', 'video', 'Phim', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1052, 1, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1053, 1, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1054, 1, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1055, 1, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1056, 1, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1057, 1, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1058, 1, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1059, 1, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1060, 1, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1061, 1, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1062, 1, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1063, 1, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1064, 1, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1065, 1, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1066, 1, 'vi', 'core/media/media', 'created_date_asc', 'Ngày tạo - ASC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1067, 1, 'vi', 'core/media/media', 'created_date_desc', 'Ngày tạo - DESC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1068, 1, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1069, 1, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1070, 1, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1071, 1, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1072, 1, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-02-24 05:10:55', '2021-02-24 05:10:55');
INSERT INTO `translations` VALUES (1073, 1, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1074, 1, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1075, 1, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1076, 1, 'vi', 'core/media/media', 'create', 'Tạo', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1077, 1, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1078, 1, 'vi', 'core/media/media', 'close', 'Đóng', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1079, 1, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1080, 1, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1081, 1, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1082, 1, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1083, 1, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1084, 1, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1085, 1, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1086, 1, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1087, 1, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1088, 1, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1089, 1, 'vi', 'core/media/media', 'name_reserved', 'Tên này không được phép đặt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1090, 1, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1091, 1, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1092, 1, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1093, 1, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1094, 1, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1095, 1, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1096, 1, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1097, 1, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1098, 1, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1099, 1, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1100, 1, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1101, 1, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1102, 1, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1103, 1, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1104, 1, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1105, 1, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1106, 1, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1107, 1, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1108, 1, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1109, 1, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1110, 1, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1111, 1, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1112, 1, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1113, 1, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1114, 1, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1115, 1, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1116, 1, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1117, 1, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1118, 1, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1119, 1, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1120, 1, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1121, 1, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1122, 1, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1123, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1124, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1125, 1, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1126, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1127, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1128, 1, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1129, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1130, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1131, 1, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1132, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1133, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1134, 1, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1135, 1, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1136, 1, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1137, 1, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1138, 1, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1139, 1, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1140, 1, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1141, 1, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1142, 1, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1143, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1144, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1145, 1, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1146, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1147, 1, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1148, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1149, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1150, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1151, 1, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1152, 1, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1153, 1, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1154, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1155, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1156, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1157, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1158, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1159, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1160, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1161, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1162, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1163, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1164, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1165, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1166, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1167, 1, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1168, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1169, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1170, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1171, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1172, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1173, 1, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1174, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1175, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1176, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1177, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1178, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1179, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1180, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1181, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1182, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1183, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1184, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1185, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1186, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1187, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1188, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1189, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1190, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1191, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1192, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1193, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1194, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1195, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1196, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1197, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1198, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1199, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1200, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Language direction', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1201, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1202, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1203, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1204, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1205, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1206, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1207, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1208, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1209, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1210, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1211, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1212, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1213, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1214, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1215, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1216, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1217, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1218, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1219, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1220, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1221, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1222, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1223, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1224, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1225, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1226, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1227, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1228, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1229, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1230, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1231, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1232, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1233, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1234, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1235, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1236, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1237, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1238, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1239, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1240, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1241, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1242, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1243, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1244, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1245, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1246, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1247, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1248, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1249, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1250, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1251, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1252, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1253, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1254, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1255, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1256, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1257, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1258, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1259, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1260, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1261, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1262, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1263, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1264, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1265, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1266, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1267, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1268, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1269, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1270, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1271, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1272, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1273, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1274, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1275, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1276, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1277, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1278, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1279, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1280, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1281, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1282, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1283, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1284, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1285, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1286, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1287, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1288, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1289, 1, 'en', 'core/setting/setting', 'template', 'Template', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1290, 1, 'en', 'core/setting/setting', 'description', 'Description', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1291, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1292, 1, 'en', 'core/setting/setting', 'send', 'Send', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1293, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1294, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1295, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1296, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1297, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1298, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1299, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1300, 1, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1301, 1, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1302, 1, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1303, 1, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1304, 1, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1305, 1, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1306, 1, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1307, 1, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1308, 1, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1309, 1, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1310, 1, 'vi', 'core/setting/setting', 'general.seo_keywords', 'Từ khoá SEO', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1311, 1, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1312, 1, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1313, 1, 'vi', 'core/setting/setting', 'general.enable_captcha', 'Sử dụng Captcha?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1314, 1, 'vi', 'core/setting/setting', 'general.contact_block', 'Thông tin liên hệ', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1315, 1, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1316, 1, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1317, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1318, 1, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1319, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1320, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1321, 1, 'vi', 'core/setting/setting', 'general.placeholder.seo_keywords', 'Từ khoá SEO (tối đa 60 kí tự, phân cách từ khóa bằng dấu phẩy)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1322, 1, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1323, 1, 'vi', 'core/setting/setting', 'general.enable_multi_language_in_admin', 'Cho phép thay đổi ngôn ngữ trang quản trị?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1324, 1, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1325, 1, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1326, 1, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1327, 1, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1328, 1, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1329, 1, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1330, 1, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1331, 1, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1332, 1, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1333, 1, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1334, 1, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1335, 1, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1336, 1, 'vi', 'core/setting/setting', 'general.locale', 'Ngôn ngữ', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1337, 1, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1338, 1, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1339, 1, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1340, 1, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1341, 1, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1342, 1, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1343, 1, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1344, 1, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1345, 1, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1346, 1, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1347, 1, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1348, 1, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1349, 1, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1350, 1, 'vi', 'core/setting/setting', 'email.mailer', 'Loại', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1351, 1, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1352, 1, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1353, 1, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1354, 1, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1355, 1, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1356, 1, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1357, 1, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1358, 1, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1359, 1, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1360, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1361, 1, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1362, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1363, 1, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1364, 1, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1365, 1, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1366, 1, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1367, 1, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1368, 1, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1369, 1, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1370, 1, 'vi', 'core/setting/setting', 'email.default', 'Mặc định', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1371, 1, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1372, 1, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1373, 1, 'vi', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1374, 1, 'vi', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1375, 1, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1376, 1, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1377, 1, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1378, 1, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1379, 1, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1380, 1, 'vi', 'core/setting/setting', 'email_setting_title', 'Cấu hình email', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1381, 1, 'en', 'core/table/table', 'operations', 'Operations', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1382, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1383, 1, 'en', 'core/table/table', 'display', 'Display', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1384, 1, 'en', 'core/table/table', 'all', 'All', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1385, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1386, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1387, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1388, 1, 'en', 'core/table/table', 'to', 'to', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1389, 1, 'en', 'core/table/table', 'in', 'in', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1390, 1, 'en', 'core/table/table', 'records', 'records', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1391, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1392, 1, 'en', 'core/table/table', 'no_record', 'No record', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1393, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1394, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1395, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1396, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1397, 1, 'en', 'core/table/table', 'delete', 'Delete', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1398, 1, 'en', 'core/table/table', 'close', 'Close', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1399, 1, 'en', 'core/table/table', 'contains', 'Contains', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1400, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1401, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1402, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1403, 1, 'en', 'core/table/table', 'value', 'Value', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1404, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1405, 1, 'en', 'core/table/table', 'reset', 'Reset', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1406, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1407, 1, 'en', 'core/table/table', 'apply', 'Apply', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1408, 1, 'en', 'core/table/table', 'filters', 'Filters', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1409, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1410, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1411, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1412, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1413, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1414, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-02-24 05:10:56', '2021-02-24 05:10:56');
INSERT INTO `translations` VALUES (1415, 1, 'en', 'core/table/table', 'search', 'Search...', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1416, 1, 'vi', 'core/table/table', 'operations', 'Hành động', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1417, 1, 'vi', 'core/table/table', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1418, 1, 'vi', 'core/table/table', 'display', 'Hiển thị', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1419, 1, 'vi', 'core/table/table', 'all', 'Tất cả', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1420, 1, 'vi', 'core/table/table', 'edit_entry', 'Sửa', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1421, 1, 'vi', 'core/table/table', 'delete_entry', 'Xoá', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1422, 1, 'vi', 'core/table/table', 'show_from', 'Hiển thị từ', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1423, 1, 'vi', 'core/table/table', 'to', 'đến', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1424, 1, 'vi', 'core/table/table', 'in', 'trong tổng số', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1425, 1, 'vi', 'core/table/table', 'records', 'bản ghi', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1426, 1, 'vi', 'core/table/table', 'no_data', 'Không có dữ liệu để hiển thị', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1427, 1, 'vi', 'core/table/table', 'no_record', 'không có bản ghi nào', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1428, 1, 'vi', 'core/table/table', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1429, 1, 'vi', 'core/table/table', 'confirm_delete', 'Xác nhận xoá', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1430, 1, 'vi', 'core/table/table', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1431, 1, 'vi', 'core/table/table', 'cancel', 'Huỷ bỏ', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1432, 1, 'vi', 'core/table/table', 'delete', 'Xoá', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1433, 1, 'vi', 'core/table/table', 'close', 'Đóng', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1434, 1, 'vi', 'core/table/table', 'is_equal_to', 'Bằng với', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1435, 1, 'vi', 'core/table/table', 'greater_than', 'Lớn hơn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1436, 1, 'vi', 'core/table/table', 'less_than', 'Nhỏ hơn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1437, 1, 'vi', 'core/table/table', 'value', 'Giá trị', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1438, 1, 'vi', 'core/table/table', 'select_field', 'Chọn trường', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1439, 1, 'vi', 'core/table/table', 'reset', 'Làm mới', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1440, 1, 'vi', 'core/table/table', 'add_additional_filter', 'Thêm bộ lọc', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1441, 1, 'vi', 'core/table/table', 'apply', 'Áp dụng', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1442, 1, 'vi', 'core/table/table', 'select_option', 'Lựa chọn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1443, 1, 'vi', 'core/table/table', 'filters', 'Lọc dữ liệu', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1444, 1, 'vi', 'core/table/table', 'bulk_change', 'Thay đổi hàng loạt', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1445, 1, 'vi', 'core/table/table', 'bulk_actions', 'Hành động', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1446, 1, 'vi', 'core/table/table', 'contains', 'Bao gồm', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1447, 1, 'vi', 'core/table/table', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1448, 1, 'vi', 'core/table/table', 'please_select_record', 'Vui lòng chọn ít nhất 1 bản ghi để thực hiện hành động này!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1449, 1, 'vi', 'core/table/table', 'save_bulk_change_success', 'Cập nhật dữ liệu cho các bản ghi thành công!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1450, 1, 'vi', 'core/table/table', 'search', 'Tìm kiếm...', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1451, 1, 'en', 'packages/installer/installer', 'title', 'Installer', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1452, 1, 'en', 'packages/installer/installer', 'next', 'Next Step', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1453, 1, 'en', 'packages/installer/installer', 'back', 'Previous', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1454, 1, 'en', 'packages/installer/installer', 'finish', 'Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1455, 1, 'en', 'packages/installer/installer', 'forms.errorTitle', 'The following errors occurred:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1456, 1, 'en', 'packages/installer/installer', 'welcome.templateTitle', 'Laravel CMS', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1457, 1, 'en', 'packages/installer/installer', 'welcome.title', 'Laravel CMS', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1458, 1, 'en', 'packages/installer/installer', 'welcome.message', 'Welcome to Laravel CMS. Before getting started, we need some information on the database. You will need to know the following items before proceeding.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1459, 1, 'en', 'packages/installer/installer', 'welcome.next', 'Let\'s go', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1460, 1, 'en', 'packages/installer/installer', 'requirements.templateTitle', 'Step 1 | Server Requirements', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1461, 1, 'en', 'packages/installer/installer', 'requirements.title', 'Server Requirements', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1462, 1, 'en', 'packages/installer/installer', 'requirements.next', 'Check Permissions', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1463, 1, 'en', 'packages/installer/installer', 'permissions.templateTitle', 'Step 2 | Permissions', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1464, 1, 'en', 'packages/installer/installer', 'permissions.title', 'Permissions', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1465, 1, 'en', 'packages/installer/installer', 'permissions.next', 'Configure Environment', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1466, 1, 'en', 'packages/installer/installer', 'environment.wizard.templateTitle', 'Environment Settings', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1467, 1, 'en', 'packages/installer/installer', 'environment.wizard.title', 'Environment Settings', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1468, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.name_required', 'An environment name is required.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1469, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_label', 'Site title', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1470, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_placeholder', 'Site title', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1471, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_label', 'URL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1472, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_placeholder', 'URL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1473, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label', 'Database Connection', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1474, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_mysql', 'MySQL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1475, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_sqlite', 'SQLite', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1476, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_pgsql', 'PostgreSQL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1477, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_label', 'Database host', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1478, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_placeholder', 'Database host', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1479, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_label', 'Database port', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1480, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_placeholder', 'Database port', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1481, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_label', 'Database name', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1482, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_placeholder', 'Database name', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1483, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_label', 'Database username', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1484, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_placeholder', 'Database username', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1485, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_label', 'Database password', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1486, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_placeholder', 'Database password', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1487, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.buttons.install', 'Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1488, 1, 'en', 'packages/installer/installer', 'environment.classic.templateTitle', 'Step 3 | Environment Settings | Classic Editor', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1489, 1, 'en', 'packages/installer/installer', 'environment.classic.title', 'Classic Environment Editor', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1490, 1, 'en', 'packages/installer/installer', 'environment.classic.save', 'Save .env', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1491, 1, 'en', 'packages/installer/installer', 'environment.classic.back', 'Use Form Wizard', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1492, 1, 'en', 'packages/installer/installer', 'environment.classic.install', 'Save and Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1493, 1, 'en', 'packages/installer/installer', 'environment.success', 'Your .env file settings have been saved.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1494, 1, 'en', 'packages/installer/installer', 'environment.errors', 'Unable to save the .env file, Please create it manually.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1495, 1, 'en', 'packages/installer/installer', 'install', 'Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1496, 1, 'en', 'packages/installer/installer', 'final.title', 'Installation Finished', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1497, 1, 'en', 'packages/installer/installer', 'final.templateTitle', 'Installation Finished', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1498, 1, 'en', 'packages/installer/installer', 'final.finished', 'Application has been successfully installed.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1499, 1, 'en', 'packages/installer/installer', 'final.migration', 'Migration & Seed Console Output:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1500, 1, 'en', 'packages/installer/installer', 'final.console', 'Application Console Output:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1501, 1, 'en', 'packages/installer/installer', 'final.log', 'Installation Log Entry:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1502, 1, 'en', 'packages/installer/installer', 'final.env', 'Final .env File:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1503, 1, 'en', 'packages/installer/installer', 'final.exit', 'Click here to exit', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1504, 1, 'en', 'packages/installer/installer', 'create_account', 'Create account', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1505, 1, 'en', 'packages/installer/installer', 'first_name', 'First name', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1506, 1, 'en', 'packages/installer/installer', 'last_name', 'Last name', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1507, 1, 'en', 'packages/installer/installer', 'username', 'Username', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1508, 1, 'en', 'packages/installer/installer', 'email', 'Email', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1509, 1, 'en', 'packages/installer/installer', 'password', 'Password', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1510, 1, 'en', 'packages/installer/installer', 'password_confirmation', 'Password confirmation', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1511, 1, 'en', 'packages/installer/installer', 'install_sample_data', 'Install sample data?', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1512, 1, 'en', 'packages/installer/installer', 'create', 'Create', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1513, 1, 'en', 'packages/installer/installer', 'install_success', 'Install Laravel CMS successfully!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1514, 1, 'en', 'packages/installer/installer', 'wrong_database_config', 'Wrong database config', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1515, 1, 'vi', 'packages/installer/installer', 'title', 'Installer', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1516, 1, 'vi', 'packages/installer/installer', 'next', 'Next Step', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1517, 1, 'vi', 'packages/installer/installer', 'back', 'Previous', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1518, 1, 'vi', 'packages/installer/installer', 'finish', 'Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1519, 1, 'vi', 'packages/installer/installer', 'forms.errorTitle', 'The following errors occurred:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1520, 1, 'vi', 'packages/installer/installer', 'welcome.templateTitle', 'Laravel CMS', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1521, 1, 'vi', 'packages/installer/installer', 'welcome.title', 'Laravel CMS', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1522, 1, 'vi', 'packages/installer/installer', 'welcome.message', 'Welcome to Laravel CMS. Before getting started, we need some information on the database. You will need to know the following items before proceeding.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1523, 1, 'vi', 'packages/installer/installer', 'welcome.next', 'Let\'s go', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1524, 1, 'vi', 'packages/installer/installer', 'requirements.templateTitle', 'Step 1 | Server Requirements', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1525, 1, 'vi', 'packages/installer/installer', 'requirements.title', 'Server Requirements', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1526, 1, 'vi', 'packages/installer/installer', 'requirements.next', 'Check Permissions', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1527, 1, 'vi', 'packages/installer/installer', 'permissions.templateTitle', 'Step 2 | Permissions', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1528, 1, 'vi', 'packages/installer/installer', 'permissions.title', 'Permissions', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1529, 1, 'vi', 'packages/installer/installer', 'permissions.next', 'Configure Environment', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1530, 1, 'vi', 'packages/installer/installer', 'environment.wizard.templateTitle', 'Environment Settings', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1531, 1, 'vi', 'packages/installer/installer', 'environment.wizard.title', 'Environment Settings', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1532, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.name_required', 'An environment name is required.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1533, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_name_label', 'Site title', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1534, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_name_placeholder', 'Site title', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1535, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_url_label', 'URL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1536, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.app_url_placeholder', 'URL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1537, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label', 'Database Connection', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1538, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_mysql', 'MySQL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1539, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_sqlite', 'SQLite', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1540, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_pgsql', 'PostgreSQL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1541, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_host_label', 'Database host', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1542, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_host_placeholder', 'Database host', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1543, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_port_label', 'Database port', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1544, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_port_placeholder', 'Database port', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1545, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_name_label', 'Database name', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1546, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_name_placeholder', 'Database name', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1547, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_username_label', 'Database username', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1548, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_username_placeholder', 'Database username', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1549, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_password_label', 'Database password', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1550, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.db_password_placeholder', 'Database password', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1551, 1, 'vi', 'packages/installer/installer', 'environment.wizard.form.buttons.install', 'Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1552, 1, 'vi', 'packages/installer/installer', 'environment.classic.templateTitle', 'Step 3 | Environment Settings | Classic Editor', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1553, 1, 'vi', 'packages/installer/installer', 'environment.classic.title', 'Classic Environment Editor', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1554, 1, 'vi', 'packages/installer/installer', 'environment.classic.save', 'Save .env', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1555, 1, 'vi', 'packages/installer/installer', 'environment.classic.back', 'Use Form Wizard', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1556, 1, 'vi', 'packages/installer/installer', 'environment.classic.install', 'Save and Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1557, 1, 'vi', 'packages/installer/installer', 'environment.success', 'Your .env file settings have been saved.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1558, 1, 'vi', 'packages/installer/installer', 'environment.errors', 'Unable to save the .env file, Please create it manually.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1559, 1, 'vi', 'packages/installer/installer', 'install', 'Install', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1560, 1, 'vi', 'packages/installer/installer', 'final.title', 'Installation Finished', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1561, 1, 'vi', 'packages/installer/installer', 'final.templateTitle', 'Installation Finished', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1562, 1, 'vi', 'packages/installer/installer', 'final.finished', 'Application has been successfully installed.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1563, 1, 'vi', 'packages/installer/installer', 'final.migration', 'Migration & Seed Console Output:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1564, 1, 'vi', 'packages/installer/installer', 'final.console', 'Application Console Output:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1565, 1, 'vi', 'packages/installer/installer', 'final.log', 'Installation Log Entry:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1566, 1, 'vi', 'packages/installer/installer', 'final.env', 'Final .env File:', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1567, 1, 'vi', 'packages/installer/installer', 'final.exit', 'Click here to exit', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1568, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1569, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1570, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1571, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1572, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1573, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1574, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1575, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1576, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1577, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1578, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1579, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1580, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1581, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1582, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1583, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1584, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1585, 1, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1586, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1587, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1588, 1, 'vi', 'packages/menu/menu', 'name', 'Trình đơn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1589, 1, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1590, 1, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1591, 1, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1592, 1, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1593, 1, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1594, 1, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1595, 1, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1596, 1, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1597, 1, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1598, 1, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1599, 1, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1600, 1, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1601, 1, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1602, 1, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1603, 1, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1604, 1, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1605, 1, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1606, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1607, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1608, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1609, 1, 'vi', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1610, 1, 'vi', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1611, 1, 'vi', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1612, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1613, 1, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1614, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1615, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1616, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1617, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1618, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1619, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1620, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1621, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1622, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1623, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1624, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1625, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1626, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1627, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1628, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1629, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1630, 1, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1631, 1, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1632, 1, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1633, 1, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1634, 1, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1635, 1, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1636, 1, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1637, 1, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1638, 1, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1639, 1, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1640, 1, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1641, 1, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1642, 1, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1643, 1, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1644, 1, 'vi', 'packages/page/pages', 'front_page', 'Trang chủ', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1645, 1, 'vi', 'packages/page/pages', 'settings.description', 'Cài đặt cho trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1646, 1, 'vi', 'packages/page/pages', 'settings.select', '-- Lựa chọn --', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1647, 1, 'vi', 'packages/page/pages', 'settings.show_on_front', 'Lựa chọn trang chủ', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1648, 1, 'vi', 'packages/page/pages', 'settings.title', 'Trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1649, 1, 'vi', 'packages/page/pages', 'total_pages', 'Tổng số trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1650, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1651, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1652, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1653, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1654, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1655, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1656, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1657, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1658, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1659, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1660, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1661, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1662, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1663, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1664, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1665, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1666, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1667, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1668, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1669, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1670, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1671, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1672, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1673, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1674, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin is removed!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1675, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1676, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1677, 1, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1678, 1, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1679, 1, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1680, 1, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1681, 1, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1682, 1, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1683, 1, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1684, 1, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1685, 1, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1686, 1, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các gói mở rộng :plugins trước khi kích hoạt gói này', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1687, 1, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Gói mở rộng', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1688, 1, 'vi', 'packages/plugin-management/plugin', 'remove', 'Xoá', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1689, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Xoá thành công!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1690, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin', 'Xoá gói mở rộng', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1691, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Bạn có chắc chắn muốn xoá plugin này?', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1692, 1, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Có, xoá!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1693, 1, 'vi', 'packages/plugin-management/plugin', 'total_plugins', 'Tất cả plugins', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1694, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1695, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1696, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1697, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1698, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1699, 1, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1700, 1, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1701, 1, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1702, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1703, 1, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1704, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1705, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1706, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1707, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1708, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1709, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1710, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1711, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1712, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1713, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1714, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1715, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1716, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1717, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1718, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1719, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1720, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1721, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1722, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1723, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1724, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1725, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1726, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1727, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-02-24 05:10:57', '2021-02-24 05:10:57');
INSERT INTO `translations` VALUES (1728, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1729, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1730, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1731, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1732, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1733, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1734, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1735, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1736, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1737, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1738, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1739, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1740, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1741, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1742, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1743, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1744, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1745, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1746, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1747, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1748, 1, 'vi', 'packages/theme/theme', 'name', 'Giao diện', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1749, 1, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1750, 1, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1751, 1, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1752, 1, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1753, 1, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1754, 1, 'vi', 'packages/theme/theme', 'appearance', 'Hiển thị', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1755, 1, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1756, 1, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1757, 1, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1758, 1, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1759, 1, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1760, 1, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1761, 1, 'vi', 'packages/theme/theme', 'remove', 'Xóa', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1762, 1, 'vi', 'packages/theme/theme', 'remove_theme', 'Xóa giao diện', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1763, 1, 'vi', 'packages/theme/theme', 'remove_theme_confirm_message', 'Bạn có chắc chắn muốn xóa giao diện này?', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1764, 1, 'vi', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Vâng, xác nhận xóa!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1765, 1, 'vi', 'packages/theme/theme', 'remove_theme_success', 'Xóa giao diện thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1766, 1, 'vi', 'packages/theme/theme', 'settings.description', 'Cài đặt giao diện', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1767, 1, 'vi', 'packages/theme/theme', 'settings.title', 'Giao diện', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1768, 1, 'vi', 'packages/theme/theme', 'show_admin_bar', 'Hiển thị admin bar (khi admin đã đăng nhập, vẫn hiển thị admin bar trên website)?', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1769, 1, 'vi', 'packages/theme/theme', 'theme_is_note_existed', 'Giao diện này không tồn tại!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1770, 1, 'vi', 'packages/theme/theme', 'total_themes', 'Tổng số giao diện', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1771, 1, 'vi', 'packages/theme/theme', 'add_new', 'Thêm mới', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1772, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1773, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1774, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1775, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1776, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1777, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1778, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1779, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1780, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1781, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1782, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1783, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1784, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1785, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1786, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1787, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1788, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1789, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1790, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1791, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1792, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1793, 1, 'vi', 'packages/widget/widget', 'name', 'Widgets', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1794, 1, 'vi', 'packages/widget/widget', 'create', 'New widget', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1795, 1, 'vi', 'packages/widget/widget', 'edit', 'Edit widget', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1796, 1, 'vi', 'packages/widget/widget', 'available', 'Tiện ích có sẵn', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1797, 1, 'vi', 'packages/widget/widget', 'delete', 'Xóa', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1798, 1, 'vi', 'packages/widget/widget', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1799, 1, 'vi', 'packages/widget/widget', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1800, 1, 'vi', 'packages/widget/widget', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1801, 1, 'vi', 'packages/widget/widget', 'select_menu', 'Lựa chọn trình đơn', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1802, 1, 'vi', 'packages/widget/widget', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1803, 1, 'vi', 'packages/widget/widget', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1804, 1, 'vi', 'packages/widget/widget', 'widget_recent_post', 'Bài viết gần đây', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1805, 1, 'vi', 'packages/widget/widget', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1806, 1, 'vi', 'packages/widget/widget', 'widget_tag', 'Thẻ', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1807, 1, 'vi', 'packages/widget/widget', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1808, 1, 'vi', 'packages/widget/widget', 'widget_text', 'Văn bản', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1809, 1, 'vi', 'packages/widget/widget', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1810, 1, 'vi', 'packages/widget/widget', 'delete_success', 'Xoá tiện ích thành công', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1811, 1, 'vi', 'packages/widget/widget', 'save_success', 'Lưu tiện ích thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1812, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1813, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1814, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1815, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1816, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1817, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1818, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1819, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1820, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1821, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1822, 1, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1823, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1824, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1825, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1826, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1827, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1828, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1829, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1830, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1831, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1832, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1833, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1834, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1835, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1836, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1837, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1838, 1, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1839, 1, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1840, 1, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1841, 1, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1842, 1, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1843, 1, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1844, 1, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1845, 1, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1846, 1, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1847, 1, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1848, 1, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1849, 1, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1850, 1, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1851, 1, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics\" target=\"_blank\">https://laravel-cms.gistensal.com/docs-cms/cms/:version/plugin-analytics</a>', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1852, 1, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1853, 1, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1854, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1855, 1, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1856, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1857, 1, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1858, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1859, 1, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1860, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1861, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1862, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1863, 1, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1864, 1, 'en', 'plugins/api/api', 'api_clients', 'API Clients', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1865, 1, 'en', 'plugins/api/api', 'create_new_client', 'Create new client', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1866, 1, 'en', 'plugins/api/api', 'create_new_client_success', 'Create new client successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1867, 1, 'en', 'plugins/api/api', 'edit_client', 'Edit client \":name\"', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1868, 1, 'en', 'plugins/api/api', 'edit_client_success', 'Updated client successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1869, 1, 'en', 'plugins/api/api', 'delete_success', 'Deleted client successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1870, 1, 'en', 'plugins/api/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1871, 1, 'en', 'plugins/api/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1872, 1, 'en', 'plugins/api/api', 'cancel_delete', 'No', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1873, 1, 'en', 'plugins/api/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1874, 1, 'en', 'plugins/api/api', 'name', 'Name', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1875, 1, 'en', 'plugins/api/api', 'cancel', 'Cancel', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1876, 1, 'en', 'plugins/api/api', 'save', 'Save', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1877, 1, 'en', 'plugins/api/api', 'edit', 'Edit', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1878, 1, 'en', 'plugins/api/api', 'delete', 'Delete', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1879, 1, 'en', 'plugins/api/api', 'client_id', 'Client ID', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1880, 1, 'en', 'plugins/api/api', 'secret', 'Secret', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1881, 1, 'vi', 'plugins/api/api', 'api_clients', 'API Clients', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1882, 1, 'vi', 'plugins/api/api', 'create_new_client', 'Tạo client mới', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1883, 1, 'vi', 'plugins/api/api', 'create_new_client_success', 'Tạo client mới thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1884, 1, 'vi', 'plugins/api/api', 'edit_client', 'Sửa client \":name\"', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1885, 1, 'vi', 'plugins/api/api', 'edit_client_success', 'Cập nhật client thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1886, 1, 'vi', 'plugins/api/api', 'delete_success', 'Xoá client thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1887, 1, 'vi', 'plugins/api/api', 'confirm_delete_title', 'Xoá client \":name\"', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1888, 1, 'vi', 'plugins/api/api', 'confirm_delete_description', 'Bạn có chắc chắn muốn xoá client \":name\"?', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1889, 1, 'vi', 'plugins/api/api', 'cancel_delete', 'Không', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1890, 1, 'vi', 'plugins/api/api', 'continue_delete', 'Có, tiếp tục xoá!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1891, 1, 'vi', 'plugins/api/api', 'name', 'Tên', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1892, 1, 'vi', 'plugins/api/api', 'cancel', 'Huỷ bỏ', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1893, 1, 'vi', 'plugins/api/api', 'save', 'Lưu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1894, 1, 'vi', 'plugins/api/api', 'edit', 'Sửa', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1895, 1, 'vi', 'plugins/api/api', 'delete', 'Xoá', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1896, 1, 'vi', 'plugins/api/api', 'client_id', 'Client ID', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1897, 1, 'vi', 'plugins/api/api', 'secret', 'Chuỗi bí mật', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1898, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1899, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1900, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1901, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1902, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1903, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1904, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1905, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1906, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1907, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1908, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1909, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1910, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1911, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1912, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1913, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1914, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1915, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1916, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1917, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1918, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1919, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1920, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1921, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1922, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1923, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1924, 1, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1925, 1, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1926, 1, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1927, 1, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1928, 1, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1929, 1, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1930, 1, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1931, 1, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1932, 1, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1933, 1, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1934, 1, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1935, 1, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1936, 1, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1937, 1, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1938, 1, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1939, 1, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1940, 1, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1941, 1, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1942, 1, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1943, 1, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1944, 1, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1945, 1, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1946, 1, 'vi', 'plugins/audit-log/history', 'system', 'Hệ thống', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1947, 1, 'vi', 'plugins/audit-log/history', 'action', 'Hành động', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1948, 1, 'vi', 'plugins/audit-log/history', 'delete_all', 'Xóa tất cả bản ghi', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1949, 1, 'vi', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1950, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1951, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1952, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1953, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1954, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1955, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1956, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1957, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1958, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1959, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1960, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1961, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1962, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1963, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1964, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1965, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1966, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1967, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1968, 1, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1969, 1, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1970, 1, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1971, 1, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1972, 1, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1973, 1, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1974, 1, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1975, 1, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1976, 1, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1977, 1, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1978, 1, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1979, 1, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1980, 1, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1981, 1, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1982, 1, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1983, 1, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1984, 1, 'en', 'plugins/block/block', 'name', 'Block', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1985, 1, 'en', 'plugins/block/block', 'create', 'New block', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1986, 1, 'en', 'plugins/block/block', 'edit', 'Edit block', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1987, 1, 'en', 'plugins/block/block', 'menu', 'Static Blocks', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1988, 1, 'en', 'plugins/block/block', 'static_block_short_code_name', 'Static Block', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1989, 1, 'en', 'plugins/block/block', 'static_block_short_code_description', 'Add a custom static block', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1990, 1, 'en', 'plugins/block/block', 'alias', 'Alias', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1991, 1, 'vi', 'plugins/block/block', 'name', 'Nội dung tĩnh', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1992, 1, 'vi', 'plugins/block/block', 'create', 'Thêm nội dung tĩnh', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1993, 1, 'vi', 'plugins/block/block', 'edit', 'Sửa nội dung tĩnh', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1994, 1, 'vi', 'plugins/block/block', 'menu', 'Nội dung tĩnh', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1995, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1996, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1997, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1998, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (1999, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2000, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2001, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2002, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2003, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2004, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2005, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2006, 1, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2007, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2008, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2009, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2010, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2011, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-02-24 05:10:58', '2021-02-24 05:10:58');
INSERT INTO `translations` VALUES (2012, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2013, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2014, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2015, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2016, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2017, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2018, 1, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2019, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2020, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2021, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2022, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2023, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2024, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2025, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2026, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2027, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2028, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2029, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2030, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2031, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2032, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2033, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2034, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2035, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2036, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2037, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2038, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2039, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2040, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2041, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2042, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2043, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2044, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2045, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2046, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2047, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2048, 1, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2049, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2050, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2051, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2052, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2053, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2054, 1, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2055, 1, 'vi', 'plugins/blog/base', 'blog_page', 'Trang Blog', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2056, 1, 'vi', 'plugins/blog/base', 'select', '-- Lựa chọn --', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2057, 1, 'vi', 'plugins/blog/base', 'blog_page_id', 'Trang Blog', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2058, 1, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2059, 1, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2060, 1, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2061, 1, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2062, 1, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2063, 1, 'vi', 'plugins/blog/categories', 'none', 'Không', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2064, 1, 'vi', 'plugins/blog/member', 'dob', 'Born :date', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2065, 1, 'vi', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2066, 1, 'vi', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2067, 1, 'vi', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2068, 1, 'vi', 'plugins/blog/member', 'posts', 'Posts', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2069, 1, 'vi', 'plugins/blog/member', 'write_post', 'Write a post', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2070, 1, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2071, 1, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2072, 1, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2073, 1, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2074, 1, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2075, 1, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2076, 1, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2077, 1, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2078, 1, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2079, 1, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2080, 1, 'vi', 'plugins/blog/posts', 'form.is_featured', 'Bài viết nổi bật?', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2081, 1, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2082, 1, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2083, 1, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2084, 1, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2085, 1, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2086, 1, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2087, 1, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2088, 1, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2089, 1, 'vi', 'plugins/blog/posts', 'post', 'Bài viết', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2090, 1, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2091, 1, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2092, 1, 'vi', 'plugins/blog/posts', 'categories', 'Danh mục', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2093, 1, 'vi', 'plugins/blog/posts', 'category', 'Danh mục', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2094, 1, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2095, 1, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2096, 1, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2097, 1, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2098, 1, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2099, 1, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2100, 1, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2101, 1, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2102, 1, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2103, 1, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2104, 1, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2105, 1, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2106, 1, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2107, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2108, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2109, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2110, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2111, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2112, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2113, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2114, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2115, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2116, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2117, 1, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2118, 1, 'vi', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2119, 1, 'vi', 'plugins/captcha/captcha', 'settings.description', 'Cài đặt cho Google Captcha', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2120, 1, 'vi', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2121, 1, 'vi', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2122, 1, 'vi', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Bật Captcha?', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2123, 1, 'vi', 'plugins/captcha/captcha', 'settings.helper', 'Truy cập https://www.google.com/recaptcha/admin#list để lấy thông tin về Site key và Secret.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2124, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2125, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2126, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2127, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2128, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2129, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2130, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2131, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2132, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2133, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2134, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2135, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2136, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2137, 1, 'en', 'plugins/contact/contact', 'email.success', 'Send message successfully!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2138, 1, 'en', 'plugins/contact/contact', 'email.failed', 'Can\'t send message on this time, please try again later!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2139, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2140, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2141, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2142, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2143, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2144, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2145, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2146, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2147, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2148, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2149, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2150, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2151, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2152, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2153, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2154, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2155, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2156, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2157, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2158, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2159, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2160, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2161, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2162, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2163, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2164, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2165, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2166, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2167, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2168, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2169, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2170, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2171, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2172, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2173, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2174, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2175, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2176, 1, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2177, 1, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2178, 1, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2179, 1, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2180, 1, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2181, 1, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2182, 1, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2183, 1, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2184, 1, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2185, 1, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2186, 1, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2187, 1, 'vi', 'plugins/contact/contact', 'email.success', 'Gửi tin nhắn thành công!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2188, 1, 'vi', 'plugins/contact/contact', 'email.failed', 'Có lỗi trong quá trình gửi tin nhắn!', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2189, 1, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2190, 1, 'vi', 'plugins/contact/contact', 'form.name.required', 'Tên là bắt buộc', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2191, 1, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email là bắt buộc', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2192, 1, 'vi', 'plugins/contact/contact', 'form.email.email', 'Địa chỉ email không hợp lệ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2193, 1, 'vi', 'plugins/contact/contact', 'form.content.required', 'Nội dung là bắt buộc', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2194, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.required', 'Hãy xác minh không phải là robot trước khi gửi tin nhắn.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2195, 1, 'vi', 'plugins/contact/contact', 'form.g-recaptcha-response.captcha', 'Bạn chưa xác minh không phải là robot thành công.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2196, 1, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2197, 1, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2198, 1, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2199, 1, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2200, 1, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2201, 1, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2202, 1, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2203, 1, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2204, 1, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2205, 1, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2206, 1, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2207, 1, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2208, 1, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2209, 1, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2210, 1, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2211, 1, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2212, 1, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2213, 1, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2214, 1, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2215, 1, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2216, 1, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2217, 1, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2218, 1, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2219, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2220, 1, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2221, 1, 'vi', 'plugins/contact/contact', 'replies', 'Trả lời', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2222, 1, 'vi', 'plugins/contact/contact', 'form_subject', 'Tiêu đề', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2223, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2224, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2225, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2226, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2227, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2228, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2229, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2230, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2231, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2232, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2233, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2234, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2235, 1, 'en', 'plugins/custom-field/base', 'admin_menu.title', 'Custom Fields', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2236, 1, 'en', 'plugins/custom-field/base', 'page_title', 'Custom Fields', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2237, 1, 'en', 'plugins/custom-field/base', 'all_field_groups', 'All field groups', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2238, 1, 'en', 'plugins/custom-field/base', 'form.create_field_group', 'Create field group', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2239, 1, 'en', 'plugins/custom-field/base', 'form.edit_field_group', 'Edit field group', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2240, 1, 'en', 'plugins/custom-field/base', 'form.field_items_information', 'Field items information', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2241, 1, 'en', 'plugins/custom-field/base', 'form.repeater_fields', 'Repeater', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2242, 1, 'en', 'plugins/custom-field/base', 'form.add_field', 'Add field', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2243, 1, 'en', 'plugins/custom-field/base', 'form.remove_field', 'Remove field', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2244, 1, 'en', 'plugins/custom-field/base', 'form.close_field', 'Close field', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2245, 1, 'en', 'plugins/custom-field/base', 'form.field_label', 'Label', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2246, 1, 'en', 'plugins/custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2247, 1, 'en', 'plugins/custom-field/base', 'form.field_name', 'Field name', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2248, 1, 'en', 'plugins/custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2249, 1, 'en', 'plugins/custom-field/base', 'form.field_type', 'Field type', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2250, 1, 'en', 'plugins/custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2251, 1, 'en', 'plugins/custom-field/base', 'form.field_instructions', 'Field instructions', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2252, 1, 'en', 'plugins/custom-field/base', 'form.field_instructions_helper', 'HThe instructions guide for user easier know what they need to input.', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2253, 1, 'en', 'plugins/custom-field/base', 'form.default_value', 'Default value', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2254, 1, 'en', 'plugins/custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2255, 1, 'en', 'plugins/custom-field/base', 'form.placeholder', 'Placeholder', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2256, 1, 'en', 'plugins/custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2257, 1, 'en', 'plugins/custom-field/base', 'form.rows', 'Rows', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2258, 1, 'en', 'plugins/custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2259, 1, 'en', 'plugins/custom-field/base', 'form.toolbar', 'Toolbar', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2260, 1, 'en', 'plugins/custom-field/base', 'form.toolbar_helper', 'The toolbar when use editor', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2261, 1, 'en', 'plugins/custom-field/base', 'form.toolbar_basic', 'Basic', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2262, 1, 'en', 'plugins/custom-field/base', 'form.toolbar_full', 'Full', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2263, 1, 'en', 'plugins/custom-field/base', 'form.choices', 'Choices', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2264, 1, 'en', 'plugins/custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2265, 1, 'en', 'plugins/custom-field/base', 'form.button_label', 'Button for repeater', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2266, 1, 'en', 'plugins/custom-field/base', 'form.groups.basic', 'Basic', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2267, 1, 'en', 'plugins/custom-field/base', 'form.groups.content', 'Content', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2268, 1, 'en', 'plugins/custom-field/base', 'form.groups.choice', 'Choices', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2269, 1, 'en', 'plugins/custom-field/base', 'form.groups.other', 'Other', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2270, 1, 'en', 'plugins/custom-field/base', 'form.types.text', 'Text field', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2271, 1, 'en', 'plugins/custom-field/base', 'form.types.textarea', 'Textarea', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2272, 1, 'en', 'plugins/custom-field/base', 'form.types.number', 'Number', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2273, 1, 'en', 'plugins/custom-field/base', 'form.types.email', 'Email', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2274, 1, 'en', 'plugins/custom-field/base', 'form.types.password', 'Password', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2275, 1, 'en', 'plugins/custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2276, 1, 'en', 'plugins/custom-field/base', 'form.types.image', 'Image', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2277, 1, 'en', 'plugins/custom-field/base', 'form.types.file', 'File', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2278, 1, 'en', 'plugins/custom-field/base', 'form.types.select', 'Select', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2279, 1, 'en', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2280, 1, 'en', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2281, 1, 'en', 'plugins/custom-field/base', 'form.types.repeater', 'Repeater', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2282, 1, 'en', 'plugins/custom-field/base', 'form.rules.rules', 'Display rules', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2283, 1, 'en', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2284, 1, 'en', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2285, 1, 'en', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2021-02-24 05:10:59', '2021-02-24 05:10:59');
INSERT INTO `translations` VALUES (2286, 1, 'en', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2287, 1, 'en', 'plugins/custom-field/base', 'form.rules.and', 'And', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2288, 1, 'en', 'plugins/custom-field/base', 'form.rules.or', 'Or', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2289, 1, 'en', 'plugins/custom-field/base', 'import', 'Import', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2290, 1, 'en', 'plugins/custom-field/base', 'export', 'Export', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2291, 1, 'en', 'plugins/custom-field/base', 'publish', 'Publish', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2292, 1, 'en', 'plugins/custom-field/base', 'remove_this_line', 'Remove this line', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2293, 1, 'en', 'plugins/custom-field/base', 'collapse_this_line', 'Collapse this line', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2294, 1, 'en', 'plugins/custom-field/base', 'error_occurred', 'Error occurred', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2295, 1, 'en', 'plugins/custom-field/base', 'request_completed', 'Request completed', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2296, 1, 'en', 'plugins/custom-field/base', 'item_not_existed', 'Item is not exists', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2297, 1, 'en', 'plugins/custom-field/rules', 'groups.basic', 'Basic', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2298, 1, 'en', 'plugins/custom-field/rules', 'groups.other', 'Other', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2299, 1, 'en', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2300, 1, 'en', 'plugins/custom-field/rules', 'logged_in_user', 'Logged in user', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2301, 1, 'en', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2302, 1, 'en', 'plugins/custom-field/rules', 'page_template', 'Page template', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2303, 1, 'en', 'plugins/custom-field/rules', 'page', 'Page', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2304, 1, 'en', 'plugins/custom-field/rules', 'model_name', 'Model name', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2305, 1, 'en', 'plugins/custom-field/rules', 'model_name_page', 'Page', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2306, 1, 'en', 'plugins/custom-field/rules', 'category', 'Category', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2307, 1, 'en', 'plugins/custom-field/rules', 'post_with_related_category', 'Post with related category', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2308, 1, 'en', 'plugins/custom-field/rules', 'model_name_post', 'Post (blog)', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2309, 1, 'en', 'plugins/custom-field/rules', 'model_name_category', 'Category (blog)', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2310, 1, 'en', 'plugins/custom-field/rules', 'post_format', 'Post format', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2311, 1, 'vi', 'plugins/custom-field/base', 'admin_menu.title', 'Trường tùy chỉnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2312, 1, 'vi', 'plugins/custom-field/base', 'page_title', 'Trường tùy chỉnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2313, 1, 'vi', 'plugins/custom-field/base', 'all_field_groups', 'Tất cả nhóm trường tùy chỉnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2314, 1, 'vi', 'plugins/custom-field/base', 'form.create_field_group', 'Thêm nhóm trường mới', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2315, 1, 'vi', 'plugins/custom-field/base', 'form.edit_field_group', 'Chỉnh sửa trường tùy chỉnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2316, 1, 'vi', 'plugins/custom-field/base', 'form.field_items_information', 'Thiết đặt các mục con của trường này', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2317, 1, 'vi', 'plugins/custom-field/base', 'form.repeater_fields', 'Bộ lặp', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2318, 1, 'vi', 'plugins/custom-field/base', 'form.add_field', 'Thêm trường', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2319, 1, 'vi', 'plugins/custom-field/base', 'form.remove_field', 'Xóa trường này', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2320, 1, 'vi', 'plugins/custom-field/base', 'form.close_field', 'Thu nhỏ trường này lại', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2321, 1, 'vi', 'plugins/custom-field/base', 'form.field_label', 'Nhãn', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2322, 1, 'vi', 'plugins/custom-field/base', 'form.field_label_helper', 'Đây là tiêu đề của từng trường, xuất hiện ở các trang chỉnh sửa', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2323, 1, 'vi', 'plugins/custom-field/base', 'form.field_name', 'Tên truy nhập trường', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2324, 1, 'vi', 'plugins/custom-field/base', 'form.field_name_helper', 'Tên truy nhập của trường. Chỉ chấp nhận ký tự thường và dấu gạch dưới', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2325, 1, 'vi', 'plugins/custom-field/base', 'form.field_type', 'Kiểu trường', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2326, 1, 'vi', 'plugins/custom-field/base', 'form.field_type_helper', 'Vui lòng chọn một kiểu phù hợp cho bạn', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2327, 1, 'vi', 'plugins/custom-field/base', 'form.field_instructions', 'Hướng dẫn nhập liệu cho trường', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2328, 1, 'vi', 'plugins/custom-field/base', 'form.field_instructions_helper', 'Hướng dẫn nhập liệu từng trường cho người nhập liệu. Hiển thị ở các trang chỉnh sửa', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2329, 1, 'vi', 'plugins/custom-field/base', 'form.default_value', 'Giá trị mặc định', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2330, 1, 'vi', 'plugins/custom-field/base', 'form.default_value_helper', 'Tự động khởi tạo khi trường bị để trống', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2331, 1, 'vi', 'plugins/custom-field/base', 'form.placeholder', 'Mô tả trường', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2332, 1, 'vi', 'plugins/custom-field/base', 'form.placeholder_helper', 'Xuất hiện ngay bên trong mục nhập khi trường bị để trống', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2333, 1, 'vi', 'plugins/custom-field/base', 'form.rows', 'Số dòng', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2334, 1, 'vi', 'plugins/custom-field/base', 'form.rows_helper', 'Số dòng được khởi tạo khi sử dụng trường textarea', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2335, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar', 'Thanh công cụ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2336, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar_helper', 'Tùy chỉnh kiểu thanh công cụ khi sử dụng trình nhập liệu', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2337, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar_basic', 'Thanh công cụ đơn giản', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2338, 1, 'vi', 'plugins/custom-field/base', 'form.toolbar_full', 'Thanh công cụ đầy đủ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2339, 1, 'vi', 'plugins/custom-field/base', 'form.choices', 'Các mục lựa chọn', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2340, 1, 'vi', 'plugins/custom-field/base', 'form.choices_helper', 'Nhập mỗi lựa chọn trên một dòng mới. <br> Để quản lý tốt hơn, bạn có thể cần phải xác định rõ cả nhãn và giá trị lựa chọn như sau: <br> red: Red <br> blue: Blue', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2341, 1, 'vi', 'plugins/custom-field/base', 'form.button_label', 'Nhãn cho nút thêm mới bộ lặp', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2342, 1, 'vi', 'plugins/custom-field/base', 'form.groups.basic', 'Cơ bản', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2343, 1, 'vi', 'plugins/custom-field/base', 'form.groups.content', 'Nội dung', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2344, 1, 'vi', 'plugins/custom-field/base', 'form.groups.choice', 'Lựa chọn', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2345, 1, 'vi', 'plugins/custom-field/base', 'form.groups.other', 'Khác', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2346, 1, 'vi', 'plugins/custom-field/base', 'form.types.text', 'Văn bản', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2347, 1, 'vi', 'plugins/custom-field/base', 'form.types.textarea', 'Văn bản nhiều dòng', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2348, 1, 'vi', 'plugins/custom-field/base', 'form.types.number', 'Số', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2349, 1, 'vi', 'plugins/custom-field/base', 'form.types.email', 'Thư điện tử', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2350, 1, 'vi', 'plugins/custom-field/base', 'form.types.password', 'Mật khẩu', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2351, 1, 'vi', 'plugins/custom-field/base', 'form.types.wysiwyg', 'Trình nhập liệu', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2352, 1, 'vi', 'plugins/custom-field/base', 'form.types.image', 'Hình ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2353, 1, 'vi', 'plugins/custom-field/base', 'form.types.file', 'Tập tin', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2354, 1, 'vi', 'plugins/custom-field/base', 'form.types.select', 'Thanh lựa chọn', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2355, 1, 'vi', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2356, 1, 'vi', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2357, 1, 'vi', 'plugins/custom-field/base', 'form.types.repeater', 'Bộ lặp', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2358, 1, 'vi', 'plugins/custom-field/base', 'form.rules.rules', 'Luật hiển thị', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2359, 1, 'vi', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Hiển thị nhóm trường này nếu', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2360, 1, 'vi', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Thêm nhóm luật mới', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2361, 1, 'vi', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Tương đương', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2362, 1, 'vi', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Khác với', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2363, 1, 'vi', 'plugins/custom-field/base', 'form.rules.and', 'Và', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2364, 1, 'vi', 'plugins/custom-field/base', 'form.rules.or', 'Hoặc', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2365, 1, 'vi', 'plugins/custom-field/base', 'import', 'Nhập dữ liệu', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2366, 1, 'vi', 'plugins/custom-field/base', 'export', 'Xuất dữ liệu', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2367, 1, 'vi', 'plugins/custom-field/rules', 'groups.basic', 'Cơ bản', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2368, 1, 'vi', 'plugins/custom-field/rules', 'groups.other', 'Khác', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2369, 1, 'vi', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2370, 1, 'vi', 'plugins/custom-field/rules', 'logged_in_user', 'Người đăng nhập hiện tại', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2371, 1, 'vi', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Người đăng nhập hiện tại có vai trò', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2372, 1, 'vi', 'plugins/custom-field/rules', 'page_template', 'Giao diện trang tĩnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2373, 1, 'vi', 'plugins/custom-field/rules', 'page', 'Trang tĩnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2374, 1, 'vi', 'plugins/custom-field/rules', 'model_name', 'Tên model', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2375, 1, 'vi', 'plugins/custom-field/rules', 'model_name_page', 'Trang tĩnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2376, 1, 'vi', 'plugins/custom-field/rules', 'category', 'Danh mục bài viết', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2377, 1, 'vi', 'plugins/custom-field/rules', 'post_with_related_category', 'Bài viết có danh mục', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2378, 1, 'vi', 'plugins/custom-field/rules', 'model_name_post', 'Bài viết (blog)', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2379, 1, 'vi', 'plugins/custom-field/rules', 'model_name_category', 'Danh mục (blog)', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2380, 1, 'vi', 'plugins/custom-field/rules', 'post_format', 'Định dạng bài viết', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2381, 1, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2382, 1, 'en', 'plugins/gallery/gallery', 'edit', 'Edit gallery', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2383, 1, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2384, 1, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2385, 1, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2386, 1, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2387, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2388, 1, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2389, 1, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2390, 1, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2391, 1, 'en', 'plugins/gallery/gallery', 'by', 'By', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2392, 1, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2393, 1, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2394, 1, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2395, 1, 'en', 'plugins/gallery/gallery', 'shortcode_name', 'Gallery images', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2396, 1, 'en', 'plugins/gallery/gallery', 'limit_display', 'Limit number display', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2397, 1, 'vi', 'plugins/gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2398, 1, 'vi', 'plugins/gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2399, 1, 'vi', 'plugins/gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2400, 1, 'vi', 'plugins/gallery/gallery', 'galleries', 'Thư viện ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2401, 1, 'vi', 'plugins/gallery/gallery', 'item', 'Ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2402, 1, 'vi', 'plugins/gallery/gallery', 'reset', 'Làm mới thư viện', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2403, 1, 'vi', 'plugins/gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2404, 1, 'vi', 'plugins/gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2405, 1, 'vi', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2406, 1, 'vi', 'plugins/gallery/gallery', 'by', 'Bởi', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2407, 1, 'vi', 'plugins/gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2408, 1, 'vi', 'plugins/gallery/gallery', 'menu_name', 'Thư viện ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2409, 1, 'vi', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Thêm thư viện ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2410, 1, 'vi', 'plugins/gallery/gallery', 'gallery_images', 'Thư viện ảnh', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2411, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2412, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2413, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2414, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2415, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2416, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2417, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2418, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2419, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2420, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2421, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2422, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2423, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2424, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2425, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2426, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2427, 1, 'en', 'plugins/language/language', 'order', 'Order', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2428, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2429, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2430, 1, 'en', 'plugins/language/language', 'code', 'Code', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2431, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2432, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2433, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2434, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2435, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2436, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2437, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2438, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2439, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2440, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2441, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2442, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2443, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2444, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2445, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2446, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2447, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2448, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2449, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2450, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2451, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2452, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2453, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2454, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2455, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2456, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2457, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2458, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2459, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2460, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2461, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2462, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2463, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2464, 1, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2465, 1, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2466, 1, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2467, 1, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2468, 1, 'vi', 'plugins/language/language', 'language_name', 'Tên đầy đủ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2469, 1, 'vi', 'plugins/language/language', 'language_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2470, 1, 'vi', 'plugins/language/language', 'locale', 'Locale', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2471, 1, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>).', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2472, 1, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2473, 1, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2474, 1, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2475, 1, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2476, 1, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2477, 1, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2478, 1, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2479, 1, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2480, 1, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2481, 1, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2482, 1, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2483, 1, 'vi', 'plugins/language/language', 'code', 'Mã', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2484, 1, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2485, 1, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2486, 1, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2487, 1, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2488, 1, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2489, 1, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2490, 1, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2491, 1, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2492, 1, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2021-02-24 05:11:00', '2021-02-24 05:11:00');
INSERT INTO `translations` VALUES (2493, 1, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2494, 1, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2495, 1, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2496, 1, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2497, 1, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2498, 1, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2499, 1, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2500, 1, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2501, 1, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2502, 1, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2503, 1, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2504, 1, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2505, 1, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2506, 1, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2507, 1, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2508, 1, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2509, 1, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2510, 1, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2511, 1, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2512, 1, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2513, 1, 'vi', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Hiển thị bản ghi ở ngôn ngữ mặc định nếu phiên bản cho ngôn ngữ hiện tại chưa có', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2514, 1, 'en', 'plugins/member/dashboard', 'joined_on', 'Joined :date', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2515, 1, 'en', 'plugins/member/dashboard', 'dob', 'Born :date', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2516, 1, 'en', 'plugins/member/dashboard', 'email', 'Email', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2517, 1, 'en', 'plugins/member/dashboard', 'password', 'Password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2518, 1, 'en', 'plugins/member/dashboard', 'password-confirmation', 'Confirm Password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2519, 1, 'en', 'plugins/member/dashboard', 'remember-me', 'Remember Me', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2520, 1, 'en', 'plugins/member/dashboard', 'login-title', 'Login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2521, 1, 'en', 'plugins/member/dashboard', 'login-cta', 'Login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2522, 1, 'en', 'plugins/member/dashboard', 'register-title', 'Register', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2523, 1, 'en', 'plugins/member/dashboard', 'register-cta', 'Register', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2524, 1, 'en', 'plugins/member/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2525, 1, 'en', 'plugins/member/dashboard', 'name', 'Name', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2526, 1, 'en', 'plugins/member/dashboard', 'reset-password-title', 'Reset Password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2527, 1, 'en', 'plugins/member/dashboard', 'reset-password-cta', 'Reset Password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2528, 1, 'en', 'plugins/member/dashboard', 'cancel-link', 'Cancel', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2529, 1, 'en', 'plugins/member/dashboard', 'logout-cta', 'Logout', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2530, 1, 'en', 'plugins/member/dashboard', 'header_profile_link', 'Profile', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2531, 1, 'en', 'plugins/member/dashboard', 'header_settings_link', 'Settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2532, 1, 'en', 'plugins/member/dashboard', 'header_logout_link', 'Logout', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2533, 1, 'en', 'plugins/member/dashboard', 'unknown_state', 'Unknown', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2534, 1, 'en', 'plugins/member/dashboard', 'close', 'Close', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2535, 1, 'en', 'plugins/member/dashboard', 'save', 'Save', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2536, 1, 'en', 'plugins/member/dashboard', 'loading', 'Loading...', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2537, 1, 'en', 'plugins/member/dashboard', 'new_image', 'New image', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2538, 1, 'en', 'plugins/member/dashboard', 'change_profile_image', 'Change avatar', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2539, 1, 'en', 'plugins/member/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2540, 1, 'en', 'plugins/member/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2541, 1, 'en', 'plugins/member/dashboard', 'failed_to_load_data', 'Failed to load data', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2542, 1, 'en', 'plugins/member/dashboard', 'read_image_failed', 'Read image failed', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2543, 1, 'en', 'plugins/member/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2544, 1, 'en', 'plugins/member/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2545, 1, 'en', 'plugins/member/dashboard', 'notices.error', 'Error!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2546, 1, 'en', 'plugins/member/dashboard', 'notices.success', 'Success!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2547, 1, 'en', 'plugins/member/dashboard', 'sidebar_title', 'Personal settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2548, 1, 'en', 'plugins/member/dashboard', 'sidebar_information', 'Account Information', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2549, 1, 'en', 'plugins/member/dashboard', 'sidebar_security', 'Security', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2550, 1, 'en', 'plugins/member/dashboard', 'account_field_title', 'Account Information', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2551, 1, 'en', 'plugins/member/dashboard', 'profile-picture', 'Profile picture', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2552, 1, 'en', 'plugins/member/dashboard', 'uploading', 'Uploading...', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2553, 1, 'en', 'plugins/member/dashboard', 'phone', 'Phone', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2554, 1, 'en', 'plugins/member/dashboard', 'first_name', 'First name', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2555, 1, 'en', 'plugins/member/dashboard', 'last_name', 'Last name', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2556, 1, 'en', 'plugins/member/dashboard', 'description', 'Short description', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2557, 1, 'en', 'plugins/member/dashboard', 'description_placeholder', 'Tell something about yourself...', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2558, 1, 'en', 'plugins/member/dashboard', 'verified', 'Verified', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2559, 1, 'en', 'plugins/member/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2560, 1, 'en', 'plugins/member/dashboard', 'birthday', 'Birthday', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2561, 1, 'en', 'plugins/member/dashboard', 'year_lc', 'year', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2562, 1, 'en', 'plugins/member/dashboard', 'month_lc', 'month', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2563, 1, 'en', 'plugins/member/dashboard', 'day_lc', 'day', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2564, 1, 'en', 'plugins/member/dashboard', 'gender', 'Gender', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2565, 1, 'en', 'plugins/member/dashboard', 'gender_male', 'Male', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2566, 1, 'en', 'plugins/member/dashboard', 'gender_female', 'Female', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2567, 1, 'en', 'plugins/member/dashboard', 'gender_other', 'Other', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2568, 1, 'en', 'plugins/member/dashboard', 'security_title', 'Security', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2569, 1, 'en', 'plugins/member/dashboard', 'current_password', 'Current password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2570, 1, 'en', 'plugins/member/dashboard', 'password_new', 'New password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2571, 1, 'en', 'plugins/member/dashboard', 'password_new_confirmation', 'Confirmation password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2572, 1, 'en', 'plugins/member/dashboard', 'password_update_btn', 'Update password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2573, 1, 'en', 'plugins/member/dashboard', 'activity_logs', 'Activity Logs', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2574, 1, 'en', 'plugins/member/dashboard', 'oops', 'Oops!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2575, 1, 'en', 'plugins/member/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2576, 1, 'en', 'plugins/member/dashboard', 'actions.create_post', 'You have created post \":name\"', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2577, 1, 'en', 'plugins/member/dashboard', 'actions.update_post', 'You have updated post \":name\"', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2578, 1, 'en', 'plugins/member/dashboard', 'actions.delete_post', 'You have deleted post \":name\"', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2579, 1, 'en', 'plugins/member/dashboard', 'actions.update_setting', 'You have updated your settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2580, 1, 'en', 'plugins/member/dashboard', 'actions.update_security', 'You have updated your security settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2581, 1, 'en', 'plugins/member/dashboard', 'actions.your_post_updated_by_admin', 'Your post \":name\" is updated by administrator', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2582, 1, 'en', 'plugins/member/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2583, 1, 'en', 'plugins/member/dashboard', 'load_more', 'Load more', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2584, 1, 'en', 'plugins/member/dashboard', 'loading_more', 'Loading...', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2585, 1, 'en', 'plugins/member/dashboard', 'back-to-login', 'Back to login page', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2586, 1, 'en', 'plugins/member/member', 'create', 'New member', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2587, 1, 'en', 'plugins/member/member', 'edit', 'Edit member', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2588, 1, 'en', 'plugins/member/member', 'menu_name', 'Members', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2589, 1, 'en', 'plugins/member/member', 'confirmation_subject', 'Email verification', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2590, 1, 'en', 'plugins/member/member', 'confirmation_subject_title', 'Verify your email', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2591, 1, 'en', 'plugins/member/member', 'not_confirmed', 'The given email address has not been confirmed. <a href=\":resend_link\">Resend confirmation link.</a>', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2592, 1, 'en', 'plugins/member/member', 'confirmation_successful', 'You successfully confirmed your email address.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2593, 1, 'en', 'plugins/member/member', 'confirmation_info', 'Please confirm your email address.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2594, 1, 'en', 'plugins/member/member', 'confirmation_resent', 'We sent you another confirmation email. You should receive it shortly.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2595, 1, 'en', 'plugins/member/member', 'form.email', 'Email', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2596, 1, 'en', 'plugins/member/member', 'form.password', 'Password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2597, 1, 'en', 'plugins/member/member', 'form.password_confirmation', 'Password confirmation', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2598, 1, 'en', 'plugins/member/member', 'form.change_password', 'Change password?', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2599, 1, 'en', 'plugins/member/member', 'forgot_password', 'Forgot password', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2600, 1, 'en', 'plugins/member/member', 'login', 'Login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2601, 1, 'en', 'plugins/member/member', 'settings.email.title', 'Member', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2602, 1, 'en', 'plugins/member/member', 'settings.email.description', 'Member email configuration', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2603, 1, 'en', 'plugins/member/member', 'first_name', 'First Name', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2604, 1, 'en', 'plugins/member/member', 'last_name', 'Last Name', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2605, 1, 'en', 'plugins/member/member', 'email_placeholder', 'Ex: example@gmail.com', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2606, 1, 'en', 'plugins/member/member', 'write_a_post', 'Write a post', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2607, 1, 'en', 'plugins/member/settings', 'title', 'Member', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2608, 1, 'en', 'plugins/member/settings', 'description', 'Settings for members', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2609, 1, 'en', 'plugins/member/settings', 'verify_account_email', 'Verify account\'s email?', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2610, 1, 'en', 'plugins/request-log/request-log', 'name', 'Request Logs', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2611, 1, 'en', 'plugins/request-log/request-log', 'status_code', 'Status Code', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2612, 1, 'en', 'plugins/request-log/request-log', 'no_request_error', 'No request error now!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2613, 1, 'en', 'plugins/request-log/request-log', 'widget_request_errors', 'Request Errors', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2614, 1, 'en', 'plugins/request-log/request-log', 'count', 'Count', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2615, 1, 'en', 'plugins/request-log/request-log', 'delete_all', 'Delete all records', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2616, 1, 'vi', 'plugins/request-log/request-log', 'name', 'Lịch sử lỗi', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2617, 1, 'vi', 'plugins/request-log/request-log', 'status_code', 'Mã lỗi', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2618, 1, 'vi', 'plugins/request-log/request-log', 'no_request_error', 'Hiện tại không có lỗi nào cả!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2619, 1, 'vi', 'plugins/request-log/request-log', 'widget_request_errors', 'Liên kết bị hỏng', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2620, 1, 'vi', 'plugins/request-log/request-log', 'count', 'Số lần', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2621, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2622, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2623, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2624, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2625, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2626, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2627, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2628, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2629, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2630, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2631, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2632, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2633, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2634, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2635, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2636, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2637, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2638, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2639, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2640, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2641, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2642, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2643, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2644, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2645, 1, 'vi', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2646, 1, 'vi', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2647, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2648, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2649, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2650, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2651, 1, 'vi', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2652, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2653, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2654, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2655, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2656, 1, 'vi', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2657, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2658, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2659, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2660, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2661, 1, 'vi', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2662, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2663, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2664, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2665, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2666, 1, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2667, 1, 'vi', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2668, 1, 'vi', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2669, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2670, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2671, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2672, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2673, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2674, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2675, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2676, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2677, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2678, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2679, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2680, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2681, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2682, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2683, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2684, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2685, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2686, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Admin translations', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2687, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2688, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2689, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2690, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2691, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2692, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2693, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-02-24 05:11:01', '2021-02-24 05:11:01');
INSERT INTO `translations` VALUES (2694, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2695, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2696, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2697, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2698, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2699, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2700, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2701, 1, 'vi', 'plugins/translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2702, 1, 'vi', 'plugins/translation/translation', 'back', 'Quay lại', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2703, 1, 'vi', 'plugins/translation/translation', 'choose_a_group', 'Chọn một nhóm', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2704, 1, 'vi', 'plugins/translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2705, 1, 'vi', 'plugins/translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2706, 1, 'vi', 'plugins/translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2707, 1, 'vi', 'plugins/translation/translation', 'edit_title', 'Nhập nội dung dịch', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2708, 1, 'vi', 'plugins/translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan cms:translations:export\' hoặc sử dụng nút xuất bản', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2709, 1, 'vi', 'plugins/translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý :counter bản ghi!  ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2710, 1, 'vi', 'plugins/translation/translation', 'import_group', 'Nhập nhóm', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2711, 1, 'vi', 'plugins/translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2712, 1, 'vi', 'plugins/translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2713, 1, 'vi', 'plugins/translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2714, 1, 'vi', 'plugins/translation/translation', 'translations', 'Dịch thuật', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2715, 1, 'vi', 'plugins/translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2716, 1, 'vi', 'plugins/translation/translation', 'actions', 'Hành động', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2717, 1, 'vi', 'plugins/translation/translation', 'add_new_language', 'Thêm ngôn ngữ mới', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2718, 1, 'vi', 'plugins/translation/translation', 'admin-translations', 'Dịch trang quản trị', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2719, 1, 'vi', 'plugins/translation/translation', 'choose_language', 'Chọn ngôn ngữ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2720, 1, 'vi', 'plugins/translation/translation', 'default_locale', 'Ngôn ngữ mặc định', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2721, 1, 'vi', 'plugins/translation/translation', 'delete', 'Xóa', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2722, 1, 'vi', 'plugins/translation/translation', 'edit', 'Sửa', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2723, 1, 'vi', 'plugins/translation/translation', 'flag', 'Cờ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2724, 1, 'vi', 'plugins/translation/translation', 'locale', 'Ngôn ngữ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2725, 1, 'vi', 'plugins/translation/translation', 'locales', 'Ngôn ngữ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2726, 1, 'vi', 'plugins/translation/translation', 'name', 'Tên', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2727, 1, 'vi', 'plugins/translation/translation', 'no_other_languages', 'Không còn ngôn ngữ nào khác để dịch!', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2728, 1, 'vi', 'plugins/translation/translation', 'select_language', 'Lựa chọn ngôn ngữ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2729, 1, 'vi', 'plugins/translation/translation', 'theme-translations', 'Dịch giao diện', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2730, 1, 'vi', 'plugins/translation/translation', 'to', 'sang', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2731, 1, 'vi', 'plugins/translation/translation', 'translate_from', 'Dịch từ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2732, 1, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2733, 1, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2734, 1, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2735, 1, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2736, 1, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2737, 1, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2738, 1, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2739, 1, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2740, 1, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2741, 1, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2742, 1, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2743, 1, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là một ngày sau hoặc bằng ngày :date.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2744, 1, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2745, 1, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2746, 1, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2747, 1, 'vi', 'validation', 'array', 'Kiểu dữ liệu của trường :attribute phải là dạng mảng.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2748, 1, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2749, 1, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là một ngày trước hoặc bằng ngày :date.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2750, 1, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2751, 1, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2752, 1, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2753, 1, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2754, 1, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2755, 1, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2756, 1, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2757, 1, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2758, 1, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2759, 1, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2760, 1, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2761, 1, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2762, 1, 'vi', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2763, 1, 'vi', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2764, 1, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2765, 1, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2766, 1, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2767, 1, 'vi', 'validation', 'file', 'Trường :attribute phải là một tập tin.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2768, 1, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2769, 1, 'vi', 'validation', 'gt.numeric', 'Trường :attribute phải lớn hơn :max.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2770, 1, 'vi', 'validation', 'gt.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn :max KB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2771, 1, 'vi', 'validation', 'gt.string', 'Trường :attribute phải lớn hơn :max ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2772, 1, 'vi', 'validation', 'gt.array', 'Trường :attribute phải lớn hơn :max phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2773, 1, 'vi', 'validation', 'gte.numeric', 'Trường :attribute phải lớn hơn hoặc bằng :max.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2774, 1, 'vi', 'validation', 'gte.file', 'Dung lượng tập tin trong trường :attribute phải lớn hơn hoặc bằng :max KB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2775, 1, 'vi', 'validation', 'gte.string', 'Trường :attribute phải lớn hơn hoặc bằng :max ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2776, 1, 'vi', 'validation', 'gte.array', 'Trường :attribute phải lớn hơn hoặc bằng :max phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2777, 1, 'vi', 'validation', 'image', 'Các tập tin trong trường :attribute phải là định dạng hình ảnh.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2778, 1, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2779, 1, 'vi', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2780, 1, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2781, 1, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉa IP.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2782, 1, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là địa chỉ IPv4 hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2783, 1, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là địa chỉ IPv6 hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2784, 1, 'vi', 'validation', 'json', 'Trường :attribute phải là chuỗi JSON hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2785, 1, 'vi', 'validation', 'lt.numeric', 'Trường :attribute phải nhỏ hơn là :min.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2786, 1, 'vi', 'validation', 'lt.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn :min KB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2787, 1, 'vi', 'validation', 'lt.string', 'Trường :attribute phải có nhỏ hơn :min ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2788, 1, 'vi', 'validation', 'lt.array', 'Trường :attribute phải có nhỏ hơn :min phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2789, 1, 'vi', 'validation', 'lte.numeric', 'Trường :attribute phải nhỏ hơn hoặc bằng là :min.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2790, 1, 'vi', 'validation', 'lte.file', 'Dung lượng tập tin trong trường :attribute phải nhỏ hơn hoặc bằng :min KB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2791, 1, 'vi', 'validation', 'lte.string', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2792, 1, 'vi', 'validation', 'lte.array', 'Trường :attribute phải có nhỏ hơn hoặc bằng :min phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2793, 1, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2794, 1, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max KB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2795, 1, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2796, 1, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2797, 1, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2798, 1, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tệp có định dạng là: :values.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2799, 1, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2800, 1, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min KB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2801, 1, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2802, 1, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2803, 1, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2804, 1, 'vi', 'validation', 'not_regex', 'Trường :attribute định dạng không hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2805, 1, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2806, 1, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2807, 1, 'vi', 'validation', 'present', 'The :attribute field must be present.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2808, 1, 'vi', 'validation', 'regex', 'Định dạng trường :attribute không hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2809, 1, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2810, 1, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2811, 1, 'vi', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2812, 1, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi trường :values có giá trị.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2813, 1, 'vi', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2814, 1, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi trường :values không có giá trị.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2815, 1, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2816, 1, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2817, 1, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2818, 1, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2819, 1, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size ký tự.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2820, 1, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2821, 1, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2822, 1, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2823, 1, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2824, 1, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong hệ thống.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2825, 1, 'vi', 'validation', 'uploaded', 'Trường :attribute không thể tải lên.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2826, 1, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2827, 1, 'vi', 'validation', 'uuid', 'Trường :attribute không phải là một chuỗi UUID hợp lẹ.', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2828, 1, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2829, 1, 'vi', 'validation', 'attributes.name', 'tên', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2830, 1, 'vi', 'validation', 'attributes.username', 'tên đăng nhập', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2831, 1, 'vi', 'validation', 'attributes.email', 'email', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2832, 1, 'vi', 'validation', 'attributes.first_name', 'tên', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2833, 1, 'vi', 'validation', 'attributes.last_name', 'họ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2834, 1, 'vi', 'validation', 'attributes.password', 'mật khẩu', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2835, 1, 'vi', 'validation', 'attributes.password_confirmation', 'xác nhận mật khẩu', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2836, 1, 'vi', 'validation', 'attributes.city', 'thành phố', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2837, 1, 'vi', 'validation', 'attributes.country', 'quốc gia', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2838, 1, 'vi', 'validation', 'attributes.address', 'địa chỉ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2839, 1, 'vi', 'validation', 'attributes.phone', 'số điện thoại', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2840, 1, 'vi', 'validation', 'attributes.mobile', 'di động', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2841, 1, 'vi', 'validation', 'attributes.age', 'tuổi', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2842, 1, 'vi', 'validation', 'attributes.sex', 'giới tính', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2843, 1, 'vi', 'validation', 'attributes.gender', 'giới tính', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2844, 1, 'vi', 'validation', 'attributes.year', 'năm', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2845, 1, 'vi', 'validation', 'attributes.month', 'tháng', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2846, 1, 'vi', 'validation', 'attributes.day', 'ngày', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2847, 1, 'vi', 'validation', 'attributes.hour', 'giờ', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2848, 1, 'vi', 'validation', 'attributes.minute', 'phút', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2849, 1, 'vi', 'validation', 'attributes.second', 'giây', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2850, 1, 'vi', 'validation', 'attributes.title', 'tiêu đề', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2851, 1, 'vi', 'validation', 'attributes.content', 'nội dung', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2852, 1, 'vi', 'validation', 'attributes.body', 'nội dung', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2853, 1, 'vi', 'validation', 'attributes.description', 'mô tả', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2854, 1, 'vi', 'validation', 'attributes.excerpt', 'trích dẫn', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2855, 1, 'vi', 'validation', 'attributes.date', 'ngày', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2856, 1, 'vi', 'validation', 'attributes.time', 'thời gian', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2857, 1, 'vi', 'validation', 'attributes.subject', 'tiêu đề', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2858, 1, 'vi', 'validation', 'attributes.message', 'lời nhắn', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2859, 1, 'vi', 'validation', 'attributes.available', 'có sẵn', '2021-02-24 05:11:02', '2021-02-24 05:11:02');
INSERT INTO `translations` VALUES (2860, 1, 'vi', 'validation', 'attributes.size', 'kích thước', '2021-02-24 05:11:02', '2021-02-24 05:11:02');

-- ----------------------------
-- Table structure for user_meta
-- ----------------------------
DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE `user_meta`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_meta_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_meta
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin@gistensal.com', NULL, '$2y$10$lZKL3LWN0qQzmvpE08ZHFevJ03KUxZLF3WNhF4vjm7QvClpGHfN4G', 'p06LuSjwHLbW8B52cMsAaMiIpXviS8uPBjhJukECiUjIfwcLr6i5TuCh4mgd', '2020-12-17 08:04:28', '2021-04-18 17:37:42', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, '2021-04-18 17:37:42');

-- ----------------------------
-- Table structure for widgets
-- ----------------------------
DROP TABLE IF EXISTS `widgets`;
CREATE TABLE `widgets`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of widgets
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
