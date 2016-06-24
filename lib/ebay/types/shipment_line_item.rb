require 'ebay/types/line_item'
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  object_node :line_item, 'LineItem', :optional => false

    class ShipmentLineItem
      include XML::Mapping
      include Initializer
      root_element_name 'ShipmentLineItem'

      object_node :line_item, 'LineItem', class: LineItem, optional: false
    end
  end
end
