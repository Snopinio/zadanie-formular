<?php
if (isset($_REQUEST['action']) && $_REQUEST['action'] == "register") {
$db = new mysqli("localhost", "root", "", "formularz");

$name = $_REQUEST['name'];
$surname = $_REQUEST['surname'];
$email = $_REQUEST['email'];
$email = filter_var($email, FILTER_SANITIZE_EMAIL);
$password = $_REQUEST['password'];
$passwordRepeat = $_REQUEST['passwordRepeat'];
$zasadacheck = isset($_REQUEST['checkbox']) ? $_REQUEST['checkbox'] : false;

if (!$zasadacheck) {
    echo "Musisz potwierdzic";
    exit;
}


if($password == $passwordRepeat) {
    $passwordHash = password_hash($password, PASSWORD_ARGON2I);
    $q = $db->prepare("INSERT INTO users (imie, nazwisko, email, passwordHash) VALUES (?, ?, ?, ?)");
    $q->bind_param("ssss", $name, $surname, $email, $passwordHash);
    $result = $q->execute();
    if($result) {
        echo "Witajna pokladzie!";
    } else {
        echo "Nie udało sie utworzyc uzytkownika";
    }
} else {
    echo "Dane nie poprawne sproboj ponownie!";
}
}
?>