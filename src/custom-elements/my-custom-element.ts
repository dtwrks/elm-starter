const template = document.createElement("template")

template.innerHTML = `
  <style>
    :host {
      display: block
    }
  </style>
  <div>
    I'm a custom element
  </div>
`

class MyCustomElement extends HTMLElement {
  constructor() {
    super()
    const shadowRoot = this.attachShadow({ mode: "open" })
    shadowRoot.appendChild(template.content.cloneNode(true))
  }
}

customElements.define("my-custom-element", MyCustomElement)
