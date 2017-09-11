const $ = require('jquery');

class OverlayHandler {
  constructor() {
    this.setupListeners();
  }

  setupListeners() {
    $('.js-overlay-close').on('click', this.handleOverlayClose.bind(this));
    $('.js-overlay-trigger').on('click', this.handleOverlayTrigger.bind(this));
    $(document).on('keydown', this.handleKeypress.bind(this));
  }

  handleOverlayClose(e) {
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

  showOverlay($overlay) {
    $overlay.addClass('-is-visible'); 
  }

  hideOverlaysExcept($overlay) {
    $('#overlays .js-overlay').not($overlay).removeClass('-is-visible');
  }

  hideOverlay($overlay) {
    $overlay.removeClass('-is-visible');
  }
}

window.Overlay = new OverlayHandler();
