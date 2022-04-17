class VerifyCode < ApplicationRecord

    validate :mobile_day_limit, on: :create

    private

    def mobile_day_limit

        Rails.cache.fetch(self.mobile)

    end



end
