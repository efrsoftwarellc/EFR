<%@ Page Language="C#" AutoEventWireup="false" %>
<%@ Import Namespace="System.IO" %>
<script runat="server">

	protected override void OnLoad(EventArgs args)
	{
		base.OnLoad(args);

		var files = Request.Files;
		if (0 < files.Count)
		{
			string photoPath = Server.MapPath("~/Uploads/photo.jpg");
			string thumbPath = Server.MapPath("~/Uploads/thumb.jpg");
			var file = files[0];
			file.SaveAs(photoPath);
			file.SaveAs(thumbPath);
			Response.Redirect("PhotoResult.aspx");
		}
	}

</script>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>EFR Software</title>

	<script src="Scripts/jquery-1.10.2.min.js"></script>
	<!--<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>-->
	<!--<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>-->

	<link href="Content/bootstrap.css" rel="stylesheet">
	<!--<link href="Content/bootstrap-theme.css" rel="stylesheet">-->
	<script src="Scripts/bootstrap.min.js"></script>

	<!-- Bootstrap Switch -->
	<!--<link href="Content/bootstrap-switch.min.css" rel="stylesheet">-->
	<!--<link href="Content/bootstrap-switch.min.css" rel="stylesheet">-->
	<!--<script src="Scripts/bootstrap-switch.min.js"></script>-->

	<!-- Bootstrap Toggle -->
	<link href="Content/bootstrap-toggle.min.css" rel="stylesheet">
	<!--<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.0/css/bootstrap-toggle.min.css" rel="stylesheet">-->
	<script src="Scripts/bootstrap-toggle.min.js"></script>
	<!--<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.0/js/bootstrap-toggle.min.js"></script>-->

	<link href="Content/Site.css" rel="stylesheet">
</head>
<body>
	<form id="form1" enctype="multipart/form-data" method="post">
		<div class="container">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title text-center" role="heading">Hazard Surveillance Survey</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12 tall">
							<h4 class="text-center">Survey Categories</h4>
						</div>
						<div>
							<input id="fileInput" runat="server" type="file" accept="image/*" capture="camera" />
							<button class="btn btn-primary" type="submit">Submit</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
