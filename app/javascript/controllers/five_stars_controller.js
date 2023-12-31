import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="five-stars"
export default class extends Controller {
  static targets = ["stars"]
  connect() {
    console.log(this.starsTarget)
    flatpickr(this.element)
  }
}
