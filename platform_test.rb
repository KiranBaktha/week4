require 'minitest/autorun'
require_relative 'order'
# require 'mocha/minitest'


class PlatformTest < Minitest::Test

  def test_order_calculations
    order = Order.new
    items = Product.pull_from_inventory(sku: '123', qty: 2)
    order.add(items)

    customer = { name: "Cookie Monster", address: '123 Sesame St', city: 'New York', state: 'NY' , zip: '00122' }
    order.customer = customer

    order.calc_order_total

    assert_equal 450.00, order.total
    assert_equal 400.00, order.subtotal
    assert_equal 10.00, order.shipping_charge
    assert_equal 40.00, order.tax
  end


end
