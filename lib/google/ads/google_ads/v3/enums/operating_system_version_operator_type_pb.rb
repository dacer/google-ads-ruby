# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/enums/operating_system_version_operator_type.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.enums.OperatingSystemVersionOperatorTypeEnum" do
  end
  add_enum "google.ads.googleads.v3.enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :EQUALS_TO, 2
    value :GREATER_THAN_EQUALS_TO, 4
  end
end

module Google::Ads::GoogleAds::V3::Enums
  OperatingSystemVersionOperatorTypeEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.OperatingSystemVersionOperatorTypeEnum").msgclass
  OperatingSystemVersionOperatorTypeEnum::OperatingSystemVersionOperatorType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType").enummodule
end
