<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>مشاهده ماشین</title>

    <meta name="description" content="">
    <meta name="author" content="">
   <link href="${pageContext.request.contextPath}/static/css/bootstrap-rtl.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/static/css/theme.css" rel="stylesheet">
		   <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
 </head>
  <body>
  <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/dbcar"
        user="root" password=""
    />
     
    <sql:query var="listCar"   dataSource="${myDS}">
        SELECT * FROM addcar;
    </sql:query>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">مشاهده ماشین</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
    </div>
    </nav>
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>
							برند
						</th>
						<th>
							مدل
						</th>
						<th>
							سال
						</th>
						<th>
							قیمت
						</th>
						<th>
							نوع ماشین
						</th>
						<th>
							مدت کارکرد
						</th>
						<th>
							استان
						</th>
						<th>
							دنده ای - اتومات
						</th>
						<th>
							شاسی
						</th>
						<th>
							رنگ
						</th>
						<th>
							وضعیت بدنه
						</th>
						<th>
							سوخت
						</th>
						<th>
							نوع هزینه
						</th>
					</tr>
				</thead>
				<tbody>
	          <c:forEach var="addcar" items="${listCar.rows}">
					               <tr>
                    <td><c:out value="${addcar.Brand}" /></td>
                    <td><c:out value="${addcar.Model}" /></td>
                    <td><c:out value="${addcar.Year}" /></td>
                    <td><c:out value="${addcar.Price}" /></td>
                    <td><c:out value="${addcar.Kind}" /></td>
                    <td><c:out value="${addcar.Time}" /></td>
                    <td><c:out value="${addcar.Ostan}" /></td>
                    <td><c:out value="${addcar.KindD}" /></td>
                    <td><c:out value="${addcar.Shasi}" /></td>
                    <td><c:out value="${addcar.Color}" /></td>
                    <td><c:out value="${addcar.Status}" /></td>
                    <td><c:out value="${addcar.Fuel}" /></td>
                    <td><c:out value="${addcar.Hazine}" /></td>
                </tr>
            </c:forEach>
					
				</tbody>
			</table>
		</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>