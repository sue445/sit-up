# -*- coding: utf-8 -*-
require 'spec_helper'
describe GenerateHash do
  let(:expected_hash) do
    { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}
  end

  context 'when array that key, value, key, value... was given' do
    subject { GenerateHash.from_flattened_array source_array }

    context "valid arg" do
      let(:source_array){ ['key1', 'value1', 'key2', 'value2', 'key3', 'value3'] }
      it { should == expected_hash }
    end

    context "lacked element arg" do
      let(:source_array){ ['key1', 'value1', 'key2', 'value2', 'key3'] }
      it { expect{ subject }.to raise_error ArgumentError }
    end
  end

  context 'when array that pairs of key and value was given' do
    subject { GenerateHash.from_hash_like_array [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']] }
    it { should == expected_hash }
  end

  context 'when array of keys and array of values was given' do
    subject { GenerateHash.from_pair_array keys_array, values_array }

    context "valid args" do
      let(:keys_array){ ['key1', 'key2', 'key3'] }
      let(:values_array){ ['value1', 'value2', 'value3'] }
      it { should == expected_hash }
    end

    context "lacked element args" do
      let(:keys_array){ ['key1', 'key2'] }
      let(:values_array){ ['value1', 'value2', 'value3'] }
      it { expect{ subject }.to raise_error ArgumentError }
    end
  end
end
