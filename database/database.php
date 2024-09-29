<?php

class Database {
  private $servername = "localhost";
  private $username = "root";
  private $password = "";
  private $dbname = "attendance_db";
  public $conn = null;

  public function __construct() {
      try {
          $this->conn = new PDO("mysql:host=$this->servername;dbname=$this->dbname", $this->username, $this->password);
          $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
          error_log("Database connection successful");
      } catch (PDOException $e) {
          error_log("Database connection failed: " . $e->getMessage());
          echo json_encode(['status' => 'DB connection failed', 'message' => $e->getMessage()]);
          exit;
      }
  }
}


?>
