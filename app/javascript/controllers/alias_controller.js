import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="alias"
export default class extends Controller {
  static targets = ['shorturlWrapper'];

  connect() {}

  toggleAlias() {
    this.shorturlWrapperTarget.classList.toggle('hidden');
  }
}
