module Modules
  class Base

    def initialize
      # do stuff...
    end

    def noop(*args)
    end

    # seet default noop for each handler
    %w{
      onConnection onRow onEndInput
    }.each {|handler| alias_method handler, :noop}
    
  end
end
