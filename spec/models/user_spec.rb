require 'rails_helper'

  describe User do
    it { should validate_presence_of :emial}
    it { should validate_presence_of :password}

  end
end
