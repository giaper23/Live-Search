-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2020 at 07:12 PM
-- Server version: 10.0.38-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `giaper_live_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `article_title` varchar(60) NOT NULL,
  `article_text` text NOT NULL,
  `username` varchar(60) NOT NULL,
  `article_timestamp` text NOT NULL,
  `article_edit_timestamp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_title`, `article_text`, `username`, `article_timestamp`, `article_edit_timestamp`) VALUES
(7, 'Ena post (UPDATED)', 'ena post', 'user', '23/02/2020 19:16:52', '23/02/2020 19:17:46'),
(10, 'ADMIN (UPDATE)', 'ADMINPOST', 'admin', '23/02/2020 19:18:47', '23/02/2020 19:19:01'),
(11, 'Neo post UPDATE', 'Neo post', 'user', '23/02/2020 19:29:20', '23/02/2020 19:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `emailverification`
--

CREATE TABLE `emailverification` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `selector` varchar(16) NOT NULL,
  `token` varchar(32) NOT NULL,
  `expires` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailverification`
--

INSERT INTO `emailverification` (`id`, `email`, `selector`, `token`, `expires`) VALUES
(3, 'knowone23@hotmail.com', '73d77980413e8bc6', 'dacb18facb7f97bb64accfe167dfa269', '1581101843');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `cover` varchar(150) NOT NULL,
  `trailer` varchar(100) NOT NULL,
  `developer` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `year` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `title`, `cover`, `trailer`, `developer`, `info`, `year`) VALUES
