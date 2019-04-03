SET NAMES UTF8;
DROP DATABASE IF EXISTS nintendo;
CREATE DATABASE nintendo CHARSET=UTF8;
USE nintendo;
#创建游戏表
CREATE TABLE game_list(
	g_id INT PRIMARY KEY AUTO_INCREMENT,
	g_name VARCHAR(64),
	g_date VARCHAR(10),
	g_price DECIMAL(5,2),
	g_sale TINYINT(1),
	g_dlc_id VARCHAR(64),
	g_demo TINYINT(1),
	g_online TINYINT(1),
	g_platform VARCHAR(11),
	g_availability CHAR(3),
	g_game_type VARCHAR(11),
	g_how_to_shop VARCHAR(7),
	g_virtual_console CHAR(3),
	g_character VARCHAR(64),
	g_esrb_rating CHAR(3),
	g_players CHAR(3),
	g_details VARCHAR(4096),
	g_publisher VARCHAR(64),
	g_developers VARCHAR(64),
	g_img VARCHAR(64),
	g_details_img VARCHAR(1024)
);
#                            序号     名称                             日期     价格  优惠 DLC 演示 在线 平台 可用  类型      购买    虚拟 关键词 ESRB 人数  详情       出版社    开发者   图片       详情图
INSERT INTO game_list VALUES(null,'塞尔达传说·野性的呼吸·入门包','2018-09-28',59.99,'0','1','1','1','100','201','300/302','400/401',null,null,'802','900','"Step into a world of adventure";;"<p>This Starter Pack is perfect for first-time heroes; it contains the game and an Explorer’s Guide with lore and learnings from the Legend of Zelda™: Breath of the Wild game.</p><p>Forget everything you know about The Legend of Zelda games. Step into a world of discovery, exploration, and adventure in The Legend of Zelda: Breath of the Wild, a boundary-breaking new game in the acclaimed series. Travel across vast fields, through forests, and to mountain peaks as you discover what has become of the kingdom of Hyrule In this stunning Open-Air Adventure. Now on Nintendo Switch, your journey is freer and more open than ever. Take your system anywhere, and adventure as Link any way you like. </p><p>Features: </p><p>Explore the wilds of Hyrule any way you like—anytime, anywhere! - Climb up towers and mountain peaks in search of new destinations, then set your own path to get there and plunge into the wilderness. Along the way, you''ll battle towering enemies, hunt wild beasts and gather ingredients for the food and elixirs you''ll make to sustain you on your journey. With Nintendo Switch, you can literally take your journey anywhere. </p><p>More than 100 Shrines of Trials to discover and explore - Shrines dot the landscape, waiting to be discovered in any order you want. Search for them in various ways, and solve a variety of puzzles inside. The tasks you must perform in each Shrine varies, and you''ll never expect the challenges you''ll face until you enter. Some will involve realistic physics, and some will require you to harness the power of nature, including electricity, wind, fire, and more. Work your way through the traps and devices inside, utilizing your runes and think outside the box to earn special items and other rewards that will help you on your adventure. </p><p>Be prepared and properly equipped – With an entire world waiting to be explored, you''ll need a variety of outfits and gear to reach every corner. You may need to bundle up with warmer clothes or change into something better suited to the desert heat. Some clothing even has special effects that, for example, can make you faster or stealthier. </p><p>Battling enemies requires strategy – The world is inhabited with enemies of all shapes and sizes. Each one has its own attack method and weaponry, so you must think quickly and develop the right strategies to defeat them. </p><p>amiibo compatibility – The Wolf Link amiibo from Twilight Princess HD, the Zelda 30th Anniversary series amiibo, and The Legend of Zelda: Breath of the Wild series amiibo are all compatible with this game. Tap the Wolf Link amiibo (sold separately) to make Wolf Link appear in the game. Wolf Link will attack enemies on his own and help you find items you’re searching for. Tap a Zelda 30th Anniversary series amiibo to receive helpful in-game items or even a treasure chest! </p>"','任天堂','任天堂','http://127.0.0.1:8686/img/allGames/switch/Zelda.jpg','"http://127.0.0.1:8686/img/allGamesBig/switch/Zelda.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/Zelda-00.png","http://127.0.0.1:8686/img/allGamesDetails/switch/Zelda-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/Zelda-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/Zelda-03.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/Zelda-04.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/Zelda-05.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/Zelda-06.jpg"');
INSERT INTO game_list VALUES(null,'路易斯公寓','2018-10-12',39.99,'1','0','1','1','101','201','300/302','400/401',null,'马里奥','802','900','"Spooky-good ghost-hunting fun starring Luigi";;"<p>G-g-ghosts! Time to suck those suckers up because Luigi is back in the first portable version of this spooky classic. After winning a mansion in a contest he didn’t enter, he must beat its many bosses and puzzles. Follow a map on the touchscreen, shine a flashlight, blow fire, shoot water, stun ghosts, and trap them…before Mario is trapped forever! All this ghost-catching tomfoolery pays off! As you suck ‘em up with your Poltergust 3000, you could also rake in millions in hidden, in-game riches for our hard-luck hero. Make sure to search every area using the Game Boy Horror’s map on your touchscreen and activate its Boo Radar to track down every Boo in the mansion or spot ghosts’ weak points. After beating and capturing boss ghosts, you can select their portraits from the gallery to best your own score in tense rematches—a new feature in the Nintendo 3DS version!</p>"','任天堂','任天堂','http://127.0.0.1:8686/img/allGames/3ds/luigi.png','"http://127.0.0.1:8686/img/allGamesBig/3ds/luigi.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/luigi-00.png","http://127.0.0.1:8686/img/allGamesDetails/3ds/luigi-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/luigi-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/luigi-03.jpg"');
INSERT INTO game_list VALUES(null,'侦探皮卡丘','2018-03-23',39.99,'1','0','1','1','101','201','300/302','400/401',null,'精灵宝可梦','802','900','"Crack the case in this new detective adventure game by interacting with a unique, fully-voiced Pikachu!";;"<p>As Tim Goodman, you’ll partner with a self-proclaimed "great detective" Pikachu to solve strange occurrences all over Ryme City. Together you must investigate, take notes, and meet up with other Pokémon to unravel the city''s greatest mysteries!</p><p>Tim is searching for his missing father in Ryme City, but instead encounters a witty, tough-talking Pikachu! Along the way, experience over 150 fun-filled animated cutscenes starring this unique Pikachu, providing helpful hints or talking up a storm. You can also tap the extra-large Detective Pikachu amiibo™ figure to access all cutscenes up until the current chapter played. As you investigate crime scenes, gather testimonies, uncover information, and interact with Pokémon to solve cases. You''ll have to put your detective skills to the test to foil the mastermind behind the disturbances in Ryme City. All in a day''s work for detective Pikachu! </p><p>Team up with the self pro-claimed "great detective" Pikachu! </p><p>Experience over 150 animated cutscenes of a fun, and witty talking Pikachu</p><p>Investigate the scene, take notes and crack the case! </p><p>Interact with various Pokémon throughout Ryme City</p>"','任天堂','任天堂','http://127.0.0.1:8686/img/allGames/3ds/Pikachu.png','"http://127.0.0.1:8686/img/allGamesBig/3ds/Pikachu.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pikachu-00.png","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pikachu-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pikachu-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pikachu-03.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pikachu-04.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pikachu-05.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pikachu-06.jpg"');
INSERT INTO game_list VALUES(null,'精灵宝可梦·皮卡丘','2018-11-16',59.99,'0','0','1','1','100','201','300/301/302','400/401',null,'精灵宝可梦','802','901','"Take a Pokémon™ journey to the Kanto region with your energetic partner, Pikachu!";;"<p>Feel like a real Pokémon Trainer as you travel through the Kanto region in the Pokémon™: Let’s Go, Pikachu! or Pokémon™: Let’s Go, Eevee! games with Poké Ball™ Plus. The power of a Pokémon Trainer lies in the palm of your hand.</p><p>Download the game demo for free! Hello new Pokémon Trainers, a demo of Pokémon: Let''s Go, Pikachu! and Pokémon: Let''s Go, Eevee! games is available just for you. Explore Viridian Forest, where you can catch Pokémon in the wild and battle trainers with either a partner Pikachu or a partner Eevee at your side (randomly selected). Start your journey now. </p><p>* Final game content may vary from this demo. </p><p>* Demo game data cannot be transferred to the purchased game. </p><p>Become the best Pokémon Trainer as you battle other Trainers, Gym Leaders, and the sinister Team Rocket. Catch Pokémon in the wild using a gentle throwing motion with either a Joy-Con™ controller or a Poké Ball™ Plus accessory, which will light up, vibrate, and make sounds to bring your adventure to life. You can also use button controls in Handheld Mode. Share your adventure with family or friends using a second Joy-Con or Poké Ball Plus (sold separately). You can even connect to the Pokémon™ GO app* using a compatible smartphone to bring over Pokémon originally discovered in the Kanto region! </p><p>Explore the vibrant region of Kanto—home to beloved characters like Brock, Misty, and the nefarious trio Jessie, James, and Meowth! Throughout the story, your bond with your partner Pokémon grows stronger as you care for it and travel together. See the world in style by customizing Pikachu and your Trainer with a selection of outfits. True-to-size wild Pokémon roam around in the game—catch them like a real Pokémon Trainer by using timing and a well-placed Poké Ball™. Battle and trade with other players who own the game via local wireless or online**. Go on a stroll with your favorite Pokémon in your Poké Ball Plus to level them up, and to receive in-game rewards after returning them to the game. Connect to Pokémon GO* to transfer caught Kanto-region Pokémon, including Alolan and Shiny forms, as well as the newly discovered Pokémon, Meltan, from that game to this one! </p><p>Become the best Pokémon Trainer on an adventure with Pikachu! </p><p>Encounter Pokémon™ in the Kanto region and beloved characters like Brock and Misty as you foil the plans of Jesse, James, Meowth, and the rest of Team Rocket</p><p>Play the entire game in Handheld Mode, with a single Joy-Con™ controller, or the Poké Ball™ Plus accessory which will light up, vibrate, and make sounds to bring your adventure to life</p><p>Take your Pokémon for a stroll in Poké Ball™ Plus to level them up, and to receive in-game rewards after returning them to the game. </p><p>Gently shake Poké Ball™ Plus to hear a Pokémon that has been put inside from Pokémon™: Let''s Go, Pikachu! or Pokémon™: Let''s Go, Eevee! </p><p>Every Poké Ball™ Plus contains your very own Mythical Pokémon Mew!** </p><p>Share a Pokémon adventure together anytime, anywhere on one system by using another Joy-Con™ controller or Poké Ball™ Plus accessory (sold separately) to catch and battle alongside another player! </p><p>Connect with the Pokémon™ GO* app on compatible smartphones to transfer caught Kanto-region Pokémon, including Alolan and Shiny forms, as well as the newly discovered Pokémon, Meltan! </p><p>Connect Poké Ball™ Plus to the Pokémon™ GO*** app to catch Pokémon in the real world and gather items from Poké Stops without viewing your smartphone screen—while carrying a Pokémon from the Pokémon™: Let''s Go, Pikachu! or Pokémon™: Let''s Go, Eevee! games</p><p>Battle and trade with other players who own the game via local wireless or online**</p><p>Other online features include Mystery Gifts**</p>"','任天堂','GAME FREAK inc','http://127.0.0.1:8686/img/allGames/switch/kdyg-pkq.png','"http://127.0.0.1:8686/img/allGamesBig/switch/kdyg-pkq-yb.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-pkq-00.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-pkq-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-pkq-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-pkq-03.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-pkq-04.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-pkq-05.jpg",,"http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-pkq-06.jpg"');
INSERT INTO game_list VALUES(null,'精灵宝可梦·月亮','2017-11-17',39.99,'1','0','1','1','101','201','300/302','400/401',null,'精灵宝可梦','802','900','"A new light shines on the Alola region!";;"<p>Take on the role of a Pokémon™ Trainer and unravel the mystery of the Legendary Pokémon Necrozma''s new forms: Dusk Mane Necrozma in the Pokémon Ultra Sun game and Dawn Wings Necrozma in the Pokémon Ultra Moon game. You can encounter and battle 400+ Pokémon, including new forms. A brand-new showdown awaits!</p><p>Discover the Legendary Pokémon Solgaleo and Lunala''s new Z-Moves and their mysterious connection to the Legendary Pokémon Necrozma. Then venture into Ultra Wormholes to explore the Ultra Beasts'' home world, encounter every Legendary Pokémon, and uncover Ultra Megalopolis, a dark world where Necrozma has stolen the light. On the bright side, the Alola region has new activities, and fresh landscapes to explore with some assistance from your powered-up Rotom Dex. You''ll need all the help you can get if you''re going to stop Giovanni, Ghetsis, and the rest of Team Rainbow Rocket from taking over the Alola region! </p><p>As a Pokémon Trainer, uncover new mysteries in the Alola region and beyond! </p><p>Encounter over 400 Pokémon, including new forms, on a quest to become Pokémon Champion</p><p>New Z-Moves for Necrozma, Solgaleo, Lunala, Mimikyu, Lycanroc, and Kommo-o</p><p>Ultra Warp Ride Solgaleo or Lunala into Ultra Wormholes and surf with Mantine</p><p>Take photos and share them with friends in Alola Photo Club</p><p>Face off with Team Rainbow Rocket to determine the fate of the Alola region! </p>"','任天堂','任天堂','http://127.0.0.1:8686/img/allGames/3ds/Pokémon-moon.png','"http://127.0.0.1:8686/img/allGamesBig/3ds/Pokémon-moon-sun.jpg","","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pokémon-moon-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pokémon-moon-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pokémon-moon-03.jpg"');
INSERT INTO game_list VALUES(null,'精灵宝可梦·伊布','2018-11-16',59.99,'1','0','1','1','100','201','300/301/302','400/401',null,'精灵宝可梦','802','901','"Take a Pokémon™ journey to the Kanto region with your steadfast partner, Eevee!";;"<p>Feel like a real Pokémon Trainer as you travel through the Kanto region in the Pokémon™: Let’s Go, Pikachu! or Pokémon™: Let’s Go, Eevee! games with Poké Ball™ Plus. The power of a Pokémon Trainer lies in the palm of your hand.</p><p>Download the game demo for free! Hello new Pokémon Trainers, a demo of Pokémon: Let''s Go, Pikachu! and Pokémon: Let''s Go, Eevee! games is available just for you. Explore Viridian Forest, where you can catch Pokémon in the wild and battle trainers with either a partner Pikachu or a partner Eevee at your side (randomly selected). Start your journey now. </p><p>* Final game content may vary from this demo. </p><p>* Demo game data cannot be transferred to the purchased game. </p><p>Become the best Pokémon Trainer as you battle other Trainers, Gym Leaders, and the sinister Team Rocket. Catch Pokémon in the wild using a gentle throwing motion with either a Joy-Con™ controller or a Poké Ball™ Plus accessory, which will light up, vibrate, and make sounds to bring your adventure to life. You can also use button controls in Handheld Mode. Share your adventure with family or friends using a second Joy-Con or Poké Ball Plus (sold separately). You can even connect to the Pokémon™ GO app* using a compatible smartphone to bring over Pokémon originally discovered in the Kanto region! </p><p>Explore the vibrant region of Kanto—home to beloved characters like Brock, Misty, and the nefarious trio Jessie, James, and Meowth! Throughout the story, your bond with your partner Pokémon grows stronger as you care for it and travel together. See the world in style by customizing Eevee and your Trainer with a selection of outfits. True-to-size wild Pokémon roam around in the game—catch them like a real Pokémon Trainer by using timing and a well-placed Poké Ball™. Battle and trade with other players who own the game via local wireless or online**. Go on a stroll with your favorite Pokémon in your Poké Ball Plus to level them up, and to receive in-game rewards after returning them to the game. Connect to Pokémon GO* to transfer caught Kanto-region Pokémon, including Alolan and Shiny forms, as well as the newly discovered Pokémon, Meltan, from that game to this one! </p><p>Become the best Pokémon Trainer on an adventure with Eevee! </p><p>Encounter Pokémon™ in the Kanto region and beloved characters like Brock and Misty as you foil the plans of Jesse, James, Meowth, and the rest of Team Rocket</p><p>Play the entire game in Handheld Mode, with a single Joy-Con™ controller, or the Poké Ball™ Plus accessory which will light up, vibrate, and make sounds to bring your adventure to life</p><p>Take your Pokémon for a stroll in Poké Ball™ Plus to level them up, and to receive in-game rewards after returning them to the game. </p><p>Gently shake Poké Ball™ Plus to hear a Pokémon that has been put inside from Pokémon™: Let''s Go, Pikachu! or Pokémon™: Let''s Go, Eevee! </p><p>Every Poké Ball™ Plus contains your very own Mythical Pokémon Mew!**<p>Share a Pokémon adventure together anytime, anywhere on one system by using another Joy-Con™ controller or Poké Ball™ Plus accessory (sold separately) to catch and battle alongside another player! </p><p>Connect with the Pokémon™ GO* app on compatible smartphones to transfer caught Kanto-region Pokémon, including Alolan and Shiny forms, as well as the newly discovered Pokémon, Meltan! </p><p>Connect Poké Ball™ Plus to the Pokémon™ GO*** app to catch Pokémon in the real world and gather items from Poké Stops without viewing your smartphone screen—while carrying a Pokémon from the Pokémon™: Let''s Go, Pikachu! or Pokémon™: Let''s Go, Eevee! games</p><p>Battle and trade with other players who own the game via local wireless or online**</p><p>Other online features include Mystery Gifts**</p>"','任天堂','GAME FREAK inc','http://127.0.0.1:8686/img/allGames/switch/kdyg-yibu.png','"http://127.0.0.1:8686/img/allGamesBig/switch/kdyg-pkq-yb.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-yb-00.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-yb-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-yb-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-yb-03.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-yb-04.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-yb-05.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/kdyg-yb-06.jpg"');
INSERT INTO game_list VALUES(null,'黑暗之魂·重置版：入门包','2018-10-19',39.99,'0','0','1','1','100','201','300/302','400/401',null,null,'802','903','"Then, there was fire.";;"<p>Re-experience the critically acclaimed, genre-defining game that started it all. Beautifully remastered, return to Lordran in stunning detail. DARK SOULS: REMASTERED includes the main game plus the Artorias of the Abyss DLC.</p><p>Deep and Dark Universe</p><p>Delve into an epic dark fantasy universe stricken by decline and the Curse. Explore its intricate world design - full of hidden passages, dungeons and secrets - and uncover its deeply rooted lore. </p><p>Each End is a New Beginning</p><p>Each playthrough surprises you with new challenges and unexpected facets of the game. Don’t bet on completing the game only once. </p><p>Gameplay Richness and Possibilities</p><p>Hundreds of unique combinations of weaponry, armor, magic and crafting options to create your own playstyle and gaming experience. </p><p>Sense of Learning, Mastering and Accomplishment</p><p>From your first steps to mastery, build your character while refining you playing skills. Learn to strategize freely and experience the rewarding taste of overcoming daunting foes. </p><p>The Way of the Multiplayer (up to 6 players with dedicated servers) </p><p>Whatever your motivations are to play online – collaboration or confrontation, support or betrayal – you’ll find your true home among the nine covenants. Which allegiance will you choose? </p>"','任天堂','任天堂','http://127.0.0.1:8686/img/allGames/switch/dark-souls.png','"http://127.0.0.1:8686/img/allGamesBig/switch/dark.jpg","","http://127.0.0.1:8686/img/allGamesDetails/switch/dark-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/dark-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/dark-03.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/dark-04.jpg","http://127.0.0.1:8686/img/allGamesDetails/switch/dark-05.jpg"');
INSERT INTO game_list VALUES(null,'精灵宝可梦·太阳','2017-11-17',39.99,'1','0','1','1','101','201','300/302','400/401',null,'精灵宝可梦','802','900','"A new light shines on the Alola region!";;"<p>Take on the role of a Pokémon™ Trainer and unravel the mystery of the Legendary Pokémon Necrozma''s new forms: Dusk Mane Necrozma in the Pokémon Ultra Sun game and Dawn Wings Necrozma in the Pokémon Ultra Moon game. You can encounter and battle 400+ Pokémon, including new forms. A brand-new showdown awaits!</p><p>Discover the Legendary Pokémon Solgaleo and Lunala''s new Z-Moves and their mysterious connection to the Legendary Pokémon Necrozma. Then venture into Ultra Wormholes to explore the Ultra Beasts'' home world, encounter every Legendary Pokémon, and uncover Ultra Megalopolis, a dark world where Necrozma has stolen the light. On the bright side, the Alola region has new activities, and fresh landscapes to explore with some assistance from your powered-up Rotom Dex. You''ll need all the help you can get if you''re going to stop Giovanni, Ghetsis, and the rest of Team Rainbow Rocket from taking over the Alola region! </p><p>As a Pokémon Trainer, uncover new mysteries in the Alola region and beyond! </p><p>Encounter over 400 Pokémon, including new forms, on a quest to become Pokémon Champion</p><p>New Z-Moves for Necrozma, Solgaleo, Lunala, Mimikyu, Lycanroc, and Kommo-o</p><p>Ultra Warp Ride Solgaleo or Lunala into Ultra Wormholes and surf with Mantine</p><p>Take photos and share them with friends in Alola Photo Club</p><p>Face off with Team Rainbow Rocket to determine the fate of the Alola region! </p>"','任天堂','任天堂','http://127.0.0.1:8686/img/allGames/3ds/Pokémon-sun.png','"http://127.0.0.1:8686/img/allGamesBig/3ds/Pokémon-moon-sun.jpg","","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pokémon-sun-01.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pokémon-sun-02.jpg","http://127.0.0.1:8686/img/allGamesDetails/3ds/Pokémon-sun-03.jpg"');

