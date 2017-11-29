require 'dry/types'
require 'active_support/all'
module Yuba
  autoload :Form, 'yuba/form'
  autoload :Service, 'yuba/service'
  autoload :ViewModel, 'yuba/view_model'
  autoload :Rendering, 'yuba/rendering'
end

ActiveSupport.on_load(:action_controller) do
  ActionController::Base.include(Yuba::Rendering)
end
