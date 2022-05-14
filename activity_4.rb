class Confection
  def prepare
    puts 'Baking at 35 degrees for 25 minutes'
  end
end

class Cupcake < Confection
  def prepare
    super
    puts 'Applying frosting'
  end
end

class BananaCake < Confection; end


a = Cupcake.new
a.prepare # "Baking at 35 degrees for 25 minutes" 
          # "Applying frosting"

b = BananaCake.new
b.prepare # "Baking at 35 degrees for 25 minutes"
