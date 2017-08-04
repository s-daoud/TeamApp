class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def update_date
    self.date_updated = Time.now
  end
end
