require 'string_calculator'

RSpec.describe "my class" do

  subject(:subject) { StringCalculator.new }
  describe "#add" do
    let(:add) { subject.add(string_1) }
    let(:string_1) { "string_1" }

    context 'when given an empty string' do
      let(:string_1) { "" }

      it 'returns 0' do
        expect(add).to eq(0)
      end
    end

    context "when 0, 1 or 2 numbers given" do

      context 'when 0 numbers given' do
        let(:string_1) { nil }

        it 'will return their sum' do
          expect(add).to eq(0)
        end
      end

      context 'when 1 number given' do
        let(:string_1) { "1" }

        it 'will return their sum' do
          expect(add).to eq(1)
        end
      end

      context 'when 2 numbers given' do
        let(:add) { subject.add(string_1, string_2) }
        let(:string_1) { "1" }
        let(:string_2) { "2" }

        it 'will return their sum' do
          expect(add).to eq(3)
        end
      end
    end
  end
end
