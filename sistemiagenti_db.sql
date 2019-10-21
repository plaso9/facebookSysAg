-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 21, 2019 alle 12:13
-- Versione del server: 10.1.37-MariaDB
-- Versione PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemiagenti_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(250) NOT NULL,
  `coupon_message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `category`, `coupon_message`) VALUES
(1, 'Abbigliamento', 'Valido in tutti i negozi di abbigliamento nella città di Bari'),
(2, 'Sport', 'Valido per tutti gli eventi sportivi in Italia'),
(3, 'Cinema', 'Valido in tutti i cinema nella città di Bari'),
(4, 'Viaggi', 'Valido in tutte le agenzie di viaggio nella città di Bari'),
(5, 'Medicina & Salute', 'Valido in tutte le farmacie nella città di Bari'),
(6, 'Libri', 'Valido in tutte le librerie nella città di Bari'),
(7, 'Cibo', 'Valido in tutti i ristoranti nella città di Bari'),
(8, 'Infomatica & Elettronica & Tv', 'Valido in tutti i negozi hi-tech nella città di Bari'),
(9, 'Musica', 'Valido in tutti gli eventi musicali nella città di Bari'),
(10, 'Videogiochi', 'Valido in tutti i gaming store nella città di Bari');

-- --------------------------------------------------------

--
-- Struttura della tabella `favorite_athletes`
--

CREATE TABLE `favorite_athletes` (
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `favorite_athletes`
--

INSERT INTO `favorite_athletes` (`name`, `user_id`) VALUES
('Andrea Ranocchia', '2461147887302139'),
('Daniele Sciaudone', '2461147887302139'),
('Diego Milito', '2461147887302139'),
('Eder Citadin Martins', '2461147887302139'),
('Giampaolo Pazzini', '2461147887302139'),
('JoÃ£o Cancelo', '2461147887302139'),
('Mauro Icardi', '2461147887302139'),
('Rafinha Alcantara', '2461147887302139'),
('Wesley Sneijder', '2461147887302139'),
('Zlatan IbrahimoviÄ‡', '2461147887302139');

-- --------------------------------------------------------

--
-- Struttura della tabella `football_team`
--

CREATE TABLE `football_team` (
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `football_team`
--

INSERT INTO `football_team` (`name`, `user_id`) VALUES
('Amobari', '2461147887302139'),
('Inter', '2461147887302139'),
('Liberty Canosa', '2461147887302139');

-- --------------------------------------------------------

--
-- Struttura della tabella `likes`
--

CREATE TABLE `likes` (
  `nome_categoria` varchar(100) NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `likes`
--

INSERT INTO `likes` (`nome_categoria`, `counter`, `user_id`) VALUES
('Abbigliamento', 1, '2461147887302139'),
('Agenzia media/stampa', 5, '2461147887302139'),
('Allenatore', 1, '2461147887302139'),
('Arredamento', 1, '2461147887302139'),
('Arte', 1, '2461147887302139'),
('Artista', 3, '2461147887302139'),
('Atleta', 4, '2461147887302139'),
('Azienda', 1, '2461147887302139'),
('Azienda di cibo e bevande', 1, '2461147887302139'),
('Azienda di informatica', 1, '2461147887302139'),
('Azienda di software', 1, '2461147887302139'),
('Bar', 1, '2461147887302139'),
('Bar/pub', 1, '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 1, '2461147887302139'),
('Blog personale', 1, '2461147887302139'),
('Blogger', 1, '2461147887302139'),
('Canali TV', 1, '2461147887302139'),
('Cibo e bevande', 1, '2461147887302139'),
('Comico', 2, '2461147887302139'),
('Community', 9, '2461147887302139'),
('Consulente per ricerche di mercato', 1, '2461147887302139'),
('Creatore di video', 1, '2461147887302139'),
('Finanza', 1, '2461147887302139'),
('Giornalista', 2, '2461147887302139'),
('Grafico', 2, '2461147887302139'),
('Imprenditore', 3, '2461147887302139'),
('Istruzione', 1, '2461147887302139'),
('Libro', 1, '2461147887302139'),
('Musicista/gruppo musicale', 3, '2461147887302139'),
('Negozio con specialitÃ  cupcake', 1, '2461147887302139'),
('Negozio di cosmetici', 1, '2461147887302139'),
('Negozio di sigarette elettroniche', 1, '2461147887302139'),
('Negozio di tatuaggi e piercing', 1, '2461147887302139'),
('Organizzazione', 1, '2461147887302139'),
('Personaggio politico', 4, '2461147887302139'),
('Personaggio pubblico', 8, '2461147887302139'),
('Prefabbricati', 1, '2461147887302139'),
('Prodotto/servizio', 3, '2461147887302139'),
('Provider di servizi Internet', 1, '2461147887302139'),
('Pub', 2, '2461147887302139'),
('Risto-pub', 1, '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 1, '2461147887302139'),
('Scuola di cucina', 1, '2461147887302139'),
('Servizio finanziario', 1, '2461147887302139'),
('Sito web', 3, '2461147887302139'),
('Sito web di cultura e societÃ ', 1, '2461147887302139'),
('Sito Web di e-commerce', 1, '2461147887302139'),
('Sito Web di intrattenimento', 2, '2461147887302139'),
('Sito web di notizie e media', 2, '2461147887302139'),
('Sito Web per computer e navigazione Internet', 1, '2461147887302139'),
('Sport', 1, '2461147887302139'),
('Svago', 2, '2461147887302139'),
('Tour di concerti', 1, '2461147887302139'),
('Videogioco', 3, '2461147887302139');

-- --------------------------------------------------------

--
-- Struttura della tabella `likes_description`
--

CREATE TABLE `likes_description` (
  `nome_categoria` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `likes_description`
--

INSERT INTO `likes_description` (`nome_categoria`, `description`, `user_id`) VALUES
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139'),
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139'),
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139'),
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139');
INSERT INTO `likes_description` (`nome_categoria`, `description`, `user_id`) VALUES
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139'),
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139'),
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139'),
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139');
INSERT INTO `likes_description` (`nome_categoria`, `description`, `user_id`) VALUES
('Prodotto/servizio', 'HYPE rivoluziona la gestione del denaro, rendendola finalmente semplice, smart e senza costi tramite il proprio smarphone. Si tratta di unâ€™esperienza completamente nuova per gestire il proprio denaro tramite unâ€™app con funzioni innovative e una carta ', '2461147887302139'),
('Giornalista', 'Questa Ã¨ la mia unica pagina facebook. La curo direttamente, leggo ogni intervento. Ho invece lasciato twitter, @ementana. Sono su Instagram, ENRICOMENTANA', '2461147887302139'),
('Allenatore', 'Pagina ufficiale di Antonio Conte.', '2461147887302139'),
('Artista', 'The Official Donnie Yen Facebook Fan Page', '2461147887302139'),
('Consulente per ricerche di mercato', 'Live your Life. Get Rewarded. Join our community of over 5,000,000 members and start collecting LifePoints today! \n', '2461147887302139'),
('Sito Web per computer e navigazione Internet', 'The easiest way to mine or exchange Bitcoin, Ethereum, Litecoin, Bitcoin Cash, Dogecoin, Ripple, Dash, and more.', '2461147887302139'),
('Bar', '', '2461147887302139'),
('Imprenditore', '', '2461147887302139'),
('Istruzione', 'UpswingPoker.com shares winning poker strategy and content with our users', '2461147887302139'),
('Cibo e bevande', 'ORGANO Ã¨ una societÃ  globale di Network Marketing che ha la missione di diffondere al mondo intero la conoscenza del Ganoderma.', '2461147887302139'),
('Musicista/gruppo musicale', 'Please act responsibly when commenting and know that this page is open to people of all ages. Also be aware that Roger will not contact you by Facebook messenger or email. Do not be fooled.\n\nThank you.\n\nPlease send any questions to: help@RogerWaters.com', '2461147887302139'),
('Negozio con specialitÃ  cupcake', 'Pasticceria Artigianale, Gelateria, Caffetteria, Sala da The, Brew Bar a Bari specializzata in cupcakes, cheesecakes, torte di compleanno, brownie, cookies. Potrai vivere una esperienza unica in un ambiente di design: serviamo colazione, pranzo e dessert', '2461147887302139'),
('Prodotto/servizio', '', '2461147887302139'),
('Videogioco', 'ã€Šè¬åœ‹è¦ºé†’ã€‹\næ˜¯ä¸€æ¬¾æ­·å²æ–‡åŒ–å•Ÿç™¼çš„ç§»å‹•MMOå³æ™‚ç­–ç•¥éŠæˆ²ã€‚\næ•¸ä½åˆ†ç´šï¼šè¼”12', '2461147887302139'),
('Atleta', 'Welcome to the OFFICIAL Fan Club Facebook page of Zlatan IbrahimoviÄ‡.', '2461147887302139'),
('Personaggio pubblico', 'Pagina ufficiale di Enzo Miccio Wedding Planner', '2461147887302139'),
('Comico', 'Per info e spettacoli:\nInfo@oceanspettacoli.it\n\n+393505011247 \n+393202635366\n\nAN1ZL5 ', '2461147887302139'),
('Creatore di video', 'Il Milanese Imbruttito Ã¨ dentro ognuno di noi.\n\nNon Ã¨ nÃ¨ in orario, nÃ¨ in anticipo, nÃ¨ in ritardo: Ã‰ GIA LÃ.', '2461147887302139'),
('Personaggio politico', 'Leader della Lega.\n#primagliitaliani ðŸ‡®ðŸ‡¹\nWeb: www.legaonline.it\nYouTube: youtube.com/user/matteosalvinimi\nInstagram: @matteosalviniofficial\nTwitter: @matteosalvinimi', '2461147887302139'),
('Sito web', 'Pagina di supporto per le Leghe fantacalcio\n\nIl servizio Ã¨ attivo dalle ore 9:00 alle ore 20:00 dal LunedÃ¬ alla Domenica.\n\n', '2461147887302139'),
('Personaggio politico', 'Presidente del Consiglio dei ministri della Repubblica Italiana', '2461147887302139'),
('Videogioco', 'NovitÃ , divertimento e promozioni dal mondo Fortnite!', '2461147887302139'),
('Imprenditore', 'Ironico e dissacrante.\nSfacciato e logorroico.\nNarcisista e megalomane.\nMa ho anche dei difetti.', '2461147887302139'),
('Musicista/gruppo musicale', 'www.eminem.com\nwww.twitter.com/eminem\nwww.instagram.com/eminem\nwww.eminem.tumblr.com', '2461147887302139'),
('Atleta', 'JoÃ£o Cancelo - PÃ¡gina Oficial\nJogador da Juventus Football Club e da SeleÃ§Ã£o Portuguesa de Futebol\n\ninstagram.com/jpcancelo/', '2461147887302139'),
('Finanza', 'Mission: Help the full Blockchain ecosystem reach mass adoption and in particular the blockchain projects that you like!', '2461147887302139'),
('Atleta', 'Bienvenido a la PÃ¡gina Oficial de Facebook de Rafinha Alcantara\ncontacto@rafinhaoficial.com\nWelcome to the Official Fan Page of Rafinha Alcantara\n', '2461147887302139'),
('Community', '', '2461147887302139'),
('Scuola di cucina', 'La prevenzione comincia a tavola', '2461147887302139'),
('Community', 'Steem is a value-driven and rewards-based social blockchain used by more than 1 million people across 400+ native apps.\n', '2461147887302139'),
('Videogioco', 'Un gioco multigiocatore gratuito dove potrai combattere in Battaglia Reale, collaborare per creare la tua isola o affrontare missioni in Salva il mondo (Accesso anticipato a pagamento).\n\n', '2461147887302139'),
('Sito Web di intrattenimento', 'Simple and modern bitcoin betting platform.', '2461147887302139'),
('Personaggio pubblico', 'SÃ­gueme en Instagram @alfiobardollaespana\n', '2461147887302139'),
('Giornalista', 'Benvenuti nella mia pagina ufficiale di Facebook - http://www.ilfattoquotidiano.it/blog/MTravaglio/', '2461147887302139'),
('Community', '', '2461147887302139'),
('Servizio finanziario', 'Bankera is building the digital bank for the blockchain era, with the aim of integrating traditional and cryptocurrency related banking and becoming the one-stop-shop for all financial services. ', '2461147887302139'),
('Agenzia media/stampa', 'Somos una app que permite a las personas ganar a travÃ©s de sus fotos, convirtiÃ©ndose en los portavoces de marcas. Â¡Haz una foto, sÃºbela y gana :D!', '2461147887302139'),
('Sport', 'Team Kickboxing Asd Shogun Club, Istruttore Dario Favatella 1Â°dan, affiliato federazione IAKSA, LIBERTAS, riconosciuto dal CONI.', '2461147887302139'),
('Videogioco', '', '2461147887302139'),
('Musicista/gruppo musicale', 'www.WeArePeekaboom.com\n\nwww.youtube.com/c/WeArePeekaboomTV', '2461147887302139'),
('Comico', 'Pagina ufficiale de GLI AUTOGOL\nINFO/ BOOKING/ MANAGEMENT: gliautogol@hellodi.it\n', '2461147887302139'),
('Sito web', 'Tutto sul campionato cadetto. Informazioni, Esclusive, interviste ai protagonisti, dirette live e probabili formazioni! www.seriebnews.com', '2461147887302139'),
('Negozio di tatuaggi e piercing', 'Crossbone Studio, Tattoo di Donatello Mazzone, apertura: Mart, Merc e GiovedÃ¬ dalle 10:00 alle 20:30 orario cont. \nPer info : 080 4030935\n3403480570', '2461147887302139'),
('Community', '', '2461147887302139'),
('Community', 'South Valley Roleplay Ã¨ un server gta sa:mp di genere Roleplay. \n\nwww.sv-rp.org', '2461147887302139'),
('Community', 'Lo sport piÃ¹ bello del mondo?\n', '2461147887302139'),
('Atleta', 'Eder is only in Instagram: http://instagram.com/ederinho23', '2461147887302139'),
('Artista', 'Vintage Made in Usa e Made in Japan. Esperto su produzioni Tokai,Edwards,Greco,Bacchus,Grass Roots,Burny,Fernandes.Ecc. Competenza e giovialitÃ  garantite!', '2461147887302139'),
('Pub', 'Pub indipendente con birre artigianali alla spina e in bottiglia.\nLa nostra cucina propone anche piatti vegani e vegetariani.', '2461147887302139'),
('Personaggio politico', 'Sindaco di Parma\n#Trasparenza: http://goo.gl/lTT762\n#AttiConcreti: http://goo.gl/ZRcIEQ\nTwitter: @FedePizzarotti', '2461147887302139'),
('Agenzia media/stampa', 'Fun diy-projects, crafts, experience the joy of doing it yourself!\n\nFor business inquiries: brands@thesoul-publishing.com', '2461147887302139'),
('Blog personale', 'Presidente della Pro Loco U.N.P.L.I Canosa\n\nGiÃ  Assessore comunale \n\n\nCittadino attivo\n#InPrimaLinea', '2461147887302139'),
('Personaggio pubblico', 'AttivitÃ  del consigliere comunale del Movimento 5 Stelle Andria', '2461147887302139'),
('Bellezza, cosmetici e cura del corpo', 'Pagina dedicata alla donna che ama curare il proprio corpo con una sana alimentazione e usando i giusti integratori per la perdita del peso ', '2461147887302139'),
('Rivenditori di pneumatici e negozio di riparazione', 'Distribuzione e vendita di pneumatici semi-nuovi e nuovi a prezzi vantaggiosi. Spedizione sempre gratuita. Garanzia di qualitÃ  nel servizio. ', '2461147887302139'),
('Pub', 'QUESTA Ãˆ LA PAGINA UFFICIALE', '2461147887302139'),
('Azienda di cibo e bevande', 'ORGANOâ„¢ is a global company that offers premium everyday products including coffees, teas, nutraceuticals and personal care items.', '2461147887302139'),
('Negozio di cosmetici', 'Dermasensitive Ã¨ un marchio Sodico ed offre la soluzione ideale per le pelli sensibili e intolleranti. Tutti i prodotti sono nickel tested e senza parabeni', '2461147887302139'),
('Agenzia media/stampa', 'Diretto da Claudia Vitrani', '2461147887302139'),
('Sito web di notizie e media', 'Tutta la malformazione mentale dei subumani!', '2461147887302139'),
('Risto-pub', 'Nuovissimo e bellissimo Risto-pub situato nel centro di Canosa di Puglia nei pressi della Cattedrale di San Sabino ', '2461147887302139'),
('Personaggio pubblico', 'Questa pagina Ã¨ gestita da Pio e Amedeo!!!!!!!!\n\nContattaci\n\ninfo@pioeamedeo.it', '2461147887302139'),
('Community', 'La fattanza Ã¨ una danza che si balla con la latitanza. #LegalizeIt', '2461147887302139'),
('Canali TV', 'Pagina ufficiale di Rai 3. Informazioni e anticipazioni sui programmi in palinsesto, video e foto, backstage e commenti sulla messa in onda. http://www.rai.it/rai3/', '2461147887302139'),
('Agenzia media/stampa', 'Die aktuellen Nachrichten Ã¼ber die ganze Welt des FuÃŸball - direkt aus der FOCUS-Online-Redaktion. (Impressum: http://on.fb.me/16Bkm7c)', '2461147887302139'),
('Community', 'Notizie, recensioni, guide e video tutorial per tutti gli appassionati di tecnologia.\n', '2461147887302139'),
('Libro', 'Fabrizio Casella, scrittore, ama le persone intelligienti ed ironiche. Luna meccanica Ã¨ il suo secondo libro, una raccolta in versi.', '2461147887302139'),
('Personaggio pubblico', 'Husband, Father & an incredible friend to have!', '2461147887302139'),
('Sito web di cultura e societÃ ', 'Il CdM Ã¨ un progetto volto a sensibilizzare la societÃ  sul dramma della convivenza fra estranei e una risorsa per tutti i coinquilini.', '2461147887302139'),
('Personaggio politico', 'Questa Ã¨ la pagina Roberto Morra, sindaco del Comune di Canosa di Puglia. \n\n', '2461147887302139'),
('Personaggio pubblico', 'PROPOSTE LIVE&COMMERCIALE: \nriccardo@newtopia.it\n\nâ–º Instagram: @riccardodose\nâ–º Twitter: @riccardodose', '2461147887302139'),
('Blogger', 'E poi ti senti dire che quello che fai da una vita sia per altri un lavoro.. e non solo piacere.\n(Prima di parlare dovrebbero provare.)\n', '2461147887302139'),
('Sito web', 'Il primo portale che ti permette di ricevere prodotti HI-TECH ad un prezzo vantaggioso. ', '2461147887302139'),
('Organizzazione', 'Six minds.', '2461147887302139'),
('Azienda', 'Free and premium PSD Flyer Template - Club Flyers - Seasonal Flyers - Event Flyers - Sport Flyers - Mixtape Designs ', '2461147887302139'),
('Grafico', 'Download Free Flyer, Flyer Templates & Bundles for Photoshop www.AwesomeFlyer.com', '2461147887302139'),
('Negozio di sigarette elettroniche', 'Tutto sulla sigaretta elettronica & co.', '2461147887302139'),
('Svago', '\n\n', '2461147887302139'),
('Prefabbricati', 'Associazione Nazionale Italiana Case prefabbricate in Legno https://www.lignius.it/', '2461147887302139'),
('Community', 'â€¢ La pagina ufficiale di \n\"CHE FATICA LA VITA DA BOMBER\" â€¢\nâ€¢ CHE FATICA LA VITA DA BOMBER Ã¨ UN MARCHIO REGISTRATO â€¢\n#CheFaticaLaVitaDaBomber\nwww.chefaticalavitadabomber.it\nwww.instagram.com/chefaticalavitadabomber/\n', '2461147887302139'),
('Grafico', '', '2461147887302139'),
('Svago', 'â€¢La bellezza di ricercare grandi cose per sÃ©, equivale alla bellezza di sapere di sÃ© cosa si vuole cercare!â€¢', '2461147887302139'),
('Bar/pub', ' cicchetteria, american bar \nChiuso il lunedi', '2461147887302139'),
('Azienda di informatica', '\nTesters Wanted for AAA Multiplayer Console and PC Titles.', '2461147887302139'),
('Arte', 'Instagram: https://www.instagram.com/abductiion', '2461147887302139'),
('Azienda di software', 'Programming,Programmer,Engineering,all programming languages,java programming,computer programming,plc programming,robotics programming,python ,java ,javascript, Funny quotes, photos, videos about software engineers ;) hit like if you are a programmer :P', '2461147887302139'),
('Sito web di notizie e media', 'Le migliori offerte del web raggruppate sulla nostra pagina', '2461147887302139'),
('Personaggio pubblico', 'Mamma, medico, deputato del MoVimento 5 Stelle. \nLa policy: http://www.giuliagrillo.it/policy-pagina-facebook/', '2461147887302139'),
('Provider di servizi Internet', 'We write lot about Android. Want to join with us in the journey of learning Android programming, do like our page and keep getting updates on the posts.', '2461147887302139');

-- --------------------------------------------------------

--
-- Struttura della tabella `music`
--

CREATE TABLE `music` (
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `music`
--

INSERT INTO `music` (`name`, `user_id`) VALUES
('Alejandro Manzano', '2461147887302139'),
('Axum Official', '2461147887302139'),
('Boyce Avenue', '2461147887302139'),
('Ca$h Clan', '2461147887302139'),
('Caparezza', '2461147887302139'),
('DJ PEPER - giuseppe minerva', '2461147887302139'),
('Eminem', '2461147887302139'),
('Francesca Michelin', '2461147887302139'),
('Francesca Michielin', '2461147887302139'),
('Giorgio Vanni', '2461147887302139'),
('GRUPPO TF Events', '2461147887302139'),
('Jennel Garcia', '2461147887302139'),
('Jess Greenberg', '2461147887302139'),
('Luca Stricagnoli', '2461147887302139'),
('Manuel Frattini Fans Page', '2461147887302139'),
('Mick Heslin', '2461147887302139'),
('Mondo Marcio', '2461147887302139'),
('Notizie.it', '2461147887302139'),
('Peekaboom', '2461147887302139'),
('Popfest', '2461147887302139'),
('Radio Flash', '2461147887302139'),
('Roger Waters', '2461147887302139'),
('Scripting', '2461147887302139'),
('Siamoinpuglia.net', '2461147887302139'),
('Strumenti E Figure', '2461147887302139');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id_user` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`id_user`, `nome`, `email`, `birthday`, `hometown`, `gender`) VALUES
('2461147887302139', 'Marco Sorrenti', 'marcosorrenti93@gmail.com', '12/12/1993', 'Canosa di Puglia', 'male');

