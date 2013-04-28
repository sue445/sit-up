# -*- coding: utf-8 -*-
require 'spec_helper'
describe GenerateHash do
  let(:expected_hash) do
    { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}
  end

  context 'when array that key, value, key, value... was given' do
    subject { GenerateHash.method_foo ['key1', 'value1', 'key2', 'value2', 'key3', 'value3'] }
    it { should == expected_hash }
  end

  context 'when array that pairs of key and value was given' do
    subject { GenerateHash.method_bar [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']] }
    it { should == expected_hash }
  end

  context 'when array of keys and array of values was given' do
    subject { GenerateHash.method_baz ['key1', 'key2', 'key3'], ['value1', 'value2', 'value3'] }
    it { should == expected_hash }
  end
end