(1, 'Persona 5', 'https://upload.wikimedia.org/wikipedia/en/b/b0/Persona_5_cover_art.jpg', 'https://www.youtube.com/embed/QnDzJ9KzuV4', 'Atlus', 'Persona 5 is a game about the internal and external conflicts of a group of troubled high school students - the protagonist and a collection of compatriots he meets in the game\'s story - who live dual lives as Phantom Thieves.', 2016),
(2, 'Uncharted 4: A Thief\'s End', 'https://upload.wikimedia.org/wikipedia/en/1/1a/Uncharted_4_box_artwork.jpg', 'https://www.youtube.com/embed/hh5HV4iic1Y', 'Naughty Dog', 'Several years after his last adventure, retired fortune hunter, Nathan Drake, is forced back into the world of thieves.  With the stakes much more personal, Drake embarks on a globe-trotting journey in pursuit of a historical conspiracy behind a fabled pirate treasure.  His greatest adventure will test his physical limits, his resolve, and ultimately what he\'s willing to sacrifice to save the ones he loves.', 2016),
(3, 'Marvel\'s Spiderman', 'https://upload.wikimedia.org/wikipedia/en/e/e1/Spider-Man_PS4_cover.jpg', 'https://www.youtube.com/embed/8pR0o2fGyHg', 'Insomniac Games', 'The worlds of Peter Parker and Spider-Man collide in an original action-packed story. In this new Spider-Man universe, iconic characters from Peter and Spider-Man\'s lives have been reimagined, placing familiar characters in unique roles.', 2018),
(4, 'Bloodborne', 'https://upload.wikimedia.org/wikipedia/en/6/68/Bloodborne_Cover_Wallpaper.jpg', 'https://www.youtube.com/embed/iTDvYvlyPaE', 'FromSoftware', 'Introducing Bloodborne, the latest Action RPG from renowned Japanese developer FromSoftware, makers of the hit Dark Souls series, coming exclusively to the PlayStation 4 system. Face your fears as you search for answers in the ancient city of Yharnam, now cursed with a strange endemic illness spreading through the streets like wildfire. Danger, death and madness lurk around every corner of this dark and horrific world, and you must discover its darkest secrets in order to survive.', 2015),
(5, 'Days Gone', 'https://upload.wikimedia.org/wikipedia/en/1/16/Days_Gone_cover_art.jpg', 'https://www.youtube.com/embed/FKtaOY9lMvM', 'SIE Bend Studio', 'At its core, Days Gone is about survivors and what makes them human: desperation, loss, madness, betrayal, friendship, brotherhood, regret, love - and hope. It\'s about how, even when confronted with such enormous tragedy, hope never dies.', 2019),
(6, 'Driveclub', 'https://upload.wikimedia.org/wikipedia/en/6/6f/Driveclub_box_art.jpg', 'https://www.youtube.com/embed/dF75_VkdeY0', 'Evolution Studios', 'Inspired by real-world roads from diverse regions across the globe, the racing tracks in DRIVECLUB present a variety of different challenges for every driver. Practice technical maneuvers on the open, fast-paced freeways of Canada, check your reflexes on the unpredictable UK roadways, or sharpen your high-speed steering skills on the mountain and dust-filled roads in India.', 2014),
(7, 'Death Stranding', 'https://upload.wikimedia.org/wikipedia/en/2/21/Death_Stranding.png', 'https://www.youtube.com/embed/UcaMw4aCz4c', 'Kojima Productions', 'After the collapse of civilization, Sam Bridges must journey across a ravaged landscape crawling with otherworldly threats to save mankind from the brink of extinction. From legendary game creator Hideo Kojima comes an all-new, genre-defying experience for the PlayStation 4 system.', 2019),
(8, 'God of War', 'https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg', 'https://www.youtube.com/embed/K0u_kAWLJOA', 'Santa Monica Studio', 'His vengeance against the Gods of Olympus years behind him, Kratos now lives as a man in the realm of Norse Gods and monsters. It is in this harsh, unforgiving world that he must fight to survive and teach his son to do the same.', 2018),
(9, 'Horizon Zero Dawn', 'https://upload.wikimedia.org/wikipedia/en/9/93/Horizon_Zero_Dawn.jpg', 'https://www.youtube.com/embed/wzx96gYA8ek', 'Guerrilla Games', 'In a lush, post-apocalyptic world where nature has reclaimed the ruins of a forgotten civilization, pockets of humanity live on in primitive hunter-gatherer tribes. Their dominion over the new wilderness has been usurped by the Machines - fearsome mechanical creatures of unknown origin. Horizon Zero Dawn is an exhilarating new action role playing game exclusively for the PlayStation 4 System, developed by the award winning Guerrilla Games, creators of PlayStation\'s venerated Killzone franchise.', 2017),
(10, 'Ratchet & Clank', 'https://upload.wikimedia.org/wikipedia/en/3/37/Ratchet_and_Clank_cover.jpg', 'https://www.youtube.com/embed/q5Mjz1RTfkU', 'Insomniac Games', 'Play the game, based on the movie, based on the game! Ratchet & Clank (PS4) is a new game based on elements from the original Ratchet & Clank (PS2). Developed alongside the major motion CG-animated picture coming to theatres in 2016, Ratchet & Clank (PS4) marks the PlayStation 4 debut of PlayStation\'s greatest heroes. Join Ratchet, Clank, Captain Qwark and new friends as they battle to save the Solana Galaxy from the evil Chairman Drek. With an hour of new cinematics (including footage from the film), Ratchet & Clank (PS4) takes a deeper look at the characters\' origin stories and modernizes the original gameplay. Explore the galaxy in a game that features new planets, new and updated gameplay segments, all-new bosses, all-new Clank gameplay, all-new flight sequences, and much more --- with completely new visuals built to demonstrate the power of the PS4!', 2017),
(11, 'Until Dawn', 'https://upload.wikimedia.org/wikipedia/en/d/d7/Until_Dawn_cover_art.jpg', 'https://www.youtube.com/embed/3NcF7EOnjow', 'Supermassive Games', 'Eight friends trapped together on a remote mountain retreat, and they aren\'t alone.  Gripped by dread, with tensions running high, they must fight through their fear if they all hope to make through the night in one piece.', 2015),
(12, 'Final Fantasy XV', 'https://upload.wikimedia.org/wikipedia/en/5/5a/FF_XV_cover_art.jpg', 'https://www.youtube.com/embed/otVk3EEjgd8', 'Square Enix', 'Crown Prince Noctis embarks on a quest to reclaim his homeland in this action-packed RPG. Join him and a colorful cast of characters on a road trip across the immersive and expansive world of Eos. Longtime fans and fresh faces alike, get ready to experience a brand new kind of fantasy.', 2016),
(13, 'Red Dead Redemption 2', 'https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg', 'https://www.youtube.com/embed/6VVhPqGMDAg', 'Rockstar Games', 'After a robbery goes badly wrong in the western town of Blackwater, Arthur Morgan and the Van der Linde gang are forced to flee. With federal agents and the best bounty hunters in the nation massing on their heels, the gang must rob, steal and fight their way across the rugged heartland of America in order to survive. As deepening internal divisions threaten to tear the gang apart, Arthur must make a choice between his own ideals and loyalty to the gang who raised him.', 2018),
(14, 'The Last Of Us Remastered', 'https://upload.wikimedia.org/wikipedia/en/5/58/The_Last_of_Us_Remastered.jpg', 'https://www.youtube.com/embed/AaOWRvmtEFQ', 'Naughty Dog', '20 years after a pandemic has radically changed known civilization, infected humans run wild and survivors are killing each other for food, weapons; whatever they can get their hands on. Joel, a violent survivor, is hired to smuggle a 14 year-old girl, Ellie, out of an oppressive military quarantine zone, but what starts as a small job soon transforms into a brutal journey across the U.S.', 2014),
(15, 'Uncharted: The Lost Legacy', 'https://upload.wikimedia.org/wikipedia/en/d/d0/Uncharted_The_Lost_Legacy_box_artwork.jpg', 'https://www.youtube.com/embed/i8qzBkHjk_0', 'Naughty Dog', 'In order to recover an ancient artifact and keep it out of the hands of a ruthless warmonger, Chloe must enlist the aid of renowned mercenary Nadine Ross and venture to India\'s Western Ghats to locate the Golden Tusk of Ganesh. In Chloe’s greatest journey yet, she must confront her past and decide what she\'s willing to sacrifice to forge her own legacy.', 2017),
(16, 'Uncharted: The Nathan Drake Collection', 'https://vignette.wikia.nocookie.net/uncharted/images/d/d7/The_Nathan_Drake_Collection_front_cover_%28US%29.png/revision/latest?cb=20190516035901', 'https://www.youtube.com/embed/-mH2SVyBMAQ', 'Naughty Dog', 'From the groundbreaking storytellers at Naughty Dog, comes the genre-defining epic that revolutionized adventure storytelling, rebuilt by Bluepoint Games with the power of the PS4 system. Experience one of the most revered game series of all time as you follow the perilous journey of Nathan Drake across the globe, from humble beginnings to extraordinary discoveries. Meet an unforgettable cast of characters as Drake puts life and friendship on the line in a race against ruthless enemies to uncover unimaginable treasure.', 2015),
(17, 'Resident Evil 7: Biohazard', 'https://upload.wikimedia.org/wikipedia/en/f/fd/Resident_Evil_7_cover_art.jpg', 'https://www.youtube.com/embed/9YetHMnhnhM', 'Capcom', 'Menace and desperation seethe through the rotting walls of an abandoned southern farmhouse. Resident Evil 7 biohazard marks a new beginning for survival horror with a shift to an immersive first-person perspective. Powered by the RE Engine, graphics reach new heights of incredible photorealism to further draw players into the disturbing game world. Survival horror has never been so intense.', 2017),
(18, 'Tekken 7 ', 'https://upload.wikimedia.org/wikipedia/en/1/17/Official_Tekken_7_Logo.jpg', 'https://www.youtube.com/embed/1V-_q3SKh5w', 'Bandai Namco Entertainment', 'Raise your fists and get ready for the ultimate battle on the next generation of home consoles. Powered by the Unreal Engine 4, the storied fighting franchise returns for another round in Tekken 7. With the faithful 3D battle system and gameplay intact, Tekken 7 takes the franchise to the next level with photo-realistic graphics and new and innovative features and fighting mechanics. Tekken 7 resurrects the attitude, competitiveness and showmanship rooted in its arcade DNA to provide the ultimate fighting game experience. ', 2015),
(19, 'Detroit: Become Human', 'https://upload.wikimedia.org/wikipedia/en/e/ee/Detroit_Become_Human.jpg', 'https://www.youtube.com/embed/8KCDR8cMer8', 'Quantic Dream', 'Enter the near-future metropolis of Detroit in 2038 - a city rejuvenated by the introduction of highly advanced androids that exist only to serve mankind. But that\'s all about to change.Step into the shoes of three distinct android characters as this brave new world teeters on the brink of chaos. Your decisions dramatically alter how the game\'s intense, branching narrative plays out. With thousands of choices and dozens of endings, how will you affect the future of Detroit?    ', 2018),
(20, 'Crash Bandicoot N. Sane Trilogy', 'https://upload.wikimedia.org/wikipedia/en/d/de/Crash_Bandicoot_N._Sane_Trilogy_cover_art.jpg', 'https://www.youtube.com/embed/F7G91RjVmvk', 'Vicarious Visions', 'Your favorite marsupial, Crash Bandicoot, is back! He\'s enhanced, entranced & ready-to-dance with the N. Sane Trilogy game collection. Now you can experience Crash Bandicoot like never-before in Fur-K. Spin, jump, wump and repeat as you take on the epic challenges and adventures through the three games that started it all, Crash Bandicoot, Crash Bandicoot 2: Cortex Strikes Back and Crash Bandicoot: Warped. Relive all your favorite Crash moments in their fully-remastered HD graphical glory and get ready to put some UMPH in your WUMP!', 2017),
(21, 'Spyro Reignited Trilogy', 'https://vignette.wikia.nocookie.net/spyro/images/7/70/ReignitedTrilogyCover.jpg/revision/latest?cb=20180609025548', 'https://www.youtube.com/embed/orzNU1R4wb8', 'Toys for Bob', 'The original roast master is back! Same sick burns, same smoldering attitude, now all scaled up in stunning HD. Spyro is bringing the heat like never before in the Spyro Reignited Trilogy game collection. Rekindle the fire with the original three games, Spyro the Dragon, Spyro 2: Ripto\'s Rage! and Spyro: Year of the Dragon. Explore the expansive realms, re-encounter the fiery personalities and relive the adventure in fully remastered glory. Because when there\'s a realm that needs saving, there\'s only one dragon to call.', 2018),
(22, 'Shadow of the Colossus', 'https://upload.wikimedia.org/wikipedia/en/a/a4/ShadowOfTheColossus2018.jpg', 'https://www.youtube.com/embed/RFgusTYInas', 'Bluepoint Games', 'Rebuilt from the ground up by Bluepoint Games and JAPAN Studio, SHADOW OF THE COLOSSUS on PlayStation 4 system introduces the awe of its unforgettable world and towering creatures to a new generation of gamers, while allowing long time fans to revisit the beloved masterpiece with unparalleled visual fidelity and improved performance.\r\n', 2018),
(23, 'Wipeout Omega Collection', 'https://upload.wikimedia.org/wikipedia/en/a/ae/WipeoutOmega_coverUS.jpg', 'https://www.youtube.com/embed/GCp2vSNdWBA', 'XDev', 'WipEout Omega Collection brings together all the content from WipEout HD, WipEout HD Fury and WipEout 2048, enhanced for PS4 and PS4 Pro.', 2017),
(24, 'Yakuza 0', 'https://upload.wikimedia.org/wikipedia/en/b/ba/Yakuza0.jpg', 'https://www.youtube.com/embed/TNF5olx8Pi4', 'Sega', 'Fight like hell through Tokyo and Osaka with protagonist Kazuma Kiryu and series regular Goro Majima. Play as Kazuma Kiryu and discover how he finds himself in a world of trouble when a simple debt collection goes wrong and his mark winds up murdered. Then, step into the silver-toed shoes of Goro Majima and explore his \"normal\" life as the proprietor of a cabaret club.', 2015),
(25, 'Yakuza Kiwami', 'https://upload.wikimedia.org/wikipedia/en/0/02/Yakuza_Kiwami_cover.jpg', 'https://www.youtube.com/embed/3fF5dahPGO4', 'Sega', 'In 2005, a legend was born on the PlayStation 2 - the legend of Kazuma Kiryu, the Dragon of Dojima, in his video game debut with Yakuza. Now, 11 years after that release, a new generation of players will be able to experience the incomparable action and drama of the Yakuza series with the rebuilt-from-scratch HD remake exclusive to PlayStation 4, Yakuza Kiwami. ', 2016),
(26, 'Yakuza Kiwami 2', 'https://upload.wikimedia.org/wikipedia/en/7/7f/Yakuza_Kiwami_2.png', 'https://www.youtube.com/embed/Rjhpn-uiOT0', 'Sega', 'One year after the 10 billion yen incident, Kazuma Kiryu begins to build a peaceful life with Haruka Sawamura. Tearing him away, an assassination threatens to erupt in an all-out war between the Tojo Clan and the Omi Alliance. Kiryu, the Dragon of Dojima, must travel to Sotenbori, Osaka in an attempt to broker peace between the rival clans, but Ryuji Goda, known as the Dragon of Kansai, will stop at nothing to get his war. In this world, there can only be one dragon.', 2017),
(27, 'Yakuza 6: The Song of Life', 'https://upload.wikimedia.org/wikipedia/en/9/95/Yakuza_6_cover_art.jpg', 'https://www.youtube.com/embed/vk3Q7HcUGbk', 'Sega', 'Three years after the events of Yakuza 5, Kazuma Kiryu, the Dragon of Dojima, returns in Yakuza 6: The Song of Life with the dream of living a quiet life. Upon his arrival, he discovers Haruka has been involved in an accident and has slipped into a coma, leaving her young son, Haruto, without care. To protect this child, Kiryu takes Haruto to the last place Haruka was spotted, Onomichi, Hiroshima. There, a new and merciless world of Yakuza awaits the unlikely pair. Who is Haruto\'s father and why are the Tojo Clan and Yomei Alliance both after him? With some unlikely friends, Kiryu will have to navigate through the criminal underworld he left behind and fight for the answers to keep the family he loves safe.', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `passwordreset`
--

CREATE TABLE `passwordreset` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL,
  `selector` varchar(16) NOT NULL,
  `token` varchar(32) NOT NULL,
  `expires` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'user', 'password', 'email@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
