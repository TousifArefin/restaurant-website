@extends('layouts.app')

@section('title', 'Item')

@push('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
@endpush

@section('content')
<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
               <a href="{{route('item.create')}}" class="btn btn-primary">ADD NEW</a>
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">All Item</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive" >
                    <table id="example" class="table table-striped table-bordered">
                      <thead class=" text-primary">
                        <th>Sl</th>
                        <th>Name</th>
                        <th>Image</th>
                        <th>Category</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Action</th>
                      </thead>
                      <tbody>
                          @foreach($items as $key=>$item)
                            <tr>
                              <td>{{ $key+1 }}</td>
                              <td>{{ $item->name }}</td>
                              <td>{{ $item->image }}</td>
                              <td>{{ $item->category->name }}</td>
                              <td>{{ $item->description }}</td>
                              <td>{{ $item->price }}</td>
                              
                              <td>
                                <a href="{{route('item.edit',$item->id)}}" class="btn btn-primary"><i class="material-icons">edit</i></a>

                               <form id="delete-form-{{ $item->id }}" action="{{ route('item.destroy', $item->id )}}" method="POST">
                               @csrf
                               @method('DELETE')
                               </form>
                               <button type="button" class="btn btn-danger" onclick="if(confirm('Are you sure to delete this?')){
                                 event.preventDefault(); document.getElementById('delete-form-{{ $item->id }}').submit();
                               }else{
                                 event.preventDefault();
                               }
                               "><i class="material-icons">delete</i></button>
                              </td>
                            </tr>
                          @endforeach
                      </tbody> 
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
@endsection

@push('js')
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
<script>
  $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
@endpush