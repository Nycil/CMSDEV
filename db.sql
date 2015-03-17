CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `article_name` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `content` blob NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` blob NOT NULL,
  `article_template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `news_type_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `pagetitle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=248 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles3`
--

CREATE TABLE IF NOT EXISTS `articles3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `article_name` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `content` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` blob NOT NULL,
  `article_template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `news_type_id` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `pagetitle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE IF NOT EXISTS `article_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_comments`
--

CREATE TABLE IF NOT EXISTS `article_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_by` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_templates`
--

CREATE TABLE IF NOT EXISTS `article_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `article_types`
--

CREATE TABLE IF NOT EXISTS `article_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `attorneys`
--

CREATE TABLE IF NOT EXISTS `attorneys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attorney_full_name` varchar(255) NOT NULL,
  `attorney_image` varchar(255) NOT NULL,
  `attorney_image184` varchar(255) NOT NULL,
  `attorney_image92` varchar(255) NOT NULL,
  `attorney_type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `education` tinyblob NOT NULL,
  `bar_admission` blob NOT NULL,
  `biography` blob NOT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

-- --------------------------------------------------------

--
-- Table structure for table `attorney_categories`
--

CREATE TABLE IF NOT EXISTS `attorney_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attorney_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `chair` tinyint(4) NOT NULL,
  `co_chair` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=497 ;

-- --------------------------------------------------------

--
-- Table structure for table `attorney_types`
--

CREATE TABLE IF NOT EXISTS `attorney_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attorney_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category_verdict` blob NOT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `pagetitle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100039 ;

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

CREATE TABLE IF NOT EXISTS `category_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `attorney_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=171 ;

-- --------------------------------------------------------

--
-- Table structure for table `home_rotator`
--

CREATE TABLE IF NOT EXISTS `home_rotator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `writer` int(11) NOT NULL,
  `content` blob NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `news_types`
--

