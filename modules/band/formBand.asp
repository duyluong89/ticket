<script type="text/javascript">
	$(document).ready(function(){
		CKEDITOR.replace("description");

		 $("#Image").click(function () {
            var finder = new CKFinder();
            finder.selectActionFunction = function (fileUrl) {
                $(this).val(fileUrl);
            };
            finder.popup();
        });
	});
</script>
<form action="" method="post" name="frmaddband">
	<table>
		<tr><td>Name </td><td><input name="Name" type="text"  id="Name"/></td></tr>
		<tr><td>Image </td><td><input name="Image" type="text"  id="Image" /></td></tr>
		<tr><td>description </td><td>
			<textarea name="description" id="description" cols="100" rows="15"></textarea>
		</td></tr>
		<tr><td><input name="Submit" type ="submit" id="submit" value="Submit" /></td></tr>

	</table>
</form>

