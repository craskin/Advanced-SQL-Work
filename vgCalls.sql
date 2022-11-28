-- calling procedures --
/* Output is placed underneath each procedure call 


I grouped by vg_name in gameProfitByRegion because to actually count total sales for a game,
sales across all platform releases are added */

-- Calls to game profit by region 
call gameProfitByRegion(35, 'WD'); 
/*
'Grand Theft Auto V','279.599991440773'
'Need for Speed: Most Wanted','168.9599992632866'
'Call of Duty: Ghosts','164.28000140190125'
'Call of Duty: Black Ops','155.1499992609024'
'FIFA 14','154.26000188291073'
'FIFA 15','152.1600022315979'
'Minecraft','142.37999975681305'
'FIFA Soccer 13','129.27999687194824'
'Call of Duty: Black Ops 3','126.59999959170818'
'Call of Duty: Modern Warfare 3','123.3200011253357'
'Call of Duty: Black Ops II','118.87999701499939'
'Call of Duty: Advanced Warfare','109.49999883770943'
'LEGO Batman: The Videogame','95.69000259414315'
'Grand Theft Auto: San Andreas','95.4399981200695'
'The Sims 3','92.69999706745148'
'FIFA 12','92.05000066757202'
'Super Mario Bros.','90.62000370025635'
'Madden NFL 07','90.26999704353511'
'LEGO Marvel Super Heroes','88.73999905586243'
'FIFA Soccer 11','87.9200000166893'
'LEGO Indiana Jones: The Original Adventures','84.34999992698431'
'Wii Sports','82.73999786376953'
'FIFA 16','82.19999879598618'
'Guitar Hero III: Legends of Rock','82.00000052340329'
'Call of Duty: World at War','79.34999883174896'
'Assassin\'s Creed IV: Black Flag','78.9600003361702'
'Call of Duty: Modern Warfare 2','75.26999938488007'
'FIFA Soccer 10','75.1799999885261'
'Call of Duty 4: Modern Warfare','72.99999761581421'
'Tetris','71.68000030517578'
'Battlefield 4','70.1500004529953'
'Grand Theft Auto IV','67.41000044345856'
'FIFA Soccer 08','66.43000103160739'
'Need for Speed Underground 2','65.82000035047531'
'Madden NFL 08','65.19999849796295'
'Madden NFL 06','63.209998808801174'
'LEGO Star Wars: The Complete Saga','63.000000953674316'
'Monopoly','61.600000739097595'
'Star Wars: The Force Unleashed','61.37999939918518'
'Need for Speed: ProStreet','60.059999726712704'
'LEGO Star Wars II: The Original Trilogy','58.800000578165054'
'The Elder Scrolls V: Skyrim','57.84000062942505'
'Watch Dogs','56.93999835848808'
'Diablo III','55.399999022483826'
'Cars','54.880000710487366'
'Harry Potter and the Sorcerer\'s Stone','53.48000065609813'
'LEGO Star Wars III: The Clone Wars','52.91999959945679'
'Assassin\'s Creed III','52.40000081062317'
'Need for Speed Underground','52.29999938979745'
'Super Mario World','52.14000129699707'
'Battlefield 3','52.08000040054321'
'FIFA Soccer 09','52.01999985426664'
'LEGO Harry Potter: Years 1-4','51.17999958246946'
'Pro Evolution Soccer 2008','50.820001658052206'
'Destiny','50.44000053405762'
'Guitar Hero: World Tour','50.40000035427511'
'Need For Speed: Undercover','48.43999969959259'
'Tony Hawk\'s Pro Skater 3','48.299998730421066'
'Spider-Man 2','45.83999991416931'
'Harry Potter and the Chamber of Secrets','45.8399996124208'
'Super Mario Bros. 3','44.96000099182129'
'Need for Speed Carbon','44.939999621361494'
'Batman: Arkham City','44.80000162124634'
'Super Mario 64','44.6200008392334'
'LEGO Batman 2: DC Super Heroes','44.5900000333786'
'WWE SmackDown vs Raw 2008','44.46000047028065'
'Skylanders SWAP Force','43.82000024616718'
'Far Cry 4','43.400001525878906'
'Madden NFL 09','42.83999973535538'
'The Simpsons Game','42.71999967098236'
'The LEGO Movie Videogame','42.64000055193901'
'Mortal Kombat','41.99999933131039'
'LEGO Harry Potter: Years 5-7','41.36000072956085'
'Donkey Kong Country','40.59000062942505'
'NBA 2K16','40.14999940991402'
'Ratatouille','40.140000058338046'
'Teenage Mutant Ninja Turtles','40.02000069245696'
'LEGO Jurassic World','39.83999973535538'
'LEGO Pirates of the Caribbean: The Video Game','39.55000023730099'
'Just Dance 2014','39.4799998998642'
'Madden NFL 13','39.17999907955527'
'Just Dance 3','38.760000586509705'
'Kung Fu Panda','38.519999496638775'
'Madden NFL 2002','38.459999442100525'
'FIFA Soccer 07','38.28000120073557'
'Michael Jackson: The Experience','38.220000475645065'
'Madden NFL 2005','38.00000101327896'
'Madden NFL 10','37.849999368190765'
'Fallout 4','36.84000062942505'
'Lego Batman 3: Beyond Gotham','36.64000007510185'
'NBA Jam','36.539999678730965'
'LEGO Star Wars: The Video Game','36.299999449402094'
'Pro Evolution Soccer 2010','35.88000017032027'
'Mario Kart Wii','35.81999969482422'
'Just Dance 4','35.71999955177307'
'Star Wars Battlefront (2015)','35.10000032186508'


*/


