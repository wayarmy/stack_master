require_relative 'value_validator'

module StackMaster
  module SparkleFormation
    module CompileTimeParameter
      class EmptyValidator < ValueValidator

        def initialize(name, _definition, value)
          @name = name
          @value = value
        end

        private

        def check_is_valid
          !value_is_empty?
        end

        def value_is_empty?
          @value.to_s.strip.empty?
        end

        def create_error
          "#{@name} cannot be blank"
        end

      end
    end
  end
end
