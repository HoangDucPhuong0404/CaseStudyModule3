<%--
  Created by IntelliJ IDEA.
  User: ducphuong
  Date: 21/03/2022
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <link href="/resources/edit.css">
</head>
<body >
<nav class="navbar navbar-expand-xl">
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
                            aria-expanded="false"
                    >
                        <i class="far fa-file-alt"></i>
                        <span> Reports <i class="fas fa-angle-down"></i> </span>
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
                            aria-expanded="false"
                    >
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
                    <a class="nav-link d-block" href="login.html">
                        Admin, <b>Logout</b>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container tm-mt-big tm-mb-big" style="background-color: antiquewhite">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Edit Product</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <form  method="post" class="tm-edit-product-form">

                            <div class="form-group mb-3">
                                <label
                                        for="name"
                                >Product Name
                                </label>
                                <input
                                        id="name"
                                        name="name"
                                        type="text"
                                        value="${requestScope["neededitproduct"].getName()}"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group mb-3">
                                <label
                                >Description</label
                                >
                                <textarea
                                        class="form-control validate tm-small"
                                        rows="5"
                                        required
                                        name="description"
                                >${requestScope["neededitproduct"].getDescription()}</textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label
                                        for="category"
                                >Category</label
                                >
                                <select
                                        class="custom-select tm-select-accounts"
                                        id="category"
                                        name="category"
                                >
                                    <option>Select category</option>
                                    <option value="1" selected>Concantrate</option>
                                    <option value="2">IsoLate</option>
                                    <option value="3">Hydrolize</option>
                                </select>
                            </div>
                            <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="expire_date"
                                    >ID
                                    </label>
                                    <input
                                            id="expire_date2"
                                            name="id"
                                            type="text"
                                            value="${requestScope["neededitproduct"].getId()}"
                                            class="form-control validate"
                                            data-large-mode="true"
                                    />
                                </div>
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="expire_date"
                                    >Made In
                                    </label>
                                    <input
                                            id="expire_date"
                                            name="madein"
                                            type="text"
                                            value="${requestScope["neededitproduct"].getMade_in()}"
                                            class="form-control validate"
                                            data-large-mode="true"
                                    />
                                </div>
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="expire_date"
                                    >Weight
                                    </label>
                                    <input
                                            id="weight"
                                            name="weight"
                                            type="text"
                                            value="${requestScope["neededitproduct"].getWeight()}"
                                            class="form-control validate"
                                            data-large-mode="true"
                                    />
                                </div>
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="expire_date"
                                    >Price
                                    </label>
                                    <input
                                            id="price"
                                            name="price"
                                            type="text"
                                            value="${requestScope["neededitproduct"].getPrice()}"
                                            class="form-control validate"
                                            data-large-mode="true"
                                    />
                                </div>
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="expire_date"
                                    >Brand
                                    </label>
                                    <input
                                            id="brand"
                                            name="brand"
                                            type="text"
                                            value="${requestScope["neededitproduct"].getBrand()}"
                                            class="form-control validate"
                                            data-large-mode="true"
                                    />
                                </div>

                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label
                                            for="stock"
                                    >Units In Stock
                                    </label>
                                    <input
                                            id="stock"
                                            name="quantity"
                                            type="text"
                                            value="${requestScope["neededitproduct"].getQuantity()}"
                                            class="form-control validate"
                                            required
                                    />
                                </div>
                            </div>

                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                        <div class="tm-product-img-edit mx-auto">
                            <img src="img/product-image.jpg" alt="Product image" class="img-fluid d-block mx-auto">
                            <i
                                    class="fas fa-cloud-upload-alt tm-upload-icon"
                                    onclick="document.getElementById('fileInput').click();"
                            ></i>
                        </div>
                        <div class="custom-file mt-3 mb-3">
                            <input id="fileInput" type="file" style="display:none;" />
                            <input
                                    type="button"
                                    class="btn btn-primary btn-block mx-auto"
                                    value="CHANGE IMAGE NOW"
                                    onclick="document.getElementById('fileInput').click();"
                            />
                        </div>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary btn-block text-uppercase">Update Now !!!</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2012</b> All rights reserved.

            Design by: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Sico's Boss</a>
        </p>
    </div>
</footer>

<script src="js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
<!-- https://jqueryui.com/download/ -->
<script src="js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>
    $(function() {
        $("#expire_date").datepicker({
            defaultDate: "10/22/2020"
        });
    });
</script>
</body>
</html>
