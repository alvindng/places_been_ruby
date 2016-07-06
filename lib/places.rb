class Places
  @@locations = []
  define_method(:initialize) do |description|
    @description = description
    @time = Time.new().min()
  end
  define_method(:description) do
    @description
  end
  define_method(:time) do
    @time
  end
  define_singleton_method(:all) do
    @@locations
  end
  define_method(:add) do
    @@locations.push(self)
  end
  define_singleton_method(:clear) do
    @@locations = []
  end
end
