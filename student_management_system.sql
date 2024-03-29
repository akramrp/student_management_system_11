-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 07:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add attendance', 7, 'add_attendance'),
(26, 'Can change attendance', 7, 'change_attendance'),
(27, 'Can delete attendance', 7, 'delete_attendance'),
(28, 'Can view attendance', 7, 'view_attendance'),
(29, 'Can add courses', 8, 'add_courses'),
(30, 'Can change courses', 8, 'change_courses'),
(31, 'Can delete courses', 8, 'delete_courses'),
(32, 'Can view courses', 8, 'view_courses'),
(33, 'Can add session year model', 9, 'add_sessionyearmodel'),
(34, 'Can change session year model', 9, 'change_sessionyearmodel'),
(35, 'Can delete session year model', 9, 'delete_sessionyearmodel'),
(36, 'Can view session year model', 9, 'view_sessionyearmodel'),
(37, 'Can add subjects', 10, 'add_subjects'),
(38, 'Can change subjects', 10, 'change_subjects'),
(39, 'Can delete subjects', 10, 'delete_subjects'),
(40, 'Can view subjects', 10, 'view_subjects'),
(41, 'Can add students', 11, 'add_students'),
(42, 'Can change students', 11, 'change_students'),
(43, 'Can delete students', 11, 'delete_students'),
(44, 'Can view students', 11, 'view_students'),
(45, 'Can add staffs', 12, 'add_staffs'),
(46, 'Can change staffs', 12, 'change_staffs'),
(47, 'Can delete staffs', 12, 'delete_staffs'),
(48, 'Can view staffs', 12, 'view_staffs'),
(49, 'Can add notification student', 13, 'add_notificationstudent'),
(50, 'Can change notification student', 13, 'change_notificationstudent'),
(51, 'Can delete notification student', 13, 'delete_notificationstudent'),
(52, 'Can view notification student', 13, 'view_notificationstudent'),
(53, 'Can add notification staffs', 14, 'add_notificationstaffs'),
(54, 'Can change notification staffs', 14, 'change_notificationstaffs'),
(55, 'Can delete notification staffs', 14, 'delete_notificationstaffs'),
(56, 'Can view notification staffs', 14, 'view_notificationstaffs'),
(57, 'Can add leave report student', 15, 'add_leavereportstudent'),
(58, 'Can change leave report student', 15, 'change_leavereportstudent'),
(59, 'Can delete leave report student', 15, 'delete_leavereportstudent'),
(60, 'Can view leave report student', 15, 'view_leavereportstudent'),
(61, 'Can add leave report staff', 16, 'add_leavereportstaff'),
(62, 'Can change leave report staff', 16, 'change_leavereportstaff'),
(63, 'Can delete leave report staff', 16, 'delete_leavereportstaff'),
(64, 'Can view leave report staff', 16, 'view_leavereportstaff'),
(65, 'Can add feed back student', 17, 'add_feedbackstudent'),
(66, 'Can change feed back student', 17, 'change_feedbackstudent'),
(67, 'Can delete feed back student', 17, 'delete_feedbackstudent'),
(68, 'Can view feed back student', 17, 'view_feedbackstudent'),
(69, 'Can add feed back staffs', 18, 'add_feedbackstaffs'),
(70, 'Can change feed back staffs', 18, 'change_feedbackstaffs'),
(71, 'Can delete feed back staffs', 18, 'delete_feedbackstaffs'),
(72, 'Can view feed back staffs', 18, 'view_feedbackstaffs'),
(73, 'Can add attendance report', 19, 'add_attendancereport'),
(74, 'Can change attendance report', 19, 'change_attendancereport'),
(75, 'Can delete attendance report', 19, 'delete_attendancereport'),
(76, 'Can view attendance report', 19, 'view_attendancereport'),
(77, 'Can add admin hod', 20, 'add_adminhod'),
(78, 'Can change admin hod', 20, 'change_adminhod'),
(79, 'Can delete admin hod', 20, 'delete_adminhod'),
(80, 'Can view admin hod', 20, 'view_adminhod');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(20, 'student_management_app', 'adminhod'),
(7, 'student_management_app', 'attendance'),
(19, 'student_management_app', 'attendancereport'),
(8, 'student_management_app', 'courses'),
(6, 'student_management_app', 'customuser'),
(18, 'student_management_app', 'feedbackstaffs'),
(17, 'student_management_app', 'feedbackstudent'),
(16, 'student_management_app', 'leavereportstaff'),
(15, 'student_management_app', 'leavereportstudent'),
(14, 'student_management_app', 'notificationstaffs'),
(13, 'student_management_app', 'notificationstudent'),
(9, 'student_management_app', 'sessionyearmodel'),
(12, 'student_management_app', 'staffs'),
(11, 'student_management_app', 'students'),
(10, 'student_management_app', 'subjects');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-12 08:09:49.732772'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-04-12 08:09:49.916310'),
(3, 'auth', '0001_initial', '2020-04-12 08:09:50.001645'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-04-12 08:09:50.266520'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-04-12 08:09:50.277458'),
(6, 'auth', '0004_alter_user_username_opts', '2020-04-12 08:09:50.292747'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-04-12 08:09:50.300324'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-04-12 08:09:50.305224'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-04-12 08:09:50.313290'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-04-12 08:09:50.322160'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-04-12 08:09:50.333818'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-04-12 08:09:50.355384'),
(13, 'auth', '0011_update_proxy_permissions', '2020-04-12 08:09:50.367427'),
(14, 'student_management_app', '0001_initial', '2020-04-12 08:09:51.816963'),
(15, 'admin', '0001_initial', '2020-04-12 08:09:54.256426'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-04-12 08:09:54.391340'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-12 08:09:54.408406'),
(18, 'sessions', '0001_initial', '2020-04-12 08:09:54.459617'),
(19, 'student_management_app', '0002_auto_20200502_1839', '2020-05-02 13:09:56.696264'),
(20, 'student_management_app', '0002_auto_20200507_1430', '2020-05-07 09:00:39.284817'),
(21, 'student_management_app', '0003_auto_20200510_1919', '2020-05-10 13:49:34.938810'),
(22, 'student_management_app', '0004_auto_20200523_1321', '2020-05-23 07:51:13.682476');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4uafupyvuwgg8hsxkrbyvr6dr5flanz0', 'MTkxMzk4ODg5ZjE2ZmJmNzFiYzU4ZDYzYTZmNjU5NzE1ZTY1ZGFkODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3R1ZGVudF9tYW5hZ2VtZW50X2FwcC5FbWFpbEJhY2tFbmQuRW1haWxCYWNrRW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWI2YTk5ZjEwMzM0MDdjYmE0NmZjZGZlZDEyZGM5NzhhOTM3Y2JmMyJ9', '2020-06-09 08:15:00.200912'),
('z25qqlq023k6i2veud817qctrlxk63fn', 'MTkxMzk4ODg5ZjE2ZmJmNzFiYzU4ZDYzYTZmNjU5NzE1ZTY1ZGFkODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic3R1ZGVudF9tYW5hZ2VtZW50X2FwcC5FbWFpbEJhY2tFbmQuRW1haWxCYWNrRW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWI2YTk5ZjEwMzM0MDdjYmE0NmZjZGZlZDEyZGM5NzhhOTM3Y2JmMyJ9', '2020-05-24 14:09:45.204277');

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_adminhod`
--

CREATE TABLE `student_management_app_adminhod` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_adminhod`
--

