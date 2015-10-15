require 'active_support/concern'

class Instantize
  module Argument

    extend ActiveSupport::Concern

    included do
      alias_method :local_context, :binding
    end
    
    def instantize(binding_t)
      calling_method = caller_locations(1,1).first.label
      calling_method_params = self.method(calling_method).parameters

      calling_method_params.map do |param_array|
        param = param_array.last
        instance_variable_set("@#{param}", eval(param.to_s, binding_t))
      end
    end
  end
end