call gameProfitByRegion(12, 'EU'); 
/* 
'Grand Theft Auto V','115.20000159740448'
'FIFA 14','100.26000268757343'
'FIFA 15','99.2000002861023'
'FIFA Soccer 13','82.00000178813934'
'Need for Speed: Most Wanted','70.19999945908785'
'FIFA 12','59.50000075623393'
'The Sims 3','57.600000858306885'
'FIFA 16','56.44999921321869'
'FIFA Soccer 11','56.07000024616718'
'Call of Duty: Ghosts','54.30000042915344'
'Minecraft','53.099999606609344'
'Call of Duty: Black Ops 3','47.79999911785126'
'Call of Duty: Black Ops','47.50000039115548'
'Call of Duty: Modern Warfare 3','45.16000157594681'
'Call of Duty: Black Ops II','44.20000123977661'
'FIFA Soccer 10','43.60999987274408'
'Call of Duty: Advanced Warfare','40.89999966323376'
'LEGO Marvel Super Heroes','37.260000474750996'
'Assassin\'s Creed IV: Black Flag','31.07999986410141'
'Wii Sports','29.020000457763672'
'LEGO Batman: The Videogame','28.349999222904444'
'Battlefield 4','27.849999964237213'
'FIFA Soccer 08','27.789999848231673'
'FIFA 17','27.399999890476465'
'Need for Speed Underground 2','26.459999844431877'
'Call of Duty: Modern Warfare 2','24.330000579357147'
'Harry Potter and the Sorcerer\'s Stone','24.290000200271606'
'Watch Dogs','24.23999970406294'
'FIFA Soccer 09','24.120000042021275'
'Call of Duty: World at War','23.749999701976776'
'Call of Duty 4: Modern Warfare','23.280000284314156'
'The Elder Scrolls V: Skyrim','22.979999542236328'
'Grand Theft Auto IV','22.949999749660492'
'Diablo III','22.70000033080578'
'LEGO Indiana Jones: The Original Adventures','22.60999991185963'
'Far Cry 4','22.24999949336052'
'FIFA Soccer 07','21.239999927580357'
'LEGO Harry Potter: Years 1-4','21.000000055879354'
'Pro Evolution Soccer 2008','20.279999669641256'
'LEGO Star Wars: The Complete Saga','20.039999961853027'
'Monopoly','19.920000284910202'
'Need for Speed Underground','19.899999611079693'
'Assassin\'s Creed III','19.71999979019165'
'LEGO Star Wars III: The Clone Wars','19.670000329613686'
'Battlefield 3','19.470000386238098'
'Harry Potter and the Chamber of Secrets','19.080000277608633'
'The LEGO Movie Videogame','18.23999971151352'
'Need for Speed: ProStreet','17.9200003426522'
'Need For Speed: Undercover','17.84999960102141'
'Star Wars: The Force Unleashed','17.81999981403351'
'LEGO Pirates of the Caribbean: The Video Game','17.64000028371811'
'LEGO Jurassic World','17.279999911785126'
'LEGO Harry Potter: Years 5-7','17.19999986886978'
'Destiny','16.480000019073486'
'Lego Batman 3: Beyond Gotham','16.479999631643295'
'Tomb Raider (2013)','16.399999633431435'
'LEGO Batman 2: DC Super Heroes','16.169999860227108'
'Pro Evolution Soccer 2010','15.839999970048666'
'The Simpsons Game','15.660000253468752'
'Winning Eleven: Pro Evolution Soccer 2007','15.600000666454434'
'Fallout 4','15.12000024318695'
'Need for Speed Carbon','14.979999978095293'
'FIFA Soccer 06','14.799999734386802'
'Batman: Arkham City','14.71999967098236'
'Star Wars Battlefront (2015)','14.639999985694885'
'Skylanders SWAP Force','14.559999961405993'
'Myst','13.99999980814755'
'LEGO The Lord of the Rings','13.999999791383743'
'Just Dance 2014','13.860000193119049'
'PES 2009: Pro Evolution Soccer','13.800000138580799'
'Tony Hawk\'s Pro Skater 3','13.739999882876873'
'pro evolution soccer 2011','13.679999716579914'
'Wall-E','13.509999802336097'
'Assassin\'s Creed','13.439999878406525'
'Middle-Earth: Shadow of Mordor','13.24999988079071'
'Guitar Hero III: Legends of Rock','12.950000213459134'
'Mario Kart Wii','12.880000114440918'
'Spider-Man 2','12.840000204741955'
'Toy Story 3: The Video Game','12.800000011920929'
'Mario & Sonic at the Olympic Games','12.760000228881836'
'Medal of Honor','12.719999969005585'
'FIFA Soccer 2005','12.520000167191029'
'LEGO Star Wars II: The Original Trilogy','12.399999782443047'
'Skylanders: Trap Team','12.39000028371811'
'Ratatouille','12.329999975860119'


*/



