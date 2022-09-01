# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true
end
