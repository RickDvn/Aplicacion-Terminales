-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2024 a las 15:57:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tarifasdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution`
--

CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_execution`
--

INSERT INTO `batch_job_execution` (`JOB_EXECUTION_ID`, `VERSION`, `JOB_INSTANCE_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(1, 2, 1, '2024-05-08 17:25:33.000000', '2024-05-08 17:25:33.000000', '2024-05-08 17:25:33.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-08 17:25:33.000000'),
(2, 2, 1, '2024-05-09 10:26:35.000000', '2024-05-09 10:26:35.000000', '2024-05-09 10:26:35.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-09 10:26:35.000000'),
(3, 2, 1, '2024-05-09 10:30:32.000000', '2024-05-09 10:30:32.000000', '2024-05-09 10:30:33.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-09 10:30:33.000000'),
(4, 2, 1, '2024-05-09 12:08:53.000000', '2024-05-09 12:08:53.000000', '2024-05-09 12:08:53.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-09 12:08:53.000000'),
(5, 2, 1, '2024-05-09 17:59:26.000000', '2024-05-09 17:59:26.000000', '2024-05-09 17:59:26.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-09 17:59:26.000000'),
(6, 2, 1, '2024-05-10 10:16:03.000000', '2024-05-10 10:16:03.000000', '2024-05-10 10:16:04.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-10 10:16:04.000000'),
(7, 2, 1, '2024-05-10 11:45:26.000000', '2024-05-10 11:45:26.000000', '2024-05-10 11:45:27.000000', 'FAILED', 'FAILED', 'org.springframework.dao.TransientDataAccessResourceException: Attempt to process next row failed; SQL [SELECT id, nombre_tarifa, precio	 from TARIFAS]; Column Index out of range, 0 < 1.\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:124)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.translateSqlException(AbstractCursorItemReader.java:224)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.doRead(AbstractCursorItemReader.java:488)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:127)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:69)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at ', '2024-05-10 11:45:27.000000'),
(8, 2, 1, '2024-05-10 11:46:22.000000', '2024-05-10 11:46:22.000000', '2024-05-10 11:46:22.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-10 11:46:22.000000'),
(9, 2, 1, '2024-05-10 12:13:06.000000', '2024-05-10 12:13:06.000000', '2024-05-10 12:13:06.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-10 12:13:06.000000'),
(10, 2, 1, '2024-05-13 17:14:14.000000', '2024-05-13 17:14:14.000000', '2024-05-13 17:14:14.000000', 'FAILED', 'FAILED', 'org.springframework.jdbc.UncategorizedSQLException: Attempt to process next row failed; uncategorized SQLException for SQL [SELECT id, nombre_tarifa, precio from TARIFAS]; SQL state [S0022]; error code [0]; Column \'nombreTarifa\' not found.\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.translateSqlException(AbstractCursorItemReader.java:228)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.doRead(AbstractCursorItemReader.java:488)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:127)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:69)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:240)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:229)\r\n	at or', '2024-05-13 17:14:14.000000'),
(11, 2, 1, '2024-05-13 17:14:58.000000', '2024-05-13 17:14:58.000000', '2024-05-13 17:14:59.000000', 'FAILED', 'FAILED', 'org.springframework.jdbc.UncategorizedSQLException: Attempt to process next row failed; uncategorized SQLException for SQL [SELECT id, nombre_tarifa, precio from TARIFAS]; SQL state [S0022]; error code [0]; Column \'iva\' not found.\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.translateSqlException(AbstractCursorItemReader.java:228)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.doRead(AbstractCursorItemReader.java:488)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:127)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:69)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:240)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:229)\r\n	at org.springf', '2024-05-13 17:14:59.000000'),
(12, 2, 1, '2024-05-13 17:16:28.000000', '2024-05-13 17:16:28.000000', '2024-05-13 17:16:28.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-13 17:16:28.000000'),
(13, 2, 1, '2024-05-13 17:50:53.000000', '2024-05-13 17:50:53.000000', '2024-05-13 17:50:53.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-13 17:50:53.000000'),
(14, 2, 1, '2024-05-13 17:52:42.000000', '2024-05-13 17:52:42.000000', '2024-05-13 17:52:42.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-13 17:52:42.000000'),
(15, 2, 1, '2024-05-15 10:24:52.000000', '2024-05-15 10:24:52.000000', '2024-05-15 10:24:52.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 10:24:52.000000'),
(16, 2, 1, '2024-05-15 10:29:17.000000', '2024-05-15 10:29:17.000000', '2024-05-15 10:29:17.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 10:29:17.000000'),
(17, 2, 1, '2024-05-15 10:30:34.000000', '2024-05-15 10:30:34.000000', '2024-05-15 10:30:34.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 10:30:34.000000'),
(18, 2, 1, '2024-05-15 10:31:55.000000', '2024-05-15 10:31:55.000000', '2024-05-15 10:31:55.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 10:31:55.000000'),
(19, 2, 1, '2024-05-15 11:00:50.000000', '2024-05-15 11:00:50.000000', '2024-05-15 11:00:50.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 11:00:50.000000'),
(20, 2, 1, '2024-05-15 12:06:35.000000', '2024-05-15 12:06:35.000000', '2024-05-15 12:06:35.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 12:06:35.000000'),
(21, 2, 1, '2024-05-15 12:08:25.000000', '2024-05-15 12:08:26.000000', '2024-05-15 12:08:26.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 12:08:26.000000'),
(22, 2, 1, '2024-05-15 13:28:33.000000', '2024-05-15 13:28:33.000000', '2024-05-15 13:28:34.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 13:28:34.000000'),
(23, 2, 1, '2024-05-15 13:33:31.000000', '2024-05-15 13:33:31.000000', '2024-05-15 13:33:32.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 13:33:32.000000'),
(24, 2, 1, '2024-05-15 13:35:57.000000', '2024-05-15 13:35:58.000000', '2024-05-15 13:35:58.000000', 'COMPLETED', 'COMPLETED', '', '2024-05-15 13:35:58.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_context`
--

CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_execution_context`
--

INSERT INTO `batch_job_execution_context` (`JOB_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(2, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(3, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(4, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(5, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(6, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(7, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(8, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(9, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(10, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(11, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(12, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(13, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(14, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(15, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(16, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(17, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(18, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(19, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(20, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(21, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(22, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(23, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL),
(24, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xeA==', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_params`
--

CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `PARAMETER_NAME` varchar(100) NOT NULL,
  `PARAMETER_TYPE` varchar(100) NOT NULL,
  `PARAMETER_VALUE` varchar(2500) DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_seq`
--

CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_execution_seq`
--

INSERT INTO `batch_job_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(24, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_instance`
--

CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_instance`
--

INSERT INTO `batch_job_instance` (`JOB_INSTANCE_ID`, `VERSION`, `JOB_NAME`, `JOB_KEY`) VALUES
(1, 0, 'importUserJob', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_seq`
--

CREATE TABLE `batch_job_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_job_seq`
--

INSERT INTO `batch_job_seq` (`ID`, `UNIQUE_KEY`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution`
--

CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_step_execution`
--

INSERT INTO `batch_step_execution` (`STEP_EXECUTION_ID`, `VERSION`, `STEP_NAME`, `JOB_EXECUTION_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `COMMIT_COUNT`, `READ_COUNT`, `FILTER_COUNT`, `WRITE_COUNT`, `READ_SKIP_COUNT`, `WRITE_SKIP_COUNT`, `PROCESS_SKIP_COUNT`, `ROLLBACK_COUNT`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(1, 4, 'step1', 1, '2024-05-08 17:25:33.000000', '2024-05-08 17:25:33.000000', '2024-05-08 17:25:33.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-08 17:25:33.000000'),
(2, 4, 'step1', 2, '2024-05-09 10:26:35.000000', '2024-05-09 10:26:35.000000', '2024-05-09 10:26:35.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-09 10:26:35.000000'),
(3, 4, 'step1', 3, '2024-05-09 10:30:33.000000', '2024-05-09 10:30:33.000000', '2024-05-09 10:30:33.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-09 10:30:33.000000'),
(4, 4, 'step1', 4, '2024-05-09 12:08:53.000000', '2024-05-09 12:08:53.000000', '2024-05-09 12:08:53.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-09 12:08:53.000000'),
(5, 4, 'step1', 5, '2024-05-09 17:59:26.000000', '2024-05-09 17:59:26.000000', '2024-05-09 17:59:26.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-09 17:59:26.000000'),
(6, 4, 'step1', 6, '2024-05-10 10:16:03.000000', '2024-05-10 10:16:03.000000', '2024-05-10 10:16:04.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-10 10:16:04.000000'),
(7, 2, 'step1', 7, '2024-05-10 11:45:26.000000', '2024-05-10 11:45:26.000000', '2024-05-10 11:45:27.000000', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.dao.TransientDataAccessResourceException: Attempt to process next row failed; SQL [SELECT id, nombre_tarifa, precio	 from TARIFAS]; Column Index out of range, 0 < 1.\r\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:124)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:107)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:116)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.translateSqlException(AbstractCursorItemReader.java:224)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.doRead(AbstractCursorItemReader.java:488)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:127)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:69)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at ', '2024-05-10 11:45:27.000000'),
(8, 4, 'step1', 8, '2024-05-10 11:46:22.000000', '2024-05-10 11:46:22.000000', '2024-05-10 11:46:22.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-10 11:46:22.000000'),
(9, 4, 'step1', 9, '2024-05-10 12:13:06.000000', '2024-05-10 12:13:06.000000', '2024-05-10 12:13:06.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-10 12:13:06.000000'),
(10, 2, 'step1', 10, '2024-05-13 17:14:14.000000', '2024-05-13 17:14:14.000000', '2024-05-13 17:14:14.000000', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.jdbc.UncategorizedSQLException: Attempt to process next row failed; uncategorized SQLException for SQL [SELECT id, nombre_tarifa, precio from TARIFAS]; SQL state [S0022]; error code [0]; Column \'nombreTarifa\' not found.\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.translateSqlException(AbstractCursorItemReader.java:228)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.doRead(AbstractCursorItemReader.java:488)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:127)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:69)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:240)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:229)\r\n	at or', '2024-05-13 17:14:14.000000'),
(11, 2, 'step1', 11, '2024-05-13 17:14:58.000000', '2024-05-13 17:14:58.000000', '2024-05-13 17:14:59.000000', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.jdbc.UncategorizedSQLException: Attempt to process next row failed; uncategorized SQLException for SQL [SELECT id, nombre_tarifa, precio from TARIFAS]; SQL state [S0022]; error code [0]; Column \'iva\' not found.\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.translateSqlException(AbstractCursorItemReader.java:228)\r\n	at org.springframework.batch.item.database.AbstractCursorItemReader.doRead(AbstractCursorItemReader.java:488)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:108)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:182)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.lambda$provide$0(SimpleChunkProvider.java:132)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:127)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:69)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:388)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:312)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:255)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:369)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:206)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:240)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:229)\r\n	at org.springf', '2024-05-13 17:14:59.000000'),
(12, 4, 'step1', 12, '2024-05-13 17:16:28.000000', '2024-05-13 17:16:28.000000', '2024-05-13 17:16:28.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-13 17:16:28.000000'),
(13, 4, 'step1', 13, '2024-05-13 17:50:53.000000', '2024-05-13 17:50:53.000000', '2024-05-13 17:50:53.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-13 17:50:53.000000'),
(14, 4, 'step1', 14, '2024-05-13 17:52:42.000000', '2024-05-13 17:52:42.000000', '2024-05-13 17:52:42.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-13 17:52:42.000000'),
(15, 4, 'step1', 15, '2024-05-15 10:24:52.000000', '2024-05-15 10:24:52.000000', '2024-05-15 10:24:52.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 10:24:52.000000'),
(16, 4, 'step1', 16, '2024-05-15 10:29:17.000000', '2024-05-15 10:29:17.000000', '2024-05-15 10:29:17.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 10:29:17.000000'),
(17, 4, 'step1', 17, '2024-05-15 10:30:34.000000', '2024-05-15 10:30:34.000000', '2024-05-15 10:30:34.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 10:30:34.000000'),
(18, 4, 'step1', 18, '2024-05-15 10:31:55.000000', '2024-05-15 10:31:55.000000', '2024-05-15 10:31:55.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 10:31:55.000000'),
(19, 4, 'step1', 19, '2024-05-15 11:00:50.000000', '2024-05-15 11:00:50.000000', '2024-05-15 11:00:50.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 11:00:50.000000'),
(20, 4, 'step1', 20, '2024-05-15 12:06:35.000000', '2024-05-15 12:06:35.000000', '2024-05-15 12:06:35.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 12:06:35.000000'),
(21, 4, 'step1', 21, '2024-05-15 12:08:26.000000', '2024-05-15 12:08:26.000000', '2024-05-15 12:08:26.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 12:08:26.000000'),
(22, 4, 'step1', 22, '2024-05-15 13:28:33.000000', '2024-05-15 13:28:33.000000', '2024-05-15 13:28:33.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 13:28:33.000000'),
(23, 4, 'step1', 23, '2024-05-15 13:33:32.000000', '2024-05-15 13:33:32.000000', '2024-05-15 13:33:32.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 13:33:32.000000'),
(24, 4, 'step1', 24, '2024-05-15 13:35:58.000000', '2024-05-15 13:35:58.000000', '2024-05-15 13:35:58.000000', 'COMPLETED', 2, 5, 0, 5, 0, 0, 0, 0, 'COMPLETED', '', '2024-05-15 13:35:58.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution_context`
--

CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_step_execution_context`
--

INSERT INTO `batch_step_execution_context` (`STEP_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAgcHJvZHVjdG9JdGVtV3JpdGVyLmN1cnJlbnQuY291bnRzcgAOamF2YS5sYW5nLkxvbmc7i+SQzI8j3wIAAUoABXZhbHVleHEAfgAEAAAAAAAAAIB0ABFiYXRjaC50YXNrbGV0VHlwZXQAPW9yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLml0ZW0uQ2h1bmtPcmllbnRlZFRhc2tsZXR0ABpwcm9kdWN0b0l0ZW1Xcml0ZXIud3JpdHRlbnNxAH4ABwAAAAAAAAAFdAANYmF0Y2gudmVyc2lvbnQABTUuMS4xdAAOYmF0Y2guc3RlcFR5cGV0ADdvcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC50YXNrbGV0LlRhc2tsZXRTdGVweA==', NULL),
(2, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAIB0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(3, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAIB0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(4, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAIB0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(5, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAIB0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(6, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfUmVwb3NpdG9yeUl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAIB0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(7, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAAdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAAdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAABh0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(8, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAHt0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(9, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAIB0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(10, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAAdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAAdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAABx0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(11, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAAdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAAdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAABx0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(12, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(13, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(14, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(15, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(16, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(17, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(18, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(19, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(20, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(21, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(22, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(23, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL),
(24, 'rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAAGdAAfSmRiY0N1cnNvckl0ZW1SZWFkZXIucmVhZC5jb3VudHNyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAGdAAYdGFyaWZhSXRlbVdyaXRlci53cml0dGVuc3IADmphdmEubGFuZy5Mb25nO4vkkMyPI98CAAFKAAV2YWx1ZXhxAH4ABAAAAAAAAAAFdAARYmF0Y2gudGFza2xldFR5cGV0AD1vcmcuc3ByaW5nZnJhbWV3b3JrLmJhdGNoLmNvcmUuc3RlcC5pdGVtLkNodW5rT3JpZW50ZWRUYXNrbGV0dAAedGFyaWZhSXRlbVdyaXRlci5jdXJyZW50LmNvdW50c3EAfgAHAAAAAAAAAJF0AA1iYXRjaC52ZXJzaW9udAAFNS4xLjF0AA5iYXRjaC5zdGVwVHlwZXQAN29yZy5zcHJpbmdmcmFtZXdvcmsuYmF0Y2guY29yZS5zdGVwLnRhc2tsZXQuVGFza2xldFN0ZXB4', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution_seq`
--

CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `batch_step_execution_seq`
--

INSERT INTO `batch_step_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(24, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifas`
--

CREATE TABLE `tarifas` (
  `id` int(11) NOT NULL,
  `nombre_tarifa` varchar(50) NOT NULL,
  `precio` float(10,2) NOT NULL,
  `iva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarifas`
--

INSERT INTO `tarifas` (`id`, `nombre_tarifa`, `precio`, `iva`) VALUES
(11111, 'Básico', 9.99, 21),
(22222, 'Premium', 19.99, 21),
(33333, 'Avanzado', 29.99, 7),
(44444, 'Pro', 49.99, 7),
(55555, 'Enterprise', 99.99, 21);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`),
  ADD KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`);

--
-- Indices de la tabla `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_job_execution_seq`
--
ALTER TABLE `batch_job_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `batch_job_instance`
--
ALTER TABLE `batch_job_instance`
  ADD PRIMARY KEY (`JOB_INSTANCE_ID`),
  ADD UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`);

--
-- Indices de la tabla `batch_job_seq`
--
ALTER TABLE `batch_job_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`),
  ADD KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`);

--
-- Indices de la tabla `batch_step_execution_seq`
--
ALTER TABLE `batch_step_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `tarifas`
--
ALTER TABLE `tarifas`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`);

--
-- Filtros para la tabla `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`STEP_EXECUTION_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
