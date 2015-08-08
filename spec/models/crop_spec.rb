require 'rails_helper'

RSpec.describe Crop, type: :model do
  describe 'verify contents' do
    context 'creation without name' do
      it 'should fail creation' do
        expect { Crop.create!.to fail }
      end
    end

    context 'creation with name' do
      it 'should successfully create' do
        expect { Crop.create!(:name => 'Apple').to succeed }
      end
    end
  end
end
