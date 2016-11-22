<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pm_info.aspx.cs" Inherits="production_pm_info" %>

<!DOCTYPE html>
<html lang="en">
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>PM Report Support System</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
      <form id="form1" runat="server">
          <div class="container body">
              <div class="main_container">
                  <div class="col-md-3 left_col menu_fixed">
                      <div class="col-md-3 left_col">
                          <div class="left_col scroll-view">
                              <div class="navbar nav_title" style="border: 0;">
                                  <a href="index.html" class="site_title"> <span>PM Report</span></a>
                              </div>
                              <div class="clearfix"></div>
                              <!-- menu profile quick info -->
                              <div class="profile">
                                  <div class="profile_pic">
                                      <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                                  </div>
                                  <div class="profile_info">
                                      <span>Welcome,</span>
                                      <h2>John Doe</h2>
                                  </div>
                              </div>
                              <!-- /menu profile quick info -->
                              <br />
                              <!-- sidebar menu -->
                              <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                                  <div class="menu_section">
                                      <h3>Monday 24 August 2016</h3>
                                      <ul class="nav side-menu">
                                          <li>
                                              <a><i class="fa fa-home"></i> Home</a>
                                          </li>
                                          <li>
                                              <a><i class="fa fa-edit"></i> Generate PM</a>
                                          </li>
                                          <li>
                                              <a><i class="fa fa-desktop"></i> Search PM</a>
                                          </li>
                                          <li>
                                              <a><i class="fa fa-table"></i> Review PM</a>
                                          </li>
                                      </ul>
                                  </div>
                              </div>
                              <!-- /sidebar menu -->
                          </div>
                      </div>
                  </div>
                  <!-- top navigation -->
                  <div class="top_nav">
                      <div class="nav_menu">
                          <nav>
                              <div class="nav toggle">
                                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                              </div>
                              <ul class="nav navbar-nav navbar-right">
                                  <li class="">
                                      <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                          <img src="images/img.jpg" alt="">John Doe
                                          <span class=" fa fa-angle-down"></span>
                                      </a>
                                      <ul class="dropdown-menu dropdown-usermenu pull-right">
                                          <li><a href="javascript:;"> Profile</a></li>
                                          <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                      </ul>
                                  </li>
                              </ul>
                          </nav>
                      </div>
                  </div>
                  <!-- /top navigation -->
                  <!-- page content -->
                  <div class="right_col" role="main">
                      <div class="">
                          <div class="page-title">
                              <div class="title_left">
                                  <h3>Preventive Maintenance</h3>
                              </div>
                          </div>
                          <div class="clearfix"></div>
                          <div class="row">
                              <div class="col-md-12 col-sm-12 col-xs-12">
                                  <div class="x_panel">
                                      <div class="x_title">
                                          <h2>BKI DBBKIINS Q2/2016</h2>
                                          <div class="clearfix"></div>
                                      </div>
                                      <div class="x_content">
                                          <!-- Flat -->
                                          <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                              <!-- Head Tab -->
                                              <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                                                  <li role="presentation" class="active">
                                                      <a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Summary</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">1</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">2</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content4" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">3</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content5" role="tab" id="profile-tab4" data-toggle="tab" aria-expanded="false">4</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content6" role="tab" id="profile-tab5" data-toggle="tab" aria-expanded="false">5</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content7" role="tab" id="profile-tab6" data-toggle="tab" aria-expanded="false">6</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content8" role="tab" id="profile-tab7" data-toggle="tab" aria-expanded="false">7</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content9" role="tab" id="profile-tab8" data-toggle="tab" aria-expanded="false">8</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content10" role="tab" id="profile-tab9" data-toggle="tab" aria-expanded="false">9</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content11" role="tab" id="profile-tab10" data-toggle="tab" aria-expanded="false">10</a>
                                                  </li>
                                                  <li role="presentation" class="">
                                                      <a href="#tab_content12" role="tab" id="profile-tab11" data-toggle="tab" aria-expanded="false">11</a>
                                                  </li>
                                              </ul>
                                              <!-- End Head Tab -->
                                              <!-- Content on Tab -->
                                              <div id="myTabContent" class="tab-content">
                                                  <!-- Tab Summary -->
                                                  <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                                                      <h4><b>Summary Suggestion</b></h4>
                                                      <!-- Database Section -->
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th colspan="6">Database Section</th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Detail</b></td>
                                                                  <td><b>More Detail</b></td>
                                                              </tr>
                                                              <tr>
                                                                  <td>Verify invalid objects and disabled constraints</td>
                                                                  <td>Topic : APPENDIX A – Invalid Object</td>
                                                              </tr>
                                                              <tr>
                                                                  <td>
                                                                      Investigate SQL statement <br>
                                                                      - SQL_ID: 8htrh753jm2ad <br>
                                                                      - SQL_ID: cwzwtsdb5a34g
                                                                  </td>
                                                                  <td>Topic : APPENDIX C – SQL Statement should be to investigate</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End Database Section -->
                                                      <!-- OS Section -->
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th colspan="6">Operating System Section</th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Detail</b></td>
                                                                  <td><b>More Detail</b></td>
                                                              </tr>
                                                              <tr>
                                                                  <td>Verify invalid objects and disabled constraints</td>
                                                                  <td>Topic : APPENDIX A – Invalid Object</td>
                                                              </tr>
                                                              <tr>
                                                                  <td>
                                                                      Investigate SQL statement <br>
                                                                      - SQL_ID: 8htrh753jm2ad <br>
                                                                      - SQL_ID: cwzwtsdb5a34g
                                                                  </td>
                                                                  <td>Topic : APPENDIX C – SQL Statement should be to investigate</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End OS Section -->
                                                  </div>
                                                  <!-- End Tab Summary -->
                                                  <!-- Tab 1 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
                                                      <h4><b>1. General Project Information</b></h4>
                                                      <!-- 1.1 -->
                                                      <h5><b>1.1 Project Information</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Project Name</b></td>
                                                                  <td><asp:Label ID="projectName" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Project Code</b></td>
                                                                  <td><asp:Label ID="projectCode" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Sale Name</b></td>
                                                                  <td><asp:Label ID="salePerson" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Phone Number</b></td>
                                                                  <td><asp:Label ID="salePhone" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Email Address</b></td>
                                                                  <td><asp:Label ID="saleEmail" runat="server"></asp:Label></td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 1.1 -->
                                                      <!-- 1.2 -->
                                                      <h5><b>1.2 Customer Contact Information</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Customer Name</b></td>
                                                                  <td>K.Kamolporn Wiriyathanagorn</td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Phone Number</b></td>
                                                                  <td>087-797-7733</td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Email Address</b></td>
                                                                  <td>kamolporn.w@bangkokinsurance.com</td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Customer Name</b></td>
                                                                  <td>K.Preecha Laochamnankit</td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Phone Number</b></td>
                                                                  <td>086-703-2434</td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Email Address</b></td>
                                                                  <td>preecha.l@bangkokinsurance.com</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 1.2 -->
                                                      <!-- 1.3 -->
                                                      <h5><b>1.3 MFEC Engineers' Information</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Engineer Name</b></td>
                                                                  <td>K.Supaporn Rattanapan</td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Phone Number</b></td>
                                                                  <td>084-160-8910</td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Email Address</b></td>
                                                                  <td>supaporn_r@mfec.co.th</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 1.3 -->
                                                      <!-- 1.4 -->
                                                      <h5><b>1.4 Change Record</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Date</b></th>
                                                                  <th><b>Author</b></th>
                                                                  <th><b>Version</b></th>
                                                                  <th><b>Change Reference</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>29-JUNE-2016</td>
                                                                  <td>K.Supaporn Rattanapan</td>
                                                                  <td>1.0</td>
                                                                  <td>Initial Document</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 1.4 -->
                                                      <!-- 1.5 -->
                                                      <h5><b>1.5 Reviewer</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Date</b></th>
                                                                  <th><b>Name</b></th>
                                                                  <th><b>Position</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>29-JUNE-2016</td>
                                                                  <td>K.Avika Sangpenprow</td>
                                                                  <td>Database Administrator</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 1.5 -->
                                                  </div>
                                                  <!-- End Tab 1 -->
                                                  <!-- Tab 2 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab">
                                                      <h4><b>2. Oracle Minimum Requirement</b></h4>
                                                      <!-- 2.1 -->
                                                      <h5><b>2.1 Checking Server Machine Specification</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b></b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Hostname</b></td>
                                                                  <td><asp:Label ID="hostname" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>IP Address</b></td>
                                                                  <td><asp:Label ID="ipAddress" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Oracle owner</b></td>
                                                                  <td>
                                                                      <table class="table table-striped table-bordered">
                                                                          <thead>
                                                                              <tr>
                                                                                  <th><b>Login</b></th>
                                                                                  <th><b>Home's Directory</b></th>
                                                                                  <th><b>Shell</b></th>
                                                                              </tr>
                                                                          </thead>
                                                                          <tbody>
                                                                              <tr>
                                                                                  <td><asp:Label ID="login" runat="server"></asp:Label></td>
                                                                                  <td><asp:Label ID="homeDirectory" runat="server"></asp:Label></td>
                                                                                  <td><asp:Label ID="shell" runat="server"></asp:Label></td>
                                                                              </tr>
                                                                          </tbody>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Oracle group</b></td>
                                                                  <td>
                                                                      <table class="table table-striped table-bordered">
                                                                          <thead>
                                                                              <tr>
                                                                                  <th><b>First Group</b></th>
                                                                                  <th><b>Second Group</b></th>
                                                                              </tr>
                                                                          </thead>
                                                                          <tbody>
                                                                              <tr>
                                                                                  <td><asp:Label ID="oracleFirstGroup" runat="server"></asp:Label></td>
                                                                                  <td><asp:Label ID="oracleSecondGroup" runat="server"></asp:Label></td>
                                                                              </tr>
                                                                          </tbody>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 2.1 -->
                                                      <!-- 2.2 -->
                                                      <h5><b>2.2 Compare to Oracle Requirement for $Hostname</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Requirement</b></th>
                                                                  <th><b>Server Specification</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b><asp:Label ID="osType" runat="server"></asp:Label> OS: </b></td>
                                                                  <td><asp:Label ID="osInfo" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b><asp:Label  ID="osType1"  runat="server"></asp:Label> Disk Space: </b></td>
                                                                  <td> 
                                                                      <asp:Table ID="diskTable" runat="server" CssClass ="table table-striped table-bordered">
                                                                        <asp:TableHeaderRow>
                                                                            <asp:TableHeaderCell>File System</asp:TableHeaderCell>
                                                                            <asp:TableHeaderCell>Mb Blocks</asp:TableHeaderCell>
                                                                            <asp:TableHeaderCell>Free</asp:TableHeaderCell>
                                                                            <asp:TableHeaderCell>Percent Used</asp:TableHeaderCell>
                                                                            <asp:TableHeaderCell>iUsed</asp:TableHeaderCell>
                                                                            <asp:TableHeaderCell>percent IUsed</asp:TableHeaderCell>
                                                                            <asp:TableHeaderCell>Mounted On</asp:TableHeaderCell>
                                                                        </asp:TableHeaderRow>
                                                                       </asp:Table> </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b><asp:Label ID="osType2" runat="server"></asp:Label> RAM: </b></td>
                                                                  <td><asp:Label ID="ram" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b><asp:Label ID="osType3" runat="server"></asp:Label> Swap: </b></td>
                                                                  <td> <asp:Label ID="swap" runat="server"></asp:Label> </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b><asp:Label ID="osType4" runat="server"></asp:Label> Tmp: </b></td>
                                                                  <td><asp:Label ID="tmp" runat="server"></asp:Label> </td>
                                                              </tr>
                                                               <tr>
                                                                  <td><b>Java: </b></td>
                                                                  <td><asp:Label ID="java" runat="server"></asp:Label> </td>
                                                              </tr>
                                                               <tr>
                                                                  <td><b>Kernel:</b></td>
                                                                  <td><asp:Label ID="kernel" runat="server"></asp:Label> </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 2.2 -->
                                                      <!-- 2.3 -->
                                                      <h5><b>2.3 User's Environment for $Hostname</b></h5>
                                                        <asp:Table ID="envTable" runat="server" CssClass ="table table-striped table-bordered">
                                                                <asp:TableHeaderRow>
                                                                    <asp:TableHeaderCell>Parameter</asp:TableHeaderCell>
                                                                    <asp:TableHeaderCell>Value</asp:TableHeaderCell>
                                                                </asp:TableHeaderRow>
                                                                </asp:Table> 
                                                      <!-- End 2.3 -->
                                                  </div>
                                                  <!-- End Tab 2 -->
                                                  <!-- Tab 3 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="profile-tab">
                                                      <h4><b>3. System Checklist</b></h4>
                                                      <!-- 3.1 -->
                                                      <h5><b>3.1 Hardware Configuration for $HOSTNAME</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b></b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>System Model</b></td>
                                                                  <td> <asp:Label ID="systemModel" runat="server"></asp:Label>  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Machine Serial Number</b></td>
                                                                  <td> <asp:Label ID="machineSerailNumber" runat="server"></asp:Label>  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Processor Type</b></td>
                                                                  <td> <asp:Label ID="processorType" runat="server"></asp:Label>  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Processor Implementation Mode</b></td>
                                                                  <td> <asp:Label ID="processorImplementationMode" runat="server"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Processor Version</b></td>
                                                                  <td> <asp:Label ID="processorVersion" runat="server"></asp:Label> </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Number Of Processors </b></td>
                                                                  <td> <asp:Label ID="numOfProc" runat="server"></asp:Label> </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>CPU Type</b></td>
                                                                  <td> <asp:Label ID="cpuType" runat="server"></asp:Label> </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Kernel Type</b></td>
                                                                  <td> <asp:Label ID="kernelType" runat="server"></asp:Label> </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 3.1 -->
                                                      <!-- 3.2 -->
                                                      <h5><b>3.2 Network Configuration for $HOSTNAME</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b></b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>IP Address</b></td>
                                                                  <td> <asp:Label ID="ipaddresses" runat="server"></asp:Label> </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Sub Netmask</b></td>
                                                                  <td> <asp:Label ID="subNetMask" runat="server"></asp:Label> </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 3.2 -->
                                                      <!-- 3.3 -->
                                                      <h5><b>3.3 Crontab Information for <asp:Label ID="hostname2" runat="server"></asp:Label></b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Crontab Information</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><asp:Label ID="crontab" runat="server"></asp:Label></td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 3.3 -->
                                                  </div>
                                                  <!-- End Tab 3 -->
                                                  <!-- Tab 4 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content5" aria-labelledby="profile-tab">
                                                      <h4><b>4. Database Information</b></h4>
                                                      <!-- 4.1 -->
                                                      <h5><b>4.1 Database Configuration</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b></b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Instance Name</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>RDBMS Version/Release</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>SQL*Net Port</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Number of Datafiles</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Number of Tablespace</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Temp Tablespace Size</b></td>
                                                                  <td>
                                                                      <table class="table table-striped table-bordered">
                                                                          <thead>
                                                                              <tr>
                                                                                  <th><b>Temporary Tablespace Name</b></th>
                                                                                  <th><b>Size (MB)</b></th>
                                                                              </tr>
                                                                          </thead>
                                                                          <tbody>
                                                                              <tr>
                                                                                  <td>..</td>
                                                                                  <td>..</td>
                                                                              </tr>
                                                                          </tbody>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Tablespace Size</b></td>
                                                                  <td>
                                                                      <table class="table table-striped table-bordered">
                                                                          <thead>
                                                                              <tr>
                                                                                  <th><b>Tablespace Name</b></th>
                                                                                  <th><b>Size (MB)</b></th>
                                                                              </tr>
                                                                          </thead>
                                                                          <tbody>
                                                                              <tr>
                                                                                  <td>..</td>
                                                                                  <td>..</td>
                                                                              </tr>
                                                                          </tbody>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Is Archiving Enabled</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Disk Space (DataFile + TempFile + RedoLogFile)</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>What optimizer mode is the database in (RULE, COST, ALL_ROWS, FIRST_ROWS)</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.1 -->
                                                      <!-- 4.2 -->
                                                      <h5><b>4.2 Database Parameter</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Name</b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>   <td><b>  O7_DICTIONARY_ACCESSIBILITY </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  aq_tm_processes </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  audit_file_dest </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  audit_trail </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  background_core_dump  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  background_dump_dest  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  compatible  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  control_file_record_keep_time </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  control_files </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  core_dump_dest  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  cpu_count </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  cursor_sharing  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  cursor_space_for_time </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_block_checking </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_block_checksum </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_block_size </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_cache_advice </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_cache_size </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_file_multiblock_read_count </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_name </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_recovery_file_dest </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_recovery_file_dest_size  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  db_writer_processes </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  disk_asynch_io  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  dispatchers </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  fast_start_io_target  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  fast_start_mttr_target  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  fast_start_parallel_rollback  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  filesystemio_options  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  hash_area_size  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  instance_name </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  java_pool_size  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  job_queue_processes </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  large_pool_size </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  log_archive_start </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  log_buffer  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  log_checkpoint_interval </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  log_checkpoint_timeout  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  max_commit_propagation_delay  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  max_dispatchers </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  max_dump_file_size  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  max_enabled_roles </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  max_shared_servers  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  memory_max_target </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  memory_target </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  nls_language  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  nls_territory </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  nls_characterset  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  olap_page_pool_size </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  open_cursors  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  optimizer_mode  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  parallel_max_servers  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  pga_aggregate_target  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  remote_login_passwordfile </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  remote_os_authent </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  remote_os_roles </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  sessions  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  sga_max_size  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  sga_target  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  shared_pool_reserved_size </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  shared_pool_size  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  sort_area_retained_size </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  sort_area_size  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  spfile  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  transactions  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  transactions_per_rollback_segment </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  undo_management </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  undo_retention  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  undo_tablespace </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  user_dump_dest  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  utl_file_dir  </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  workarea_size_policy  </b></td>    <td> .. </td>        </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.2 -->
                                                      <!-- 4.3 -->
                                                      <h5><b>4.3 Major Security Initailization Parameters</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Name</b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>   <td><b>  O7_DICTIONARY_ACCESSIBILITY </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  audit_trail </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  remote_login_passwordfile </b></td>    <td> .. </td>        </tr>
                                                              <tr>   <td><b>  remote_os_authent </b></td>    <td> .. </td>        </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.3 -->
                                                      <!-- 4.4 -->
                                                      <h5><b>4.4 Database Files</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>TBS Name</b></th>
                                                                  <th><b>File Name</b></th>
                                                                  <th><b>Size (MB)</b></th>
                                                                  <th><b>Max (MB)</b></th>
                                                                  <th><b>Aut</b></th>
                                                                  <th><b>Inc(block)</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>O7_DICTIONARY_ACCESSIBILITY</td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>O7_DICTIONARY_ACCESSIBILITY </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.4 -->
                                                      <!-- 4.5 -->
                                                      <h5><b>4.5 Temporary Files</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>TBS Name</b></th>
                                                                  <th><b>File Name</b></th>
                                                                  <th><b>Size (MB)</b></th>
                                                                  <th><b>Max (MB)</b></th>
                                                                  <th><b>Aut</b></th>
                                                                  <th><b>Inc(block)</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>O7_DICTIONARY_ACCESSIBILITY </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>  O7_DICTIONARY_ACCESSIBILITY</td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.5 -->
                                                      <!-- 4.6 -->
                                                      <h5><b>4.6 Redo Log Files</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Group#</b></th>
                                                                  <th><b>Member</b></th>
                                                                  <th><b>Size (MB)</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>O7_DICTIONARY_ACCESSIBILITY</td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>O7_DICTIONARY_ACCESSIBILITY</td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.6 -->
                                                      <!-- 4.7 -->
                                                      <h5><b>4.7 Control Files</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Control File Name</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>O7_DICTIONARY_ACCESSIBILITY</td>
                                                              </tr>
                                                              <tr>
                                                                  <td> O7_DICTIONARY_ACCESSIBILITY</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.7 -->
                                                      <!-- 4.8 -->
                                                      <h5><b>4.8 Daily Calendar Worksheet</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Time</b></th>
                                                                  <th><b>Description of Housekeeping and Batch Processing Schedule</b></th>
                                                                  <th><b>Estimated Duration</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                              </tr>
                                                              <tr>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.8 -->
                                                      <!-- 4.9 -->
                                                      <h5><b>4.9 Monthly Calendar Worksheet</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Day</b></th>
                                                                  <th><b>Description of Housekeeping and Batch Processing Schedule</b></th>
                                                                  <th><b>Estimated Duration</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                              </tr>
                                                              <tr>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                                  <td>...</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 4.9 -->
                                                  </div>
                                                  <!-- End Tab 4 -->
                                                  <!-- Tab 5 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content6" aria-labelledby="profile-tab">
                                                      <h4><b>5. RDBMS Performance</b></h4>
                                                      <!-- 5.1 -->
                                                      <h5><b>5.1 Performance Review</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Information Required to Tune Memory Allocation</b></th>
                                                                  <th><b>Answer</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>1. What is the gethitratio of the librarycache?</b></td>
                                                                  <td>
                                                                      <table class="table table-striped table-bordered">
                                                                          <thead>
                                                                              <tr>
                                                                                  <th><b>Namespace</b></th>
                                                                                  <th><b>GetHitRatio</b></th>
                                                                              </tr>
                                                                          </thead>
                                                                          <tbody>
                                                                              <tr>
                                                                                  <td>..</td>
                                                                                  <td>..</td>
                                                                              </tr>
                                                                          </tbody>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>
                                                                      <b>
                                                                          2. What is the PIN / RELOAD ratio within the librarycache;

                                                                          Select sum(pins) "Executions", sum(reloads) "Cache Misses", sum(reloads)/sum(pins) from v$librarycache;

                                                                          Note: Reload should ideally be ZERO
                                                                          Never more than 1% of the PINS.

                                                                          If reloads to pin ratio is >1% - INCREASE the shared_pool_size.
                                                                      </b>
                                                                  </td>
                                                                  <td>
                                                                      <table class="table table-striped table-bordered">
                                                                          <thead>
                                                                              <tr>
                                                                                  <th><b>Execution</b></th>
                                                                                  <th><b>Cache Misses</b></th>
                                                                                  <th><b>Sum</b></th>
                                                                              </tr>
                                                                          </thead>
                                                                          <tbody>
                                                                              <tr>
                                                                                  <td>..</td>
                                                                                  <td>..</td>
                                                                                  <td>..</td>
                                                                              </tr>
                                                                          </tbody>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>
                                                                      <b>
                                                                          3. Data Dictionary Cache Miss Ratio
                                                                          Keep this below 5%
                                                                      </b>
                                                                  </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>4. shared_pool_size =?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>5. shared_pool_reserved_size =?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>
                                                                      <b>
                                                                          6. What are the SHARED_POOL_RESERVED statistics?
                                                                          Select * from v$shared_pool_reserved?
                                                                      </b>
                                                                  </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>7. Redo Log space request </b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>8. DB Block Buffer Cache Hit Ratio?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>9. Latch Hit Ratio?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>10. Disk Sort Ratio?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>10. Disk Sort Ratio?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>11. Rollback Segment Waits?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>12. Dispatcher Workload?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>13. PGA cache hit percentage </b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>The UNDO Tablespace</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Number and size of Undo Segments?</b></td>
                                                                  <td>
                                                                      <table class="table table-striped table-bordered">
                                                                          <thead>
                                                                              <tr>
                                                                                  <th><b>Amount</b></th>
                                                                                  <th><b>Segment Type</b></th>
                                                                                  <th><b>Size (MB)</b></th>
                                                                              </tr>
                                                                          </thead>
                                                                          <tbody>
                                                                              <tr>
                                                                                  <td>..</td>
                                                                                  <td>..</td>
                                                                                  <td>..</td>
                                                                              </tr>
                                                                          </tbody>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Information Required to Tune Logging and Archiving </b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>At least 3 redo log groups?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Are using Archive Mode</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                              <tr>
                                                                  <td><b>Archive log names include sequence number?</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 5.1 -->
                                                      <!-- 5.2 -->
                                                      <h5><b>5.2 Database Growth Rate</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b></b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Instance Name</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 5.2 -->
                                                      <!-- 5.3 -->
                                                      <h5><b>5.3 Performance Analysis</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b></b></th>
                                                                  <th><b>Values</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td><b>Instance Name</b></td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 5.3 -->
                                                  </div>
                                                  <!-- End Tab 5 -->
                                                  <!-- Tab 6 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content7" aria-labelledby="profile-tab">
                                                      <h4><b>6. Tablespace Free Space</b></h4>
                                                      <!-- 6.1 -->
                                                      <h5><b>6.1 Tablespace Free Space</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Tablespace Name</b></th>
                                                                  <th><b>Max Blocks</b></th>
                                                                  <th><b>Count Blocks</b></th>
                                                                  <th><b>Sum Free Blocks</b></th>
                                                                  <th><b>PCT_FREE</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 6.1 -->
                                                  </div>
                                                  <!-- End Tab 6 -->
                                                  <!-- Tab 7 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content8" aria-labelledby="profile-tab">
                                                      <h4><b>7. Default and Temporary Tablespace </b></h4>
                                                      <!-- 7.1 -->
                                                      <h5><b>7.1 Default Tablespace and Temporary Tablespace</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>User Name</b></th>
                                                                  <th><b>Default Tablespace</b></th>
                                                                  <th><b>Temporary Tablespace</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 7.1 -->
                                                  </div>
                                                  <!-- End Tab 7 -->
                                                  <!-- Tab 8 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content9" aria-labelledby="profile-tab">
                                                      <h4><b>8. Database Registry</b></h4>
                                                      <!-- 8.1 -->
                                                      <h5><b>8.1 Check Database Registry</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Comp ID</b></th>
                                                                  <th><b>Version</b></th>
                                                                  <th><b>Status</b></th>
                                                                  <th><b>Last Modified</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 8.1 -->
                                                  </div>
                                                  <!-- End Tab 8 -->
                                                  <!-- Tab 9 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content10" aria-labelledby="profile-tab">
                                                      <h4><b>9. Invalid Object</b></h4>
                                                      <!-- 9.1 -->
                                                      <h5><b>9.1 Invalid Object Report</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Creator:</b></th>
                                                              </tr>
                                                              <tr>
                                                                  <th><b>Object Name</b></th>
                                                                  <th><b>Object Type</b></th>
                                                                  <th><b>Status</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 9.1 -->
                                                      <!-- 9.2 -->
                                                      <h5><b>9.2 Disabled Constraints</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th><b>Creator:</b></th>
                                                              </tr>
                                                              <tr>
                                                                  <th><b>Object Name</b></th>
                                                                  <th><b>Object Type</b></th>
                                                                  <th><b>C</b></th>
                                                                  <th><b>Status</b></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                                  <td> .. </td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 9.2 -->
                                                  </div>
                                                  <!-- End Tab 9 -->
                                                  <!-- Tab 10 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content11" aria-labelledby="profile-tab">
                                                      <h4><b>10. Information from Alert Log</b></h4>
                                                      <!-- 10.1 -->
                                                      <h5><b>Alert Log of $DatabaseName</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th></th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>Message: </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>Posstble Cause: </td>
                                                              </tr>
                                                              <tr>
                                                                  <td>Action:</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End 10.1 -->
                                                  </div>
                                                  <!-- End Tab 10 -->
                                                  <!-- Tab 11 -->
                                                  <div role="tabpanel" class="tab-pane fade" id="tab_content12" aria-labelledby="profile-tab">
                                                      <h4><b>11. Backup History</b></h4>
                                                      <!-- Backup Database -->
                                                      <h5><b>Backup Database</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th> Last Backup Database on</th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>Backup</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End Backup Database -->
                                                      <!-- Backup Archivelog -->
                                                      <h5><b>Backup Archivelog</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th> Last Backup Archivelog on</th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>Backup</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End Backup Archivelog -->
                                                      <!-- Backup Controlfile -->
                                                      <h5><b>Backup Controlfile</b></h5>
                                                      <table class="table table-striped table-bordered">
                                                          <thead>
                                                              <tr>
                                                                  <th> Last Backup Controlfile on</th>
                                                              </tr>
                                                          </thead>
                                                          <tbody>
                                                              <tr>
                                                                  <td>Backup</td>
                                                              </tr>
                                                          </tbody>
                                                      </table>
                                                      <!-- End Backup Controlfile -->
                                                  </div>
                                                  <!-- End Tab 11 -->
                                              </div>
                                              <!-- End Content on Tab -->
                                          </div>
                                          <!-- End Flat -->

                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <!-- /page content -->
                  <!-- footer content -->
                  <footer>
                      <div class="pull-right">
                          Power by beebie
                      </div>
                      <div class="clearfix"></div>
                  </footer>
                  <!-- /footer content -->
              </div>
          </div>
          </form>
          <!-- jQuery -->
          <script src="../vendors/jquery/dist/jquery.min.js"></script>
          <!-- Bootstrap -->
          <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
          <!-- FastClick -->
          <script src="../vendors/fastclick/lib/fastclick.js"></script>
          <!-- NProgress -->
          <script src="../vendors/nprogress/nprogress.js"></script>
          <!-- jQuery Smart Wizard -->
          <script src="../vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
          <!-- Custom Theme Scripts -->
          <script src="../build/js/custom.min.js"></script>
          <!-- jQuery Smart Wizard -->
          <script>
              $(document).ready(function () {
                  $('#wizard').smartWizard();

                  $('#wizard_verticle').smartWizard({
                      transitionEffect: 'slide'
                  });

                  $('.buttonNext').addClass('btn btn-success');
                  $('.buttonPrevious').addClass('btn btn-primary');
                  $('.buttonFinish').addClass('btn btn-default');
              });
          </script>
          <!-- /jQuery Smart Wizard -->
</body>
</html>