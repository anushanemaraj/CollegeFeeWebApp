<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Fee Payment</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #e0eafc, #cfdef3);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: #ffffff;
            width: 100%;
            max-width: 480px;
            padding: 40px 35px;
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.6s ease-in-out;
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            font-weight: bold;
        }
        label {
            font-weight: 600;
            margin-bottom: 6px;
            display: block;
            color: #555;
        }
        input[type="text"],
        input[type="number"],
        input[type="date"],
        select {
            width: 100%;
            padding: 12px 14px;
            font-size: 15px;
            border: 1px solid #dcdfe6;
            border-radius: 8px;
            margin-bottom: 18px;
            box-sizing: border-box;
            transition: all 0.3s ease;
        }
        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="date"]:focus,
        select:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
            outline: none;
        }
        input[type="submit"] {
            width: 100%;
            background: linear-gradient(90deg, #007bff, #0056b3);
            border: none;
            color: white;
            font-size: 17px;
            padding: 14px;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.4s ease;
        }
        input[type="submit"]:hover {
            background: linear-gradient(90deg, #0056b3, #003c80);
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Fee Payment</h2>
        <form action="AddFeePaymentServlet" method="post">
            <label for="studentID">Student ID:</label>
            <input type="number" id="studentID" name="studentID" required>

            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <label for="paymentDate">Payment Date:</label>
            <input type="date" id="paymentDate" name="paymentDate" required>

            <label for="amount">Amount:</label>
            <input type="number" step="0.01" id="amount" name="amount" required>

            <label for="status">Status:</label>
            <select id="status" name="status" required>
                <option value="Paid">Paid</option>
                <option value="Pending">Pending</option>
                <option value="Overdue">Overdue</option>
            </select>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
