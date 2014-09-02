require 'spec_helper'

  describe Post do
    it { should validate_presence_of :name }
    it { should validate_presence_of :article }
    it { should belong_to :user }
  end
