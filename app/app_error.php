<?php
class AppError extends ErrorHandler {
function error404($params) {

$this->controller->redirect(array('admin'=>true,'controller'=>'users','action'=>'login'));
//$this->controller->redirect(array(‘controller’=>’sitemaps’, ‘action’=>’index’));
parent::error404($params);
}

function missingController($params) {
$this->controller->redirect(array('admin'=>true,'controller'=>'users','action'=>'login'));
parent::error404($params);
}
}
?>