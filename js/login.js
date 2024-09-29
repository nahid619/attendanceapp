function tryLogin() {
    let un = $("#txtUsername").val();
    let pw = $("#txtPassword").val();
    if (un.trim() !== "" && pw.trim() !== "") {
        // make an ajax call
        $.ajax({
            url: "/ajaxhandler/loginAjax.php",  // Ensure the path is correct
            type: "POST",
            dataType: "json",
            data: { 
                user_name: un, 
                password: pw, 
                action: "verifyUser" 
            },

            beforeSend: function() {
                // before making the call
                $("#diverror").removeClass("applyerrordiv");
                $("#lockscreen").addClass("applylockscreen");
            },

            success: function(rv) {
                // if the ajax call was successful
                $("#lockscreen").removeClass("applylockscreen");
                if (rv['status'] === "ALL OK") {
                    document.location.replace("attendance.php");
                } else {
                    $("#diverror").addClass("applyerrordiv");
                    $("#errormessage").text(rv['status']);
                }
            },
            error: function(xhr, status, error) {
                // if the call was unsuccessful
                console.log("Error: " + error);
                console.log("Status: " + status);
                console.log(xhr.responseText);
                alert("Something went wrong. Check the console for details.");
            },
        });
    }
}

//do everything only when the document is loaded
$(function(e) {
    $(document).on("keyup", "input", function(e) {
        $("#diverror").removeClass("applyerrordiv");
        let un = $("#txtUsername").val();
        let pw = $("#txtPassword").val();
        if (un.trim() !== "" && pw.trim() !== "") {
            $("#btnLogin").removeClass("inactivecolor");
            $("#btnLogin").addClass("activecolor");
        } else {
            $("#btnLogin").removeClass("activecolor");
            $("#btnLogin").addClass("inactivecolor");
        }
    });
    $(document).on("click", "#btnLogin", function(e) {
        tryLogin();
    });
});
