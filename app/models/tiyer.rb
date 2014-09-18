class Tiyer < ActiveRecord::Base


      has_attached_file :image
      validates :first_name, presence: true
      validates :last_name, presence: true
      validates :github, presence: true
      validates :tiy_type, presence: true


end
