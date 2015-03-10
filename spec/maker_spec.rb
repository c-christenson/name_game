require 'spec_helper'
require 'pathname'

describe Maker do

  context 'Demonstration of how datamapper works' do

    it 'should be created and then retrieved from the db' do

      path = Pathname.new("/public/images/badass.png")

      expect(Maker.count).to eq(0)
      Maker.create(name: 'Quokka',
                  path: '/public/images/badass.png')
      expect(Maker.count).to eq(1)
      maker = Maker.first
      expect(maker.name).to eq('Quokka')
      expect(maker.path).to eq(path) 
      maker.destroy
      expect(Maker.count).to eq(0)
    end

  end

end