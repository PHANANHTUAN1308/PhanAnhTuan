import { Component } from "react";
import "../../assets/css/dashboard.css";
class Header extends Component {
  constructor(props) {
    super(props);
  }
  state = {};
  render() {
    return (<header>
      <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Anh Tuan</a>
  <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse collapse" id="navbarsExample01" >
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Dashboard <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Category</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">Product</a>
          <a class="dropdown-item" href="#">Category</a>
          <a class="dropdown-item" href="#">Brand</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-md-0">
      <input class="form-control" type="text" placeholder="Search" aria-label="Search"/>
    </form>
  </div>
</nav>
  </header>
    );
  }
}

export default Header;
