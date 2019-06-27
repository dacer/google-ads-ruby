# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v1/services/ad_group_criterion_label_service.proto

require 'google/protobuf'

require 'google/ads/google_ads/v1/resources/ad_group_criterion_label_pb'
require 'google/api/annotations_pb'
require 'google/rpc/status_pb'
require 'google/api/client_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v1.services.GetAdGroupCriterionLabelRequest" do
    optional :resource_name, :string, 1
  end
  add_message "google.ads.googleads.v1.services.MutateAdGroupCriterionLabelsRequest" do
    optional :customer_id, :string, 1
    repeated :operations, :message, 2, "google.ads.googleads.v1.services.AdGroupCriterionLabelOperation"
    optional :partial_failure, :bool, 3
    optional :validate_only, :bool, 4
  end
  add_message "google.ads.googleads.v1.services.AdGroupCriterionLabelOperation" do
    oneof :operation do
      optional :create, :message, 1, "google.ads.googleads.v1.resources.AdGroupCriterionLabel"
      optional :remove, :string, 2
    end
  end
  add_message "google.ads.googleads.v1.services.MutateAdGroupCriterionLabelsResponse" do
    optional :partial_failure_error, :message, 3, "google.rpc.Status"
    repeated :results, :message, 2, "google.ads.googleads.v1.services.MutateAdGroupCriterionLabelResult"
  end
  add_message "google.ads.googleads.v1.services.MutateAdGroupCriterionLabelResult" do
    optional :resource_name, :string, 1
  end
end

module Google::Ads::GoogleAds::V1::Services
  GetAdGroupCriterionLabelRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.GetAdGroupCriterionLabelRequest").msgclass
  MutateAdGroupCriterionLabelsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.MutateAdGroupCriterionLabelsRequest").msgclass
  AdGroupCriterionLabelOperation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.AdGroupCriterionLabelOperation").msgclass
  MutateAdGroupCriterionLabelsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.MutateAdGroupCriterionLabelsResponse").msgclass
  MutateAdGroupCriterionLabelResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.services.MutateAdGroupCriterionLabelResult").msgclass
end
