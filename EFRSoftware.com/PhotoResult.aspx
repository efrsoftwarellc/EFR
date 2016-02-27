<%@ Page Language="C#" AutoEventWireup="false" %>

<script runat="server">

	protected override void OnLoad(EventArgs args)
	{
		base.OnLoad(args);

		var files = Directory.GetFiles("Uploads");
		foreach (var file in files)
		{
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

	<!-- Lightbox -->
	<link href="Content/lightbox.min.css" rel="stylesheet">

	<link href="Content/Site.css" rel="stylesheet">

	<script type="text/javascript">

		$(document).ready(function () {
			var photoUrl = "";
			switch (window.location.hostname) {
				case "www.efrsoftware.com":
				case "efrsoftware.com":
					photoUrl = "http://efrsoftwarellc-001-site1.ctempurl.com/Photo.aspx";
					break;
				case "localhost":
					photoUrl = "Photo.aspx";
					break;
			}
			var photo = $("#q1-photo");
			if (null != photo) {
				photo.attr("href", photoUrl);
			}
		});

	</script>
</head>
<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title text-center">Hazard Surveillance Survey</h3>
			</div>
			<div class="panel-body">
				<h4 class="purple">EOC - ENVIRONMENT OF CARE</h4>
				<table class="table table-bordered table-responsive">
					<thead>
					</thead>
					<tbody>
						<tr>
							<td>Work area cluttered and/or unorganized
								<asp:Repeater ID="repImages" runat="server">
									<HeaderTemplate>
										<div>
									</HeaderTemplate>
									<ItemTemplate>
										<a class="" href="Uploads/photo.jpg" data-lightbox="photo-set" data-title="">
											<img class="img-thumbnail" src="Uploads/thumb.jpg" alt="" width="50px" /></a>
									</ItemTemplate>
									<FooterTemplate>
										</div>
									</FooterTemplate>
								</asp:Repeater>
								<a id="q1-photo" href="#">
									<img src="camera.png" alt="camera icon" class="camera"></a>
							</td>
							<td class="narrowCol">
								<input type="checkbox" checked data-toggle="toggle" data-on="Pass" data-off="Fail" data-onstyle="success" data-offstyle="danger" data-width="25" data-height="10">
							</td>
						</tr>
						<tr>
							<td>Trip hazard and/or falling object hazard noted in area
								<a href="#">
									<img src="camera.png" alt="camera icon" class="camera"></a>
							</td>
							<td>
								<input type="checkbox" checked data-toggle="toggle" data-on="Pass" data-off="Fail" data-onstyle="success" data-offstyle="danger" data-width="25" data-height="10">
							</td>
						</tr>
						<tr>
							<td>Spills not cleaned up promptly and/or wet floor signs not in place in area of need
								<a href="#">
									<img src="camera.png" alt="camera icon" class="camera"></a>
							</td>
							<td>
								<input type="checkbox" checked data-toggle="toggle" data-on="Pass" data-off="Fail" data-onstyle="success" data-offstyle="danger" data-width="25" data-height="10">
							</td>
						</tr>
						<tr>
							<td>Equipment in use without proper guarding and/or safety device
								<a href="#">
									<img src="camera.png" alt="camera icon" class="camera"></a>
							</td>
							<td>
								<input type="checkbox" checked data-toggle="toggle" data-on="Pass" data-off="Fail" data-onstyle="success" data-offstyle="danger" data-width="25" data-height="10">
							</td>
						</tr>
						<tr>
							<td>Supplies not stored safely on shelving units
								<a href="#">
									<img src="camera.png" alt="camera icon" class="camera"></a>
							</td>
							<td>
								<input type="checkbox" checked data-toggle="toggle" data-on="Pass" data-off="Fail" data-onstyle="success" data-offstyle="danger" data-width="25" data-height="10">
							</td>
						</tr>
						<tr>
							<td>Area lighting inadequate and/or bulbs missing/burned out
								<a href="#">
									<img src="camera.png" alt="camera icon" class="camera"></a>
							</td>
							<td>
								<input type="checkbox" checked data-toggle="toggle" data-on="Pass" data-off="Fail" data-onstyle="success" data-offstyle="danger" data-width="25" data-height="10">
							</td>
						</tr>
						<tr>
							<td>Corridor handrails missing or in poor
								<a href="#">
									<img src="camera.png" alt="camera icon" class="camera"></a>
							</td>
							<td>
								<input type="checkbox" checked data-toggle="toggle" data-on="Pass" data-off="Fail" data-onstyle="success" data-offstyle="danger" data-width="25" data-height="10">
							</td>
						</tr>
					</tbody>
				</table>

				<div class="centered">
					<button type="button" class="btn btn-primary btn-default smaller-btn">
						Submit Results
					</button>
				</div>
			</div>
		</div>
	</div>
	<script src="Scripts/lightbox.min.js"></script>
</body>
</html>