#创建DLC表
CREATE TABLE dlc_list(
	d_id INT PRIMARY KEY AUTO_INCREMENT,
    d_name VARCHAR(64),
    d_price TINYINT,
    d_date VARCHAR(10),
    d_details VARCHAR(2048),
    game_id INT,
    FOREIGN KEY(game_id) REFERENCES game_list(g_id)
);
#创建用户表
CREATE TABLE user_list(
	u_id INT PRIMARY KEY AUTO_INCREMENT,
	u_name VARCHAR(16),
	u_pwd VARCHAR(32),
	u_sex TINYINT(1),
	u_birthday VARCHAR(10),
	u_tel VARCHAR(15),
	u_email VARCHAR(32),
	u_nationality CHAR(3),
	u_level TINYINT(1),
	u_integral VARCHAR(8),
	u_address VARCHAR(64)
);
INSERT INTO user_list(u_id,u_name,u_pwd) VALUES(null,'lingmx',md5('lingmx'));
#创建管理员表
CREATE TABLE admin_list(
	a_id INT PRIMARY KEY AUTO_INCREMENT,
	a_name VARCHAR(16),
	a_pwd VARCHAR(32)
);


##########################################
##############移动端独有数据##############
##########################################

#创建商品分类导航表
CREATE TABLE index_news(
	i_id INT PRIMARY KEY AUTO_INCREMENT,
	i_name VARCHAR(128),
	img_url VARCHAR(128)
);
INSERT INTO index_news VALUES(null,'任天堂Switch游戏','http://127.0.0.1:8686/img/index/switch.png');
INSERT INTO index_news VALUES(null,'任天堂3ds游戏','http://127.0.0.1:8686/img/index/3ds.png');
INSERT INTO index_news VALUES(null,'Will u 游戏','http://127.0.0.1:8686/img/index/willu.png');
INSERT INTO index_news VALUES(null,'最新游戏','http://127.0.0.1:8686/img/index/newGame.png');
INSERT INTO index_news VALUES(null,'畅销游戏','http://127.0.0.1:8686/img/index/selling.png');
INSERT INTO index_news VALUES(null,'明星游戏','http://127.0.0.1:8686/img/index/star.png');
INSERT INTO index_news VALUES(null,'超级马里奥','http://127.0.0.1:8686/img/index/mario.png');
INSERT INTO index_news VALUES(null,'独立游戏','http://127.0.0.1:8686/img/index/duli.png');
INSERT INTO index_news VALUES(null,'虚拟主机游戏','http://127.0.0.1:8686/img/index/zhuji.png');
INSERT INTO index_news VALUES(null,'精灵宝可梦','http://127.0.0.1:8686/img/index/pokemon.png');
INSERT INTO index_news VALUES(null,'高性价比','http://127.0.0.1:8686/img/index/gao.png');
INSERT INTO index_news VALUES(null,'多人游戏','http://127.0.0.1:8686/img/index/more.png');
INSERT INTO index_news VALUES(null,'儿童游戏','http://127.0.0.1:8686/img/index/children.png');
INSERT INTO index_news VALUES(null,'游戏演示','http://127.0.0.1:8686/img/index/yanshi.png');
INSERT INTO index_news VALUES(null,'所有游戏','http://127.0.0.1:8686/img/index/allgame.png');
INSERT INTO index_news VALUES(null,'购买数字版','http://127.0.0.1:8686/img/index/shuzi.png');
INSERT INTO index_news VALUES(null,'即将推出','http://127.0.0.1:8686/img/index/jijiang.png');

