<?php
class Article extends AppModel {
	var $name = 'Article';
	var $validate = array(
		'article_type_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'category_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'This is required',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'article_name' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'This is required',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'keywords' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'This is required',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'article_template_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'user_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'news_type_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'modified_by' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'url' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'This is required',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'position' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'This is required',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'ArticleType' => array(
			'className' => 'ArticleType',
			'foreignKey' => 'article_type_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Category' => array(
			'className' => 'Category',
			'foreignKey' => 'category_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'ArticleTemplate' => array(
			'className' => 'ArticleTemplate',
			'foreignKey' => 'article_template_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'NewsType' => array(
			'className' => 'NewsType',
			'foreignKey' => 'news_type_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	var $hasMany = array(
		'ArticleCategory' => array(
			'className' => 'ArticleCategory',
			'foreignKey' => 'id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	function strip_content_old($blogg)
	{
		if(isset($limit))
		{
			unset($limit);
		}
		if(strlen($blogg)>500)
		{
			if(@strpos($blogg, "</div>", 500)>0)
			{
				$limit=strpos($blogg, "</div>", 500)+6;
			}
			elseif(@strpos($blogg, "</p>", 500)>0)
			{
				$limit=strpos($blogg, "</p>", 500)+4;
			}
			if(!isset($limit) || (@strpos($blogg, "<br>", 500)>0 && $limit>900))
			{
				$limit=@strpos($blogg, "<br>", 500)+4;
			}
			if(!isset($limit) || $limit>900)
			{
				//$limit=900;
			}
		}
		if(isset($limit) && $limit>=500)
		{
			return substr($blogg, 0, $limit);
			//return $blogg;
		}
		else
		{
			return $blogg;
		}
	}
	function strip_content($topic, $remove_a=0)
	{
		$limit=500;
		$topic_original="";
		if(strlen($topic)>$limit)
		{
			while(strlen($topic)>0)
			{
				$pos=strpos($topic, "<");
				if($pos>-1)
				{
					$visible_content=substr($topic, 0, $pos);
					if(strlen($topic_original)<$limit)
					{
						$topic_original=$topic_original.$visible_content;
						if(strlen($topic_original)>=$limit)
						{
							$topic_original=substr($topic_original, 0, $limit)."...";
						}
					}
					$topic=substr($topic, $pos);
					$pos=strpos($topic, ">");
					if($pos>-1)
					{
						$topic_original=$topic_original.substr($topic, 0, $pos+1);
						$topic=substr($topic, $pos+1);
					}
				}
				else
				{
					$visible_content=$topic;
					$topic="";
					if(strlen($topic_original)<$limit)
					{
						$topic_original=$topic_original.$visible_content;
						if(strlen($topic_original)>=$limit)
						{
							$topic_original=substr($topic_original, 0, $limit)."...";
						}
					}
				}
			}
			$topic=$topic_original.$topic;		
		}
		return $topic;
	}
}
