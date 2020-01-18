SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(25) NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 NOT NULL,
  `time` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `bots` (
  `id` int(11) NOT NULL,
  `uuid` varchar(60) CHARACTER SET utf8 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `computername` varchar(255) CHARACTER SET utf8 NOT NULL,
  `remote_ip` varchar(25) CHARACTER SET utf16 NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8 NOT NULL,
  `command` varchar(255) CHARACTER SET utf8 NOT NULL,
  `arguments` varchar(255) CHARACTER SET utf8 NOT NULL,
  `command_type` varchar(7) CHARACTER SET utf8 NOT NULL,
  `encryption_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `encryption_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `response` longtext CHARACTER SET utf8 NOT NULL,
  `last_time` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `remote_ip` varchar(20) CHARACTER SET utf8 NOT NULL,
  `user_agent` varchar(180) CHARACTER SET utf8 NOT NULL,
  `last_connection` varchar(20) CHARACTER SET utf8 NOT NULL,
  `login_attempts` int(2) NOT NULL,
  `banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `response` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

ALTER TABLE `bots`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `token` (`token`);

ALTER TABLE `bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `bots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;