<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.

// route pages
$routes->get('/', 'Pages::index', ['filter' => 'auth']);
$routes->get('/about', 'Pages::about', ['filter' => 'auth']);
$routes->get('/contact', 'Pages::contact', ['filter' => 'auth']);

// route komik
$routes->get('/komik', 'Komik::index', ['filter' => 'auth']);
$routes->get('/komik/create', 'Komik::create', ['filter' => 'auth']);
$routes->get('/komik/edit/(:segment)', 'Komik::edit/$1', ['filter' => 'auth']);
$routes->delete('/komik/(:num)', 'Komik::delete/$1', ['filter' => 'auth']);
$routes->get('/komik/(:any)', 'Komik::detail/$1', ['filter' => 'auth']);

// route orang
$routes->get('/orang', 'Orang::index', ['filter' => 'auth']);

// route login
$routes->get('/login', 'Auth::login');
$routes->get('/register', 'Auth::register');
$routes->get('/logout', 'Auth::logout');
$routes->post('/login', 'Auth::go');
$routes->post('/register', 'Auth::save');

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
