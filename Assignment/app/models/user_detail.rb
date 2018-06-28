class UserDetail < ApplicationRecord
  validates_presence_of :username, :password, :firstname, :lastname
  validates_presence_of :emailAddress, :dateOfBirth
  validates_presence_of :phoneno
  has_many :events, :foreign_key => 'UserID'
  validates_uniqueness_of :username
  validates_uniqueness_of :emailAddress
  validates_length_of :password, :within => 6..16

end
