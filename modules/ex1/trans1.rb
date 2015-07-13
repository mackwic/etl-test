
module Modules
    module Ex1
      class Trans1
        extend Modules::Base

        def initialize
          super
          #do stuff...
        end

        @QUERY = "okdaposkapsokdposkd" # or an ORM (activeRecord) query object
        @OUTPUT = Modules::Output::XLS

        def onConnection(conn)
          @loaded = true
          @bla = con.toto
        end

        def onRow(row)
          row['tto'] = 42
        end


      end

      $Klass = Trans1
    end
end

