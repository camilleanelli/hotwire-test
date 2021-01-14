import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ["button"]
   // on cree une fonction reset pour que le bouton soit à nouveau disponible apres le click
  connect() {
    console.log('ok')
    this.buttonTarget.disabled = false
  }
}
