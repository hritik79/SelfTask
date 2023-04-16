<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SelfTask.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Interviewee App</title>
    <%-- cdn for bootstrap --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <%-- cdn for select2 --%>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
</head>
<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-xl-4">
                <div class="card mt-5">
                    <div class="card-header">
                        <h1 class="text-center display-3">Interviewee App</h1>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" />
                            </div>

                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input class="form-control block w-full" id="password" type="password" placeholder="Enter Password" name="password" />
                                    <span class="input-group-text togglePassword">
                                        <i class="fa fa-eye" style="cursor: pointer" id="togglePassword"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group text-center">
                                <button type="button" class="btn btn-primary" id="login">Login</button>
                                <button type="button" class="btn btn-secondary" id="signup">Sign Up</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%-- CDN for sweetalert2 --%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <%-- cdn for fontawesome --%>
    <script src="https://kit.fontawesome.com/c13d76a6e1.js" crossorigin="anonymous"></script>
    <script>

        $(document).ready(function () {

            // Create admin account
            localStorage.setItem("admin", "adminpassword");

            $("#togglePassword").click(function () {
                var passwordField = $("#password");
                var passwordFieldType = passwordField.attr("type");

                if (passwordFieldType === "password") {
                    passwordField.attr("type", "text");
                    $("#togglePassword").removeClass("fa-eye");
                    $("#togglePassword").addClass("fa-eye-slash");
                } else {
                    passwordField.attr("type", "password");
                    $("#togglePassword").removeClass("fa-eye-slash");
                    $("#togglePassword").addClass("fa-eye");
                }
            });

            $("#login").click(function () {
                debugger
                var username = $("#username").val();
                var password = $("#password").val();

                // Check if the username and password match the admin account
                if (username === "admin" && password === "adminpassword") {
                    debugger
                    window.location.href = "table.aspx";
                }
                // Check if the username and password match the stored values
                else if (localStorage.getItem(username) === password) {
                    debugger
                    localStorage.setItem("loggedInUser", username);
                    window.location.href = "cards.aspx";
                }

                // Incorrect username or password
                else {
                    debugger
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: 'Invalid username or password.',
                    })
                }
            });

            $("#signup").click(function () {
                debugger
                var username = $("#username").val();
                var password = $("#password").val();

                // Check if the username is already taken
                if (localStorage.getItem(username) !== null) {
                    debugger
                    Swal.fire({
                        icon: 'warning',
                        text: 'Username already taken.'
                    })
                }

                // Create a new user account
                else if (username === "" && password === "") {
                    debugger
                    Swal.fire({
                        icon: 'warning',
                        text: 'Enter Valid Details'
                    })
                } else {
                    debugger
                    localStorage.setItem(username, password);
                    Swal.fire({
                        icon: 'success',
                        title: 'Oops...',
                        text: 'Account created successfully.',
                    })
                }
            });
        });
    </script>
</body>
</html>
