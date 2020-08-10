<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Purple Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../../assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../../assets/images/favicon.png" />
    
  </head>
  <script>
  function validate()
  {
  	if(document.getElementById("planname").value=="")
  		{
  		alert("Please enter Plan Name..!!");
  		return false;
  		}
  	if(document.getElementById("grossamt").value=="" || document.getElementById("grossamt").value=="0")
		{
		alert("Please enter Gross Amt..!!");
		return false;
		}
  	
  	return true;
  }
  function patternDays()
  {
	 if(document.getElementById("pattern").value=="Quaterly")
	 {
		 document.getElementById("duration").value="120";
	 }
	 if(document.getElementById("pattern").value=="Half-Yearly")
	 {
		 document.getElementById("duration").value="180";
	 }
	 if(document.getElementById("pattern").value=="Yearly")
	 {
		 document.getElementById("duration").value="365";
	 }
	 
  }
  function setZero()
  {
	  document.getElementById("discper").value="0";
	  document.getElementById("discamt").value="0";
	  document.getElementById("taxamt").value="0";
	  document.getElementById("sgstper").value="0";
	  document.getElementById("cgstper").value="0";
	  document.getElementById("igstper").value="0";
	  document.getElementById("cgstamt").value="0";
	  document.getElementById("sgstamt").value="0";
	  document.getElementById("igstamt").value="0";
	  document.getElementById("totaltaxamt").value="0";
	  document.getElementById("netamt").value="0";  
  }
  function calDiscount()
  {
	  //alert("Discount");
	  var discper=document.getElementById("discper").value;
	  var grossamt=document.getElementById("grossamt").value;	  
	 var discamt=(parseFloat(grossamt)*parseFloat(discper))/100;
	 document.getElementById("discamt").value=discamt;
	 document.getElementById("taxamt").value=parseFloat(grossamt)-parseFloat(discamt);
	 
  }
  function calCgst()
  {
	  //alert("Discount");
	  var taxamt=document.getElementById("taxamt").value;
	  var cgstper=document.getElementById("cgstper").value;	  
	 var cgstamt=(parseFloat(taxamt)*parseFloat(cgstper))/100;
	 document.getElementById("cgstamt").value=cgstamt;
	 var totaltaxamt=document.getElementById("totaltaxamt").value;
	 var netamt=document.getElementById("netamt").value;
	 //alert(parseFloat(totaltaxamt)+"==="+parseFloat(netamt));
	 document.getElementById("totaltaxamt").value=parseFloat(totaltaxamt)+parseFloat(cgstamt);
	 document.getElementById("netamt").value=parseFloat(netamt)+parseFloat(taxamt)+parseFloat(cgstamt);
	 
  }
  function calSgst()
  {
	  //alert("Discount");
	  var taxamt=document.getElementById("taxamt").value;
	  var sgstper=document.getElementById("sgstper").value;	  
	 var sgstamt=(parseFloat(taxamt)*parseFloat(sgstper))/100;
	 document.getElementById("sgstamt").value=sgstamt;
	 var totaltaxamt=document.getElementById("totaltaxamt").value;
	 var cgstamt=document.getElementById("cgstamt").value;
	 //alert(parseFloat(totaltaxamt)+"==="+parseFloat(netamt));
	 document.getElementById("totaltaxamt").value=parseFloat(totaltaxamt)+parseFloat(sgstamt);
	 document.getElementById("netamt").value=parseFloat(cgstamt)+parseFloat(taxamt)+parseFloat(sgstamt);
	 
  }
  function calIgst()
  {
	  //alert("Discount");
	  var taxamt=document.getElementById("taxamt").value;
	  var igstper=document.getElementById("igstper").value;	  
	 var igstamt=(parseFloat(taxamt)*parseFloat(igstper))/100;
	 document.getElementById("igstamt").value=igstamt;
	 var totaltaxamt=document.getElementById("totaltaxamt").value;
	 var cgstamt=document.getElementById("cgstamt").value;
	 var sgstamt=document.getElementById("sgstamt").value;
	 //alert(parseFloat(totaltaxamt)+"==="+parseFloat(netamt));
	 document.getElementById("totaltaxamt").value=parseFloat(totaltaxamt)+parseFloat(igstamt);
	 document.getElementById("netamt").value=parseFloat(taxamt)+parseFloat(cgstamt)+parseFloat(igstamt)+parseFloat(sgstamt);
	 
  }
  </script>
  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="../../index.html"><img src="../../assets/images/logo.svg" alt="logo" /></a>
          <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../assets/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <div class="search-field d-none d-md-block">
            <form class="d-flex align-items-center h-100" action="#">
              <div class="input-group">
                <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>
                </div>
                <input type="text" class="form-control bg-transparent border-0" placeholder="Search projects">
              </div>
            </form>
          </div>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <div class="nav-profile-img">
                  <img src="../../assets/images/faces/face1.jpg" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black">David Greymaax</p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" href="#">
                  <i class="mdi mdi-cached mr-2 text-success"></i> Activity Log </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
                  <i class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
              </div>
            </li>
            <li class="nav-item d-none d-lg-block full-screen-link">
              <a class="nav-link">
                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <i class="mdi mdi-email-outline"></i>
                <span class="count-symbol bg-warning"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                <h6 class="p-3 mb-0">Messages</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="../../assets/images/faces/face4.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark send you a message</h6>
                    <p class="text-gray mb-0"> 1 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="../../assets/images/faces/face2.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh send you a message</h6>
                    <p class="text-gray mb-0"> 15 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="../../assets/images/faces/face3.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
                    <p class="text-gray mb-0"> 18 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <h6 class="p-3 mb-0 text-center">4 new messages</h6>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                <i class="mdi mdi-bell-outline"></i>
                <span class="count-symbol bg-danger"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <h6 class="p-3 mb-0">Notifications</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-success">
                      <i class="mdi mdi-calendar"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                    <p class="text-gray ellipsis mb-0"> Just a reminder that you have an event today </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-warning">
                      <i class="mdi mdi-settings"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                    <p class="text-gray ellipsis mb-0"> Update dashboard </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-info">
                      <i class="mdi mdi-link-variant"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                    <p class="text-gray ellipsis mb-0"> New admin wow! </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <h6 class="p-3 mb-0 text-center">See all notifications</h6>
              </div>
            </li>
            <li class="nav-item nav-logout d-none d-lg-block">
              <a class="nav-link" href="#">
                <i class="mdi mdi-power"></i>
              </a>
            </li>
            <li class="nav-item nav-settings d-none d-lg-block">
              <a class="nav-link" href="#">
                <i class="mdi mdi-format-line-spacing"></i>
              </a>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="../../assets/images/faces/face1.jpg" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">David Grey. H</span>
                  <span class="text-secondary text-small">Project Manager</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../index.html">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Masters</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/member.jsp">Member</a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/staff.jsp">Staff</a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/equipment.jsp">Equipment</a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/packages.jsp">Packages</a></li>
                  <li class="nav-item"> <a class="nav-link" href="pages/ui-features/user.jsp">User</a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../pages/icons/mdi.html">
                <span class="menu-title">Icons</span>
                <i class="mdi mdi-contacts menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../pages/forms/basic_elements.html">
                <span class="menu-title">Forms</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../pages/charts/chartjs.html">
                <span class="menu-title">Charts</span>
                <i class="mdi mdi-chart-bar menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../../pages/tables/basic-table.html">
                <span class="menu-title">Tables</span>
                <i class="mdi mdi-table-large menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                <span class="menu-title">Sample Pages</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-medical-bag menu-icon"></i>
              </a>
              <div class="collapse" id="general-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="../../pages/samples/blank-page.html"> Blank Page </a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../pages/samples/login.html"> Login </a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../pages/samples/register.html"> Register </a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../pages/samples/error-404.html"> 404 </a></li>
                  <li class="nav-item"> <a class="nav-link" href="../../pages/samples/error-500.html"> 500 </a></li>
                </ul>
              </div>
            </li>
            <li class="nav-item sidebar-actions">
              <span class="nav-link">
                <div class="border-bottom">
                  <h6 class="font-weight-normal mb-3">Projects</h6>
                </div>
                <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button>
                <div class="mt-4">
                  <div class="border-bottom">
                    <p class="text-secondary">Categories</p>
                  </div>
                  <ul class="gradient-bullet-list mt-4">
                    <li>Free</li>
                    <li>Pro</li>
                  </ul>
                </div>
              </span>
            </li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h3 class="page-title"></h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="#"></a></li>
                  <li class="breadcrumb-item active" aria-current="page"></li>
                </ol>
              </nav>
            </div>
             
            <div class="row">
              <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  <c:choose>
        <c:when test="${not empty sucessmsg}">	
        <center><h4 style="color:red;margin-top:-150px;">${sucessmsg}</h2></center>
        </c:when>
		<c:when test="${not empty errormsg}">
		<center><h4 style="color:red;margin-top:-150px;">${errormsg}</h2></center>
        </c:when>
		</c:choose>
                    <h4 class="card-title">Plan Info</h4>
                    <p class="card-description"> Basic Information</p>
                    <form class="forms-sample" method="post" action="../../addPlan">
                      <div class="form-group">	
                        <label for="planname">Plan Name</label>
                        <input type="text" class="form-control" id="planname"  name="planname" placeholder="Name">
                      </div>
                      <div class="form-group">
                        <label for="category">Category</label>
                        <select class="form-control" id="category" name="category">
                          <option value="">Category</option>
                          <option value="">Category</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="pattern">Pattern</label>
                        <select class="form-control" id="pattern" name="pattern" onchange="patternDays();">
                          <option value="Monthly">Monthly</option>
                          <option value=Monthly>Quaterly</option>
                          <option value="Half-Yearly">Half-Yearly</option>
                          <option value="Yearly">Yearly</option>
                          
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="duration">Duration (Days)</label>
                        <input type="text" class="form-control" id="duration" name="duration" value="30">
                      </div>
                      <div class="form-group">
                        <label for="valid">Valid For</label>
                        <select class="form-control" id="valid" name ="valid" >
                          <option value ="All">All</option>
                          <option value="Male">Male</option>
                          <option value="Female">Female</option>
                        </select>
                      <div class="form-group">
                        <label for="grossamt">Gross Amt.</label>
                        <input type="text" class="form-control" id="grossamt" name="grossamt" onblur="setZero();">
                      </div>
                      <div class="form-group">
                          <label for="discper">Discoount (%)</label>
                          <input class="form-control" id="discper" name="discper" placeholder="0" onblur="calDiscount();"/>
                      </div>
                      <div class="form-group">
                          <label for="discamt">Discoount Rs.</label>
                          <input type="text" class="form-control" id="discamt" name="discamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="taxamt">Taxable Amount</label>
                          <input type="text" class="form-control" id="taxamt" name="taxamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="cgstper">CGST (%)</label>
                          <input type="text" class="form-control" id="cgstper" name="cgstper" value="0" onblur="calCgst();" />
                      </div>
                      <div class="form-group">
                          <label for="sgstper">SGST (%)</label>
                          <input type="text" class="form-control" id="sgstper" name="sgstper" value="0" onblur="calSgst();"/>
                      </div>
                      <div class="form-group">
                          <label for="igstper">IGST (%)</label>
                          <input type="text"  class="form-control" id="igstper" name="igstper" value="0" onblur="calIgst();"/>
                      </div>
                      <div class="form-group">
                          <label for="cgstamt">CGST Rs.</label>
                          <input class="form-control" id="cgstamt" name="cgstamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="sgstamt">SGST Rs.</label>
                          <input type="text" class="form-control" id="sgstamt" name="sgstamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="igstamt">IGST Rs.</label>
                          <input type="text" class="form-control" id="igstamt" name="igstamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="totaltaxamt">Total Tax Amount</label>
                          <input type="text" class="form-control" id="totaltaxamt" name="totaltaxamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="netamt">Net Amount</label>
                          <input type="text" class="form-control" id="netamt" name="netamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="registamt">Registration Amount</label>
                          <input type="text" class="form-control" id="registamt" name="registamt" value="0" />
                      </div>
                      <div class="form-group">
                          <label for="othercharges">Other Charges</label>
                          <input type="text" class="form-control" id="othercharges" name="othercharges" value="0" />
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleSelectStatus">Status</label>
                        <select class="form-control" id="status" name="status">
                          <option value="Active">Active</option>
                          <option value="Inactive">Inactive</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="4"></textarea>
                      </div>
                      <button type="submit" class="btn btn-gradient-primary mr-2" onclick="return validate();">Submit</button>
                      <button class="btn btn-light">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="../../assets/js/file-upload.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>