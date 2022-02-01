const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const logoLink = document.querySelector('.logo-link');
  const navLink = document.querySelector('.nav-link');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 100) {
        navbar.classList.add('navbar-lewagon-white');
        logoLink.style.color = "#0E0000";
        if (navLink) {
          navLink.style.color = "#0E0000";
        }
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        logoLink.style.color = "white";
        if (navLink) {
          navLink.style.color = "white";
        }
      }
    });
  }
}

const navbarOnHomepage = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const logoLink = document.querySelector('.logo-link');
  const body =  document.querySelector("body")
  if (navbar) {
    if (body.className === 'lists-index' || body.className === 'lists-show') {
      navbar.classList.add("navbar-transparent");
      logoLink.style.color = "white";
    } else {
      navbar.classList.remove("navbar-transparent");
      logoLink.style.color = "#0E0000";
    }
  }
};

export { initUpdateNavbarOnScroll, navbarOnHomepage };
