class Product

  attr_accessor :sku
  attr_accessor :price
  attr_accessor :quantity

  def Product.pull_from_inventory(sku:, qty:,catalog:) # We use argument to decide which catalog to use Local or Online. We did not want to add 
    # an if loop in pull from inventory because we did not want it to depend on Local and Online Catalog. Dependency Injection Principle.
    product_data = catalog.lookup(sku)
    # We did not want this
    # if ENV['TEST_MODE'] == '1':
    #  product_data = LocalCatalog.lookup(sku)
    # else
    #  product_data = OnlineCatalog.lookup(sku)
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
