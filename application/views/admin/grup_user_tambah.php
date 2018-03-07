<!-- ============================================================== -->
<!-- Start right Content here -->
<!-- ============================================================== -->
<div class="content-page">

	<!-- Start content -->
    <div class="content">
		<div class="container">

			<!-- Page-Title -->
			<div class="row">
				<div class="col-sm-12">
					<h4 class="page-title">Tambah User ke Group</h4>
					<ol class="breadcrumb">
						<li><a href="<?php echo base_url('/c_admin/data_user');?>">Kelola User</a></li>
                        <li class="active">Tambah User ke Group</li>
                    </ol>
                </div>
            </div>
			
			<div class="row">
				<div class="col-lg-6">
					<div class="card-box">
					<br>
						<form class="form-horizontal" role="form" method="post" action="<?php echo base_url()?>c_admin/simpan_grup_user">
							<div class="form-group">
								<label class="col-sm-4 control-label">Username</label>
								<div class="col-sm-7">
									<select class="selectpicker show-tick" data-style="btn-white" name="username">
										<?php
											foreach($list_user->result() as $rowuser){?>
											<option value="<?php echo $rowuser->username;?>"><?php echo $rowuser->username;?></option>
										<?php	
											}
										?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-4 control-label">Group</label>
								<div class="col-sm-7">
									<select class="selectpicker show-tick" data-style="btn-white" name="group">
										<?php
											foreach($list_grup->result() as $rowgrup){?>
											<option value="<?php echo $rowgrup->kode_group;?>"><?php echo $rowgrup->nama_group;?></option>
										<?php	
											}
										?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-4 col-sm-8">
									<button type="submit" class="btn btn-primary waves-effect waves-light" name="simpan">
										Simpan
									</button>
									<a class="btn btn-default waves-effect waves-light m-l-5" href="<?php echo base_url('/c_admin/data_user');?>">
										Kembali
									</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			
		</div> <!-- container -->
	</div> <!-- content -->
</div> <!-- content page -->