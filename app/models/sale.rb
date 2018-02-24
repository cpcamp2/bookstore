class Sale < ApplicationRecord
  before_create :populate_uuid

  belongs_to :book

  private

  def populate_uuid
    self.uuid = SecureRandom.uuid()
  end

end
