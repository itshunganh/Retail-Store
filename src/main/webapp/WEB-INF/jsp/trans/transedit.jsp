<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>TRANSACTIONS - Edit</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container">
    <br>
    <div class="card">
        <h5 class="card-header">Edit Transaction</h5>
        <div class="card-body">
            <form method="post" action="/trans/transsave/{trans_id}">
                <input type="hidden" name="trans_id" value="${selectedTrans.getTransId()}">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Receipt:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="trans_fname" value="${selectedTrans.getTransReceipt()}">
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
    <a class="btn btn-light btn-lg btn-block" href="/trans/trans" role="button"><img src="/img/back.svg"><b> BACK</b></a>
</div>
<footer class="py-5">
    <div class="container">
        <p class="m-0 text-center"><b>&copy; 2020 Hung Phan</b></p>
    </div>
</footer>
</body>
</html>
