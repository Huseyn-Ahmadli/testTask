class Employee < ApplicationRecord
  include ActiveModel::Validations

  validates :first_name, :last_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
