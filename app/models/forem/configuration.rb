module Forem
  class Configuration < ActiveRecord::Base
    attr_accessible :post_approval
  end
end
