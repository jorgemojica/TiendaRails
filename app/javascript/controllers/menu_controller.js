import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["items"]

    // Si existe un elemento lo borra. Si no existe, lo agrega.
    toggle(){
        this.itemsTarget.classList.toggle('translate-x-full')
    }
}
