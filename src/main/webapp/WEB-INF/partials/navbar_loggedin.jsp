<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right align-content-center" style="display: flex; justify-content: center; align-items: center;">
            <li><a href="/ads/create"><button type="button">Create An Ad</button></a></li>
            <li>
                <div class="dropdown navbar-btn">
                    <button class="btn btn-primary dropdown-toggle" type="button" id="about-us" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${sessionScope.user.username}
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="profile">
                        <li><a href="/profile">View Profile</a></li>
                        <li><a href="/edituser">Edit User</a></li>
                        <li><a href="/logout">Logout</a></li>
                    </ul>
                </div>
            </li>
            <li style="width: 10px"></li>
        </ul>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</nav>
