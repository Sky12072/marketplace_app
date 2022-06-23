class Transaction < ApplicationRecord
  belongs_to :listing
  belongs_to :coder, foreign_key: "coder_id", class_name: "User"
  belongs_to :client, foreign_key: "client_id", class_name: "User"
end
