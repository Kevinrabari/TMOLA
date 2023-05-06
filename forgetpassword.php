<?php
// Include configuration file  
require_once 'Dbcont.php';

// Initialize variables
$email = $password = $confirm_password = "";
$email_err = $password_err = $confirm_password_err = "";

// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Validate email
    if (empty(trim($_POST["email"]))) {
        $email_err = "Please enter your email.";
    } else {
        // Prepare a select statement
        $sql = "SELECT id FROM user_master WHERE userEmail = ?";

        if ($stmt = $mysqli->prepare($sql)) {
            // Bind variables to the prepared statement as parameters
            $stmt->bind_param("s", $param_email);

            // Set parameters
            $param_email = trim($_POST["email"]);

            // Attempt to execute the prepared statement
            if ($stmt->execute()) {
                // Store result
                $stmt->store_result();

                if ($stmt->num_rows == 1) {
                    // Email exists, generate and send reset password link
                    $token = bin2hex(random_bytes(20));
                    $reset_url = "http://example.com/reset-password.php?token=" . $token;

                    // Prepare update statement
                    $sql = "UPDATE user_master SET reset_token = ? WHERE userEmail = ?";

                    if ($stmt = $mysqli->prepare($sql)) {
                        // Bind variables to the prepared statement as parameters
                        $stmt->bind_param("ss", $param_token, $param_email);

                        // Set parameters
                        $param_token = $token;
                        $param_email = trim($_POST["email"]);

                        // Attempt to execute the prepared statement
                        if ($stmt->execute()) {
                            // Send email with reset password link
                            $to = $param_email;
                            $subject = "Reset Your Password";
                            $message = "Please click on this link to reset your password: " . $reset_url;
                            $headers = "From: kr171197@gmail.com";

                            mail($to, $subject, $message, $headers);

                            // Redirect to success page
                            header("location: reset-password-sent.php");
                            exit();
                        } else {
                            echo "Oops! Something went wrong. Please try again later.";
                        }

                        // Close statement
                        $stmt->close();
                    }
                } else {
                    // Email not found
                    $email_err = "No account found with that email.";
                }
            } else {
                echo "Oops! Something went wrong. Please try again later.";
            }

            // Close statement
            $stmt->close();
        }
    }

    // Close connection
    $mysqli->close();
}
?>

<!-- HTML form for reset password -->
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
    <div class="form-group <?php echo (!empty($email_err)) ? 'has-error' : ''; ?>">
        <label>Email</label>
        <input type="email" name="email" class="form-control" value="<?php echo $email; ?>">
        <span class="help-block">
            <?php echo $email_err; ?>
        </span>
    </div>
    <div class="form-group">
        <input type="submit" class="btn btn-primary" value="Reset Password">
    </div>
</form>