call gameProfitByRegion(10, 'JP'); 
/*
'Final Fantasy III','20.47999995946884'
'Super Mario Bros.','13.919999897480011'
'Tetris','12.059999465942383'
'Dragon Quest VII: Warriors of Eden','10.799999713897705'
'Donkey Kong Country','10.770000010728836'
'Pokemon Red/Pokemon Blue','10.220000267028809'
*/
 
-- Calls to genre ranking by region 
call genreRankingByRegion('Sports', 'WD'); 
/* 2 */

call genreRankingByRegion('Role-playing', 'NA'); 
/* 7 */

call genreRankingByRegion('Role-playing', 'JP'); 
/* 1 */
 
-- Calls to published releases 
call publishedReleases('Electronic Arts', 'Sports'); 
/* 212 */

call publishedReleases('Electronic Arts', 'Action'); 
/* 63 */
 
-- Calls to add new release 
call addNewRelease('Foo Attacks', 'X360', 'Strategy', 'Stevenson Studios'); 
/* This produces a statement that says 'Operation Successful' */

-- in case you want to test yourself that this works

SELECT *
FROM video_games
WHERE vg_name = 'Foo Attacks';

SELECT *
FROM games_platform
WHERE vg_id IN
	(SELECT vg_id from video_games where vg_name = 'Foo Attacks');