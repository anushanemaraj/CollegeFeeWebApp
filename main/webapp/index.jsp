<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>College Fee Payment System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f8f9fa;
        }
        .hero {
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            color: white;
            padding: 60px 20px;
            text-align: center;
            border-radius: 0 0 20px 20px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        .hero h1 {
            font-weight: 600;
            font-size: 2.5rem;
        }
        .card-option {
            transition: transform 0.2s ease;
        }
        .card-option:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>

    <div class="hero">
        <h1>College Fee Payment System</h1>
    </div>

    <div class="container mt-5">
        <div class="row justify-content-center g-4">
            <div class="col-md-6 col-lg-4">
                <a href="feepaymentadd.jsp" class="text-decoration-none text-dark">
                    <div class="card card-option shadow-sm text-center p-4">
                        <h5 class="fw-semibold">Add Fee Payment</h5>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-4">
                <a href="feepaymentdisplay.jsp" class="text-decoration-none text-dark">
                    <div class="card card-option shadow-sm text-center p-4">
                        <h5 class="fw-semibold">View All Payments</h5>
                    </div>
                </a>
            </div>
            <div class="col-md-6 col-lg-4">
                <a href="report_form.jsp" class="text-decoration-none text-dark">
                    <div class="card card-option shadow-sm text-center p-4">
                        <h5 class="fw-semibold">Generate Reports</h5>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
