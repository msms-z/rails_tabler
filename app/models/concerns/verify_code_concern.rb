
module VerifyCodeConcern

    extend ActiveSupport::Concern

    included do
        attr_accessor :verify_code
        attr_accessor :is_verify_code
    end

    def verify_mobile_and_code(code)
        self.mobile == code
    end

end