INSERT INTO `student_management_app_adminhod` (`id`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, '2020-04-12 08:16:07.103523', '2020-04-12 08:16:07.103523', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_attendance`
--

CREATE TABLE `student_management_app_attendance` (
  `id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `session_year_id_id` int(11) NOT NULL,
  `subject_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_attendance`
--

INSERT INTO `student_management_app_attendance` (`id`, `attendance_date`, `created_at`, `updated_at`, `session_year_id_id`, `subject_id_id`) VALUES
(4, '2020-04-12', '2020-04-12 11:49:25.282944', '2020-04-12 11:49:25.282944', 1, 1),
(5, '2020-04-12', '2020-04-12 11:49:51.034169', '2020-04-12 11:49:51.034169', 1, 2),
(6, '2020-05-07', '2020-05-07 14:19:12.327810', '2020-05-07 14:19:12.327810', 1, 1),
(7, '2020-05-07', '2020-05-07 14:19:25.800828', '2020-05-07 14:19:25.800828', 1, 1),
(8, '2020-05-07', '2020-05-07 14:19:45.100649', '2020-05-07 14:19:45.100649', 1, 1),
(9, '2020-05-07', '2020-05-07 14:28:08.882707', '2020-05-07 14:28:08.882707', 2, 2),
(10, '2020-05-07', '2020-05-07 08:58:38.167460', '2020-05-07 08:58:38.168149', 2, 2),
(11, '2020-05-07', '2020-05-07 08:59:15.875971', '2020-05-07 08:59:15.875971', 1, 1),
(12, '2020-05-07', '2020-05-07 08:59:15.887974', '2020-05-07 08:59:15.887974', 1, 1),
(13, '2020-05-10', '2020-05-07 09:00:59.318549', '2020-05-07 09:00:59.318549', 1, 1),
(14, '2020-05-17', '2020-05-07 14:31:31.654667', '2020-05-07 14:31:31.654667', 1, 1),
(15, '2020-05-10', '2020-05-07 14:39:11.790480', '2020-05-07 14:39:11.790480', 1, 2),
(16, '2020-05-15', '2020-05-10 14:10:11.214771', '2020-05-10 14:10:11.214771', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_attendancereport`
--

CREATE TABLE `student_management_app_attendancereport` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id_id` int(11) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_attendancereport`
--

INSERT INTO `student_management_app_attendancereport` (`id`, `status`, `created_at`, `updated_at`, `attendance_id_id`, `student_id_id`) VALUES
(3, 1, '2020-04-12 11:49:25.305883', '2020-04-12 11:49:25.305883', 4, 2),
(4, 0, '2020-04-12 11:49:25.309871', '2020-04-12 11:49:25.309871', 4, 3),
(5, 1, '2020-04-12 11:49:51.057109', '2020-04-12 11:49:51.057109', 5, 2),
(6, 0, '2020-04-12 11:49:51.062096', '2020-04-12 11:49:51.062096', 5, 3),
(7, 1, '2020-05-07 14:19:12.445501', '2020-05-07 14:19:12.445501', 6, 2),
(8, 1, '2020-05-07 14:19:12.470390', '2020-05-07 14:19:12.470390', 6, 3),
(9, 1, '2020-05-07 14:19:25.923632', '2020-05-07 14:19:25.923632', 7, 2),
(10, 0, '2020-05-07 14:19:25.930384', '2020-05-07 14:19:25.930384', 7, 3),
(11, 1, '2020-05-07 14:19:45.110865', '2020-05-07 14:19:45.110865', 8, 2),
(12, 0, '2020-05-07 14:19:45.118596', '2020-05-07 14:19:45.118596', 8, 3),
(13, 1, '2020-05-07 08:59:16.235068', '2020-05-07 08:59:16.235068', 11, 2),
(14, 1, '2020-05-07 08:59:16.237053', '2020-05-07 08:59:16.237053', 12, 2),
(15, 1, '2020-05-07 08:59:16.253009', '2020-05-07 08:59:16.253009', 11, 3),
(16, 1, '2020-05-07 08:59:16.256287', '2020-05-07 08:59:16.256287', 12, 3),
(17, 1, '2020-05-07 09:00:59.347431', '2020-05-07 09:00:59.347431', 13, 2),
(18, 1, '2020-05-07 09:00:59.355410', '2020-05-07 09:00:59.355410', 13, 3),
(19, 1, '2020-05-07 14:31:31.667624', '2020-05-07 14:31:31.667624', 14, 2),
(20, 1, '2020-05-07 14:31:32.003679', '2020-05-07 14:31:32.003679', 14, 3),
(21, 1, '2020-05-07 14:39:12.115953', '2020-05-07 14:39:12.115953', 15, 2),
(22, 0, '2020-05-07 14:39:12.120941', '2020-05-07 14:39:12.120941', 15, 3),
(23, 1, '2020-05-10 14:10:11.238705', '2020-05-10 14:10:11.238705', 16, 2),
(24, 1, '2020-05-10 14:10:11.242699', '2020-05-10 14:10:11.242699', 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_courses`
--

CREATE TABLE `student_management_app_courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_courses`
--

INSERT INTO `student_management_app_courses` (`id`, `course_name`, `created_at`, `updated_at`) VALUES
(1, 'BCA', '2020-04-12 08:37:10.306437', '2020-04-12 08:37:10.306437'),
(2, 'BBA', '2020-04-12 08:37:14.880271', '2020-04-12 08:37:14.880271'),
(3, 'MBA', '2020-04-12 08:37:18.160619', '2020-04-12 08:37:18.160619'),
(4, 'MCA', '2020-04-12 08:37:21.825105', '2020-04-12 08:37:21.825105');

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_customuser`
--

CREATE TABLE `student_management_app_customuser` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_customuser`
--

INSERT INTO `student_management_app_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`) VALUES
(1, 'pbkdf2_sha256$150000$qIZjsqvYXRdX$Y/mpGB8dxhsomLsD+LopE5187P3rRgtX4O0FL38nkOg=', '2020-05-25 17:03:59.941387', 1, 'admin', 'Admin First 1', 'Admin Last 2', 'admin@gmail.com', 1, 1, '2020-04-12 08:16:06.881413', '1'),
(2, 'pbkdf2_sha256$150000$XFNEf9gsgdpQ$bCpKMAtPdqLmV9fNq1UWPvbphlJwfO8JGxD6g6XSGSQ=', '2020-05-26 08:15:00.185950', 0, 'staff1', 'Staff First 1 1', 'Staff One Address 3 1', 'staff1@gmail.com', 0, 1, '2020-04-12 08:38:05.596253', '2'),
(3, 'pbkdf2_sha256$150000$jwtDH5gWfF1A$V/uIUyGazpZFk9pPb/hXWeYLd0xlNflcf6gl0fClvAo=', '2020-05-07 10:20:47.673389', 0, 'staff2', 'Staff', 'Two', 'staff2@gmail.com', 0, 1, '2020-04-12 08:38:29.881934', '2'),
(4, 'pbkdf2_sha256$150000$unhQRM8i4uHa$B6rUl+U1OBjN2JLCGFfDkPSXPaoipMCoN7ApBAlnDo8=', NULL, 0, 'staff3', 'Staff', 'Three', 'staff3@gmail.com', 0, 1, '2020-04-12 08:38:51.139627', '2'),
(5, 'pbkdf2_sha256$150000$PopAX0w5Coo0$uAM+MBkUKS2NHqUVTeHJxXz1pvMmg9HmIi72HQ0RmB8=', NULL, 0, 'staff4', 'Staff', 'Four', 'staff4@gmail.com', 0, 1, '2020-04-12 08:39:16.924296', '2'),
(13, 'pbkdf2_sha256$150000$SJds04Sc9j3o$k7sWpFqxT71JPDhqVQR3hoHKBg6W5MqMvgcfda0DdME=', '2020-05-05 07:53:44.763359', 0, 'student1', 'Student', 'One', 'sksanjeev362@gmail.com', 0, 1, '2020-04-12 08:59:08.372628', '3'),
(14, 'pbkdf2_sha256$150000$YvyopCJTSH99$ijgtSu+77BwcofyB73bWdWgisfgEk2AwT9oX61JADSA=', '2020-05-26 08:14:12.403741', 0, 'student2', 'student First', 'Two Last', 'student2@gmail.com', 0, 1, '2020-04-12 09:00:14.371150', '3');

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_customuser_groups`
--

CREATE TABLE `student_management_app_customuser_groups` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_customuser_user_permissions`
--

CREATE TABLE `student_management_app_customuser_user_permissions` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_feedbackstaffs`
--

CREATE TABLE `student_management_app_feedbackstaffs` (
  `id` int(11) NOT NULL,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_feedbackstaffs`
--

INSERT INTO `student_management_app_feedbackstaffs` (`id`, `feedback`, `feedback_reply`, `created_at`, `updated_at`, `staff_id_id`) VALUES
(1, 'Testing Feedback Message', 'I will Contact You', '2020-05-02 13:39:42.882248', '2020-05-02 13:39:42.882248', 1),
(2, 'New Testing', 'Thanks', '2020-05-02 13:40:58.015222', '2020-05-02 13:40:58.015222', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_feedbackstudent`
--

CREATE TABLE `student_management_app_feedbackstudent` (
  `id` int(11) NOT NULL,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_feedbackstudent`
--

INSERT INTO `student_management_app_feedbackstudent` (`id`, `feedback`, `feedback_reply`, `created_at`, `updated_at`, `student_id_id`) VALUES
(1, 'Need to Contact', 'Thanks for Message', '2020-05-15 09:47:31.700892', '2020-05-15 09:47:31.700892', 3),
(2, 'Need to Contact', 'We Will Contact You', '2020-05-15 09:47:31.700892', '2020-05-15 09:47:31.700892', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_leavereportstaff`
--

CREATE TABLE `student_management_app_leavereportstaff` (
  `id` int(11) NOT NULL,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_leavereportstaff`
--

INSERT INTO `student_management_app_leavereportstaff` (`id`, `leave_date`, `leave_message`, `leave_status`, `created_at`, `updated_at`, `staff_id_id`) VALUES
(1, '2020-05-17', 'Borther Marriage', 1, '2020-05-02 13:20:13.981434', '2020-05-02 13:20:13.981434', 1),
(2, '2020-05-24', 'Sister Marriage', 2, '2020-05-02 13:21:20.513330', '2020-05-02 13:21:20.513330', 1),
(3, '2020-05-31', 'Just Leave', 0, '2020-05-02 13:31:45.231819', '2020-05-02 13:31:45.231819', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_leavereportstudent`
--

CREATE TABLE `student_management_app_leavereportstudent` (
  `id` int(11) NOT NULL,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_leavereportstudent`
--

INSERT INTO `student_management_app_leavereportstudent` (`id`, `leave_date`, `leave_message`, `leave_status`, `created_at`, `updated_at`, `student_id_id`) VALUES
(1, '2020-05-16', 'Formal Leave', 1, '2020-05-15 09:46:09.709208', '2020-05-15 09:46:09.709208', 3),
(2, '2020-05-20', 'Leave', 2, '2020-05-15 09:46:20.765721', '2020-05-15 09:46:20.765721', 3),
(3, '2020-05-20', 'Leave', 0, '2020-05-15 09:46:20.765721', '2020-05-15 09:46:20.765721', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_notificationstaffs`
--

CREATE TABLE `student_management_app_notificationstaffs` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_notificationstudent`
--

CREATE TABLE `student_management_app_notificationstudent` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_sessionyearmodel`
--

CREATE TABLE `student_management_app_sessionyearmodel` (
  `id` int(11) NOT NULL,
  `session_start_year` date NOT NULL,
  `session_end_year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_sessionyearmodel`
--

INSERT INTO `student_management_app_sessionyearmodel` (`id`, `session_start_year`, `session_end_year`) VALUES
(1, '2020-01-01', '2023-01-01'),
(2, '2020-01-01', '2022-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_staffs`
--

CREATE TABLE `student_management_app_staffs` (
  `id` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_staffs`
--

INSERT INTO `student_management_app_staffs` (`id`, `address`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Staff One Address 1', '2020-04-12 08:38:05.762808', '2020-04-12 08:38:05.762808', 2),
(2, 'Staff Two Address', '2020-04-12 08:38:30.048488', '2020-04-12 08:38:30.049488', 3),
(3, 'Staff Three Address', '2020-04-12 08:38:51.316112', '2020-04-12 08:38:51.316112', 4),
(4, 'Staff Four Address', '2020-04-12 08:39:17.451888', '2020-04-12 08:39:17.451888', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_students`
--

CREATE TABLE `student_management_app_students` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `session_year_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_students`
--

INSERT INTO `student_management_app_students` (`id`, `gender`, `profile_pic`, `address`, `created_at`, `updated_at`, `admin_id`, `course_id_id`, `session_year_id_id`) VALUES
(2, 'Male', '/media/python-student-10_Sa6Q7zb.png', 'Student One Address', '2020-04-12 08:59:08.573132', '2020-04-12 08:59:08.573132', 13, 1, 1),
(3, 'Male', '/media/python-student-10_cv5uwSU.png', 'Staff Two Address Addd', '2020-04-12 09:00:14.779121', '2020-04-12 09:00:14.779121', 14, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_management_app_subjects`
--

CREATE TABLE `student_management_app_subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `staff_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_management_app_subjects`
--

INSERT INTO `student_management_app_subjects` (`id`, `subject_name`, `created_at`, `updated_at`, `course_id_id`, `staff_id_id`) VALUES
(1, 'Java', '2020-04-12 08:39:32.320256', '2020-04-12 08:39:32.320256', 1, 2),
(2, 'PHP', '2020-04-12 08:39:36.671226', '2020-04-12 08:39:36.671226', 1, 2),
(3, 'MySql', '2020-04-12 08:39:45.961429', '2020-04-12 08:39:45.961429', 1, 2),
(4, 'HTML', '2020-04-12 08:39:51.772865', '2020-04-12 08:39:51.772865', 1, 2),
(5, 'Accounts', '2020-04-12 08:40:01.554850', '2020-04-12 08:40:01.554850', 2, 3),
(6, 'Marketing', '2020-04-12 08:40:16.095706', '2020-04-12 08:40:16.095706', 2, 3),
(7, 'ETP', '2020-04-12 08:40:27.113388', '2020-04-12 08:40:27.113388', 2, 3),
(8, 'Math', '2020-04-12 08:40:39.975428', '2020-04-12 08:40:39.975428', 4, 4),
(9, 'Python', '2020-04-12 08:40:48.928138', '2020-04-12 08:40:48.928138', 4, 4),
(10, 'Machine Learning', '2020-04-12 08:40:57.217406', '2020-04-12 08:40:57.217406', 4, 4),
(11, 'Artifical Intelligence', '2020-04-12 08:41:11.197563', '2020-04-12 08:41:11.197563', 4, 4),
(12, 'Cost Accounting', '2020-04-12 08:41:20.505769', '2020-04-12 08:41:20.505769', 3, 5),
(13, 'Financial Accounting', '2020-04-12 08:41:29.711299', '2020-04-12 08:41:29.711299', 3, 5),
(14, 'Statistics', '2020-04-12 08:41:49.726616', '2020-04-12 08:41:49.726616', 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_student_m` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `student_management_app_adminhod`
--
ALTER TABLE `student_management_app_adminhod`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `student_management_app_attendance`
--
ALTER TABLE `student_management_app_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_session_year_id_id_0d30545d_fk_student_m` (`session_year_id_id`),
  ADD KEY `student_management_a_subject_id_id_9ae82fd0_fk_student_m` (`subject_id_id`);

--
-- Indexes for table `student_management_app_attendancereport`
--
ALTER TABLE `student_management_app_attendancereport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_attendance_id_id_f765f2a1_fk_student_m` (`attendance_id_id`),
  ADD KEY `student_management_a_student_id_id_5a58ceea_fk_student_m` (`student_id_id`);

--
-- Indexes for table `student_management_app_courses`
--
ALTER TABLE `student_management_app_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_management_app_customuser`
--
ALTER TABLE `student_management_app_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_management_app_customuser_groups`
--
ALTER TABLE `student_management_app_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_management_app_c_customuser_id_group_id_d872a780_uniq` (`customuser_id`,`group_id`),
  ADD KEY `student_management_a_group_id_61accfd6_fk_auth_grou` (`group_id`);

--
-- Indexes for table `student_management_app_customuser_user_permissions`
--
ALTER TABLE `student_management_app_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_management_app_c_customuser_id_permission_af9a6989_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `student_management_a_permission_id_cd344297_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `student_management_app_feedbackstaffs`
--
ALTER TABLE `student_management_app_feedbackstaffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_staff_id_id_6f22a616_fk_student_m` (`staff_id_id`);

--
-- Indexes for table `student_management_app_feedbackstudent`
--
ALTER TABLE `student_management_app_feedbackstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_student_id_id_099e23ad_fk_student_m` (`student_id_id`);

--
-- Indexes for table `student_management_app_leavereportstaff`
--
ALTER TABLE `student_management_app_leavereportstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_staff_id_id_c7710cd5_fk_student_m` (`staff_id_id`);

--
-- Indexes for table `student_management_app_leavereportstudent`
--
ALTER TABLE `student_management_app_leavereportstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_student_id_id_9ea5372c_fk_student_m` (`student_id_id`);

--
-- Indexes for table `student_management_app_notificationstaffs`
--
ALTER TABLE `student_management_app_notificationstaffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_staff_id_id_2d336ab5_fk_student_m` (`staff_id_id`);

--
-- Indexes for table `student_management_app_notificationstudent`
--
ALTER TABLE `student_management_app_notificationstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_student_id_id_f8c05ed7_fk_student_m` (`student_id_id`);

--
-- Indexes for table `student_management_app_sessionyearmodel`
--
ALTER TABLE `student_management_app_sessionyearmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_management_app_staffs`
--
ALTER TABLE `student_management_app_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `student_management_app_students`
--
ALTER TABLE `student_management_app_students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `student_management_a_course_id_id_fcd09bed_fk_student_m` (`course_id_id`),
  ADD KEY `student_management_a_session_year_id_id_594fc55d_fk_student_m` (`session_year_id_id`);

--
-- Indexes for table `student_management_app_subjects`
--
ALTER TABLE `student_management_app_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_management_a_course_id_id_342668dd_fk_student_m` (`course_id_id`),
  ADD KEY `student_management_a_staff_id_id_5f47119a_fk_student_m` (`staff_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student_management_app_adminhod`
--
ALTER TABLE `student_management_app_adminhod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_management_app_attendance`
--
ALTER TABLE `student_management_app_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_management_app_attendancereport`
--
ALTER TABLE `student_management_app_attendancereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `student_management_app_courses`
--
ALTER TABLE `student_management_app_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_management_app_customuser`
--
ALTER TABLE `student_management_app_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_management_app_customuser_groups`
--
ALTER TABLE `student_management_app_customuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_management_app_customuser_user_permissions`
--
ALTER TABLE `student_management_app_customuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_management_app_feedbackstaffs`
--
ALTER TABLE `student_management_app_feedbackstaffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_management_app_feedbackstudent`
--
ALTER TABLE `student_management_app_feedbackstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_management_app_leavereportstaff`
--
ALTER TABLE `student_management_app_leavereportstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_management_app_leavereportstudent`
--
ALTER TABLE `student_management_app_leavereportstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_management_app_notificationstaffs`
--
ALTER TABLE `student_management_app_notificationstaffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_management_app_notificationstudent`
--
ALTER TABLE `student_management_app_notificationstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_management_app_sessionyearmodel`
--
ALTER TABLE `student_management_app_sessionyearmodel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_management_app_staffs`
--
ALTER TABLE `student_management_app_staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_management_app_students`
--
ALTER TABLE `student_management_app_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_management_app_subjects`
--
ALTER TABLE `student_management_app_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_student_m` FOREIGN KEY (`user_id`) REFERENCES `student_management_app_customuser` (`id`);

--
-- Constraints for table `student_management_app_adminhod`
--
ALTER TABLE `student_management_app_adminhod`
  ADD CONSTRAINT `student_management_a_admin_id_2d75304f_fk_student_m` FOREIGN KEY (`admin_id`) REFERENCES `student_management_app_customuser` (`id`);

--
-- Constraints for table `student_management_app_attendance`
--
ALTER TABLE `student_management_app_attendance`
  ADD CONSTRAINT `student_management_a_session_year_id_id_0d30545d_fk_student_m` FOREIGN KEY (`session_year_id_id`) REFERENCES `student_management_app_sessionyearmodel` (`id`),
  ADD CONSTRAINT `student_management_a_subject_id_id_9ae82fd0_fk_student_m` FOREIGN KEY (`subject_id_id`) REFERENCES `student_management_app_subjects` (`id`);

--
-- Constraints for table `student_management_app_attendancereport`
--
ALTER TABLE `student_management_app_attendancereport`
  ADD CONSTRAINT `student_management_a_attendance_id_id_f765f2a1_fk_student_m` FOREIGN KEY (`attendance_id_id`) REFERENCES `student_management_app_attendance` (`id`),
  ADD CONSTRAINT `student_management_a_student_id_id_5a58ceea_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`);

--
-- Constraints for table `student_management_app_customuser_groups`
--
ALTER TABLE `student_management_app_customuser_groups`
  ADD CONSTRAINT `student_management_a_customuser_id_1e347552_fk_student_m` FOREIGN KEY (`customuser_id`) REFERENCES `student_management_app_customuser` (`id`),
  ADD CONSTRAINT `student_management_a_group_id_61accfd6_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `student_management_app_customuser_user_permissions`
--
ALTER TABLE `student_management_app_customuser_user_permissions`
  ADD CONSTRAINT `student_management_a_customuser_id_41a474d7_fk_student_m` FOREIGN KEY (`customuser_id`) REFERENCES `student_management_app_customuser` (`id`),
  ADD CONSTRAINT `student_management_a_permission_id_cd344297_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `student_management_app_feedbackstaffs`
--
ALTER TABLE `student_management_app_feedbackstaffs`
  ADD CONSTRAINT `student_management_a_staff_id_id_6f22a616_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_staffs` (`id`);

--
-- Constraints for table `student_management_app_feedbackstudent`
--
ALTER TABLE `student_management_app_feedbackstudent`
  ADD CONSTRAINT `student_management_a_student_id_id_099e23ad_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`);

--
-- Constraints for table `student_management_app_leavereportstaff`
--
ALTER TABLE `student_management_app_leavereportstaff`
  ADD CONSTRAINT `student_management_a_staff_id_id_c7710cd5_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_staffs` (`id`);

--
-- Constraints for table `student_management_app_leavereportstudent`
--
ALTER TABLE `student_management_app_leavereportstudent`
  ADD CONSTRAINT `student_management_a_student_id_id_9ea5372c_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`);

--
-- Constraints for table `student_management_app_notificationstaffs`
--
ALTER TABLE `student_management_app_notificationstaffs`
  ADD CONSTRAINT `student_management_a_staff_id_id_2d336ab5_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_staffs` (`id`);

--
-- Constraints for table `student_management_app_notificationstudent`
--
ALTER TABLE `student_management_app_notificationstudent`
  ADD CONSTRAINT `student_management_a_student_id_id_f8c05ed7_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`);

--
-- Constraints for table `student_management_app_staffs`
--
ALTER TABLE `student_management_app_staffs`
  ADD CONSTRAINT `student_management_a_admin_id_5bfdd57d_fk_student_m` FOREIGN KEY (`admin_id`) REFERENCES `student_management_app_customuser` (`id`);

--
-- Constraints for table `student_management_app_students`
--
ALTER TABLE `student_management_app_students`
  ADD CONSTRAINT `student_management_a_admin_id_1a8517ae_fk_student_m` FOREIGN KEY (`admin_id`) REFERENCES `student_management_app_customuser` (`id`),
  ADD CONSTRAINT `student_management_a_course_id_id_fcd09bed_fk_student_m` FOREIGN KEY (`course_id_id`) REFERENCES `student_management_app_courses` (`id`),
  ADD CONSTRAINT `student_management_a_session_year_id_id_594fc55d_fk_student_m` FOREIGN KEY (`session_year_id_id`) REFERENCES `student_management_app_sessionyearmodel` (`id`);

--
-- Constraints for table `student_management_app_subjects`
--
ALTER TABLE `student_management_app_subjects`
  ADD CONSTRAINT `student_management_a_course_id_id_342668dd_fk_student_m` FOREIGN KEY (`course_id_id`) REFERENCES `student_management_app_courses` (`id`),
  ADD CONSTRAINT `student_management_a_staff_id_id_5f47119a_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
