<?php
session_start();
if(!isset($_SESSION["userid"]))
header("location:login.php");

?>
<?php include 'condb.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>report_order</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
<?php include 'menu1.php';?>
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">ข้อมูลสต็อกสินค้า</h1>
                    <p class="mb-4"><a target="_blank"
                            href="https://datatables.net"></a></p>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">แสดงข้อมูลสต็อกสินค้า</h6><br>
                            
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
        <th>รหัสสินค้า</th>
        <th>ชื่อสินค้า</th>
        <th>รายละเอียดสินค้า</th>
        <th>ประเภทสินค้า</th>
        <th>ราคาสินค้า</th>
        <th>จำนวนสินค้าคงเหลือ</th>
        <th>รูปภาพสินค้า</th>
        <th>แก้ไข</th>
        <th>ลบ</th>
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
        <th>รหัสสินค้า</th>
        <th>ชื่อสินค้า</th>
        <th>รายละเอียดสินค้า</th>
        <th>ประเภทสินค้า</th>
        <th>ราคาสินค้า</th>
        <th>จำนวนสินค้าคงเหลือ</th>
        <th>รูปภาพสินค้า</th>
        <th>แก้ไข</th>
        <th>ลบ</th>
                                            
                                        </tr>
                                    </tfoot>
                                    <tbody>
<?php
$sql="SELECT * FROM product
    LEFT JOIN type ON type.type_id = product.type_id;";
    $hand = mysqli_query($conn,$sql);
    while($row=mysqli_fetch_array($hand)){


?>
                                    
                                        <tr>
                                        <td><?=$row['pro_id']?></td>
        <td><?=$row['pro_name']?></td>
        <td><?=$row['detail']?></td>
        <td><?=$row['type_name']?></td>
        <td><?=$row['price']?></td>
        <td><?=$row['amount']?></td>
        <td><img src="img/<?=$row['image']?>" width="80px" hieght="100px"></td>
        <td><a a href="edit_product.php?id=<?=$row['pro_id']?>" class="btn btn-success" >Edit</a></td>
        <td><a href="delete_product.php?id=<?=$row['pro_id']?>" class="btn btn-danger" onclick="Del(this.href);return false;">Delete</a></td>
                                        </tr>
                                    
<?php
}
mysqli_close($conn)
?>
</tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

<?php include 'footer.php';?>
        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>
    <script language="JavaScript">
function Del(mypage){
    var agree=confirm("คุณต้องการลบข้อมูลหรือไม่");
    if(agree){
        window.location=mypage;    
    }
}
</script>

</body>

</html>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
