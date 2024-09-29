<?php
$path = $_SERVER['DOCUMENT_ROOT'];
require_once "database.php";

class faculty_details
{
    public function verifyUser($dbo, $un, $pw)
{
    $rv = ["id" => -1, "status" => "ERROR"];
    $c = "SELECT id, password FROM faculty_details WHERE user_name = :un";
    $s = $dbo->conn->prepare($c);
    try {
        $s->execute([":un" => $un]);
        if ($s->rowCount() > 0) {
            $result = $s->fetch(PDO::FETCH_ASSOC);
            // Compare plain text password directly
            if ($result['password'] === $pw) {
                // all ok
                $rv = ["id" => $result['id'], "status" => "ALL OK"];
            } else {
                // password does not match
                $rv = ["id" => $result['id'], "status" => "Wrong password"];
            }
        } else {
            // username does not exist
            $rv = ["id" => -1, "status" => "USER NAME DOES NOT EXISTS"];
        }
    } catch (PDOException $e) {
        // Handle error, e.g., log it
        error_log($e->getMessage());
    }
    return $rv;
}



    public function getCoursesInASession($dbo, $sessionid, $facid)
    {
        $rv = [];
        $c = "SELECT cd.id, cd.code, cd.title 
              FROM course_allotment AS ca
              JOIN course_details AS cd ON ca.course_id = cd.id
              WHERE ca.faculty_id = :facid AND ca.session_id = :sessionid";
        $s = $dbo->conn->prepare($c);

        try {
            $s->execute([":facid" => $facid, ":sessionid" => $sessionid]);
            $rv = $s->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            // Log the error for debugging
            error_log("Error in getCoursesInASession: " . $e->getMessage());
        }

        return $rv;
    }
}
?>
