# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/enums/promotion_extension_discount_modifier.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.enums.PromotionExtensionDiscountModifierEnum" do
  end
  add_enum "google.ads.googleads.v3.enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :UP_TO, 2
  end
end

module Google::Ads::GoogleAds::V3::Enums
  PromotionExtensionDiscountModifierEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.PromotionExtensionDiscountModifierEnum").msgclass
  PromotionExtensionDiscountModifierEnum::PromotionExtensionDiscountModifier = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier").enummodule
end
