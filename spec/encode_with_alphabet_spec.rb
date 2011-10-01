require 'spec_helper'

module EncodeWithAlphabet
  describe "works with big numbers" do
    let(:number) { 98079714615416886934934209737619787751599303819750539264 }
    specify { expect{ EncodeWithAlphabet.encode(number) }.to_not raise_error('number must be an integer') }
  end

  describe "#encode" do
    subject { EncodeWithAlphabet.encode(number, alphabet) }


    context "when alphabet is '01'" do
      let(:alphabet) { '01' }

      context 'when number is 0' do
        let(:number) { 0 }
        it { should == '0' }
      end

      context 'when number is 1' do
        let(:number) { 1 }
        it { should == '1' }
      end

      context 'when number is 10' do
        let(:number) { 10 }
        it { should == '1010' }
      end
    end

    context "when alphabet is '0123456789abcdefghijklmnopqrstuvwxyzABC'" do
      let(:alphabet) { '0123456789abcdefghijklmnopqrstuvwxyzABC' }

      context 'when number is 0' do
        let(:number) { 0 }
        it { should == '0' }
      end

      context 'when number is 1' do
        let(:number) { 1 }
        it { should == '1' }
      end

      context 'when number is 10' do
        let(:number) { 10 }
        it { should == 'a' }
      end

      context 'when number is 39' do
        let(:number) { 39 }
        it { should == '10' }
      end

      context 'when number is 42' do
        let(:number) { 42 }
        it { should == '13' }
      end
    end
  end
end
