require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end
  describe("#description") do
    it("lets you give it a description") do
      location = Places.new("Thailand")
      expect(location.description()).to(eq("Thailand"))
    end
  end
  describe('#time') do
    it('returns the time the object was initialized') do
      location = Places.new('Germany')
      expect(location.time()).to(eq(location.time()))
    end
  end
  describe('.all') do
    it('is empty at first') do
      expect(Places.all()).to(eq([]))
    end
  end
  describe("#add") do
    it("adds a location to the array of saved locations") do
      location = Places.new("China")
      location.add()
      expect(Places.all()).to(eq([location]))
    end
  end
  describe(".clear") do
    it("empties out all of the saved locations") do
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
