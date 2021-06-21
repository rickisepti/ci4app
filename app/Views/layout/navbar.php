<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="/">
            <img src="/img/favicon.svg" alt="" width="50">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav" style="margin-left: auto; font-weight:500;">
                <a class="nav-link <?php if ($active == 'home') echo "active" ?>" aria-current="page" href="/"><i class="fas fa-home"></i> Home</a>
                <a class="nav-link <?php if ($active == 'about') echo "active" ?>" href="/about"><i class="fas fa-address-card"></i> About</a>
                <a class="nav-link <?php if ($active == 'contact') echo "active" ?>" href="/contact"><i class="fas fa-address-book"></i> Contact</a>
                <a class="nav-link <?php if ($active == 'komik') echo "active" ?>" href="/komik"><i class="fas fa-book-open"></i> Komik</a>
                <a class="nav-link <?php if ($active == 'orang') echo "active" ?>" href="/orang"><i class="fas fa-users"></i> Orang</a>
                <a class="nav-link <?php if ($active == 'register') echo "active" ?>" href="/register"></i><i class="fas fa-user-plus"></i> Register</a>
                <a class="nav-link text-primary" href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
            </div>
        </div>
    </div>
</nav>