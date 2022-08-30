require 'rails_helper'

RSpec.describe Instructor, type: :model do

  it {should belong_to :gym}

end
