<%-- 
    Document   : profile
    Author     : nurna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Personal Profile Page</title>
    
     <!-- Link to external CSS file -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>My Personal Profile</h1>
            <p>Here is the personal information submitted.</p>
        </div>
        
        <!-- Display a Default Avatar Icon -->
        <div class="avatar-container">
            <div class="profile-avatar">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                    <circle cx="12" cy="7" r="4"></circle>
                </svg>
            </div>
        </div>
        
        <!-- Display the submitted profile information -->
        <div class="profile-list">
            
            <!-- Retrieve the full name from the session attribute -->
            <div class="profile-card-item">
                <label>Full Name</label>
                <p><%= session.getAttribute("name") %></p>
            </div>
            
             <!-- Retrieve the student ID -->
            <div class="profile-card-item">
                <label>Student ID</label>
                <p><%= session.getAttribute("studentId") %></p>
            </div>
            
            <!-- Retrieve the programme information -->
            <div class="profile-card-item">
                <label>Programme</label>
                <p><%= session.getAttribute("programme") %></p>
            </div>

            <!-- Retrieve the email address -->
            <div class="profile-card-item">
                <label>Email Address</label>
                <p><%= session.getAttribute("email") %></p>
            </div>

            <!-- Retrieve the hobbies -->
            <div class="profile-card-item">
                <label>Hobbies</label>
                <p><%= session.getAttribute("hobbies") %></p>
            </div>

            <!-- Retrieve the short self-introduction -->
            <div class="profile-card-item">
                <label>Short Self-Introduction</label>
                <p><%= session.getAttribute("introduction") %></p>
            </div> 
        </div>
          
            
        <!-- Button to return to the profile form --> 
        <div class="form-group">
            <a href="index.html" class="back-btn-full">Back to Form</a>
        </div>
    </div> 
</body>
</html>
