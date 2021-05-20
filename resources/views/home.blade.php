<?php
//  echo add_string('mohit', 'kumar'); 

?>

<h3>posts</h3>
<table border="1">
    <tr>
        <th>name</th>
        <th>created at</th>
        <th>created by</th>
        <th>comments</th>
        <th>Post descripton</th>
    </tr>

    @foreach($posts as $post)
        <tr>
            <td>{{ $post->name }}</td>
            <td>{{ $post->created_at }}</td>
            <td>{{ $post->userInfo->name }}</td>
            <td>
                @foreach($post->comments as $comment)
                {{ $comment->text }} ( {{ $comment->user->name }} )
                <br>
                @endforeach
            </td>
            <td>{{ $post->description->details ?? '' }}</td>

        </tr>
    @endforeach
</table>