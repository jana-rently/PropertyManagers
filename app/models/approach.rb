class Approach < ApplicationRecord
  belongs_to :Property, optional: true
  belongs_to :Renter, optional: true
  validates_uniqueness_of :renter_id, scope: :property_id
end
