<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['vamsaid']==0)) {
  header('location:logout.php');
  } else{



  ?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Garbage Management System: Dashboard</title>

<link rel="stylesheet" href="../assets/vendor/themify-icons/themify-icons.css">
<link rel="stylesheet" href="../assets/vendor/fontawesome/css/font-awesome.min.css">

<link rel="stylesheet" href="../assets/vendor/charts-c3/plugin.css"/>
<link rel="stylesheet" href="../assets/vendor/jvectormap/jquery-jvectormap-2.0.3.css"/>
<link rel="stylesheet" href="../assets/css/main.css" type="text/css">
</head>
<body class="theme-indigo">

<?php include_once('includes/header.php');?>

<div class="main_content" id="main-content">

    <?php include_once('includes/sidebar.php');?>

    

    <div class="page">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="dashboard.php">Dashboard</a>
        </nav>
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon traffic">
                        <div class="body" style="border:solid #000 1px">
                            <?php 
                        $sql2 ="SELECT * from  tbllodgedcomplain where Status is null ";
$query2 = $dbh -> prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$totnewreq=$query2->rowCount();
?>
                            <h6>New Lodged Complain</h6>
                            <h2><?php echo htmlentities($totnewreq);?></h2>
                           <a href="new-complain.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon sales">
                        <div class="body" style="border:solid #000 1px">
                             <?php 
                        $sql2 ="SELECT * from  tbllodgedcomplain where Status='Approved' ";
$query2 = $dbh -> prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$totappreq=$query2->rowCount();
?>
                            <h6>Assign Lodged Complain</h6>
                            <h2><?php echo htmlentities($totappreq);?></h2>
                           <a href="assign-complain.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon email">
                        <div class="body" style="border:solid #000 1px">
                            <?php 
                        $sql2 ="SELECT * from  tbllodgedcomplain where Status='Rejected' ";
$query2 = $dbh -> prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$totrejreq=$query2->rowCount();
?>
                          
                             <h6>Rejected Lodged Complain</h6>
                            <h2><?php echo htmlentities($totrejreq);?></h2>
                           <a href="rejected-complain.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon domains">
                        <div class="body" style="border:solid #000 1px">
                             <?php 
                        $sql2 ="SELECT * from  tbllodgedcomplain where Status='On The Way' ";
$query2 = $dbh -> prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$tototwreq=$query2->rowCount();
?>
                            <h6>Inprogress Lodged Complain</h6>
                           <h2><?php echo htmlentities($tototwreq);?></h2>
                           <a href="ontheway-complain.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon traffic">
                        <div class="body" style="border:solid #000 1px">
                            <?php 
                        $sql2 ="SELECT * from  tbllodgedcomplain where Status='Completed' ";
$query2 = $dbh -> prepare($sql2);
$query2->execute();
$results2=$query2->fetchAll(PDO::FETCH_OBJ);
$totcomreq=$query2->rowCount();
?>
                            <h6>Completed Lodged Complain</h6>
                            <h2><?php echo htmlentities($totcomreq);?></h2>
                           <a href="completed-complain.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon sales">
                        <div class="body" style="border:solid #000 1px">
                            <?php 
                        $sql1 ="SELECT * from  tbldriver";
$query1 = $dbh -> prepare($sql1);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$totdriver=$query1->rowCount();
?>
                            <h6>Total Drivers</h6>
                            <h2><?php echo htmlentities($totdriver);?></h2>
                           <a href="manage-driver.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div>
               <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon sales">
                        <div class="body" style="border:solid #000 1px">
                            <?php 
                        $sql1 ="SELECT * from  tblbin where Status='On The Way'";
$query1 = $dbh -> prepare($sql1);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$totbininpro=$query1->rowCount();
?>
                            <h6>Bin Cleaning Inprogress</h6>
                            <h2><?php echo htmlentities($totbininpro);?></h2>
                           <a href="ontheway.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div> 
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="card widget_2 big_icon sales">
                        <div class="body" style="border:solid #000 1px">
                            <?php 
                        $sql1 ="SELECT * from  tblbin where Status='Completed'";
$query1 = $dbh -> prepare($sql1);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$totcleaningcomp=$query1->rowCount();
?>
                            <h6>Cleaned Bin</h6>
                            <h2><?php echo htmlentities($totcleaningcomp);?></h2>
                           <a href="completed.php"><small> View Detail</small></a>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
    </div>    
</div>

<!-- Core -->
<script src="../assets/bundles/libscripts.bundle.js"></script>
<script src="../assets/bundles/vendorscripts.bundle.js"></script>

<script src="../assets/bundles/c3.bundle.js"></script>
<script src="../assets/bundles/jvectormap.bundle.js"></script> <!-- JVectorMap Plugin Js -->

<script src="../assets/js/theme.js"></script>
<script src="../assets/js/pages/index.js"></script>
<script src="../assets/js/pages/todo-js.js"></script>
</body>
</html><?php } ?>