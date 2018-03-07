<?php
	class M_Admin extends CI_Model{
		/*kelola user*/
		function tampil_semua_user(){
			$admin=$this->session->userdata('username');
			$query=$this->db->query("select u.username username, email, last_login, status_user, COUNT(gu.kode_group) jumlah
									from user u left join grup_user gu on(u.username=gu.username)
									where u.username!='$admin'
									group by u.username, last_login, status_user");
			return $query;
		}
		
		function tampil_detail_user($username){
			$query=$this->db->query("select * from user
									where username='$username'");
			$rows=$query->row();
			return $query;
		}
		
		function tampil_user(){
			$query=$this->db->query("select * from user");
			return $query;
		}
		
		function tampil_grup(){
			$query=$this->db->query("select * from grup");
			return $query;
		}
		
		function tampil_grup_user($user){
			$query=$this->db->query("select id, nama_group, status_group
									from user u join grup_user gu on(u.username=gu.username)
									join grup g on(g.kode_group=gu.kode_group)
									where u.username='$user'");
			return $query;
		}
		
		function cek_username(){
			$user=$this->input->post('username');
			$query=$this->db->query("select * from user where username='$user'");
			return $query;
		}
		
		function cek_email(){
			$email=$this->input->post('email');
			$query=$this->db->query("select * from user where email='$email'");
			return $query;
		}
		
		function tambah_user($user, $pass, $email){
			$query=$this->db->query("insert into user values ('$user', md5('$pass'), '$email', now(), 'Non-Aktif')");
		}
		
		function tambah_grup_user($user, $group){
			$query=$this->db->query("insert into grup_user (username, kode_group, status_group) values ('$user', '$group', 'Aktif')");
		}
		
		/*
		function hapus_user($username){
			$query=$this->db->query("delete from user where username='$username'");
		}
		*/
		
		function edit_user(){
			$user=$this->input->post('username');
			$email=$this->input->post('email');
			$status=$this->input->post('status');
			$query=$this->db->query("update user set email='$email', status_user='$status' 
									where username='$user'");
		}
		
		function edit_user_pass($user, $pass1){
			$query=$this->db->query("update user set password= md5('$pass1'), status_user='Non-Aktif' 
									where username='$user'");
		}
		
		function edit_user_pass_history($user, $admin){
			$query=$this->db->query("insert into history(jenis, tabel, username, waktu, keterangan) 
								values ('Update', 'User', '$admin', now(), 'Ubah password $user oleh $admin')");
		}
		
		/*
		function reset_pass($user){
			$query=$this->db->query("update user set password= md5('$user') 
									where username='$user'");
		}
		*/
		
		function cek_grup_user(){
			$username=$this->input->post('username');
			$group=$this->input->post('group');
			$query=$this->db->query("select * from grup_user where username='$username'
									and kode_group='$group'");
			return $query;
		}
		
		function tampil_status_grup_user($id){
			$query=$this->db->query("select id, username, nama_group, status_group 
									from grup_user gu join grup g on(gu.kode_group=g.kode_group)
									where id='$id'");
			return $query;
		}
		
		function edit_grup_user(){
			$id=$this->input->post('id');
			$status=$this->input->post('status');
			$query=$this->db->query("update grup_user set status_group='$status' 
									where id='$id'");
		}

		/*kelola modul*/
		function tampil_semua_modul(){
			$query=$this->db->query("select * from modul");
			return $query;
		}
		
		function tampil_detail_modul($kode){
			$query=$this->db->query("select * from modul where kode_modul='$kode'");
			$rows=$query->row();
			return $query;
		}
		
		function tambah_modul(){
			$modul=$this->input->post('modul');
			$link=$this->input->post('link');
			$query=$this->db->query("insert into modul(nama_modul, link) values ('$modul','$link')");
		}
		
		function hapus_modul($kode){
			$query=$this->db->query("delete from modul where kode_modul='$kode'");
		}
		
		function edit_modul(){
			$kode=$this->input->post('kode');
			$modul=$this->input->post('modul');
			$link=$this->input->post('link');
			$query=$this->db->query("update modul set nama_modul='$modul', link='$link' 
									where kode_modul='$kode'");
		}
		
		function edit_modul_history($modul){
			$user=$this->session->userdata('username');
			$query=$this->db->query("insert into history(jenis, tabel, username, waktu, keterangan) 
								values ('Update', 'Modul', '$user', now(), 'Ubah Modul $modul oleh $user')");
		}
		
		function tampil_modul_history(){
			$query=$this->db->query("select * from history where tabel='Modul'
									order by id desc");
			$rows=$query->row();
			return $query;
		}
		
		function cek_modul(){
			$modul=$this->input->post('modul');
			$query=$this->db->query("select * from modul where nama_modul='$modul'");
			return $query;
		}
		
		function cek_link(){
			$link=$this->input->post('link');
			$query=$this->db->query("select * from modul where link='$link'");
			return $query;
		}
		
		/*kelola otoritas*/
		function tampil_semua_grup(){
			$query=$this->db->query("select g.kode_group kode_group, nama_group, COUNT(kode_modul) jumlah 
									from grup g left join grup_modul gm on(g.kode_group=gm.kode_group)
									group by nama_group");
			return $query;
		}
		
		function tampil_modul_grup($grup){
			$query=$this->db->query("select kode, nama_group, nama_modul, link, status 
									from modul m join grup_modul gm on (m.kode_modul=gm.kode_modul)
									join grup g on (g.kode_group=gm.kode_group)
									where nama_group='$grup'");
			return $query;
		}
		
		function tampil_status_modul_grup($kode){
			$query=$this->db->query("select kode, nama_group, nama_modul, link, status 
									from modul m join grup_modul gm on (m.kode_modul=gm.kode_modul)
									join grup g on (g.kode_group=gm.kode_group)
									where kode='$kode'");
			return $query;
		}
		
		/*
		function tampil_status_modul(){
			$query=$this->db->query("select distinct(status) from grup_modul");
			return $query;
		}
		*/
		
		function tambah_otoritas(){
			$group=$this->input->post('group');
			$modul=$this->input->post('modul');
			$query=$this->db->query("insert into grup_modul (kode_group, kode_modul, status) values ('$group', '$modul', 'Aktif')");
		}
		
		function edit_otoritas(){
			$kode=$this->input->post('kode');
			$status=$this->input->post('status');
			$query=$this->db->query("update grup_modul set status='$status' 
									where kode='$kode'");
		}
		
		function edit_otoritas_history($grup, $modul, $status){
			$user=$this->session->userdata('username');
			$query=$this->db->query("insert into history(jenis, tabel, username, waktu, keterangan) 
								values ('Update', 'Modul', '$user', now(), 'Otoritas $grup-$modul $status oleh $user')");
		}
		
		function cek_otoritas(){
			$group=$this->input->post('group');
			$modul=$this->input->post('modul');
			$query=$this->db->query("select * from grup_modul where kode_group='$group'
									and kode_modul='$modul'");
			return $query;
		}
		
		function tambah_grup(){
			$grup=$this->input->post('grup');
			$query=$this->db->query("insert into grup (nama_group) values ('$grup')");
		}
		
		function cek_grup(){
			$grup=$this->input->post('grup');
			$query=$this->db->query("select * from grup where nama_group='$grup'");
			return $query;
		}
		
		function tampil_detail_grup($kode){
			$query=$this->db->query("select * from grup where kode_group='$kode'");
			$rows=$query->row();
			return $query;
		}
		
		function edit_grup(){
			$kode=$this->input->post('kode');
			$grup=$this->input->post('grup');
			$query=$this->db->query("update grup set nama_group='$grup' 
									where kode_group='$kode'");
		}
	} 
?>