<div class="left_sidebar">
    <nav class="sidebar">
    <div class="user-info">
                <div class="image"><a href="javascript:void(0);"><img src="../assets/images/user.png" alt="User"></a></div>
                <div class="detail mt-3">
                    <?php
                    $did = $_SESSION["vamsdid"];
                    $sql =
                        "SELECT Name,Email from  tblstaff where StaffID=:did";
                    $query = $dbh->prepare($sql);
                    $query->bindParam(":did", $did, PDO::PARAM_STR);
                    $query->execute();
                    $results = $query->fetchAll(PDO::FETCH_OBJ);

                    foreach ($results as $row) {
                        $email = $row->Email;
                        $fname = $row->Name;
                    }
                    ?>
                    <h5 class="mb-0"><?php echo $fname; ?></h5>
                    <small><?php echo $email; ?></small>
                </div>
            </div>
        <ul id="main-menu" class="metismenu">
            <li class="active"><a href="dashboard.php"><i class="ti-home"></i><span>Dashboard</span></a></li>
            <li>
                <a href="javascript:void(0)" class="has-arrow"><i class="ti-files"></i><span>Complain</span></a>
                <ul>
                    <li><a href="all-complain.php">All Complain</a></li>
                    <li><a href="new-complain.php">New Complain</a></li>
                    <li><a href="assign-complain.php">Assign Complain</a></li>
                    <li><a href="rejected-complain.php">Rejected Complain</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)" class="has-arrow"><i class="ti-view-list"></i><span>Driver Complain Response</span></a>
                <ul>
                    <li><a href="ontheway-complain.php">On The Way</a></li>
                    <li><a href="completed-complain.php">Garbage Cleaned</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)" class="has-arrow"><i class="ti-view-list"></i><span>Driver Bin Response</span></a>
                <ul>
                    <li><a href="ontheway.php">On The Way</a></li>
                    <li><a href="completed.php">Task Completed</a></li>
                </ul>
            </li>
        </ul>            
    </nav>
</div>