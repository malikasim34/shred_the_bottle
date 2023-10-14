@extends('admin.layouts.master')
@section('content')
<div class="page-wrapper">
                <div class="content container-fluid">
				

					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title"> Change User Status</h4>
								</div>
								<div class="card-body">
                                <form method="post" action="{{url('user_status/{id}')}}" enctype="multipart/form-data">
                                        @csrf
										<div class="row">
											<div class="col-sm-6">
												
											<input type="hidden" name="id" value="{{$user->id}}" id="">

<div class="form-group row">
	<div class="col-sm-8">
	<select name="user_type" class="form-control" id="">
		<option >Select</option>
		<option value="driver" <?php if($user->user_type=='driver') echo 'selected'; ?>> Access </option>
		<option value="pending" <?php if($user->user_type==0) echo 'selected'; ?>> Pennding</option>
	
	</select>
	</div>
</div>
                                            </div>
                                        </div>
                                        <div class="col-sm-4" style="left:66%">
											<button type="submit" class="btn btn-block btn-outline-info">Submit</button>
										</div>
									</form>
								</div>
							</div>
							
						</div>
					</div>
				
				</div>			
			</div>


@endsection