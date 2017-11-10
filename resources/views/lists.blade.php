@extends('layout')
@section('content')

          <div class="page-title">
            <h1>{{ $header_title }}</h1>
          </div>

<!-- Blog Posts -->
          @foreach($result as $row)

          <?php
            preg_match('/<img.+src=[\'"](?P<src>.+?)[\'"].*>/i', $row->content, $image);
            $image = $image['src'];
          ?>
          
          <!-- Title -->
          <h2 class="mt-4"><a href='{{ url("article/$row->slug") }}' title='{{ $row->title }}'>{{ $row->title}}</a></h2>

          <!-- Author -->
          <p class="lead">
            by {{ $row->name_author }}
          </p>

          <hr>

          <!-- Date/Time -->
          <p>Posted on {{ date('M,d,Y',strtotime($row->created_at)) }}</p>

          <hr>

          @if($image)
            <p><img src='{{$image}}' style="max-width: 100%"/></p>
          @endif

          <!-- Post Content -->
          {{ str_limit(strip_tags($row->content),350) }}
          <p><a href='{{ url("article/$row->slug") }}' title='{{ $row->title }}'>Read More &raquo;</a></p>
          <hr>
          @endforeach

          @if(count($result)==0)
            <div class="alert alert-info">Sorry, not found!</div>
          @endif

          {!! $result->links() !!}

@endsection