<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Fee Payment</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #e8f0fe, #ffffff);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        .card {
            border: none;
            border-radius: 16px;
            box-shadow: 0 6px 20px rgba(0, 123, 255, 0.1);
            padding: 35px 40px;
            background-color: #f9fbff;
            transition: box-shadow 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 10px 30px rgba(0, 123, 255, 0.15);
        }

        .form-title {
            font-weight: 700;
            font-size: 26px;
            color: #3a5ca8;
            margin-bottom: 30px;
            text-align: center;
        }

        .form-control, .form-select {
            border-radius: 12px;
            border: 1.5px solid #cbd5e1;
            padding: 10px 14px;
            font-size: 1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        .form-control:focus, .form-select:focus {
            border-color: #5a82d1;
            box-shadow: 0 0 8px rgba(90, 130, 209, 0.3);
            outline: none;
        }

        label.form-label {
            color: #5670a8;
            font-weight: 600;
        }

        .btn-primary {
            background-color: #5a82d1;
            border: none;
            border-radius: 12px;
            padding: 12px 25px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #4170c1;
        }

        .btn-secondary {
            background-color: #e2e8f0;
            color: #556080;
            border-radius: 12px;
            padding: 12px 25px;
            font-weight: 600;
            border: none;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .btn-secondary:hover {
            background-color: #cfd8ef;
            color: #324264;
        }

        @media (max-width: 576px) {
            .card {
                padding: 25px 20px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card mx-auto" style="max-width: 600px;">
        <h2 class="form-title">Add Fee Payment</h2>
        <form action="AddFeePaymentServlet" method="post" novalidate>
            <div class="mb-3">
                <label for="studentID" class="form-label">Student ID</label>
                <input type="text" class="form-control" id="studentID" name="studentID" required>
            </div>

            <div class="mb-3">
                <label for="studentName" class="form-label">Student Name</label>
                <input type="text" class="form-control" id="studentName" name="studentName" required>
            </div>

            <div class="mb-3">
                <label for="paymentDate" class="form-label">Payment Date</label>
                <input type="date" class="form-control" id="paymentDate" name="paymentDate" required>
            </div>

            <div class="mb-3">
                <label for="amount" class="form-label">Amount</label>
                <input type="number" step="0.01" class="form-control" id="amount" name="amount" required>
            </div>

            <div class="mb-4">
                <label for="status" class="form-label">Status</label>
                <select class="form-select" id="status" name="status" required>
                    <option value="">-- Select Status --</option>
                    <option value="Paid">Paid</option>
                    <option value="Unpaid">Unpaid</option>
                    <option value="Overdue">Overdue</option>
                </select>
            </div>

            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary me-md-2">Submit</button>
                <a href="index.jsp" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
