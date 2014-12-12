<?php

include_once('internal/Smarty.class.php');
$main_smarty = new Smarty;

include('config.php');
include(mnminclude.'html1.php');
include(mnminclude.'link.php');
include(mnminclude.'smartyvariables.php');
include_once(mnminclude.'user.php');

$vars = '';
check_actions('register_top', $vars);

$navwhere['text1'] = $main_smarty->get_config_vars('PLIGG_Visual_Breadcrumb_Register');
$navwhere['link1'] = getmyurl('register', '');
$main_smarty->assign('navbar_where', $navwhere);
$main_smarty->assign('posttitle', $main_smarty->get_config_vars('PLIGG_Visual_Breadcrumb_Register'));

// pagename
define('pagename', 'register');
$main_smarty->assign('pagename', pagename);
$main_smarty->assign('user_language', 'english');


// sidebar
$main_smarty = do_sidebar($main_smarty);

$pligg_regfrom = isset($_POST["regfrom"]) && sanitize($_POST['regfrom'], 3) != '' ? sanitize($_POST['regfrom'], 3) : '';
if ($pligg_regfrom != '') {
    $error = false;
    switch ($pligg_regfrom) {
        case 'full':
            $username = sanitize($_POST["reg_username"], 3);
            $email = sanitize($_POST["reg_email"], 3);
            $password = sanitize($_POST["reg_password"], 3);
            $password2 = sanitize($_POST["reg_password2"], 3);
            $user_language = sanitize($_POST["user_language"], 3);
            $user_nom = sanitize($_POST["reg_nom"], 3);
            $user_prenom = sanitize($_POST["reg_prenom"], 3);
            $user_datenaissance = sanitize($_POST["reg_datenaissance"], 3);
            $user_numerotel = sanitize($_POST["reg_numerotel"], 3);
            $user_codepostal = sanitize($_POST["reg_codepostal"], 3);
            $user_ville = sanitize($_POST["reg_ville"], 3);
            $user_pays = sanitize($_POST["reg_pays"], 3);
            $user_signature = sanitize($_POST["reg_signe"], 3);
            break;

        case 'sidebar':
            $username = sanitize($_POST["username"], 3);
            $email = sanitize($_POST["email"], 3);
            $password = sanitize($_POST["password"], 3);
            $password2 = sanitize($_POST["password2"], 3);
            break;
    }

    if (isset($username)) {
        $main_smarty->assign('reg_username', htmlspecialchars($username, ENT_QUOTES));
    }
    if (isset($email)) {
        $main_smarty->assign('reg_email', htmlspecialchars($email, ENT_QUOTES));
    }
    if (isset($password)) {
        $main_smarty->assign('reg_password', htmlspecialchars($password, ENT_QUOTES));
    }
    if (isset($password2)) {
        $main_smarty->assign('reg_password2', htmlspecialchars($password2, ENT_QUOTES));
    }
    if (isset($user_language)) {
        $main_smarty->assign('user_language', htmlspecialchars($user_language, ENT_QUOTES));
    }
    if (isset($user_nom)) {
        $main_smarty->assign('reg_nom', htmlspecialchars($user_nom, ENT_QUOTES));
    }
    if (isset($user_prenom)) {
        $main_smarty->assign('reg_prenom', htmlspecialchars($user_prenom, ENT_QUOTES));
    }
    if (isset($user_datenaissance)) {
        $main_smarty->assign('reg_datenaissance', htmlspecialchars($user_datenaissance, ENT_QUOTES));
    }
    if (isset($user_numerotel)) {
        $main_smarty->assign('reg_numerotel', htmlspecialchars($user_numerotel, ENT_QUOTES));
    }
    if (isset($user_codepostal)) {
        $main_smarty->assign('reg_codepostal', htmlspecialchars($user_codepostal, ENT_QUOTES));
    }
    if (isset($user_ville)) {
        $main_smarty->assign('reg_ville', htmlspecialchars($user_ville, ENT_QUOTES));
    }
    if (isset($user_pays)) {
        $main_smarty->assign('reg_pays', htmlspecialchars($user_pays, ENT_QUOTES));
    }

    $error = register_check_errors($username, $email, $password, $password2, $user_nom, $user_prenom, $user_datenaissance, $user_numerotel, $user_codepostal, $user_signature);

    if ($error == false) {
        register_add_user($username, $email, $password, $password2, $user_language, $user_nom, $user_prenom, $user_datenaissance, $user_numerotel, $user_codepostal, $user_ville);
    } else {
        //		print "Error";
        print_r($form_email_error);
    }
} else {
    $testing = false; // changing to true will populate the form with random variables for testing.
    if ($testing == true) {
        $main_smarty->assign('reg_username', mt_rand(1111111, 9999999));
        $main_smarty->assign('reg_email', mt_rand(1111111, 9999999) . '@test.com');
        $main_smarty->assign('reg_password', '12345');
        $main_smarty->assign('reg_password2', '12345');
    }
}