#创建首页轮播图信息表
CREATE TABLE index_shuffling(
	s_id INT PRIMARY KEY AUTO_INCREMENT,
	s_name VARCHAR(128),
	img_url VARCHAR(128)
);
INSERT INTO index_shuffling VALUES(null,'超级马里奥兄弟','http://127.0.0.1:8686/img/index/1.jpg');
INSERT INTO index_shuffling VALUES(null,'任天堂明星大乱斗','http://127.0.0.1:8686/img/index/2.jpg');
INSERT INTO index_shuffling VALUES(null,'2018 精选','http://127.0.0.1:8686/img/index/3.jpg');
INSERT INTO index_shuffling VALUES(null,'健身拳击','http://127.0.0.1:8686/img/index/4.jpg');
#创建首页导航栏信息表
CREATE TABLE index_navbar(
	nav_id INT PRIMARY KEY AUTO_INCREMENT,
	nav_name VARCHAR(16),
	nav_icon VARCHAR(64)
);
INSERT INTO index_navbar VALUES(null,'在线','mui-icon iconfont icon-zaixian');
INSERT INTO index_navbar VALUES(null,'演示','mui-icon iconfont icon-touyingyanshi');
INSERT INTO index_navbar VALUES(null,'DLC','mui-icon iconfont icon-extend');
INSERT INTO index_navbar VALUES(null,'优惠','mui-icon iconfont icon-youhuiquan');

