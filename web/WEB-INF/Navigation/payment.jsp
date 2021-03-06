<%--
  Created by IntelliJ IDEA.
  User: guill
  Date: 17.05.2019
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Paiement - EShop</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
    <style>
        h4 {
            color: #1C1D21;
            text-align: center;
            font-family: "Open Sans";
        }
         h5{
             text-align: center;
             font-family: "Open Sans";
         }
        form {
            width: 350px;
            margin: 0 auto;
        }
        form .half input {
            width: 165px;
            float: left;
        }
        form .half input:first-child {
            margin-right: 20px;
        }
        form input, form button {
            box-sizing: border-box;
            display: block;
            float: left;
            width: 100%;
            padding: 20px;
            font-size: 1.3em;
            margin-bottom: 20px;
            outline: none;
            border: none;
            border-radius:3px;
            background: rgba(255, 255, 255, 0.5);
        }
        form input {
            color: #1C1D21;
        }
        form button {
            color: #1C1D21;
            background: #EEEFF7;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h4>
            TOTAL : <%= request.getSession().getAttribute("sumCaddie").toString() %> .-
        </h4>
        <h5>
            <a href="${pageContext.request.contextPath}/">Retour au magasin</a>
        </h5>
        <form action="${pageContext.request.contextPath}/Payment" method="post">
            <input placeholder="Name on card" type="text"  required/>
            <input placeholder="Email" type="email" required/>
            <input placeholder="Card number" type="text" required/>
            <input placeholder="MM/YY" type="month" required/>
            <button  type="submit">Payer</button>
        </form>
    </div>
</body>
</html>
