class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, dependent: :destroy
  has_many :experiences, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, length: { minimum: 8 }
  validates :email, presence: true, uniqueness: true, format: { with: /\w+@\w+/ }
  validates :encrypted_password, presence: true, length: { minimum: 8 }
  validates :role, inclusion: { in: %w(user guide) }, presence: true
  validates :first_name, :last_name, presence: true

  # INSTANCE METHODS
end
