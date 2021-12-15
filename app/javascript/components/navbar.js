const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const logoLink = document.querySelector('.logo-link')
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 150) {
        navbar.classList.add('navbar-lewagon-white');
        logoLink.style.color = "#0E0000";
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        logoLink.style.color = "white";
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
