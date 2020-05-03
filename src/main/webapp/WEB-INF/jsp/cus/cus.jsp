<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>CUSTOMERS - Main</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="/"><img src="/img/icon.png"></a>
            <ul class="nav nav-tabs ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-dark active" href="/cus/cus"><img src="/img/cus.svg"> Customers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="/emp/emp"><img src="/img/emp.svg"> Employees</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="/inv/inv"><img src="/img/inv.svg"> Inventory</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-dark" href="/trans/trans"><img src="/img/trans.svg"> Transactions</a>
                </li>
            </ul>
    </nav>
    <div class="card">
        <div id="accordion1">
            <div class="card">
                <div class="card-header" id="headingCus">
                    <div class="row">
                        <div class="col-11">
                            <h1>CUSTOMERS</h1>
                        </div>
                        <div class="col-1 ml-auto">
                            <h1>
                                <button class="btn btn-light" data-toggle="collapse" data-target="#collapseCus" aria-expanded="true" aria-controls="collapseCus">
                                    <img src="/img/add.svg">
                                </button>
                            </h1>
                        </div>
                    </div>
                </div>
                <div id="collapseCus" class="collapse" aria-labelledby="headingCus" data-parent="#accordion1">
                    <div class="card-body">
                        <form method="post" action="/cus/cussave/{cus_id}">
                            <input type="hidden" name="cus_id" value="">
                            <div class="form-group">
                                <label>Customer First Name</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><img src="/img/fname.svg"></div>
                                    </div>
                                    <input type="text" class="form-control" name="cus_fname">
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Customer Last Name</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text"><img src="/img/lname.svg"></div>
                                    </div>
                                    <input type="text" class="form-control" name="cus_lname">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-outline-success">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-bordered table-striped" id="dataTable" width="100%">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var = "row" items = "${cus}">
                    <tr>
                        <td>${row.getCusFname()}</td>
                        <td>${row.getCusLname()}</td>
                        <td>
                            <a class="btn btn-outline-info" role="button" href="/cus/cusview/${row.getCusId()}"><img src="/img/view.svg"></a>
                            <a class="btn btn-outline-warning" role="button" href="/cus/cusedit/${row.getCusId()}"><img src="/img/edit.svg"></a>
                            <a class="btn btn-outline-danger" role="button" href="/cus/cusdelete/${row.getCusId()}"><img src="/img/delete.svg"></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <br>
</div>
<footer class="py-5">
    <div class="container">
        <p class="m-0 text-center"><b>&copy; 2020 Hung Phan</b></p>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
<script src="/js/datatables-demo.js"></script>
</body>
</html>
