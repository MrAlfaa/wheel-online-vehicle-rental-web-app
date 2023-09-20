<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/dashbord.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>

<meta charset="ISO-8859-1">
<title>Profile</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #04AA6D;
  color: white;
}

</style>
</head>
<body>


    

    <section id="menubar">



   <div class="logo">
   <h2>Admin Dashboard</h2>
	</div>
	

<div class="topics">
	<ul>
   <li><form action = "#" method = "post"><i class="fas fa-chart-pie"></i><button class="hehehe" type="submit">Dashboard</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-user"></i><button class="hehehe" type="submit">Manage Employee</button></form></li>
   <li><form action = "managevehicle" method = "post"><i class="fas fa-car-alt"></i><button class="hehehe" type="submit">Manage Vehicle</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-comment-alt"></i><button class="hehehe" type="submit">Manage Reservation</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-user"></i><button class="hehehe" type="submit">Manage Customer</button></form></li>
   </ul>
</div>

</section>

<section id="page">
   	<div class="display">
	<button style="position:right;top:50%;background-color:#0a0a23;" onclick="document.location='addvehicle.jsp'">Add Vehicle</button><br>

<table >
<tr> 

    <th>ID</th>
    <th>Vehicle Brand</th>
    <th>Vehicle Model</th>
    <th>Registration Number</th>
    <th>Vehicle Location</th>
    <th>Vehicle colour</th>
    <th>Fuel Type</th>
    <th>Number Of seat</th>
    <th>Description</th>
    <th>Update</th>
    <th>Delete</th>
    
</tr>


<c:forEach var ="vhi"  items ="${vhiDetails}">

<c:set var="id" value = "${vhi.id }"/>
<c:set var="brand" value = "${vhi.brand }"/>
<c:set var="model" value ="${vhi.model}"/>
<c:set var="registrationNo" value = "${vhi.registrationNo}"/>
<c:set var="location" value = "${vhi.location}"/>
<c:set var="colour" value = "${vhi.colour}"/>
<c:set var="fuelType" value = "${vhi.fuelType}"/>
<c:set var="seat" value = "${vhi.seat}"/>
<c:set var="description" value = "${vhi.description}"/>



<tr>
    <td>${vhi.id}</td>
    <td>${vhi.brand}</td>
    <td>${vhi.model}</td>
    <td>${vhi.registrationNo}</td>
    <td>${vhi.location}</td>
    <td>${vhi.colour}</td>
    <td>${vhi.fuelType}</td>
    <td>${vhi.seat}</td>
    <td>${vhi.description}</td>
    <td>
    <c:url  var="vhiupdate" value="updatevehicle.jsp"> 

	<c:param name="id" value ="${id}"/>
	<c:param name="brand" value ="${brand}"/>
	<c:param name="model" value ="${model}"/>
	<c:param name="registrationNo" value ="${registrationNo}"/>
	<c:param name="location" value ="${location}"/>
	<c:param name="colour" value ="${colour}"/>
	<c:param name="fuelType" value ="${fuelType}"/>
	<c:param name="seat" value ="${seat}"/>
	<c:param name="description" value ="${description}"/>

	</c:url>
	<a href="${vhiupdate}">
	<input type="button" name="Update" value="Update">
	<br>
	</a>
    </td>
    
    
    
    <td>
    <c:url  var="vhidelete" value="deletevehicle.jsp"> 

	<c:param name="id" value ="${id}"/>
	<c:param name="brand" value ="${brand}"/>
	<c:param name="model" value ="${model}"/>
	<c:param name="registrationNo" value ="${registrationNo}"/>
	<c:param name="location" value ="${location}"/>
	<c:param name="colour" value ="${colour}"/>
	<c:param name="fuelType" value ="${fuelType}"/>
	<c:param name="seat" value ="${seat}"/>
	<c:param name="description" value ="${description}"/>

	</c:url>
	<a href="${vhidelete}">
	<input type="submit" name="submit" value="Remove">
	<br>
	</a>
	</td>
	
	
	
  	</tr>

</c:forEach>
</table>
      

      </div>
  
</section>

</body>
</html>
