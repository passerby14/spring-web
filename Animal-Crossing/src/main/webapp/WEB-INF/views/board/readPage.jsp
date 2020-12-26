<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="utf-8">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>모동숲 팁</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"/>

  <!-- Custom styles for this template -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/simple-sidebar.css"/>
    

</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">모동숲 게시판 </div>
      <div class="list-group list-group-flush">
        <a href="#" class="list-group-item list-group-item-action bg-light">모동숲 이벤트</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">모동숲 주민</a>
        <a href="/board/listAll" class="list-group-item list-group-item-action bg-light">모동숲 잡다한 팁 게시판</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">부옥이 레시피</a>
        <a href="#" class="list-group-item list-group-item-action bg-light">무주식</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-info" id="menu-toggle">Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>

      <div class="container-fluid">
      	<form role="form" method="post">
		
		    <input type='hidden' name='bno' value ="${boardVO.bno}">
		    <input type='hidden' name='page' value ="${cri.page}">
		    <input type='hidden' name='perPageNum' value ="${cri.perPageNum}">
		
		</form>
		
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">Title</label> <input type="text"
					name='title' class="form-control" value="${boardVO.title}"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Content</label>
				<textarea class="form-control" name="content" rows="3"
					readonly="readonly">${boardVO.content}</textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label> <input type="text"
					name="writer" class="form-control" value="${boardVO.writer}"
					readonly="readonly">
			</div>
		</div>
		<!-- /.box-body -->
		
		<div align = "right" class="box-footer">
			<button type="submit" class="btn btn-warning">수정</button>
			<button type="submit" class="btn btn-danger">삭제</button>
			<button type="submit" class="btn btn-primary">목록</button>
		</div>
		

      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
	  <script>
	    $("#menu-toggle").click(function(e) {
	      e.preventDefault();
	      $("#wrapper").toggleClass("toggled");
	    });
	    </script>
	    <script>
	    $(document).ready(function(){
	    	
	    	var formObj = $("form[role='form']");
	    	
	    	console.log(formObj);
	    	
	    	$(".btn-warning").on("click", function(){
	    		formObj.attr("action", "/board/modifyPage");
	    		formObj.attr("method", "get");		
	    		formObj.submit();
	    	});
	    	
	    	$(".btn-danger").on("click", function(){
	    		formObj.attr("action", "/board/removePage");
	    		formObj.submit();
	    	});
	    	
	    	$(".btn-primary").on("click", function(){
	    		formObj.attr("method", "get");
	    		formObj.attr("action", "/board/listPage");
	    		formObj.submit();
	    	});
	    	
	    });
	    </script>

</body>

</html>
