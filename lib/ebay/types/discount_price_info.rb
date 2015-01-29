module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    # money_node :original_retail_price, 'OriginalRetailPrice', :optional => false
    # money_node :minimum_advertised_price, 'MinimumAdvertisedPrice', :optional => false
    # money_node :made_for_outlet_comparison_price, 'MadeForOutletComparisonPrice', :optional => true
    # text_node :minimum_advertised_price_exposure, 'MinimumAdvertisedPriceExposure', :optional => true
    # boolean_node :sold_off_ebay, 'SoldOffEbay', 'true', 'false' :optional => true
    # boolean_node :sold_on_ebay, 'SoldOnEbay', 'true', 'false' :optional => true


    class DiscountPriceInfo
      include XML::Mapping
      include Initializer
      root_element_name 'DiscountPriceInfo'
      money_node :original_retail_price, 'OriginalRetailPrice', :optional => true
      money_node :minimum_advertised_price, 'MinimumAdvertisedPrice', :optional => true
      money_node :made_for_outlet_comparison_price, 'MadeForOutletComparisonPrice', :optional => true
      text_node :minimum_advertised_price_exposure, 'MinimumAdvertisedPriceExposure', :optional => true

      boolean_node :sold_off_ebay, 'SoldOffEbay', 'true', 'false', :optional => true
      boolean_node :sold_on_ebay, 'SoldOnEbay', 'true', 'false', :optional => true
    end
  end
end