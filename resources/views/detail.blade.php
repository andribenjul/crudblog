@extends('layout')
@section('content')

          <!-- Title -->
          <h1 class="mt-4">{{ $row->title}}</h1>

          <!-- Author -->
          <p class="lead">
            by {{ $row->name_author }}
          </p>

          <hr>

          <!-- Date/Time -->
          <p>Posted on {{ date('M,d,Y',strtotime($row->created_at)) }}</p>

          <hr>

          <!-- Post Content -->
          {!! $row->content !!}

          <hr>
@endsection