<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>INVENTORY - Edit</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container">
    <br>
    <div class="card">
        <h5 class="card-header">Edit Item</h5>
        <div class="card-body">
            <form method="post" action="/inv/invsave/{inv_id}">
                <input type="hidden" name="inv_id" value="${selectedItem.getInvId()}">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Item Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="inv_desc" value="${selectedInv.getInvDesc()}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Price:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="inv_price" value="${selectedInv.getInvPrice()}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Brand:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="inv_brand" value="${selectedInv.getInvBrand()}">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-outline-success">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
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
