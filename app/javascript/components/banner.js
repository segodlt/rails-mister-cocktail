import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Upgrade your nights", "Create fancy cocktails"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
