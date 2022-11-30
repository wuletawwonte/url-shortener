class Resource < ApplicationRecord
  before_create :add_short_url


  private
    def add_short_url
      self.short_url = SecureRandom.hex(6)
    end
end
