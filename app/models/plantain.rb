class Plantain < ActiveRecord::Base
  accepts_nested_attributes_for :peel
  has_one :peel
end
