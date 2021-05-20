<html>
    <head>
    
    </head>
    <body>
    <h1>Add post</h1>
        <form method="post" action="{{ route('posts.store') }}">
            <table>
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" name="name" value="{{ old('name') }}">
                        <p>{{ $errors->first('name') }}</p>                        
                    </td>
                </tr>
                <tr>
                    <td>Desc</td>
                    <td>
                        <input type="text" name="desc" value="{{ old('desc') }}">
                        <p>{{ $errors->first('desc') }}</p>                        
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        @csrf
                        <button type="submit" value="">Save</button>
                    </td>
                </tr>

            </table>

        </form>
    </body>
</html>