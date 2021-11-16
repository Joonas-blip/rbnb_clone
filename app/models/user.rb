class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  ROLE = %w(user guide)
  has_many :bookings, dependent: :destroy
  has_many :experiences, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  validates :role, inclusion: { in: ROLE }, presence: true
  validates :first_name, :last_name, presence: true

  # INSTANCE METHODS
  def user?
    self.role == 'user'
  end

  def guide?
    self.role == 'guide'
  end
end
