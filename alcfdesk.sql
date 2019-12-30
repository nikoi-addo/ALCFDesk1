-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2019 at 07:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alcfdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Mingleemma', 0x3862656261386131616434343737363466633761303162366338383135313062),
(2, 'kingdom', 0x6139356366336162316565653062393461313461366465663563643832346131);

-- --------------------------------------------------------

--
-- Table structure for table `eventregistration`
--

CREATE TABLE `eventregistration` (
  `id` int(16) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `location` varchar(32) NOT NULL,
  `dob` varchar(16) NOT NULL,
  `attend1` varchar(3) NOT NULL DEFAULT 'no',
  `attend2` varchar(3) NOT NULL DEFAULT 'no',
  `attend3` varchar(3) NOT NULL DEFAULT 'no',
  `tattend1` double NOT NULL DEFAULT '0',
  `tattend2` double NOT NULL DEFAULT '0',
  `tattend3` double NOT NULL DEFAULT '0',
  `source` varchar(4) NOT NULL,
  `expectations` text NOT NULL,
  `registrar` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventregistration`
--

INSERT INTO `eventregistration` (`id`, `fname`, `lname`, `email`, `phone`, `location`, `dob`, `attend1`, `attend2`, `attend3`, `tattend1`, `tattend2`, `tattend3`, `source`, `expectations`, `registrar`) VALUES
(1, 'Miss Vanessa', 'Asamoah', 'vasamoah62@gmail.com', '0548490559', 'Airport', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious', 'Minister Sophia'),
(2, 'Miss Daniella', 'Larsen', 'daniellaednalarsen@gmail.com', '0544042197', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Blessed by the word!!!', 'Minister Sophia'),
(3, 'Miss Elaine', 'Akoto', 'elaineakoto@gmail.com', '0261493848', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious', 'Minister Sophia'),
(4, 'Miss Sophia', 'Acquaye', 'sophiaakyereacquaye@gmail.com', '0500002082', 'Adenta Frafraha', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience the power of the Holy Spirit in another dimension. To receive a deeper knowledge and understanding of the Word of God. To see many souls won to Christ', 'Minister Sophia'),
(5, 'Miss Jessica', 'Manyo', 'jessicamawuena@gmail.com', '0205841918', 'Acp Pokuase', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Spirit filled conference which will bring transformation in every aspect of our lives', 'Minister Sophia'),
(6, 'Mr Prince', 'Frimpong', 'kwame60.pf@gmail.com', '0555926251', 'Korle Bu', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Increase in Grace and in the knowledge of our Lord Jesus Christ', 'Minister Sophia'),
(7, 'Miss Darlene', 'Lamptey', 'darlenemlamptey@gmail.com', '0271832712', 'Osu', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To receive more from my man of God and move to a higher level of Knowledge in the word of God and glory!', 'Minister Sophia'),
(8, 'Miss Jennifer', 'Manyo', 'jenyamour.ja@gmail.com', '0504127326', 'ACP Pokuase', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A Glorious service', 'Minister Sophia'),
(9, 'Mr Rudy Nikoi', 'Addo', 'rudyaddo@gmail.com', '0209032581', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Increase in knowledge of the Abundance of life I have in Christ. Many people being saved and Divine Healing', 'Minister Sophia'),
(10, 'Miss Michelle', 'Dzifa', 'akosuadzf@gmail.com', '0208996932', 'University of Ghana', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be spiritually strengthened.', 'Minister Sophia'),
(11, 'Mr Sedem', 'Apau', 'sedemapau22@gmail.com', '0540664630', 'Laterbiokorshie', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious', 'Minister Sophia'),
(12, 'Mr Daniel', 'Owusu-Koranteng', 'danowusukoranteng@gmail.com', '0200998099', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience the Holy Spirit in another dimension, and to be filled with the knowledge of the abundant life that we’ve been given', 'Minister Sophia'),
(13, 'Mr James', 'Amenti', 'Jamenti57@gmail.com', '0543061675', 'McCarthy Hill', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience the abundance life of Christ through this program.', 'Minister Sophia'),
(14, 'Miss Sarah Kelly Shidaa', 'Addy', 'kellyshidaaa@gmail.com', '0273238553', 'Alajo', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious and awesome in his presence and experience him', 'Minister Sophia'),
(15, 'Miss Deborah', 'Oddoye', 'dherbie.Oddoye97@gmail.com', '0277517297', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That God will be glorified', 'Minister Sophia'),
(16, 'Mr Daniel', 'Kwadwo Sarfo', 'danielsarfo808@gmail.com', '0203868095', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', ' I expect to receive from the Lord to help know him more', 'Minister Sophia'),
(17, 'Mr Mark', 'Dogbey', 'marktruth9@gmail.com', '0243442819', 'Sowutuom', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'EXPECTING A GLORIOUS AND MIGHTY MOVE OF GOD', 'Minister Sophia'),
(18, 'Miss Edem', 'Tetteh', 'edemtetteh82@gmail.com', '0542554606', 'Accra NewTown', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious encounters for everyone. Also to learn what God has or will give the man of God.', 'Minister Sophia'),
(19, 'Mr Dzidefo', 'Dotse', 'boudingh@gmail.com', '0267521428', 'Lakeside', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Upliftment', 'Minister Sophia'),
(20, 'Mr Gilbert Senior', 'Agyiri-Tete', 'gilbertsenior77@gmail.com', '0270248777', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'It’s going to be a glorious time of the word and power', 'Minister Sophia'),
(21, 'Mr Conrad', 'Dahlin', 'dahlinconrad@gmail.com', '0244138907', 'Eastern Region', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Wonderful and blissful', 'Minister Sophia'),
(22, 'Mr Klinsman', 'Boateng', 'kboatengking03@gmail.com', '0551987429', 'University of Ghana', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A lifting up in the spirit', 'Minister Sophia'),
(23, 'Mr Bernard', 'Osei Akoto', 'Bernardoseiakoto.boa@gmail.com', '0571356806', 'Ablekuma', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'It will be a Glorious program', 'Minister Sophia'),
(24, 'Miss Gertrude', 'Agyapong', 'agertrude9@gmail.com', '0505503017', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Miracles healing', 'Minister Sophia'),
(25, 'Miss Rosabel', 'Tetteh', 'rosatetteh@gmail.com', '0244675087', 'Afienya', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience the embrace of the Holy Spirit through deeper understanding of the Word of God', 'Minister Sophia'),
(26, 'Mr Emmanuel', 'Koduah', 'kdhemmanuel@gmail.com', '0553553903', 'Teshie Tsuibleo', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Transformation of life', 'Minister Sophia'),
(27, 'Mr Alex', 'Ofosu Kwakye', 'aofosu.gh@gmail.com', '0265263836', 'Red Top', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That the program will be life transforming', 'Minister Sophia'),
(28, 'Mr Fritz', 'Baffoe', 'Bbondzie13@gmail.com', '0269901135', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Insight', 'Minister Sophia'),
(29, 'Mr Samuel Micheal', 'Cudjoe', 'samuelcudjoe536@gmail.com', '0543637453', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Nothing but the Good word of God to transform my Life for the better.', 'Minister Sophia'),
(30, 'Miss Yolanda', 'Dotse- Mensah', 'yolimensah@gmail.com', '0245443987', 'Kasoa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Welcoming atmosphere to worship', 'Minister Sophia'),
(31, 'Mr Julian', 'Hinson', 'Jayfhinson@gmail.com', '0249012305', 'Adentan', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The abundant life of God will be evident in everyone that attends this programme and whoever comes into contact will experience the abundant life and the love of God.', 'Minister Sophia'),
(32, 'Mr Alfred', 'Otchere', 'alfredotchere@gmail.com', '0207530317', 'Odorkor', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Increase in the love and knowledge of God and a deeper relationship with the Holy Spirit', 'Minister Sophia'),
(33, 'Mr Albert', 'Zoddah', 'azoddah@gmail.com', '0275595902', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A lot of everything', 'Minister Sophia'),
(34, 'Mr Joshua', 'Nketsiah', 'Nketsiahjoshua7@gmail.com', '0268083164', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Preaching of the  unadulterated word of God accompanied by the power of God in the demonstration of healings miracles and prophecies.', 'Minister Sophia'),
(35, 'Miss Diana', 'Luu', 'dyluu@st.ug.edu.gh', '0204804479', 'Obuasi', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To receive a deeper understanding of the Word', 'Minister Sophia'),
(36, 'Miss Perpetual', 'Adjei', 'nanagyamfua.pa@gmail.com', '0545886969', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I believe that with this programme people’s understanding of the word will be enlightened and they would affect their sphere of contact with what they receive.', 'Minister Sophia'),
(37, 'Miss Dorcas', 'Nketsiah', 'dnketsiah2@gmail.com', '0543735054', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A life changing experience', 'Minister Sophia'),
(38, 'Miss Beatrice', 'Tetteh', 'Akweleytetteh433@gmail.com', '0249375793', 'Dodowa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'REVIVAL AND BREAKTHROUGHS', 'Minister Sophia'),
(39, 'Mr Samuel', 'Asamoah-Boateng', 'asamoahboatengsam@gmail.com', '0552537387', 'Sakumono', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience a deeper understanding of what it means to be in Christ', 'Minister Sophia'),
(40, 'Mr Josaiah', 'Acheampong Marfo', 'acheampongjosaiah999@gmail.com', '0550044110', 'Lapaz- Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Supernatural increase and Recreation', 'Minister Sophia'),
(41, 'Miss Lois Ewuraesi', 'Osei', 'ewuraesi4554@gmail.com', '0272222141', 'Kasoa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To fellowship with the body of Christ.', 'Minister Sophia'),
(42, 'Mr Frederick', 'Tettey', 'kofigyampo1994@gmail.com', '0542066707', 'Mataheko', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The radiation of Gods glory', 'Minister Sophia'),
(43, 'Miss Ama', 'Hayfron', 'Hayfronnanaama@yahoo.com', '502490587', 'Koforidua', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Be more blessed after the event', 'Minister Sophia'),
(44, 'Miss Priscilla', 'Frimpong', 'frimpongp22@gmail.com', '5083300564', 'Worcester MA', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A day filled with glory and God power', 'Minister Sophia'),
(45, 'Mr Joseph Derek', 'Tetteh', 'derekjoseph1989@gmail.com', '0546265468', 'Redtop, Bortianor - Weija', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Expectations are to experience the manifestation of the Holy Spirit to usher us into more glorious things ahead of us.', 'Minister Sophia'),
(46, 'Miss Rachael', 'Suntah', 'suntahr@gmail.com', '0575176958', 'Western Reg', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Manifestation of Gods glory', 'Minister Sophia'),
(47, 'Mr Eugene', 'Adjei', 'Kofiadjei16@gmail.com', '0501148431', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A Glorious Life time experience. A new level of my walk with the holy spirit', 'Minister Sophia'),
(48, 'Mr Emmanuel', 'Evans-Anfom', 'niiarmah5@gmail.com', '0243221612', 'Achimota', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'e with the Word of God, full of the demonstration of the Spirit and Impartations.', 'Minister Sophia'),
(49, 'Miss Nana Yaa Ansomaa', 'Enyan', 'Neyabaabe@gmail.com', '0559598368', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'An overflow of Gods glory on everyone', 'Minister Sophia'),
(50, 'Mr Kelvin', 'Tey', 'Kenwynwejones@gmail.com', '0571038248', 'Abelenkpe', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A life changing experience', 'Minister Sophia'),
(51, 'Mr John', 'Quampah', 'jquampah@gmail.com', '0505698644', 'Onyinase', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I am expecting glorious things', 'Minister Sophia'),
(52, 'Miss Esther', 'Adom-Miah', 'estaadom@gmail.com', '0559897519', 'Oyarifa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The righteousness of God will be revealed to everyone', 'Minister Sophia'),
(53, 'Miss Elida', 'Akomeah Boateng', 'Elydaboateng@gmail.com', '0205626433', 'Sapeiman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To increase in the Word and increase in my relationship with the Holy Spirit', 'Minister Sophia'),
(54, 'Mr Fred', 'Darko', 'fredkdarko@gmail.com', '0203258234', 'DOME PILLAR 2', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'EYES BEING ENLIGHTENED ABOUT THE ABUNDANT LIFE GOD HAS GIVEN US', 'Minister Sophia'),
(55, 'Miss Priscilla', 'Adom-Miah', 'prillaardhom@gmail.com', '0209061374', 'Oyarifa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More intimacy with the Holy Spirit', 'Minister Sophia'),
(56, 'Mr Andrew', 'Nyame', 'andytsidek@gmail.com', '0500201029', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A GLORIOUS MINISTRATION OF THE WORD AND SPIRIT. NIGHTS OF TESTIMONIES AND MIRACLES.', 'Minister Sophia'),
(57, 'Miss Freda', 'Basoah', 'fredabasoah@gmail.com', '0200080032', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I believe that with this program there will be great great miracles that will be experienced, people with disabilities are going to experience Gods healing power,it is going to be soo glorious,I am expecting growth in the area of my spiritual life...l am believing that there is going to be a change after this program...it is going to be a life transforming meeting', 'Minister Sophia'),
(58, 'Miss Samantha', 'Amedume', 'syamedume97@gmail.com', '0200772033', 'Madina Firestone', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That I shall experience an embrace from the Holy Spirit and my fellowship with Him will increase to another level', 'Minister Sophia'),
(59, 'Miss Sandra', 'Quarcoo', 'mandzu450@gmail.com', '0559585341', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A program that will inspire and impact', 'Minister Sophia'),
(60, 'Mr Frederick', 'Akpabey', 'frederickdeladem@gmail.com', '0557078436', 'Dodowa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To receive from my Man of God, Pastor Roy King, as he teaches the Word of God and moves in the Spirit. I believe this will be the birthing of the Abundant life in me!', 'Minister Sophia'),
(61, 'Miss Jennifer', 'Gyasi', 'jennykyei5@gmail.com', '0205765082', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience an amazing worship and word ministration', 'Minister Sophia'),
(62, 'Mr Samuel', 'Quaye', 'samikon18@gmail.com', '0277450104', 'Darkuman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To have a divine encounter', 'Minister Sophia'),
(63, 'Miss Siba', 'Adibo', 'afuaadibo@gmail.com', '0560604079', 'Ashongman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Hope it impacts positively to others', 'Minister Sophia'),
(64, 'Miss Esther', 'Dodoo', 'estiedo3@gmail.com', '0508702502', 'Dansomam', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I know it is going to be life transforming. I am going to learn deep things of the word. Glorious miracles and testimonies', 'Minister Sophia'),
(65, 'Miss Anita', 'Hansen', 'ecocoatltd@gmail.com', '0554806255', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'For spiritual empowerment and healing', 'Minister Sophia'),
(66, 'Miss Louisa', 'Eyisah', 'louisaeyisah@gmail.com', '0545220336', 'Sakumono Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That every aspect of my life will experience abundance of life', 'Minister Sophia'),
(67, 'Mrs Dora', 'Baxter', 'chrisbopam@gmail.com', '0249012305', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'AM EXPECTING A LIFE TRANSFORMING SERVICE FROM MY MAN OF GOD PASTOR ROY KING', 'Minister Sophia'),
(68, 'Miss Cindy', 'Anane', 'cinane97@gmail.com', '0205841918', 'Korle Bu', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That the glory of God will be revealed and lives will be transformed.', 'Minister Sophia'),
(69, 'Mr Ephraim', 'Kanda', 'ephraimkanda99@gmail.com', '0266855395', 'Teshie Nungua', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To walker in a higher abundant life. To get to know God deeper', 'Minister Sophia'),
(70, 'Mr Kirk', 'Caesar', 'kirkcaes@gmail.com', '0541824022', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I’m going to have a life changing encounter with God', 'Minister Sophia'),
(71, 'Miss Nadia', 'Yeboah', 'nyeboah@y7mail.com', '0573447615', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Rekindling of the spirit for an abundant life', 'Minister Sophia'),
(72, 'Mr Michael', 'Kumah', 'michealkumah18@gmail.com', '0278937337', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Life changing testimonies and Breakthroughs', 'Minister Sophia'),
(73, 'Miss Vanessa', 'James', 'nessaefua@gmail.com', '0272903268', 'Korle Bu', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To learn more about abundant life', 'Minister Sophia'),
(74, 'Mr Benjamin', 'Baidoo', 'baidooben70@gmail.com', '0270113278', 'Ablekuma', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Higher heights and deeper depths in God', 'Minister Sophia'),
(75, 'Miss Sophia', 'Acheampong', 'sophie.achie@gmail.com', '0505503017', 'Sakumono ', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To have a glorious time in His presence', 'Minister Sophia'),
(76, 'Miss Dorcas', 'Quaye', 'dorcasquaye123@gmail.com', '0552927982', 'Ashaiman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The presence of God', 'Minister Sophia'),
(77, 'Miss Kelvia', 'Amfo-Boakye', 'kelviaamfo2@gmail.com', '0554199621', 'Ho', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Spirit filled conference', 'Minister Sophia'),
(78, 'Miss Nana Akua', 'Nsiah', 'ewuraakuansiah1@gmail.com', '0205833066', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To have a spirit filled service and to get more knowledge in Gods word', 'Minister Sophia'),
(79, 'Miss Lydia', 'Eshun', 'lydiaeshun28@yahoo.com', '0205822737', 'Labadi ', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'It’s all about the Man Jesus', 'Minister Sophia'),
(80, 'Mr Roy', 'King', 'roy.king.78.rk@gmail.com', '0278055076', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The embrace of the Holy Spirit upon each hearer', 'Minister Sophia'),
(81, 'Mr David', 'Addo', 'addo9699@gmail.com', '0273260540', 'Odorkor', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More revelation', 'Minister Sophia'),
(82, 'Mr Kingsley', 'Essel Arthur', 'kofiessel35@gmail.com', '0572868186', 'Ashley Botwe', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Life transforming', 'Minister Sophia'),
(83, 'Miss Akosua', 'Adusei', 'adjubiadu@gmail.com', '0542734546', 'Darkuman ', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Blessing', 'Minister Sophia'),
(84, 'Miss Marian Zoe', 'Adong-Yure', 'mzyure16@gmail.com', '0209989389', 'Taifa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Experiencing the beauty of  Gods glory', 'Minister Sophia'),
(85, 'Mr Benjamin', 'Addo-Dankwa', 'nadankwa@gmail.com', '0207460793', 'Accra ', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Educative and informative', 'Minister Sophia'),
(86, 'Mr Richard', 'Teye Mensah', 'rtmensah8844@gmail.com', '0541884475', 'Nyaniba Estate', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'NEW BEGINNING AND BLESSING', 'Minister Sophia'),
(87, 'Miss Precious', 'Engmann', 'survivalsefeli@gmail.com', '0268314987', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A life-changing fellowship with the Holy Spirit and believers of the gospel', 'Minister Sophia'),
(88, 'Mr Ebenezer', 'Asare', 'nezer159@gmail.com', '0243764136', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I look forward to meet teachings that will add something to my life and also meet Ps.Roy', 'Minister Sophia'),
(89, 'Miss Jemima', 'Mante', 'jemmymante@gmail.com', '0542936247', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'God fill my heart with so much spirit and a thirst for Him', 'Minister Sophia'),
(90, 'Miss Asantewaa', 'Frempong-Boahene', 'rita_boahene@icloud.com', '0209019552', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Great time of worship', 'Minister Sophia'),
(91, 'Mr David', 'Owiredu', 'evasupreme@gmail.com', '0202943357', 'Nsawam', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Gain wisdom in the doings of God', 'Minister Sophia'),
(92, 'Mr Hosni', 'Orlando', 'hosniorlando@gmail.com', '0555555803', 'Tema- spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Next level in knowledge', 'Minister Sophia'),
(93, 'Mr Michael', 'Commodore', 'mrmichaelcommodore@gmail.com', '0246482921', 'Kokomlemle', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Abundant Knowledge and wisdom', 'Minister Sophia'),
(94, 'Mr Gideon', 'Worlasi', 'gideonavornyo2@gmail.com', '0544764814', 'Tema Community 5', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Gods will should be done in my life', 'Minister Sophia'),
(95, 'Mr Leonard', 'Ahia', 'leomclloyd77@gmail.com', '0248163963', 'Parakuo Estate', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience the Holy Spirit more and have great encounter', 'Minister Sophia'),
(96, 'Miss Barbara', 'Datiakwa', 'barbaradatiakwa123@gmail.com', '0209454216', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I expect to be filled up with the words of God and te Holy Spirit', 'Minister Sophia'),
(97, 'Mr Kobby', 'Oppong-Williams', 'kobbywilliams64@gmail.com', '0542953882', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Inspiring', 'Minister Sophia'),
(98, 'Mr Paul', 'Aka Tofey', 'pablotoffey1@gmail.com', '0557188326', 'Ofankor Barrier', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More clarity in the Gospel', 'Minister Sophia'),
(99, 'Mr Benjamin', 'Tagoe', 'benjaminclinton1999@gmail.com', '0203462620', 'Korle-Bu Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Life changing moment', 'Minister Sophia'),
(100, 'Miss Winifred', 'Asiamah', 'winicash1@gmail.com', '0571423297', 'Gbawe', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be filled with The Wisdom Of God', 'Minister Sophia'),
(101, 'Mr Fritz', 'Baffoe', 'bbondzie@gmail.com', 'O269901135', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious time in the presence of God', 'Minister Sophia'),
(102, 'Mrs Grace', 'Annan', 'derekjoseph1989@gmail.com', '0506279880', 'Redtop Bortianor', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Desiring to increase as the man of God enlightens us in the word', 'Minister Sophia'),
(103, 'Mr Emmanuel', 'Kwame Tetteh', 'derekjoseph1989@gmail.com', '0277421219', 'Redtop Bortianor', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Desiring to know God more', 'Minister Sophia'),
(104, 'Miss Celestina', 'Essien', 'celestinaessien@gmail.com', '0551884109', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I am coming and I am not leaving the same.\r\nI am expecting my blessing', 'Minister Sophia'),
(105, 'Mr Charles', 'Asare', 'twumasiasarecharles@gmail.com', '0555135607', 'Kasoa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To build my spirit to a higher level', 'Minister Sophia'),
(106, 'Mr Kwesi Baah Korsah', 'Smith-Mensah', 'smithmensahkorsah@@yahoo.com', '0262130589', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Happiness, prosperity and success', 'Minister Sophia'),
(107, 'Miss Bridget', 'Azi', 'drbryd01@gmail.com', '0553763731', 'Weija-SCC', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Renewed in the Lord', 'Minister Sophia'),
(108, 'Mr Francis', 'Asiamah', 'francisasiamah2002@gmail.com', '0507236507', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I am expecting the presence and influence of the Holy Spirit to be so great', 'Minister Sophia'),
(109, 'Mr Benjamin', 'Dzeketey', 'benjamendarli@gmail.com', '0202948046', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious', 'Minister Sophia'),
(110, 'Miss Agnes', 'Buxton', 'agnesbuxton19@gmail.com', '0241116573', 'Abossey Okai', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', ' Desiring to have more intimate fellowship with the lord', 'Minister Sophia'),
(111, 'Mr Nana', 'Sam', 'chiefsammmuel@gmail.com', '0541049929', 'Osu', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Highest Impartation', 'Minister Sophia'),
(112, 'Miss Leticia', 'Ankrah', 'leticiaankrah26@gmail.com', '0548075609', 'Ablekumah', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'For the spirit to fill me more,empower me and use me greatly for his ministry', 'Minister Sophia'),
(113, 'Miss Nadia', 'Ternor', 'nadiaternor99@gmail.com', '0506066369', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Holy Ghost filled experience', 'Minister Sophia'),
(114, 'Mr Samuel Kwasi', 'Amoako', 'samuelkamoako69@gmail.com', '0542407639', 'Oyarifa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To encounter the Holy Ghost', 'Minister Sophia'),
(115, 'Mr Ahornam', 'Agbotse', 'ahoryaw1@outlook.com', '0575847961', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The Word revealed as the Person of Christ Jesus', 'Minister Sophia'),
(116, 'Mr Kwasi Adu Boadi', 'Acheampong', 'aduboadiacheampong@gmail.com', '0501226889', 'Klagon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The Word revealed as the Person of Christ Jesus', 'Minister Sophia'),
(117, 'Miss Joana', 'Orgle', 'jaaorgle@st.ug.edu.gh', '0203453769', 'Mallam', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'AL', 'Minister Sophia'),
(118, 'Mr Jude', 'Lartey', 'judelartey33@gmail.com', '0577412390', 'Accra-Tema Community 5', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Enlightenment', 'Minister Sophia'),
(119, 'Miss Ewurasi', 'Wobil', 'awurahsy78@gmail.com', '0557346577', 'Lashibi 17', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'An Experience and an encounter', 'Minister Sophia'),
(120, 'Mr Adrian', 'Ansong Omari', 'adiel1sparkles@gmail.com', '0508045007', 'Achimota', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Looking forward to it', 'Minister Sophia'),
(121, 'Miss Johnet', 'Nagba', 'johnetasibi@gmail.com', '0547221882', 'Burma Camp', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Expecting my soul to be filled up with peace and joy and experience the His Holiness', 'Minister Sophia'),
(122, 'Miss Ambra', 'Asare', 'asarebaffourambra3@gmail.com', '0553893613', 'Legon Campus Pent', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'God’s favour', 'Minister Sophia'),
(123, 'Miss Akua', 'Baayeh', 'abrafibaayeh04@gmail.com', '0501109087', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'New beginnings', 'Minister Sophia'),
(124, 'Mr Felix', 'Richter', 'felixnrich@gmail.com', '0241718224', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'For a great life transformation', 'Minister Sophia'),
(125, 'Mr Hayford', 'Essoun', 'hayfordessoun@gmail.com', '0247816835', 'Weija', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Like the name goes, I expect increase and abundance in every aspect of my life. From education, finances, family progress to my future marriage.', 'Minister Sophia'),
(126, 'Mr Jesse', 'Anin', 'jayanin8@gmail.com', '0209168967', 'Ofankor Barrier', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To receive a deeper understanding of the Word', 'Minister Sophia'),
(127, 'Mr Samuel', 'Appiah', 'samoptimist100@gmail.com', '0542940136', 'Kumasi', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To gain more insight about the higher life in Christ Jesus', 'Minister Sophia'),
(128, 'Mrs Constance', 'Acheampong', 'queensline2000@gmail.com', '0244282455', 'Sakumono', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience Gods presence like never before', 'Minister Sophia'),
(129, 'Miss Natasha', 'Hammond Quarcoo', 'natashahammond232@gmail.com', '0544367295', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Holy Spirit Touch', 'Minister Sophia'),
(130, 'Mr Alfred', 'Numo', 'ocanseyalfred@gmail.com', '0574979112', 'Korle Bu', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'It should be motivational enough.', 'Minister Sophia'),
(131, 'Mr Silas Oppong', 'Agyemang', 'silasagyemang12@gmail.com', '0507291376', 'Dansoman or Pokuase', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Power packed Conference', 'Minister Sophia'),
(132, 'Miss Nanaesi', 'Hinson', 'annaesihinson1@gmail.com', '0506678822', 'Adentan', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That I may be reform to ma good self', 'Minister Sophia'),
(133, 'Miss Nanayaa', 'Agyekumhene', 'nanayaa_a@yahoo.com', '0506632704', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Gaining insight about the life God has called us to', 'Minister Sophia'),
(134, 'Mr Prince Roland', 'Quansah', 'rolandprince866@gmail.com', '0547201230', 'Haatso', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Be blessed', 'Minister Sophia'),
(135, 'Miss Bernice', 'Gyamfi', 'nanamagyamfi@gmail.com', '0556661399', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The presence of The Holy Spirit', 'Minister Sophia'),
(136, 'Miss Samira', 'Seidu', 'saemhyrrahseidu@gmail.com', '0542512217', 'Burma Camp', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience the grace of God on a different dimension', 'Minister Sophia'),
(137, 'Miss Priscilla', 'Mac-Andoh', 'priscilla.mac-andoh16@wesleygirls.edu.gh', '0559585181', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious things, Greater power and a stronger connection with the spirit.', 'Minister Sophia'),
(138, 'Mr Rauf', 'Bitali', 'bitali48@gmail.com', '0209045624', 'Kasoa Old Barrier', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be empowered to live for Christ all the days of my life', 'Minister Sophia'),
(139, 'Mr Cyril', 'Ando Brew', 'cyrilandobrew2329@gmail.com', '0244472329', 'Kokrobite', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'God grant us all our heart desires', 'Minister Sophia'),
(140, 'Mr Immanuel', 'Adom-Miah', 'adomiah@gmail.com', '0554291526', 'Oyarifa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Increase grace', 'Minister Sophia'),
(141, 'Mr Benny', 'Samuel', 'bsam53776@gmail.com', '0547760068', 'Kasoa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To have an encounter with God and experience His righteousness', 'Minister Sophia'),
(142, 'Mr Gilbert', 'Crotti', 'gcrotti.ca@gmail.com', '0244105610', 'Taifa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Nothing but the good word of Grace', 'Minister Sophia'),
(143, 'Mr Deku', 'Blankson', 'dekublankson@gmail.com', '0549506918', 'Korle Bu Nursing Training School', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To learn something new', 'Minister Sophia'),
(144, 'Mr King Abbey Emmanuel', 'Alo', 'eabiodunalo@yahoo.com@gmail.com', '0542419682', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'I Expect To Have A Glorious Blessings From God', 'Minister Sophia'),
(145, 'Mr Obed', 'Adom-Miah', 'adommiahobed@gmail.com', '0507292771', 'University of Ghana', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Abundant grace', 'Minister Sophia'),
(146, 'Mr Gilbert', 'Agyiri-Tete Jnr', 'gilbertagyiri22@gmail.com', '0571302939', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be filled with the Spirit', 'Minister Sophia'),
(147, 'Mr Nana', 'Yaw', 'nnayawee@gmail.com', '0200312719', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Holy spirit take over', 'Minister Sophia'),
(148, 'Miss Hilda', 'Eshun', 'hoeshun@st.ug.edu.gh', '0555183127', 'University of Ghana', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'overflow of grace', 'Minister Sophia'),
(149, 'Mr Todd', 'Donkor', 'todddonkor20@gmail.com', '0572952324', 'Achimota', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Blessings and divine manifestation from God', 'Minister Sophia'),
(150, 'Mr Albert Fiifi', 'Adjei', 'albertadjei92@gmail.com', '0209130679', 'Ofankor', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Listen to the word of God', 'Minister Sophia'),
(151, 'Miss Adelaide', 'Odei', 'adelaideodei103@gmail.com', '0266185102', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be imparted with the WORD', 'Minister Sophia'),
(152, 'Mr Daniel', 'Nyame', 'dannyalves496@gmail.com', '0501183798', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A spirit-filled encounter with God', 'Minister Sophia'),
(153, 'Mr Francis', 'Anaisie', 'nakson2019@gmail.com', '0241697604', 'Mamprobi', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That i will leave with a deeper knowledge & understanding in Christ', 'Minister Sophia'),
(154, 'Miss Lordina', 'Koranteng', 'lkoranteng45@gmail.com', '0570330498', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Expecting a breakthrough in all area of my life', 'Minister Sophia'),
(155, 'Mr Fuhad', 'Mahamuda', 'fuhadmamuda@gmail.com', '0508969618', 'Osu', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Grace from the Lord', 'Minister Sophia'),
(156, 'Mr Alex', 'Frempong', 'jaysuccess4@gmail.com', '0508555037', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A refreshing atmosphere to encounter God', 'Minister Sophia'),
(157, 'Mr Kweku Acheampong', 'Boakye', 'kwekuboakye791@gmail.com', '0540849757', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Looking forward to get deeper understanding of the word of God', 'Minister Sophia'),
(158, 'Mr F.O', 'Frimpong', 'fabyjnr@gmail.com', '0205372842', 'Madina', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To have an intimate encounter with  Holy Spirit', 'Minister Sophia'),
(159, 'Mr Francis', 'Akorli', 'itzeccentric@gmail.com', '0561404331', 'Ashaiman ', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Answered Prayers For 2019', 'Minister Sophia'),
(160, 'Miss Eunice', 'Yeboah', 'yeboheunice171@gmail.com', '0505880516', 'Rawlings Circle', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Divine encounter', 'Minister Sophia'),
(161, 'Mr Samuel', 'Nti Nkrumah', 'Kojonti12@gmail.com', '0576147383', 'Kwapong Hall', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'That I’ll experience the presence of the lord and be blessed', 'Minister Sophia'),
(162, 'Mr David', 'Sedzi', 'sedzidavid@gmail.com', '0557393716', 'Nsawam', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be blessed by God', 'Minister Sophia'),
(163, 'Mr Daniel', 'Larsen', 'danieledwardlarsen@gmail.com', '0245414846', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Increment in Grace and Glory', 'Minister Sophia'),
(164, 'Mrs Naa Koshie', 'Larsen', 'naakoshielarsen0@gmail.com', '0244269686', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Blessings', 'Minister Sophia'),
(165, 'Mr Kelvin', 'Larbi', 'kelvinjoydav@gmail.com', '0232912682', 'Suncity', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The word of God', 'Minister Sophia'),
(166, 'Miss Serwah', 'Asare-Twerefour', 'masaat25@gmail.com', '0268299636', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'TO DISCOVER CERTAIN MYSTERIES ABOUT THE KINGDOM BUSINESS', 'Minister Sophia'),
(167, 'Miss Sharon', 'Danso', 'sharonedanso@gmail.com', '0205001239', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A change in my academics and leave the conference in another dimension', 'Minister Sophia'),
(168, 'Mr Bernard', 'Akwatia', 'akwatiabernard@gmail.com', '0265967075', 'Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Filled with the word', 'Minister Sophia'),
(169, 'Miss Marlynn', 'Isliker', 'marlynnisliker@gmail.com', '0261101947', 'University of Ghana', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Spiritual growth', 'Minister Sophia'),
(170, 'Miss Ruth', 'Dodoo', 'naabiruth@gmail.com', '0547015503', 'Mamprobi - Agege', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A renewal of mind and accuracy in living through the word', 'Minister Sophia'),
(171, 'Mr David Yaw', 'Asamoah', 'odavido28@gmail.com', '0209048640', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'a step closer to God', 'Minister Sophia'),
(172, 'Mr Benjamin', 'Rockson', 'rockda4th@gmail.com', '0578644297', 'Lartebiokorshie', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'The word, in its unadulterated form', 'Minister Sophia'),
(173, 'Miss Brenda', 'Kissi-Dankwa', 'brendakd@gmail.com', '0540721341', 'Taifa', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Revelation of Gods purpose for my life', 'Minister Sophia'),
(174, 'Mr Samuel', 'Marfo', 'oheneyaw.ss@gmail.com', '0544044011', 'Dansoman', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Spiritual Life transformation', 'Minister Sophia'),
(175, 'Mr Kelvin', 'Madukwe-Gyamerah', 'kelvin.gyamerah@yahoo.com', '0203869730', 'Mataheko', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Experience Gods glory', 'Minister Sophia'),
(176, 'Mr Joshua', 'Addo', 'jaddo009@st.ug.edu.gh', '0547189081', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Spirit Filled encounter', 'Minister Sophia'),
(177, 'Mr Godfred', 'Antwi', 'Godfredantwi103@gmail.com', '0203622777', 'Adabraka', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be transformed by the spirit of God', 'Minister Sophia'),
(178, 'Mr Andrews', 'Osei Bonsu', 'andrewbonsu16@gmail.com', '0264310035', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To experience the abundant life in Jesus Christ', 'Minister Sophia'),
(179, 'Mr Yaw', 'Agyapong Darko', 'ydarko103@gmail.com', '0545170172', 'Agbogba', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be imparted with the WORD.', 'Minister Sophia'),
(180, 'Mr Frederick', 'Kyereh', 'fkyereh001@st.ug.edu.gh', '0547605763', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To receive the word of God', 'Minister Sophia'),
(181, 'Mr Derick', 'Adom Amo', 'amoadomderick00@gmail.com', '0267426786', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More fellowship with the Holy Spirit', 'Minister Sophia'),
(182, 'Mr Joseph', 'Botchway', 'governor.stat98@gmail.com', '0262307740', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be imparted with power', 'Minister Sophia'),
(183, 'Mr Emmanuel', 'Kwaku Ntumi ', 'emmanuelk.ntumi@gmail.com', '0572460421', 'Ashaley Botwe', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More grace abounding', 'Minister Sophia'),
(184, 'Mr Simon', 'Abbam	Berchie', 'profabbam10@gmail.com', '0206651094', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Powerful ministration', 'Minister Sophia'),
(185, 'Miss Yvonne', 'Kyeremaa Peprah', 'ypkeremaa@gmail.com', '0546231535', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More revelation of the Holy Spirit', 'Minister Sophia'),
(186, 'Miss Priscilla', 'Atiemo', 'atiemopriscilla00@gmail.com', '0545507820', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To be filled with the spirit and the WORD', 'Minister Sophia'),
(187, 'Miss Sandra', 'Frimpong', 'iamjesmirac@gmail.com', '0506384450', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More glory', 'Minister Sophia'),
(188, 'Mr Allen', 'Kwesi Amanfu', 'akamanfu@st.ug.edu.gh', '0557080160', 'Legon Campus', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To know the Lord more', 'Minister Sophia'),
(189, 'Mr Joy', 'James Nii Aponsah', 'niiaponsahj@gmail.com', '0209514516', 'Ashiyie', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'More worship', 'Minister Sophia'),
(190, 'Mr Gabriel', 'Anum Moffat', 'gabemoffat05@gmail.com', '0543612533', 'Accra', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To fellowship with the saints', 'Minister Sophia'),
(191, 'Mr Stephen', 'Boadu', 'samuelnyarko@gmail.com', '0241781227', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Power', 'Minister Sophia'),
(192, 'Mr Samuel', 'Amemasor', 'amemasorsamuel@gmail.com', '0550509520', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glory and grace', 'Minister Sophia'),
(193, 'Mr Gideon', 'Dennis', 'kodey688@gmail.com', '0262340005', 'Haatso', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'filled with the spirit', 'Minister Sophia'),
(194, 'Mr Micheal', 'Adjetey', 'michealbanty2u@gmail.com', '0571415898', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Receive from the preacher', 'Minister Sophia'),
(195, 'Mr Ebenezer', 'Oteng', 'ebenezeroteng@gmail.com', '0268923291', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'wonderful fellowship', 'Minister Sophia'),
(196, 'Mr Ofosuhene', 'Apenteng', 'Ohsnebaapenteng11@gmail.com', '0544920076', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Intimacy', 'Minister Sophia'),
(197, 'Mr David', 'Albright', 'Davidn77@gmail.com', '0206021073', 'East Legon', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Understanding', 'Minister Sophia'),
(198, 'Mr Simon', 'Aklade', 'None', 'None', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To have an encounter with God and experience His righteousness. ', 'Minister Sophia'),
(199, 'Mr Isaac', 'Ackon', 'None', 'None', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'A renewal of mind', 'Minister Sophia'),
(200, 'Mr Prosper', 'Naazig', 'ProsNaazig@outlook.com', '0553605232', 'Adenta', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'Glorious things', 'Minister Sophia'),
(201, 'Miss Elsie', 'Antwi-Adjei', 'elsiebabyyaa5@gmail.com', '0558261003', 'Spintex', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'To have an encounter with God', 'Minister Sophia'),
(202, 'Miss Yaa', 'QuamOwusu-Koranteng', 'None', '0502106110', 'Tema', 'N/A', 'no', 'no', 'no', 0, 0, 0, 'cat1', 'the abundant life in Jesus Christ.', 'Minister Sophia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventregistration`
--
ALTER TABLE `eventregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eventregistration`
--
ALTER TABLE `eventregistration`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
