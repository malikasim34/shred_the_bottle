@extends('admin.layouts.master')

@section('content')
<div class="page-wrapper">
                <div class="content container-fluid">

			
                            <h5>All Email of User</h5>
                          
         
            </div>
            <div class="col-md-12">
                   @if(session()->has('update'))
                            <div class="alert alert-success">
                                {{ session()->get('update') }}
                            </div>
                            @endif
            </div>
            <div class="col-md-12">
                   @if(session()->has('deleted'))
                            <div class="alert alert-danger">
                                {{ session()->get('deleted') }}
                            </div>
                            @endif
            </div>
            <br>
                            

                        
            <div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Admin Records</h4>
									
								</div>
								<div class="card-body">

									<div class="table-responsive">
										<table class="datatable table table-stripped">
                                <thead>
              <tr>
              <th>Id</th>
                <th>User Name</th>
                <th>User Email</th>
                <th>User type</th>

                <th>Action</th>
              </tr>
            </thead>
            <tbody>
            @foreach($user as $c)
              <tr>
              
              <td>{{$c->id}}</td>
                <td>{{$c->name}}</td>
                <td>{{$c->email}}</td>

                <td>
                @if ($c->user_type == 0)
              Fundraiser  Blocked
            @else
              Fundraiser
            @endif
            </td>
                <td>
                   
                @if($c->user_type=='pending')<span class="badge badge-pill bg-danger inv-badge"> Login Access Pending</span>

@else

<span class="badge badge-pill bg-success inv-badge">Login Access Successfully</span>
@endif
<a class="btn btn-sm bg-success-light" href="{{ url('/user_status',$c->id) }}">
                <i class="fe fe-edit"></i> Change Status
                <a class="btn btn-sm bg-success-light" href="{{ url('/user_status',$c->id) }}">
                <i class="fe fe-"></i> Send mail
            </a> 
            </a>                    </td>
              </tr>
              @endforeach
          
            </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Basic table card end -->
                    <!-- Inverse table card start -->

                    <!-- Background Utilities table end -->
                </div>
                <!-- Page-body end -->
            </div>
        </div>
        <!-- Main-body end -->

        <div id="styleSelector">

        </div>
    </div>
</div>
</div>
</div>
</div>
</div>

@endsection