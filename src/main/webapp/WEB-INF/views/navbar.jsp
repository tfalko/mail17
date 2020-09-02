<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#"><i class="fab fa-less" style="size: 20px"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/"><i class="fas fa-home"></i> Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/login"><i class="fas fa-user"></i> Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/register" tabindex="-1" aria-disabled="true"><i class="fas fa-user-plus"></i> Register</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/item/stats" tabindex="-1" aria-disabled="true"><i class="fas fa-percentage"></i> Stats</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle"  id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-folder-plus"></i> Add Stuff</a>
                <div class="dropdown-menu" aria-labelledby="dropdown01">
                    <a class="dropdown-item" href="/item/form">Add Item</a>
                    <a class="dropdown-item" href="/category/form">Add Category</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle"  id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="far fa-eye"></i> Display stuff</a>
                <div class="dropdown-menu" aria-labelledby="dropdown02">
                    <a class="dropdown-item" href="/item/all">All items</a>
                    <a class="dropdown-item" href="/category/all">All categories</a>
                    <a class="dropdown-item" href="/item/archiveList">Archived items</a>
                </div>
            </li>

        </ul>
        <li class="nav-item my-2 my-lg-0">
            <a class="nav-link" href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
        </li>


    </div>
</nav>