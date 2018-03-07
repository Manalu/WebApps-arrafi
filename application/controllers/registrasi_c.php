<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class registrasi_c extends CI_Controller{
		
		function __construct(){
			parent::__construct();
			$this->load->model('m_login','',TRUE);
			$this->load->model('m_admin','',TRUE);
			$this->load->model('registrasi_m');
			$this->load->library('parser');
		}

		//menu jadwal ppdb
		public function lihat_jadwal_ppdb(){
			$result = $this->registrasi_m->select_jadwal_ppdb();

			$data = array(
				'list_menu'=>$this->m_login->tampil_menu(),
				'list_online'=>$this->m_login->tampil_online(),
				'konten' => 'dashboard/panitia/jadwal_ppdb',
				'data_jadwal' => $result
			);

			$this->load->view('template',$data);
		}

		public function buat_jadwal_ppdb(){
			$nama_kegiatan = $this->input->post('nama_kegiatan');
			$keterangan = $this->input->post('keterangan');
			$tgl_mulai = $this->input->post('tgl_mulai');
			$tgl_selesai = $this->input->post('tgl_selesai');

			$tahun = date('Y');
			$tahun = intval($tahun);

			$ta = ($tahun).'/'.($tahun+1);

			$result = $this->registrasi_m->insert_jadwal_ppdb($nama_kegiatan,$keterangan,$tgl_mulai,$tgl_selesai,$ta);

			if ($result>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Buat Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_ppdb');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Buat Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_ppdb');
			}
		}

		public function ubah_jadwal_ppdb(){
			$nama_kegiatan = $this->input->post('nama_kegiatan');
			$keterangan = $this->input->post('keterangan');
			$tgl_mulai = $this->input->post('tanggal_mulai');
			$tgl_selesai = $this->input->post('tanggal_selesai');
			$ta = $this->input->post('ta');
			$id_jadwal = $this->input->post('id_jadwal');
			$status = $this->input->post('status');

			$result = $this->registrasi_m->select_jadwal_ppdb_per_id($id_jadwal);

			foreach ($result as $key => $value) {
				if ($keterangan=="") {
					$keterangan = $value->keterangan;
				}

				if ($tgl_mulai=="") {
					$tgl_mulai = $value->tgl_mulai;
				}

				if ($tgl_selesai=="") {
					$tgl_selesai = $value->tgl_selesai;
				}

				if ($ta=="") {
					$ta = $value->ta;
				}

				if ($nama_kegiatan=="") {
					$nama_kegiatan = $value->nama_kegiatan;
				}

				if ($status=="") {
					$status = $value->status;
				}
			}

			$edit = $this->registrasi_m->edit_jadwal_ppdb($id_jadwal,$nama_kegiatan,$keterangan,$tgl_mulai,$tgl_selesai,$ta,$status);

			if ($edit>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Edit Jadwal </div>');
					redirect('registrasi_c/lihat_jadwal_ppdb');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Edit Jadwal </div>');
					redirect('registrasi_c/lihat_jadwal_ppdb');
			}
		}

		public function hapus_jadwal_ppdb(){
			$id_jadwal = $this->uri->segment(3);

			$result = $this->registrasi_m->delete_jadwal_ppdb($id_jadwal);

			if ($result>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Hapus Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_ppdb');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Hapus Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_ppdb');
			}
		}

		//menu jadwal seleksi
		public function lihat_jadwal_seleksi(){
			$result = $this->registrasi_m->select_jadwal_seleksi();

			$data = array(
				'list_menu'=>$this->m_login->tampil_menu(),
				'list_online'=>$this->m_login->tampil_online(),
				'konten' => 'dashboard/panitia/jadwal_seleksi',
				'data_jadwal' => $result
			);

			$this->load->view('template',$data);
		}

		public function buat_jadwal_seleksi(){
			$tahun = date('Y');
			$tahun = intval($tahun);

			$nama_kegiatan = $this->input->post('nama_kegiatan');
			$keterangan = $this->input->post('keterangan');
			$tanggal = $this->input->post('tanggal');
			$waktu_mulai = $this->input->post('waktu_mulai');
			$waktu_selesai = $this->input->post('waktu_selesai');
			$ta = ($tahun).'/'.($tahun+1);
			$ruangan = $this->input->post('ruangan');

			$result = $this->registrasi_m->insert_jadwal_seleksi($nama_kegiatan,$keterangan,$tanggal,$waktu_mulai,$waktu_selesai,$ta,$ruangan);

			if ($result>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Buat Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_seleksi');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Buat Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_seleksi');
			}
		}

		public function ubah_jadwal_seleksi(){
			$id_jadwal = $this->input->post('id_jadwal');
			$nama_kegiatan = $this->input->post('nama_kegiatan');
			$keterangan = $this->input->post('keterangan');
			$tanggal = $this->input->post('tanggal');
			$waktu_mulai = $this->input->post('waktu_mulai');
			$waktu_selesai = $this->input->post('waktu_selesai');
			$nama_ruangan = $this->input->post('ruangan');
			$status = $this->input->post('status');

			$result = $this->registrasi_m->select_jadwal_seleksi_per_id($id_jadwal);

			foreach ($result as $key => $value) {
				if ($status=="") {
					$status = $value->status;
				}

				if ($nama_kegiatan=="") {
					$nama_kegiatan = $value->nama_kegiatan;
				}

				if ($keterangan=="") {
					$keterangan = $value->keterangan;
				}

				if ($kelompok=="") {
					$kelompok = $value->kelompok;
				}

				if ($tanggal=="") {
					$tanggal = $value->tanggal;
				}

				if ($waktu_mulai=="") {
					$waktu_mulai = $value->waktu_mulai;
				}

				if ($waktu_selesai) {
					$waktu_selesai = $value->waktu_selesai;
				}

				if ($nama_ruangan=="") {
					$nama_ruangan = $value->nama_ruangan;
				}
			}

			$edit = $this->registrasi_m->edit_jadwal_seleksi($id_jadwal,$nama_kegiatan,$keterangan,$tanggal,$waktu_mulai,$waktu_selesai,$nama_ruangan,$status);

			if ($edit>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Edit Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_seleksi');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Edit Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_seleksi');
			}
		}

		public function hapus_jadwal_seleksi(){
			$id_jadwal = $this->uri->segment(3);

			$result = $this->registrasi_m->delete_jadwal_seleksi($id_jadwal);

			if ($result>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Hapus Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_seleksi');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Hapus Jadwal </div>');
				redirect('registrasi_c/lihat_jadwal_seleksi');
			}
		}

		//menu data siswa
		public function form_ket_siswa(){
			$no_pendaftaran = $this->session->userdata('no_pendaftaran');
			$result = $this->registrasi_m->cek_data_siswa($no_pendaftaran);
			
			$data = array(
				'list_menu'=>$this->m_login->tampil_menu(),
				'list_online'=>$this->m_login->tampil_online(),
				'konten' => 'dashboard/pendaftar/form_data_siswa',
				'no_pendaftaran' => $result
			);
			$this->load->view('template',$data);
		}

		public function input_ket_siswa(){
			$this->form_validation->set_rules('agama','Agama','required|callback_agama_check');
			$this->form_validation->set_rules('goda','Golongan Darah','required|callback_goda_check');
			$this->form_validation->set_rules('tempat_tinggal','Tempat Tinggal','required|callback_tempat_tinggal_check');
			$this->form_validation->set_rules('tgl_lahir','Tanggal Lahir','required|callback_tgl_lahir_check');

			if ($this->form_validation->run()==false) {
                $no_pendaftaran = $this->session->userdata('no_pendaftaran');
				$result = $this->registrasi_m->cek_data_siswa($no_pendaftaran);
				
				$data = array(
					'page' => 'Data Siswa',
					'konten' => 'dashboard/pendaftar/form_data_siswa',
					'toolbar' => 'Data Siswa',
					'no_pendaftaran' => $result
				);
				$this->parser->parse('template',$data);
            } else {
            	$nik = $this->input->post('nik');
				$nama_lengkap = $this->input->post('nama_lengkap');
				$nama_panggilan = $this->input->post('nama_panggilan');
				$jekel  = $this->input->post('jekel');
				$tgl_lahir = $this->input->post('tgl_lahir');
				$tempat_lahir = $this->input->post('tempat_lahir');
				$agama = $this->input->post('agama');
				$kewarganegaraan = $this->input->post('kewarganegaraan');
				$anak_ke = $this->input->post('anak_ke');
				$jumlah_saudara_kandung = $this->input->post('jumlah_saudara_kandung');
				$jumlah_saudara_tiri = $this->input->post('jumlah_saudara_tiri');
				$jumlah_saudara_angkat = $this->input->post('jumlah_saudara_angkat');
				$bahasa_sehari = $this->input->post('bahasa_sehari');
				$berat_badan = $this->input->post('berat_badan');
				$tinggi_badan = $this->input->post('tinggi_badan');
				$goda = $this->input->post('goda');
				$penyakit_derita = $this->input->post('penyakit_derita');
				$alamat_rumah = $this->input->post('alamat_rumah');
				$rt = $this->input->post('rt');
				$rw = $this->input->post('rw');
				$kelurahan = $this->input->post('kelurahan');
				$kecamatan = $this->input->post('kecamatan');
				$kota_kabupaten = $this->input->post('kota_kabupaten');
				$provinsi = $this->input->post('provinsi');
				$kode_area = $this->input->post('kode_area');
				$telp_rumah = $this->input->post('telp_rumah');
				$kode_pos = $this->input->post('kode_pos');
				$tempat_tinggal = $this->input->post('tempat_tinggal');
				$jarak_rumah_sekolah = $this->input->post('jarak_rumah_sekolah');
				$no_hp = $this->session->userdata('no_hp');
				$no_pendaftaran = $this->session->userdata('no_pendaftaran');

				$result = $this->registrasi_m->insert_data_siswa($nik,$nama_lengkap,$nama_panggilan,$jekel,$tgl_lahir,$tempat_lahir,$agama,$kewarganegaraan,$anak_ke,$jumlah_saudara_kandung,$jumlah_saudara_tiri,$jumlah_saudara_angkat,$bahasa_sehari,$berat_badan,$tinggi_badan,$goda,$penyakit_derita,$alamat_rumah,$rt,$rw,$kelurahan,$kecamatan,$kota_kabupaten,$provinsi,$kode_area,$telp_rumah,$no_hp,$kode_pos,$tempat_tinggal,$jarak_rumah_sekolah,$no_pendaftaran);

				if ($result) {
					$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil input data siswa</div>');
					redirect('registrasi_c/form_ket_ortu');
				} else {
					$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal input data siswa</div>');
					redirect('registrasi_c/form_ket_siswa');
				}
            }
		}

		public function form_ket_ortu(){
			$no_pendaftaran = $this->session->userdata('no_pendaftaran');
			$result = $this->registrasi_m->cek_data_siswa($no_pendaftaran);

			if ($result[0]->nik=="") {
				$this->session->set_flashdata('pesan','<div class="alert alert-warning alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Isi Data Siswa Terlebih Dahulu!</div>');
				redirect('registrasi_c/form_ket_siswa');
			} else {
				$no_pendaftaran = $this->session->userdata('no_pendaftaran');
				$nama_ayah = $this->registrasi_m->cek_data_ortu($no_pendaftaran);
				$no_hp = $this->session->userdata('no_hp');
				$jumlah = 0;
                $notifikasi = 0;
				$data = array(
					'page' => 'Data Orang Tua',
					'konten' => 'dashboard/pendaftar/form_data_ortu',
					'toolbar' => 'Data Orang Tua',
					'nama_ayah' => $nama_ayah,
					'jumlah' => $jumlah,
					'notifikasi' => $notifikasi
				);
				$this->parser->parse('template',$data);
			}
		}

		public function input_ket_ortu(){
			$this->form_validation->set_rules('nama_ayah','Nama Ayah','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('pdd_ayah','Pendidikan Ayah','required|callback_pdd_ayah_check');
			$this->form_validation->set_rules('pekerjaan_ayah','Pekerjaan Ayah','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('nama_perusahaan_ayah','Nama Perusahaan Ayah','required');
			$this->form_validation->set_rules('alamat_perusahaan_ayah','Alamat Perusahan Ayah','required');
			$this->form_validation->set_rules('email_kantor_ayah','Email Kantor Ayah','required|valid_email');
			$this->form_validation->set_rules('nama_ibu','Nama Ibu','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('pdd_ibu','Pendidikan ibu','callback_pdd_ibu_check');
			$this->form_validation->set_rules('email_kantor_ibu','Email Kantor ibu','valid_email');

			if ($this->form_validation->run()==false) {
                $no_pendaftaran = $this->session->userdata('no_pendaftaran');
				$nama_ayah = $this->registrasi_m->cek_data_ortu($no_pendaftaran);
				$data = array(
					'page' => 'Data Orang Tua',
					'konten' => 'dashboard/pendaftar/form_data_ortu',
					'toolbar' => 'Data Orang Tua',
					'nama_ayah' => $nama_ayah
				);
				$this->parser->parse('template',$data);
            } else {
            	$nama_ayah = $this->input->post('nama_ayah');
            	$pdd_ayah = $this->input->post('pdd_ayah');
            	$pekerjaan_ayah =$this->input->post('pekerjaan_ayah');
            	$nama_perusahaan_ayah = $this->input->post('nama_perusahaan_ayah');
            	$alamat_perusahaan_ayah = $this->input->post('alamat_perusahaan_ayah');
            	$email_kantor_ayah = $this->input->post('email_kantor_ayah');
            	$nama_ibu = $this->input->post('nama_ibu');
            	$pdd_ibu = $this->input->post('pdd_ibu');
            	$pekerjaan_ibu =$this->input->post('pekerjaan_ibu');
            	$nama_perusahaan_ibu = $this->input->post('nama_perusahaan_ibu');
            	$alamat_perusahaan_ibu = $this->input->post('alamat_perusahaan_ibu');
            	$email_kantor_ibu = $this->input->post('email_kantor_ibu');
            	$no_pendaftaran = $this->session->userdata('no_pendaftaran');
            	$id_ortu = $this->session->userdata('no_identitas');
            	$no_hp = $this->session->userdata('no_hp');

            	$result = $this->registrasi_m->insert_data_ortu($id_ortu,$nama_ayah,$nama_ibu,$pdd_ayah,$pdd_ibu,$pekerjaan_ayah,$nama_perusahaan_ayah,$alamat_perusahaan_ayah,$email_kantor_ayah,$pekerjaan_ibu,$nama_perusahaan_ibu,$alamat_perusahaan_ibu,$email_kantor_ibu,$no_pendaftaran);


            	if ($result>0) {
            		$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil input data orang tua</div>');
            		redirect('registrasi_c/form_ket_wali');
            	} else {
            		$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal input data orang tua</div>');
            		redirect('registrasi_c/form_ket_ortu');
            	}
            }
		}

		public function form_ket_wali(){
			$no_pendaftaran = $this->session->userdata('no_pendaftaran');
			$result = $this->registrasi_m->cek_data_siswa($no_pendaftaran);

			if ($result[0]->nik=="") {
				$this->session->set_flashdata('pesan','<div class="alert alert-warning alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Isi Data Siswa Terlebih Dahulu!</div>');
				redirect('registrasi_c/form_ket_siswa');
			} else {
				$data_wali = $this->registrasi_m->cek_data_wali($no_pendaftaran);
				$no_hp = $this->session->userdata('no_hp');
				$jumlah = 0;
                $notifikasi = 0;
				$data = array(
					'page' => 'Data Wali',
					'konten' => 'dashboard/pendaftar/form_data_wali',
					'toolbar' => 'Data Wali',
					'data_wali' => $data_wali,
					'jumlah' => $jumlah,
					'notifikasi' => $notifikasi
				);
				$this->parser->parse('template',$data);
			}
		}

		public function input_ket_wali(){
			$this->form_validation->set_rules('id_wali','ID Wali','required|numeric');
			$this->form_validation->set_rules('nama_wali','Nama Wali','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('pdd_wali','Pendidikan','required|callback_pdd_wali_check');
			$this->form_validation->set_rules('hubungan_keluarga','Hubungan Keluarga','required');
			$this->form_validation->set_rules('pekerjaan_wali','Pekerjaan Wali','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('nama_perusahaan_wali','Nama Perusahaan Wali','required');
			$this->form_validation->set_rules('alamat_perusahaan_wali','Alamat Perusahaan Wali','required');
			$this->form_validation->set_rules('email_kantor_wali','Email Kantor Wali','required|valid_email');
			$this->form_validation->set_rules('no_hp','No HP','required|numeric');
			$this->form_validation->set_rules('alamat','Alamat','required');
			$this->form_validation->set_rules('provinsi','Provinsi','required');
			$this->form_validation->set_rules('rt','RT','required|numeric');
			$this->form_validation->set_rules('rw','RW','required|numeric');
			$this->form_validation->set_rules('kelurahan','Kelurahan','required');
			$this->form_validation->set_rules('kecamatan','Kecamatan','required');
			$this->form_validation->set_rules('kota','Kabupaten/Kota','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('kode_area','Kode Area','required|numeric');
			$this->form_validation->set_rules('telp_rumah','Telepon Rumah','required|numeric');
			$this->form_validation->set_rules('kode_pos','Kode Pos','required|numeric');

			if ($this->form_validation->run()==false) {
                $data = array(
					'page' => 'Data Wali',
					'konten' => 'dashboard/pendaftar/form_data_wali',
					'toolbar' => 'Data wali'
				);
				$this->parser->parse('template',$data);
            } else {
            	$id_wali = $this->input->post('id_wali');
            	$nama_wali = $this->input->post('nama_wali');
            	$hubungan_keluarga = $this->input->post('hubungan_keluarga');
            	$pekerjaan_wali = $this->input->post('pekerjaan_wali');
            	$nama_perusahaan = $this->input->post('nama_perusahaan_wali');
            	$alamat_perusahaan = $this->input->post('alamat_perusahaan_wali');
            	$email_wali = $this->input->post('email_kantor_wali');
            	$pdd_wali = $this->input->post('pdd_wali');
            	$alamat_rumah = $this->input->post('alamat');
            	$provinsi = $this->input->post('provinsi');
            	$rt = $this->input->post('rt');
            	$rw = $this->input->post('rw');
            	$kelurahan = $this->input->post('kelurahan');
            	$kecamatan = $this->input->post('kecamatan');
            	$kota_kabupaten = $this->input->post('kota');
            	$kode_area = $this->input->post('kode_area');
            	$telp_rumah = $this->input->post('telp_rumah');
            	$no_hp = $this->input->post('no_hp');
            	$kode_pos = $this->input->post('kode_pos');
            	$no_pendaftaran = $this->session->userdata('no_pendaftaran');

            	$result = $this->registrasi_m->insert_data_wali($id_wali,$nama_wali,$pdd_wali,$hubungan_keluarga,$alamat_rumah,$rt,$rw,$kelurahan,$kecamatan,$kota_kabupaten,$provinsi,$kode_area,$telp_rumah,$no_hp,$kode_pos,$pekerjaan_wali,$nama_perusahaan,$alamat_perusahaan,$email_wali,$no_pendaftaran);

            	if ($result>0) {
            		$this->session->set_flashdata('pesan','<div class="alert alert-info alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil input data wali</div>');
            		redirect('registrasi_c/form_ket_asal');
            	} else {
            		$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal input data wali</div>');
            		redirect('registrasi_c/form_ket_wali');
            	}
            }
		}

		public function form_ket_asal(){
			$no_pendaftaran = $this->session->userdata('no_pendaftaran');
			$result = $this->registrasi_m->cek_data_ortu($no_pendaftaran);
			$data_asal = $this->registrasi_m->cek_data_asal_mula($no_pendaftaran);

			if ($result[0]->nama_ayah!="") {
				$no_pendaftaran = $this->registrasi_m->cek_data_asal_mula($no_pendaftaran);
				$no_hp = $this->session->userdata('no_hp');
				$jumlah = 0;
                $notifikasi = 0;
				$data = array(
					'page' => 'Asal Mula',
					'konten' => 'dashboard/pendaftar/form_data_asal',
					'toolbar' => 'Data Asal Mula',
					'no_pendaftaran' => $no_pendaftaran,
					'jumlah' => $jumlah,
					'notifikasi' => $notifikasi,
					'data_asal' => $data_asal
				);
				$this->parser->parse('template',$data);
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-warning alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Isi Data Orang Tua Terlebih Dahulu!</div>');
				redirect('registrasi_c/form_ket_ortu');
			}
		}

		public function input_ket_asal(){
			$this->form_validation->set_rules('asal_anak','Asal Anak','required|callback_asal_anak_check');
			$this->form_validation->set_rules('nama_asal','Nama Asal','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('no_tahun_sk','No/Tahun SK','required|alpha_numeric_spaces');
			$this->form_validation->set_rules('lama_belajar','Lama Belajar','required|numeric');
			$this->form_validation->set_rules('tanggal_terima','Tanggal Terima','required');

			if ($this->form_validation->run()==false) {
                $data = array(
					'page' => 'Data Asal',
					'konten' => 'dashboard/pendaftar/form_data_asal',
					'toolbar' => 'Data asal'
				);
				$this->parser->parse('template',$data);
            } else {
            	$asal_anak = $this->input->post('asal_anak');
            	$nama_asal = $this->input->post('nama_asal');
            	$no_tahun_sk = $this->input->post('no_tahun_sk');
            	$lama_belajar = $this->input->post('lama_belajar');
            	$tanggal_terima = $this->input->post('tanggal_terima');
            	$no_pendaftaran = $this->session->userdata('no_pendaftaran');
            	$no_hp = $this->session->userdata('no_hp');
            	$email = $this->session->userdata('email');

            	$result = $this->registrasi_m->insert_data_asal($asal_anak,$nama_asal,$no_tahun_sk,$lama_belajar,$tanggal_terima,$no_pendaftaran,$no_hp,$email);

            	if ($result>=0) {
            		$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Terima Kasih telah mengisi formulir! Silakan melakukan pembayaran Psikotes untuk mendapat kartu seleksi.</div>');
            		redirect('registrasi_c/form_ket_asal');
            	} else {
            		$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Harap periksa data Anda!</div>');
            		redirect('registrasi_c/form_ket_asal');
            	}
            }
		}

		//menu data formulir
		public function lihat_data_formulir(){
			$no_hp = $this->session->userdata('no_hp');
			$no_pendaftaran = $this->session->userdata('no_pendaftaran');
			
			$data_siswa = $this->registrasi_m->select_data_siswa($no_pendaftaran,$no_hp);
			$data_ortu = $this->registrasi_m->select_data_ortu($no_pendaftaran);
			$data_wali = $this->registrasi_m->select_data_wali($no_pendaftaran);
			$data_asal = $this->registrasi_m->select_data_asal($no_pendaftaran);
			$data = array(
				'list_menu'=>$this->m_login->tampil_menu(),
				'list_online'=>$this->m_login->tampil_online(),
				'konten' =>'dashboard/pendaftar/view_data',
				'data_siswa' => $data_siswa,
				'data_ortu' => $data_ortu,
				'data_wali'=> $data_wali,
				'data_asal' => $data_asal
			);

			$this->load->view('template',$data);
		}

		//menu pembayaran
		public function form_bayar_psikotes(){
			$email = $this->session->userdata('email');
			$privilege = $this->session->userdata('privilege');
			$notifikasi = 0;
			$jumlah = 0;

			$data = array(
				'list_menu'=>$this->m_login->tampil_menu(),
				'list_online'=>$this->m_login->tampil_online(),
				'konten' => 'dashboard/pendaftar/upload_psikotest',
				'jumlah' => $jumlah,
				'notifikasi' => $notifikasi
			);

			$this->load->view('template',$data);
		}

		public function unggah_bukti_bayar(){
			$nama_bayar = $_FILES['bukti_bayar']['name'];
			$file = getimagesize($_FILES['bukti_bayar']['tmp_name']);
			$bukti_bayar = addslashes(file_get_contents($_FILES['bukti_bayar']['tmp_name']));
			$mime = $file['mime'];
			$jumlah_bayar = $this->input->post('jumlah_bayar');
			$sisa_bayar = 350000 - $jumlah_bayar;
			$no_pendaftaran = $this->session->userdata('no_pendaftaran');
			$no_hp = $this->session->userdata('no_hp');
			$email = $this->session->userdata('email');
			$status = "";

			if ($sisa_bayar==0) {
				$status = "Lunas";
			} else if($sisa_bayar>0 && $sisa_bayar<350000){
				$status = "Kredit";
			}

			$result = $this->registrasi_m->insert_bukti_bayar($nama_bayar,$bukti_bayar,$jumlah_bayar,$sisa_bayar,$no_pendaftaran,$no_hp,$email,$status,$mime);
			
			if ($result>=0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Bukti bayar berhasil diupload.</div>');
				redirect('registrasi_c/form_bayar_psikotes');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Bukti bayar gagal diupload.</div>');
				redirect('registrasi_c/form_bayar_psikotes');
			}
		}

		//menu pembayaran psikotes
		public function lihat_pembayaran_psikotes(){
			$result = $this->registrasi_m->select_data_pembayaran_psikotes();

			$data = array(
				'list_menu'=>$this->m_login->tampil_menu(),
				'list_online'=>$this->m_login->tampil_online(),
				'konten' => 'dashboard/panitia/pembayaran_psikotes',
				'data_bayar' => $result
			);

			$this->load->view('template',$data);
		}

		public function konfirmasi_pembayaran_psikotes(){
			$id_bayar = $this->uri->segment(3);
			$no_pendaftaran = $this->uri->segment(4);

			$result = $this->registrasi_m->edit_status_konfirmasi_pembayaran($no_pendaftaran,$id_bayar);


			if ($result>=0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil konfirmasi pembayaran.</div>');
				redirect('registrasi_c/lihat_pembayaran_psikotes');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal konfirmasi pembayaran.</div>');
				redirect('registrasi_c/lihat_pembayaran_psikotes');
			}
		}
		
		public function agama_check(){
			$agama = $this->input->post('agama');

            if ($agama=='Agama') {
                $this->form_validation->set_message('agama_check','Silakan pilih Agama');
                return FALSE;
            } else {
                return TRUE;
            }
		}

		public function tgl_lahir_check(){
			$tgl_lahir = $this->input->post('tgl_lahir');

			$date1 = new DateTime($tgl_lahir);
			$date2 = new DateTime(date('2016-06-30'));
			$interval = $date1->diff($date2);

			$tahun = $interval->y;
			$bulan = $interval->m;

			if ($tahun<6) {
				$this->form_validation->set_message('tgl_lahir_check','Usia pendaftar 6 tahun pada juni 2016');
				return FALSE;
            } else {
                return TRUE;
            }
		}

		public function goda_check(){
			$goda = $this->input->post('goda');

            if ($goda=='Golongan Darah') {
                $this->form_validation->set_message('goda_check','Silakan pilih Golongan Darah');
                return FALSE;
            } else {
                return TRUE;
            }
		}

		public function tempat_tinggal_check(){
			$tempat_tinggal = $this->input->post('tempat_tinggal');

            if ($tempat_tinggal=='Tempat Tinggal') {
                $this->form_validation->set_message('tempat_tinggal_check','Silakan pilih Tempat Tinggal');
                return FALSE;
            } else {
                return TRUE;
            }
		}

		public function pdd_ayah_check(){
			$pdd_ayah = $this->input->post('pdd_ayah');

			if ($pdd_ayah=='Pendidikan') {
                $this->form_validation->set_message('pdd_ayah_check','Silakan pilih Pendidikan');
                return FALSE;
            } else {
                return TRUE;
            }
		}

		public function pdd_ibu_check(){
			$pdd_ibu = $this->input->post('pdd_ibu');

			if ($pdd_ibu=='Pendidikan') {
                $this->form_validation->set_message('pdd_ibu_check','Silakan pilih Pendidikan');
                return FALSE;
            } else {
                return TRUE;
            }
		}

		public function pdd_wali_check(){
			$pdd_wali = $this->input->post('pdd_wali');

			if ($pdd_wali=='Pendidikan') {
                $this->form_validation->set_message('pdd_wali_check','Silakan pilih Pendidikan');
                return FALSE;
            } else {
                return TRUE;
            }
		}

		public function asal_anak_check(){
			$asal_anak = $this->input->post('asal_anak');

			if ($asal_anak == 'Asal') {
                $this->form_validation->set_message('asal_anak_check','Silakan pilih Asal Anak');
                return FALSE;
            } else {
                return TRUE;
            }
		}
	}