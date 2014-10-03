class Joblist < ActiveRecord::Base
  
  RUBY = "Ruby"
  PYTHON = "Python"
  MOBILE = "Mobiledev"
  
  TYPES = [
    RUBY = "RubyJoblist",
    PYTHON = "PythonJoblist", 
    MOBILE = "MobiledevJoblist"]
  
  has_one :address
  accepts_nested_attributes_for :address
  
  validates :recruiter_name, :job_link, :long_description, :title, :type, :number_of_position, presence: true
  
end
