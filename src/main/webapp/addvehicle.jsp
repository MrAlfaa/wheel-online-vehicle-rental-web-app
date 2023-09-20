<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<h2 style="color:blue;text-align:center;"> Wheel Rental Service New Vehicle Registration</h2>

<div class="container">

<form action="add" method="post" >

<div class="row">
    <div class="col-25">
      <label for="brand">Vehicle Brand:</label>
    </div>
    <div class="col-75">
      <input type="text"  name="brand" placeholder="Vehicle Brand" required="required">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="model">Vehicle Model:</label>
    </div>
    <div class="col-75">
      <input type="text" name="model" placeholder="Vehicle Model" required="required">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="registrationNo">License Plate/Registration Number:</label>
    </div>
    <div class="col-75">
      <input type="text" name="registrationNo" placeholder="License Plate:YX-9856" required="required">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="location">Location Of Vehicle:</label>
    </div>
    <div class="col-75">
      <input type="text" name="location" placeholder="Location Of Vehicle" required="required">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="colour">Vehicle Colour:</label>
    </div>
    <div class="col-75">
      <input type="text" name="colour" placeholder="Colour" required="required">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="fuelType">Fuel Type:</label>
    </div>
    <div class="col-75">
      <input type="text" name="fuelType" placeholder="Ex:Diesel/Petrol" required="required">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="seat">Number Of Seat:</label>
    </div>
    <div class="col-75">
      <input type="number" name="seat" placeholder="Number Of Seat" size="500"  required="required">
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="description">Description:</label>
    </div>
    <div class="col-75">
      <input type="text"  name="description" placeholder="Enter text here.....">
    </div>
  </div>
  
  <br>
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  </form>
  </div>
		
		
		
</body>
</html>