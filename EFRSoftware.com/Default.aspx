<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>
<script runat="server">

	protected override void OnLoad(EventArgs args)
	{
		base.OnLoad(args);

		var files = Request.Files;
		for (int i = 0; i < files.Count; i++)
		{
			var file = files[i];
			string fileName = String.Format("{0:yyyyMMdd_hhmmss_fff}{1}", DateTime.UtcNow, Path.GetExtension(file.FileName));
			string path = Path.Combine(Server.MapPath("~/Uploads"), fileName);
			file.SaveAs(path);
			Response.Write("Uploaded '" + Path.GetFileName(file.FileName) + "'<br/>");
		}
	}

</script>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title>EFR Software</title>
	<link href="Content/bootstrap.min.css" rel="stylesheet">
	<link href="Content/bootstrap-theme.min.css" rel="stylesheet">
	<link href="Content/bootstrap-switch.css" rel="stylesheet">
	<link href="Content/Site.css" rel="stylesheet">
	<script src="Scripts/jquery-1.10.2.min.js"></script>
	<script src="Scripts/bootstrap.min.js"></script>
	<!--<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>-->
	<!--<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>-->
</head>
<body>
	<form id="form1" enctype="multipart/form-data" method="post">

		<div class="container">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Hazard Surveillance</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
							<input id="survey1" class="survey-switch" type="checkbox" />
						</div>
					</div>
					<div class="row">
						<div class="col-xs-4" style="text-align: center;"></div>
						<div class="col-xs-4" style="text-align: center;">
							<asp:Image ID="imgLogo" runat="server" AlternateText="EFR Logo" CssClass="img-responsive" ImageUrl="~/Images/Logo.jpg" />
						</div>
						<div class="col-xs-4" style="text-align: center;"></div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							The quick brown fox jumps over the lazy dog.
							The quick brown fox jumps over the lazy dog.
							The quick brown fox jumps over the lazy dog.
						</div>
					</div>
					<div class="row row-button-grid">
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary btn-red">Red Button</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary btn-green">Green Button</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary btn-blue">Blue Button</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Communication<br />Education</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">EDC<br />Enviroment<br />of Care</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Hazardous<br />Materials</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Infection<br />Control</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Kitchen<br />Nutrition</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Lab</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Life<br />Safety</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Pharmacy<br />Meds</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Radiology</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Technology</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Medical<br />Records</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Patient<br />Tracer</button>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-3">
							<button type="button" class="btn btn-primary">Bio-Medical<br />Equipment</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--
		<div class="button btn-red">Red Button</div>
		<div class="button btn-green">Green Button</div>
		<div class="button btn-blue">Blue Button</div>
		-->

		<div>
			<input id="fileInput" runat="server" type="file" accept="image/*" capture="camera" />
			<button type="submit">Submit</button>
		</div>

	</form>
</body>
<script type="text/javascript">

	//$.fn.bootstrapSwitch.defaults.onText = "Pass";
	//$.fn.bootstrapSwitch.defaults.offText = "Fail";
	var surveySwitchOptions = {
		onText: "Pass",
		offText: "Fail",
		onColor: "success",
		offColor: "danger",
		handleWidth: "60px",
		labelWidth: "20px",
	};
	$("input.survey-switch[type=\"checkbox\"]").not("[data-switch-no-init]").bootstrapSwitch(surveySwitchOptions);
</script>
</html>
