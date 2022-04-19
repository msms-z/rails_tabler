import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  
  static classes = ["eyeOn", "eyeOff"];
  static targets = [ "pInput", "changeBtn" ];
  static values = {
    isShowPassword: false,
  };

  connect() {
    // this.isShowPasswordValue = false;
  }

  isShowPasswordValueChanged() {
    if (this.isShowPasswordValue) {
      this.changeBtnTarget.classList.add(this.eyeOffClass);
      this.changeBtnTarget.classList.remove(this.eyeOnClass);
      this.pInputTarget.type="text";
    } else {
      this.changeBtnTarget.classList.add(this.eyeOnClass);
      this.changeBtnTarget.classList.remove(this.eyeOffClass);
      this.pInputTarget.type="password";
    }
  }

  change(e) {
    e.preventDefault();
    this.isShowPasswordValue = !this.isShowPasswordValue;
  }
  
}