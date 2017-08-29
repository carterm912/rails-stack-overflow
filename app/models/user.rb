class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :questions
  has_many :answers, through: :questions
  has_many :votes
  has_many :answers_provided, class_name: :Answer
  has_many :questions_answered, through: :answers_provided, source: :question

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :email, presence:true, uniqueness: true
end
