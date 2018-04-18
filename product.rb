class Product

  attr_accessor :sku
  attr_accessor :price
  attr_accessor :quantity

  def Product.pull_from_inventory(sku:, qty:)
    p = Product.new
    p.sku = sku
    if sku == '123'
      p.price = 200.00
      p.quantity = qty
    elsif sku == '456'
      p.price = 60.00
      p.quantity = qty
    else
      raise "Unknown product sku"
    end
    return p
  end

end
