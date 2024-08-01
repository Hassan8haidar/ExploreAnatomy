-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 11:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anatomyexplorer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardiovascular_questions`
--

CREATE TABLE `cardiovascular_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correct_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardiovascular_questions`
--

INSERT INTO `cardiovascular_questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`) VALUES
(1, 'Which of the following describes the volume of air moved into or out of the lungs during a single respiratory cycle?', 'Expiratory', 'Reserve', 'Tidal volume', 'Residual', 'Tidal volume'),
(2, 'What is the main function of the heart?', 'Digestion', 'Pumping blood', 'Respiration', 'Excretion', 'Pumping blood'),
(3, 'Which blood vessels carry oxygenated blood away from the heart?', 'Veins', 'Arteries', 'Capillaries', 'Venules', 'Arteries'),
(4, 'What is the largest artery in the human body?', 'Aorta', 'Vena cava', 'Pulmonary artery', 'Coronary artery', 'Aorta'),
(5, 'What is the function of red blood cells?', 'Fight infections', 'Clot blood', 'Transport oxygen', 'Regulate temperature', 'Transport oxygen'),
(6, 'What is the main function of the heart?', 'Digestion', 'Pumping blood', 'Respiration', 'Excretion', 'Pumping blood'),
(7, 'Which blood vessels carry oxygenated blood away from the heart?', 'Veins', 'Arteries', 'Capillaries', 'Venules', 'Arteries'),
(8, 'What is the largest artery in the human body?', 'Aorta', 'Vena cava', 'Pulmonary artery', 'Coronary artery', 'Aorta'),
(9, 'What is the function of red blood cells?', 'Fight infections', 'Clot blood', 'Transport oxygen', 'Regulate temperature', 'Transport oxygen');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `email`, `password`, `date_of_birth`) VALUES
(1, 'hassan', 'haidar', 'hassanhaidar@gmail.com', 'password', '2001-06-08'),
(7, 'whatttt ', 'theee', 'heeeel@gmail.com', 'ohmygawd123', '5678-12-31'),
(8, 'mohamad', 'haidar', 'mohamadhaidar@gmail.com', '123456', '2005-09-14'),
(9, 'ghanda', 'zahr', 'ghandazahr@gmail.com', '654321', '1971-01-28'),
(23, 'Nizar', 'Haidar', 'nizarhaidar0@gmail.com', '123456', '1964-04-29'),
(25, 'Tima', 'Wehbe', 'timawehbe@gmail.com', 'tomato', '2004-08-08'),
(26, 'hassan', 'haidar', 'hassanhaidar339@gmail.com', '12345', '2001-06-08'),
(27, 'test', 'tt', 'test@gmail.com', '123456', '2002-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `muscular_questions`
--

CREATE TABLE `muscular_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correct_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muscular_questions`
--

INSERT INTO `muscular_questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`) VALUES
(1, 'Which of the following tissue types is avascular and contains a basement membrane?', 'Epithelium', 'Connective', 'Muscle', 'Nervous', 'Epithelium'),
(2, 'Which muscle is known as the calf muscle?', 'Biceps', 'Triceps', 'Gastrocnemius', 'Quadriceps', 'Gastrocnemius'),
(3, 'What is the primary function of skeletal muscles?', 'Circulation', 'Digestion', 'Movement', 'Respiration', 'Movement'),
(4, 'Which muscle is responsible for breathing?', 'Diaphragm', 'Deltoid', 'Pectoralis major', 'Latissimus dorsi', 'Diaphragm'),
(5, 'What type of muscle is found in the heart?', 'Smooth muscle', 'Skeletal muscle', 'Cardiac muscle', 'Visceral muscle', 'Cardiac muscle'),
(6, 'Which muscle is known as the calf muscle?', 'Biceps', 'Triceps', 'Gastrocnemius', 'Quadriceps', 'Gastrocnemius'),
(7, 'What is the primary function of skeletal muscles?', 'Circulation', 'Digestion', 'Movement', 'Respiration', 'Movement'),
(8, 'Which muscle is responsible for breathing?', 'Diaphragm', 'Deltoid', 'Pectoralis major', 'Latissimus dorsi', 'Diaphragm'),
(9, 'What type of muscle is found in the heart?', 'Smooth muscle', 'Skeletal muscle', 'Cardiac muscle', 'Visceral muscle', 'Cardiac muscle');

-- --------------------------------------------------------

--
-- Table structure for table `nervous_questions`
--

CREATE TABLE `nervous_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correct_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nervous_questions`
--

INSERT INTO `nervous_questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`) VALUES
(1, 'Which tissue type provides support and connects different body parts?', 'Connective', 'Epithelial', 'Muscle', 'Nervous', 'Connective'),
(2, 'What is the main control center of the nervous system?', 'Heart', 'Liver', 'Brain', 'Spinal cord', 'Brain'),
(3, 'Which part of the brain is responsible for coordination and balance?', 'Cerebrum', 'Cerebellum', 'Brainstem', 'Hippocampus', 'Cerebellum'),
(4, 'What type of cells are the primary functional units of the nervous system?', 'Epithelial cells', 'Neurons', 'Osteocytes', 'Myocytes', 'Neurons'),
(5, 'What is the gap between two neurons called?', 'Synapse', 'Axon', 'Dendrite', 'Node', 'Synapse'),
(6, 'What is the main control center of the nervous system?', 'Heart', 'Liver', 'Brain', 'Spinal cord', 'Brain'),
(7, 'Which part of the brain is responsible for coordination and balance?', 'Cerebrum', 'Cerebellum', 'Brainstem', 'Hippocampus', 'Cerebellum'),
(8, 'What type of cells are the primary functional units of the nervous system?', 'Epithelial cells', 'Neurons', 'Osteocytes', 'Myocytes', 'Neurons'),
(9, 'What is the gap between two neurons called?', 'Synapse', 'Axon', 'Dendrite', 'Node', 'Synapse');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `ID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `NID` int(11) NOT NULL,
  `SID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `ID` int(11) NOT NULL,
  `Question` varchar(200) NOT NULL,
  `Answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`ID`, `Question`, `Answer`) VALUES
