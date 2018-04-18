require_relative 'product'

class Order

  attr_accessor :number
  attr_accessor :status  # 'PREPARING', 'SHIPPED', 'DELIVERED', 'RETURNED'
  attr_accessor :customer
  attr_accessor :payment
  attr_accessor :tracking_number
  attr_accessor :line_items
  attr_accessor :tax
  attr_accessor :shipping_charge
  attr_accessor :subtotal
  attr_accessor :total

  def initialize()
    @line_items = []
  end

  def add(item)
    @line_items.push(item)
  end

  def calc_order_total
    @total = 0.0
    @total += calcmtot
    @tax = total * 0.10  # Tax rate is 10%
    @total += calcshiptot
    @total += @tax
  end

private

  def calcmtot
    mtot = 0.0

    for i in self.line_items
      mtot += i.price * i.quantity
    end

    @subtotal = mtot
    return @subtotal
  end

  def calcshiptot
    @shipping_charge = 10

    if (@subtotal > 100.00 || @customer[:state] == 'IL')
      if !(@line_items.detect { |item| item.sku == '123' })
        @shipping_charge = 0
      end
    end

    return @shipping_charge

  end


end
