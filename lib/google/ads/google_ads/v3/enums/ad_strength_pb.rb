# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/enums/ad_strength.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.enums.AdStrengthEnum" do
  end
  add_enum "google.ads.googleads.v3.enums.AdStrengthEnum.AdStrength" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :PENDING, 2
    value :NO_ADS, 3
    value :POOR, 4
    value :AVERAGE, 5
    value :GOOD, 6
    value :EXCELLENT, 7
  end
end

module Google::Ads::GoogleAds::V3::Enums
  AdStrengthEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.AdStrengthEnum").msgclass
  AdStrengthEnum::AdStrength = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.AdStrengthEnum.AdStrength").enummodule
end
