# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/resources/feed_item.proto

require 'google/protobuf'

require 'google/ads/google_ads/v3/common/custom_parameter_pb'
require 'google/ads/google_ads/v3/common/feed_common_pb'
require 'google/ads/google_ads/v3/common/policy_pb'
require 'google/ads/google_ads/v3/enums/feed_item_quality_approval_status_pb'
require 'google/ads/google_ads/v3/enums/feed_item_quality_disapproval_reason_pb'
require 'google/ads/google_ads/v3/enums/feed_item_status_pb'
require 'google/ads/google_ads/v3/enums/feed_item_validation_status_pb'
require 'google/ads/google_ads/v3/enums/geo_targeting_restriction_pb'
require 'google/ads/google_ads/v3/enums/placeholder_type_pb'
require 'google/ads/google_ads/v3/enums/policy_approval_status_pb'
require 'google/ads/google_ads/v3/enums/policy_review_status_pb'
require 'google/ads/google_ads/v3/errors/feed_item_validation_error_pb'
require 'google/api/resource_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.resources.FeedItem" do
    optional :resource_name, :string, 1
    optional :feed, :message, 2, "google.protobuf.StringValue"
    optional :id, :message, 3, "google.protobuf.Int64Value"
    optional :start_date_time, :message, 4, "google.protobuf.StringValue"
    optional :end_date_time, :message, 5, "google.protobuf.StringValue"
    repeated :attribute_values, :message, 6, "google.ads.googleads.v3.resources.FeedItemAttributeValue"
    optional :geo_targeting_restriction, :enum, 7, "google.ads.googleads.v3.enums.GeoTargetingRestrictionEnum.GeoTargetingRestriction"
    repeated :url_custom_parameters, :message, 8, "google.ads.googleads.v3.common.CustomParameter"
    optional :status, :enum, 9, "google.ads.googleads.v3.enums.FeedItemStatusEnum.FeedItemStatus"
    repeated :policy_infos, :message, 10, "google.ads.googleads.v3.resources.FeedItemPlaceholderPolicyInfo"
  end
  add_message "google.ads.googleads.v3.resources.FeedItemAttributeValue" do
    optional :feed_attribute_id, :message, 1, "google.protobuf.Int64Value"
    optional :integer_value, :message, 2, "google.protobuf.Int64Value"
    optional :boolean_value, :message, 3, "google.protobuf.BoolValue"
    optional :string_value, :message, 4, "google.protobuf.StringValue"
    optional :double_value, :message, 5, "google.protobuf.DoubleValue"
    optional :price_value, :message, 6, "google.ads.googleads.v3.common.Money"
    repeated :integer_values, :message, 7, "google.protobuf.Int64Value"
    repeated :boolean_values, :message, 8, "google.protobuf.BoolValue"
    repeated :string_values, :message, 9, "google.protobuf.StringValue"
    repeated :double_values, :message, 10, "google.protobuf.DoubleValue"
  end
  add_message "google.ads.googleads.v3.resources.FeedItemPlaceholderPolicyInfo" do
    optional :placeholder_type_enum, :enum, 10, "google.ads.googleads.v3.enums.PlaceholderTypeEnum.PlaceholderType"
    optional :feed_mapping_resource_name, :message, 2, "google.protobuf.StringValue"
    optional :review_status, :enum, 3, "google.ads.googleads.v3.enums.PolicyReviewStatusEnum.PolicyReviewStatus"
    optional :approval_status, :enum, 4, "google.ads.googleads.v3.enums.PolicyApprovalStatusEnum.PolicyApprovalStatus"
    repeated :policy_topic_entries, :message, 5, "google.ads.googleads.v3.common.PolicyTopicEntry"
    optional :validation_status, :enum, 6, "google.ads.googleads.v3.enums.FeedItemValidationStatusEnum.FeedItemValidationStatus"
    repeated :validation_errors, :message, 7, "google.ads.googleads.v3.resources.FeedItemValidationError"
    optional :quality_approval_status, :enum, 8, "google.ads.googleads.v3.enums.FeedItemQualityApprovalStatusEnum.FeedItemQualityApprovalStatus"
    repeated :quality_disapproval_reasons, :enum, 9, "google.ads.googleads.v3.enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason"
  end
  add_message "google.ads.googleads.v3.resources.FeedItemValidationError" do
    optional :validation_error, :enum, 1, "google.ads.googleads.v3.errors.FeedItemValidationErrorEnum.FeedItemValidationError"
    optional :description, :message, 2, "google.protobuf.StringValue"
    repeated :feed_attribute_ids, :message, 3, "google.protobuf.Int64Value"
    optional :extra_info, :message, 5, "google.protobuf.StringValue"
  end
end

module Google::Ads::GoogleAds::V3::Resources
  FeedItem = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.resources.FeedItem").msgclass
  FeedItemAttributeValue = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.resources.FeedItemAttributeValue").msgclass
  FeedItemPlaceholderPolicyInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.resources.FeedItemPlaceholderPolicyInfo").msgclass
  FeedItemValidationError = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.resources.FeedItemValidationError").msgclass
end