CREATE TABLE IF NOT EXISTS `news_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_status` tinyint(4) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_turn_option` int(11) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `default_page_title` varchar(255) NOT NULL,
  `default_keywords` varchar(255) NOT NULL,
  `default_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) NOT NULL,
  `permission_catogories` tinyint(4) NOT NULL,
  `permission_pages` tinyint(4) NOT NULL,
  `permission_news` tinyint(4) NOT NULL,
  `permission_attorneys` tinyint(4) NOT NULL,
  `permission_home_rotator` tinyint(4) NOT NULL,
  `permission_static_pages` tinyint(4) NOT NULL,
  `modification_email_status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

INSERT INTO `categories` (`id`, `category_name`, `link_title`, `content`, `category_verdict`, `position`, `url`, `keywords`, `description`, `pagetitle`) VALUES
(100001, 'Personal Injury', '', '', 0x3c703e54686973206973203c7374726f6e673e6a3c7370616e207374796c653d22636f6c6f723a20236666303030303b20666f6e742d73697a653a206c617267653b223e616b71756573206b616c6c69733c2f7370616e3e3c2f7374726f6e673e20737065616b696e672e3c2f703e0d0a3c703e4920616d2066696e6520616e6420686f772061726520796f753c696d67207469746c653d224e696167617261206661696c6c7322207372633d22687474703a2f2f6f6c64666163742e6f72672f74726176656c2f6e6961676172612f6e69616761726146616c6c732e6a70672220616c743d224e696167617261206661696c6c73222077696474683d2234313022206865696768743d2231393922202f3e3c2f703e0d0a3c703e5468616e6b20796f753c2f703e, 14, '', '', '', ''),
(99999, 'Personal Injury', '', '', '', 14, '', '', '', ''),
(100030, 'World News', 'black-world-news-facts', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 20, 'World-News', 'black world news', 'black world news', 'Black World News Facts Delivered Daily To You'),
(100031, 'Entertainment', 'black-entertainment-current-news-facts', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 30, 'Entertainment', '', '', ''),
(100032, 'Living', 'living-news-in-the-black-community-facts', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 40, 'Living', '', '', ''),
(100033, 'Sports', 'black-sports-current-news-facts', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 60, 'Sports', 'black sports, black sports news', 'Current Black Sports News', 'Black Sports News & Facts'),
(100034, 'Opinion', 'opinions-about-current-black-news-and-events-facts', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 70, 'Opinion', '', '', ''),
(100035, 'Black Political News, Facts and Articles', 'Black-politics-news-facts', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 10, 'Black-Political-News,-Facts-and-Articles', 'Black Political Facts and Articles', 'Black Political Facts and Articles', 'Black Political Facts and Articles'),
(100036, 'National Black News ', 'National Black News Articles and Facts', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 21, 'National-Black-News-', 'national black news', 'National Black News Articles and Facts', 'National Black News Articles and Facts'),
(100037, 'Business', 'Black business news facts articles', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 70, 'Business', 'Black business news facts articles', 'Black business news facts articles', 'Black business news facts articles'),
(100038, 'Health ', 'Health in the black community news facts articles', '<h3>Study: Binge-watching could be sign of depression</h3>\r\n<script type="text/javascript" src="http://i.cdn.turner.com/cnn/van/resources/scripts/van-widgets.js"></script>\r\n<div data-cnnvansinglewidget="" data-affiliate="cmsonly" data-videoid="health/2015/02/16/pkg-darlington-brazil-toxic-cosmetic-surgery.cnn" data-size="675px" data-autostart="true">&nbsp;</div>\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<div class="rc">\r\n<p><img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" />&nbsp;</p>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more</p>\r\n<p>&nbsp;<img src="../../../app/webroot/img/gallery/Image/3184_10010624_my.png" alt="" width="615" height="100" /></p>', '', 50, 'Health-', 'Health in the black community news facts articles', 'Health in the black community news facts articles', 'Health in the black community news facts articles'),
(99997, 'Personal Injury', '', '', '', 14, '', '', '', ''),
(99998, 'Personal Injury', '', '', '', 14, '', '', '', '');

--
-- Dumping data for table `category_images`
--

INSERT INTO `category_images` (`id`, `category_id`, `article_id`, `attorney_id`, `image`, `position`) VALUES
(62, 1, 0, 0, '672-divorce-law-new-york-lawyer.jpg', 1),
(24, 0, 0, 0, '832-Autumn Leaves0001.jpg', 45),
(11, 100002, 0, 0, '701-Creek.jpg', 14),
(70, 100004, 0, 0, '509-bankruptcy-law-new-york-lawyer.jpg', 1),
(150, 99998, 0, 0, '682-Heatlh 1 - Current black health news.jpg', 21),
(140, 100029, 0, 0, '883-black-politics-news-facts.jpg', 1),
(157, 0, 242, 0, '352-African News 1 - Black News from the African Continent.jpg', 1),
(168, 100037, 0, 0, '300-Business 1 Black Business News Facts.jpg', 2),
(77, 100003, 0, 0, '739-fashion-law-new-york-lawyer.jpg', 1),
(75, 100007, 0, 0, '451-divorce-law-new-york-lawyer.jpg', 1),
(50, 0, 37, 0, '855-Home-1.jpg', 1),
(76, 5, 0, 0, '661-employment-law-new-york-lawyer.jpg', 1),
(72, 100009, 0, 0, '482-commercial-law-new-york-lawyer.jpg', 1),
(71, 100008, 0, 0, '658-commercial-banking-finance-law.jpg', 1),
(73, 100006, 0, 0, '797-construction-law-new-york-lawyer.jpg', 1),
(74, 100010, 0, 0, '634-corporate-law-new-york-lawyer.jpg', 1),
(78, 100011, 0, 0, '771-government-relations-new-york-lawyer.jpg', 1),
(79, 100012, 0, 0, '345-health-law-new-york-lawyer.jpg', 1),
(80, 100013, 0, 0, '221-intellectual-property-law-new-york-lawyer.jpg', 1),
(81, 100014, 0, 0, '835-land-use-new-york-lawyer.jpg', 1),
(82, 100015, 0, 0, '171-outdoor-advertising-new-york-lawyer.jpg', 1),
(83, 100016, 0, 0, '373-real-estate-law-new-york-lawyer.jpg', 1),
(84, 100017, 0, 0, '714-restaurant-and-hospitality-law-new-york-lawyer.jpg', 1),
(85, 100018, 0, 0, '947-will-and-estates-law-new-york-lawyer.jpg', 1),
(86, 0, 21, 0, '938-contact-us-new-york-lawyer.jpg', 1),
(142, 0, 14, 0, '382-hpg1 - current black news facts.jpg', 0),
(143, 0, 14, 0, '163-hpg2 - for black news and facts in new york.jpg', 10),
(144, 0, 14, 0, '471-hpg3 - black finance news facts.jpg', 20),
(147, 99998, 0, 0, '220-banner2.jpg', 1),
(148, 99998, 0, 0, '353-banner3.jpg', 30),
(149, 100001, 0, 0, '769-World News 1 - black news all over the world.jpg', 40),
(151, 99998, 0, 0, '893-Business 1 Black Business News Facts.jpg', 22),
(156, 99998, 0, 0, '413-Living 1 - black living news facts.jpg', 30),
(155, 99998, 0, 0, '157-African News 1 - Black News from the African Continent.jpg', 27),
(104, 0, 38, 0, '559-practice-areas-new-york-lawyer.jpg', 1),
(146, 99998, 0, 0, '683-banner1.jpg', 2),
(108, 0, 0, 0, '310-dmlegal1.jpg', 56),
(109, 0, 0, 0, '820-dmlegal1.jpg', 6),
(110, 0, 0, 0, '193-Autumn Leaves0001.jpg', 2),
(131, 100028, 0, 0, '421-dmlegal2.jpg', 3),
(119, 0, 49, 0, '104-dmlegal2.jpg', 2),
(170, 99999, 0, 0, '111-banner1.jpg', 1),
(126, 100022, 0, 0, '150-art-lawyer-new-york.jpg', 1),
(127, 100021, 0, 0, '191-art law.JPG', 1),
(128, 100023, 0, 0, '336-art-lawyer-new-york.jpg', 1),
(129, 100024, 0, 0, '851-insurance-litigation-lawyer-new-york.jpg', 0),
(132, 100028, 0, 0, '728-dmlegal1.jpg', 4),
(134, 99997, 0, 0, '817-dmlegal2.jpg', 3),
(135, 0, 241, 0, '442-dmlegal2.jpg', 5),
(159, 100032, 0, 0, '187-Living 1 - black living news facts.jpg', 1),
(160, 100038, 0, 0, '306-Heatlh 1 - Current black health news.jpg', 1),
(161, 100038, 0, 0, '832-Heatlh 2 - healthy news for the black community in new york city and state.jpg', 20),
(162, 100038, 0, 0, '829-Heatlh 2 - healthy news for the black community in new york city and state.jpg', 20),
(164, 99998, 0, 0, '390-Heatlh 2 - healthy news for the black community in new york city and state.jpg', 70),
(166, 100035, 0, 0, '365-hpg1 - current black news facts.jpg', 1),
(167, 0, 30, 0, '375-hpg2 - for black news and facts in new york.jpg', 1),
(169, 100037, 0, 0, '771-Business Tech.jpg', 0);