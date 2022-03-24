package controllers;

import dao.ProductDao;
import model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(value = "/products")
public class ProductController extends HttpServlet {
    private ProductDao productDao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");

        if (action == null)
            action = "";
        System.out.println(action);
        switch (action) {
            case "add":
                showAddFrom(request, response);
                break;
            case "edit":
                showEditProduct(request, response);
                break;
            case "home":
                showHomePage(request, response);
                break;
            case "delete":
                showDeletePage(request, response);
                break;
            case "search":
                search(request, response);
                break;
            default:
                showProducts(request, response);
                break;
        }
    }

    private void showDeletePage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        List<Product> products = productDao.getallProduct();
        productDao.delete(id);
        String mess = "Da xoa thanh cong";
        request.setAttribute("listProduct",products);
        request.setAttribute("mess",mess);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/products.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        }


    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String searchName = request.getParameter("search");
        List<Product> listProduct = productDao.search(searchName);
        request.setAttribute("listProduct",listProduct);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/products.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void showHomePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Home.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        ProductDao productDao = new ProductDao();
        Product neededitproduct =  productDao.getProductById(id);
        RequestDispatcher requestDispatcher ;
        if (neededitproduct == null){
            //requestDispatcher = request.getRequestDispatcher("")
        }
        else {
            request.setAttribute("neededitproduct", neededitproduct);
            requestDispatcher = request.getRequestDispatcher("product/editProduct.jsp");
            requestDispatcher.forward(request,response);
        }

        // Lay product ra
        // set product vao attribute cua request





    }


    private void showAddFrom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/add.jsp");
        dispatcher.forward(request, response);
    }

    public void showProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();
        List<Product> listProduct = productDao.getallProduct();
        request.setAttribute("listProduct",listProduct);

        RequestDispatcher dispatcher = request.getRequestDispatcher("product/products.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "add":
                addProduct(request, response);
                break;
            case "edit":
                updateCustomer(request, response);
                break;
            case "delete":
               deleteProduct(request, response);
               break;
            default:
                break;
        }




//        productService.editProduct(id, name,brand,made_in, weight, price, quantity, description, category);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
            int id = Integer.parseInt(request.getParameter("id"));
            ProductDao productDao = new ProductDao();
            productDao.delete(id);


    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
        productDao.editProduct(id,name,brand,made_in,weight,price,quantity,description,category);

        showProducts(request, response);
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int category = Integer.parseInt(request.getParameter("category"));
        String made_in = request.getParameter("madein");
        float weight = Float.parseFloat(request.getParameter("weight"));
        int price = Integer.parseInt(request.getParameter("price"));
        String brand = request.getParameter("brand");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductDao productService = new ProductDao();
        productService.addProduct(name, brand, made_in, weight, price, quantity, description, category);

        showProducts(request, response);

    }
//    protected void editProduct(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException{
//        response.setContentType("text/html;charset=UTF-8");
//        request.setCharacterEncoding("utf-8");
//        int checkbox = Integer.parseInt(request.getParameter("checkbox"));
//        String name = request.getParameter("name");
//        String description = request.getParameter("description");
//        int category = Integer.parseInt(request.getParameter("category"));
//        String made_in = request.getParameter("madein");
//        float weight = Float.parseFloat(request.getParameter("weight"));
//        int price = Integer.parseInt(request.getParameter("price"));
//        String brand = request.getParameter("brand");
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
//
//        ProductDao productDao = new ProductDao();
//        productDao.editProduct(checkbox,name,brand,made_in,weight,price,quantity,description,category);
//    }
}
