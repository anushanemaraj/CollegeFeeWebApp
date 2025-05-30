<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, model.FeePayment, dao.FeePaymentDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fee Payments List</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #fefefe;
            margin: 0;
            padding: 0;
            color: #444;
        }

        .header {
            background-color: #a99dd9; /* gentle pastel purple */
            color: #fff;
            padding: 30px 20px;
            text-align: center;
            border-bottom-left-radius: 18px;
            border-bottom-right-radius: 18px;
            box-shadow: 0 4px 15px rgba(169, 157, 217, 0.3);
        }

        .header h1 {
            margin: 0;
            font-size: 30px;
            font-weight: 700;
            letter-spacing: 1px;
        }

        .header p {
            margin-top: 8px;
            font-size: 15px;
            opacity: 0.85;
            font-weight: 500;
        }

        .container {
            padding: 40px 60px;
            max-width: 1100px;
            margin: 0 auto;
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background-color: #fff;
            border-radius: 14px;
            overflow: hidden;
            box-shadow: 0 6px 18px rgba(169, 157, 217, 0.12);
            font-size: 15px;
        }

        th, td {
            padding: 14px 18px;
            text-align: center;
            border-bottom: 1px solid #eee;
            color: #555;
        }

        th {
            background-color: #c8bff3; /* lighter pastel purple */
            color: #4b3b76;
            font-weight: 600;
            letter-spacing: 0.05em;
            user-select: none;
        }

        tr:last-child td {
            border-bottom: none;
        }

        tr:hover {
            background-color: #f3f1fa;
            transition: background-color 0.3s ease;
        }

        .action-buttons input[type="submit"], .action-buttons a {
            background-color: #a99dd9;
            color: #fff;
            padding: 6px 14px;
            border: none;
            border-radius: 7px;
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
            margin: 2px 4px;
            box-shadow: 0 2px 6px rgba(169, 157, 217, 0.4);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            user-select: none;
            text-decoration: none;
            display: inline-block;
        }

        .action-buttons input[type="submit"]:hover,
        .action-buttons a:hover {
            background-color: #8b7bcf;
            box-shadow: 0 4px 14px rgba(139, 123, 207, 0.6);
        }

        .no-records {
            text-align: center;
            padding: 25px 10px;
            color: #888;
            font-style: italic;
            font-weight: 500;
        }

        .add-button {
            display: inline-block;
            margin-top: 28px;
            background-color: #6cbf84; /* soft green */
            color: white;
            padding: 12px 22px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 16px;
            text-decoration: none;
            box-shadow: 0 4px 14px rgba(108, 191, 132, 0.4);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            user-select: none;
        }

        .add-button:hover {
            background-color: #559f64;
            box-shadow: 0 6px 18px rgba(85, 159, 100, 0.6);
        }

        .back-home {
            display: inline-block;
            margin-top: 18px;
            background-color: #8a7bbf; /* muted purple */
            color: white;
            padding: 10px 20px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 15px;
            text-decoration: none;
            box-shadow: 0 3px 12px rgba(138, 123, 191, 0.4);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            user-select: none;
        }

        .back-home:hover {
            background-color: #6f5fa5;
            box-shadow: 0 5px 15px rgba(111, 95, 165, 0.6);
        }

        .footer {
            text-align: center;
            margin: 50px 10px 30px;
            color: #bbb;
            font-size: 13px;
            font-weight: 500;
            user-select: none;
        }

        @media (max-width: 768px) {
            .container {
                padding: 30px 20px;
            }

            th, td {
                padding: 12px 8px;
                font-size: 14px;
            }

            .add-button, .back-home {
                font-size: 14px;
                padding: 10px 18px;
            }
        }
    </style>
</head>
<body>

<div class="header">
    <h1>College Fee Payment System</h1>
    <p>Manage student fee payments efficiently</p>
</div>

<div class="container">
    <table>
        <thead>
            <tr>
                <th>Payment ID</th>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Payment Date</th>
                <th>Amount</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
            FeePaymentDAO dao = new FeePaymentDAO();
            List<FeePayment> payments = dao.selectAllPayments();
            if (payments != null && !payments.isEmpty()) {
                for (FeePayment payment : payments) {
        %>
            <tr>
                <td><%= payment.getPaymentID() %></td>
                <td><%= payment.getStudentID() %></td>
                <td><%= payment.getStudentName() %></td>
                <td><%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(payment.getPaymentDate()) %></td>
                <td><%= payment.getAmount() %></td>
                <td><%= payment.getStatus() %></td>
                <td class="action-buttons">
                    <form action="updatefee.jsp" method="get" style="display:inline;">
                        <input type="hidden" name="paymentID" value="<%= payment.getPaymentID() %>">
                        <input type="submit" value="Edit">
                    </form>
                    <form action="feepaymentdelete.jsp" method="get" onsubmit="return confirm('Are you sure you want to delete this payment?');" style="display:inline;">
                        <input type="hidden" name="paymentID" value="<%= payment.getPaymentID() %>">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="7" class="no-records">No payments found.</td>
            </tr>
        <% } %>
        </tbody>
    </table>

    <div style="text-align: center;">
        <a class="add-button" href="addfee.jsp">+ Add New Payment</a><br>
        <a class="back-home" href="index.jsp">← Back to Home</a>
    </div>
</div>

<div class="footer">
    © 2025 College Fee Payment System. All rights reserved.
</div>

</body>
</html>
