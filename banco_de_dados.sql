-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para acme
CREATE DATABASE IF NOT EXISTS `acme` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `acme`;

-- Copiando estrutura para tabela acme.ci_sessions
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) COLLATE latin1_general_ci NOT NULL,
  `ip_address` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela acme.ci_sessions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

-- Copiando estrutura para tabela acme.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` varchar(500) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `favorito` tinyint(4) DEFAULT 0,
  `valor` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela acme.produto: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`id`, `imagem`, `nome`, `descricao`, `favorito`, `valor`) VALUES
	(1, 'https://picsum.photos/85913260/picsum/200/300', 'Machado romântico', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Qui non moveatur et offensione turpitudinis et comprobatione honestatis? Pauca mutat vel plura sane; Nam ante Aristippus, et ille melius. Itaque hic ipse iam pridem est reiectus; Duo Reges: constructio interrete. \n\n', 0, '10'),
	(2, 'https://picsum.photos/99768314/picsum/200/300', 'Gaveta gordo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bonum integritas corporis: misera debilitas. Eam stabilem appellas. Sed haec omittamus; \n\n', 0, '-19.416666'),
	(3, 'https://picsum.photos/41849046/picsum/200/300', 'Vaso sanitário traidor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non est igitur voluptas bonum. Duo Reges: constructio interrete. Istam voluptatem, inquit, Epicurus ignorat? Dempta enim aeternitate nihilo beatior Iuppiter quam Epicurus; \n\n', 0, '-17.135964'),
	(4, 'https://picsum.photos/41977763/picsum/200/300', 'Grampo horroroso', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc haec primum fortasse audientis servire debemus. Non est igitur voluptas bonum. An eiusdem modi? Duo Reges: constructio interrete. Apparet statim, quae sint officia, quae actiones. Hoc est non dividere, sed frangere. \n\n', 0, '-2.7075812'),
	(5, 'https://picsum.photos/24238127/picsum/200/300', 'Peneira tolerante', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Summum ením bonum exposuit vacuitatem doloris; Duo Reges: constructio interrete. Quid adiuvas? Ut optime, secundum naturam affectum esse possit. Nosti, credo, illud: Nemo pius est, qui pietatem-; \n\n', 0, '-286.28571'),
	(6, 'https://picsum.photos/71035031/picsum/200/300', 'Grampo desejado', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Qui est in parvis malis. Id est enim, de quo quaerimus. Quid enim? Duo Reges: constructio interrete. Sed quod proximum fuit non vidit. Num quid tale Democritus? Paria sunt igitur. \n\n', 0, '271'),
	(7, 'https://picsum.photos/83326411/picsum/200/300', 'Cofre faceiro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc omni virtuti vitium contrario nomine opponitur. Aliter homines, aliter philosophos loqui putas oportere? \n\n', 0, '263.117647'),
	(8, 'https://picsum.photos/37243047/picsum/200/300', 'Carretel romântico', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non risu potius quam oratione eiciendum? Duo Reges: constructio interrete. Eiuro, inquit adridens, iniquum, hac quidem de re; Tum ille: Ain tandem? \n\n', 0, '516.090909'),
	(9, 'https://picsum.photos/6047493/picsum/200/300', 'Fita mesquinho', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cur deinde Metrodori liberos commendas? Haec quo modo conveniant, non sane intellego. Quippe: habes enim a rhetoribus; Si quae forte-possumus. Quorum sine causa fieri nihil putandum est. Qui est in parvis malis. \n\n', 0, '210.375'),
	(10, 'https://picsum.photos/93318931/picsum/200/300', 'Escudo Natural', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Qui ita affectus, beatum esse numquam probabis; Paria sunt igitur. Sed virtutem ipsam inchoavit, nihil amplius. Quibus ego vehementer assentior. Minime vero istorum quidem, inquit. Quis istud possit, inquit, negare? \n\n', 0, '206.875'),
	(11, 'https://picsum.photos/58089690/picsum/200/300', 'Cofre amargurado', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At certe gravius. Duo Reges: constructio interrete. Estne, quaeso, inquam, sitienti in bibendo voluptas? Quae diligentissime contra Aristonem dicuntur a Chryippo. Quaerimus enim finem bonorum. Illi enim inter se dissentiunt. \n\n', 0, '256.857142'),
	(12, 'https://picsum.photos/67885878/picsum/200/300', 'Vareta de freio ignorante', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in rebus apertissimis nimium longi sumus. Equidem e Cn. At ego quem huic anteponam non audeo dicere; Quid ait Aristoteles reliquique Platonis alumni? Duo Reges: constructio interrete. Tuo vero id quidem, inquam, arbitratu. \n\n', 0, '1080'),
	(13, 'https://picsum.photos/40888869/picsum/200/300', 'Espanador sublime', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cyrenaici quidem non recusant; Ac tamen hic mallet non dolere. Istam voluptatem, inquit, Epicurus ignorat? Duo Reges: constructio interrete. Nonne igitur tibi videntur, inquit, mala? Quid Zeno? Itaque his sapiens semper vacabit. \n\n', 0, '287.230769'),
	(14, 'https://picsum.photos/29972152/picsum/200/300', 'Foguete vergonhoso', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suo genere perveniant ad extremum; Ego vero isti, inquam, permitto. Vide, quaeso, rectumne sit. Quod iam a me expectare noli. Animi enim quoque dolores percipiet omnibus partibus maiores quam corporis. Quis est tam dissimile homini. \n\n', 0, '322'),
	(15, 'https://picsum.photos/69135522/picsum/200/300', 'Gel odioso', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quo modo? Tu enim ista lenius, hic Stoicorum more nos vexat. Tanta vis admonitionis inest in locis; Et harum quidem rerum facilis est et expedita distinctio. Si longus, levis; Quis hoc dicit? \n\n', 0, '134.5'),
	(16, 'https://picsum.photos/39153398/picsum/200/300', 'Mala feio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quid Zeno? Quis Aristidem non mortuum diligit? Iam in altera philosophiae parte. Restatis igitur vos; \n\n', 0, '155.29'),
	(17, 'https://picsum.photos/56089550/picsum/200/300', 'Moeda Sábio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ne discipulum abducam, times. Pauca mutat vel plura sane; Ergo, inquit, tibi Q. Memini vero, inquam; \n\n', 0, '236.67'),
	(18, 'https://picsum.photos/67276314/picsum/200/300', 'Guarda-chuva próspero', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quacumque enim ingredimur, in aliqua historia vestigium ponimus. Hoc est non dividere, sed frangere. \n\n', 0, '945'),
	(19, 'https://picsum.photos/83122023/picsum/200/300', 'Hidroavião lutador', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id mihi magnum videtur. Sint modo partes vitae beatae. Duo Reges: constructio interrete. Sed videbimus. Istic sum, inquit. \n\n', 0, '559.27');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
