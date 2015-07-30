class User < ActiveRecord::Base
	has_many :subtitles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
	validates_presence_of :email
  # validates_uniqueness_of :username, :email


  # after_initialize :set_default_role, :if => :new_record?

  # def set_default_role
  #   unless self.role
  #     self.role = :user
  #   end
  # end

end
