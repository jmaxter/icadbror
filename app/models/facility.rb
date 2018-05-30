class Facility < ActiveRecord::Base
    has_many :locations
    validates :facno, presence: true
    validates :facname, presence: true
end
