describe Net::FTP do
  describe "methods" do
    subject{ described_class.new }
    it{ is_expected.to respond_to(:port) }
    it{ is_expected.not_to respond_to(:makeport) }
  end
end
