import Typed from 'typed.js';

const loadDynamicCarouselText = () => {
  new Typed('#carousel-typed-text', {
    strings: ["Color your life", "Rent some art"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicCarouselText };
