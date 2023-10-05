import { Component } from "react";
import { Link } from "react-router-dom";
class Header extends Component {
  constructor(props) {
    super(props);
  }
  state = {};
  render() {
    return (
      <header className="section-header">
        <section className="header-main border-bottom">
          <div className="container">
            <div className="row align-items-center">
              <div className="col-xl-2 col-lg-3 col-md-12">
                <Link to="/" className="brand-wrap">
                  <img
                    className="logo"
                    src={require("../../assets/images/gundamgalaxy_web.jpg")}
                    alt=""
                  />
                </Link>
                {/* brand-wrap.// */}
              </div>
              <div className="col-xl-6 col-lg-5 col-md-6">
                <form action="#" className="search-header">
                  <div className="input-group w-100">
                    <select
                      className="custom-select border-right"
                      name="category_name"
                    >
                      <option value>All type</option>
                      <option value="codex">Special</option>
                      <option value="comments">Only best</option>
                      <option value="content">Latest</option>
                    </select>
                    <input
                      type="text"
                      className="form-control"
                      placeholder="Search"
                    />
                    <div className="input-group-append">
                      <button className="btn btn-primary" type="submit">
                        <i className="fa fa-search" /> Search
                      </button>
                    </div>
                  </div>
                </form>
                {/* search-wrap .end// */}
              </div>
              {/* col.// */}
              <div className="col-xl-4 col-lg-4 col-md-6">
                <div className="widgets-wrap float-md-right">
                  <div className="widget-header mr-3">
                    <Link to="/profile-main" className="widget-view">
                      <div className="icon-area">
                        <i className="fa fa-user" />
                        <span className="notify">3</span>
                      </div>
                      <small className="text"> My profile </small>
                    </Link>
                  </div>
                  <div className="widget-header mr-3">
                    <Link to="#" className="widget-view">
                      <div className="icon-area">
                        <i className="fa fa-comment-dots" />
                        <span className="notify">1</span>
                      </div>
                      <small className="text"> Message </small>
                    </Link>
                  </div>
                  <div className="widget-header mr-3">
                    <Link to="profile-order" className="widget-view">
                      <div className="icon-area">
                        <i className="fa fa-store" />
                      </div>
                      <small className="text"> Orders </small>
                    </Link>
                  </div>
                  <div className="widget-header">
                    <Link to="shopping-cart" className="widget-view">
                      <div className="icon-area">
                        <i className="fa fa-shopping-cart" />
                      </div>
                      <small className="text"> Cart </small>
                    </Link>
                  </div>
                </div>
                {/* widgets-wrap.// */}
              </div>
              {/* col.// */}
            </div>
            {/* row.// */}
          </div>
          {/* container.// */}
        </section>
        {/* header-main .// */}
        <nav className="navbar navbar-main navbar-expand-lg border-bottom">
          <div className="container">
            <button
              className="navbar-toggler"
              type="button"
              data-toggle="collapse"
              data-target="#main_nav"
              aria-controls="main_nav"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span className="navbar-toggler-icon" />
            </button>
            <div className="collapse navbar-collapse" id="main_nav">
              <ul className="navbar-nav">
                <li className="nav-item dropdown">
                  <Link
                    className="nav-link dropdown-toggle"
                    data-toggle="dropdown"
                    to="#"
                  >
                    <i className="fa fa-bars text-muted mr-2" /> Pages
                  </Link>
                  <div className="dropdown-menu dropdown-large">
                    <nav className="row">
                      <div className="col-6">
                        <Link to="/">Home page 1</Link>
                        <Link to="/">Home page 2</Link>
                        <Link to="/category">All category</Link>
                        <Link to="/listing-large">Listing list</Link>
                        <Link to="/listing-grid">Listing grid</Link>
                        <Link to="shopping-cart">Shopping cart</Link>
                        <Link to="/product-detail/1">Product detail</Link>
                        <Link to="/content">Page content</Link>
                        <Link to="/login">Page login</Link>
                        <Link to="/register">Page register</Link>
                      </div>
                      <div className="col-6">
                        <Link to="profile-main">Profile main</Link>
                        <Link to="profile-order">Profile orders</Link>
                        <Link to="profile-seller">Profile seller</Link>
                        <Link to="profile-wishlist">
                          Profile wishlist
                        </Link>
                        <Link to="profile-setting">Profile setting</Link>
                        <Link to="profile-address">Profile address</Link>
                        <Link to="rtl-page-index-1.html">RTL home page</Link>
                        <Link to="page-components.html" target="_blank">
                          More components
                        </Link>
                      </div>
                    </nav>
                    {/*  row end .// */}
                  </div>
                  {/*  dropdown-menu dropdown-large end.// */}
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="#">
                    Ready to ship
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="#">
                    Trade shows
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="#">
                    Services
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="#">
                    Sell with us
                  </Link>
                </li>
              </ul>
              <ul className="navbar-nav ml-md-auto">
                <li className="nav-item">
                  <Link className="nav-link" to="#">
                    Get the app
                  </Link>
                </li>
                <li className="nav-item dropdown">
                  <Link
                    className="nav-link dropdown-toggle"
                    to="http://example.com"
                    data-toggle="dropdown"
                  >
                    English
                  </Link>
                  <div className="dropdown-menu dropdown-menu-right">
                    <Link className="dropdown-item" to="#">
                      Russian
                    </Link>
                    <Link className="dropdown-item" to="#">
                      French
                    </Link>
                    <Link className="dropdown-item" to="#">
                      Spanish
                    </Link>
                    <Link className="dropdown-item" to="#">
                      Chinese
                    </Link>
                  </div>
                </li>
              </ul>
            </div>
            {/* collapse .// */}
          </div>
          {/* container .// */}
        </nav>
      </header>
    );
  }
}

export default Header;
