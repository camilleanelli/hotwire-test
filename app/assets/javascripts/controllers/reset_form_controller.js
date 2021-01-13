import { Controller } from "stimulus"

export default class extends Controller {
  // on a besoins de préciser l'élément (ici c'est button)
  static targets = ["button"]
  // on cree une fonction reset pour que le bouton soit à nouveau disponible apres le click
  reset() {
    this.element.reset()
    this.buttonTarget.disabled = false
  }
}
