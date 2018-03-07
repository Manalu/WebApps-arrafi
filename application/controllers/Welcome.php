<?php defined('BASEPATH') OR exit('No direct script access allowed');
	class Welcome extends CI_Controller {

		function __construct(){
			parent::__construct();
			$this->load->model('Welcome_M');
		}

		public function index(){
			$data = array(
				'section' => 'public/welcome'
			);
			$this->parser->parse('welcome_message',$data);
		}

		public function berita(){
			$jadwal = $this->Welcome_M->get_jadwal_ppdb();
			$data = array(
				'section' => 'public/berita',
				'page' => 'BERITA',
				'sub' => 'BERITA DAN JADWAL PPDB',
				'data_jadwal' => $jadwal
			);
			$this->parser->parse('welcome_message',$data);
		}

		public function jadwal_seleksi(){
			$jadwal = $this->Welcome_M->get_jadwal_seleksi();
			$data = array(
				'section' => 'public/jadwal_seleksi',
				'page' => 'JADWAL SELEKSI',
				'sub' => '',
				'data_jadwal' => $jadwal
			);
			$this->parser->parse('welcome_message',$data);
		}

		public function reset(){
			$data = array(
				'body' => 'recover_password'
			);

			$this->session->set_flashdata('pesan','<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Masukan alamat <b>Email</b> Anda dan instruksi reset password akan dikirim!</div>');
			$this->parser->parse('assets',$data);
		}

		public function lock_screen(){
			$data = array(
				'body' => 'lockscreen'
			);
			$this->parser->parse('assets',$data);
		}

		public function lihat_data_buku_tamu(){
			$result = $this->Welcome_M->select_data_buku_tamu();

			$data = array(
				'page' => 'Buku Tamu',
				'content' => 'dashboard/panitia/buku_tamu',
				'toolbar' => 'Data Buku Tamu',
				'data_buku_tamu' => $result
			);

			$this->parser->parse('dashboard/index',$data);
		}

		public function buat_buku_tamu(){
			$id_buku_tamu = $this->input->post('id_buku_tamu');
			$nama = $this->input->post('nama');
			$alamat = $this->input->post('alamat');
			$no_hp = $this->input->post('no_hp');
			$email = $this->input->post('email');
			$asal = $this->input->post('asal');

			$result = $this->Welcome_M->insert_data_buku_tamu($id_buku_tamu,$nama,$alamat,$no_hp,$email,$asal);

			if ($result>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Input Buku Tamu </div>');
				redirect('Welcome/lihat_data_buku_tamu');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Input Buku Tamu </div>');
				redirect('Welcome/lihat_data_buku_tamu');
			}
		}

		public function ubah_buku_tamu(){
			$id_buku_tamu = $this->input->post('id_buku_tamu');
			$nama = $this->input->post('nama');
			$alamat = $this->input->post('alamat');
			$no_hp = $this->input->post('no_hp');
			$email = $this->input->post('email');
			$asal = $this->input->post('asal');

			$result = $this->Welcome_M->select_buku_tamu_per_id($id_buku_tamu);

			foreach ($result as $key => $value) {
				if ($nama=="") {
					$nama = $value->nama;
				}

				if ($alamat=="") {
					$alamat = $value->alamat;
				}

				if ($no_hp=="") {
					$no_hp = $value->no_hp;
				}

				if ($email=="") {
					$email = $value->email;
				}

				if ($asal=="") {
					$asal = $value->asal;
				}
			}

			$edit = $this->Welcome_M->edit_buku_tamu($id_buku_tamu,$nama,$alamat,$no_hp,$email,$asal);

			if ($edit>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Edit Buku Tamu </div>');
				redirect('Welcome/lihat_data_buku_tamu');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Edit Buku Tamu </div>');
				redirect('Welcome/lihat_data_buku_tamu');
			}
		}

		public function hapus_buku_tamu(){
			$id_buku_tamu = $this->uri->segment(3);

			$result = $this->Welcome_M->delete_buku_tamu($id_buku_tamu);

			if ($result>0) {
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Berhasil Hapus Buku Tamu </div>');
				redirect('Welcome/lihat_data_buku_tamu');
			} else {
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Gagal Hapus Buku Tamu </div>');
				redirect('Welcome/lihat_data_buku_tamu');
			}
		}
	}