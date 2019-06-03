package ch.hesge.gouninet.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/LstProducts")
public class LstProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        //req.getRequestDispatcher("/Accueil").forward(req,resp);
        req.getRequestDispatcher("WEB-INF/Navigation/LstProducts.jsp").forward(req,resp);
    }
}