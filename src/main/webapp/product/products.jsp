<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ducphuong
  Date: 17/03/2022
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product </title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"/>
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <link href="/resources/product.css">



</head>
<body id="reportsPage" style="background-color:lightsalmon">

<nav class="navbar navbar-expand-xl" style="background-color: white">
    <div class="container h-100">
        <a class="navbar-brand" href="Home.jsp">
            <h1 class="tm-site-title mb-0">Sico's Admin</h1>
        </a>
        <button
                class="navbar-toggler ml-auto mr-0"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
                <li class="nav-item">
                    <a class="nav-link" href="Home.jsp">
                        <i class="fas fa-tachometer-alt"></i> Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbar"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false">
                        <i class="far fa-file-alt"></i>
                        <span> Drop Link <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Daily Report</a>
                        <a class="dropdown-item" href="#">Weekly Report</a>
                        <a class="dropdown-item" href="#">Yearly Report</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="products">
                        <i class="fas fa-shopping-cart"></i> Products
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="../login.jsp">
                        <i class="far fa-user"></i> Accounts
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false">
                        <i class="fas fa-cog"></i>
                        <span> Settings <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Profile</a>
                        <a class="dropdown-item" href="#">Billing</a>
                        <a class="dropdown-item" href="#">Customize</a>
                    </div>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link d-block" href="login.jsp">
                        Admin, <b >Logout</b>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <div class="row tm-content-row">
        <div class="container-search">
            <form class="d-flex" method="get">
                <input type="hidden" name="action" value="search">
                <input class="search-text" type="search" placeholder="Search" aria-label="Search" name="search">
                <button class="search-button" type="submit">Search</button>
            </form>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col" style="background-color: white" >
            <div class="tm-bg-primary-dark tm-block tm-block-products" style="background-color: white">
                <div class="tm-product-table-container" style="background-color: white">
                    <table class="table table-hover tm-table-small tm-product-table">
                        <thead>
                        <tr>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">PRODUCT ID</th>
                            <th scope="col">PRODUCT NAME</th>
                            <th scope="col">PRICE</th>
                            <th scope="col">IN STOCK</th>
                            <th scope="col">MADE IN</th>
                            <th scope="col">BRAND</th>
                            <th scope="col">CATEGORY</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                                <c:forEach items='${requestScope["listProduct"]}' var="o">
                        <tr>
                            <th scope="row"><input type="checkbox" name="checkbox" onchange="checkProductEdit(${o.id})"/></th>
                            <td>${o.id}</td>
                            <td class="tm-product-name">${o.name}</td>
                            <td>${o.price}</td>
                            <td>${o.quantity}</td>
                            <td>${o.made_in}</td>
                            <td>${o.brand}</td>
                            <td>${o.category}</td>
                            <td>
                                <div class="delete"> <a href="/products?action=delete&id=${o.id}">Delete</a></div>
                            </td>
                        </tr>
                            </c:forEach>
<%--                        <tr>--%>
<%--                            <th scope="row"><input type="checkbox" /></th>--%>
<%--                            <td class="tm-product-name">Lorem Ipsum Product 7</td>--%>
<%--                            <td>500</td>--%>
<%--                            <td>100</td>--%>
<%--                            <td>10 Feb 2019</td>--%>
<%--                            <td>--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <th scope="row"><input type="checkbox" /></th>--%>
<%--                            <td class="tm-product-name">Lorem Ipsum Product 8</td>--%>
<%--                            <td>1,000</td>--%>
<%--                            <td>600</td>--%>
<%--                            <td>08 Feb 2019</td>--%>
<%--                            <td>--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <th scope="row"><input type="checkbox" /></th>--%>
<%--                            <td class="tm-product-name">Lorem Ipsum Product 9</td>--%>
<%--                            <td>1,200</td>--%>
<%--                            <td>800</td>--%>
<%--                            <td>24 Jan 2019</td>--%>
<%--                            <td>--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <th scope="row"><input type="checkbox" /></th>--%>
<%--                            <td class="tm-product-name">Lorem Ipsum Product 10</td>--%>
<%--                            <td>1,600</td>--%>
<%--                            <td>400</td>--%>
<%--                            <td>22 Jan 2019</td>--%>
<%--                            <td>--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <th scope="row"><input type="checkbox" /></th>--%>
<%--                            <td class="tm-product-name">Lorem Ipsum Product 11</td>--%>
<%--                            <td>2,000</td>--%>
<%--                            <td>400</td>--%>
<%--                            <td>21 Jan 2019</td>--%>
<%--                            <td>--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
                        </tbody>
                    </table>
                </div>
                <!-- table container -->
                <div class="product-btn">
                    <a href="/products?action=add"
                       class="btn btn-primary btn-block text-uppercase " >Add new product</a>
                    <a class="btn btn-primary btn-block text-uppercase" href="#" id="idEditBtn">
                        Edit Product
                    </a>



                </div>

            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-product-categories"style="background-color: white">

                <h2 class="tm-block-title">Product Categories</h2>

                <div class="tm-product-table-container">
                    <table class="table tm-table-small tm-product-table">
                        <tbody>
                        <tr>
                            <td class="tm-product-name">Concantrate (Number 1)</td>
                            <td class="text-center">
                                <a href="#" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tm-product-name">IsoLate (Number 2)</td>
                            <td class="text-center">
                                <a href="#" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tm-product-name">Hydrolize (Number 3)</td>
                            <td class="text-center">
                                <a href="#" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tm-product-name">Product Category 4</td>
                            <td class="text-center">
                                <a href="#" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tm-product-name">Product Category 5</td>
                            <td class="text-center">
                                <a href="#" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="tm-product-name">Product Category 6</td>
                            <td class="text-center">
                                <a href="#" class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
<%--                        <tr>--%>
<%--                            <td class="tm-product-name">Product Category 7</td>--%>
<%--                            <td class="text-center">--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td class="tm-product-name">Product Category 8</td>--%>
<%--                            <td class="text-center">--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td class="tm-product-name">Product Category 9</td>--%>
<%--                            <td class="text-center">--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td class="tm-product-name">Product Category 10</td>--%>
<%--                            <td class="text-center">--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td class="tm-product-name">Product Category 11</td>--%>
<%--                            <td class="text-center">--%>
<%--                                <a href="#" class="tm-product-delete-link">--%>
<%--                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>--%>
<%--                                </a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
                        </tbody>
                    </table>
                </div>
                <!-- table container -->
                <button class="btn btn-primary btn-block text-uppercase mb-3">
                    Add new category
                </button>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2022</b> All rights reserved.

            Design by: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Sico's Boss</a>
        </p>
    </div>
</footer>

<script src="js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->

<script>
    function checkProductEdit(idProduct){

        let _url = '/products?action=edit&id=' + idProduct;
        let elementUpdateBtn = document.getElementById("idEditBtn");
        elementUpdateBtn.href = _url;
    }

</script>
<script>
    $(function() {
        $(".tm-product-name").on("click", function() {
            window.location.href = "edit-product.html";
        });
    });
</script>
</body>
</html>
