const nav = document.querySelector(".navbar");
const hamburger = document.querySelector(".hamburger");
const menu = document.querySelector(".menu");

window.addEventListener("scroll", () => {
  if (window.scrollY > 50) {
    nav.classList.add("scrolled");
  } else {
    nav.classList.remove("scrolled");
  }
});

hamburger.addEventListener("click", () => {
  menu.classList.toggle("active");
  hamburger.classList.toggle("active");
});

document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function (e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute('href'));
    if (target) {
      target.scrollIntoView({
        behavior: 'smooth'
      });
    }
    if (menu.classList.contains("active")) {
      menu.classList.remove("active");
      hamburger.classList.remove("active");
    }
  });
});

// Reveal-on-scroll removed to avoid sections being hidden before intersection
// Sections are visible by default to prevent large blank areas on page load.