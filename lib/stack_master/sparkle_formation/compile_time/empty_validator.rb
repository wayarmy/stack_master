require_relative 'value_validator'

module StackMaster
  module SparkleFormation
    module CompileTime
      class EmptyValidator < ValueValidator

        def initialize(name, definition, parameter)
          @name = name
          @definition = definition
          @parameter = parameter
        end

        private

        def check_is_valid
          !has_invalid_values?
        end

        def has_invalid_values?
          values = build_values(@definition, @parameter)
          values.include?(nil)
        end

        def create_error
          "#{@name} cannot contain empty parameters:#{@parameter.inspect}"
        end

      end
    end
  end
end
