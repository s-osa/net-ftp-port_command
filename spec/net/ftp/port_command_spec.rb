describe Net::FTP do
  describe "methods" do
    subject{ described_class.new }
    its(:public_methods){ is_expected.to include(:port) }
    its(:public_methods){ is_expected.not_to include(:makeport) }
    its(:private_methods){ is_expected.to include(:makeport) }
  end
end
