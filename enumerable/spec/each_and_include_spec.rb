# -*- coding: utf-8 -*-
require 'spec_helper'

describe EachAndInclude do
  let(:mock_with_nil_condition) do
    obj = double
    obj.stub(:conditions) { nil }
    obj
  end

  let(:mock_with_foo_bar_condition) do
    obj = double
    obj.stub(:conditions) { [:foo, :bar] }
    obj
  end

  let(:mock_with_hoge_bar_condition) do
    obj = double
    obj.stub(:conditions) { [:hoge, :bar] }
    obj
  end

  let(:collection) do
    [
      mock_with_nil_condition,
      mock_with_foo_bar_condition,
      mock_with_hoge_bar_condition,
    ]
  end

  describe '.method_foo' do
    subject { EachAndInclude.method_foo(collection, :foo) }
    it { should == [mock_with_nil_condition, mock_with_foo_bar_condition] }
  end
end
