class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Domain Logic
  has_many :plots

  has_and_belongs_to_many :bookmarks, :class_name => "Plot", :join_table => "bookmarks"
end
