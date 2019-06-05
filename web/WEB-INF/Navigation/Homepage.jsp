<%@ page import="ch.hesge.gouninet.Model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: guillaum.gouninet
  Date: 17.05.2019
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Accueil - EShop</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Styles/EShop.css">
    </head>
<body>
    <div class="menu-top">
        <jsp:include page="/WEB-INF/SharedComponents/Menu.jsp" />
    </div>
        <div class="homepage">
            <a href ="${pageContext.request.contextPath}/LstProducts" class="link-description-homepage">
                <!-- content and sidebar are swapped. They can be made to show in the order above with CSS -->
                <div class="container-description-homepage">
                    <div>
                        <h1 class="title-txt-homepage">WELCOME TO E-SHOP</h1>
                    </div>
                    <div class="description-txt-homepage">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas diam in arcu cursus euismod quis viverra. Varius sit amet mattis vulputate enim nulla aliquet. Eu ultrices vitae auctor eu. In dictum non consectetur a erat nam at. Fermentum dui faucibus in ornare quam viverra orci. Id porta nibh venenatis cras sed felis eget velit. Diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Est ante in nibh mauris cursus mattis molestie. Eu nisl nunc mi ipsum. Lobortis elementum nibh tellus molestie nunc non blandit. Adipiscing tristique risus nec feugiat in fermentum. Neque egestas congue quisque egestas diam in. Lacus vel facilisis volutpat est velit egestas dui id ornare. Placerat in egestas erat imperdiet. At varius vel pharetra vel turpis. Quis varius quam quisque id diam vel quam elementum pulvinar. Ipsum faucibus vitae aliquet nec ullamcorper.
                        </p>
                    </div>
                </div>
                <div class="container-prds">
                    <%
                        List<Product> lstPrd = (List<Product>) request.getAttribute("lstProducts");
                        for (int i=0; i<3; i++) {
                            Product prd = lstPrd.get(i);
                            System.out.println(prd);%>
                            <jsp:include page="/WEB-INF/SharedComponents/Product.jsp" >
                                <jsp:param name="idProduit" value="<%=prd.getId()%>" />
                                <jsp:param name="nomProduit" value="<%=prd.getName()%>" />
                                <jsp:param name="prixProduit" value="<%=prd.getPrice()%>" />
                            </jsp:include>
                            <%} %>
                </div>
            </a>
        </div>
</body>
</html>
