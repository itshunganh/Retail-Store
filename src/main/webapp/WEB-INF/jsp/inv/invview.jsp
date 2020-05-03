<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>INVENTORY - View</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container">
    <br>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th scope="col">Item Name</th>
            <th scope="col">Price</th>
            <th scope="col">Brand</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${selectedInv.getInvDesc()}</td>
            <td>$${selectedInv.getInvPrice()}</td>
            <td>${selectedInv.getInvBrand()}</td>
        </tr>
        </tbody>
    </table>
    <br>
    <a class="btn btn-light btn-lg btn-block" href="/inv/inv" role="button"><img src="/img/back.svg"><b> BACK</b></a>
</div>
<footer class="py-5">
    <div class="container">
        <p class="m-0 text-center"><b>&copy; 2020 Hung Phan</b></p>
    </div>
</footer>
</body>
</html>
