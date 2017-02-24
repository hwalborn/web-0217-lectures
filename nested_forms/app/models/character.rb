class Character < ActiveRecord::Base
  belongs_to :tv_show
  belongs_to :actor
end