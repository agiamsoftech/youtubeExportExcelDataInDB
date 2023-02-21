<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Import Excel Sheet</title>
    <!-- Start Multi Selector-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.8.1/css/bootstrap-select.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.8.1/js/bootstrap-select.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- End Multi Selector -->
<?php
error_reporting(0);
$con = mysqli_connect('localhost', 'root', '', 'youtube');

if(isset($_POST['submit'])){
    $file = $_FILES['doc']['tmp_name'];
    $ext = pathinfo($_FILES['doc']['name'], PATHINFO_EXTENSION);
    if($ext == 'xlsx')
    {
        require('PHPExcel.php');
        require('PHPExcel/IOFactory.php');
        
        $obj = PHPExcel_IOFactory::load($file);

        foreach($obj->getWorksheetIterator() as $sheet)
        {
            $getHighestRow = $sheet->getHighestRow();
            for ($x = 0; $x <= $getHighestRow; $x++) 
            {
                $name = $sheet->getCellByColumnAndRow(0,$x)->getValue();
                $email = $sheet->getCellByColumnAndRow(1,$x)->getValue();
                $mobile = $sheet->getCellByColumnAndRow(2,$x)->getValue();
                if($name != '')
                {
                    mysqli_query($con, 
                        "INSERT INTO user (name, email, mobile)
                        VALUES ('$name', '$email', '$mobile')"
                    );
                }
            }
        }
        echo "Data Inserted";
    }
    else
    {
        echo "Invalid file format";
    }
}

?>
</head>
<body>
    <h1>Import Excel Sheet </h1>
    <form method="post" enctype="multipart/form-data">
        <input type="file" name="doc">
        <input type="submit" name="submit">
    </form>
    

    <select class="selectpicker" multiple data-live-search="true" id="multipleSelect">
        <option value="Mustard">Mustard</option>
        <option value="Ketchup">Ketchup</option>
        <option value="Relish">Relish</option>
    </select>
	
	<select class="selectpicker" multiple data-live-search="true" id="suffix_id">
        <option value="2">Mustard</option>
        <option value="1">Ketchup</option>
        <option value="3">Relish</option>
		<option value="4">Xyz</option>
    </select>
	
	
<script>
$(document).ready(function(){
	
	var select_items = "1,2,4";
	var arr = select_items.split(",");
	console.log(arr);
	$('#suffix_id').val(arr).trigger('change').selectpicker('refresh');
	var aa = 'Mustard';
	//console.log($('#multipleSelect').val(aa));
	if(aa == $('#multipleSelect').val('Mustard'))
	{
		$( "#multipleSelect option:selected" ).text();
	}
	
});

</script>
</body>
</html>