#创建首页热门推荐信息表
CREATE TABLE index_recommended(
	r_id INT PRIMARY KEY AUTO_INCREMENT,
	r_name VARCHAR(16),
	img_url VARCHAR(64),
	r_price VARCHAR(4)
);
INSERT INTO index_recommended VALUES(null,'精灵宝可梦·盾','http://127.0.0.1:8686/img/index/pokemon-shield.png','59.99');
INSERT INTO index_recommended VALUES(null,'精灵宝可梦·剑','http://127.0.0.1:8686/img/index/pokemon-sword.png','59.99');
INSERT INTO index_recommended VALUES(null,'塞尔达传说','http://127.0.0.1:8686/img/index/zelda.png','69.99');
INSERT INTO index_recommended VALUES(null,'勇者斗恶龙','http://127.0.0.1:8686/img/index/dragon.png','49.99');

#创建购物车列表
CREATE TABLE shopping_cart(
	sc_id INT PRIMARY KEY AUTO_INCREMENT,
	u_id INT,
	g_id INT,
	g_name VARCHAR(64),
	g_price DECIMAL(5,2),
	sc_count TINYINT,
	g_img VARCHAR(64),
	c_time DATETIME
);
INSERT INTO shopping_cart VALUES(null,1,1,'塞尔达传说·野性的呼吸·入门包','59.99',1,'http://127.0.0.1:8686/img/allGames/switch/Zelda.jpg',now());
INSERT INTO shopping_cart VALUES(null,1,2,'精灵宝可梦·皮卡丘','59.99',1,'http://127.0.0.1:8686/img/allGames/switch/kdyg-pkq.png',now());
INSERT INTO shopping_cart VALUES(null,1,3,'精灵宝可梦·伊布','69.99',1,'http://127.0.0.1:8686/img/allGames/switch/kdyg-yibu.png',now());
INSERT INTO shopping_cart VALUES(null,1,4,'黑暗之魂·重置版：入门包','49.99',1,'http://127.0.0.1:8686/img/allGames/switch/dark-souls.png',now());