(1, 'Which of the following muscle types is described as striated and under involuntary control ?', 'cardiac muscle'),
(2, 'Which of the following tissue types is avascular and contains a basement membrane ?', 'epithelial'),
(3, 'Which of the following describes the volume of air moved into or out of the lungs during a single respiratory cycle ?', 'tidal volume'),
(4, 'Which of the following is the most superficial layer of the epidermis ? ', 'connective');

-- --------------------------------------------------------

--
-- Table structure for table `skeletal_questions`
--

CREATE TABLE `skeletal_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `correct_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skeletal_questions`
--

INSERT INTO `skeletal_questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer`) VALUES
(1, 'Which of the following muscle types is described as striated and under involuntary control?', 'Skeletal', 'Cardiac', 'Smooth', 'Visceral', 'Cardiac'),
(2, 'Which bone is known as the collarbone?', 'Femur', 'Humerus', 'Clavicle', 'Scapula', 'Clavicle'),
(3, 'What is the largest bone in the human body?', 'Tibia', 'Fibula', 'Femur', 'Humerus', 'Femur'),
(4, 'What type of joint is found in the shoulder?', 'Hinge joint', 'Ball and socket joint', 'Pivot joint', 'Saddle joint', 'Ball and socket joint'),
(5, 'How many bones are in the adult human skeleton?', '206', '208', '210', '212', '206'),
(6, 'What is the longest bone in the human body?', 'Femur', 'Tibia', 'Fibula', 'Humerus', 'Femur'),
(7, 'Which bone is known as the kneecap?', 'Patella', 'Scapula', 'Sternum', 'Clavicle', 'Patella'),
(8, 'How many bones are there in the adult human body?', '206', '210', '205', '208', '206'),
(9, 'What type of bone is the vertebra?', 'Irregular bone', 'Long bone', 'Short bone', 'Flat bone', 'Irregular bone'),
(10, 'Which bone is commonly known as the collarbone?', 'Clavicle', 'Sternum', 'Scapula', 'Radius', 'Clavicle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardiovascular_questions`
--
ALTER TABLE `cardiovascular_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `muscular_questions`
--
ALTER TABLE `muscular_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nervous_questions`
--
ALTER TABLE `nervous_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CID` (`CID`,`MID`,`NID`,`SID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `SID` (`SID`),
  ADD KEY `NID` (`NID`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `skeletal_questions`
--
ALTER TABLE `skeletal_questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cardiovascular_questions`
--
ALTER TABLE `cardiovascular_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `muscular_questions`
--
ALTER TABLE `muscular_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nervous_questions`
--
ALTER TABLE `nervous_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skeletal_questions`
--
ALTER TABLE `skeletal_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `cardiovascular_questions` (`id`),
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `muscular_questions` (`id`),
  ADD CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`SID`) REFERENCES `skeletal_questions` (`id`),
  ADD CONSTRAINT `questions_ibfk_4` FOREIGN KEY (`NID`) REFERENCES `nervous_questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
