class Resource < ApplicationRecord
  before_create :add_short_url


  private
    def add_short_url
      if self.short_url == ""
        self.short_url = SecureRandom.hex(4)
      else
        self.short_url = self.short_url.parameterize(separator: '_')
      end
    end
end
