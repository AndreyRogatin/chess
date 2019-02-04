-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 04 2019 г., 14:04
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chess`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fact`
--

CREATE TABLE `fact` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fact`
--

INSERT INTO `fact` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Происхождение названия', '<p>Шахматы произошли от древнеиндийской игры 6-го векачатуранга, чье название переводится с санскрита как «четыре подразделения войска», что включает в себя пехоту, конницу, слонов и колесницы, которые представлены в шахматах пешкой, конем, слоном и ладьей.</p>\r\n<p>В 7-м веке игра пришла в Персию и была переименована в шатрандж. Именно от персидского языка произошло название шахматы. Игроки говорили «Шах» (от персидского «король») атакуя короля соперника, и «Шах мат» (с персидского — «король умер»).</p>', NULL, NULL),
(2, 'Шахматный автомат, который всех надул', '<p>В 1770 году, венгерский изобретатель Вольфган фон Кемпелен создал шахматный автомат. Машина представляла собой фигуру «турка» в человеческий рост, который сидел за огромным деревянным шкафчиком, чьи двери открывались, демонстрируя публике сложные механизмы.</p>\r\n<p>Механическая рука двигала фигуры по полю, и обыграла таких знаменитых противников, как Наполеон Бонапарт и Бенджамин Франклин.</p>\r\n<p>Как оказалось много лет спустя, шахматный автомат не был машиной. Внутри автомата находился шахматист, который двигался внутри и скрывался, когда публике показывали сложные механизмы умной «машины».</p>', NULL, NULL),
(3, 'Самая короткая и самая длинная шахматная игра', '<p>Самая короткая шахматная партия называется дурацкий мат, состоящий из двух ходов: 1. f3 e5 и 2. g4 Qh4++. Ничья или проигрыш может также произойти и до того, как игроки начинают делать ходы, как в случае определенного сценария в турнирной таблице, так и в результате того, что игрок не пришел на игру.</p>\r\n<p>Самая продолжительная шахматная партия была сыграна между Иваном Николичем и Гораном Арсовичем в Белграде в 1989 году. Она длилась 20 часов 15 минут, за игру было сделано 269 ходов, и она закончилась вничью. Теоретически партия может длиться еще дольше, но после введения правила 50-ти ходов, это число можно как-то ограничить.</p>', NULL, NULL),
(4, 'Шахбокс', '<p>Гарри Каспаров однажды сказал, что «шахматы — это муки разума». Видимо поэтому кто-то решил объединить шахматы с физическими испытаниями, создав шахбокс. Голландский художник Ипе Рубингстал родоначальником шахбокса, после того как увидел идею сочетать шахматы и бокс в одной книге-комиксе.</p>\r\n<p>В шахбоксе чередуются раунды шахмат и бокса и ее девизом является «Сражения происходят на ринге, а войны ведутся на доске».</p>\r\n<p>Шахбокс приобретает все большую популярность и находится под управлением Всемирной организации шахбокса.</p>', NULL, NULL),
(5, 'Динамический ферзь', '<p>Шахматная фигура Ферзь или королева претерпела множество изменений за всю историю шахмат. Начиналось все с того, что она могла ходить только по одной клетке по диагонали, в дальнейшем она передвигалась на два поля, а потом все дальше, как конь.</p>\r\n<p>Теперь же эта фигура может двигаться, как по диагонали, так и по горизонтали, и по вертикали. Сначала она была советником или премьер-министром короля.</p>\r\n<p>Но в дальнейшем она стала самой сильной фигурой в шахматах.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `title`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Забавные шахматы', 'funny-chess-01.jpg', NULL, NULL),
(2, 'Забавные шахматы', 'funny-chess-02.jpg', NULL, NULL),
(3, 'Забавные шахматы', 'funny-chess-03.jpg', NULL, NULL),
(4, 'Забавные шахматы', 'funny-chess-04.jpg', NULL, NULL),
(5, 'Забавные шахматы', 'funny-chess-05.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_11_133842_create_simple_page_models_table', 2),
(5, '2019_01_12_133407_create_facts_table', 3),
(6, '2019_01_12_143249_create_person_models_table', 4),
(7, '2019_01_12_180537_create_images_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `life` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`id`, `name`, `country`, `life`, `about`, `created_at`, `updated_at`) VALUES
(1, 'Гарри Каспаров', 'Россия', '1963 год', 'Нет игрока более сильного, находящегося на пике карьеры столько лет, чем Гарри Каспаров. Его имя стало синонимом слова шахматы. Он стал самым молодым бесспорным чемпионом мира в 1985 году в возрасте 22 лет. Титул принадлежал ему вплоть до 1993 года, до того момента как разногласия с федерацией, вынудили его создать свою собственную шахматную федерацию. В тот период он технически потерял титул чемпиона, хотя большинство любителей шахмат все еще считают его неофициальным чемпионом мира. Это продолжалось до его поражения Крамнику. Он был победителем с 1986 по 2005 год. Каспаров начал обучение в шахматной школе Михаила Ботвинника в 10 лет. В 1979 году он был случайно введен в профессиональный турнир. Он бросил вызов, претендуя на титул чемпиона мира и проиграл Карпову в 1984 году. Однако в следующем году он вернул звание и успешно защитил его 3 раза от Карпова в последующие годы. В 1993 года у Каспарова начались разногласия с федерацией. В 2007 году, Каспаров признал, что формирование отколовшейся федерации было худшей ошибкой в его карьере. На протяжении 13 лет, Каспаров отказывался соединиться с федерацией. В 2000 году он потерял титул чемпиона в пользу Крамника. Даже после потери звания, Каспаров продолжал выигрывать у своих конкурентов, оставаясь номеров один по всем параметрам. В 2005 году он объявил о выходе на пенсию, мотивируя это отсутствием личных целей в шахматах. Сейчас он продолжает политическую карьеру в России. Гарри Каспаров был неоспоримым лидером почти 20 лет и ушел на самом пике его карьеры. Он способствовал развитию шахмат и справедливо заслуживает первой позиции в этом и во всех других существующих рейтингах.', NULL, NULL),
(2, 'Анатолий Карпов', 'Россия', '1951 год', 'Анатолий Карпов является одним из самых великих игроков в истории. Он был чемпионом мира с 1975 по 1985 год, затем с 1993 по 1999 год и по сей день играет в конкурентоспособные шахматы (98 место). У него есть более 160 титулов победителя. Карпов начал изучать шахматы в 4 года и присоединился к престижной шахматной школе Ботвинника в возрасте 12. В 15 он сыграл вничью со Спасским. В 1969 году, Карпов выиграл Мировой юношеский чемпионат по шахматам. В 1974 году, он удивил всех, включая себя, побеждая Корчного и Спасского и получив право бросить вызов Фишеру. После того, как переговоры окончились, Фишер уступил свою корону, и Карпов стал чемпионом по умолчанию. Затем он последовательно выиграл 9 турниров. В течение его карьеры, на шахматных олимпиадах он проиграл только 2 игры из 68. Последняя успешная защита титула Карпова, состоялась во время противостояния с Гарри Каспаровым в 1984 году, тогда было сыграно 48 матчей. Матч был окончен из-за состояния здоровья игроков (Карпов потерял 10 килограмм в течение 5 месяцев). Карпов спорно возвратил титул в 1993 году, когда Каспаров отделился от шахматной федерации, попытавшись создать свою собственную шахматную организацию. Он обладает самым высоким рейтингом за всю историю игры. Карпов защитил свой титул чемпиона мира в 1996 году. С тех пор он концентрирует свое внимание на собственной политической карьере, нежели на шахматах.\r\n   \r\n', NULL, NULL),
(3, 'Эмануэль Ласкер', 'Германия', '1868-1941', 'Эмануэль Ласкер доминировал над шахматным миром и 27 лет обладал титулом чемпиона мира. Свое победное шествие он начал в 1889 году, победив на нью-йоркском турнире. В 1894 году у него появился шанс выиграть титул чемпиона мира у Стейница, чем он и воспользовался. Это стало началом его 27-летнего господства в качестве чемпиона мира. Конкуренты подвергли критике его победу, назвав ее «избиением старика». Он защитил свой титул в 1907 году, в партии с Маршаллом и затем в 1908 году победил его ненавистного конкурента Тарраша. Тарраш объяснил свое поражение влажной погодой. Стейниц и Янавский тщетно пытались обыграть Ласкера. В 1911 году Капабланка попытался бросить вызов Ласкеру, однако, немец установил такие строгие условия для игры, что Капабланка отказался еще во время переговоров. Он был, наконец побежден Капабланкой в 1921 году. Ему было 53 года, когда он принял советское гражданство. Одержав победу в возрасте 66 лет в Москве, он был назван «Биологическим чудом».', NULL, NULL),
(4, 'Вильгельм Стейниц', 'Австрия', '1836-1900', 'Вильгельм Стейниц был действующим чемпионом мира 8 лет (1886-1894). Стейниц справедливо заслуживает место в этом списке не только за его титулы, но и за вклад, который он сделал в развитие современных шахмат. В 1873 году, он представил новый стиль позиционной игры, который резко отличался от традиционного метода ведения партии. К 20 годам Стейниц играл в шахматы профессионально по всей Европе, и многие называли его «австрийским Морфи». В 1862 году, он переехал в Лондон и одержал победу над всеми ведущими игроками. Его прорывом можно считать 1866 год, когда он обыграл Адольфа Андерсена, после чего он стал считаться самым сильным активным игроком в мире. Стейниц провел 30 лет на вершине шахматного мира, побив рекорд по долговечности карьеры в игре. В 1894 году, Стейниц проиграл матч Эмануэлю Ласкеру. Мало того, что Стейниц значительно способствовал развитию современных шахмат, он также упорно работал, чтобы стандартизировать матчи чемпионата мира. К сожалению, он умер в бедности в 1900 году. Печальный конец великого чемпиона.', NULL, NULL),
(5, 'Хосе Капабланка', 'Куба', '1888-1942', 'Хосе Капабланка был Чемпионом мира с 1921 по 1927 год и часто считается кандидатом на самого великого игрока в истории. Он был также бесспорным лидером в шахматном блице (5 минут на одну сторону). Он изучил правила игры в 4 года и уже в 13 одержал победу над кубинским чемпионом. В 1906 году, в возрасте 18 лет, он сокрушил американского чемпиона Фрэнка Маршала, со счетом 15:8. На Сан-Себастьянском турнире 1911 года он ошеломил шахматный мир, одержав 6 побед над сильнейшими соперниками. Он был признан серьезным претендентом на титул чемпиона мира, который в то время принадлежал Эмануэлю Ласкеру. Он бросил вызов Ласкеру, и уже в 1921 году стал полноправным чемпионом. После этого он приступил к формализации правил чемпионата мира (известные как лондонские правила). В 1922 году он провел одновременный матч с 103 противниками, одержав победу 102 раза и единожды сыграв вничью. С 1916 по 1924 год, он проиграл только 34 игры. В 1927 году, Алехин вырвал титул у Капабланки, который он так и не восстановил. После поражения Капабланка играл на большом количестве турниров, надеясь получить матч-реванш. Однако, той формы какая у него была в 1919 году, ему уже не было суждено достичь. Он ушел из профессиональных шахмат в 1931 году, однако, возвратился в 1934 году, полный решимости возвратить титул. В то время как он показал неплохие результаты и доказал, что он все еще был игроком мирового класса, ему больше не удалось вернуть титул.', NULL, NULL),
(6, 'Deep Blue', 'IBM', '1989-1997', 'Может показаться странным, что среди великих шахматистов встречается компьютер, однако эта машина была специально разработана, чтобы играть в шахматы. Соперничество между Каспаровым и IBM началось в 1989 году, однако, только 11 мая 1997 года, Deep Blue удалось одержать победу над тогдашним чемпионом мира Гарри Каспаровым, аж в шести матчах. Машина выиграла 2 раза, проиграла 1 раз, 1996 год — был первым годом, когда компьютер фактически выиграл в противостоянии с действующим чемпионом мира. Победа потрясла мир, поскольку это означало, что человечество создало разумную машину. Каспаров обвинил IBM в обмане, утверждая, что реальные шахматисты, скрыто, участвовали в игре. Однако, компания отрицала все обвинения. Каспаров потребовал матч-реванш, но IBM отказали и разобрали машину. В наше время компьютеры регулярно используются профессиональными шахматистами в качестве учебных партнеров, и проводятся даже чемпионаты мира для шахматных программ. Именно этот вклад в историю шахмат, побудил нас включить Deep Blue в этот список.', NULL, NULL),
(7, 'Бобби Фишер', 'США', '1943-2008', 'Еще один игрок, который претендует на звание самого великого игрока всех времен. Самым страшным врагом Бобби Фишера был он сам. С 14 лет, Фишер выиграл 8 американских Чемпионатов, включая турнир 1963-1964 года, со счетом 11:0 – самым удачным счетом в его жизни. В 15 лет он стал самым молодым гроссмейстером. К началу 70-х годов, он выигрывал по 20 матчей подряд. В 1972 году он выиграл чемпионат мира у Бориса Спасского из СССР (самого большого его конкурента). Многие рассматривали этот матч, как часть холодной войны. В 1975 году, Фишер не защищал свой титул из-за неспособности договориться об условиях с Международной Шахматной Федерацией, ответственной за профессиональные шахматы во всем мире. Он стал отшельником и ушел с международной шахматной арены, сыграв одну исключительную партию в 1992 году, со Спасским за 5 миллионов долларов. Это событие привело к аресту Фишера, после чего он больше так и не вернулся в США. Позднее, Фишер усугубил конфликт с правительством, часто публично делая антиамериканские и антисемитские заявления. Когда его паспорт, в конечном счете, был аннулирован, и он удерживался в Японии в течение 9 месяцев под угрозой выдачи, Исландия предоставила ему гражданство, там он и прожил вплоть до своей смерти 3 года спустя.', '2019-01-25 11:07:32', '2019-01-25 11:08:13');

-- --------------------------------------------------------

--
-- Структура таблицы `simple_page`
--

CREATE TABLE `simple_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `simple_page`
--

