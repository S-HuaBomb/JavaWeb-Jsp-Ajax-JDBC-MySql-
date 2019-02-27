SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `mynews`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `authority`
--

CREATE TABLE IF NOT EXISTS `authority` (
  `newsId` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`newsId`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `authority`
--

INSERT INTO `authority` (`newsId`, `username`) VALUES
('20190226102755', '余子毅'),
('20190226121523', '马柯杰'),
('20190226122621', '何龙'),
('20190226130419', '姚煜'),
('20190226150207', '胡浩'),
('20190226180100', 'user'),
('20190226195856', '张佳旗'),
('20190226210450', 'user');


-- --------------------------------------------------------

--
-- 表的结构 `check_pending`
--

CREATE TABLE IF NOT EXISTS `check_pending` (
  `newsId` varchar(30) NOT NULL,
  `head` varchar(100) NOT NULL,
  `content` varchar(8000) NOT NULL,
  `publish_time` varchar(30) NOT NULL,
  `issueuser` varchar(30) NOT NULL,
  `newstype` varchar(30) NOT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `check_pending`
--

INSERT INTO `check_pending` (`newsId`, `head`, `content`, `publish_time`, `issueuser`, `newstype`) VALUES
('20190225110412', 'arti', '12345', '2019-02-25 11:04:12', '', '000000');

-- --------------------------------------------------------

--
-- 表的结构 `dustbin`
--

CREATE TABLE IF NOT EXISTS `dustbin` (
  `newsId` varchar(30) NOT NULL,
  `head` varchar(100) NOT NULL,
  `content` varchar(8000) NOT NULL,
  `publish_time` varchar(30) NOT NULL,
  `issueuser` varchar(30) NOT NULL,
  `newstype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dustbin`
--

INSERT INTO `dustbin` (`newsId`, `head`, `content`, `publish_time`, `issueuser`, `newstype`) VALUES
('20190207120506测试者', '审核测试通过', '测试', '2019-02-07 12:05:06', '测试者', '审核测试'),
('20190207140506测试者', '测试者的第一篇文章', '第一篇文章', '2019-02-07 12:05:06', '测试者', '修改测试'),
('20190207150506测试者', '测试者的第二篇文章', '第二篇文章\n测试用例', '2019-02-07 12:05:06', '测试者', '问题求助'),
('20190207160506测试者', '测试者的第二篇文章', '评价', '2019-02-07 12:05:06', '测试者', '问题解答');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `newsId` varchar(30) CHARACTER SET utf8 NOT NULL,
  `head` varchar(200) CHARACTER SET utf8 NOT NULL,
  `content` varchar(8000) CHARACTER SET utf8 NOT NULL,
  `publish_time` varchar(30) CHARACTER SET utf8 NOT NULL,
  `issueuser` varchar(32) CHARACTER SET utf8 NOT NULL,
  `newstype` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`newsId`, `head`, `content`, `publish_time`, `issueuser`, `newstype`) VALUES
('20191030220853user', '2019ceshier', 'qweqweqweqweqwwe', '2019-10-30 22:11:51', 'user', '123'),
('20190209122100测试者', '如何使用Tomcat', 'Tomcat是Apache 软件基金会（Apache Software Foundation）的Jakarta 项目中的一个核心项目，由Apache、Sun 和其他一些公司及个人共同开发而成。由于有了Sun 的参与和支持，最新的Servlet 和JSP 规范总是能在Tomcat 中得到体现，Tomcat 5支持最新的Servlet 2.2 和JSP 2.0 规范。因为Tomcat 技术先进、性能稳定，而且免费，因而深受Java 爱好者的喜爱并得到了部分软件开发商的认可，成为目前比较流行的Web 应用服务器。\nTomcat 服务器是一个免费的开放源代码的Web 应用服务器，属于轻量级应用服务器，在中小型系统和并发访问用户不是很多的场合下被普遍使用，是开发和调试JSP 程序的首选。对于一个初学者来说，可以这样认为，当在一台机器上配置好Apache 服务器，可利用它响应HTML（标准通用标记语言下的一个应用）页面的访问请求。实际上Tomcat 部分是Apache 服务器的扩展，但它是独立运行的，所以当你运行tomcat 时，它实际上作为一个与Apache 独立的进程单独运行的。\n诀窍是，当配置正确时，Apache 为HTML页面服务，而Tomcat 实际上运行JSP 页面和Servlet。另外，Tomcat和IIS等Web服务器一样，具有处理HTML页面的功能，另外它还是一个Servlet和JSP容器，独立的Servlet容器是Tomcat的默认模式。不过，Tomcat处理静态HTML的能力不如Apache服务器。目前Tomcat最新版本为9.0。', '2019-02-09 12:21:00', 'liyongzhi', '测试文章'),
('20190210112918测试者', '审核文章演示', 'n.	过程; 工序; 做事方法; 工艺流程;\nvt.	处理; 加工; 审阅; 审核;\nvi.	列队行进;\n[例句]There was total agreement to start the peace process as soon as possible\n全体一致同意尽快开始和平进程。\n[其他]	第三人称单数：processes 复数：processes 现在分词：processing 过去式：processed 过去分词：processed', '2019-02-10 11:29:18', 'liyongzhi', '测试文章'),
('20190209125222user', '测试', '简单的测试而已', '2019-02-09 12:52:22', '测试者', '测试文章'),
('20190209122320测试者', '修改测试文章', '这是用于修改测试的文章', '2019-02-09 12:23:20', '测试者', '测试文章'),
('20190209122353测试者', '审核测试文章', '这是一篇用于审核测试的文章', '2019-02-09 12:23:53', '测试者', '测试文章'),
('20190209122125测试者', '授权测试文章', '这是用户授权测试的文章', '2019-02-09 12:21:25', '测试者', '测试文章'),
('20190209122225测试者', '测试文章', '这是用于测试回收站功能的文章', '2019-02-09 12:22:25', '测试者', '测试文章'),
('20190209152355测试者', '测试发布', '独守空房萨克的房间立刻束带结发', '2019-02-09 15:23:55', '测试者', '测试文章'),
('20190209125209测试者', '审核测试通过', '审核测试通过', '2019-02-09 12:52:09', '测试者', '测试文章'),
('20190209122925user', '测试用户第一篇测试', 'SQL嵌套SELECT语句又称为子查询，子查询不但能够出现在Where子句中，也能够出现在from子句中，作为一个临时表使用，也能够出现在select list中，作为一个字段值来返回。111\nAD：51CTO 网  第十二期沙龙：大话数据之美_如何用数据驱动用户体验\nSQL嵌套SELECT语句是很常见的SQL语句，下面就为您详细介绍SQL嵌套SELECT语句的语法，并附相关示例，供您参考学习之用。\n\n嵌套SELECT语句也叫子查询，一个SELECT 语句的查询结果能够作为另一个语句的输入值。子查询不但能够出现在Where子句中，也能够出现在from子句中，作为一个临时表使用，也能够出现在select list中，作为一个字段值来返回。\n\n1、单行子查询 ：单行子查询是指子查询的返回结果只有一行数据。当主查询语句的条件语句中引用子查询结果时可用单行比较符号（＝, >, <, >=, <=, <>）来进行比较。\n\n例：\n\nselect ename,deptno,sal   \nfrom emp   \nwhere deptno=(select deptno from dept where loc=''NEW YORK'')；  \n2、多行子查询：多行子查询即是子查询的返回结果是多行数据。当主查询语句的条件语句中引用子查询结果时必须用多行比较符号（IN，ALL,ANY）来进行比较。其中，IN的含义是匹配子查询结果中的任一个值即可（"IN" 操作符，能够测试某个值是否在一个列表中），ALL则必须要符合子查询的所有值才可，ANY要符合子查询结果的任何一个值即可。而且须注意ALL 和ANY 操作符不能单独使用，而只能与单行比较符（=、>、< 、>= 、<= 、<>）结合使用。\n\n例：\n\n1）.多行子查询使用IN操作符号例子：查询选修了老师名叫Rona(假设唯一)的学生名字', '2019-10-30 22:01:32', 'user', '测试文章');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('user', 'user'),
('useruser', 'useruser');

-- --------------------------------------------------------

--
-- 表的结构 `userAuthor`
--

CREATE TABLE IF NOT EXISTS `userAuthor` (
  `username` varchar(32) CHARACTER SET utf8 NOT NULL,
  `newsId` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`username`,`newsId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
