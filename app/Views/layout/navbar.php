<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="/">
            <img src="/img/favicon.svg" alt="" width="50">
            <small>shinzou wo sasageyo</small>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav" style="margin-left: auto; font-weight:500;">
                <a class="nav-link <?php if ($active == 'home') echo "active" ?>" aria-current="page" href="/">Home</a>
                <a class="nav-link <?php if ($active == 'about') echo "active" ?>" href="/about">About</a>
                <a class="nav-link <?php if ($active == 'contact') echo "active" ?>" href="/contact">Contact</a>
                <a class="nav-link <?php if ($active == 'komik') echo "active" ?>" href="/komik">Komik</a>
                <a class="nav-link <?php if ($active == 'orang') echo "active" ?>" href="/orang">Orang</a>
            </div>
        </div>
    </div>
</nav>