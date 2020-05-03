<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>TRANSACTIONS - View</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>
<body>

<div class="container">
    <br>
    <table class="table table-bordered">
        <tr>
            <th>Receipt</th>
            <td>
                <div class="alert alert-secondary text-center" role="alert">
                    <b>${selectedTrans.getTransReceipt()}</b>
                </div>
            </td>
        </tr>
        <tr>
            <th>Customer</th>
            <td><iframe src="/cus/cusview/${selectedTrans.getCusId()}" height="150" width="100%" scrolling="no" style="border:none;k"></iframe></td>
        </tr>
        <tr>
            <th>Employee</th>
            <td><iframe src="/emp/empview/${selectedTrans.getEmpId()}" height="150" width="100%" scrolling="no" style="border:none;"></iframe></td>
        </tr>
        <tr>
            <th>Item</th>
            <td><iframe src="/inv/invview/${selectedTrans.getInvId()}" height="150" width="100%" scrolling="no" style="border:none;"></iframe></td>
        </tr>
    </table>
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
