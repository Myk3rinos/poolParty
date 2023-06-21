import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="datepickr"
export default class extends Controller {
  connect() {
    console.log('datepickr')
  }
}
