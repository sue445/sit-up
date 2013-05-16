# -*- coding: utf-8 -*-
require 'spec_helper'

describe LunchMembers do
  describe 'shuffle' do
    let(:all_members) { %w[foo bar baz hoge piyo fuga moge gori] }
    subject { LunchMembers.shuffle(all_members) }
    it 'returns 2 divided teams' do
      members = []
      subject.each do |group|
        group.count.should <= 4
        group.each do |member|
          members << member
        end
      end
      members.sort.should == all_members.sort
    end

    it{ should have_exactly(2).groups }
  end
end
