# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/resources/merchant_center_link.proto

require 'google/protobuf'

require 'google/ads/google_ads/v2/enums/merchant_center_link_status_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.resources.MerchantCenterLink" do
    optional :resource_name, :string, 1
    optional :id, :message, 3, "google.protobuf.Int64Value"
    optional :merchant_center_account_name, :message, 4, "google.protobuf.StringValue"
    optional :status, :enum, 5, "google.ads.googleads.v2.enums.MerchantCenterLinkStatusEnum.MerchantCenterLinkStatus"
  end
end

module Google::Ads::GoogleAds::V2::Resources
  MerchantCenterLink = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.resources.MerchantCenterLink").msgclass
end
