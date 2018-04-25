<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<title>Ajax CRUD Laravel</title>
	<link href="{{ asset('css/app.css') }}" rel="stylesheet">
	<link href="{{ asset('css/dataTables.bootstrap.css') }}" rel="stylesheet">
	<script src="{{ asset('js/jquery.min.js') }}" type="text/javascript"></script>
	<script src="{{ asset('js/jquery.dataTables.js') }}" type="text/javascript"></script>
	<script src="{{ asset('js/dataTables.bootstrap4.js') }}" type="text/javascript"></script>
</head>
<body>

	<div class="container">
		<p>
			<h1>Ajax CRUD Laravel</h1>
		</p>
		<div class="row">
			<div class="col-md-8">
				<table id="datatable" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Detail</th>
							<th>Author</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>
			</div>
			<div class="col-md-4">
				<form>
					<div class="form-group myid">
						<label>ID</label>
						<input type="number" id="id" class="form-control" readonly="readonly">
					</div>
					<div class="form-group">
						<label>Name</label>
						<input type="text" id="name" class="form-control">
					</div>
					<div class="form-group">
						<label>Detail</label>
						<textarea id="detail" class="form-control"></textarea> 
					</div>
					<div class="form-group">
						<label>Author</label>
						<input type="text" id="author" class="form-control">
					</div>
					<button type="button" id="save" onclick="saveData()" class="btn btn-primary">Submit</button>
					<button type="button" id="update" onclick="updateData()" class="btn btn-warning">Update</button>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$('#datatable').DataTable();
		$('#save').show();
		$('#update').hide();
		$('.myid').hide();

		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});

		function viewData(){
			$.ajax({
				type: "GET",
				dataType: "json",
				url: "/cruds",
				success: function(response){
					var rows = "";
					$.each(response, function(key, value){
						rows = rows + "<tr>";
						rows = rows + "<td>"+value.id+"</td>";
						rows = rows + "<td>"+value.name+"</td>";
						rows = rows + "<td>"+value.detail+"</td>";
						rows = rows + "<td>"+value.author+"</td>";
						rows = rows + "<td width='180'>";
						rows = rows + "<button type='button' class='btn btn-warning' onclick='editData("+value.id+")'>Edit</button>";
						rows = rows + "<button type='button' class='btn btn-danger' onclick='deleteData("+value.id+")'>Delete</button>";
						rows = rows + "</td></tr>";
					});
					$('tbody').html(rows);
				}
			})
		}

		viewData();

		function saveData(){
			var name = $('#name').val();
			var detail = $('#detail').val();
			var author = $('#author').val();
			$.ajax({
				type: 'POST',
				dataType: 'json',
				data: {name:name, detail:detail, author:author},
				url: '/cruds',
				success: function(response){
					viewData();
					clearData();
					$('#save').show();
				}
			})
		}

		function clearData(){
			$('#id').val('');
			$('#name').val('');
			$('#detail').val('');
			$('#author').val('');
		}

		function editData(id){
			$('#save').hide();
			$('#update').show();
			$('.myid').show();
			$.ajax({
				type: "GET",
				dataType: 'json',
				url: "/cruds/"+id+"/edit",
				success: function(response){
					$('#id').val(response.id);
					$('#name').val(response.name);
					$('#detail').val(response.detail);
					$('#author').val(response.author);
				}
			})
		}

		function updateData(){
			var id = $('#id').val();
			var name = $('#name').val();
			var detail = $('#detail').val();
			var author = $('#author').val();
			$.ajax({
				type: "PUT",
				dataType: "json",
				data: {name:name, detail:detail, author:author},
				url: '/cruds/'+id,
				success: function(response){
					viewData();
					clearData();
					$('#save').show();
					$('#update').hide();
					$('.myid').hide();
				}
			})
		}

		function deleteData(id){
			$.ajax({
				type: "DELETE",
				dataType: "json",
				url: '/cruds/'+id,
				success: function(response){
					viewData();
				}
			})
		}
	</script>
</body>
</html>