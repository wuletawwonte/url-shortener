import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="clipboard"
export default class extends Controller {
  connect() {}

  copyText(event) {
    navigator.clipboard.writeText(event.params.shorturl);
  }
}
