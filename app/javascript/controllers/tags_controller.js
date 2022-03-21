import { Controller } from "@hotwired/stimulus"
import 'tom-select'
import TomSelect from "tom-select"


export default class extends Controller {
  static settings = {}
  connect() {
    new TomSelect('#tom-select-it',settings);

  }

  enableTS() {
    new TomSelect(this.customerFieldTarget, {
      create: function(input, _callback) {
        myModal = new Modal(document.getElementById('customer-modal'), {
          keyboard: false
        });
        myModal.show();
        const name = document.getElementById('customer_name');
        name.value = input;
      }
    });
  }
}
