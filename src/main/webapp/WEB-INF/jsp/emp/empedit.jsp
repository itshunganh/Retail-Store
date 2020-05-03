<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>EMPLOYEES - Edit</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css">
</head>
<body>
<div class="container">
    <br>
    <div class="card">
        <h5 class="card-header">Edit Employee</h5>
        <div class="card-body">
            <form method="post" action="/emp/empsave/{emp_id}">
                <input type="hidden" name="emp_id" value="${selectedEmp.getEmpId()}">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">First Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="emp_fname" value="${selectedEmp.getEmpFname()}">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Last Name:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="emp_lname" value="${selectedEmp.getEmpLname()}">
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
    <a class="btn btn-light btn-lg btn-block" href="/emp/emp" role="button"><img src="/img/back.svg"><b> BACK</b></a>
</div>
<footer class="py-5">
    <div class="container">
        <p class="m-0 text-center"><b>&copy; 2020 Hung Phan</b></p>
    </div>
</footer>
</body>
</html>
