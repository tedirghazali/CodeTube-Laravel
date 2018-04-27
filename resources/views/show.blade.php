@extends('layouts.app')
@section('content')
<div class="container">
<div class="card" style="width: 350px">
	@foreach($posts as $post)
		<img class="card-img-top" src="http://via.placeholder.com/350x150?text={{$post->author}}"/>
		<div class="card-body">
			<div class="card-title">{{$post->name}}</div>
			<p class="card-text">{{$post->detail}}</p>
			<a href="{{action('PostController@index')}}" class="btn btn-primary">Back</a>
		</div>
	@endforeach
</div>
</div>
@endsection