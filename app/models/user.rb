class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sent_places, foreign_key: :sender_id, class_name: "Place"
  has_many :receivers, through: :sent_places


  has_many :received_places, foreign_key: :receiver_id, class_name: "Place"
  has_many :senders, through: :received_places       
end
