class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_one :payment
  accepts_nested_attributes_for :payment
  has_many :images
end

# Access Key ID:AKIAJWOCRCB2W6GW54SQ
# Secret Access Key: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