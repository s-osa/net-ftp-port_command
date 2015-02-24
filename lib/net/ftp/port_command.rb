require "net/ftp/port_command/version"

module Net
  class FTP
    module PortCommand
      def port(host, port)
        @data_listening_host = host
        @data_listening_port = port
      end
    end
  end
end
