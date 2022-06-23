class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :listings

  has_many :sold_transactions, foreign_key: "coder_id", class_name: "Transaction"
  has_many :bought_transactions, foreign_key: "client_id", class_name: "Transaction"
end
