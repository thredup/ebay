module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :country_of_origin, 'CountryOfOrigin', :optional => true
    #  text_node :description, 'Description', :optional => true
    #  numeric_node :quantity, 'Quantity', :optional => true
    #  text_node :item_id, 'ItemID', :optional => false
    #  text_node :transaction_id, 'TransactionID', :optional => false
    class LineItem
      include XML::Mapping
      include Initializer
      root_element_name 'LineItem'

       text_node :country_of_origin, 'CountryOfOrigin', optional: true
       text_node :description, 'Description', optional: true
       numeric_node :quantity, 'Quantity', optional: true
       text_node :item_id, 'ItemID', optional: false
       text_node :transaction_id, 'TransactionID', optional: false
    end
  end
end
