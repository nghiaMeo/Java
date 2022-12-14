<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<mt:managertemplate title="${title }">
	<jsp:attribute name="content">
	
		<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>${parentPageTitle }</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a
								href="${pageContext.request.contextPath }/manager/category/index">${parentPageTitle }</a></li>
								<li class="breadcrumb-item active">${pageTitle }</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">${pageTitle }</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<s:form method="POST"
								action="${pageContext.request.contextPath }/manager/category/create"
								modelAttribute="item">
									<div class="card-body">
										<div class="form-group">
											<s:label path="name">Name</s:label>
											<s:input cssClass="form-control" path="name"
											placeholder="Enter name" />
											<s:errors path="name" cssStyle="font-size: 80%;color: #dc3545;"></s:errors>
										</div>
										
										<div class="form-group">
											<s:label path="parentId">Parent category</s:label>
											<s:select path="parentId" cssClass="form-control">
												<s:option value="0" label="None"></s:option>
												<s:options items="${items}" itemLabel="name" itemValue="id"></s:options>
											</s:select>
										</div>

										<div class="form-check">
											<s:checkbox path="status" cssClass="form-check-input" />
											<s:label path="status">Status</s:label>
											<s:hidden path="id" />
											<s:hidden path="discount_percent" />
										</div>
									</div>
									<!-- /.card-body -->

									<div class="card-footer">
										<button type="submit" class="btn btn-primary">Submit</button>
										<button type="reset" class="btn btn-danger float-right">Reset</button>
									</div>
								</s:form>
							</div>
							<!-- /.card -->
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
			
	<input type="hidden" id="msg" value="${msg }">
	<input type="hidden" id="msgType" value="${msgType }">
	
	<script
			src="${pageContext.request.contextPath }/resources/manager/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
			src="${pageContext.request.contextPath }/resources/manager/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
			src="${pageContext.request.contextPath }/resources/manager/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
			src="${pageContext.request.contextPath }/resources/manager/dist/js/demo.js"></script>
	
	</jsp:attribute>
</mt:managertemplate>