
module Ebay # :nodoc:
  module Types # :nodoc:
    # == Attributes
    #  text_node :variation_specific_value, 'VariationSpecificValue', :optional => true
    #  text_node :picture_url, 'PictureURL', :optional => true
    #  text_node :gallery_url, 'GalleryURL', :optional => true
    class VariationSpecificPictureSet
      include XML::Mapping
      include Initializer
      root_element_name 'VariationSpecificPictureSet'
      text_node :variation_specific_value, 'VariationSpecificValue', :optional => true
      array_node :picture_urls, 'PictureURL', :optional => true, :unmarshaller => proc { |el| el.text }
      text_node :gallery_url, 'GalleryURL', :optional => true
    end
  end
end


