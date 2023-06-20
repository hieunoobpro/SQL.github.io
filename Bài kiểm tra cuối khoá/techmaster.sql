-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2023 lúc 03:44 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `techmaster`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_classes`
--

CREATE TABLE `tbl_classes` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `className` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_classes`
--

INSERT INTO `tbl_classes` (`id`, `teacher_id`, `className`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Class 1A', 'This is Class 1A', 1, '2023-06-20 13:18:00', '2023-06-20 13:18:00', NULL),
(2, 3, 'Class 2A', 'This is Class 2A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(3, 4, 'Class 3A', 'This is Class 3A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(4, 4, 'Class 4A', 'This is Class 4A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(5, 4, 'Class 5A', 'This is Class 5A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(6, 5, 'Class 6A', 'This is Class 6A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(7, 5, 'Class 7A', 'This is Class 7A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(8, 6, 'Class 8A', 'This is Class 8A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(9, 6, 'Class 9A', 'This is Class 9A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL),
(10, 6, 'Class 10A', 'This is Class 10A', 1, '2023-06-20 13:18:01', '2023-06-20 13:18:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `post_id`, `content`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Công nghệ đang thay đổi thế giới một cách nhanh chóng!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(2, 1, 'Cảm ơn bạn đã chia sẻ bài viết này, rất thú vị!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(3, 2, 'Tôi tin rằng 5G sẽ là một bước tiến lớn trong công nghệ viễn thông!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(4, 2, 'Cảm ơn bạn đã giải thích sự khác biệt giữa 4G và 5G!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(5, 3, 'Blockchain đang trở thành một xu hướng được quan tâm nhiều trong thời gian gần đây!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(6, 3, 'Công nghệ Blockchain có thể thay đổi cách thức hoạt động của nhiều ngành công nghiệp!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(7, 4, 'Tôi rất mong muốn thấy IoT được áp dụng rộng rãi trong cuộc sống hàng ngày của chúng ta!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(8, 4, 'IoT có thể giúp chúng ta tiết kiệm năng lượng và tạo ra một cuộc sống thông minh hơn!', 'published', '2023-06-20 13:36:02', '2023-06-20 13:36:02', NULL),
(9, 5, 'Tôi rất tò mò để xem những xu hướng công nghệ nào sẽ xuất hiện trong năm tới!', 'draft', '2023-06-20 13:36:03', '2023-06-20 13:36:03', NULL),
(10, 5, 'Cảm ơn bạn đã chia sẻ thông tin về những xu hướng công nghệ tiềm năng!', 'draft', '2023-06-20 13:36:03', '2023-06-20 13:36:03', NULL),
(11, 6, 'Công nghệ AI đang có những tiềm năng vô cùng lớn trong tương lai!', 'published', '2023-06-20 13:36:45', '2023-06-20 13:36:45', NULL),
(12, 6, 'Cảm ơn bạn đã giới thiệu về công nghệ AI, rất thú vị!', 'published', '2023-06-20 13:36:45', '2023-06-20 13:36:45', NULL),
(13, 7, 'Ứng dụng VR/AR trong giáo dục có thể giúp học sinh hiểu bài học một cách trực quan hơn!', 'published', '2023-06-20 13:36:45', '2023-06-20 13:36:45', NULL),
(14, 8, 'Công nghệ 5G có thể giúp các doanh nghiệp cải thiện hiệu suất và tăng cường độ tin cậy của hệ thống mạng!', 'published', '2023-06-20 13:36:45', '2023-06-20 13:36:45', NULL),
(15, 9, 'Bảo vệ thông tin cá nhân là rất quan trọng trong thời đại công nghệ số hiện nay!', 'published', '2023-06-20 13:36:45', '2023-06-20 13:36:45', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `class_id`, `courseName`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Introduction to Programming', 'An introduction to programming concepts and practices', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(2, 1, 'Object-Oriented Programming', 'An introduction to object-oriented programming', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(3, 1, 'Data Structures and Algorithms', 'An introduction to data structures and algorithms', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(4, 2, 'Web Development', 'An introduction to web development using HTML, CSS, and JavaScript', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(5, 2, 'Database Design and Implementation', 'An introduction to database design and implementation', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(6, 3, 'Mobile App Development', 'An introduction to mobile app development using Android or iOS', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(7, 4, 'Game Development', 'An introduction to game development using Unity or Unreal Engine', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(8, 5, 'Artificial Intelligence and Machine Learning', 'An introduction to artificial intelligence and machine learning', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(9, 6, 'Internet of Things', 'An introduction to the Internet of Things (IoT)', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL),
(10, 6, 'Cybersecurity', 'An introduction to cybersecurity concepts and practices', 1, '2023-06-20 13:19:12', '2023-06-20 13:19:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_image`
--

CREATE TABLE `tbl_image` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_image`
--

INSERT INTO `tbl_image` (`id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'active', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(2, 'active', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(3, 'inactive', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(4, 'active', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(5, 'inactive', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(6, 'active', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(7, 'inactive', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(8, 'active', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(9, 'active', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL),
(10, 'inactive', '2023-06-20 13:37:33', '2023-06-20 13:37:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_image_posts_comments`
--

CREATE TABLE `tbl_image_posts_comments` (
  `id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_image_posts_comments`
--

INSERT INTO `tbl_image_posts_comments` (`id`, `image_id`, `type`, `type_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'post', 1, 'active', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(2, 2, 'post', 2, 'inactive', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(3, 3, 'comment', 1, 'active', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(4, 4, 'comment', 2, 'active', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(5, 5, 'post', 3, 'inactive', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(6, 6, 'post', 4, 'active', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(7, 7, 'comment', 3, 'active', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(8, 8, 'comment', 4, 'inactive', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(9, 9, 'post', 5, 'active', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL),
(10, 10, 'comment', 5, 'inactive', '2023-06-20 13:40:11', '2023-06-20 13:40:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_like`
--

CREATE TABLE `tbl_like` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_like`
--

INSERT INTO `tbl_like` (`id`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'active', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(2, 2, 'inactive', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(3, 3, 'active', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(4, 4, 'active', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(5, 5, 'inactive', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(6, 6, 'active', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(7, 7, 'inactive', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(8, 8, 'active', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(9, 9, 'active', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(10, 11, 'inactive', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(11, 12, 'active', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL),
(12, 13, 'inactive', '2023-06-20 13:38:40', '2023-06-20 13:38:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_like_posts_comments`
--

CREATE TABLE `tbl_like_posts_comments` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_like_posts_comments`
--

INSERT INTO `tbl_like_posts_comments` (`id`, `type`, `type_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'post', 1, 'active', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(2, 'post', 2, 'inactive', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(3, 'comment', 1, 'active', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(4, 'comment', 2, 'active', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(5, 'post', 3, 'inactive', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(6, 'post', 4, 'active', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(7, 'comment', 3, 'active', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(8, 'comment', 4, 'inactive', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(9, 'post', 5, 'active', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL),
(10, 'comment', 5, 'inactive', '2023-06-20 13:39:47', '2023-06-20 13:39:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_managers_class_courses`
--

CREATE TABLE `tbl_managers_class_courses` (
  `admin_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_managers_class_courses`
--

INSERT INTO `tbl_managers_class_courses` (`admin_id`, `class_id`, `course_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(1, 1, 2, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(1, 1, 3, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(1, 2, 4, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(1, 2, 5, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(2, 3, 6, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(2, 4, 7, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(2, 5, 8, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(2, 6, 9, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL),
(2, 6, 10, 'active', '2023-06-20 13:22:07', '2023-06-20 13:22:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_managers_user`
--

CREATE TABLE `tbl_managers_user` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_managers_user`
--

INSERT INTO `tbl_managers_user` (`id`, `admin_id`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 'active', '2023-06-20 13:20:09', '2023-06-20 13:20:09', NULL),
(2, 1, 4, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(3, 1, 5, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(4, 1, 6, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(5, 1, 7, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(6, 2, 3, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(7, 2, 4, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(8, 2, 5, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(9, 2, 6, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL),
(10, 2, 7, 'active', '2023-06-20 13:20:10', '2023-06-20 13:20:10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `content`, `user_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '10 công nghệ đang thay đổi thế giới', 1, 'published', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(2, 'Sự khác biệt giữa 5G và 4G', 2, 'published', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(3, 'Công nghệ Blockchain và tiềm năng của nó', 3, 'published', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(4, 'Internet of Things (IoT) - Tương lai của cuộc sống thông minh', 4, 'published', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(5, 'Những xu hướng công nghệ trong năm 2023', 5, 'draft', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(6, 'Công nghệ AI và tác động của nó đến tương lai', 6, 'published', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(7, 'Ứng dụng công nghệ VR/AR trong giáo dục', 7, 'published', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(8, 'Các ứng dụng thực tế của công nghệ 5G', 8, 'draft', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(9, 'Những cách để bảo vệ thông tin cá nhân trên mạng', 9, 'published', '2023-06-20 13:34:22', '2023-06-20 13:34:22', NULL),
(11, 'Công nghệ Blockchain và tương lai của ngành tài chính', 11, 'published', '2023-06-20 13:34:40', '2023-06-20 13:34:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `description`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 'admin', 1, '2023-06-20 13:12:19', '2023-06-20 13:12:19', NULL),
(2, 'Teacher', 'teacher', 1, '2023-06-20 13:12:19', '2023-06-20 13:12:19', NULL),
(3, 'Student', 'student', 1, '2023-06-20 13:12:19', '2023-06-20 13:12:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_students_attendance`
--

CREATE TABLE `tbl_students_attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_students_attendance`
--

INSERT INTO `tbl_students_attendance` (`id`, `student_id`, `teacher_id`, `course_id`, `class_id`, `date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 3, 1, 1, '2023-07-01 02:00:00', 1, '2023-06-20 13:26:19', '2023-06-20 13:26:19', NULL),
(3, 9, 3, 1, 1, '2023-07-01 02:00:00', 1, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(4, 8, 3, 1, 1, '2023-07-01 02:00:00', 1, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(5, 7, 3, 1, 1, '2023-07-01 02:00:00', 1, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(6, 6, 4, 2, 2, '2023-07-02 03:00:00', 0, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(7, 7, 4, 2, 2, '2023-07-02 03:00:00', 1, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(8, 6, 5, 3, 3, '2023-07-03 04:00:00', 1, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(9, 7, 6, 4, 4, '2023-07-04 05:00:00', 0, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(10, 8, 7, 5, 5, '2023-07-05 05:00:00', 1, '2023-06-20 13:27:10', '2023-06-20 13:27:10', NULL),
(12, 9, 3, 1, 1, '2023-07-01 02:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(13, 8, 3, 1, 1, '2023-07-01 02:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(14, 7, 3, 1, 1, '2023-07-01 02:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(15, 6, 4, 2, 2, '2023-07-02 03:00:00', 0, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(16, 7, 4, 2, 2, '2023-07-02 03:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(17, 6, 5, 3, 3, '2023-07-03 04:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(18, 7, 6, 4, 4, '2023-07-04 05:00:00', 0, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(19, 8, 7, 5, 5, '2023-07-05 05:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(20, 9, 8, 6, 6, '2023-07-06 05:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL),
(21, 9, 8, 6, 6, '2023-07-06 05:00:00', 1, '2023-06-20 13:27:17', '2023-06-20 13:27:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_students_score`
--

CREATE TABLE `tbl_students_score` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_students_score`
--

INSERT INTO `tbl_students_score` (`id`, `student_id`, `teacher_id`, `course_id`, `class_id`, `score`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 3, 1, 1, 8, 1, '2023-06-20 13:31:37', '2023-06-20 13:31:37', NULL),
(3, 9, 3, 1, 1, 8, 1, '2023-06-20 13:31:58', '2023-06-20 13:31:58', NULL),
(4, 9, 4, 1, 1, 7, 1, '2023-06-20 13:31:58', '2023-06-20 13:31:58', NULL),
(5, 11, 3, 1, 1, 9, 1, '2023-06-20 13:31:58', '2023-06-20 13:31:58', NULL),
(6, 12, 4, 2, 2, 6, 0, '2023-06-20 13:31:58', '2023-06-20 13:31:58', NULL),
(7, 13, 4, 2, 2, 8, 1, '2023-06-20 13:31:58', '2023-06-20 13:31:58', NULL),
(9, 9, 3, 1, 1, 8, 1, '2023-06-20 13:32:18', '2023-06-20 13:32:18', NULL),
(10, 9, 4, 1, 1, 7, 1, '2023-06-20 13:32:18', '2023-06-20 13:32:18', NULL),
(11, 11, 3, 1, 1, 9, 1, '2023-06-20 13:32:19', '2023-06-20 13:32:19', NULL),
(12, 12, 4, 2, 2, 6, 0, '2023-06-20 13:32:19', '2023-06-20 13:32:19', NULL),
(13, 13, 4, 2, 2, 8, 1, '2023-06-20 13:32:19', '2023-06-20 13:32:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_teachers_addcourses`
--

CREATE TABLE `tbl_teachers_addcourses` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_teachers_addcourses`
--

INSERT INTO `tbl_teachers_addcourses` (`id`, `teacher_id`, `course_id`, `class_id`, `date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, 1, '2023-07-01 02:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(2, 3, 2, 1, '2023-07-02 02:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(3, 3, 3, 1, '2023-07-03 02:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(4, 4, 4, 2, '2023-07-04 03:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(5, 4, 5, 2, '2023-07-05 03:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(6, 5, 6, 3, '2023-07-06 04:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(7, 6, 7, 4, '2023-07-07 04:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(8, 7, 8, 5, '2023-07-08 05:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(9, 8, 9, 6, '2023-07-09 05:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL),
(10, 8, 10, 6, '2023-07-10 05:00:00', 'active', '2023-06-20 13:23:17', '2023-06-20 13:23:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password1` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dateOfBirth` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role_id` int(11) NOT NULL,
  `status1` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `phone`, `adress`, `username`, `password1`, `email`, `dateOfBirth`, `role_id`, `status1`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lương Thị Hoa', '0123456789', '123 Main Street, Hanoi', 'admin1', 'password1', 'admin1@example.com', '2023-06-20 13:15:38', 1, 1, '2023-06-20 13:15:38', '2023-06-20 13:15:38', NULL),
(2, 'Tông Văn Tá', '0123456788', '456 Main Street, Hanoi', 'admin2', 'password2', 'admin2@example.com', '2023-06-20 13:15:38', 1, 1, '2023-06-20 13:15:38', '2023-06-20 13:15:38', NULL),
(3, 'Giang Mai', '0123456787', '789 Main Street, Hanoi', 'teacher1', 'password3', 'teacher1@example.com', '2023-06-20 13:15:38', 2, 1, '2023-06-20 13:15:38', '2023-06-20 13:15:38', NULL),
(4, 'GG Hết game', '0123456786', '1011 Main Street, Hanoi', 'teacher2', 'password4', 'teacher2@example.com', '2023-06-20 13:15:39', 2, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(5, 'Peter Parker', '0123456785', '1213 Main Street, Hanoi', 'student1', 'password5', 'student1@example.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(6, 'Mile Mỏalis', '0123456784', '1415 Main Street, Hanoi', 'student2', 'password6', 'student2@example.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(7, 'Student 3', '0123456783', '1617 Main Street, Hanoi', 'student3', 'password7', 'student3@example.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(8, 'Student 4', '0123456782', '1819 Main Street, Hanoi', 'student4', 'password8', 'student4@example.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(9, 'Student 5', '0123456781', '2021 Main Street, Hanoi', 'student5', 'password9', 'student5@example.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(11, 'Student 10', '0123456763', '1617 Main Street, Hanoi', 'student3', 'password7', 'student3@eple.com', '2023-06-20 13:28:30', 3, 1, '2023-06-20 13:28:30', '2023-06-20 13:28:30', NULL),
(12, 'Student 11', '0125456782', '1819 Main Street, Hanoi', 'student4', 'password8', 'studen@example.com', '2023-06-20 13:28:30', 3, 1, '2023-06-20 13:28:30', '2023-06-20 13:28:30', NULL),
(13, 'Student 12', '00983456781', '2021 Main Street, Hanoi', 'student5', 'password9', 'stent5@example.com', '2023-06-20 13:28:30', 3, 1, '2023-06-20 13:28:30', '2023-06-20 13:28:30', NULL),
(20, 'Student 3', '012345678983', '1617 Main Street, Hanoi', 'student3', 'password7', 'studenti893@example.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(21, 'Student 4', '80123456782', '1819 Main Street, Hanoi', 'student4', 'password8', 'stdent4@xample.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(22, 'Student 5', '0123481', '2021 Main Street, Hanoi', 'student5', 'password9', 'studentample.com', '2023-06-20 13:15:39', 3, 1, '2023-06-20 13:15:39', '2023-06-20 13:15:39', NULL),
(23, 'Student 10', '0123463', '1617 Main Street, Hanoi', 'student3', 'password7', 'stude3@eple.com', '2023-06-20 13:28:30', 3, 1, '2023-06-20 13:28:30', '2023-06-20 13:28:30', NULL),
(24, 'Student 11', '0125456', '1819 Main Street, Hanoi', 'student4', 'password8', 'studen@eplecom', '2023-06-20 13:28:30', 3, 1, '2023-06-20 13:28:30', '2023-06-20 13:28:30', NULL),
(25, 'Student 12', '0098345', '2021 Main Street, Hanoi', 'student5', 'password9', 'stent5@eple.com', '2023-06-20 13:28:30', 3, 1, '2023-06-20 13:28:30', '2023-06-20 13:28:30', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_classes`
--
ALTER TABLE `tbl_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classes_teacher_id` (`teacher_id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_post_id` (`post_id`);

--
-- Chỉ mục cho bảng `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_courses_class_id` (`class_id`);

--
-- Chỉ mục cho bảng `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_image_posts_comments`
--
ALTER TABLE `tbl_image_posts_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_image_posts_comments_comment_id` (`type_id`),
  ADD KEY `fk_image_posts_comments_image_id` (`image_id`);

--
-- Chỉ mục cho bảng `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_like_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_like_posts_comments`
--
ALTER TABLE `tbl_like_posts_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_like_posts_comments_comment_id` (`type_id`);

--
-- Chỉ mục cho bảng `tbl_managers_class_courses`
--
ALTER TABLE `tbl_managers_class_courses`
  ADD KEY `fk_admin_manager_id` (`admin_id`),
  ADD KEY `fk_class_manager_id` (`class_id`),
  ADD KEY `fk_course_manager_id` (`course_id`);

--
-- Chỉ mục cho bảng `tbl_managers_user`
--
ALTER TABLE `tbl_managers_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_admin_id` (`admin_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_students_attendance`
--
ALTER TABLE `tbl_students_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_students_attendance_course_id` (`course_id`),
  ADD KEY `fk_students_attendance_class_id` (`class_id`),
  ADD KEY `fk_students_attendance_student_id` (`student_id`),
  ADD KEY `fk_students_attendance_teacher_id` (`teacher_id`);

--
-- Chỉ mục cho bảng `tbl_students_score`
--
ALTER TABLE `tbl_students_score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_students_score_course_id` (`course_id`),
  ADD KEY `fk_students_score_class_id` (`class_id`),
  ADD KEY `fk_students_score_student_id` (`student_id`),
  ADD KEY `fk_students_score_teacher_id` (`teacher_id`);

--
-- Chỉ mục cho bảng `tbl_teachers_addcourses`
--
ALTER TABLE `tbl_teachers_addcourses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_teachers_Courses_course_id` (`course_id`),
  ADD KEY `fk_teachers_Courses_class_id` (`class_id`),
  ADD KEY `fk_teachers_Courses_teacher_id` (`teacher_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_user_role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_classes`
--
ALTER TABLE `tbl_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_image_posts_comments`
--
ALTER TABLE `tbl_image_posts_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_like_posts_comments`
--
ALTER TABLE `tbl_like_posts_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_managers_user`
--
ALTER TABLE `tbl_managers_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_students_attendance`
--
ALTER TABLE `tbl_students_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_students_score`
--
ALTER TABLE `tbl_students_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_teachers_addcourses`
--
ALTER TABLE `tbl_teachers_addcourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_classes`
--
ALTER TABLE `tbl_classes`
  ADD CONSTRAINT `fk_classes_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `fk_comment_post_id` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`id`);

--
-- Các ràng buộc cho bảng `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD CONSTRAINT `fk_courses_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_classes` (`id`);

--
-- Các ràng buộc cho bảng `tbl_image_posts_comments`
--
ALTER TABLE `tbl_image_posts_comments`
  ADD CONSTRAINT `fk_image_posts_comments_comment_id` FOREIGN KEY (`type_id`) REFERENCES `tbl_comment` (`id`),
  ADD CONSTRAINT `fk_image_posts_comments_image_id` FOREIGN KEY (`image_id`) REFERENCES `tbl_image` (`id`),
  ADD CONSTRAINT `fk_image_posts_comments_post_id` FOREIGN KEY (`type_id`) REFERENCES `tbl_post` (`id`);

--
-- Các ràng buộc cho bảng `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD CONSTRAINT `fk_like_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_like_posts_comments`
--
ALTER TABLE `tbl_like_posts_comments`
  ADD CONSTRAINT `fk_like_posts_comments_comment_id` FOREIGN KEY (`type_id`) REFERENCES `tbl_comment` (`id`),
  ADD CONSTRAINT `fk_like_posts_comments_post_id` FOREIGN KEY (`type_id`) REFERENCES `tbl_post` (`id`);

--
-- Các ràng buộc cho bảng `tbl_managers_class_courses`
--
ALTER TABLE `tbl_managers_class_courses`
  ADD CONSTRAINT `fk_admin_manager_id` FOREIGN KEY (`admin_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_class_manager_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_classes` (`id`),
  ADD CONSTRAINT `fk_course_manager_id` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`id`);

--
-- Các ràng buộc cho bảng `tbl_managers_user`
--
ALTER TABLE `tbl_managers_user`
  ADD CONSTRAINT `fk_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `fk_post_user_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_students_attendance`
--
ALTER TABLE `tbl_students_attendance`
  ADD CONSTRAINT `fk_students_attendance_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_classes` (`id`),
  ADD CONSTRAINT `fk_students_attendance_course_id` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`id`),
  ADD CONSTRAINT `fk_students_attendance_student_id` FOREIGN KEY (`student_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_students_attendance_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_students_score`
--
ALTER TABLE `tbl_students_score`
  ADD CONSTRAINT `fk_students_score_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_classes` (`id`),
  ADD CONSTRAINT `fk_students_score_course_id` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`id`),
  ADD CONSTRAINT `fk_students_score_student_id` FOREIGN KEY (`student_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_students_score_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_teachers_addcourses`
--
ALTER TABLE `tbl_teachers_addcourses`
  ADD CONSTRAINT `fk_teachers_Courses_class_id` FOREIGN KEY (`class_id`) REFERENCES `tbl_classes` (`id`),
  ADD CONSTRAINT `fk_teachers_Courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`id`),
  ADD CONSTRAINT `fk_teachers_Courses_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `fk_user_role_id` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
