<?php
class CategoryImage extends AppModel {
	var $name = 'CategoryImage';
	var $validate = array(
		'category_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'image' => array(
			'rule' => array('extension', array('gif', 'jpeg', 'png', 'jpg')),
			'message' => 'Please supply a valid image.'
		),
		'position' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'Please Enter Position',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Category' => array(
			'className' => 'Category',
			'foreignKey' => 'category_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	function isUploadedFile($params)
	{
		$val = array_shift($params);
		if ((isset($val['error']) && $val['error'] == 0) ||
		(!empty( $val['tmp_name']) && $val['tmp_name'] != 'none')) {
		return is_uploaded_file($val['tmp_name']);
		}
		return false;
	}
}
