# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/ads/google_ads/v2/services/mutate_job_service.proto for package 'Google::Ads::GoogleAds::V2::Services'
# Original file comments:
# Copyright 2019 Google LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

require 'grpc'
require 'google/ads/google_ads/v2/services/mutate_job_service_pb'

module Google::Ads::GoogleAds::V2::Services
  module MutateJobService
    # Proto file describing the MutateJobService.
    #
    # Service to manage mutate jobs.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'google.ads.googleads.v2.services.MutateJobService'

      # Creates a mutate job.
      rpc :CreateMutateJob, CreateMutateJobRequest, CreateMutateJobResponse
      # Returns the mutate job.
      rpc :GetMutateJob, GetMutateJobRequest, Google::Ads::GoogleAds::V2::Resources::MutateJob
      # Returns the results of the mutate job. The job must be done.
      # Supports standard list paging.
      rpc :ListMutateJobResults, ListMutateJobResultsRequest, ListMutateJobResultsResponse
      # Runs the mutate job.
      #
      # The Operation.metadata field type is MutateJobMetadata. When finished, the
      # long running operation will not contain errors or a response. Instead, use
      # ListMutateJobResults to get the results of the job.
      rpc :RunMutateJob, RunMutateJobRequest, Google::Longrunning::Operation
      # Add operations to the mutate job.
      rpc :AddMutateJobOperations, AddMutateJobOperationsRequest, AddMutateJobOperationsResponse
    end

    Stub = Service.rpc_stub_class
  end
end
