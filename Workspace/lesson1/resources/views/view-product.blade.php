<form action="" method="get">
    <input type="text" name="keyword" placeholder="Tìm kiếm.......">
    <!-- 	<input type="text" name="name" placeholder="Name......."> -->
    <button>Submit</button>
</form>
<table style="border: 1px solid black">
    <thead>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>PRICE</th>
        <!-- <th>DETAIL</th> -->
        <th>IMAGE</th>
    </tr>
    </thead>
    <tbody>


        @foreach($products as $pr)

            <tr>
                <td>{{$i}}</td>
                <td>{{$pr->name}}</td>
                <td>{{$pr->price}}</td>
            <!-- <td>{{$pr->detail}}</td> -->
                <td>
                    <img src="{{$pr->image}}" width="70">
                </td>
            </tr>
        @endforeach

    </tbody>
</table>
