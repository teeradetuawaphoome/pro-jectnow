<?php
include 'condb.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>add product</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
<form name="form1" method="post" action="insert_product.php" enctype="multipart/form-data">
                <h1>เพิ่มสินค้า</h1>
                <label>ชื่อสินค้า: </labal>
                <input type="text" name="pname" class="form-control" required>
                <label>หมวดหมู่: </labal>
                <select class="form-select" name="typeID">
                <?php
                $sql="SELECT * FROM type ORDER BY type_name";
                $hand=mysqli_query($conn,$sql);
                while($row=mysqli_fetch_array($hand)){ 
                ?>
                <option value="<?=$row['type_id']?>"><?=$row['type_name']?></option>
                <?php
                }
                mysqli_close($conn);
                ?>
                </select>
                <label>ราคา: </labal>
                <input type="number" name="price" class="form-control" required>
                <label>จำนวน: </labal>
                <input type="number" name="num" class="form-control" required>
                <label>รายละเอียด: </labal>
                <input type="text" name="detail" class="form-control" required><br>
                <p><label>รูปภาพ: </labal>
                <input type="file" name="file1" required></p>
                <button type="submit" class="btn btn-outline-success">ตกลง</button>
                <button type="reset" class="btn btn-outline-danger" value="cancel">ยกเลิก</button>
</form> 
            </div>
        </div>
    </div>
    

</body>
</html>