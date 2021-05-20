<html>
    <head>
    
    </head>
    <body>
    <h1>Edit post</h1>
        <form method="post" action="{{ route('posts.update',$post->id) }}">
            <table>
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" name="name" value="{{ $post->name }}">
                    </td>
                </tr>
                <tr>
                    <td>Desc</td>
                    <td>
                        <input type="text" value="{{ $post->details }}" name="desc">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        @csrf
                        <input type="hidden" name="_method" value="PUT">
                        <button type="submit" value="">Save</button>
                    </td>
                </tr>

            </table>

        </form>
    </body>
</html>