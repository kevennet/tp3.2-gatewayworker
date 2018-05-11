<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
	<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.js"></script>
	<title></title>
<form method="post" action="<?php echo U('Home/Index/index');?>">
    <input type="hidden" name="_method" value="put" />
    <input type="text" name="user[name]" />
    <input type="text" name="user[email]" />
    <input type="submit" value="Submit" />
</form>
</head>
<body>
	<script type="text/javascript">
		$.ajax({
			url: "<?php echo U('Home/Index/index');?>",
			type: 'delete',
			dataType: 'json',
			data:{'text':1}
		})
		.done(function(e) {
			console.log(e);
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});		
	</script>
</body>
</html>