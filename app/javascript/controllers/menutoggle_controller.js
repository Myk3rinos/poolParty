import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="menutoggle"
export default class extends Controller {
  // static targets = ["menutoggle"]
  static targets = ["menu"]
  connect() {
    console.log("hello")
  }

  toggle() {
    console.log(this.menuTarget);
    this.menuTarget.classList.toggle('d-none')
    // this.menuTarget.style.heigth = "0px"
  }
}
