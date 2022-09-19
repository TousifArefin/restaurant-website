@extends('layouts.app')

@section('title', 'Reservation')

@push('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">
@endpush

@section('content')
<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">All Reservation</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive" >
                    <table id="example" class="table table-striped table-bordered">
                      <thead class=" text-primary">
                        <th>Sl</th>
                        <th>Nmae</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Date & Time</th>
                        <th>Message</th>
                        <th>Status</th>
                        <th>Action</th>
                      </thead>
                      <tbody>
                          @foreach($reservations as $key=>$reservation)
                            <tr>
                              <td>{{ $key+1 }}</td>
                              <td>{{ $reservation->name }}</td>
                              <td>{{ $reservation->phone }}</td>
                              <td>{{ $reservation->email }}</td>
                              <td>{{ $reservation->date_and_time }}</td>
                              <td>{{ $reservation->message }}</td>
                              <td>
                                  @if($reservation->status == 1)
                                  <span class=" badge badge-success">Confirmed</span>
                                  @endif
                                  @if($reservation->status == 0)
                                  <span class=" badge badge-danger">Pending</span>
                                  @endif
                              </td>
                              <td>
                                @if($reservation->status == 0)
                                  <form id="status-form-{{ $reservation->id }}" action="{{ route( 'reservation.status', $reservation->id) }}" method="POST" class="d-none">
                                    @csrf
                                  </form>
                                  <button type="button" class="btn btn-info" onclick="if(confirm('Are you verify this phone?')){
                                     event.preventDefault();document.getElementById('status-form-{{ $reservation->id }}').submit();
                                  }else{
                                    event.preventDefult();
                                  }"><i class="material-icons">check</i></button>
                                @endif
                              <form id="delete-form-{{ $reservation->id }}" action="{{ route('reservation.destroy', $reservation->id )}}" style="display: none;" method="POST">
                               @csrf
                               </form>
                                <button type="submit" class="btn btn-danger" onclick="if(confirm('Are you sure to delete this?')){
                                    event.preventDefault();document.getElementById('delete-form-{{ $reservation->id }}').submit();
                                }else{
                                  event.preventDefault();
                                }"><i class="material-icons">delete</i></button>
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