INSERT INTO `simple_page` (`id`, `name`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'index', 'Поговорим о шахматах', '<p>Шахматы — настольная логическая игра для двух человек со специальными фигурами и 64-клеточным полем. Шахматы сочетающая в себе элементы искусства (в части шахматной композиции), науки и спорта. Как вид спорта, шахматы имеют иерархию званий, развитую систему регулярных турниров, национальные и международные лиги.</p>\r\n                <p>Международная шахматная федерация (ФИДЕ, фр. Federation Internationale des Echecs, FIDE) — международная спортивная организация, которая занимается популяризацией шахмат, а также организацией международных соревнований и турниров. Объединяет в себе национальные шахматные федерации.</p>\r\n                <p>В шахматы могут играть также группы игроков, друг против друга или против одного игрока; такие игры обычно именуются консультационными. Существует также практика сеансов одновременной игры, когда один сильный игрок играет с несколькими противниками, с каждым на отдельной доске. Игра подчиняется определённым правилам; в официальных турнирах применяются правила ФИДЕ, которые регламентируют не только передвижение фигур, но и права судьи, правила поведения игроков. Игра по переписке, по телефону, в Интернете имеют особые правила. Существует множество вариантов шахмат с нестандартными правилами, фигурами, размерами доски. Соответствующий раздел шахматной композиции — сказочные шахматы. В математике изучаются различные аспекты шахматной игры (например, классические «Задача о ходе коня» и «Задача о восьми ферзях»), в том числе с помощью компьютерного моделирования.</p>', NULL, NULL),
(2, 'history', 'История шахмат', '<p>Одна из самых древних и увлекательных игр – шахматы. Она известна в любом уголке земного шара, поэтому в мире есть десятки ее вариаций. Это не просто игра, ведь шахматы давно являются видом спорта и искусства. Шахматную разметку используют практически во всех сферах жизни, а алгоритм игры применяют в научных целях. Но где же находится ее родина и кто ее придумал? Однозначного и правдоподобного мнения до сих пор нет. Ученые спорят, выдвигая свои версии.</p>\r\n                <p>Некоторые издания с уверенностью заявляют, что шахматы появились в Индии где-то в VI веке н. э. Об этом еще в начале XX века можно было прочесть в книге Гарольда Мюррея «История шахмат». Да, изобрели игру именно там и в то время, но придумали ее намного раньше. Ученые всерьез взялись за исследование этой темы и нашли много самых разных версий, которые порой удивляют фактами.</p>\r\n                <p>Если рассматривать Индию в качестве прародительницы шахмат, стоит вспомнить известную легенду о радже и брамине. После многочисленных походов, побед и поражений властелин устал и загрустил. Раджа велел своими советникам и мудрецам придумать ему забаву, на что отвел 3 дня и ночи. Никто не смог удовлетворить его и заинтересовать, кроме скромного крестьянина, который принес доску с клеточками и деревянными фигурками. Когда раджа узнал условия игры, радости его не было границ.</p>\r\n                <p>Это было то, что так долго они пытался найти. Взамен крестьянин потребовал скромную награду – несколько зернышек пшеницы. Но поставил условие: количество должно возрастать с каждой клеткой доски (1 клетка – 1 зернышко, 2 клетки – 2, 3 клетки – 22, 4 клетки – 23, …, 64 клетка – 264). Раджа сначала высмеял глупого брамина, но только потом он понял свою ошибку. На всей планете такого количества зерна нет, ведь после подсчетов конечная сумма равна – 1,8*1019. Эта доска и была полем боя современных шахмат, что в переводе с персидского – “смерть короля”.</p>\r\n                <p>Есть и другой вариант – корейская легенда. Когда-то 4500 лет назад прототипом современных шахмат стала игра, которую придумал грозный царь Месопотамии Раван для своей любимой жены Мандодари. Ему приходилось долгое время отсутствовать из-за многочисленных походов, поэтому его супруга часто грустила. Шахматы настолько заинтересовали всех жителей дворца, что они распространились по всему миру (Индия, Китай, Корея).</p>\r\n                <p>Любопытно, но этому есть реальное документальное подтверждение. В начале XX века фон Борк доказал наличие прототипа игры. По его сведениям она появилась в 1250 году до н. э. в Индостане. В нее играли представители местного племени, позаимствовавшие древнюю забаву в Эламе (нынешний юго-запад Ирана).</p>\r\n                <p>Теперь точно установить это невозможно, ведь в то время под словом шахматы люди могли объединить разные игры: кости, нарды, чаупара или пачизи. У всех этих вариантов есть одно общее – квадратная или крестообразная доска. Нам остается только угадывать, что из них было первым.</p>', NULL, NULL),
(3, 'rules', 'Правила игры', '<p>Для начала стоит сказать, что шахматы представляют собой игру с участием двух человек. Фигуры, которыми они ходят, располагаются на разных сторонах доски, которая содержит 64 поля черного и белого цветов.</p>\r\n                <p>По 64 квадратам доски поочередно двигаются разные фигуры. Начинается игра с правильной установки доски. Необходимо, чтобы нижнем углу с правой стороны у каждого из игроков был квадрат белого цвета, соответственно, с левой – черного цвета.</p>\r\n                <p>Шахматная доска по горизонтали помечена буквами от a до h, в вертикальном направлении – цифрами от 1 до 8. Именно с их помощью осуществляется запись текущей партии.</p>\r\n                <h4>Смысл игры в шахматы</h4>\r\n                <p>Когда имеет место начало партии, на обеих сторонах стоит по 16 фигур. Основной целью игры является мат короля противника. Мат в данном случае представляет собой ситуацию, при которой король противника не может уйти от шаха. Такая ситуация имеет место быть лишь тогда, когда вокруг все клетки заняты своими фигурами, либо они расположены под ударом соперника. Также мат возможен, если невозможно закрыться от шаха другой фигурой либо вы сами не можете взять фигуру, которая объявила шах.</p>\r\n                <h4>Расстановка фигур в шахматах</h4>\r\n                <p>Если вы не знаете как расставить шахматы на доске, то почитайте этот абзац. Соперники играют по разные стороны доски, один из них ходит белыми фигурами, второй – черными. Фигуры в каждой партии расставляются одинаково следующим образом:</p>\r\n                <ul>\r\n                    <li>Линии номер 2 и 7 – пешки;</li>\r\n                    <li>Углы доски – ладьи;</li>\r\n                    <li>Рядом с ладьями – кони;</li>\r\n                    <li>Рядом с конями – слоны;</li>\r\n                    <li>Посередине – ферзь (должен стоять на клетке идентичного с ним цвета: белый – на белой, черный – на черной);</li>\r\n                    <li>Рядом с ферзем стоит король.</li>\r\n                </ul>\r\n                <p>Первый ход в партии достается игроку с белыми фигурами (решение о том, кто какими фигурами играет, принимается с помощью жребия). Итак, вначале ходят белые фигуры, потом черные, затем снова белые, потом черные и т.д.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dreik84', 'dreik84@mail.ru', NULL, '$2y$10$lEFACGSb4LVQdYFJc/FbeOQoAbL0U3dAY9tFy8jl3IdypPUFEhllS', 'cgh6tgMi5J4N6iQRDaPSd6woSnguhtUn3PinXyIBRUYXcjUckHRiBeGiiAfw', '2019-01-10 07:58:44', '2019-01-10 07:58:44'),
(2, 'Vasya', 'vasya@mail.ru', NULL, '$2y$10$p09XWQXj82A2JQLy7iCPNOSKMU.om39cckKIQfBQeblWll69xXgdi', '1PThIHbXX5fTtW0zvCmXjv67LFgxLfEY07kU8zRyOlYyciGEDqm0ea3xsDzc', '2019-01-27 08:30:39', '2019-01-27 08:30:39'),
(3, 'John', 'john@gmail.com', NULL, '$2y$10$iI4QxLv0p9tscW3QqObgVejLiLmuC9d.DfrNQfB4HDoUCOouEWnoO', NULL, '2019-01-27 08:31:10', '2019-01-27 08:31:10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fact`
--
ALTER TABLE `fact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `simple_page`
--
ALTER TABLE `simple_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `simple_page_models_name_unique` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fact`
--
ALTER TABLE `fact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `simple_page`
--
ALTER TABLE `simple_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
