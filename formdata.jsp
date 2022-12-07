<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
        
            * {
                box-sizing: border-box
            }
        
            /* Full-width input fields */
            input[type=text],
            input[type=password] ,
            input[type=email]{
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }
        
            input[type=text]:focus,
            input[type=password]:focus ,
            input[type=email]:focus{
                background-color: #ddd;
                outline: none;
            }
        
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }
        
            /* Set a style for all buttons */
            button {
                background-color: #04AA6D;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 50%;
                opacity: 0.9;
            }
        
            button:hover {
                opacity: 1;
            }
        
            /* Extra styles for the cancel button */
            .cancelbtn {
                padding: 14px 20px;
                background-color: #f44336;
            }
        
            /* Float cancel and signup buttons and add an equal width */
            .cancelbtn,
            .signupbtn {
                float: left;
                width: 50%;
            }
        
            /* Add padding to container elements */
            .container {
                padding: 16px;
            }
        
            /* Clear floats */
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }
        
            /* Change styles for cancel button and signup button on extra small screens */
            @media screen and (max-width: 300px) {
        
                .cancelbtn,
                .signupbtn {
                    width: 100%;
                }
            }
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    <body>

        <form style="border:1px solid #ccc">
            <div class="container">
                <center>
                    <h1>SignUP Form</h1>
                    <p>Please fill in this form to create an account.</p>
                </center>
                
                <hr>
                <label for="name"><b>UserName</b></label>
                <input type="text" placeholder="Enter name" name="name" required>
        
                <label for="email"><b>Email</b></label>
                <input type="email" placeholder="Enter Email" name="email" required><br>

        
                <label for="password"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password" required>

                <label for="contact"><b>Contact Number</b></label>
                <input type="text" placeholder="Enter Contact" name="contact" required>
        
            
        
                <center><p></p></center>
        
                <div class="clearfix">
                    <button type="reset" class="cancelbtn">CANCEL</button>
                    <button type="button" id="submit" class="submit">Submit</button>
                </div>
            </div>
        </form>
       

    </body>
<script>
                $(document).ready(function() {
                    $("#submit").click(function () {
                        alert("success");
                        $.ajax({
                            url: "postdata.jsp",
                            type: "post",
                            data: {
                                name: $('#name').val(),
                                email: $('#email').val(),
                                contact: $('#contact').val(),
                                password: $('#password').val(),
                            }
                        });
                    });
            });
    </script>


</html>