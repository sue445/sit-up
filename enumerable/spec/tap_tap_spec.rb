# -*- coding: utf-8 -*-
require 'spec_helper'

describe TapTap do
  describe '.method_foo' do
    let(:source_hash) do
      { 'foo' => 'bar', 'hoge' => 'piyo' }
    end

    subject { TapTap.method_foo(source_hash) }
    it { should == { foo: 'bar', hoge:'piyo' } }
  end

  describe '.method_bar' do
    let(:sereies_includes_dio) do
      [:phantom_blood, :stardust_crusaders, :steel_ball_run]
    end

    let(:expected_hash) do
      {
          phantom_blood:       [:jonathan, :speedwagon, :dio],
          stardust_crusaders:  [:jotaro, :joseph, :avdol, :kakyoin, :polnareff, :iggy, :dio],
          steel_ball_run:      [:gyro, :johnny, :lucy, :valentine],
      }
    end

    subject { TapTap.method_bar(sereies_includes_dio) }
    it { should == expected_hash }
  end
end
