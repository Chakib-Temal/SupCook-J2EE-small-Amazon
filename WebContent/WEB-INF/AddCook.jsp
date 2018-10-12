<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AddCook</title>
</head>
<body>
	<jsp:include page="NavBarConnected.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-md-2">
			</div>
			<form action="AddCook?userPublisher=${sessionScope.user.userName }"  method="post" > 
			<div class="col-md-10">
				<div class="row">	
					<div class="col-md-6 text-center">
						<label for="nameCook" class="lead">Enter name of Cook</label>
					</div>
				</div>
				<div class="row">	
					<div class="col-md-6">
						<input type="text" name="nameCook" id="nameCook" class="form-control" value="${nameCook }" required>
					</div>
					<div class="col-md-6 lead">
						<span id="errorNameCook"> <c:out value="${errorNameCook }"></c:out></span> <span id="corNameCook"></span> 
					</div>
				</div>	
				
				<div class="row">	
					<div class="col-md-6 text-center">
						<label for="category" class="lead">Enter Category</label>
					</div>
				</div>
				<div class="row">	
					<div class="col-md-6">
						<select name="category" id="category" class="form-control"  required> 
							<option value="tarte"> tarte </option>
							<option value="plat">plat </option>
							<option value="salade">salade </option>
							<option value="pizza">pizza </option>
						</select>
					</div>
					<div class="col-md-6 lead">
						<span id="errorCategory"> <c:out value="${errorCategory }"></c:out> </span> <span id="corCategory"></span> 
					</div>
				</div>
					
				<div class="row">	
					<div class="col-md-6 text-center">
						<label for="description" class="lead">Enter Description</label>
					</div>
				</div>
				<div class="row">	
					<div class="col-md-6">
						<textarea name="description" id="description" class="form-control" required"> <c:out value="${description }"></c:out></textarea>
					</div>
					<div class="col-md-6 lead">
						<span id="errorDescription" > <c:out value="${errorDescription }"></c:out> </span> <span id="corDescription"></span> 
					</div>
				</div>	
				
				<div class="row">	
					<div class="col-md-6 text-center">
						<label for="timeP" class="lead">Enter time needed to cook</label>
					</div>
				</div>
				<div class="row">	
					<div class="col-md-6">
						<input type="number" name="timeP" id="timeP" class="form-control numberJs" value="${timeP }" required">
					</div>
					<div class="col-md-6 lead">
						<span id="errorTimeP"> <c:out value="${errorTimeP }"></c:out> </span> <span id="corTimeP"></span> 
					</div>
				</div>	
				
				<div class="row">	
					<div class="col-md-6 text-center">
						<label for="timeC" class="lead">Enter Time to food</label>
					</div>
				</div>
				<div class="row">	
					<div class="col-md-6">
						<input type="number" name="timeC" id="timeC" class="form-control numberJs" value="${timeC }" required">
					</div>
					<div class="col-md-6 lead">
						<span id="errorTimeC"> <c:out value="${errorTimeC }"></c:out> </span> <span id="corTimeC"></span> 
					</div>
				</div>	
				
				<div class="row">	
					<div class="col-md-6 text-center">
						<label for="level" class="lead">Enter Difficulty</label>
					</div>
				</div>
				<div class="row">	
					<div class="col-md-6">
						<select name="level" id="level" class="form-control"  required"> 
							<option value="1">1 </option>
							<option value="2">2 </option>
							<option value="3">3 </option>
							<option value="4">4</option>
							<option value="5">5 </option>
						</select>
					</div>
					<div class="col-md-6 lead">
						<span id="errorLevel"> <c:out value="${errorLevel }"></c:out> </span> <span id="corLevel"></span> 
					</div>
				</div>
				
				<div class="row">	
					<div class="col-md-6 text-center">
						<input type="submit" value="Add" class="btn btn-primary btn-lg">
					</div>
				</div>		
			</div>
		</form>
		</div>
	</div>
	<script src="/SupCook/JS/CookValidator.js"></script>		
</body>
</html>