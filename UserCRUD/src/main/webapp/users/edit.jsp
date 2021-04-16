<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/header.jsp"%>
<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Users list</a>
  </div>
  <%--  Data Form--%>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Edit User</h6>
    </div>
    <div class="card-body">
      <form class="user" action="/user/edit" method="post">
          <input type="hidden" name="id" value="${user.id}">
        <div class="form-group">
          <label for="InputUsername"> Username: </label>
          <input type="text" name="userName" value="${user.userName}" class="form-control form-control-user" id="InputUsername"
                 placeholder="Username">
        </div>
        <div class="form-group">
          <label for="InputEmail"> Email Address: </label>
          <input type="email" name="userEmail" value="${user.email}" class="form-control form-control-user" id="InputEmail"
                 placeholder=" User Email Address">
        </div>
        <div class="form-group">
          <label for="InputPassword"> Password: </label>
          <input type="password" name="userPassword" class="form-control form-control-user"
                 id="InputPassword" placeholder="User Password">
        </div>
        <button type="submit"class="btn btn-primary btn-user btn-block">Edit User</button>
        <hr>
      </form>
    </div>
  </div>
</div>
<%@include file="/footer.jsp"%>
