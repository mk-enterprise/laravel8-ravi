<?php
//  echo add_string('mohit', 'kumar'); 
//1
?>

<h3>Posts</h3>

<a href="{{ route('posts.create') }}">Add post</a>

<table border="1">
    <tr>
        <th>name</th>
        <th>created at</th>
        <th>Action</th>
        <!-- <th>created by</th>
        <th>comments</th>
        <th>Post descripton</th> -->
    </tr>

    @foreach($posts as $post)
        <tr>
            <td>{{ $post->name }}</td>
            <td>{{ $post->created_at }}</td>
            <td><a href="{{ route('posts.edit',$post->id) }}">Edit</a>
            <form method="post" action="{{ route('posts.destroy',$post->id) }}"> 
                @csrf
                @method('DELETE')
                <button type="submit">delete</button>
            </form>
            </td>
        </tr>
    @endforeach
</table>