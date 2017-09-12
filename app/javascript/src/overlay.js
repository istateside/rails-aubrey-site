import $ from 'jquery';
import 'slick-carousel'

export default class OverlayHandler {
  constructor() {
    this.setupListeners();

    $('.js-slide-show').slick({
      centerMode: true,
      infinite: false,
      variableWidth: true,
      slidesToShow: 2,
      focusOnSelect: true,
      prevArrow: '.js-slick-left',
      nextArrow: '.js-slick-right',
      slide: '.js-slide'
    });
  }

  setupListeners() {
    $('.js-overlay-close').on('click', this.handleOverlayClose.bind(this));
    $('.js-overlay-trigger').on('click', this.handleOverlayTrigger.bind(this));
    $(document).on('keydown', this.handleKeypress.bind(this));
  }

  handleOverlayClose(e) {
    e.preventDefault();
    const overlay = $(e.target).closest('.js-overlay')[0];

    if (overlay) {
      return this.hideOverlay(overlay);
    }
  }

  handleOverlayTrigger(e) {
    const target = $(e.target).closest('.js-overlay-trigger')[0];

    if (target) {
      const overlayIndex = target.dataset.overlayIndex;
      const overlay = $(`#overlays [data-overlay-index="${overlayIndex}"]`)[0];

      this.hideOverlaysExcept(overlay);
      this.showOverlay(overlay);
    }
  }

  handleKeypress(e) {
    if (e.key === 'Escape') {
      this.hideOverlaysExcept();
    }
  }

  showOverlay(overlay) {
    overlay.classList.add('-is-visible'); 
    const slider = overlay.querySelector('.js-slide-show');

    if (slider) {
      $(slider).slick('slickGoTo', 0);
      $(slider).find('.slick-slide:eq(0)').focus();
    }
  }

  hideOverlaysExcept($overlay) {
    $('#overlays .js-overlay').not($overlay).removeClass('-is-visible');
  }

  hideOverlay(overlay) {
    overlay.classList.remove('-is-visible');
  }
}
