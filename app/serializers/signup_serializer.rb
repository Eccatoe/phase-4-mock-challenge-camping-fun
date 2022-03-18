class SignupSerializer < ActiveModel::Serializer
  attributes
  has_one :activity
end
