import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  
    static classes = ["disabled", "invalid"];
    static targets = [ "mobileInput", "sendBtn" ];
    static values = {
      isShowPassword: false,
    };
  
    connect() {
      // this.isShowPasswordValue = false;
    }
  
    sendCode(e) {
      e.preventDefault();
      const mobileValue = this.mobileInputTarget.value;
      if (!/^[1][0-9]{10}$/.test(mobileValue)) {
        this.mobileInputTarget.classList.add(this.invalidClass);
        return ;
      } else {
        this.mobileInputTarget.classList.remove(this.invalidClass);
      }
      this.sendCodeRequest(mobileValue);
      this.sendBtnTarget.classList.add(this.disabledClass);
      let currentSeconds = 60;
      const defaultHtml = this.sendBtnTarget.innerHTML;
      this.sendBtnTarget.innerHTML = "60 S"
      let currentInterval = setInterval(() => {
          if (currentSeconds <= 1) {
              clearInterval(currentInterval);
              this.sendBtnTarget.classList.remove(this.disabledClass);
              this.sendBtnTarget.innerHTML = defaultHtml;
          } else {
            currentSeconds -= 1;
            this.sendBtnTarget.innerHTML = currentSeconds + " S";
          }
      }, 1000);
    }

    sendCodeRequest(mobileValue) {
      const csrf = document.querySelector("meta[name='csrf-token']").getAttribute("content");
      fetch('/verify_codes.json', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': csrf,
        },
        body: JSON.stringify({ mobile: mobileValue })
      }).then(res => res.json()).then(console.log);
    }
    
  }