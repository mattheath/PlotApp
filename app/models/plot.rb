class Plot < ActiveRecord::Base
	belongs_to :user

	has_and_belongs_to_many :bookmarks, :class_name => "User", :join_table => "bookmarks"
end
