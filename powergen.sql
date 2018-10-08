-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 08, 2018 at 12:00 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `powergen`
--

-- --------------------------------------------------------

--
-- Table structure for table `worldbank`
--

CREATE TABLE `worldbank` (
  `p_id` int(10) NOT NULL,
  `w_id` varchar(100) NOT NULL,
  `w_value` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worldbank`
--

INSERT INTO `worldbank` (`p_id`, `w_id`, `w_value`) VALUES
(1, 'name', 'World Development Indicators'),
(2, 'acronym', 'WDI'),
(3, 'description', 'The primary World Bank collection of development indicators, compiled from officially-recognized international sources. It presents the most current and accurate global development data available, and includes national, regional and global estimates.'),
(4, 'url', 'http://databank.worldbank.org/data/views/variableSelection/selectvariables.aspx?source=world-development-indicators'),
(5, 'type', 'Time series'),
(6, 'languagesupported', 'English, Spanish, French, Arabic, Chinese'),
(7, 'periodicity', 'Annual'),
(8, 'economycoverage', 'WLD, EAP, ECA, LAC, MNA, SAS, SSA, HIC, LMY, IBRD, IDA'),
(9, 'granularity', 'National, Regional'),
(10, 'numberofeconomies', '217'),
(11, 'topics', 'Agriculture & Rural Development, Aid Effectiveness, Climate Change, Economy & Growth, Education, Energy & Mining, Environment, External Debt, Financial Sector, Gender, Health, Infrastructure, Labor & Social Protection, Poverty, Private Sector, Public Sector, Science & Technology, Social Development, Trade, Urban Development'),
(12, 'updatefrequency', 'Quarterly'),
(13, 'updateschedule', 'April, July, September, December'),
(14, 'lastrevisiondate', '14-Dec-2017'),
(15, 'contactdetails', 'data@worldbank.org'),
(16, 'accessoption', 'API, Bulk download, Query tool'),
(17, 'bulkdownload', 'WDI (Excel)-ZIP (59 MB)=http://databank.worldbank.org/data/download/WDI_excel.zip=excel;WDI (CSV)-ZIP (57 MB)=http://databank.worldbank.org/data/download/WDI_csv.zip=csv;Information about WDI revisions (Excel) (912 KB)=http://databank.worldbank.org/data/download/WDIrevisions.xls=excel'),
(18, 'cite', 'World Development Indicators, The World Bank'),
(19, 'detailpageurl', 'http://data.worldbank.org/data-catalog/world-development-indicators'),
(20, 'popularity', '3765'),
(21, 'coverage', '1960 - 2016'),
(22, 'api', '1'),
(23, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(24, 'apisourceid', '2'),
(25, 'name', 'Africa Development Indicators'),
(26, 'acronym', 'ADI'),
(27, 'description', 'Africa Development Indicators was a primary World Bank collection of development indicators on Africa, compiled from officially-recognized international sources. No further updates of this database are currently planned. See World Development Indicators for more recent data on Africa.'),
(28, 'url', 'http://databank.worldbank.org/data/views/variableselection/selectvariables.aspx?source=africa-development-indicators'),
(29, 'type', 'Time series'),
(30, 'languagesupported', 'English'),
(31, 'periodicity', 'Annual'),
(32, 'economycoverage', 'MNA, IBRD, SSA, IDA, LMY, HIC'),
(33, 'granularity', 'National, Regional'),
(34, 'numberofeconomies', '53'),
(35, 'topics', 'Trade, Urban Development'),
(36, 'updatefrequency', 'No further updates planned'),
(37, 'lastrevisiondate', '22-Feb-2013'),
(38, 'contactdetails', 'data@worldbank.org'),
(39, 'accessoption', 'API, Bulk download, Query tool'),
(40, 'bulkdownload', 'ADI (Excel) - ZIP (23.3 MB)=http://databank.worldbank.org/data/download/ADI_excel.zip=excel;ADI (CSV) - ZIP (12.6 MB)=http://databank.worldbank.org/data/download/ADI_csv.zip=csv'),
(41, 'cite', 'Africa Development Indicators, The World Bank'),
(42, 'detailpageurl', 'http://data.worldbank.org/data-catalog/africa-development-indicators'),
(43, 'popularity', '314'),
(44, 'coverage', '1960 - 2012'),
(45, 'api', '1'),
(46, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(47, 'apisourceid', '11'),
(48, 'name', 'Global Economic Monitor'),
(49, 'acronym', 'GEM'),
(50, 'description', 'Providing daily updates of global economic developments, with coverage of high income- as well as developing countries. Daily data updates are provided for exchange rates, equity markets, and emerging market bond indices. Monthly data coverage (updated daily and populated upon availability) is provided for consumer prices, high-tech market indicators, industrial production and merchandise trade.'),
(51, 'url', 'http://databank.worldbank.org/data/views/variableselection/selectvariables.aspx?source=global-economic-monitor-(gem)'),
(52, 'type', 'Time series'),
(53, 'languagesupported', 'English'),
(54, 'periodicity', 'Month'),
(55, 'economycoverage', 'WLD, EAP, ECA, LAC, MNA, SAS, SSA, HIC, LMY, IBRD, IDA'),
(56, 'granularity', 'National, Regional'),
(57, 'numberofeconomies', '196'),
(58, 'topics', 'Economy & Growth, Trade'),
(59, 'updatefrequency', 'Daily'),
(60, 'lastrevisiondate', 'Current'),
(61, 'contactdetails', 'dpgroup@worldbank.org'),
(62, 'accessoption', 'API, Bulk download, Query tool'),
(63, 'bulkdownload', 'GEM (Excel) - ZIP(9.97 MB)=http://databank.worldbank.org/data/download/GemDataEXTR.zip=excel'),
(64, 'cite', 'Global Economic Monitor, The World Bank'),
(65, 'detailpageurl', 'http://data.worldbank.org/data-catalog/global-economic-monitor'),
(66, 'popularity', '370'),
(67, 'coverage', '1990 - Current'),
(68, 'api', '1'),
(69, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(70, 'apisourceid', '15'),
(71, 'name', 'Research Datasets and Analytical Tools'),
(72, 'description', 'Various specialized datasets compiled for World Bank research activities, sorted by topic. Many datasets are in raw unprocessed formats, and are specific in scope and coverage'),
(73, 'url', 'http://econ.worldbank.org/WBSITE/EXTERNAL/EXTDEC/EXTRESEARCH/0,,contentMDK:20388241~menuPK:665266~pagePK:64165401~piPK:64165026~theSitePK:469382,00.html'),
(74, 'type', 'Cross sectional;Time series'),
(75, 'languagesupported', 'English'),
(76, 'economycoverage', 'WLD, EAP, ECA, LAC, MNA, SAS, SSA, HIC, LMY, IBRD, IDA'),
(77, 'granularity', 'National, City or metropolitan, Household, Other'),
(78, 'topics', 'Agriculture & Rural Development, Climate Change, Economy & Growth, Education, Energy & Mining, Environment, Health, Labor & Social Protection, Poverty, Public Sector, Trade'),
(79, 'updatefrequency', 'No fixed schedule'),
(80, 'updateschedule', 'Varies by dataset'),
(81, 'lastrevisiondate', '20-Nov-2013'),
(82, 'contactdetails', 'data@worldbank.org'),
(83, 'accessoption', 'Query tool'),
(84, 'cite', 'Development Research Group, The World Bank'),
(85, 'detailpageurl', 'http://data.worldbank.org/data-catalog/research-datasets-analytical-tools'),
(86, 'popularity', '283'),
(87, 'api', '0'),
(88, 'name', 'Millennium Development Goals'),
(89, 'acronym', 'MDGs'),
(90, 'description', 'Relevant indicators drawn from the World Development Indicators, reorganized according to the goals and targets of the Millennium Development Goals (MDGs).'),
(91, 'url', 'http://databank.worldbank.org/data/views/variableselection/selectvariables.aspx?source=millennium-development-goals'),
(92, 'type', 'Time series'),
(93, 'languagesupported', 'English'),
(94, 'periodicity', 'Annual'),
(95, 'economycoverage', 'WLD, EAP, ECA, LAC, MNA, SAS, SSA, HIC, LMY, IBRD, IDA'),
(96, 'granularity', 'National, Regional'),
(97, 'numberofeconomies', '217'),
(98, 'topics', 'Agriculture & Rural Development, Aid Effectiveness, Climate Change, Economy & Growth, Education, Energy & Mining, Environment, External Debt, Financial Sector, Gender, Health, Infrastructure, Labor & Social Protection, Poverty, Private Sector, Public Sector, Science & Technology, Social Development, Trade, Urban Development'),
(99, 'updatefrequency', 'Quarterly'),
(100, 'updateschedule', 'April, July, September, December'),
(101, 'lastrevisiondate', '19-Dec-2017'),
(102, 'contactdetails', 'data@worldbank.org'),
(103, 'accessoption', 'API, Bulk download, Query tool'),
(104, 'bulkdownload', 'MDG (CSV) - ZIP(1.67 MB)=http://databank.worldbank.org/data/download/MDG_csv.zip=csv;MDG (Excel) - ZIP(3.71 MB)=http://databank.worldbank.org/data/download/MDG_Excel.zip=excel'),
(105, 'cite', 'Millennium Development Goals, The World Bank'),
(106, 'detailpageurl', 'http://data.worldbank.org/data-catalog/millennium-development-indicators'),
(107, 'popularity', '132'),
(108, 'coverage', '1990 - 2015'),
(109, 'api', '1'),
(110, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(111, 'apisourceid', '19'),
(112, 'name', 'GovData360'),
(113, 'description', 'GovData360 is a compendium of the most important governance indicators, from 26 datasets with worldwide coverage and more than 10 years of info, designed to provide guidance on the design of reforms and the monitoring of impacts. We have an Unbalanced Panel Data by Dataset - Country for around 3260 governance focused indicators.'),
(114, 'url', 'http://govdata360.worldbank.org/topics'),
(115, 'type', 'Time series'),
(116, 'languagesupported', 'English'),
(117, 'periodicity', 'Annual'),
(118, 'economycoverage', 'WLD, EAP, ECA, LAC, MNA, SAS, SSA, HIC, LMY, IBRD, IDA'),
(119, 'granularity', 'National'),
(120, 'numberofeconomies', '220'),
(121, 'topics', 'Public Sector'),
(122, 'updatefrequency', 'Biannually'),
(123, 'updateschedule', 'Varies by data source'),
(124, 'lastrevisiondate', '28-Apr-2017'),
(125, 'contactdetails', 'govdata360@worldbank.org'),
(126, 'accessoption', 'Bulk download, Query tool'),
(127, 'bulkdownload', 'CSV (13Mb)=http://databank.worldbank.org/data/download/govdata360/AGIdata.zip=csv'),
(128, 'cite', 'GovData360 Portal, The World Bank Group. Also cite the individual data source.'),
(129, 'detailpageurl', 'http://data.worldbank.org/data-catalog/actionable-governance-indicators'),
(130, 'popularity', '9'),
(131, 'coverage', '1987-2016'),
(132, 'api', '0'),
(133, 'name', 'Data on Statistical Capacity'),
(134, 'description', 'The Data on Statistical Capacity website provides information on various aspects of national statistical systems of developing countries, including a country-level statistical capacity indicator.'),
(135, 'url', 'http://databank.worldbank.org/Data/Views/VariableSelection/SelectVariables.aspx?source=Statistical-capacity-indicators'),
(136, 'type', 'Time series'),
(137, 'languagesupported', 'English'),
(138, 'periodicity', 'Annual'),
(139, 'economycoverage', 'EAP, ECA, IBRD, IDA, LAC, MNA, SAS, SSA'),
(140, 'granularity', 'National'),
(141, 'numberofeconomies', '146'),
(142, 'topics', 'Public Sector'),
(143, 'updatefrequency', 'Annually'),
(144, 'updateschedule', 'Annually in September for Statistical Capacity indicator'),
(145, 'lastrevisiondate', '14-Jun-2017'),
(146, 'contactdetails', 'BBStatCap@worldbank.org'),
(147, 'accessoption', 'API, Bulk download, Query tool'),
(148, 'bulkdownload', 'BBSC (Excel) - ZIP (82 KB)=http://databank.worldbank.org/data/download/BBSC_Excel.zip=zip;BBSC (CSV) - ZIP (60 KB)=http://databank.worldbank.org/data/download/BBSC_CSV.zip=zip'),
(149, 'cite', 'Data on Statistical Capacity, The World Bank'),
(150, 'detailpageurl', 'http://data.worldbank.org/data-catalog/data-on-statistical-capacity'),
(151, 'popularity', '4'),
(152, 'coverage', '2004 - 2016'),
(153, 'api', '1'),
(154, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(155, 'apisourceid', '36'),
(156, 'name', 'Doing Business'),
(157, 'acronym', 'DB'),
(158, 'description', 'Doing Business provides objective measures of business regulations and their enforcement across 189 economies. Each economy is ranked according to 10 sets of indicators. These are combined into an overall \"ease of doing business\" ranking.'),
(159, 'url', 'http://databank.worldbank.org/data/reports.aspx?source=doing-business'),
(160, 'type', 'Time series'),
(161, 'languagesupported', 'English'),
(162, 'periodicity', 'Annual'),
(163, 'economycoverage', 'WLD, EAP, ECA, LAC, MNA, SAS, SSA, HIC, LMY, IBRD, IDA'),
(164, 'granularity', 'National'),
(165, 'numberofeconomies', '189'),
(166, 'datanotes', 'Coverage expanded to include Barbados and Malta'),
(167, 'topics', 'Financial Sector'),
(168, 'updatefrequency', 'Annually'),
(169, 'updateschedule', 'October'),
(170, 'lastrevisiondate', '03-Jan-2017'),
(171, 'contactdetails', 'doingbusiness@worldbank.org'),
(172, 'accessoption', 'API, Bulk download, Query tool'),
(173, 'bulkdownload', 'Doing Business (Excel)-ZIP (148 KB)=http://databank.worldbank.org/data/download/DB_EXCEL.zip=excel;Doing Business (CSV)-ZIP (108 KB)=http://databank.worldbank.org/data/download/DB_CSV.zip=csv'),
(174, 'cite', 'Doing Business, The World Bank (http://www.doingbusiness.org)'),
(175, 'detailpageurl', 'http://data.worldbank.org/data-catalog/doing-business-database'),
(176, 'popularity', '107'),
(177, 'coverage', '2004 - 2016'),
(178, 'api', '1'),
(179, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(180, 'apisourceid', '1'),
(181, 'name', 'Education Statistics'),
(182, 'acronym', 'EdStats'),
(183, 'url', 'http://databank.worldbank.org/data/views/variableselection/selectvariables.aspx?source=education-statistics-~-all-indicators'),
(184, 'type', 'Time series'),
(185, 'languagesupported', 'English'),
(186, 'periodicity', 'Annual'),
(187, 'economycoverage', 'WLD, EAP, ECA, LAC, MNA, SAS, SSA, HIC, LMY, IBRD, IDA'),
(188, 'granularity', 'National, Regional'),
(189, 'numberofeconomies', '214'),
(190, 'topics', 'Education, Gender'),
(191, 'updatefrequency', 'Quarterly'),
(192, 'updateschedule', 'Core education indicators from the UNESCO Institute for Statistics (UIS) are updated in February, June, August, and November. Other indicators are updated following new data releases.'),
(193, 'lastrevisiondate', '14-Jun-2017'),
(194, 'contactdetails', 'eservice@worldbank.org'),
(195, 'accessoption', 'API, Bulk download, Query tool'),
(196, 'bulkdownload', 'EdStats(Excel) - ZIP(72 MB)=http://databank.worldbank.org/data/download/EdStats_excel.zip=excel;EdStats (CSV) - ZIP(32 MB)=http://databank.worldbank.org/data/download/Edstats_csv.zip=csv'),
(197, 'cite', 'World Bank EdStats'),
(198, 'detailpageurl', 'http://data.worldbank.org/data-catalog/ed-stats'),
(199, 'popularity', '414'),
(200, 'coverage', '1970 - 2100'),
(201, 'api', '1'),
(202, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(203, 'apisourceid', '12'),
(204, 'name', 'Enterprise Surveys'),
(205, 'acronym', 'ES'),
(206, 'description', '<p>Enterprise Surveys provide firm-level data from over 125,000 establishments in 139 countries. Data are used to create over 100 indicators that benchmark the quality of the business environment across the globe. Each country is surveyed every 3 to 4 years.</p>\n<p>In addition to country-level aggregated data, firm-level data are available to registered users on the Enterprise Surveys site at http://www.enterprisesurveys.org/nada. </p>'),
(207, 'url', 'http://databank.worldbank.org/data/views/variableselection/selectvariables.aspx?source=enterprise-surveys'),
(208, 'type', 'Survey(Microdata)'),
(209, 'languagesupported', 'English'),
(210, 'periodicity', 'Annual'),
(211, 'economycoverage', 'EAP, ECA, LAC, MNA, SAS, SSA, LMY, IBRD, IDA'),
(212, 'granularity', 'National, Regional'),
(213, 'numberofeconomies', '135'),
(214, 'datanotes', 'Derived from microdata'),
(215, 'topics', 'Financial Sector, Private Sector'),
(216, 'updatefrequency', 'No fixed schedule'),
(217, 'updateschedule', 'Varies by regions and countries in the regions'),
(218, 'lastrevisiondate', '03-Jan-2017'),
(219, 'contactdetails', 'enterprisesurveys@worldbank.org'),
(220, 'accessoption', 'API, Bulk download, Query tool'),
(221, 'bulkdownload', 'Enterprise Surveys (Excel)-ZIP (315 KB)=http://databank.worldbank.org/data/download/ES_EXCEL.zip=excel;Enterprise Surveys (CSV)-ZIP (210 KB)=http://databank.worldbank.org/data/download/ES_CSV.zip=csv'),
(222, 'cite', 'Enterprise Surveys, The World Bank'),
(223, 'detailpageurl', 'http://data.worldbank.org/data-catalog/enterprise-surveys'),
(224, 'popularity', '28'),
(225, 'coverage', '2005 - 2014'),
(226, 'api', '1'),
(227, 'apiaccessurl', 'http://data.worldbank.org/developers'),
(228, 'apisourceid', '13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `worldbank`
--
ALTER TABLE `worldbank`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `worldbank`
--
ALTER TABLE `worldbank`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
