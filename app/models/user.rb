# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  has_secure_token
  devise :rememberable, :omniauthable
  include DeviseTokenAuth::Concerns::User
end