-- --------------------------------------------------------

--
-- Struttura della tabella `user_category`
--

CREATE TABLE `user_category` (
  `id` int(11) NOT NULL,
  `_user` varchar(100) DEFAULT NULL,
  `_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user_category`
--

INSERT INTO `user_category` (`id`, `_user`, `_category`) VALUES
(1, '2461147887302139', 10),
(2, '2461147887302139', 9),
(3, '2461147887302139', 1),
(4, '2461147887302139', 2),
(5, '2461147887302139', 7),
(6, '2461147887302139', 7),
(7, '2461147887302139', 10),
(8, '2461147887302139', 9),
(9, '2461147887302139', 1),
(10, '2461147887302139', 2),
(11, '2461147887302139', 7),
(12, '2461147887302139', 7),
(13, '2461147887302139', 10),
(14, '2461147887302139', 9),
(15, '2461147887302139', 1),
(16, '2461147887302139', 2),
(17, '2461147887302139', 7),
(18, '2461147887302139', 7),
(19, '2461147887302139', 10),
(20, '2461147887302139', 9),
(21, '2461147887302139', 1),
(22, '2461147887302139', 2),
(23, '2461147887302139', 7),
(24, '2461147887302139', 7),
(25, '2461147887302139', 10),
(26, '2461147887302139', 9),
(27, '2461147887302139', 1),
(28, '2461147887302139', 2),
(29, '2461147887302139', 7),
(30, '2461147887302139', 7),
(31, '2461147887302139', 10),
(32, '2461147887302139', 9),
(33, '2461147887302139', 1),
(34, '2461147887302139', 2),
(35, '2461147887302139', 7),
(36, '2461147887302139', 7),
(37, '2461147887302139', 10),
(38, '2461147887302139', 9),
(39, '2461147887302139', 1),
(40, '2461147887302139', 2),
(41, '2461147887302139', 7),
(42, '2461147887302139', 7),
(43, '2461147887302139', 10),
(44, '2461147887302139', 9),
(45, '2461147887302139', 1),
(46, '2461147887302139', 2),
(47, '2461147887302139', 7),
(48, '2461147887302139', 7),
(49, '2461147887302139', 10),
(50, '2461147887302139', 9),
(51, '2461147887302139', 1),
(52, '2461147887302139', 2),
(53, '2461147887302139', 7),
(54, '2461147887302139', 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `valutation`
--

CREATE TABLE `valutation` (
  `id` int(11) NOT NULL,
  `_user` varchar(250) NOT NULL,
  `valutation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `valutation`
--

INSERT INTO `valutation` (`id`, `_user`, `valutation`) VALUES
(12, '2461147887302139', '4'),
(13, '2461147887302139', '5');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `favorite_athletes`
--
ALTER TABLE `favorite_athletes`
  ADD PRIMARY KEY (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `football_team`
--
ALTER TABLE `football_team`
  ADD PRIMARY KEY (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`user_id`,`nome_categoria`);

--
-- Indici per le tabelle `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indici per le tabelle `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `valutation`
--
ALTER TABLE `valutation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `user_category`
--
ALTER TABLE `user_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT per la tabella `valutation`
--
ALTER TABLE `valutation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `favorite_athletes`
--
ALTER TABLE `favorite_athletes`
  ADD CONSTRAINT `favorite_athletes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Limiti per la tabella `football_team`
--
ALTER TABLE `football_team`
  ADD CONSTRAINT `football_team_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Limiti per la tabella `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);

--
-- Limiti per la tabella `music`
--
ALTER TABLE `music`
  ADD CONSTRAINT `music_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
