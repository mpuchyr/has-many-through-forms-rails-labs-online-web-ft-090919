class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes[:username].blank? }

  # def user_attributes=(user_attribute_hash)
  #   user = User.find_or_create_by(user_attribute_hash)
  #   user.comments << self
  # end


end
