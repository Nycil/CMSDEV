<?php
class SiteSetting extends AppModel {
	var $name = 'SiteSetting';
	var $validate = array(
		'contact_email' => array(
			'notempty' => array(
				'rule' => array('email'),
				'message' => 'Please Enter a valid Email',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	
	function getValues() 
	{
		$SiteSetting = $this->find('all',array('conditions'  => array("id" =>"1")));
		$SiteSettings=$SiteSetting[0]['SiteSetting'];
		$page_title=array($SiteSettings['default_page_title'], $SiteSettings['default_keywords'], $SiteSettings['default_description'], $SiteSettings['site_turn_option']);
		return $page_title;
	}
}