class ShippingCalculator

  def initialize(order)
    @order = order
  end

  # This can be refactored
  def calculate
    shipping_charge = 10

    if (order.total > 100.00)
      if (order.line_items.count > 2)
        shipping_charge = 0

    return shipping_charge
  end

end