#创建商品留言列表
CREATE TABLE game_comments(
	gc_id INT PRIMARY KEY AUTO_INCREMENT,
	g_id INT,
	gc_content VARCHAR(128),
	u_name VARCHAR(16),
	c_time DATETIME
);
INSERT INTO game_comments VALUES(null,1,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,2,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,3,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,4,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,5,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,6,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,7,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,8,'很好玩！！！','lingmx',now());
INSERT INTO game_comments VALUES(null,1,'追了好几代了，依然是那么好玩！','lingmx',now());
INSERT INTO game_comments VALUES(null,2,'追了好几代了，依然是那么好玩！','lingmx',now());
INSERT INTO game_comments VALUES(null,3,'追了好几代了，依然是那么好玩！','lingmx',now());
INSERT INTO game_comments VALUES(null,4,'追了好几代了，依然是那么好玩！','lingmx',now());
INSERT INTO game_comments VALUES(null,5,'追了好几代了，依然是那么好玩！','lingmx',now());
INSERT INTO game_comments VALUES(null,6,'追了好几代了，依然是那么好玩！','lingmx',now());
INSERT INTO game_comments VALUES(null,7,'追了好几代了，依然是那么好玩！','lingmx',now());
INSERT INTO game_comments VALUES(null,8,'追了好几代了，依然是那么好玩！','lingmx',now());
