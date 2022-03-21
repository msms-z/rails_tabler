import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  
  static targets = [ "name", "element" ]

  connect() {
    this.elementTarget.textContent = "Hello World!"
  }

  greet() {
    this.elementTarget.textContent =
      `Hello, ${this.nameTarget.value}!`
  }
}
