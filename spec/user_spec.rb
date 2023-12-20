require_relative '../user.rb'

describe User do
    describe '#user' do
        let(:user) { described_class.new(admin: admin) }
        let(:admin) { false }
        subject { User.new(admin: admin) } 
        
        context "when user is not an admin" do
            it { is_expected.to have_attributes(admin: false)}
        end

        context "when user is an admin" do
            let(:admin) { true }

            it { is_expected.to have_attributes(admin: true)}
        end
        
    end
    
end