$vars = '';
check_actions('register_showform', $vars);

$main_smarty->assign('tpl_center', $the_template . '/register_center');
$main_smarty->display($the_template . '/pligg.tpl');

die();

function register_check_errors($username, $email, $password, $password2, $user_nom, $user_prenom, $user_datenaissance, $user_numerotel, $user_codepostal, $user_signature)
{
    global $main_smarty;

    require_once(mnminclude.'check_behind_proxy.php');
    $userip=check_ip_behind_proxy();
    if (is_ip_banned($userip)) {
        $form_username_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_YourIpIsBanned');
        $error = true;
    }

    if (!isset($username) || strlen($username) < 3) { // if no username was given or username is less than 3 characters
        $form_username_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_UserTooShort');
        $error = true;
    }
    if (preg_match('/\pL/u', 'a')) {    // Check if PCRE was compiled with UTF-8 support
        if (!preg_match('/^[_\-\d\p{L}\p{M}]+$/iu', $username)) { // if username contains invalid characters
        $form_username_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_UserInvalid');
            $error = true;
        }
    } else {
        if (!preg_match('/^[^~`@%&=\\/;:\\.,<>!"\\\'\\^\\.\\[\\]\\$\\(\\)\\|\\*\\+\\-\\?\\{\\}\\\\]+$/', $username)) {
            $form_username_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_UserInvalid');
            $error = true;
        }
    }
    if (user_exists(trim($username))) { // if username already exists
        $form_username_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_UserExists');
        $error = true;
    }
    if (!check_email(trim($email))) { // if email is not valid
        $form_email_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_BadEmail');
        $error = true;
    }
    if (email_exists(trim($email))) { // if email already exists
        $form_email_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_EmailExists');
        $error = true;
    }
    if (strlen($password) < 5) { // if password is less than 5 characters
        $form_password_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_FiveCharPass');
        $error = true;
    }
    if ($password !== $password2) { // if both passwords do not match
        $form_password_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_NoPassMatch');
        $error = true;
    }

    // nouveau champs m6r :

    // nom
    if (!isset($user_nom) || strlen($user_nom) < 2) { // if no user_nom was given or username is less than 2 characters
        $form_nom_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_NomTooShort');
        $error = true;
    }
    if (preg_match('/\pL/u', 'a')) {    // Check if PCRE was compiled with UTF-8 support
        if (!preg_match('/^[_\-\d\p{L}\p{M}]+$/iu', $user_nom)) { // if user_nom contains invalid characters
        $form_nom_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_NomInvalid');
            $error = true;
        }
    } else {
        if (!preg_match('/^[^~`@%&=\\/;:\\.,<>!"\\\'\\^\\.\\[\\]\\$\\(\\)\\|\\*\\+\\-\\?\\{\\}\\\\]+$/', $user_nom)) {
            $form_nom_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_NomInvalid');
            $error = true;
        }
    }

    // prenom
    if (!isset($user_prenom) || strlen($user_prenom) < 2) { // if no user_prenom was given or user_prenom is less than 2 char
        $form_prenom_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_PrenomTooShort');
        $error = true;
    }
    if (preg_match('/\pL/u', 'a')) {    // Check if PCRE was compiled with UTF-8 support
        if (!preg_match('/^[_\-\d\p{L}\p{M}]+$/iu', $user_prenom)) { // if user_prenom contains invalid characters
        $form_prenom_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_PrenomInvalid');
            $error = true;
        }
    } else {
        if (!preg_match('/^[^~`@%&=\\/;:\\.,<>!"\\\'\\^\\.\\[\\]\\$\\(\\)\\|\\*\\+\\-\\?\\{\\}\\\\]+$/', $user_prenom)) {
            $form_prenom_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_NomInvalid') ;
            $error = true;
        }
    }

    $mois = "";
    //date de naissance
    if ($user_datenaissance) {
        if (!preg_match('/^\d{1,2}\/\d{1,2}\/\d{4}$/', trim($user_datenaissance))) { // if user _datenaissance pas au bon format
            $form_datenaissance_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_DateInvalid');
            $error = true;
        } else {
            if (!date_create_from_format('j/m/Y', $user_datenaissance)) {
                $form_datenaissance_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_DateInvalid');
                $error = true;
            }
        }
    }
    //numero de portable
    if (!preg_match('/^(0[1-9][0-9]{8})|(\+(?!33)[0-9]{5,15})$/', $user_numerotel)) {
        $form_numerotel_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_NumTelInvalid');
        $error = true;
    }
    //code postal
    if (!preg_match('#^[0-9]{5}$#', $user_codepostal)) { // if no user_code postal 5 chiffres
        $form_codepostal_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_CPInvalid');
        $error = true;
    }
    //signature
    if (!$user_signature) {
        $form_signature_error[] = $main_smarty->get_config_vars('PLIGG_Visual_Register_Error_Signature');
        $error = true;
    }


    $vars = array('username' => $username, 'email' => $email, 'password' => $password);
    check_actions('register_check_errors', $vars);

    if ($vars['error'] == true) {
        $error = true;
        if ($vars['username_error']) {
            $form_username_error[] = $vars['username_error'];
        }
        if ($vars['email_error']) {
            $form_email_error[] = $vars['email_error'];
        }
        if ($vars['password_error']) {
            $form_password_error[] = $vars['password_error'];
        }
    }

    $main_smarty->assign('form_username_error', $form_username_error);
    $main_smarty->assign('form_email_error', $form_email_error);
    $main_smarty->assign('form_password_error', $form_password_error);
    $main_smarty->assign('form_nom_error', $form_nom_error);
    $main_smarty->assign('form_prenom_error', $form_prenom_error);
    $main_smarty->assign('form_datenaissance_error', $form_datenaissance_error);
    $main_smarty->assign('form_numerotel_error', $form_numerotel_error);
    $main_smarty->assign('form_codepostal_error', $form_codepostal_error);
    $main_smarty->assign('form_signature_error', $form_signature_error);

    return $error;
}

