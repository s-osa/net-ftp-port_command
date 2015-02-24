require "net/ftp/port_command/version"

module Net
  class FTP
    module PortCommand
      def port(host, port)
        @data_listening_host = host
        @data_listening_port = port
      end

      def makeport
        if @data_listening_host || @data_listening_port
          sock = TCPServer.open(@sock.addr[3], @data_listening_port || 0)
          port = @data_listening_port || sock.add[1]
          host = @data_listening_host || sock.addr[3]
          sendport(host, port)
          return sock
        else
          super
        end
      end
      private :makeport
    end

    prepend PortCommand
  end
end
