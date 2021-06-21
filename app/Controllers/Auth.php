<?php

namespace App\Controllers;

use App\Models\AuthModel;

class Auth extends BaseController
{
    protected $AuthModel;

    public function __construct()
    {
        $this->AuthModel = new AuthModel();
    }

    public function login()
    {
        if (session()->has('email')) {
            return redirect()->to('/');
        }
        $data['title']      = 'Login';
        $data['validation'] = \Config\Services::validation();
        return view('auth/login', $data);
    }

    public function go()
    {
        if (!$this->validate([
            'email'    => 'required|valid_email',
            'password' => 'required'
        ])) {
            return redirect()->to('/login')->withInput();
        }

        $email          = $this->request->getPost('email');
        $user           = $this->AuthModel->where('email', $email)->first();
        $inputPassword  = $this->request->getPost('password');

        if ($user == true) {
            $password = $user['password'];
        }

        // jika email tidak ada di database
        if (!$user) {
            session()->setFlashdata('messages', 'The email you entered is wrong');
            return redirect()->to('/login');
            // jika password yang di ketikan salah
        } else if (!password_verify($inputPassword, $password)) {
            session()->setFlashdata('messages', 'Password you entered is wrong');
            return redirect()->to('/login');
        } else {
            // jika sukses login
            session()->setFlashdata('message', 'Success login');
            session()->set('email', $email);
            return redirect()->to('/');
        }
    }

    public function register()
    {
        if (!session()->has('email')) {
            return redirect()->to('/');
        }

        $data = [
            'title'      => 'Registration',
            'active'     => 'register',
            'validation' => \Config\Services::validation()
        ];

        return view('auth/register', $data);
    }

    public function save()
    {
        if (!$this->validate([
            'name'             => 'required',
            'email'            => 'required|valid_email',
            'password'         => 'required|matches[confirm_password]',
            'confirm_password' => 'required|matches[password]',
        ])) {
            return redirect()->to('/register')->withInput();
        }

        $password = $this->request->getPost('password');
        $passwordHash = password_hash($password, PASSWORD_DEFAULT);

        $this->AuthModel->save([
            'name'      => $this->request->getPost('name'),
            'email'     => $this->request->getPost('email'),
            'password'  => $passwordHash
        ]);

        session()->setFlashdata('message', 'Success Register');
        return redirect()->to('/register');
    }

    public function logout()
    {
        session()->remove('email');
        session()->setFlashdata('message', 'success-logout');
        return redirect()->to('/');
    }
}
