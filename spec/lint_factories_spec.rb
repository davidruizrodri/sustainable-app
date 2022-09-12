# frozen_string_literal: true

require 'rails_helper'

describe 'Factories' do
  it 'checks that all factories can be created' do
    FactoryBot.lint traits: true
  end
end
