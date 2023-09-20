<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Update</title>

<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}


@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>

</head>
<body>

<%
	String id =request.getParameter("id");
	String brand=request.getParameter("brand");
	String model=request.getParameter("model");
	String registrationNo=request.getParameter("registrationNo");
	String location=request.getParameter("location");
	String colour=request.getParameter("colour");
	String fuelType=request.getParameter("fuelType");
	String seat=request.getParameter("seat");
	String description=request.getParameter("description");
	
%>

<p style="color:blue;text-align:center;"> Remove Vehicle</p>
<div class="container">
<form action="update" method="post">


<div class="row">
    <div class="col-25">
      <label for="id">ID:</label>
    </div>
    <div class="col-75">
      <input type="text" name="id"  readonly="readonly" value ="<%= id%>">
    </div>
  </div>
  
  
  <div class="row">
    <div class="col-25">
      <label for="brand">Vehicle Brand:</label>
    </div>
    <div class="col-75">
      <input type="text"  name="brand" placeholder="Vehicle Brand" required="required" value ="<%= brand%>" readonly="readonly">
    </div>
  </div>
  
  
  <div class="row">
    <div class="col-25">
      <label for="model">Vehicle Model:</label>
    </div>
    <div class="col-75">
      <input type="text" name="model" placeholder="Vehicle Model" required="required" value ="<%= model%>" readonly="readonly">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="registrationNo">License Plate/Registration Number:</label>
    </div>
    <div class="col-75">
      <input type="text" name="registrationNo" placeholder="License Plate:YX-9856" required="required" value ="<%= registrationNo%>" readonly="readonly">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="location">Location Of Vehicle:</label>
    </div>
    <div class="col-75">
      <input type="text" name="location" placeholder="Location Of Vehicle" required="required" value ="<%= location%>" readonly="readonly">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="colour">Vehicle Colour:</label>
    </div>
    <div class="col-75">
      <input type="text" name="colour" placeholder="Colour" required="required" value ="<%= colour%>" readonly="readonly">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="fuelType">Fuel Type:</label>
    </div>
    <div class="col-75">
      <input type="text" name="fuelType" placeholder="Ex:Diesel/Petrol" required="required" value ="<%=fuelType %>" readonly="readonly">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="seat">Number Of Seat:</label>
    </div>
    <div class="col-75">
      <input type="number" name="seat" placeholder="Number Of Seat" size="500"  required="required" value ="<%=seat %>" readonly="readonly">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="description">Description:</label>
    </div>
    <div class="col-75">
      <input type="text"  name="description" placeholder="Enter text here....." value="<%= description %>" readonly="readonly">
    </div>
  </div>
  
  <br>
  <div class="row">
    <input type="submit" value="Delete">
  </div>


</form>
</div>
	
	
</body>
</html>