function register_add_user($username, $email, $password, $password2, $user_language, $user_nom, $user_prenom, $user_datenaissance, $user_numerotel, $user_codepostal, $user_ville, $user_pays)
{
    global $current_user;

    $user = new User();

    $user->user_language = $user_language;
    $user->username = $username;
    $user->pass = $password;
    $user->email = $email;
    $user->nom = $user_nom;
    $user->prenom = $user_prenom;
    $user->date_naissance = $user_datenaissance ? date_create_from_format('j/m/Y', $user_datenaissance) : null;
    $user->numero_tel = $user_numerotel;
    $user->code_postal = $user_codepostal;
    $user->ville = $user_ville;
    $user->pays = $user_pays;


    if ($user->Create()) {
        $user->read('short');

        $registration_details = array(
            'user_language' => $user_language,
            'username' => $username,
            'password' => $password,
            'email' => $email,
            'id' => $user->id
        );

        check_actions('register_success_pre_redirect', $registration_details);

        $current_user->Authenticate($username, $password, false);

        if ($registration_details['redirect']) {
            header('Location: '.$registration_details['redirect']);
        } elseif (pligg_validate()) {
            header('Location: '.my_base_url.my_pligg_base.'/register_complete.php?user='.$username);
        } else {
            header('Location: ' . getmyurl('user', $username));
        }
        die();
    }
}
