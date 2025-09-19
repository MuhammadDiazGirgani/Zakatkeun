<?php
class Dashboard extends Controller
{

    public function index()
    {
        if (!isset($_SESSION["login"])) {
            $data['judul'] = 'Login';
            $this->view('templates/header-awal', $data);
            $this->view('login/index', $data);
            $this->view('templates/footer-dashboard');
        } else {
            $data['judul'] = 'Dashboard';
            $data['jml'] = $this->model('Muzakki_model')->getTotalMuzakki();
            $data['jml1'] = $this->model('Mustahik_model')->getTotalMustahik();

            $data['muzakki'] = $data['jml'][0]['jumlah'];
            $data['mustahik'] = $data['jml1'][0]['jumlah'];

            $this->view('templates/header-dashboard', $data);
            $this->view('dashboard/index', $data);
            $this->view('templates/footer-dashboard');
        }
    }
}
