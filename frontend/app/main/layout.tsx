import Link from 'next/link'
import "bootstrap/dist/css/bootstrap.min.css"
import "../globals.css"

export default function MainLayout({ children }: { children: React.ReactNode }) {
    return (
      <>
        <div className="">  
            <nav className="navbar navbar-expand-lg">
              <div className="container">
                <Link className="navbar-brand" href="/home">
                  <img className="img-logo" src="/client/images/logo.png" alt="Tạp Hóa Xanh Logo" width={80} height={80} />
                </Link>
                <div className="offcanvas offcanvas-start" id="menu" tabIndex={-1} aria-labelledby="offcanvasNavbarLabel">
                  <div className="offcanvas-header">
                    <h5 className="offcanvas-title">
                      <img className="img-logo" src="/client/images/logo.svg" alt="Tạp Hóa Xanh Logo" width={150} height={50} />
                    </h5>
                    <button className="btn p-0 border-0" type="button" data-bs-dismiss="offcanvas" aria-label="Close">
                      <i className="fa-solid fa-xmark text-highline-2 fa-2x"></i>
                    </button>
                  </div>
                  <div className="offcanvas-body">
                    <ul className="navbar-nav pe-3">
                      <li className="nav-item">
                        <Link className="nav-link me-lg-3 active" href="/home">Trang Chủ</Link>
                      </li>
                      <li className="nav-item">
                        <Link className="nav-link me-lg-3" href="/product">Market</Link>
                      </li>
                      <li className="nav-item dropdown">
                        <a className="nav-link me-lg-3 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Trade</a>
                      </li>
                      <li className="nav-item">
                        <a className="nav-link me-lg-3" href="#">Futures</a>
                      </li>
                      <li className="nav-item dropdown">
                        <a className="nav-link me-lg-3 dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Earn</a>
                      </li>
                      <li className="nav-item dropdown">
                        <a className="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">More</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <button className="navbar-toggler text-highline border-0 pe-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#menu" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                  <i className="fa-solid fa-bars fa-2x"></i>
                </button>
              </div>
            </nav>
        </div>
        <main>{children}</main>
      </>
    )
  }