import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="clipboard"
export default class extends Controller {
  connect() {
    console.log('Clipboard initiated');
  }

  copyText(event) {
    navigator.clipboard.writeText(event.params.shorturl);
  }
}
