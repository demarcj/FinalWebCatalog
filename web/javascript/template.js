/**
 * Created by paperspace on 3/9/2017.
 */
function createMenu() {
    getIdMenu = document.getElementById("menu");
    getIdMenu.innerHTML = "<ul class='list'>" +
        "<li><a href='jsp/viewAllMovie.jsp'>View Movie List</a>" +
        "<ul>" +
        "<li><a href='jsp/action.jsp'>Action</a></li>" +
        "<li><a href='jsp/drama.jsp'>Drama</a></li>" +
        "<li><a href='jsp/comedy.jsp'>Comedy</a></li>" +
        "</ul>" +
        "</li>" +
        "<li><a href='www/admin.html'>Admin</a></li>";
}

function createAdminMenu() {
    getIdMenu = document.getElementById("menu");
    getIdMenu.innerHTML = "<ul class='list'>" +
        "<li><a href='jsp/viewAllMovie.jsp'>View Movie List</a>" +
        "<ul>" +
        "<li><a href='action.jsp'>Action</a></li>" +
        "<li><a href='drama.jsp'>Drama</a></li>" +
        "<li><a href='comedy.jsp'>Comedy</a></li>" +
        "</ul>" +
        "</li>" +
        "<li><a href='../admin.html'>Signout</a></li>";
}

function createTitle() {
    getIdTitle = document.getElementById("title");
    getIdTitle.innerHTML = "Motown Movies";
}