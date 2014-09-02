require 'rails_helper'

  describe User do
    it { should validate_presence_of :emial}
  end
end
