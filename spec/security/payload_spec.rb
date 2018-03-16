RSpec.describe Kubelogic::Security::Payload do

  it "has DEFAULTS" do
    algorithm = Kubelogic::Security::Payload::DEFAULTS[:algorithm]
    expect(algorithm).to eq 'RS256'
  end

  it "will fail without private_key" do
    payloader = Kubelogic::Security::Payload.new
    expect(payloader).not_to eq nil
  end

end
