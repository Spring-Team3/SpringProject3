<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>막대차트 연습</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'bar' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Year', '9월', '8월', '7월' ],
				[ '2017', 1000, 400, 600 ], 
				[ '2018', 1170, 460, 250 ],
				[ '2019', 660, 1120, 300 ], 
				[ '2020', 1030, 540, 350 ] ]);

		var options = {
			chart : {
				title : '막대차트 연습2021-09-29',
				subtitle : 'Sales, Expenses, and Profit: 2014-2017',
			}
		};

		var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

		chart.draw(data, google.charts.Bar.convertOptions(options));
	}
</script>
</head>
<body>
	<div id="columnchart_material" style="width: 800px; margin: auto; height: 500px;"></div>
</body>
</html>