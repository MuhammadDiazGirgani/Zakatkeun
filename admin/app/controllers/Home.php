<?php
class Home extends Controller
{
    public function index()
    {
        if (!isset($_SESSION["login"])) {
            $data['judul'] = 'Beranda';
            $this->view('templates/header-awal', $data);
            $this->view('home/index', $data);
            $this->view('templates/footer-dashboard', $data);
        } else {
            $data['judul'] = 'Dashboard';
            $data['jml'] = $this->model('Muzakki_model')->getTotalMuzakki();
            $data['jml1'] = $this->model('Mustahik_model')->getTotalMustahik();

            $data['muzakki'] = $data['jml'][0]['jumlah'];
            $data['mustahik'] = $data['jml1'][0]['jumlah'];
            $data['judul'] = 'dashboard';
            $this->view('templates/header-dashboard', $data);
            $this->view('dashboard/index', $data);
            $this->view('templates/footer-dashboard', $data);
        }
    }
}
