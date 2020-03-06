module ORTools
  class CpSolverSolutionCallback
    attr_writer :response

    def value(expr)
      case expr
      when SatIntVar
        @response.solution_integer_value(expr)
      when BoolVar
        @response.solution_boolean_value(expr)
      else
        raise "Unsupported type"
      end
    end
  end
end
