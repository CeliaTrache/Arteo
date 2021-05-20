import Typed from 'typed.js';

const loadDynamicCarouselText = () => {
  if (document.querySelector('#carousel-typed-text')) {
    new Typed('#carousel-typed-text', {
      strings: ["Color your life", "Rent some art"],
      typeSpeed: 100,
      loop: true
    });
  }
}

export { loadDynamicCarouselText };
