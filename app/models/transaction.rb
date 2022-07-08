class Transaction < ApplicationRecord
  belongs_to :listing
  belongs_to :coder, foreign_key: "coder_id", class_name: "User"
  belongs_to :client, foreign_key: "client_id", class_name: "User"
end

# Please read !
# please ignore this model as for now, because I'm making this for future agile development, not for the assessment. thanks!