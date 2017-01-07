class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        has_attached_file :avatar,
                            styles: {medium: "100x100#", thumb: "100x100#"}
        validates_attachment_content_type :avatar,
                                          content_type: ["image/jpg", "image/png", "image/gif", "image/jpeg"]


         has_many :plans
         has_many :comments
         has_many :suggestions
         has_many :reports





end
