<?php
$path = $_SERVER['DOCUMENT_ROOT'];
require_once "../database/database.php";
require_once "../database/facultyDetails.php";

// Start session if not already started
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

try {
    // Check if the action is set
$action = isset($_REQUEST['action']) ? $_REQUEST['action'] : null;
    if (!empty($action)) {
        if ($action == "verifyUser") {
            // retrieve what was sent
            $un = $_POST["user_name"];
            $pw = $_POST["password"];

            if (empty($un) || empty($pw)) {
                echo json_encode(['status' => 'Username or password is missing']);
                exit;
            }

            // check if exists in database
            $dbo = new Database();
            $fdo = new faculty_details();
            $rv = $fdo->verifyUser($dbo, $un, $pw);

            if ($rv && $rv['status'] == "ALL OK") {
                $_SESSION['current_user'] = $rv['id'];
                echo json_encode(['status' => 'ALL OK']);
            } else {
                echo json_encode(['status' => 'Invalid username or password']);
            }
        }
    } else {
        echo json_encode(['status' => 'Invalid action']);
    }
} catch (Exception $e) {
    // Capture any unexpected errors
    echo json_encode(['status' => 'Server error', 'message' => $e->getMessage()]);
}
?>
