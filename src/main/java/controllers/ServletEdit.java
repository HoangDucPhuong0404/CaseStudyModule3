package controllers;

import dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletEdit", value = "/editProduct")
public class ServletEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int category = Integer.parseInt(request.getParameter("category"));
        String made_in = request.getParameter("madein");
        float weight = Float.parseFloat(request.getParameter("weight"));
        int price = Integer.parseInt(request.getParameter("price"));
        String brand = request.getParameter("brand");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductDao productDao = new ProductDao();
        productDao.editProduct(id, name,brand,made_in,weight, price, quantity, description,category);


    }
}
