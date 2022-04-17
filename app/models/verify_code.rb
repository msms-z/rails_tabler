class VerifyCode < ApplicationRecord

    validate :mobile_day_limit, on: :create
    after_commit :increment_send_times, on: :create

    private

    def mobile_day_limit
        if Rails.cache.exist?(current_cache_key, raw: true) && Rails.cache.read(current_cache_key, raw: true).to_i > 5
            self.errors.add(:mobile, :mobile_send_limit)
        end
    end

    def increment_send_times
        if Rails.cache.exist?(current_cache_key, raw: true)
            Rails.cache.increment(current_cache_key, 1, raw: true)
        else
            Rails.cache.write(current_cache_key, 1, raw: true, expires_in: 24.hours)
        end
    end

    def current_cache_key
        "verify_code:#{self.mobile}"
    end



end
